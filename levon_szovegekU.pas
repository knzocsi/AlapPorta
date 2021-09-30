unit levon_szovegekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  JvExMask, JvSpin, JvDBSpinEdit, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tlevon_szovegekF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    DBGrid1: TDBGrid;
    tbReszlet: TTabSheet;
    lbl1: TLabel;
    DBNavigator1: TDBNavigator;
    deDLevon_szoveg: TDBEdit;
    levon_szovegT: TFDTable;
    levon_szovegDs: TDataSource;
    levon_szovegTID: TFDAutoIncField;
    levon_szovegTSzoveg: TWideStringField;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure levon_szovegTAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  levon_szovegekF: Tlevon_szovegekF;

implementation
  uses AU;
{$R *.dfm}

procedure Tlevon_szovegekF.btnKilepesClick(Sender: TObject);
begin
 Close
end;

procedure Tlevon_szovegekF.FormActivate(Sender: TObject);
begin
 levon_szovegT.Open()
end;

procedure Tlevon_szovegekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 levon_szovegT.Close
end;

procedure Tlevon_szovegekF.levon_szovegTAfterInsert(DataSet: TDataSet);
begin
 deDLevon_szoveg.SetFocus
end;

end.
