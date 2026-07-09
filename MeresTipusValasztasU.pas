unit MeresTipusValasztasU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, siComp,
  siLngLnk;

type
  TMeresTipusValasztasF = class(TForm)
    RadioGroup1: TRadioGroup;
    siLangLinked_MeresTipusValasztasF: TsiLangLinked;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MeresTipusValasztasF: TMeresTipusValasztasF;

implementation
uses AU;

{$R *.dfm}

procedure TMeresTipusValasztasF.FormActivate(Sender: TObject);
begin
   RadioGroup1.ItemIndex:=-1;
end;

procedure TMeresTipusValasztasF.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: MeresTipus:=MeresTipusNormal;
    1: MeresTipus:=MeresTipusRogzitett;
  end;
  if  RadioGroup1.ItemIndex <> -1 then  close;
end;

end.
