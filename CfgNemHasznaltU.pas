unit CfgNemHasznaltU;

{
  A cfg tábla azon sorai, amelyeket ez a programverzió a futás során nem kért le
  a cfg_kezel-lel (AF.cfg_hasznalt_e). Kijelölés után törölhetõk.
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst,
  FireDAC.Comp.Client, System.UITypes;

type
  TCfgNemHasznaltF = class(TForm)
    Panel1: TPanel;
    lblinfo: TLabel;
    clbsorok: TCheckListBox;
    Panel2: TPanel;
    btnkilepes: TButton;
    btnmind: TButton;
    btntorles: TButton;
    procedure btnmindClick(Sender: TObject);
    procedure btntorlesClick(Sender: TObject);
  private
    { Private declarations }
    procedure lista_toltese;
  public
    { Public declarations }
    procedure fo;
  end;

implementation
  uses AU, UzenetekU;
{$R *.dfm}

procedure TCfgNemHasznaltF.lista_toltese;
var q: TFDQuery;
begin
  clbsorok.Items.BeginUpdate;
  try
    clbsorok.Clear;
    q:=TFDQuery.Create(nil);
    try
      q.Connection:=af.Kapcs;
      q.Open('SELECT id,csoport,tulajdonsag,ertek,magyarazat FROM cfg ORDER BY csoport,tulajdonsag');
      while not q.Eof do
      begin
        if not af.cfg_hasznalt_e(q.FieldByName('csoport').AsString,q.FieldByName('tulajdonsag').AsString) then
          clbsorok.Items.AddObject(q.FieldByName('csoport').AsString+' | '+
                                   q.FieldByName('tulajdonsag').AsString+' = '+
                                   q.FieldByName('ertek').AsString+'   '+
                                   q.FieldByName('magyarazat').AsString,
                                   TObject(NativeInt(q.FieldByName('id').AsInteger)));
        q.Next;
      end;
    finally
      q.Free;
    end;
  finally
    clbsorok.Items.EndUpdate;
  end;
  btnmind.Enabled:=clbsorok.Count>0;
  btntorles.Enabled:=clbsorok.Count>0;
end;

procedure TCfgNemHasznaltF.btnmindClick(Sender: TObject);
begin
  clbsorok.CheckAll(cbChecked);
end;

procedure TCfgNemHasznaltF.btntorlesClick(Sender: TObject);
var i,db: Integer;
    idk: string;
begin
  idk:='';
  db:=0;
  for i := 0 to clbsorok.Count-1 do
    if clbsorok.Checked[i] then
    begin
      if idk<>'' then idk:=idk+',';
      idk:=idk+IntToStr(NativeInt(clbsorok.Items.Objects[i]));
      Inc(db);
    end;
  if db=0 then
  begin
    ShowMessage(rsCfgNincsKijelolve);
    exit
  end;
  if MessageDlg(Format(rsCfgTorlesMegerosites,[db]),mtConfirmation,[mbYes,mbNo],0)<>mrYes then exit;
  af.Kapcs.ExecSQL('DELETE FROM cfg WHERE id IN ('+idk+')');
  lista_toltese;
end;

procedure TCfgNemHasznaltF.fo;
begin
  lista_toltese;
  if clbsorok.Count=0 then
  begin
    ShowMessage(rsCfgNincsNemHasznalt);
    exit
  end;
  lblinfo.Caption:=rsCfgNemHasznaltInfo;
  ShowModal;
end;

end.
