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
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    DBGrid1: TDBGrid;
    tbReszlet: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    dedID: TDBEdit;
    dedNev: TDBEdit;
    dedcim: TDBEdit;
    dedadoszam: TDBEdit;
    tulajT: TFDTable;
    tulajDs: TDataSource;
    tulajTID: TFDAutoIncField;
    tulajTNev: TWideStringField;
    tulajTCim: TWideStringField;
    tulajTAdoszam: TWideStringField;
    tulajTkuj: TWideStringField;
    tulajTktj: TWideStringField;
    tulajTElotag: TWideStringField;
    dedkuj: TDBEdit;
    dedktj: TDBEdit;
    dedelotag: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    procedure btnkilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TulajokF: TTulajokF;

implementation
  uses au;
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

procedure TTulajokF.FormActivate(Sender: TObject);
begin
 tulajT.Open;
end;

procedure TTulajokF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 tulajT.Close
end;

end.
