unit uGlabsApiClient;

interface

uses
  System.SysUtils, System.Classes, System.JSON, System.Generics.Collections,
  System.NetEncoding, System.Net.HttpClient, System.Net.URLClient,
  uGlabsConfig;

type
  EGlabsApiError = class(Exception);

  TGlabsProfileInfo = record
    ProfileId: string;
    Name: string;
    PartnerId: string;
  end;

  TGlabsWeightResult = record
    Success: Boolean;
    StatusCode: Integer;
    MeasurementId: string;
    ErrorMessage: string;
  end;

  TGlabsApiClient = class
  private
    FConfig: TGlabsConfig;
    FHttp: THTTPClient;
    FAccessToken: string;
    FTokenExpiresAt: TDateTime;
    FOnLog: TProc<string>;
    FLastRequestUrl: string;
    FLastRequestJson: string;
    FLastResponseJson: string;
    procedure Log(const Msg: string);
    procedure EnsureToken;
    function BaseUrl: string;
    function AuthHeader: TNetHeaders;
    function PostWeightMeasurement(const Url: string; Weight: Integer;
      const Cause, PlateNumber, StationId: string): TGlabsWeightResult;
  public
    constructor Create(AConfig: TGlabsConfig);
    destructor Destroy; override;
    property OnLog: TProc<string> read FOnLog write FOnLog;
    property LastRequestUrl: string read FLastRequestUrl;
    property LastRequestJson: string read FLastRequestJson;
    property LastResponseJson: string read FLastResponseJson;
    procedure ResetToken;
    function GetProfiles: TArray<TGlabsProfileInfo>;
    function GetRaw(const PathSuffix: string): string;
    function PostWeightMeasurementByPlate(const PlateNumber, Cause: string;
      Weight: Integer): TGlabsWeightResult;
    function PostWeightMeasurementByStation(const StationId, PlateNumber, Cause: string;
      Weight: Integer): TGlabsWeightResult;
  end;

const
  GLABS_WEIGHT_CAUSES: array[0..2] of string = ('arrival', 'dispatch', 'other');

function IsValidWeightCause(const Cause: string): Boolean;

implementation

function JsonStr(Obj: TJSONObject; const Key: string): string;
begin
  Result := '';
  if Obj = nil then
    Exit;
  if not Obj.TryGetValue<string>(Key, Result) then
    Result := '';
end;

function JsonObj(Obj: TJSONObject; const Key: string): TJSONObject;
begin
  Result := nil;
  if Obj = nil then
    Exit;
  Obj.TryGetValue<TJSONObject>(Key, Result);
end;

function IsValidWeightCause(const Cause: string): Boolean;
var
  C: string;
begin
  Result := False;
  for C in GLABS_WEIGHT_CAUSES do
    if SameText(C, Cause) then
      Exit(True);
end;

{ TGlabsApiClient }

constructor TGlabsApiClient.Create(AConfig: TGlabsConfig);
begin
  inherited Create;
  FConfig := AConfig;
  FHttp := THTTPClient.Create;
  FAccessToken := '';
  FTokenExpiresAt := 0;
end;

destructor TGlabsApiClient.Destroy;
begin
  FHttp.Free;
  inherited Destroy;
end;

procedure TGlabsApiClient.Log(const Msg: string);
begin
  if Assigned(FOnLog) then
    FOnLog(Msg);
end;

procedure TGlabsApiClient.ResetToken;
begin
  FAccessToken := '';
  FTokenExpiresAt := 0;
end;

function TGlabsApiClient.BaseUrl: string;
var
  Host: string;
begin
  Host := Trim(FConfig.InstanceHost);
  while Host.EndsWith('/') do
    Host := Host.Substring(0, Host.Length - 1);
  if Host.StartsWith('http://', True) or Host.StartsWith('https://', True) then
    Result := Host
  else
    Result := 'https://' + Host;
end;

function TGlabsApiClient.AuthHeader: TNetHeaders;
begin
  Result := [TNameValuePair.Create('Authorization', 'Bearer ' + FAccessToken)];
end;

procedure TGlabsApiClient.EnsureToken;
var
  Response: IHTTPResponse;
  Body: string;
  Content: TStringStream;
  Json: TJSONObject;
  ExpiresIn: Integer;
  Headers: TNetHeaders;
begin
  if (FAccessToken <> '') and (Now < FTokenExpiresAt) then
    Exit;

  if FConfig.ClientId = '' then
    raise EGlabsApiError.Create('Nincs beallitva Client ID.');
  if FConfig.ClientSecret = '' then
    raise EGlabsApiError.Create('Nincs beallitva Client Secret.');

  Body := Format('grant_type=client_credentials&client_id=%s&client_secret=%s&scope=%s',
    [TNetEncoding.URL.Encode(FConfig.ClientId),
     TNetEncoding.URL.Encode(FConfig.ClientSecret),
     TNetEncoding.URL.Encode(FConfig.Scope)]);

  Log('POST ' + BaseUrl + '/oauth/token');

  Headers := [TNameValuePair.Create('Content-Type', 'application/x-www-form-urlencoded')];
  Content := TStringStream.Create(Body, TEncoding.UTF8);
  try
    Response := FHttp.Post(BaseUrl + '/oauth/token', Content, nil, Headers);
  finally
    Content.Free;
  end;

  Log(Format('  -> HTTP %d', [Response.StatusCode]));

  if Response.StatusCode <> 200 then
    raise EGlabsApiError.CreateFmt('Token kerdes sikertelen (HTTP %d): %s',
      [Response.StatusCode, Response.ContentAsString(TEncoding.UTF8)]);

  Json := TJSONObject.ParseJSONValue(Response.ContentAsString(TEncoding.UTF8)) as TJSONObject;
  if Json = nil then
    raise EGlabsApiError.Create('Ervenytelen token valasz (nem JSON objektum).');
  try
    if not Json.TryGetValue<string>('access_token', FAccessToken) then
      FAccessToken := '';
    if FAccessToken = '' then
      raise EGlabsApiError.Create('A token valasz nem tartalmaz access_token mezot.');
    if not Json.TryGetValue<Integer>('expires_in', ExpiresIn) then
      ExpiresIn := 3600;
    FTokenExpiresAt := Now + ((ExpiresIn - 30) / SecsPerDay);
    Log('Token megszerezve, ervenyes kb. ' + IntToStr(ExpiresIn) + ' masodpercig.');
  finally
    Json.Free;
  end;
end;

function TGlabsApiClient.GetProfiles: TArray<TGlabsProfileInfo>;
var
  Response: IHTTPResponse;
  Root: TJSONObject;
  DataArr: TJSONArray;
  Item, Attrs, Rel, PartnerRel, PartnerData: TJSONObject;
  Val: TJSONValue;
  List: TList<TGlabsProfileInfo>;
  Info: TGlabsProfileInfo;
  Url: string;
begin
  EnsureToken;

  Url := BaseUrl + '/api/profiles';
  Log('GET ' + Url);
  Response := FHttp.Get(Url, nil, AuthHeader);
  Log(Format('  -> HTTP %d', [Response.StatusCode]));

  if Response.StatusCode <> 200 then
    raise EGlabsApiError.CreateFmt('Profilok lekerdezese sikertelen (HTTP %d): %s',
      [Response.StatusCode, Response.ContentAsString(TEncoding.UTF8)]);

  Root := TJSONObject.ParseJSONValue(Response.ContentAsString(TEncoding.UTF8)) as TJSONObject;
  if Root = nil then
    raise EGlabsApiError.Create('Ervenytelen profil valasz (nem JSON objektum).');
  try
    if not Root.TryGetValue<TJSONArray>('data', DataArr) then
      raise EGlabsApiError.Create('A profil valasz nem tartalmaz "data" tombot.');

    List := TList<TGlabsProfileInfo>.Create;
    try
      for Val in DataArr do
      begin
        Item := Val as TJSONObject;
        Info := Default(TGlabsProfileInfo);
        Info.ProfileId := JsonStr(Item, 'id');
        Attrs := JsonObj(Item, 'attributes');
        Info.Name := JsonStr(Attrs, 'name');
        Rel := JsonObj(Item, 'relationships');
        PartnerRel := JsonObj(Rel, 'partner');
        PartnerData := JsonObj(PartnerRel, 'data');
        Info.PartnerId := JsonStr(PartnerData, 'id');
        List.Add(Info);
      end;
      Result := List.ToArray;
    finally
      List.Free;
    end;
  finally
    Root.Free;
  end;
end;

function TGlabsApiClient.GetRaw(const PathSuffix: string): string;
var
  Response: IHTTPResponse;
  Url: string;
begin
  if FConfig.ProfileId = '' then
    raise EGlabsApiError.Create('Nincs beallitva Profile ID.');

  EnsureToken;

  Url := BaseUrl + '/api/' + FConfig.ProfileId + '/' + PathSuffix;
  Log('GET ' + Url);
  Response := FHttp.Get(Url, nil, AuthHeader);
  Log(Format('  -> HTTP %d', [Response.StatusCode]));
  Result := Response.ContentAsString(TEncoding.UTF8);
  Log('Valasz torzse: ' + Result);
end;

function TGlabsApiClient.PostWeightMeasurement(const Url: string; Weight: Integer;
  const Cause, PlateNumber, StationId: string): TGlabsWeightResult;
var
  Response: IHTTPResponse;
  ReqJson, DataObj, AttrsObj, RelObj, StationRel, StationData: TJSONObject;
  RespRoot, RespData: TJSONObject;
  ReqBody, RespBody: string;
  Content: TStringStream;
  Headers: TNetHeaders;
begin
  Result := Default(TGlabsWeightResult);

  if FConfig.ProfileId = '' then
    raise EGlabsApiError.Create('Nincs beallitva Profile ID.');
  if Weight <= 0 then
    raise EGlabsApiError.Create('A tomegnek pozitiv egesz szamnak kell lennie (kg).');
  if not IsValidWeightCause(Cause) then
    raise EGlabsApiError.CreateFmt('Ervenytelen ok (cause): %s. Megengedett ertekek: %s',
      [Cause, String.Join(', ', GLABS_WEIGHT_CAUSES)]);

  EnsureToken;

  AttrsObj := TJSONObject.Create;
  AttrsObj.AddPair('weight', TJSONNumber.Create(Weight));
  AttrsObj.AddPair('cause', Cause);
  if PlateNumber <> '' then
    AttrsObj.AddPair('plateNumber', PlateNumber);

  DataObj := TJSONObject.Create;
  DataObj.AddPair('type', 'truckWeightMeasurements');
  DataObj.AddPair('attributes', AttrsObj);

  if StationId <> '' then
  begin
    StationData := TJSONObject.Create;
    StationData.AddPair('type', 'shipmentStations');
    StationData.AddPair('id', StationId);

    StationRel := TJSONObject.Create;
    StationRel.AddPair('data', StationData);

    RelObj := TJSONObject.Create;
    RelObj.AddPair('station', StationRel);

    DataObj.AddPair('relationships', RelObj);
  end;

  ReqJson := TJSONObject.Create;
  try
    ReqJson.AddPair('data', DataObj);

    ReqBody := ReqJson.ToJSON;
    Log('Keres torzse: ' + ReqBody);

    Log('POST ' + Url);

    FLastRequestUrl := Url;
    FLastRequestJson := ReqBody;
    FLastResponseJson := '';

    Headers := [
      TNameValuePair.Create('Authorization', 'Bearer ' + FAccessToken),
      TNameValuePair.Create('Content-Type', 'application/vnd.api+json')
    ];

    Content := TStringStream.Create(ReqBody, TEncoding.UTF8);
    try
      Response := FHttp.Post(Url, Content, nil, Headers);
    finally
      Content.Free;
    end;

    RespBody := Response.ContentAsString(TEncoding.UTF8);
    FLastResponseJson := RespBody;
    Log(Format('  -> HTTP %d', [Response.StatusCode]));
    Log('Valasz torzse: ' + RespBody);

    Result.StatusCode := Response.StatusCode;

    if Response.StatusCode in [200, 201] then
    begin
      Result.Success := True;
      RespRoot := TJSONObject.ParseJSONValue(RespBody) as TJSONObject;
      if RespRoot <> nil then
        try
          RespData := JsonObj(RespRoot, 'data');
          Result.MeasurementId := JsonStr(RespData, 'id');
        finally
          RespRoot.Free;
        end;
    end
    else
    begin
      Result.Success := False;
      Result.ErrorMessage := RespBody;
    end;
  finally
    ReqJson.Free;
  end;
end;

function TGlabsApiClient.PostWeightMeasurementByPlate(const PlateNumber, Cause: string;
  Weight: Integer): TGlabsWeightResult;
begin
  Result := PostWeightMeasurement(BaseUrl + '/api/' + FConfig.ProfileId + '/weight-measurements',
    Weight, Cause, PlateNumber, '');
end;

function TGlabsApiClient.PostWeightMeasurementByStation(const StationId, PlateNumber, Cause: string;
  Weight: Integer): TGlabsWeightResult;
begin
  if StationId = '' then
    raise EGlabsApiError.Create('Nincs megadva az Allomas ID.');
  Result := PostWeightMeasurement(
    BaseUrl + '/api/' + FConfig.ProfileId + '/stations/' + StationId + '/weight-measurements',
    Weight, Cause, PlateNumber, StationId);
end;

end.
