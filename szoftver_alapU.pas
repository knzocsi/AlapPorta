unit szoftver_alapU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,Winapi.ShellAPI,
  JvExStdCtrls, JvEdit, JvDBSearchEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, JvExControls, JvDBLookup,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit;

type
  Tszoftver_alapF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Label1: TLabel;
    Label2: TLabel;
    csopQ: TFDQuery;
    csopQDs: TDataSource;
    cbcsopszur: TJvDBLookupCombo;
    JvDBFindEdit1: TJvDBFindEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cbcsopszurChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure csop_combo_tolt;
  public
    { Public declarations }
    procedure fo;
  end;

var
  szoftver_alapF: Tszoftver_alapF;

implementation
  uses  AU, AlapbemodU;
{$R *.dfm}

procedure Tszoftver_alapF.Button1Click(Sender: TObject);
begin
 close
end;

procedure Tszoftver_alapF.Button2Click(Sender: TObject);
var AppName: PChar;
begin
 ShowMessage('A program újraindul');
 AppName := PChar(Application.ExeName) ;
 ShellExecute(Handle,'open', AppName, nil, nil, SW_SHOWNORMAL) ;
 Application.Terminate;
end;

procedure Tszoftver_alapF.Button4Click(Sender: TObject);
begin
 AlapbemodF.fo(af.CfgT.FieldByName('id').AsInteger);
end;

procedure Tszoftver_alapF.csop_combo_tolt;
begin
 with csopQ do
  begin
    close;
    SQL.Clear;
    SQL.Add(' SELECT DISTINCT(csoport) FROM cfg ');
    SQL.Add(' ORDER BY csoport ASC');
    open;
  end;
end;

procedure Tszoftver_alapF.fo;
begin
 AF.CfgT.Close;
 af.CfgT.Open;
 csop_combo_tolt;
 ShowModal;
end;

procedure Tszoftver_alapF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
af.CfgT.Filter:='';
af.CfgT.Filtered:=False;
end;

procedure Tszoftver_alapF.cbcsopszurChange(Sender: TObject);
begin
 with af.CfgT do
  begin
    Filtered:=False;
    Filter:='';
    if cbcsopszur.KeyValue<>'!' then
     begin
       Filter:=' csoport='+QuotedStr(cbcsopszur.DisplayValue);
       Filtered:=True;
     end;
  end;
end;

end.
