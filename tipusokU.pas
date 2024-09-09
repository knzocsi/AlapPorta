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
  TTipusokF = class(TForm)
    PageControl1: TPageControl;
    listatab: TTabSheet;
    reszletektab: TTabSheet;
    DBGrid1: TDBGrid;
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
  TipusokF: TTipusokF;

implementation
  uses AU;
{$R *.dfm}

procedure TTipusokF.FormActivate(Sender: TObject);
begin
 Af.tipusQ.Open();
end;

procedure TTipusokF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Af.tipusQ.close
end;

procedure TTipusokF.tipusQBeforePost(DataSet: TDataSet);
begin
if dbednev.Text='' then
 begin
   ShowMessage(af.ford('rsNevetMegKellAdni'));
   if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
 end;
  if af.nev_foglalt(af.tipusqid.AsInteger,dbednev.Text,'tipus') then
  begin
     ShowMessage(af.ford('rsEzANevMarFoglalt'));
     if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
end;
end.
