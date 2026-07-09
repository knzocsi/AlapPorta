unit VarakozasU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, siComp, siLngLnk;

type
  TVarF = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    siLangLinked_VarF: TsiLangLinked;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VarF: TVarF;

implementation

{$R *.dfm}

end.
