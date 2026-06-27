unit KartyakU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TKartyakF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    Panel2: TPanel;
    JvDBUltimGrid1: TJvDBUltimGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEd_id: TDBEdit;
    DBEd_kartyaszam: TDBEdit;
    DBEd_leiras: TDBEdit;
    kartyakDs: TDataSource;
    KartyakT: TFDTable;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    procedure btnkilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure kartyakTBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KartyakF: TKartyakF;

implementation
  uses AU;
{$R *.dfm}

procedure TKartyakF.btnkilepesClick(Sender: TObject);
begin
 close;
end;

procedure TKartyakF.FormActivate(Sender: TObject);
begin
 kartyakT.open;
end;

procedure TKartyakF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 kartyakT.Close;
end;

procedure TKartyakF.kartyakTBeforePost(DataSet: TDataSet);
begin
if af.kartyaszam_foglalt(kartyakT.FieldByName('id').AsInteger,DBEd_kartyaszam.Text,'kartyak') then
  begin
    ShowMessage('Ez a kártyaszám már foglalt!');
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
end;

end.
