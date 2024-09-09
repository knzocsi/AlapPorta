unit NzelvvalaszTU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNyelvF = class(TForm)
    Button1: TButton;
    Button2: TButton;
    cbxnyelv: TComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NyelvF: TNyelvF;

implementation
  uses reinit,AU;
{$R *.dfm}

procedure TNyelvF.FormCreate(Sender: TObject);
begin
nyelvvalaszt:=true;
cbxnyelv.ItemIndex:=nyelv_index;
end;

end.
