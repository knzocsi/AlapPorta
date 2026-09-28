unit CfgCsoportU;

{
  A cfg tábla csoportjainak ki/bekapcsolása (cfg_csoport tábla).
  Új telepítéskor (üres cfg) az AF.cfg_csoportok_inditas hívja az elso_inditas-t,
  késõbb a Szoftver alapbeállításai formról a modosit-ot.
  Kikapcsolt csoport sorait a cfg_kezel nem hozza létre, a kódbeli alapérték érvényes.
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  FireDAC.Comp.Client;

type
  TCfgCsoportF = class(TForm)
    Panel1: TPanel;
    lblinfo: TLabel;
    clbcsoportok: TCheckListBox;
    Panel2: TPanel;
    btnok: TButton;
    btnmegse: TButton;
  private
    { Private declarations }
    csoportok: TStringList; // a lista soraihoz tartozó csoportnevek
    eredeti: array of Boolean; // a megnyitáskori pipák, a kikapcsoltak felismeréséhez
    procedure lista_toltese(elso: Boolean);
    procedure mentes;
  public
    { Public declarations }
    destructor Destroy; override;
    procedure elso_inditas;
    function modosit: Boolean;
  end;

implementation
  uses AU, UzenetekU, System.UITypes;
{$R *.dfm}

destructor TCfgCsoportF.Destroy;
begin
  csoportok.Free;
  inherited;
end;

procedure TCfgCsoportF.lista_toltese(elso: Boolean);
var i,j: Integer;
    q: TFDQuery;

  procedure extra_csoport(const csoport: string; aktiv: Boolean);
  var k: Integer;
  begin
    if (Trim(csoport)='') or (cfg_ismert_csoport(csoport)>0) then exit;
    for k := 0 to csoportok.Count-1 do
      if cfg_norm(csoportok[k])=cfg_norm(csoport) then exit; // már a listában van
    k:=clbcsoportok.Items.Add(csoport);
    csoportok.Add(csoport);
    clbcsoportok.Checked[k]:=aktiv;
  end;

begin
  if csoportok=nil then csoportok:=TStringList.Create;
  csoportok.Clear;
  clbcsoportok.Clear;
  for i := Low(cfg_csoportok) to High(cfg_csoportok) do
  begin
    j:=clbcsoportok.Items.Add(cfg_csoportok[i].leiras+'  ('+cfg_csoportok[i].nev+')');
    csoportok.Add(cfg_csoportok[i].nev);
    if cfg_csoportok[i].kotelezo then
    begin
      clbcsoportok.Checked[j]:=True;
      clbcsoportok.ItemEnabled[j]:=False;
    end
    else clbcsoportok.Checked[j]:=(not elso) and af.cfg_csoport_aktiv(cfg_csoportok[i].nev);
  end;
  if not elso then
  begin
    // a cfg_csoportok-ban nem szereplõ csoportok: a cfg_csoport táblából és a cfg-bõl
    // (kézzel vagy új kódból felvett csoport még nincs a cfg_csoport táblában, az aktív).
    // Két külön lekérdezés, mert a két tábla csoport oszlopának collation-je eltérhet (UNION hiba).
    q:=TFDQuery.Create(nil);
    try
      q.Connection:=af.Kapcs;
      q.Open('SELECT csoport,CAST(aktiv AS SIGNED) AS aktiv FROM cfg_csoport ORDER BY csoport'); // TINYINT(1)-et a FireDAC Boolean-ként adná
      while not q.Eof do
      begin
        extra_csoport(q.Fields[0].AsString,q.Fields[1].AsInteger<>0);
        q.Next;
      end;
      q.Close;
      q.Open('SELECT DISTINCT csoport FROM cfg ORDER BY csoport');
      while not q.Eof do
      begin
        extra_csoport(q.Fields[0].AsString,True);
        q.Next;
      end;
    finally
      q.Free;
    end;
  end;
  SetLength(eredeti,clbcsoportok.Count);
  for i := 0 to clbcsoportok.Count-1 do eredeti[i]:=clbcsoportok.Checked[i];
end;

procedure TCfgCsoportF.mentes;
var i: Integer;
    kikapcsolt: TStringList;
begin
  kikapcsolt:=TStringList.Create;
  try
    for i := 0 to clbcsoportok.Count-1 do
    begin
      af.cfg_csoport_ment(csoportok[i],clbcsoportok.Checked[i]);
      if eredeti[i] and not clbcsoportok.Checked[i] and
         (af.Kapcs.ExecSQLScalar('SELECT COUNT(*) FROM cfg WHERE csoport=:csoport',[csoportok[i]])>0) then
        kikapcsolt.Add(csoportok[i]);
    end;
    // a kikapcsolt csoportok meglévõ sorait csak megerõsítés után töröljük, mert az értékeik elvesznek
    if (kikapcsolt.Count>0) and
       (MessageDlg(Format(rsCfgCsoportSorokTorlese,[kikapcsolt.CommaText]),mtConfirmation,[mbYes,mbNo],0)=mrYes) then
      for i := 0 to kikapcsolt.Count-1 do
        af.Kapcs.ExecSQL('DELETE FROM cfg WHERE csoport=:csoport',[kikapcsolt[i]]);
  finally
    kikapcsolt.Free;
  end;
  af.cfg_csoportok_betolt;
end;

procedure TCfgCsoportF.elso_inditas;
begin
  lblinfo.Caption:=rsCfgCsoportElsoInditas;
  btnmegse.Visible:=False;
  BorderIcons:=[];
  lista_toltese(True);
  ShowModal;
  mentes; // bezárás módjától függetlenül menteni kell, különben minden indításkor újra kérdezné
end;

function TCfgCsoportF.modosit: Boolean;
begin
  lblinfo.Caption:=rsCfgCsoportModosit;
  lista_toltese(False);
  Result:=ShowModal=mrOk;
  if Result then mentes;
end;

end.
