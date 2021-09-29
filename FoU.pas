unit FoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.ComCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, System.Win.ScktComp, CPortCtl, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdModBusClient, vcl.imaging.jpeg,
  Vcl.Imaging.pngimage, System.inifiles,System.Contnrs,Winapi.ShellAPI,
  ModbusTypes, IdRawBase, IdRawClient, IdIcmpClient;

type
  TFoF = class(TForm)
    MainMenu1: TMainMenu;
    Listk1: TMenuItem;
    Forgalom1: TMenuItem;
    Kilps1: TMenuItem;
    Belltsok1: TMenuItem;
    StatusBar1: TStatusBar;
    rzsadatok1: TMenuItem;
    Anyagok1: TMenuItem;
    Partnerek1: TMenuItem;
    Rendszmok1: TMenuItem;
    Prostottmrsek1: TMenuItem;
    Kpek1: TMenuItem;
    Keress1: TMenuItem;
    Rendszam_Lampa_Timer: TTimer;
    pnlBaloldal: TPanel;
    DBGrid1: TDBGrid;
    pnlKiskep: TPanel;
    ipcamPanel: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    piKezdoDatum: TDateTimePicker;
    piBefejezoDatum: TDateTimePicker;
    ClientSocket: TClientSocket;
    ServerSocket: TServerSocket;
    Felhasznlk1: TMenuItem;
    Felhasznlkkarbantartsa1: TMenuItem;
    Sajtjelszmdostsa1: TMenuItem;
    Felhasznlvlts1: TMenuItem;
    Sorosportbellts1: TMenuItem;
    Tomeg_Timer: TTimer;
    pnlJobboldal: TPanel;
    pnlJobbAlso: TPanel;
    pnlAlsokep: TPanel;
    pnlFelsokep: TPanel;
    imgFelsokep: TImage;
    imgAlsokep: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lblRendszam_elso: TLabel;
    lblRendszam_hatso: TLabel;
    pnlJobbFelso: TPanel;
    ledLampa: TComLed;
    lbl3: TLabel;
    Button1: TButton;
    Mrlegjegyeklistja1: TMenuItem;
    Mrlegkezelk1: TMenuItem;
    btnMeresmodositas: TButton;
    mctPLC: TIdModBusClient;
    campagc: TPageControl;
    cam0: TTabSheet;
    cam1: TTabSheet;
    Kszlet1: TMenuItem;
    Sorompnyitinfrahiba1: TMenuItem;
    kapcsfriss: TTimer;
    lblIrany: TLabel;
    KISorompnyitinfrahiba1: TMenuItem;
    IdIcmpClient1: TIdIcmpClient;
    btnElso: TButton;
    pusok1: TMenuItem;
    rolk1: TMenuItem;
    Raktrkziszlltlevl1: TMenuItem;
    j1: TMenuItem;
    Lista1: TMenuItem;
    btnMeres: TButton;
    mcIOmodul: TIdModBusClient;
    alapbe_m: TMenuItem;
    tulaj_m: TMenuItem;
    Button2: TButton;
    eszt1: TMenuItem;
    function GetVLCLibPath: string;
    function LoadVLCLibrary(APath: string): integer;
    function GetAProcAddress(handle: integer; var addr: Pointer; procName: string; failedList: TStringList): integer;
    function LoadVLCFunctions(vlcHandle: integer; failedList: TStringList): Boolean;
    procedure Kilps1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Partnerek1Click(Sender: TObject);
    procedure Anyagok1Click(Sender: TObject);
    procedure Rendszmok1Click(Sender: TObject);
    procedure Forgalom1Click(Sender: TObject);
    procedure Prostottmrsek1Click(Sender: TObject);
    procedure Keress1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Rendszam_Lampa_TimerTimer(Sender: TObject);
    procedure szures;
    procedure piKezdoDatumChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure kepatmeretez;
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ServerSocketClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure Felhasznlkkarbantartsa1Click(Sender: TObject);
    procedure Sajtjelszmdostsa1Click(Sender: TObject);
    procedure Felhasznlvlts1Click(Sender: TObject);
    procedure Sorosportbellts1Click(Sender: TObject);
    procedure Tomeg_TimerTimer(Sender: TObject);
    procedure Lampakapcs(Melyik, Mire: integer);
    procedure pnlFelsokepResize(Sender: TObject);
    procedure kepbetolt;
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Mrlegjegyeklistja1Click(Sender: TObject);
    procedure Mrlegkezelk1Click(Sender: TObject);
    procedure btnMeresmodositasClick(Sender: TObject);
    function PLC_Ir(cim, ertek: Integer): boolean;
    function PLC_Olvas(cim: integer): integer;
    function IO_Ir(cim:Integer; ertek: Boolean): boolean;
    procedure FormCreate(Sender: TObject);
    procedure play(nagy:Boolean);
    procedure stop(nagy:Boolean);
    function snapshot(p: string): string;
    procedure pnlJobbAlsoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Kszlet1Click(Sender: TObject);
    procedure Sorompnyitinfrahiba1Click(Sender: TObject);
    procedure kapcsfrissTimer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure KISorompnyitinfrahiba1Click(Sender: TObject);
    procedure mctPLCResponseError(const FunctionCode, ErrorCode: Byte;
      const ResponseBuffer: TModBusResponseBuffer);
    function Ping_teszt(tipus:string):boolean;
    procedure ledLampaDblClick(Sender: TObject);
    procedure btnElsoClick(Sender: TObject);
    procedure pusok1Click(Sender: TObject);
    procedure rolk1Click(Sender: TObject);
    procedure j1Click(Sender: TObject);
    procedure Lista1Click(Sender: TObject);
    procedure btnMeresClick(Sender: TObject);
    procedure mcIOmodulResponseError(const FunctionCode, ErrorCode: Byte;
      const ResponseBuffer: TModBusResponseBuffer);
    procedure tulaj_mClick(Sender: TObject);
    procedure eszt1Click(Sender: TObject);
  private
    { Private declarations }
    procedure socketconnect;

  public
    { Public declarations }
    procedure Play_Panel_letrehozasa(F:Tform; szulo, neve: string);
  end;

type
  plibvlc_instance_t = type Pointer;

  plibvlc_media_player_t = type Pointer;

  plibvlc_media_t = type Pointer;

var
  libvlc_media_new_path: function(p_instance: Plibvlc_instance_t; path: PAnsiChar): Plibvlc_media_t; cdecl;
  libvlc_media_new_location: function(p_instance: plibvlc_instance_t; psz_mrl: PAnsiChar): Plibvlc_media_t; cdecl;
  libvlc_media_player_new_from_media: function(p_media: Plibvlc_media_t): Plibvlc_media_player_t; cdecl;
  libvlc_media_player_set_hwnd: procedure(p_media_player: Plibvlc_media_player_t; drawable: Pointer); cdecl;
  libvlc_media_player_play: procedure(p_media_player: Plibvlc_media_player_t); cdecl;
  libvlc_media_player_stop: procedure(p_media_player: Plibvlc_media_player_t); cdecl;
  libvlc_media_player_release: procedure(p_media_player: Plibvlc_media_player_t); cdecl;
  libvlc_media_player_is_playing: function(p_media_player: Plibvlc_media_player_t): Integer; cdecl;
  libvlc_media_release: procedure(p_media: Plibvlc_media_t); cdecl;
  libvlc_new: function(argc: Integer; argv: PAnsiChar): Plibvlc_instance_t; cdecl;
  libvlc_release: procedure(p_instance: Plibvlc_instance_t); cdecl;
  libvlc_video_take_snapshot: procedure(p_media_player: Plibvlc_media_player_t; num: Integer; Filepath: PansiChar; iw, ih: Integer); cdecl;

var
  FoF: TFoF;
  socketrendszam, socketkep: string;
  kartyavan,van_plugin: boolean;
 // RtspURLs: array [0..3] of string;
  Panelek: TObjectList;
  P: TPanel;
  vlcInstance0, vlcInstance1, vlcInstance2, vlcInstance3: plibvlc_instance_t;
  vlcMedia0, vlcMedia1, vlcMedia2, vlcMedia3: plibvlc_media_t;
  vlcMediaPlayer0, vlcMediaPlayer1, vlcMediaPlayer2, vlcMediaPlayer3: plibvlc_media_player_t;
  teszt, van_cam: Boolean;
    // A VLC plugin maPPÁja iskell a dll/ek mellett!!!!
  vlcLib: integer;

implementation

uses
  au, PartnerekU, TermekekU, RendszamokU, ForgalomU, ParositottU, KepekU, BelepU,
  FelhaszU, kodu, portU, mjegyU, MjegyListaU, MerlegkezelokU, KeszletU,nagykamU,
  tipusokU, tarolokU,Rak_szallU, rak_szall_listU,MeresU, Tulajok,Ping2U, tesztU;


function SetCurrentDevice(CardAddress: integer): integer; stdcall; external 'K8055d.dll';

function OpenDevice(CardAddress: integer): integer; stdcall; external 'K8055d.dll';

function SearchDevices: integer; stdcall; external 'K8055d.dll';

function Version: integer; stdcall; external 'K8055d.dll';

procedure CloseDevice; stdcall; external 'K8055d.dll';

function ReadAnalogChannel(Channel: integer): integer; stdcall; external 'K8055d.dll';

procedure ReadAllAnalog(var Data1, Data2: integer); stdcall; external 'K8055d.dll';

procedure OutputAnalogChannel(Channel: integer; Data: integer); stdcall; external 'K8055d.dll';

procedure OutputAllAnalog(Data1: integer; Data2: integer); stdcall; external 'K8055d.dll';

procedure ClearAnalogChannel(Channel: integer); stdcall; external 'K8055d.dll';

procedure ClearAllAnalog; stdcall; external 'K8055d.dll';

procedure SetAnalogChannel(Channel: integer); stdcall; external 'K8055d.dll';

procedure SetAllAnalog; stdcall; external 'K8055d.dll';

procedure WriteAllDigital(Data: integer); stdcall; external 'K8055d.dll';

procedure ClearDigitalChannel(Channel: integer); stdcall; external 'K8055d.dll';

procedure ClearAllDigital; stdcall; external 'K8055d.dll';

procedure SetDigitalChannel(Channel: integer); stdcall; external 'K8055d.dll';

procedure SetAllDigital; stdcall; external 'K8055d.dll';

function ReadDigitalChannel(Channel: integer): Boolean; stdcall; external 'K8055d.dll';

function ReadAllDigital: integer; stdcall; external 'K8055d.dll';

function ReadCounter(CounterNr: integer): integer; stdcall; external 'K8055d.dll';

procedure ResetCounter(CounterNr: integer); stdcall; external 'K8055d.dll';

procedure SetCounterDebounceTime(CounterNr, DebounceTime: integer); stdcall; external 'K8055d.dll';


{$R *.dfm}

procedure TFoF.Anyagok1Click(Sender: TObject);
begin
  TermekekF.ShowModal;
end;

procedure TFoF.Button1Click(Sender: TObject);
begin
  if not aF.van_joga('j4') then   exit;
  mjegyF.masol(piKezdoDatum.Date, piBefejezoDatum.Date, False);
  mjegyF.ShowModal;
end;

procedure TFoF.Button2Click(Sender: TObject);
var i:Integer;
begin
{nagykamera:=True;
for i := 0 to 1 do Play_panel_letrehozasa('cam' + i.ToString, 'Cam_kepe' + i.ToString); }
 try
   try
     FoF.stop(false);
    finally
     Fof.play(true);
    end;
 finally
  nagykamF.showmodal;
 end;
end;

procedure TFoF.btnMeresClick(Sender: TObject);
begin
  if not aF.van_joga('j6') then exit;
  Rendszam_Lampa_Timer.Enabled := false;
  meresF.rendszam1:=lblRendszam_elso.Caption ;
  meresF.rendszam2:=lblRendszam_Hatso.Caption ;
  meresF.ShowModal;
  if not meresF.mentes then exit;


  with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('INSERT INTO forgalom ');
      SQL.Add('(Datum,Ido,Rendszam,Rendszam2,Irany,Kod,Szallitolev,Tomeg,Kepnev1,Kepnev2,Parositott,Nem_kell,kezi)');
      SQL.Add(' VALUES(:Datum,:Ido,:Rendszam,:Rendszam2,:Irany,:Kod,:Szallitolev,:Tomeg,:Kepnev1,:Kepnev2,:Parositott,:Nem_Kell,:kezi) ');
      ParamByName('Datum').AsDate:=Date;
      ParamByName('Ido').AsTime:=Time;
      ParamByName('Rendszam').AsString:=meresF.rendszam1;
      ParamByName('Rendszam2').AsString:=meresF.rendszam2;

      ParamByName('Irany').AsString:='-';
      ParamByName('Kod').AsString:='0';
      ParamByName('Szallitolev').AsString:='0';
      ParamByName('Tomeg').AsInteger := meresF.tomeg;
      ParamByName('Kepnev1').AsString:='';
      ParamByName('Kepnev2').AsString:='';
      ParamByName('Parositott').AsInteger:=0;
      ParamByName('Nem_Kell').AsInteger:=0;
      ParamByName('kezi').AsBoolean:=MeresF.chkkezi.Checked;
      //showmessage(SQL.Text);
    ExecSQL;
    Close;
  end;
  szures;
  //StatusBar1.panels[4].text:='Tömeg: '+mertertek+' kg';

  Rendszam_Lampa_Timer.Enabled := true;
end;

procedure TFoF.btnMeresmodositasClick(Sender: TObject);

begin
  if not aF.van_joga('j6') then exit;
  if aF.ForgalomQ.FieldByName('mjegy').asString<>'' then
  begin
    ShowMessage('Ebbõl a mérésbõl készült már mérlegjegy!');
    exit;
  end;


  Rendszam_Lampa_Timer.Enabled := false;
  meresF.rendszam1:=lblRendszam_elso.Caption ;
  meresF.rendszam2:=lblRendszam_Hatso.Caption ;
  meresF.ShowModal;
  if not meresF.mentes then exit;


  with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE forgalom SET tomeg=:tomeg,rendszam=:Rendszam,rendszam2=:Rendszam2 WHERE id=' + aF.ForgalomQ.FieldByName('id').asString);
      {SQL.Add('(Datum,Ido,Rendszam,Rendszam2,Irany,Kod,Szallitolev,Tomeg,Kepnev1,Kepnev2,Parositott,Nem_kell)');
      SQL.Add(' VALUES(:Datum,:Ido,:Rendszam,:Rendszam2,:Irany,:Kod,:Szallitolev,:Tomeg,:Kepnev1,:Kepnev2,:Parositott,:Nem_Kell) ');
      ParamByName('Datum').AsDate:=Date;
      ParamByName('Ido').AsTime:=Time; }
      ParamByName('Rendszam').AsString:=meresF.rendszam1;
      ParamByName('Rendszam2').AsString:=meresF.rendszam2;
      {
      ParamByName('Irany').AsString:='-';
      ParamByName('Kod').AsString:='0';
      ParamByName('Szallitolev').AsString:='0'; }
      ParamByName('Tomeg').AsInteger := meresF.tomeg;
     { ParamByName('Kepnev1').AsString:=kepnev1;
      ParamByName('Kepnev2').AsString:=kepnev2;
      ParamByName('Parositott').AsInteger:=0;
      ParamByName('Nem_Kell').AsInteger:=0;}
      //showmessage(SQL.Text);
    ExecSQL;
    Close;
  end;
  szures;
  //StatusBar1.panels[4].text:='Tömeg: '+mertertek+' kg';

  Rendszam_Lampa_Timer.Enabled := true;
end;

procedure TFoF.btnElsoClick(Sender: TObject);
begin
  if IOmodul_van then
  begin
    //PLC_Ir(Merleg_Nullaz_Cim, 1);
    if Elso_Gomb_Tipus='IO' then
    begin
      IO_Ir(IOmodul_regiszter_iras1,True);
      if Elso_Gomb_Varakozas<>0 then
      begin
        Sleep(Elso_Gomb_Varakozas);
        IO_Ir(IOmodul_regiszter_iras1,False);
      end;
    end;

  end;
end;

procedure TFoF.ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  StatusBar1.Panels[1].Text := 'Csatlakozva: ' + Socket.RemoteHost;
end;

procedure TFoF.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  StatusBar1.Panels[1].Text := 'Kliens hiba:' + inttostr(ErrorCode);
  ErrorCode := 0;
end;

procedure TFoF.DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  kepbetolt;
end;

procedure TFoF.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  kepbetolt;
end;

procedure TFoF.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  kepbetolt;
end;

procedure TFoF.eszt1Click(Sender: TObject);
begin
tesztF.showmodal;
end;

procedure TFoF.Felhasznlkkarbantartsa1Click(Sender: TObject);
begin
  if not aF.van_joga('j2') then
    exit;
  FelhaszF.ShowModal
end;

procedure TFoF.Felhasznlvlts1Click(Sender: TObject);
var h:Integer;
begin
  try
    BelepF.ShowModal;
  finally
    StatusBar1.panels[2].text := 'Bejelentkezve: ' + felhnev;
    alapbe_m.Enabled:=felhnev='Programozó';
    with MainMenu1 do
    for h := 0 to Items.Count-1 do
    if items[h].Tag=0 then items[h].Enabled:=f_ide<>0;
  end
end;

procedure TFoF.Forgalom1Click(Sender: TObject);
begin
  ForgalomF.Showmodal;
end;

procedure TFoF.FormActivate(Sender: TObject);
var
  CardAddr, h,g: integer;
begin

  nullszintvolt := true;
  rendszamvolt := false;
  nyugalmiszamlalo := 0;
  meresirany:='-';
  elozotomeg := -1;
  onActivate := nil;
  lblRendszam_elso.Caption := '';
  lblRendszam_hatso.Caption := '';
  btnElso.Visible:= Elso_Gomb_Szoveg<>'' ;
  btnElso.Caption:=Elso_Gomb_Szoveg;
  if not automata_kezelo then
   begin
    if TryStrToInt(ParamStr(1),g) then
    begin
      if aF.FelhaszQ.Locate('id',g,[])then
       begin
         f_ide:=aF.FelhaszQ.FieldByName('id').AsInteger;
         felhnev:=aF.FelhaszQ.FieldByName('nev').AsString;
       end;
    end
    else  belepF.ShowModal;
   end
   else
   begin
     f_ide:=0;
     felhnev:='Automata';
   end;
  with MainMenu1 do
  for h := 0 to Items.Count-1 do
  if items[h].Tag=0 then items[h].Enabled:=f_ide<>0;
  aF.jogok_beolvasasa;
  alapbe_m.Enabled:=felhnev='Programozó';
  if rendszamleker then  socketconnect;
  piKezdoDatum.Date := date;
  piBefejezoDatum.Date := date;
  StatusBar1.panels[0].text := verzio;
  StatusBar1.panels[2].text := 'Bejelentkezve: ' + felhnev;
  WindowState:=wsMaximized;
  kepatmeretez;
 // vlc_betolt;
 // showmessage(teszt.ToString);
  szures;
  //teszt:=True;

  try
    if (not nagykamera)and (lejatszas) then play(False);
    application.processmessages;
  except
    Showmessage('Kamerakép betöltése sikertelen!');
  // Exit
  end;
 try
  if UpperCase(ParamStr(1)) <> '/D' then
  begin
    if vezerles_tipus = 'USB' then
    begin
      CardAddr := 0; //3-(integer(sk5.Checked) + integer(sk6.Checked) * 2);
     // h := OpenDevice(CardAddr);
      case h of
        0..3:
          begin
            StatusBar1.panels[3].text := 'Kártya ' + inttostr(h) + ' csatlakozva';
            kartyavan := true;
          end;
        -1:
          begin
            StatusBar1.panels[3].text := 'Kártya ' + inttostr(CardAddr) + ' nem található';
            ;
          end;
      end;
    end
    else if vezerles_tipus = 'PLC' then
    begin
      if sorompo_vezerles then
      begin
        PLC_Ir(Sorompo_Infra_Hiba_cim_BE, sorompo_infra_hibas_BE);
        PLC_Ir(Sorompo_Nyitas_Volt_Cim_BE, 0);
        PLC_Ir(Sorompo_Infra_Hiba_cim_KI, sorompo_infra_hibas_KI);
        PLC_Ir(Sorompo_Nyitas_Volt_Cim_KI, 0);
        //Ki kell nullázni, mert ha bentragad nem nyílik a sorompó
        PLC_Ir(Sorompo_Nyit_Cim_BE, 0);
        PLC_Ir(Sorompo_Nyit_Cim_KI, 0);
      end;
    end;
  if Elso_lampa <> 0 then
    Lampakapcs(Elso_lampa, Lampa_Zold);
  if Hatso_lampa <> 0 then
    Lampakapcs(Hatso_lampa, Lampa_Zold);
  if UpperCase(ParamStr(1)) <> '/D' then PortF.portopen;
  end;
  lbl1.Visible:=rendszamleker;
  lbl2.Visible:=rendszamleker;
  lbl3.Visible:=sorompo_vezerles;
  ledLampa.Visible:=sorompo_vezerles;

  Tomeg_Timer.Enabled := true;
  Rendszam_Lampa_Timer.Enabled := True;
 finally
   button2.visible:=nagykamera;

   if (nagykamera)and(lejatszas) then
   begin
    try
       try
         FoF.stop(false);
        finally
         Fof.play(true);
        end;
     finally
      nagykamF.showmodal;
     end;
   end;
 end;

end;

procedure TFoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  programvege:=true;
  if UpperCase(ParamStr(1)) <> '/D' then
    PortF.portclose;
end;

procedure TFoF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not van_plugin then CanClose:=True
  else
  begin
   if lejatszas then
    begin
     stop(False);
     CanClose := FreeLibrary(vlclib);
    end
   else CanClose:=true;
  end;
end;

procedure TFoF.FormCreate(Sender: TObject);
var
  i: Integer;
  sL: TStringList;
begin
 //nagykamera:=True;
 // teszt :=  paramStr(1) = '/D'; //demo
  //showmessage(ExtractFileDir(ExtractFilePath(application.exename))+'\plugins');
  van_plugin:=DirectoryExists(ExtractFileDir(ExtractFilePath(application.exename))+'\plugins');
  if not lejatszas then exit;
  if van_plugin then
   begin
     for i := 0 to 1 do Play_panel_letrehozasa(FoF,'cam' + i.ToString, 'Cam_kepe' + i.ToString);

      vlclib := LoadVLCLibrary(GetVLCLibPath());
      if vlclib = 0 then
      begin
        Showmessage('Load vlc library failed');
        Exit;
      end;
        // sL will contains list of functions fail to load
      sL := TStringList.Create;
      if not LoadVLCFunctions(vlclib, sL) then
      begin
        Showmessage('Some functions failed to load : ' + #13#10 + sL.Text);
        FreeLibrary(vlclib);
        sL.Free;
        Exit;
      end;
      sL.Free;
   end
  else ShowMessage('A plugin mappa hiányzik az IP kamerához!');
end;

procedure TFoF.FormResize(Sender: TObject);
begin
  kepatmeretez;
end;

function TFoF.GetAProcAddress(handle: integer; var addr: Pointer; procName: string; failedList: TStringList): integer;
begin
  addr := GetProcAddress(handle, PWideChar(procName));
  if Assigned(addr) then
    Result := 0
  else
  begin
    if Assigned(failedList) then
      failedList.Add(procName);
    Result := -1;
  end;
end;

function TFoF.GetVLCLibPath: string;
var
  Handle: HKEY;
  RegType: Integer;
  DataSize: Cardinal;
  Key: PWideChar;
begin
  Result := '';
  Result := ExtractFileDir(ExtractFilePath(application.exename)); //'H:\Delphi\ipcam\Win32\Debug';
 { Key := 'Software\VideoLAN\VLC';
  if RegOpenKeyEx(HKEY_LOCAL_MACHINE, Key, 0, KEY_READ, Handle) = ERROR_SUCCESS then
  begin
    if RegQueryValueEx(Handle, 'InstallDir', nil, @RegType, nil, @DataSize) = ERROR_SUCCESS then
    begin
      SetLength(Result, DataSize);
      RegQueryValueEx(Handle, 'InstallDir', nil, @RegType, PByte(@Result[1]), @DataSize);
      Result[DataSize] := '\';
    end
    else Showmessage('Error on reading registry');
    RegCloseKey(Handle); }
 // showmessage(result);
  Result := string(PChar(Result));
//  end;
end;

function TFoF.IO_Ir(cim:integer; ertek: Boolean): boolean;
begin
  if not IOmodul_van then exit;

  mcIOmodul.Host := IOmodul_IP;

  begin
    if mcIOmodul.WriteCoil(cim , ertek) then     //A címhez hozzá kell adni egyet, mert így olvassa ki a helyes regisztert
    begin
      Result := True;
      StatusBar1.panels[3].text := 'Írt cím:' + Inttostr(cim) + ' Érték:'+BoolToStr(ertek);
    end
    else
    begin
      Result := False;
      StatusBar1.panels[3].text := 'IO írási hiba!'
    end;
  end
  {
  else
    begin
      StatusBar1.panels[3].text := 'IO kapcsolati hiba!';
    end;
   }
end;

procedure TFoF.j1Click(Sender: TObject);
begin
 Rak_szallF.indit
end;

procedure TFoF.kapcsfrissTimer(Sender: TObject);
begin
szures;
if formatDateTime('hh',now)='05' then
  begin
   ShellExecute(Handle, nil, PChar(Application.ExeName), PChar(f_ide.ToString), nil, SW_SHOWNORMAL);
   af.restart_log;
   Application.Terminate;
  end;
// or, if this is the main form, simply Close;
end;

procedure TFoF.kepatmeretez;
begin
  // a kamera képei 1920*1080 méretûek
  imgFelsokep.Height := pnlFelsokep.Height;
  imgFelsokep.Width := Round(pnlFelsokep.Height * 1920 / 1080);
  imgAlsokep.Height := pnlAlsokep.Height;
  imgAlsokep.Width := Round(imgAlsokep.Height * 1920 / 1080);

  (*
  imgKep.Width:=pnlNagykep.Width;
  imgKep.Height:=Round(pnlNagykep.Width*1080/1920);
  if imgKep.Height>pnlNagykep.Height{-pnlNavigator.Height} then
  begin
    imgKep.Height:=pnlNagykep.Height{-pnlNavigator.Height} ;
    imgKep.Width:=Round((pnlNagykep.Height{-pnlNavigator.Height})*1920/1080);
  end;
  *)
  //ShowMessage(IntToStr(imgKep.Height));

end;

procedure TFoF.kepbetolt;
begin
  if FileExists(aF.ForgalomQ.FieldByName('Kepnev1').AsString) then
    imgFelsokep.Picture.LoadFromFile(aF.ForgalomQ.FieldByName('Kepnev1').AsString);
  if FileExists(aF.ForgalomQ.FieldByName('Kepnev2').AsString) then
    imgAlsokep.Picture.LoadFromFile(aF.ForgalomQ.FieldByName('Kepnev2').AsString);
  kepatmeretez;
end;

procedure TFoF.Keress1Click(Sender: TObject);
begin
  KepekF.showmodal;
end;

procedure TFoF.Kilps1Click(Sender: TObject);
begin

  close;
end;

procedure TFoF.KISorompnyitinfrahiba1Click(Sender: TObject);
var inif:Tinifile;
begin
   if KISorompnyitinfrahiba1.Checked then
  begin
    KISorompnyitinfrahiba1.Checked:=False;
    sorompo_infra_hibas_KI:=0;
  end
  else
  begin
    Sorompnyitinfrahiba1.Checked:=True;
    sorompo_infra_hibas_KI:=1;
  end;
  inif:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
  inif.WriteInteger('PLC_USB','Sorompo_infra_hibas_BE',sorompo_infra_hibas_KI);
  inif.UpdateFile;
  inif.Free;
  if vezerles_tipus = 'PLC'  then
  begin
      if sorompo_vezerles then
      begin
        PLC_Ir(Sorompo_Infra_Hiba_cim_KI, sorompo_infra_hibas_KI);
        if KISorompnyitinfrahiba1.Checked then
        begin
          PLC_Ir(Sorompo_Nyitas_Volt_Cim_KI, 0);
          meresirany:='-';
        end;
      end;
  end;
end;

procedure TFoF.Kszlet1Click(Sender: TObject);
begin
  keszletF.showmodal
end;

procedure TFoF.Partnerek1Click(Sender: TObject);
begin
  PartnerekF.showmodal;
end;

procedure TFoF.piKezdoDatumChange(Sender: TObject);
begin
  szures;
end;

procedure TFoF.play(nagy:Boolean);
var
  i: Integer;
begin
 if not lejatszas then Exit;
  // create new vlc instance
  if not van_plugin then  Exit;//ha nincs plugin kilép
 // ShowMessage(Panelek.Count.ToString);
  case panelek.count of
    1:
      begin
        try
          if not nagy then
           begin
            try
              stop(nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[0] <> '' then
                vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
            end;
           end;

           //showmessage('cam 0 lejatszas:'+rtspUrls[0]);
        except
          // showmessage('cam 0 lejatszas hiba:'+rtspUrls[0]);          //
        end;
      end;
    2:
      begin
        try //cam0
          // showmessage(rtspURLS[0]);
          // showmessage(rtspURLS[1]);
         if not nagy then
          begin
            try
              stop(nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
               //cam1
              vlcInstance1 := libvlc_new(0, nil);
              if teszt then
                vlcMedia1 := libvlc_media_new_path(vlcInstance1, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia1 := libvlc_media_new_location(vlcInstance1, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer1 := libvlc_media_player_new_from_media(vlcMedia1);
              libvlc_media_release(vlcMedia1);
              libvlc_media_player_set_hwnd(vlcMediaPlayer1, Pointer((panelek[1] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
            end;
          end;
         //else ;
        except
         // showmessage('cam 0 lejatszas hiba:'+rtspUrls[0]);
        end;

      end;
      //Nagy kamera lejatszas
   3: begin
         try
         if not nagy then
           begin
            try
              stop( nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
               //cam1
              vlcInstance1 := libvlc_new(0, nil);
              if teszt then
                vlcMedia1 := libvlc_media_new_path(vlcInstance1, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia1 := libvlc_media_new_location(vlcInstance1, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer1 := libvlc_media_player_new_from_media(vlcMedia1);
              libvlc_media_release(vlcMedia1);
              libvlc_media_player_set_hwnd(vlcMediaPlayer1, Pointer((panelek[1] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
            end;
           end;

         //cam0  nagykam
          if nagy then
           begin
            try
             stop(not nagy);
            finally
             vlcInstance2 := libvlc_new(0, nil);
             if teszt then vlcMedia2 := libvlc_media_new_path(vlcInstance2,PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
             else
             if rtspURLs[0]<>'' then vlcMedia2 := libvlc_media_new_location(vlcInstance2,PAnsiChar(AnsiString(rtspURLs[0])));
             vlcMediaPlayer2 := libvlc_media_player_new_from_media(vlcMedia2);
             libvlc_media_release(vlcMedia2);
             libvlc_media_player_set_hwnd(vlcMediaPlayer2, Pointer((panelek[2] as TPanel).Handle));
             libvlc_media_player_play(vlcMediaPlayer2);
            end;
           //cam1
           end;

         except
           //
         end;

      end;
   4: begin
        try
         if not nagy then
          begin
           try
            stop(nagy);
           finally
           if (not Assigned(vlcMediaPlayer0)) then
              begin
                vlcInstance0 := libvlc_new(0, nil);
                if teszt then
                begin
                  vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
                end
                else if rtspURLs[0] <> '' then
                  vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
                vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
                libvlc_media_release(vlcMedia0);
                libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
                libvlc_media_player_play(vlcMediaPlayer0);
              end;
             //cam1
            if (not Assigned(vlcMediaPlayer1)) then
              begin
                vlcInstance1 := libvlc_new(0, nil);
                if teszt then
                  vlcMedia1 := libvlc_media_new_path(vlcInstance1, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
                else if rtspURLs[1] <> '' then
                  vlcMedia1 := libvlc_media_new_location(vlcInstance1, PAnsiChar(AnsiString(rtspURLs[1])));
                vlcMediaPlayer1 := libvlc_media_player_new_from_media(vlcMedia1);
                libvlc_media_release(vlcMedia1);
                libvlc_media_player_set_hwnd(vlcMediaPlayer1, Pointer((panelek[1] as TPanel).handle));
                libvlc_media_player_play(vlcMediaPlayer1);
              end;
           end;
          end;
         //cam0  nagykam
         if nagy then
           begin
             try
               stop(not nagy);
               //Application.ProcessMessages;
             finally
              if (not Assigned(vlcMediaPlayer2)) then
              begin
               vlcInstance2 := libvlc_new(0, nil);
               if teszt then vlcMedia2 := libvlc_media_new_path(vlcInstance2,PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
               else
               if rtspURLs[0]<>'' then vlcMedia2 := libvlc_media_new_location(vlcInstance2,PAnsiChar(AnsiString(rtspURLs[0])));
               vlcMediaPlayer2 := libvlc_media_player_new_from_media(vlcMedia2);
               libvlc_media_release(vlcMedia2);
               libvlc_media_player_set_hwnd(vlcMediaPlayer2, Pointer((panelek[2] as TPanel).Handle));
               libvlc_media_player_play(vlcMediaPlayer2);
              end;
              //cam3
              if (not Assigned(vlcMediaPlayer3)) then
              begin
               vlcInstance3 := libvlc_new(0, nil);
               if teszt then vlcMedia3 := libvlc_media_new_path(vlcInstance3,PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
               else
               if rtspURLs[1]<>'' then vlcMedia3 := libvlc_media_new_location(vlcInstance3,PAnsiChar(AnsiString(rtspURLs[1])));
               vlcMediaPlayer3 := libvlc_media_player_new_from_media(vlcMedia3);
               libvlc_media_release(vlcMedia3);
               libvlc_media_player_set_hwnd(vlcMediaPlayer3, Pointer((panelek[3] as TPanel).Handle));
               libvlc_media_player_play(vlcMediaPlayer3);
              end;
             end;
           end;
         except
           //
         end;
      end;

  end;
  //lejatszas:=True;
end;

procedure TFoF.pnlFelsokepResize(Sender: TObject);
begin
  pnlFelsokep.OnResize := nil;
  pnlAlsokep.Height := Round((pnlJobboldal.Height - pnlJobbAlso.Height) / 2);
  pnlFelsokep.OnResize := pnlFelsokepResize;
end;

procedure TFoF.pnlJobbAlsoClick(Sender: TObject);
begin
//lblrendszam_elso.caption:=snapshot('0');
//lblrendszam_hatso.caption:=snapshot('1');
end;

procedure TFoF.Prostottmrsek1Click(Sender: TObject);
begin
  ParositottF.Showmodal;
end;

procedure TFoF.pusok1Click(Sender: TObject);
begin
  tipusokF.showmodal;
end;

procedure TFoF.Rendszmok1Click(Sender: TObject);
begin
  RendszamokF.ShowModal;
end;

procedure TFoF.rolk1Click(Sender: TObject);
begin
 tarolokF.ShowModal
end;

procedure TFoF.Sajtjelszmdostsa1Click(Sender: TObject);
var
  regi, uj, ujra: string;
begin
  regi := InputBox('Adja meg jelenlegi jelszavát', #31'Jelszó:', 'aaaaaaaa');
  if not aF.FelhaszQ.locate('id;jelszo', VarArrayOf([f_ide, aF.Transform(regi)]), []) then
  begin
    ShowMessage('Helytelen jelszó!');
    Exit
  end;
  uj := InputBox('Adja meg az új jelszavát',  #31'Jelszó:', '');
  if uj = '' then
  begin
    ShowMessage('Helytelen jelszó!');
    Exit
  end;
  ujra := InputBox('Erõsítse meg az új jelszavát',  #31'Jelszó:', '');
  if ujra = '' then
  begin
    ShowMessage('Helytelen jelszó!');
    Exit
  end;
  if uj <> ujra then
  begin
    ShowMessage('A két megadott jelszó nem egyezik!');
    Exit
  end;
  with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE felhasz SET jelszo=' + #39 + aF.Transform(ujra) + #39);
    SQL.Add(' Where id=' + IntToStr(f_ide));
    ExecSQL;
    Close;
  end;
  aF.FelhaszQ.Refresh;
  ShowMessage('Jelszó módosítva!');
end;

procedure TFoF.ServerSocketClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
  soc: string;
begin
  soc := Socket.ReceiveText;
  aF.soclog(soc);
  if (Pos(';', soc) <> 0) and (soc[Length(soc)] = '#') then
  begin
    StatusBar1.Panels[1].Text := soc;
    socketrendszam := copy(soc, 1, Pos(';', soc) - 1);
    socketkep := copy(soc, Pos(';', soc) + 1, Length(soc) - Pos(';', soc) - 1);
  end;
end;

function TFoF.snapshot(p: string): string;

  procedure kep_konvertalasa(keputja: string);
  var
    png: TPNGImage;
    bmp: TBitmap;
    jpg: TJPEGImage;
  begin
    png := TPNGImage.Create;
    bmp := TBitmap.Create;
    jpg := TJPEGImage.Create;
    try
      png.LoadFromFile(keputja);

      bmp.Width := png.Width;
      bmp.Height := png.Height;
      png.Draw(bmp.Canvas, bmp.Canvas.ClipRect);

      jpg.Assign(bmp);
      jpg.SaveToFile(StringReplace(keputja, 'png', 'jpg', [rfReplaceAll]));
      DeleteFile(keputja);
      application.processmessages
    finally
      png.Free;
      bmp.Free;
      jpg.Free;
    end;
  end;

var
  fn: string;
  i: Integer;
begin
  if (not van_plugin)or(not lejatszas) then exit;

  FormatSettings.ShortDateFormat := 'yyyy.mm.dd';
  fn := StringReplace(StringReplace(DateTimeToStr(Now), '.', '', [rfReplaceAll]), ':', '', [rfReplaceAll]);
  fn := StringReplace(p + '_' + fn, ' ', '', [rfreplaceAll]);
 //insert('1',fn,8); //beszurom h a masodik fele mindig egyessel induljon
  try
    try
      case p[1] of
        '0':
          libvlc_video_take_snapshot(vlcMediaPlayer0, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
        '1':
          libvlc_video_take_snapshot(vlcMediaPlayer1, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
   (*'3':libvlc_video_take_snapshot(vlcMediaPlayer2,0,PAnsiChar(AnsiString(mappa+fn+'.png')),0,0);
   '4':libvlc_video_take_snapshot(vlcMediaPlayer3,0,PAnsiChar(AnsiString(mappa+fn+'.png')),0,0);*)
      end;
      for i := 0 to 9 do
      begin
        if fileExists(kepmappa + fn + '.png') then
        begin
          kep_konvertalasa(kepmappa + fn + '.png');
          break
        end
        else  sleep(100);
      end;
    finally
      if fileExists(kepmappa + fn + '.jpg') then
        result := kepmappa + fn + '.jpg'
      else
        Result := 'Pillanat felvétel sikertelen';
    end;
  except
    Result := 'Pillanat felvétel sikertelen';
  end;

end;

procedure varakozas;
  var i: integer;
  begin
    for i := 1 to 10 do
    begin
      Application.ProcessMessages;
      Sleep(10);
    end;
  end;

procedure TFoF.socketconnect;
var
  i: integer;

begin
  if ClientSocket.Active then
    ClientSocket.Active := False;
  with ClientSocket do
  begin
    //Host := edIp.Text;
    //Port:=StrToInt(edPort.Text);
    Active := True;
    i := 0;
    varakozas;
    while (not Active) and (i < 5) do
    begin
      varakozas;
      Active := True;
      i := i + 1;
    end;
  end;
  ServerSocket.Active := True;
end;

procedure TFoF.Sorompnyitinfrahiba1Click(Sender: TObject);
var inif:Tinifile;
begin
  if Sorompnyitinfrahiba1.Checked then
  begin
    Sorompnyitinfrahiba1.Checked:=False;
    sorompo_infra_hibas_BE:=0;
  end
  else
  begin
    Sorompnyitinfrahiba1.Checked:=True;
    sorompo_infra_hibas_BE:=1;
  end;
  inif:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
  inif.WriteInteger('PLC_USB','Sorompo_infra_hibas_BE',sorompo_infra_hibas_BE);
  inif.UpdateFile;
  inif.Free;
  if vezerles_tipus = 'PLC'  then
  begin
      if sorompo_vezerles then
      begin
        PLC_Ir(Sorompo_Infra_Hiba_cim_BE, sorompo_infra_hibas_BE);
        if Sorompnyitinfrahiba1.Checked then
        begin
          PLC_Ir(Sorompo_Nyitas_Volt_Cim_BE, 0);
          meresirany:='-';
        end;
      end;
  end;

end;

procedure TFoF.Sorosportbellts1Click(Sender: TObject);
begin
  kodF.ShowModal;
  if kodF.Kode.text = 'OK' then
  begin
    if UpperCase(ParamStr(1)) <> '/D' then
      PortF.ShowModal;
  end;
end;

procedure TFoF.stop(nagy:Boolean);
begin
 { if (not Assigned(vlcMediaPlayer0)) then
  begin
    Showmessage('Not playing');
    Exit;
  end;}
  if not nagy then
   begin
    if Assigned(vlcMediaPlayer0) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer0);
      while libvlc_media_player_is_playing(vlcMediaPlayer0) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer0);
      vlcMediaPlayer0 := nil;
      libvlc_release(vlcInstance0);
    end;
    if Assigned(vlcMediaPlayer1) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer1);
      while libvlc_media_player_is_playing(vlcMediaPlayer1) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer1);
      vlcMediaPlayer1 := nil;
      libvlc_release(vlcInstance1);
    end;
   end;
   //nagykam
   if nagy then
    begin
    if Assigned(vlcMediaPlayer2) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer2);
       while libvlc_media_player_is_playing(vlcMediaPlayer2) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer2);
        vlcMediaPlayer2 := nil;
        libvlc_release(vlcInstance2);
      end;
      if Assigned(vlcMediaPlayer3) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer3);
       while libvlc_media_player_is_playing(vlcMediaPlayer3) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer3);
        vlcMediaPlayer3 := nil;
        libvlc_release(vlcInstance3);
      end;
    end;
 // lejatszas:=False;
end;

procedure TFoF.szures;
var
  id: integer;
begin
  if af.ForgalomQ.RecordCount <> 0 then
    id := af.ForgalomQ.FieldByName('ID').AsInteger
  else
    id := -1;
  with af.ForgalomQ do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM forgalom ');
    SQL.Add('WHERE (Datum>=:kdatum) and (Datum<=:bdatum)');
    SQL.Add('ORDER BY Datum desc, Ido desc');
    ParamByName('kdatum').AsDate := piKezdoDatum.Date;
    ParamByName('bdatum').AsDate := piBefejezoDatum.Date;
    Open();
  end;

  if id <> -1 then
    af.ForgalomQ.Locate('ID', id, []);

end;

procedure TFoF.Tomeg_TimerTimer(Sender: TObject);
var tomeg:integer;
    pont:char;
begin
  pont:=' ';
  if (StatusBar1.panels[4].text<>'') and (StatusBar1.panels[4].text[Length(StatusBar1.panels[4].text)]='g') then pont:='.';

  StatusBar1.panels[4].text := 'Tömeg: ' + mertertek + ' kg'+pont;
  lblIrany.caption:=meresirany;
  try
   tomeg:=strtoint(mertertek);
   {
   if (vezerles_tipus = 'PLC')  and (sorompo_vezerles) and (tomeg<mintomeg)then
   begin
     PLC_Ir(Sorompo_Nyitas_Volt_Cim_BE, 0);
     PLC_Ir(Sorompo_Nyitas_Volt_Cim_KI, 0);
     nullszintvolt := true;
     rendszamvolt := false;
     lblRendszam_elso.Caption := '';
     lblRendszam_hatso.Caption := '';
   end;
   }

  except
  end;
end;

procedure TFoF.tulaj_mClick(Sender: TObject);
begin
 if InputBox('Adja meg jelszavat',#31'Jelszó:', 'aaaaaaaaa')<>'csoki' then exit;
 TulajokF.ShowModal
end;

procedure TFoF.Lampakapcs(Melyik, Mire: integer);
begin
  if Melyik = 0 then
    exit;
  if Mire = Lampa_Zold then
    ledLampa.Kind := lkGreenLight
  else
    ledLampa.Kind := lkRedLight;

  if vezerles_tipus = 'USB' then
  begin
    if not kartyavan then
      exit;
    case Mire of
      0:   begin
             //ClearDigitalChannel(Melyik);
           end;
      1:   begin
             //SetDigitalChannel(Melyik);
           end;
    end;
  end
  else if vezerles_tipus = 'PLC' then
  begin
    PLC_Ir(Melyik, Mire);
  end;

end;

procedure TFoF.ledLampaDblClick(Sender: TObject);
begin
  ShellExecute(Handle, nil, PChar(Application.ExeName), PChar(f_ide.ToString), nil, SW_SHOWNORMAL);
  af.restart_log;
  Application.Terminate;
end;

procedure TFoF.Lista1Click(Sender: TObject);
begin
 rak_szall_listF.indit
end;

function TFoF.LoadVLCFunctions(vlcHandle: integer; failedList: TStringList): Boolean;
begin
  GetAProcAddress(vlcHandle, @libvlc_new, 'libvlc_new', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_new_location, 'libvlc_media_new_location', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_new_from_media, 'libvlc_media_player_new_from_media', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_release, 'libvlc_media_release', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_set_hwnd, 'libvlc_media_player_set_hwnd', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_play, 'libvlc_media_player_play', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_stop, 'libvlc_media_player_stop', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_release, 'libvlc_media_player_release', failedList);
  GetAProcAddress(vlcHandle, @libvlc_release, 'libvlc_release', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_is_playing, 'libvlc_media_player_is_playing', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_new_path, 'libvlc_media_new_path', failedList);
  GetAProcAddress(vlcHandle, @libvlc_video_take_snapshot, 'libvlc_video_take_snapshot', failedList);
  // if all functions loaded, result is an empty list, otherwise result is a list of functions failed
  Result := failedList.Count = 0;
end;

function TFoF.LoadVLCLibrary(APath: string): integer;
begin
  Result := LoadLibrary(PWideChar(APath + '\libvlccore.dll'));
  Result := LoadLibrary(PWideChar(APath + '\libvlc.dll'));
end;

procedure TFoF.mcIOmodulResponseError(const FunctionCode, ErrorCode: Byte;
  const ResponseBuffer: TModBusResponseBuffer);
begin
  ShowMessage('IO kapcsolati hiba!');
end;

procedure TFoF.mctPLCResponseError(const FunctionCode, ErrorCode: Byte;
  const ResponseBuffer: TModBusResponseBuffer);
begin
  ShowMessage('PLC kapcsolati hiba!');
end;

procedure TFoF.Mrlegjegyeklistja1Click(Sender: TObject);
begin
  MjegyekF.showmodal
end;

procedure TFoF.Mrlegkezelk1Click(Sender: TObject);
begin
  if not aF.van_joga('j5') then
    exit;
  MerlegkezelokF.ShowModal;
end;

procedure TFoF.Rendszam_Lampa_TimerTimer(Sender: TObject);
var
  kepnev1, kepnev2: string;
  tomeg: integer;

  procedure iprendszamleker;

    procedure kereskuld(kepszam: string);
    var
      sza: integer;
    begin
      socketrendszam := '';
      socketkep := '';
      FoF.ClientSocket.Socket.SendText('<H' + kepszam + '=1>');
      sza := 0;

      repeat
        Sleep(100);
        Application.ProcessMessages;
        sza := sza + 1;
      until (sza > 100) or (socketrendszam <> '');

    end;

  //iprendszamleker
  begin
    kereskuld('1');
    if (socketrendszam <> '') then
    begin
      if (socketrendszam[1] <> '-') then
        lblRendszam_elso.Caption := socketrendszam;
      kepnev1 := socketkep;
    (*
    if fileexists(socketkep) then
    begin
      imgKep.Picture.LoadFromFile(socketkep) ;
      lblKepnev1.Caption:=socketkep;
    end
    else imgKep.Picture:=nil;
    *)
    end;

    kereskuld('2');
    if (socketrendszam <> '') then
    begin
      if (socketrendszam[1] <> '-') then
        lblRendszam_hatso.Caption := socketrendszam;
      kepnev2 := socketkep;
    end;
  end;

  procedure mentes;
  begin
    with aF.Q1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Insert into forgalom ');
      SQL.Add('(Datum,Ido,Rendszam,Rendszam2,Irany,Kod,Szallitolev,Tomeg,Kepnev1,Kepnev2,Parositott,Nem_kell)');
      SQL.Add(' VALUES(:Datum,:Ido,:Rendszam,:Rendszam2,:Irany,:Kod,:Szallitolev,:Tomeg,:Kepnev1,:Kepnev2,:Parositott,:Nem_Kell) ');
      ParamByName('Datum').AsDate := Date;
      ParamByName('Ido').AsTime := Time;
      ParamByName('Rendszam').AsString := lblRendszam_elso.Caption;
      ParamByName('Rendszam2').AsString := lblRendszam_hatso.Caption;
      ParamByName('Irany').AsString := meresirany;//'-';
      ParamByName('Kod').AsString := '0';
      ParamByName('Szallitolev').AsString := '0';
      ParamByName('Tomeg').AsInteger := tomeg;
      ParamByName('Kepnev1').AsString := kepnev1;
      ParamByName('Kepnev2').AsString := kepnev2;
      ParamByName('Parositott').AsInteger := 0;
      ParamByName('Nem_Kell').AsInteger := 0;
      //showmessage(SQL.Text);
      ExecSQL;
      Close;

    end;
  end;

  procedure dolgozo;
  var
    i: Integer;
  begin
    try
      tomeg := StrToInt(mertertek);
      if (tomeg < 0) and (tomeg > -10) then
      begin
        tomeg := -1;
        exit;
      end;
    except
      tomeg := -1;
      exit;
    end;
    if (tomeg > mintomeg) and (nyugalmiszamlalo > nyugvovarakozas) and (nullszintvolt) and (not rendszamvolt) then
    begin
      //mentés
     // lblrendszam_elso.caption:=snapshot('0');
     // lblrendszam_hatso.caption:=snapshot('1');
      kepnev1 := snapshot('0');
      kepnev2 := snapshot('1');
      if rendszamleker then  iprendszamleker;
      rendszamvolt := true;
      mentes;
      if Elso_Gomb_Meres_Utan=1 then btnElsoClick(Sender);

      //Felnyitja a soropmót a lehajtáshoz
      if meresirany='KI' then PLC_Ir(Sorompo_Nyit_Cim_BE, 1)
      else
        if meresirany='BE' then PLC_Ir(Sorompo_Nyit_Cim_KI, 1)
        else
        begin
          //Ha nincs irány, mindkét sorompót fel kell nyitni, hogy leengedje a jármûvet a hídról
          PLC_Ir(Sorompo_Nyit_Cim_BE, 1);
          PLC_Ir(Sorompo_Nyit_Cim_KI, 1);
          meresirany:='+';
        end;

      szures;
    end
    else
      if (tomeg > mintomeg) and ((elozotomeg - 20 <= tomeg) and (elozotomeg + 20 >= tomeg)) then
        nyugalmiszamlalo := nyugalmiszamlalo + 1
      else
        begin
          nyugalmiszamlalo := 0;
          if (tomeg > mintomeg) and (not rendszamvolt) then // a piros lampan athajtas miatt vettem ki and (ledLampa.Kind = lkGreenLight) then
          begin
            Lampakapcs(Elso_lampa, Lampa_Piros);
            Lampakapcs(Hatso_lampa, Lampa_Piros);
            if (meresirany='-') and (vezerles_tipus = 'PLC') then
              if sorompo_vezerles then
              begin
                if PLC_Olvas(Sorompo_Nyitas_Volt_Cim_BE)=1 then meresirany:='BE'
                else if PLC_Olvas(Sorompo_Nyitas_Volt_Cim_KI)=1 then meresirany:='KI';
                PLC_Ir(Sorompo_Nyitas_Volt_Cim_BE, 0);
                PLC_Ir(Sorompo_Nyitas_Volt_Cim_KI, 0);
              end;
          end;
        end;

    if (tomeg < mintomeg) then
    begin
      nullszintvolt := true;
      rendszamvolt := false;
      lblRendszam_elso.Caption := '';
      lblRendszam_hatso.Caption := '';
      if (meresirany<>'-') and (vezerles_tipus = 'PLC') then
          if sorompo_vezerles then
          begin
            for i := 1 to lehajtasivarakozas*10 do
            begin
              sleep(100);
              Application.ProcessMessages;
            end;
            PLC_Ir(Sorompo_Nyitas_Volt_Cim_BE, 0);
            PLC_Ir(Sorompo_Nyitas_Volt_Cim_KI, 0);
           //Ki kell nullázni, mert ha bentragad nem nyílik a sorompó
            PLC_Ir(Sorompo_Nyit_Cim_BE, 0);
            PLC_Ir(Sorompo_Nyit_Cim_KI, 0);
          end;
      if (not (ledLampa.Kind = lkGreenLight))  then
      begin
        Lampakapcs(Elso_lampa, Lampa_Zold);
        Lampakapcs(Hatso_lampa, Lampa_Zold);
      end;
      meresirany:='-';
    end;
    elozotomeg := tomeg;
  end;

begin
  Rendszam_Lampa_Timer.Enabled := false;
  //szures;
  StatusBar1.panels[4].text := 'Tömeg: ' + mertertek + ' kg';
  if automata_meres then dolgozo;
  Rendszam_Lampa_Timer.Enabled := true;
end;

procedure TFoF.Play_Panel_letrehozasa(F:Tform;szulo, neve: string);
var
  I: Integer;
  tts: TTabSheet;
  aform:TForm;
begin
  if panelek = nil then
    panelek := TObjectList.Create;

  for I := 0 to panelek.Count - 1 do
  begin
    if (F.Name+neve=(TObject(panelek[I]) as TPanel).name) then
    begin
      panelek.Delete(I);
      Break
    end;
  end;
  with F do
   begin
     for I := 0 to F.componentcount-1 do
      begin
        if (F.components[i] is TtabSheet)and((F.components[i] as TtabSheet).name=szulo) then
         begin
          p := Tpanel.create(Application);
          p.parent := F.components[i] as TtabSheet;
          p.Name :=F.Name+neve;
          p.caption := 'Kamera nem elérhetõ!';
          p.align := TAlign.alClient;
          panelek.Add(p);
         end;
      end;
   end;
  van_cam := True;
end;

function TFoF.Ping_teszt(tipus:string): boolean;
var i:integer;
begin
   Result:=False;
 { if tipus='PLC' then  IdIcmpClient1.host:= PLC_IP
  else
    if tipus='IO' then  IdIcmpClient1.host:= IOmodul_IP
    else
    begin
      Result:=false;
      exit;
    end; }
    StatusBar1.panels[3].text := 'Ping teszt';
    Application.ProcessMessages;
   if tipus='PLC' then
      begin
      for I := 1 to Ping_varakozas do
        begin
          if PingHost(PLC_IP) then
           begin
             Result:=true;
             Break
           end
          else Sleep(100)
          end;
      end
   else
    if tipus='IO' then
      begin
        for I := 1 to Ping_varakozas do
        begin
          if PingHost(IOmodul_IP) then
           begin
             Result:=true;
             Break
           end
          else Sleep(100)
        end;
      end
    else
     begin
       Result:=False;
       Exit;
     end;

  //IdIcmpClient1.PacketSize := 24;
 { IdIcmpClient1.ReceiveTimeout := 200;
  IdIcmpClient1.Protocol := 1;

  IdIcmpClient1.Ping();
  i:=1;
  while (IdIcmpClient1.ReplyStatus.BytesReceived=0) and (i<Ping_varakozas*10) do
  begin
    StatusBar1.panels[3].text := 'Ping teszt';
    varakozas;
    i:=i+1;
    IdIcmpClient1.Ping();
  end;

  if IdIcmpClient1.ReplyStatus.BytesReceived>0 then  result:=True
  else result:=false; }
end;

function TFoF.PLC_Ir(cim, ertek: Integer): boolean;

begin
  if (vezerles_tipus <> 'PLC') then exit;

  mctPLC.Host := PLC_IP;
  if Ping_teszt('PLC') then
  begin
    if mctPLC.WriteRegister(cim + 1, ertek) then     //A címhez hozzá kell adni egyet, mert így olvassa ki a helyes regisztert
    begin
      Result := True;
      StatusBar1.panels[3].text := 'Írt cím:' + Inttostr(cim) + ' Érték:' + Inttostr(ertek);
    end
    else
    begin
      Result := False;
      StatusBar1.panels[3].text := 'PLC írási hiba!'
    end;
  end
  else
    begin
      StatusBar1.panels[3].text := 'PLC kapcsolati hiba!';
    end;
end;

function TFoF.PLC_Olvas(cim: integer): integer;
var
  Data: array[0..4096] of Word;
  blokk: Integer;
  i: Integer;
  sLine: string;
begin
  mctPLC.Host := PLC_IP;
  blokk := 1;
  if Ping_teszt('IO') then
  begin
    if mctPLC.ReadHoldingRegisters(cim + 1, blokk, Data) then  //A címhez hozzá kell adni egyet, mert így olvassa ki a helyes regisztert
    begin
      sLine := 'Olvasott cím:' + Inttostr(cim) + ' Érték:';
      for i := 0 to (blokk - 1) do
      begin
        sLine := sLine + IntToHex(Data[i], 4);
        StatusBar1.panels[3].text := sLine;
        Result := Data[i];
      end;

    end
    else
    begin
      StatusBar1.panels[3].text := 'PLC olvasási hiba!';
      Result := -1;
    end;
  end
  else
    begin
      StatusBar1.panels[3].text := 'PLC kapcsolati hiba!';
      Result := -1;
    end;
end;

end.


