unit szoftver_alapU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,Winapi.ShellAPI;

type
  Tszoftver_alapF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    JvDBUltimGrid1: TJvDBUltimGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
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

procedure Tszoftver_alapF.fo;
begin
 AF.CfgT.Close;
 af.CfgT.Open;
 ShowModal;
end;

end.
