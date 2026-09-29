unit uSettings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, uGlabsConfig, uGlabsApiClient;

type
  TFormSettings = class(TForm)
    LabelHost: TLabel;
    EditHost: TEdit;
    LabelClientId: TLabel;
    EditClientId: TEdit;
    LabelClientSecret: TLabel;
    EditClientSecret: TEdit;
    LabelScope: TLabel;
    EditScope: TEdit;
    LabelProfileId: TLabel;
    EditProfileId: TEdit;
    LabelStationId: TLabel;
    EditStationId: TEdit;
    ButtonTestConnection: TButton;
    ListBoxProfiles: TListBox;
    ButtonUseAsProfileId: TButton;
    MemoStatus: TMemo;
    ButtonSave: TButton;
    ButtonCancel: TButton;
    procedure ButtonTestConnectionClick(Sender: TObject);
    procedure ButtonUseAsProfileIdClick(Sender: TObject);
    procedure ButtonSaveClick(Sender: TObject);
  private
    FConfig: TGlabsConfig;
    FProfiles: TArray<TGlabsProfileInfo>;
    function SelectedProfileIndex: Integer;
  public
    procedure Init(AConfig: TGlabsConfig);
  end;

implementation

{$R *.dfm}

procedure TFormSettings.Init(AConfig: TGlabsConfig);
begin
  FConfig := AConfig;
  EditHost.Text := FConfig.InstanceHost;
  EditClientId.Text := FConfig.ClientId;
  EditClientSecret.Text := FConfig.ClientSecret;
  EditScope.Text := FConfig.Scope;
  EditProfileId.Text := FConfig.ProfileId;
  EditStationId.Text := FConfig.StationId;
end;

function TFormSettings.SelectedProfileIndex: Integer;
begin
  Result := ListBoxProfiles.ItemIndex;
  if (Result < 0) or (Result >= Length(FProfiles)) then
    Result := -1;
end;

procedure TFormSettings.ButtonTestConnectionClick(Sender: TObject);
var
  TempConfig: TGlabsConfig;
  Client: TGlabsApiClient;
  LogProc: TProc<string>;
  I: Integer;
begin
  MemoStatus.Clear;
  ListBoxProfiles.Clear;
  SetLength(FProfiles, 0);

  TempConfig := TGlabsConfig.Create;
  Client := nil;
  try
    TempConfig.InstanceHost := Trim(EditHost.Text);
    TempConfig.ClientId := Trim(EditClientId.Text);
    TempConfig.ClientSecret := EditClientSecret.Text;
    TempConfig.Scope := Trim(EditScope.Text);

    Client := TGlabsApiClient.Create(TempConfig);
    LogProc :=
      procedure(Msg: string)
      begin
        MemoStatus.Lines.Add(Msg);
      end;
    Client.OnLog := LogProc;

    Screen.Cursor := crHourGlass;
    try
      FProfiles := Client.GetProfiles;
    finally
      Screen.Cursor := crDefault;
    end;

    for I := 0 to High(FProfiles) do
      ListBoxProfiles.Items.Add(Format('%s  (profileId=%s, partnerId=%s)',
        [FProfiles[I].Name, FProfiles[I].ProfileId, FProfiles[I].PartnerId]));

    MemoStatus.Lines.Add(Format('Sikeres kapcsolat. %d profil talalhato.', [Length(FProfiles)]));
  except
    on E: Exception do
      MemoStatus.Lines.Add('HIBA: ' + E.ClassName + ': ' + E.Message);
  end;
  Client.Free;
  TempConfig.Free;
end;

procedure TFormSettings.ButtonUseAsProfileIdClick(Sender: TObject);
var
  Idx: Integer;
begin
  Idx := SelectedProfileIndex;
  if Idx < 0 then
  begin
    ShowMessage('Valasszon ki egy profilt a listabol.');
    Exit;
  end;
  EditProfileId.Text := FProfiles[Idx].ProfileId;
end;

procedure TFormSettings.ButtonSaveClick(Sender: TObject);
begin
  FConfig.InstanceHost := Trim(EditHost.Text);
  FConfig.ClientId := Trim(EditClientId.Text);
  FConfig.ClientSecret := EditClientSecret.Text;
  FConfig.Scope := Trim(EditScope.Text);
  FConfig.ProfileId := Trim(EditProfileId.Text);
  FConfig.StationId := Trim(EditStationId.Text);
  FConfig.Save;
  ModalResult := mrOk;
end;

end.
