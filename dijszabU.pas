unit dijszabU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.Mask, Vcl.DBCtrls;

type
  TdijszabF = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnkilep: TButton;
    dijkatT: TFDTable;
    dijkatDs: TDataSource;
    dijakgrid: TJvDBUltimGrid;
    DBNavigator1: TDBNavigator;
    DBEnev: TDBEdit;
    DBEtarolasi: TDBEdit;
    DBEbetarolasi: TDBEdit;
    DBEkitarolasi: TDBEdit;
    DBEszaritasi: TDBEdit;
    DBEtisztitasi: TDBEdit;
    DBEszallitasi: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btndijsza_termek: TButton;
    procedure btnkilepClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dijkatTBeforePost(DataSet: TDataSet);
    procedure btndijsza_termekClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dijszabF: TdijszabF;

implementation
   uses AU, dijszab_termekU;
{$R *.dfm}

procedure TdijszabF.btndijsza_termekClick(Sender: TObject);
begin
dijszab_termekF.showmodal;
end;

procedure TdijszabF.btnkilepClick(Sender: TObject);
begin
 close;
end;

procedure TdijszabF.dijkatTBeforePost(DataSet: TDataSet);
begin
//
end;

procedure TdijszabF.FormActivate(Sender: TObject);
begin
 dijkatT.Open;
end;

procedure TdijszabF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dijkatT.Close;
end;

end.
