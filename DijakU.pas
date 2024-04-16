unit DijakU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.DBCtrls,
  JvExMask, JvSpin, JvDBSpinEdit, Vcl.Mask;

type
  TDijakF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    DBEdit1: TDBEdit;
    JvDBSpinEdit1: TJvDBSpinEdit;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure btnkilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DijakF: TDijakF;

implementation
   uses au;
{$R *.dfm}

procedure TDijakF.btnkilepesClick(Sender: TObject);
begin
 close;
end;

procedure TDijakF.FormActivate(Sender: TObject);
begin
 with af.CfgT do
  begin
    close;
    Open;
    Filtered:=False;
    Filter:='';
    Filter:=' csoport='+QuotedStr('DÍJAK');
    Filtered:=True;
  end;
end;

procedure TDijakF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
af.CfgT.Filter:='';
af.CfgT.Filtered:=False;
af.cfgT.Close
end;

end.
