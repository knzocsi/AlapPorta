program GlabsTestClient;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FormMain},
  uSettings in 'uSettings.pas' {FormSettings},
  uGlabsApiClient in 'uGlabsApiClient.pas',
  uGlabsConfig in 'uGlabsConfig.pas';

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
