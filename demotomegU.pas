unit demotomegU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvSpin, JvExControls, JvxSlider;

type
  TDemotomegF = class(TForm)
    sltomeg: TJvxSlider;
    sptomeg: TJvSpinEdit;
    procedure sltomegChange(Sender: TObject);
    procedure sptomegChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DemotomegF: TDemotomegF;

implementation
   uses AU;
{$R *.dfm}

procedure TDemotomegF.sltomegChange(Sender: TObject);
begin
  spTomeg.AsInteger:=slTomeg.Value;
  mertertek:=IntToStr(spTomeg.AsInteger);
  Application.ProcessMessages;
end;

procedure TDemotomegF.sptomegChange(Sender: TObject);
begin

 mertertek:=IntToStr(spTomeg.AsInteger);
 Application.ProcessMessages;
end;

end.
