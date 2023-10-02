program Rendszam_Kuldes;

uses
  Vcl.Forms,
  FoU in 'FoU.pas' {FoF},
  AU in 'AU.pas' {AF: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFoF, FoF);
  Application.CreateForm(TAF, AF);
  Application.Run;
end.
