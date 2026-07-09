unit NagyTomegU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, siComp, siLngLnk;

type
  TNagyTomegF = class(TForm)
    lblnagytomeg: TLabel;
    siLangLinked_NagyTomegF: TsiLangLinked;
    procedure lblnagytomegClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NagyTomegF: TNagyTomegF;

implementation

{$R *.dfm}

procedure TNagyTomegF.lblnagytomegClick(Sender: TObject);
begin
//
end;

end.
