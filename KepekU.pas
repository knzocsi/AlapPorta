unit KepekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvImageListViewer, JvExForms, JvCustomItemViewer, JvImagesViewer;

type
  TKepekF = class(TForm)
    Panel1: TPanel;
    OpenPictureDialog1: TOpenPictureDialog;
    btnKilepes: TButton;
    imgKep: TImage;
    btbKereses: TButton;
    procedure btnKilepesClick(Sender: TObject);
    procedure btbKeresesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KepekF: TKepekF;

implementation

{$R *.dfm}

procedure TKepekF.btbKeresesClick(Sender: TObject);
begin

  if OpenPictureDialog1.Execute() then
  begin
     imgKep.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TKepekF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

end.
