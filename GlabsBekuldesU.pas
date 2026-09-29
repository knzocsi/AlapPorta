unit GlabsBekuldesU;

{
  A fõform forgalom gridjének aktuális sorát küldi be a Glabs (ACPS) rendszerbe
  truckWeightMeasurements-ként. A hozzáférési adatok a cfg GLABS csoportjából
  jönnek (AU: Glabs_Host, Glabs_ClientID, ...).
  Sikeres küldés után a forgalom sorába visszaírja az irányt, a küldés idejét
  (glabs_kuldve) és a Glabs mérés azonosítóját (glabs_id).
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
    lblKuldve: TLabel;
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
    btnNaplo: TButton;
    btnKilepes: TButton;
    btnKuldes: TButton;
    procedure btnKuldesClick(Sender: TObject);
    procedure btnNaploClick(Sender: TObject);
  private
    { Private declarations }
    forgalom_id: Integer;
    procedure naplo(Msg: string);
    procedure naplo_mutat(lathato: Boolean);
    procedure forgalom_frissit(const irany, measurement_id: string);
  public
    { Public declarations }
    procedure fo(id: Integer; const rendszam, irany, mjegy, datum, ido, kuldve: string; tomeg: Integer);
  end;

implementation
  uses AU, UzenetekU, uGlabsConfig, uGlabsApiClient, FireDAC.Comp.Client, FireDAC.Stan.Param;
{$R *.dfm}

const
  // a cbOk sorrendjében (Be, Ki, Egyéb): a forgalom.Irany értéke
  ok_irany: array[0..2] of string = ('BE', 'KI', '-');

procedure TGlabsBekuldesF.naplo(Msg: string);
begin
  memNaplo.Lines.Add(FormatDateTime('hh:nn:ss', Now) + '  ' + Msg);
end;

procedure TGlabsBekuldesF.naplo_mutat(lathato: Boolean);
begin
  memNaplo.Visible:=lathato;
  if lathato then
    ClientHeight:=Panel1.Height+Panel2.Height+220
  else
    ClientHeight:=Panel1.Height+Panel2.Height;
end;

procedure TGlabsBekuldesF.btnNaploClick(Sender: TObject);
begin
  naplo_mutat(not memNaplo.Visible);
end;

procedure TGlabsBekuldesF.fo(id: Integer; const rendszam, irany, mjegy, datum, ido, kuldve: string; tomeg: Integer);
begin
  forgalom_id:=id;
  lblDatum.Caption:=datum+' '+ido;
  lblMjegy.Caption:=mjegy;
  if kuldve<>'' then
    lblKuldve.Caption:=Format(rsGlabsMarBekuldve, [kuldve])
  else
    lblKuldve.Caption:='';
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
  naplo_mutat(False);
  ShowModal;
end;

procedure TGlabsBekuldesF.forgalom_frissit(const irany, measurement_id: string);
var q: TFDQuery;
begin
  q:=TFDQuery.Create(nil);
  try
    q.Connection:=af.Kapcs;
    q.SQL.Text:='UPDATE forgalom SET Irany=:irany, glabs_kuldve=NOW(), glabs_id=:glabs_id WHERE ID=:id';
    q.ParamByName('irany').AsString:=irany;
    q.ParamByName('glabs_id').AsString:=measurement_id;
    q.ParamByName('id').AsInteger:=forgalom_id;
    q.ExecSQL;
  finally
    q.Free;
  end;
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
  // a combo magyar szövegû, a Glabs angol kódot vár (arrival, dispatch, other)
  ok:=GLABS_WEIGHT_CAUSES[cbOk.ItemIndex];
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
        forgalom_frissit(ok_irany[cbOk.ItemIndex], eredmeny.MeasurementId);
        MessageDlg(rsGlabsSikeres, mtInformation, [mbOK], 0);
        ModalResult:=mrOk;
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
