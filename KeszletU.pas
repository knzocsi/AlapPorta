unit KeszletU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, JvExControls,
  JvDBLookup, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TKeszletF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    btnNyomtatas: TButton;
    JvDBUltimGrid1: TJvDBUltimGrid;
    termeklookup: TJvDBLookupCombo;
    Label3: TLabel;
    partnerlookup: TJvDBLookupCombo;
    Label5: TLabel;
    tarololookup: TJvDBLookupCombo;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    termeklist: TFDQuery;
    termeklistDs: TDataSource;
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    Label1: TLabel;
    chktort: TCheckBox;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNyomtatasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure termeklookupChange(Sender: TObject);
  private
    { Private declarations }
    procedure szures;
  public
    { Public declarations }
  end;

var
  KeszletF: TKeszletF;
  nyomtat:Boolean=False;
implementation
  uses AU,NezetU;
{$R *.dfm}

procedure TKeszletF.btnKilepesClick(Sender: TObject);
begin
Close
end;

procedure TKeszletF.btnNyomtatasClick(Sender: TObject);
begin
  nyomtat:=True;
  with NezetF do
  begin
    rep_valaszt(af.frxKeszlet,1);
    if nyomtatva then valasztott.Print;
    valasztott.Preview:=nil;
  end;
  nyomtat:=False
end;

procedure TKeszletF.FormActivate(Sender: TObject);
begin
 if nyomtat then
  begin
    nyomtat:=False;
    Exit
  end;
 termeklist.Open;
 Partnelist.open;
 TarolokT.Open;
 szures;
end;

procedure TKeszletF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 termeklist.close;
 Partnelist.close;
 TarolokT.close;
 aF.KeszletQ.Close
end;


procedure TKeszletF.szures;
var felt:string;
begin
 if nyomtat then Exit;
 felt:='';
 with aF.KeszletQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' select * from keszlet_nezet');
    if chktort.Checked then felt:=' WHERE tort=1 '
    else felt:=' WHERE tort=0 ';
    if termeklookup.KeyValue<>'!' then felt:=felt+' and term_id='+#39+termeklookup.KeyValue+#39;
    if partnerlookup.KeyValue<>'!' then felt:=felt+' and partner_id='+#39+partnerlookup.KeyValue+#39;
    if tarololookup.KeyValue<>'!' then felt:=felt+' and tarolo_id='+#39+tarololookup.KeyValue+#39;
    SQL.Add(felt);
    Open();
  end;
end;

procedure TKeszletF.termeklookupChange(Sender: TObject);
begin
 szures
end;

end.
