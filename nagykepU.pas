unit nagykepU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,vcl.Imaging.jpeg;

type
  TNagykepF = class(TForm)
    Button1: TButton;
    imgnagy: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    kepnev:string ;
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

procedure TNagykepF.FormActivate(Sender: TObject);
begin
  imgnagy.Picture.LoadFromFile(kepnev);
end;

procedure TNagykepF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 imgnagy.Picture:=nil;
 kepnev:='';
end;

procedure TNagykepF.FormCreate(Sender: TObject);
begin
 imgnagy.Picture:=nil;
 kepnev:='';
end;

procedure TNagykepF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then close
end;

end.
