unit MozgasokTesztU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, siComp,
  siLngLnk;

type
  TMozgasokTesztF = class(TForm)
    rgirany: TRadioGroup;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    siLangLinked_MozgasokTesztF: TsiLangLinked;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MozgasokTesztF: TMozgasokTesztF;

implementation
  uses FoU;
{$R *.dfm}

procedure TMozgasokTesztF.Button1Click(Sender: TObject);
begin
 FoF.mozgas_mentese(Edit1.Text, rgirany.ItemIndex,rgirany.ItemIndex);
end;

end.
