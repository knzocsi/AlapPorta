unit RendszamokU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, JvExMask,
  JvSpin, JvDBSpinEdit;

type
  TRendszamokF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    DBGrid1: TDBGrid;
    tbReszlet: TTabSheet;
    DBNavigator1: TDBNavigator;
    RendszamT: TFDTable;
    RendszamDS: TDataSource;
    lbl1: TLabel;
    dedRendszam: TDBEdit;
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    Label5: TLabel;
    Label1: TLabel;
    dbspeTara: TJvDBSpinEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    btnMeres: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure tbReszletShow(Sender: TObject);
    procedure tbReszletHide(Sender: TObject);
    procedure btnMeresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RendszamokF: TRendszamokF;

implementation
uses
  AU;

{$R *.dfm}

procedure TRendszamokF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TRendszamokF.btnMeresClick(Sender: TObject);
begin
  try
    dbspeTara.Value:=StrToInt(mertertek);
  except
    dbspeTara.Value:=0;
  end;
end;

procedure TRendszamokF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  pcListaReszlet.ActivePage:=TTabSheet(tbLista);
  RendszamT.Open();
end;

procedure TRendszamokF.tbReszletHide(Sender: TObject);
begin
//Partnelist.Close;
end;

procedure TRendszamokF.tbReszletShow(Sender: TObject);
begin
//Partnelist.Close;
//Partnelist.Open();
end;

end.
