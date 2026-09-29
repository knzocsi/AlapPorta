unit GlabsBekuldesU;

{
  A fõform forgalom gridjének aktuális sorát küldi be a Glabs (ACPS) rendszerbe
  truckWeightMeasurements-ként. A hozzáférési adatok a cfg GLABS csoportjából
  jönnek (AU: Glabs_Host, Glabs_ClientID, ...).
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.UITypes;

type
  TGlabsBekuldesF = class(TForm)
    Panel1: TPanel;
    lblDatum: TLabel;
    lblMjegy: TLabel;
    lblRendszam: TLabel;
    edtRendszam: TEdit;
    lblTomeg: TLabel;
    edtTomeg: TEdit;
    lblOk: TLabel;
    cbOk: TComboBox;
    lblAllomas: TLabel;
    edtAllomas: TEdit;
    memNaplo: TMemo;
    Panel2: TPanel;
    btnKilepes: TButton;
    btnKuldes: TButton;
    procedure btnKuldesClick(Sender: TObject);
  private
    { Private declarations }
    procedure naplo(Msg: string);
  public
    { Public declarations }
    procedure fo(const rendszam, irany, mjegy, datum, ido: string; tomeg: Integer);
  end;

implementation
  uses AU, UzenetekU, uGlabsConfig, uGlabsApiClient;
{$R *.dfm}

procedure TGlabsBekuldesF.naplo(Msg: string);
begin
  memNaplo.Lines.Add(FormatDateTime('hh:nn:ss', Now) + '  ' + Msg);
end;

procedure TGlabsBekuldesF.fo(const rendszam, irany, mjegy, datum, ido: string; tomeg: Integer);
begin
  lblDatum.Caption:=datum+' '+ido;
  lblMjegy.Caption:=mjegy;
  edtRendszam.Text:=rendszam;
  edtTomeg.Text:=IntToStr(tomeg);
  if SameText(Trim(irany),'BE') then
    cbOk.ItemIndex:=0
  else if SameText(Trim(irany),'KI') then
    cbOk.ItemIndex:=1
  else
    cbOk.ItemIndex:=2;
  edtAllomas.Text:=Glabs_StationID;
  memNaplo.Clear;
  ShowModal;
end;

procedure TGlabsBekuldesF.btnKuldesClick(Sender: TObject);
var
  cfg: TGlabsConfig;
  kliens: TGlabsApiClient;
  profilok: TArray<TGlabsProfileInfo>;
  eredmeny: TGlabsWeightResult;
  rendszam, ok, allomas: string;
  tomeg: Integer;
begin
  rendszam:=Trim(edtRendszam.Text);
  if rendszam='' then
  begin
    MessageDlg(rsGlabsRendszamKell, mtWarning, [mbOK], 0);
    edtRendszam.SetFocus;
    Exit;
  end;
  if not TryStrToInt(Trim(edtTomeg.Text), tomeg) or (tomeg<=0) then
  begin
    MessageDlg(rsGlabsTomegKell, mtWarning, [mbOK], 0);
    edtTomeg.SetFocus;
    Exit;
  end;
  ok:=cbOk.Text;
  allomas:=Trim(edtAllomas.Text);

  btnKuldes.Enabled:=False;
  Screen.Cursor:=crHourGlass;
  cfg:=TGlabsConfig.Create;
  kliens:=TGlabsApiClient.Create(cfg);
  try
    cfg.InstanceHost:=Glabs_Host;
    cfg.ClientId:=Glabs_ClientID;
    cfg.ClientSecret:=Glabs_ClientSecret;
    if Glabs_Scope<>'' then
      cfg.Scope:=Glabs_Scope;
    cfg.ProfileId:=Glabs_ProfileID;
    kliens.OnLog:=naplo;
    try
      if cfg.ProfileId='' then
      begin
        profilok:=kliens.GetProfiles;
        if Length(profilok)=0 then
          raise EGlabsApiError.Create(rsGlabsNincsProfil);
        cfg.ProfileId:=profilok[0].ProfileId;
        naplo('Profile ID: '+cfg.ProfileId+' ('+profilok[0].Name+')');
      end;

      if allomas<>'' then
        eredmeny:=kliens.PostWeightMeasurementByStation(allomas, rendszam, ok, tomeg)
      else
        eredmeny:=kliens.PostWeightMeasurementByPlate(rendszam, ok, tomeg);

      if eredmeny.Success then
      begin
        naplo('measurementId='+eredmeny.MeasurementId);
        MessageDlg(rsGlabsSikeres, mtInformation, [mbOK], 0);
      end
      else
      begin
        naplo(Format('HTTP %d: %s', [eredmeny.StatusCode, eredmeny.ErrorMessage]));
        MessageDlg(Format(rsGlabsSikertelen, [eredmeny.StatusCode]), mtError, [mbOK], 0);
      end;
    except
      on E: Exception do
      begin
        naplo(E.ClassName+': '+E.Message);
        MessageDlg(rsGlabsHiba+#13#10+E.Message, mtError, [mbOK], 0);
      end;
    end;
  finally
    kliens.Free;
    cfg.Free;
    Screen.Cursor:=crDefault;
    btnKuldes.Enabled:=True;
  end;
end;

end.
