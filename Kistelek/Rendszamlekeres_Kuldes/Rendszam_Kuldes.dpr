program Rendszam_Kuldes;

uses
  Vcl.Forms,
  FoU in 'FoU.pas' {FoF},
  AU in 'AU.pas' {AF: TDataModule},
  Cam_kepU in 'Cam_kepU.pas' {Cam_kepF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFoF, FoF);
  Application.CreateForm(TAF, AF);
  Application.CreateForm(TCam_kepF, Cam_kepF);
  Application.Run;
end.
