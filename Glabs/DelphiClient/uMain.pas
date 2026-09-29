unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.IOUtils, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, uGlabsConfig, uGlabsApiClient;

type
  TFormMain = class(TForm)
    ButtonSettings: TButton;
    MemoLog: TMemo;
    LabelWeightPlate: TLabel;
    LabelWeightValue: TLabel;
    LabelCause: TLabel;
    LabelWeightStationId: TLabel;
    EditWeightPlate: TEdit;
    EditWeightValue: TEdit;
    ComboBoxCause: TComboBox;
    EditWeightStationId: TEdit;
    ButtonSendWeightByPlate: TButton;
    ButtonSendWeightByStation: TButton;
    ButtonRefreshProfile: TButton;
    LabelProfileStatus: TLabel;
    LabelDiagPath: TLabel;
    EditDiagPath: TEdit;
    ButtonDiagGet: TButton;
    ButtonSaveLog: TButton;
    ButtonSaveJson: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ButtonSettingsClick(Sender: TObject);
    procedure ButtonSendWeightByPlateClick(Sender: TObject);
    procedure ButtonSendWeightByStationClick(Sender: TObject);
    procedure ButtonRefreshProfileClick(Sender: TObject);
    procedure ButtonDiagGetClick(Sender: TObject);
    procedure ButtonSaveLogClick(Sender: TObject);
    procedure ButtonSaveJsonClick(Sender: TObject);
  private
    FConfig: TGlabsConfig;
    FApiClient: TGlabsApiClient;
    procedure LogLine(Msg: string);
    procedure UpdateProfileStatus;
    procedure RefreshProfileId;
    function TryGetWeightInput(out PlateNumber: string; out Weight: Integer;
      out Cause: string): Boolean;
  end;

var
  FormMain: TFormMain;

implementation

uses
  uSettings;

{$R *.dfm}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FConfig := TGlabsConfig.Create;
  FConfig.Load;
  FApiClient := TGlabsApiClient.Create(FConfig);
  FApiClient.OnLog := LogLine;
  MemoLog.Clear;
  ComboBoxCause.ItemIndex := 0;
  EditWeightStationId.Text := FConfig.StationId;
  LogLine('Program elindult. GLABs instance: ' + FConfig.InstanceHost);
  UpdateProfileStatus;
  if FConfig.ClientId = '' then
    LogLine('Figyelem: a Beallitasok kepernyon meg meg kell adni a GLABs hozzaferesi adatokat.')
  else
    RefreshProfileId;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FApiClient.Free;
  FConfig.Free;
end;

procedure TFormMain.LogLine(Msg: string);
begin
  MemoLog.Lines.Add(FormatDateTime('hh:nn:ss', Now) + '  ' + Msg);
end;

procedure TFormMain.UpdateProfileStatus;
begin
  if FConfig.ProfileId <> '' then
    LabelProfileStatus.Caption := 'Profile ID: ' + FConfig.ProfileId
  else
    LabelProfileStatus.Caption := 'Profile ID: -';
end;

procedure TFormMain.RefreshProfileId;
var
  Profiles: TArray<TGlabsProfileInfo>;
begin
  if (FConfig.ClientId = '') or (FConfig.ClientSecret = '') then
  begin
    LogLine('Profil lekerdezes kihagyva: nincs Client ID/Secret beallitva.');
    Exit;
  end;
  try
    Profiles := FApiClient.GetProfiles;
    if Length(Profiles) = 0 then
      LogLine('Profil lekerdezes: nem talalhato profil.')
    else
    begin
      FConfig.ProfileId := Profiles[0].ProfileId;
      FConfig.Save;
      LogLine('Profile ID automatikusan beallitva: ' + FConfig.ProfileId +
        ' (' + Profiles[0].Name + ')');
    end;
  except
    on E: Exception do
      LogLine('Profil lekerdezes sikertelen: ' + E.ClassName + ': ' + E.Message);
  end;
  UpdateProfileStatus;
end;

procedure TFormMain.ButtonRefreshProfileClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  try
    RefreshProfileId;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFormMain.ButtonDiagGetClick(Sender: TObject);
var
  PathSuffix: string;
begin
  PathSuffix := Trim(EditDiagPath.Text);
  if PathSuffix = '' then
  begin
    ShowMessage('Adjon meg egy vegpont utvonalat (pl. partners).');
    EditDiagPath.SetFocus;
    Exit;
  end;

  ButtonDiagGet.Enabled := False;
  Screen.Cursor := crHourGlass;
  try
    LogLine('--- Diagnosztikai GET indul: ' + PathSuffix + ' ---');
    try
      FApiClient.GetRaw(PathSuffix);
    except
      on E: Exception do
        LogLine('KIVETEL: ' + E.ClassName + ': ' + E.Message);
    end;
  finally
    Screen.Cursor := crDefault;
    ButtonDiagGet.Enabled := True;
  end;
end;

function EnsureLogsDir: string;
begin
  Result := TPath.Combine(TPath.GetDirectoryName(ParamStr(0)), 'logs');
  if not TDirectory.Exists(Result) then
    TDirectory.CreateDirectory(Result);
end;

procedure TFormMain.ButtonSaveLogClick(Sender: TObject);
var
  FileName: string;
begin
  FileName := TPath.Combine(EnsureLogsDir,
    'glabs-log-' + FormatDateTime('yyyymmdd-hhnnss', Now) + '.txt');
  MemoLog.Lines.SaveToFile(FileName, TEncoding.UTF8);
  LogLine('Naplo elmentve: ' + FileName);
end;

procedure TFormMain.ButtonSaveJsonClick(Sender: TObject);
var
  Dir, Stamp, ReqFile, RespFile: string;
begin
  if FApiClient.LastRequestJson = '' then
  begin
    ShowMessage('Meg nem tortent kuldes, nincs menteni valo JSON.');
    Exit;
  end;

  Dir := EnsureLogsDir;
  Stamp := FormatDateTime('yyyymmdd-hhnnss', Now);

  ReqFile := TPath.Combine(Dir, 'glabs-request-' + Stamp + '.json');
  TFile.WriteAllText(ReqFile, FApiClient.LastRequestJson, TEncoding.UTF8);
  LogLine('Keres JSON elmentve: ' + ReqFile);

  if FApiClient.LastResponseJson <> '' then
  begin
    RespFile := TPath.Combine(Dir, 'glabs-response-' + Stamp + '.json');
    TFile.WriteAllText(RespFile, FApiClient.LastResponseJson, TEncoding.UTF8);
    LogLine('Valasz JSON elmentve: ' + RespFile);
  end;
end;

function TFormMain.TryGetWeightInput(out PlateNumber: string; out Weight: Integer;
  out Cause: string): Boolean;
begin
  Result := False;
  PlateNumber := Trim(EditWeightPlate.Text);
  if PlateNumber = '' then
  begin
    ShowMessage('Adja meg a rendszamot.');
    EditWeightPlate.SetFocus;
    Exit;
  end;

  if not TryStrToInt(Trim(EditWeightValue.Text), Weight) or (Weight <= 0) then
  begin
    ShowMessage('Adjon meg ervenyes, pozitiv egesz tomeget (kg).');
    EditWeightValue.SetFocus;
    Exit;
  end;

  if ComboBoxCause.ItemIndex < 0 then
  begin
    ShowMessage('Valasszon okot (cause).');
    ComboBoxCause.SetFocus;
    Exit;
  end;
  Cause := ComboBoxCause.Items[ComboBoxCause.ItemIndex];

  Result := True;
end;

procedure TFormMain.ButtonSendWeightByPlateClick(Sender: TObject);
var
  Plate, Cause: string;
  Weight: Integer;
  Res: TGlabsWeightResult;
begin
  if not TryGetWeightInput(Plate, Weight, Cause) then
    Exit;

  ButtonSendWeightByPlate.Enabled := False;
  Screen.Cursor := crHourGlass;
  try
    LogLine(Format('--- Sulymeres (rendszam) indul: rendszam=%s, tomeg=%d kg, ok=%s ---',
      [Plate, Weight, Cause]));
    try
      Res := FApiClient.PostWeightMeasurementByPlate(Plate, Cause, Weight);
      if Res.Success then
        LogLine('SIKER: measurementId=' + Res.MeasurementId)
      else
        LogLine(Format('HIBA (HTTP %d): %s', [Res.StatusCode, Res.ErrorMessage]));
    except
      on E: Exception do
        LogLine('KIVETEL: ' + E.ClassName + ': ' + E.Message);
    end;
  finally
    Screen.Cursor := crDefault;
    ButtonSendWeightByPlate.Enabled := True;
  end;
end;

procedure TFormMain.ButtonSendWeightByStationClick(Sender: TObject);
var
  Plate, Cause, StationId: string;
  Weight: Integer;
  Res: TGlabsWeightResult;
begin
  if not TryGetWeightInput(Plate, Weight, Cause) then
    Exit;

  StationId := Trim(EditWeightStationId.Text);
  if StationId = '' then
  begin
    ShowMessage('Adja meg az Allomas ID-t.');
    EditWeightStationId.SetFocus;
    Exit;
  end;

  ButtonSendWeightByStation.Enabled := False;
  Screen.Cursor := crHourGlass;
  try
    LogLine(Format('--- Sulymeres (allomas) indul: allomas=%s, rendszam=%s, tomeg=%d kg, ok=%s ---',
      [StationId, Plate, Weight, Cause]));
    try
      Res := FApiClient.PostWeightMeasurementByStation(StationId, Plate, Cause, Weight);
      if Res.Success then
        LogLine('SIKER: measurementId=' + Res.MeasurementId)
      else
        LogLine(Format('HIBA (HTTP %d): %s', [Res.StatusCode, Res.ErrorMessage]));
    except
      on E: Exception do
        LogLine('KIVETEL: ' + E.ClassName + ': ' + E.Message);
    end;
  finally
    Screen.Cursor := crDefault;
    ButtonSendWeightByStation.Enabled := True;
  end;
end;

procedure TFormMain.ButtonSettingsClick(Sender: TObject);
var
  Frm: TFormSettings;
begin
  Frm := TFormSettings.Create(Self);
  try
    Frm.Init(FConfig);
    if Frm.ShowModal = mrOk then
    begin
      FApiClient.ResetToken;
      LogLine('Beallitasok mentve.');
      EditWeightStationId.Text := FConfig.StationId;
      RefreshProfileId;
    end;
  finally
    Frm.Free;
  end;
end;

end.
