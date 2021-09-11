unit nagykepU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TNagykepF = class(TForm)
    Button1: TButton;
    imgnagy: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NagykepF: TNagykepF;

implementation

{$R *.dfm}

procedure TNagykepF.Button1Click(Sender: TObject);
begin
close;
end;

procedure TNagykepF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_ESCAPE then close
end;

end.
