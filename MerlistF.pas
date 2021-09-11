unit MerlistF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Button1: TButton;
    Edit1: TEdit;
    kezdat: TJvDateEdit;
    fejdat: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
