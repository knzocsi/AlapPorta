unit tipusokU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TtipusokF = class(TForm)
    PageControl1: TPageControl;
    listatab: TTabSheet;
    reszletektab: TTabSheet;
    tipusQ: TFDQuery;
    tipusQDs: TDataSource;
    DBGrid1: TDBGrid;
    tipusQid: TAutoIncField;
    tipusQnev: TWideStringField;
    DBNavigator1: TDBNavigator;
    DBEdnev: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tipusQBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tipusokF: TtipusokF;

implementation
  uses AU;
{$R *.dfm}

procedure TtipusokF.FormActivate(Sender: TObject);
begin
 tipusQ.Open();
end;

procedure TtipusokF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 tipusQ.close
end;

procedure TtipusokF.tipusQBeforePost(DataSet: TDataSet);
begin
if dbednev.Text='' then
 begin
   ShowMessage('Adja meg a nevet');
   if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
 end;
  if af.nev_foglalt(tipusqid.AsInteger,dbednev.Text,'tipus') then
  begin
     ShowMessage('Ez a név már foglalt!');
     if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
end;
end.
