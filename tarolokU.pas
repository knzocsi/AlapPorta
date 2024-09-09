unit tarolokU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TTarolokF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    DBGrid1: TDBGrid;
    dednev: TDBEdit;
    DBNavigator1: TDBNavigator;
    TarolokTid: TFDAutoIncField;
    TarolokTnev: TWideStringField;
    Label1: TLabel;
    procedure btnkilepesClick(Sender: TObject);
    procedure TarolokTBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TarolokF: TTarolokF;

implementation
  uses AU;
{$R *.dfm}

procedure TTarolokF.btnkilepesClick(Sender: TObject);
begin
 close
end;

procedure TTarolokF.FormActivate(Sender: TObject);
begin
 TarolokT.Open()
end;

procedure TTarolokF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 TarolokT.close
end;

procedure TTarolokF.TarolokTBeforePost(DataSet: TDataSet);
begin
  if dednev.Text='' then
 begin
   ShowMessage(af.ford('rsNevetMegKellAdni'));
   if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
 end;
if af.nev_foglalt(TarolokTID.AsInteger,dednev.Text,'tarolok') then
 begin
   ShowMessage(af.ford('rsEzANevMarFoglalt'));
   if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
 end;
end;

end.
