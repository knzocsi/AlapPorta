unit Tulajok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.DBCtrls, JvExMask, JvSpin, JvDBSpinEdit, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTulajokF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    tulajT: TFDTable;
    tulajDs: TDataSource;
    tulajTID: TFDAutoIncField;
    tulajTNev: TWideStringField;
    tulajTCim: TWideStringField;
    tulajTAdoszam: TWideStringField;
    tulajTkuj: TWideStringField;
    tulajTktj: TWideStringField;
    tulajTElotag: TWideStringField;
    Button1: TButton;
    tulajTIrsz: TWideStringField;
    tulajTTelepules: TWideStringField;
    tulajTKerulet: TWideStringField;
    tulajTKozterulet: TWideStringField;
    tulajTKozt_Jelleg: TWideStringField;
    tulajTHazszam: TWideStringField;
    tulajTEpulet: TWideStringField;
    tulajTLepcsohaz: TWideStringField;
    tulajTEmelet: TWideStringField;
    tulajTHrsz: TWideStringField;
    tulajTEmail: TWideStringField;
    tulajTTelefon: TWideStringField;
    tulajTAjto: TWideStringField;
    tulajTcjsz: TWideStringField;
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    DBGrid1: TDBGrid;
    tbReszlet: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Label6: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    DBNavigator1: TDBNavigator;
    dedID: TDBEdit;
    dedNev: TDBEdit;
    dedcim: TDBEdit;
    dedadoszam: TDBEdit;
    dedkuj: TDBEdit;
    dedktj: TDBEdit;
    dedelotag: TDBEdit;
    dbedtIrsz: TDBEdit;
    dbedtTelepules: TDBEdit;
    dbedtKozterulet: TDBEdit;
    dbedtKozt_Jelleg: TDBEdit;
    dbedtHazszam: TDBEdit;
    DBEdepulet: TDBEdit;
    dbedtLepcsohaz: TDBEdit;
    dbedtEmelet: TDBEdit;
    dbedtAjto: TDBEdit;
    dbedthrsz: TDBEdit;
    dbedtemail: TDBEdit;
    dbedttelefon: TDBEdit;
    dbedcjsz: TDBEdit;
    Button2: TButton;
    procedure btnkilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TulajokF: TTulajokF;

implementation
  uses au, FelrakCimekU;
{$R *.dfm}

procedure TTulajokF.btnkilepesClick(Sender: TObject);
begin
 Close
end;

procedure TTulajokF.Button1Click(Sender: TObject);
begin
 with af.Q2 do
  begin
    close;
    SQL.Clear;
    SQL.Add(' UPDATE merlegjegy SET tul_id=:tul_id,tul_nev=:tul_nev,tul_cim=:tul_cim,tul_adoszam=:tul_adoszam,');
    SQL.Add(' tul_kuj=:tul_kuj,tul_ktj=:tul_ktj,tul_elotag=:tul_elotag');
    SQL.Add(' WHERE tul_id is null or tul_id=0');
    ParamByName('tul_id').AsInteger:=tulajTID.AsInteger;
    ParamByName('tul_nev').Asstring:=tulajTNev.AsString;
    ParamByName('tul_cim').Asstring:=tulajTcim.AsString;
    ParamByName('tul_adoszam').Asstring:=tulajTadoszam.AsString;
    ParamByName('tul_kuj').Asstring:=tulajTkuj.AsString;
    ParamByName('tul_ktj').Asstring:=tulajTktj.AsString;
    ParamByName('tul_elotag').Asstring:=tulajTelotag.AsString;
    ExecSQL
  end;
end;

procedure TTulajokF.Button2Click(Sender: TObject);
begin
 if tulajT.IsEmpty then
  begin
    ShowMessage('Válassz tulajdonost!');
    Exit
  end;
  if tulajT.RecNo=-1 then
   begin
    ShowMessage('Válassz tulajdonost!');
    Exit
   end;
 felrakcimekF.fo(tulajTID.AsInteger);
end;

procedure TTulajokF.FormActivate(Sender: TObject);
begin
 tulajT.Open;

end;

procedure TTulajokF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 tulajT.Close;
end;

end.
