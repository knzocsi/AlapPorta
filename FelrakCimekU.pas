unit FelrakCimekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFelrakcimekF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    PageControl1: TPageControl;
    tsfelcimlist: TTabSheet;
    DBGrid2: TDBGrid;
    tsfelrakreszlet: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBNavigator2: TDBNavigator;
    FelcimekT: TFDTable;
    FelcimekDs: TDataSource;
    lbltulid: TLabel;
    procedure FelcimekTBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fo(tulid:Integer);
  end;

var
  FelrakcimekF: TFelrakcimekF;

implementation

{$R *.dfm}

{ TForm1 }

procedure TFelrakcimekF.FelcimekTBeforePost(DataSet: TDataSet);
begin
 FelcimekT.FieldByName('tul_id').AsInteger:=strtoInt(lbltulid.Caption);
end;

procedure TFelrakcimekF.fo(tulid: Integer);
begin
  lbltulid.Caption:=tulid.ToString;
  try
  with FelcimekT do
  begin
    close;
    open;
    Filtered:=False;
    filter:=' tul_id='+QuotedStr(tulid.ToString);
    Filtered:=true;
  end;
  finally
    ShowModal
  end;
end;

end.
