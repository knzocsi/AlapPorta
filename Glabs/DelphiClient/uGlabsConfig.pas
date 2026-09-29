unit uGlabsConfig;

interface

uses
  System.SysUtils, System.IniFiles, System.IOUtils;

type
  TGlabsConfig = class
  private
    FInstanceHost: string;
    FClientId: string;
    FClientSecret: string;
    FScope: string;
    FProfileId: string;
    FStationId: string;
    function GetIniFileName: string;
  public
    constructor Create;
    procedure Load;
    procedure Save;
    property InstanceHost: string read FInstanceHost write FInstanceHost;
    property ClientId: string read FClientId write FClientId;
    property ClientSecret: string read FClientSecret write FClientSecret;
    property Scope: string read FScope write FScope;
    property ProfileId: string read FProfileId write FProfileId;
    property StationId: string read FStationId write FStationId;
  end;

implementation

const
  SECTION_GLABS = 'Glabs';

function TGlabsConfig.GetIniFileName: string;
begin
  Result := TPath.Combine(TPath.GetDirectoryName(ParamStr(0)), 'config.ini');
end;

constructor TGlabsConfig.Create;
begin
  inherited Create;
  FInstanceHost := 'beta7.glabs.me';
  FScope := 'shipments';
end;

procedure TGlabsConfig.Load;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(GetIniFileName);
  try
    FInstanceHost := Ini.ReadString(SECTION_GLABS, 'InstanceHost', FInstanceHost);
    FClientId := Ini.ReadString(SECTION_GLABS, 'ClientId', '');
    FClientSecret := Ini.ReadString(SECTION_GLABS, 'ClientSecret', '');
    FScope := Ini.ReadString(SECTION_GLABS, 'Scope', FScope);
    FProfileId := Ini.ReadString(SECTION_GLABS, 'ProfileId', '');
    FStationId := Ini.ReadString(SECTION_GLABS, 'StationId', '');
  finally
    Ini.Free;
  end;
end;

procedure TGlabsConfig.Save;
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(GetIniFileName);
  try
    Ini.WriteString(SECTION_GLABS, 'InstanceHost', FInstanceHost);
    Ini.WriteString(SECTION_GLABS, 'ClientId', FClientId);
    Ini.WriteString(SECTION_GLABS, 'ClientSecret', FClientSecret);
    Ini.WriteString(SECTION_GLABS, 'Scope', FScope);
    Ini.WriteString(SECTION_GLABS, 'ProfileId', FProfileId);
    Ini.WriteString(SECTION_GLABS, 'StationId', FStationId);
  finally
    Ini.Free;
  end;
end;

end.
