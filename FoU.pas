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
  ModbusTypes, IdRawBase, IdRawClient, IdIcmpClient, Vcl.Buttons, JvExControls,
  JvLED,AU;




type
  PCKommunikacio_thread=class(TThread)
     procedure kijelez;
  protected
    procedure Execute; override;
  end;

  Rendszam_lampa_thread=class(TThread)
     procedure mukodtet;
  protected
    procedure Execute; override;
  public
    thmerleg:Integer;
  end;

  Rendszam_keres_thread=class(TThread)
     szoveg:string;
     procedure kijelez;
  protected
    procedure Execute; override;
  public
    thmerleg:Integer;
    thkamera:Integer;
  end;

  Rendszamrec=record
    rendszam:string;
    kep:string;
    fut:boolean;
    van_kamera:boolean;
    rtsp:string;
  end;

  Kamerarec=record
    ip_cim:string;
    port:integer;
    rtsp:string;
  end;
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
    Mrlegjegyeklistja1: TMenuItem;
    Mrlegkezelk1: TMenuItem;
    mctPLC: TIdModBusClient;
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
    mcIOmodul: TIdModBusClient;
    alapbe_m: TMenuItem;
    tulaj_m: TMenuItem;
    btnKamerakep: TButton;
    teszt_m: TMenuItem;
    tomeg_levon_szovegek_m: TMenuItem;
    tmrElokep: TTimer;
    memLog: TMemo;
    Antheratrzsimport1: TMenuItem;
    Szoftverbelltsok1: TMenuItem;
    pcTablak: TPageControl;
    tbForgalom: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    piKezdoDatum: TDateTimePicker;
    piBefejezoDatum: TDateTimePicker;
    btnMeresmodositas: TButton;
    btnMeres: TButton;
    DBGrid1: TDBGrid;
    tbIdeiglenes: TTabSheet;
    pnlFelso_jobb: TPanel;
    sbtnUjmerlegjegy: TSpeedButton;
    dbgNyitbe: TDBGrid;
    sbtnFolytatas: TSpeedButton;
    sbtnSorszamhivas: TSpeedButton;
    Hardverbelltsok1: TMenuItem;
    Alaphardveresbelltsok1: TMenuItem;
    PLCsorosportbellts1: TMenuItem;
    Import1: TMenuItem;
    pnlGomobesLedek: TPanel;
    pnlKiskep: TPanel;
    ipcamPanel: TPanel;
    campagc: TPageControl;
    cam0: TTabSheet;
    cam1: TTabSheet;
    cam2: TTabSheet;
    cam3: TTabSheet;
    JvLED1: TJvLED;
    lblFelirat1: TLabel;
    JvLED2: TJvLED;
    lblFelirat2: TLabel;
    JvLED3: TJvLED;
    lblFelirat3: TLabel;
    JvLED4: TJvLED;
    lblFelirat4: TLabel;
    JvLED5: TJvLED;
    JvLED6: TJvLED;
    JvLED7: TJvLED;
    JvLED8: TJvLED;
    lblFelirat8: TLabel;
    lblFelirat7: TLabel;
    lblFelirat6: TLabel;
    lblFelirat5: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    mnSzablyosmrlegentartozkodsfigyels1: TMenuItem;
    Mrlegelseklistja1: TMenuItem;
    tmrKep_Masolas: TTimer;
    tmrKijelzo_Torles: TTimer;
    Panel2: TPanel;
    btnTorles: TButton;
    chkToroltek_mutatasa: TCheckBox;
    lblThElo1: TLabel;
    lblThElo2: TLabel;
    lblThElo3: TLabel;
    lblThElo4: TLabel;
    lblThRendszam1: TLabel;
    lblThRendszam2: TLabel;
    lblKep1: TLabel;
    lblKep2: TLabel;
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
    procedure btnKamerakepClick(Sender: TObject);
    procedure KISorompnyitinfrahiba1Click(Sender: TObject);
    procedure mctPLCResponseError(const FunctionCode, ErrorCode: Byte;
      const ResponseBuffer: TModBusResponseBuffer);
    function Ping_teszt(IP:string):boolean;
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
    procedure teszt_mClick(Sender: TObject);
    procedure tomeg_levon_szovegek_mClick(Sender: TObject);
    procedure lejatszas_ellenorzese;
    procedure tmrElokepTimer(Sender: TObject);
    procedure piBefejezoDatumChange(Sender: TObject);
    procedure imgFelsokepClick(Sender: TObject);
    procedure Antheratrzsimport1Click(Sender: TObject);
    procedure Szoftverbelltsok1Click(Sender: TObject);
    procedure kepernyo_kezel;
    procedure sbtnUjmerlegjegyClick(Sender: TObject);
    procedure dbgNyitbeCellClick(Column: TColumn);
    procedure sbtnSorszamhivasClick(Sender: TObject);
    procedure Alaphardveresbelltsok1Click(Sender: TObject);
    procedure PLCsorosportbellts1Click(Sender: TObject);
    procedure Import1Click(Sender: TObject);
    procedure JvLED1DblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbgNyitbeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mnSzablyosmrlegentartozkodsfigyels1Click(Sender: TObject);
    function bemenet_lekerdezes(merleg,Eszkoznev:string):integer;
    procedure Mrlegelseklistja1Click(Sender: TObject);
    procedure tmrKep_MasolasTimer(Sender: TObject);
    procedure tmrKijelzo_TorlesTimer(Sender: TObject);
    procedure btnTorlesClick(Sender: TObject);
    procedure chkToroltek_mutatasaClick(Sender: TObject);
    procedure jpgbetolt(kepnev1,kepnev2:string);


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
  //nagy
  vlcInstance4, vlcInstance5, vlcInstance6, vlcInstance7: plibvlc_instance_t;
  vlcMedia0, vlcMedia1, vlcMedia2, vlcMedia3: plibvlc_media_t;
  //nagy
  vlcMedia4, vlcMedia5, vlcMedia6, vlcMedia7: plibvlc_media_t;
  vlcMediaPlayer0, vlcMediaPlayer1, vlcMediaPlayer2, vlcMediaPlayer3: plibvlc_media_player_t;
  //nagy
  vlcMediaPlayer4, vlcMediaPlayer5, vlcMediaPlayer6, vlcMediaPlayer7: plibvlc_media_player_t;

  teszt, van_cam: Boolean;

    // A VLC plugin maPPÁja iskell a dll/ek mellett!!!!
  vlcLib: integer;
  pingprobak,kamprobak:Integer;
  ThPC_Komm:PCKommunikacio_thread;
  //ThRendszamLampa1,ThRendszamLampa2,ThRendszamLampa3,ThRendszamLampa4:Rendszam_lampa_thread;
  ThRendszamLampa:array[1..maxmerleg] of Rendszam_lampa_thread;
  ThRendszam_keres:array[1..maxmerleg,1..2] of Rendszam_keres_thread;
  RendszamTomb:array[1..maxmerleg,1..2]  of Rendszamrec;     //csak az elsõ két kamera lehet rendszám felismerõ
  SocketTomb:array[1..maxmerleg,1..2]  of Rendszamrec;     //csak az elsõ két kamera lehet rendszám felismerõ
  KameraTomb:array[1..maxmerleg,1..maxkamera] of Kamerarec;

implementation

uses
  PartnerekU, TermekekU, RendszamokU, ForgalomU, ParositottU, KepekU, BelepU,
  FelhaszU, kodu, portU, mjegyU, MjegyListaU, MerlegkezelokU, KeszletU,nagykamU,
  tipusokU, tarolokU,Rak_szallU, rak_szall_listU,MeresU, Tulajok,Ping2U, tesztU,
  levon_szovegekU, demotomegU, nagykepU, szoftver_alapU,Hardver_beallU,
  PLC_COMU, ImportU, MerlegelesekU;


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

procedure TFoF.Alaphardveresbelltsok1Click(Sender: TObject);
begin
   if InputBox('Adja meg jelszót',#31'Jelszó:', 'aaaaaaaaa')<>'OK2023' then exit;
  Tomeg_Timer.Enabled:=false;
  Hardver_beallF.ShowModal;
  Tomeg_Timer.Enabled:=true;
end;

procedure TFoF.Antheratrzsimport1Click(Sender: TObject);
begin
if torzsiport_folyamatban then exit;
af.autotorzs.Enabled:=False;
torzsiport_folyamatban:=True;
//Screen.Cursor:=crHourGlass;
try
 try
  //af.torzs_import_csv;
  af.torzs_import_xlsx;
 finally
  ShowMessage('Importálás kész');
  torzsiport_folyamatban:=False;
 // Screen.Cursor:=crDefault;
 end;
except
 af.import_log('Hiba történt ');// ShowMessage('Hiba történt');
 torzsiport_folyamatban:=False;
 //Screen.Cursor:=crDefault;
end;
af.autotorzs.Enabled:=true;
end;

procedure TFoF.Anyagok1Click(Sender: TObject);
begin
  TermekekF.ShowModal;
end;

procedure TFoF.btnKamerakepClick(Sender: TObject);
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
var kepnev1,kepnev2:String;
begin
  if not aF.van_joga('j6') then exit;     //Meres
  Rendszam_Lampa_Timer.Enabled := false;
  meresF.rendszam1:=lblRendszam_elso.Caption ;
  meresF.rendszam2:=lblRendszam_Hatso.Caption ;
  meresF.ShowModal;
  if not meresF.mentes then exit;
  case meresF.merleg of
    0,1 :
        begin
          kepnev1 := snapshot('0');
          kepnev2 := snapshot('1');
        end;
    2 :
        begin
          kepnev1 := snapshot('2');
          kepnev2 := snapshot('3');
        end;

  end;
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
      ParamByName('Kepnev1').AsString:=kepnev1;
      ParamByName('Kepnev2').AsString:=kepnev2;
      ParamByName('Parositott').AsInteger:=0;
      ParamByName('Nem_Kell').AsInteger:=0;
      { DONE -oKNZ -c : Át lehet verni a porgramot, ha mentés elõtt kiveszik a pipát 2022. 10. 27. 23:27:14 }
      ParamByName('kezi').AsBoolean:=MeresF.chkkezi.Checked;
      //showmessage(SQL.Text);
    ExecSQL;
    Close;
  end;
  szures;
  //StatusBar1.panels[4].text:='Tömeg: '+mertertek+' kg';

  Rendszam_Lampa_Timer.Enabled := Regi_hardver_beallitas;
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

  Rendszam_Lampa_Timer.Enabled := Regi_hardver_beallitas;
end;

procedure TFoF.btnTorlesClick(Sender: TObject);
begin
  if AF.NyitbeQ.FieldByName('irany').AsString<>'' then exit;
  if af.nyitbeQ.FieldByName('Torolve').AsInteger=1 then  AF.nyitbe_torles(af.nyitbeQ.FieldByName('ID').AsInteger,0)
  else AF.nyitbe_torles(af.nyitbeQ.FieldByName('ID').AsInteger,1);
  AF.NyitbeQ.Refresh;
end;

procedure TFoF.chkToroltek_mutatasaClick(Sender: TObject);

begin
  if af.NyitbeQ.IsEmpty then exit;
  AF.NyitbeQ.Close;
  if chkToroltek_mutatasa.Checked then  AF.NyitbeQ.MacroByName('SZURES').AsRaw:=''
  else AF.NyitbeQ.MacroByName('SZURES').AsRaw:='WHERE Torolve=0';
  AF.NyitbeQ.open;
end;

function hatvany(alap, kitevo: Double): Integer;
begin
  hatvany:=Round(exp(ln(alap)*kitevo));
end;

function igaz(miben,mi:integer):boolean;
begin
  Result:=miben and hatvany( 2,mi) = hatvany( 2,mi);
end;


function TFoF.bemenet_lekerdezes(merleg,Eszkoznev: string): integer;
begin
  af.HardverQ.first;
  if af.HardverQ.locate('Merleg;Eszkoznev',varArrayOf([merleg,Eszkoznev]),[] )then
  begin
    if  igaz(PLC_COMF.Lekerdezett_Valasz,(af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger)) then Result:=1
    else Result:=0;
  end
  else Result:=2;
end;



procedure TFoF.btn1Click(Sender: TObject);
var szam:integer;
begin
  szam:=0;
  if  sender = btn1 then  szam:=1
  else
    if sender = btn2 then  szam:=2
    else
      if sender = btn3 then  szam:=3
      else
        if sender = btn4 then  szam:=4;

  if af.HardverQ.Locate('Gomb_szam',szam,[]) then
  begin
    if af.HardverQ.FieldbyName('Tipus').AsString='PLC' then
      begin
        PLC_IP:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
        PLC_Ir(af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger,1);
      end
      else
        if af.HardverQ.FieldbyName('Tipus').AsString='PLC485' then
        begin
          PLC_COMF.ModBusIrBit(af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString,af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger,1);
        end;
  end;

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
        Application.ProcessMessages;
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

procedure TFoF.dbgNyitbeCellClick(Column: TColumn);
begin
  if not af.NyitbeQ.Eof then sbtnSorszamhivas.Caption:=af.NyitbeQ.fieldbyname('Rendszam').AsString;
end;

procedure TFoF.dbgNyitbeDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if AF.NyitbeQ.RecordCount=0 then exit;
   if (AF.NyitbeQ.FieldByName('Tara').AsFloat=0) and  (AF.NyitbeQ.FieldByName('Brutto').AsFloat=0 )then
   begin
     if AF.NyitbeQ.FieldByName('irany').AsString<>'' then  dbgNyitbe.Canvas.Brush.Color:=clred
     else dbgNyitbe.Canvas.Brush.Color:=clWhite;
  end
   else dbgNyitbe.Canvas.Brush.Color:=clLime;
   dbgNyitbe.DefaultDrawColumnCell(Rect, DataCol, Column, State);
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

procedure TFoF.tmrElokepTimer(Sender: TObject);
var kiskam1,kiskam2,nagykam1,nagykam2:Boolean;
begin
 if kamprobak=kamproba then exit;
 tmrElokep.Enabled:=false;
 Inc(kamprobak);
 kiskam1:=False;
 kiskam2:=false;
 nagykam1:=false;
 nagykam2:=False;

 if (Assigned(vlcMediaPlayer0)) then
  if (libvlc_media_player_is_playing(vlcMediaPlayer0) = 0) then
   begin
    StatusBar1.panels[5].text := 'Élõkép(1) SZÜNETEL';
    af.camlog('Élõkép(1) SZÜNETEL');
    kiskam1:=true;
   end
  else if (libvlc_media_player_is_playing(vlcMediaPlayer0) = 1) then StatusBar1.panels[5].text := 'Élõkép(1) FOLYAMATOS';
 if (Assigned(vlcMediaPlayer1)) then
  if (libvlc_media_player_is_playing(vlcMediaPlayer1) = 0) then
   begin
    StatusBar1.panels[6].text := 'Élõkép(2): SZÜNETEL';
    af.camlog('Élõkép(2) SZÜNETEL');
    kiskam2:=true;
   end
  else if (libvlc_media_player_is_playing(vlcMediaPlayer1) = 1) then StatusBar1.panels[6].text := 'Élõkép(2): FOLYAMATOS';
 if (Assigned(vlcMediaPlayer2)) then
  if (libvlc_media_player_is_playing(vlcMediaPlayer2) = 0) then
   begin
    StatusBar1.panels[5].text := 'Élõkép(1) SZÜNETEL';
    af.camlog('Élõkép(1) SZÜNETEL');
    nagykam1:=true;
   end
  else if (libvlc_media_player_is_playing(vlcMediaPlayer2) = 1) then StatusBar1.panels[5].text := 'Élõkép(1) FOLYAMATOS';
if (Assigned(vlcMediaPlayer3)) then
  if (libvlc_media_player_is_playing(vlcMediaPlayer3) = 0) then
   begin
    StatusBar1.panels[6].text := 'Élõkép(2): SZÜNETEL';
    af.camlog('Élõkép(2) SZÜNETEL');
    nagykam2:=true;
   end
  else if (libvlc_media_player_is_playing(vlcMediaPlayer3) = 1) then StatusBar1.panels[6].text := 'Élõkép(2): FOLYAMATOS';
 //Application.ProcessMessages;
 //ha valamelyik true újra kell indítani, azért van így külön hogy csak egyszer indítsa újra
 if kiskam1 or kiskam2 then
  begin
    try
       FoF.stop(false);
    finally
       Fof.play(false);
    end;
    af.camlog('Újraindítás kellett')
  end;
  //nagy kamerák
 if nagykam1 or nagykam2 then
  begin
    try
       FoF.stop(true);
    finally
       Fof.play(true);
    end;
    af.camlog('Újraindítás kellett')
  end;
 tmrElokep.Enabled:=true;
end;





procedure TFoF.tmrKep_MasolasTimer(Sender: TObject);
var SearchRec: TSearchRec;
    aktdir,kep_teljes_nev:string;
    esemeny:esemeny_rec;
begin
  tmrKep_Masolas.Enabled:=false;
  if (Masolas_utvonala='') or (Kepek_Mappa='') or (not DirectoryExists(Kepek_Mappa)) or (not DirectoryExists(Masolas_utvonala)) then
  begin
    tmrKep_Masolas.Enabled:=True;
    exit;
  end;


  aktdir:=Masolas_utvonala;//+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\';


  if FindFirst(aktdir+'*.jpg', faAnyFile, SearchRec)=0 then
  begin
    try
      repeat
        if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
        begin
          esemeny:=af.esemeny_kibont(Now,SearchRec.Name);
          kep_teljes_nev:=Kepek_Mappa+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\'+SearchRec.Name;
          if not FileExists(kep_teljes_nev) then
          begin
            ForceDirectories(Kepek_Mappa+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\') ;
            CopyFile(PWideChar(Masolas_utvonala+SearchRec.Name),PWideChar(kep_teljes_nev),false);
          end;

        end;
      until FindNext(SearchRec)<>0;
    finally
      FindClose(SearchRec);
    end;
  end;


  tmrKep_Masolas.Enabled:=True;
end;

procedure TFoF.tmrKijelzo_TorlesTimer(Sender: TObject);
begin
  PortF.hivoszamkijelzore_ir('');
  tmrKijelzo_Torles.Enabled:=false;

end;

procedure TFoF.teszt_mClick(Sender: TObject);
begin
  tesztF.showmodal;
end;

procedure TFoF.tomeg_levon_szovegek_mClick(Sender: TObject);
begin
 levon_szovegekF.ShowModal
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
    Hardverbelltsok1.Visible:=felhnev='Programozó';
    sbtnUjmerlegjegy.Enabled:=true;
    sbtnFolytatas.Enabled:=true;
    with MainMenu1 do
    for h := 0 to Items.Count-1 do
    if items[h].Tag=0 then items[h].Enabled:=f_ide<>0;
    kepernyo_kezel;
  end
end;

procedure TFoF.Forgalom1Click(Sender: TObject);
begin
  ForgalomF.Showmodal;
end;

procedure TFoF.FormActivate(Sender: TObject);
var
  CardAddr, h,g,i: integer;
  esemeny:esemeny_rec;
  thread_futtatva:array[1..maxmerleg] of string;
  aktiv_merlegek:array [1..maxmerleg] of integer;


  procedure Merleg;
  var merlegszam:integer;
  begin
    aktualis_merlegszam:=0;
    for merlegszam := 1 to Maxmerleg do
    begin
      aktiv_merlegek[merlegszam]:=0;
         if (af.HardverQ.locate('Eszkoznev','MERLEG'+merlegszam.ToString,[]))
        and (POS(PC_Szam,af.HardverQ.FieldbyName('Szamitogep').AsString )<>0)
        and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1)        then
          begin
            if automata_meres then  aktiv_merlegek[merlegszam]:=merlegszam;
            aktualis_merlegszam:=aktualis_merlegszam+1;
            if af.HardverQ.FieldbyName('Tipus').AsString='SOROS_ADAT' then
            begin
              Merleg_tipus[merlegszam]:=af.HardverQ.FieldbyName('Egyedi_azon').AsString;
              merlegek[merlegszam]:='RS'+merlegszam.ToString; // a régivel való kompatibilitás megörzése miatt kell
              case merlegszam of
                1 : begin
                      PortF.Comport1.Port:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
                      try
                        PortF.portopen;
                        if PortF.Comport1.Port<>af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString then
                          ShowMessage('Az 1. mérleg COM portja eltér a hardverbeállításokban és a dat állományban!');
                      except
                        ShowMessage('A port megnyitása nem sikerült: '+af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString);
                      end;
                    end;
                2 : begin
                      PortF.Comport2.Port:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
                      try
                        PortF.port2open;
                        if PortF.Comport2.Port<>af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString then
                          ShowMessage('Az 2. mérleg COM portja eltér a hardverbeállításokban és a dat állományban!');
                      except
                        ShowMessage('A port megnyitása nem sikerült: '+af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString);
                      end;
                    end;
              end;

            end
            else
               if af.HardverQ.FieldbyName('Tipus').AsString='IP_ADAT' then
               begin
                 Merleg_tipus[merlegszam]:=af.HardverQ.FieldbyName('Egyedi_azon').AsString;
                 merlegek[merlegszam]:='IP'+merlegszam.ToString; // a régivel való kompatibilitás megörzése miatt kell
                 case merlegszam of
                   1 :  begin
                          moxa_ip1:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
                          moxa_port:= af.HardverQ.FieldbyName('IP_port').AsInteger;
                          PortF.IP1_Start;
                        end;
                   2 :  begin
                          moxa_ip2:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
                          moxa_port:= af.HardverQ.FieldbyName('IP_port').AsInteger;
                          PortF.IP2_Start;
                        end;
                 end;

               end;
          end;
    end;
  end;

  procedure Infrak;
  var merlegszam,infraszam:integer;
  begin
    for merlegszam :=1 to Maxmerleg do
      for infraszam := 1 to Maxinfra do
      begin
        if (af.HardverQ.locate('Eszkoznev;Merleg', VarArrayOf(['INFRA'+infraszam.ToString,'M'+merlegszam.ToString]),[]))
            and (POS(PC_Szam,af.HardverQ.FieldbyName('Szamitogep').AsString )<>0)
            and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1)        then
          { TODO -oKNZ -c : A TCP PLC-t még tesztelni jell az új hardver beállításokkal 2023. 03. 30. 11:25:16 }
          if af.HardverQ.FieldbyName('Tipus').AsString='PLC' then
          begin
            PLC_IP:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
            PLC_Ir(af.HardverQ.FieldbyName('Hibas_Kimenet_szam').AsInteger,af.HardverQ.FieldbyName('Hibas').AsInteger);
            thread_futtatva[StrToInt(af.HardverQ.FieldbyName('Merleg').AsString[2])]:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
          end;
      end;
  end;


  procedure Kamerak;
  var merlegszam,kameraszam:integer;
  begin
    for merlegszam :=1 to Maxmerleg do
      for kameraszam := 1 to Maxinfra do
      begin
        if (af.HardverQ.locate('Eszkoznev;Merleg', VarArrayOf(['KAMERA'+kameraszam.ToString,'M'+merlegszam.ToString]),[])) then
          if (POS(PC_Szam,af.HardverQ.FieldbyName('Szamitogep').AsString )<>0)  then
            if (af.HardverQ.FieldbyName('Aktiv').AsInteger=1)  then
            begin
              KameraTomb[merlegszam,kameraszam].ip_cim:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
              KameraTomb[merlegszam,kameraszam].port:=af.HardverQ.FieldbyName('IP_port').AsInteger;
              KameraTomb[merlegszam,kameraszam].rtsp:=af.HardverQ.FieldbyName('Rtsp').AsString;
              if (rendszamleker) and (kameraszam<3) then
              begin
                RendszamTomb[merlegszam,kameraszam].rendszam:='';
                RendszamTomb[merlegszam,kameraszam].kep:='';
                RendszamTomb[merlegszam,kameraszam].fut:=false;
                RendszamTomb[merlegszam,kameraszam].van_kamera:=true;
                RendszamTomb[merlegszam,kameraszam].rtsp:=af.HardverQ.FieldbyName('Rtsp').AsString;
              end;
            end
            else
            begin
              //Ide kell beírni, ha nincs
            end;
      end;
  end;



  procedure Lampak;
  var merlegszam,lampaszam:integer;
  begin
    for merlegszam :=1 to Maxmerleg do
      for lampaszam := 1 to 4 do
      begin
        if (af.HardverQ.locate('Eszkoznev;Merleg', VarArrayOf(['LAMPA'+lampaszam.ToString,'M'+merlegszam.ToString]),[]))
            and (POS(PC_Szam,af.HardverQ.FieldbyName('Szamitogep').AsString )<>0)
            and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1)        then
          { TODO -oKNZ -c : A TCP PLC-t még tesztelni jell az új hardver beállításokkal 2023. 03. 30. 11:25:16 }
          if af.HardverQ.FieldbyName('Tipus').AsString='PLC' then
          begin
            PLC_IP:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
            PLC_Ir(af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger,af.HardverQ.FieldbyName('Alaphelyzet').AsInteger);
            thread_futtatva[StrToInt(af.HardverQ.FieldbyName('Merleg').AsString[2])]:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
          end
          else
            if af.HardverQ.FieldbyName('Tipus').AsString='PLC485' then
            begin
              PLC_COMF.ModBusIrBit(af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString,af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger,af.HardverQ.FieldbyName('Alaphelyzet').AsInteger);
              thread_futtatva[StrToInt(af.HardverQ.FieldbyName('Merleg').AsString[2])]:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
            end;
      end;
  end;

  procedure gombok_ledek;
  var  i:integer;
  begin
    for i := 1 to Maxmerleg do thread_futtatva[i]:='';
    af.HardverQ.first;
    while not af.HardverQ.eof do
    begin
      if (af.HardverQ.FieldbyName('Gomb_szam').AsInteger<>0)  and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1) then
      begin
         TButton(FindComponent('btn'+IntToStr(af.HardverQ.FieldbyName('Gomb_szam').AsInteger))).Visible:= True;
         TButton(FindComponent('btn'+IntToStr(af.HardverQ.FieldbyName('Gomb_szam').AsInteger))). Caption:=af.HardverQ.FieldbyName('Gomb_szoveg').AsString;
      end;

      if (af.HardverQ.FieldbyName('Felirat_szam').AsInteger<>0)  and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1) then
      begin
          TJvLed(FindComponent('JvLED'+IntToStr(af.HardverQ.FieldbyName('Felirat_szam').AsInteger))).Visible:= True;
          if Pos('LAMPA',af.HardverQ.FieldByName('Eszkoznev').AsString)<>0 then
          begin
            TJvLED(FindComponent('JvLED'+IntToStr(af.HardverQ.FieldbyName('Felirat_szam').AsInteger))).ShowHint:=true;
            TJvLED(FindComponent('JvLED'+IntToStr(af.HardverQ.FieldbyName('Felirat_szam').AsInteger))).Status:=af.HardverQ.FieldbyName('Alaphelyzet').AsInteger=1;
          end;
          TLabel(FindComponent('lblFelirat'+IntToStr(af.HardverQ.FieldbyName('Felirat_szam').AsInteger))).Visible:= True;
          TLabel(FindComponent('lblFelirat'+IntToStr(af.HardverQ.FieldbyName('Felirat_szam').AsInteger))).Caption:= af.HardverQ.FieldbyName('Felirat_szoveg').AsString;
      end;
      if (af.HardverQ.FieldbyName('Tipus').AsString='PLC') and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1) then
        begin
          thread_futtatva[StrToInt(af.HardverQ.FieldbyName('Merleg').AsString[2])]:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
          //ide kell betnni a PLC-s lekérdezés indítását
        end
        else
          if (af.HardverQ.FieldbyName('Tipus').AsString='PLC485') and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1) then
          begin
              if (Length(af.HardverQ.FieldbyName('Merleg').AsString)>=2)
                 and (af.HardverQ.FieldbyName('Merleg').AsString[1]='M')
                 and (thread_futtatva[StrToInt(af.HardverQ.FieldbyName('Merleg').AsString[2])]='') then
              begin
                PLC_COMF.threadrun(af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString);
                thread_futtatva[StrToInt(af.HardverQ.FieldbyName('Merleg').AsString[2])]:= af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
              end;
          end;
      af.HardverQ.next;
    end;
  end;

  procedure PC_kommunikacio_beallitas;
  var merlegszam:integer;
  begin
    for merlegszam :=1 to Maxmerleg do
      begin
        if (af.HardverQ.locate('Eszkoznev;Merleg', VarArrayOf(['PC_KOMMUNIKACIO','M'+merlegszam.ToString]),[]))
            and (POS(PC_Szam,af.HardverQ.FieldbyName('Szamitogep').AsString )<>0)
            and (af.HardverQ.FieldbyName('Aktiv').AsInteger=1)      then
        begin
          PC_kommunikacio:='';
          ThPC_Komm:=PCKommunikacio_thread.Create(false);
          PortF.pc_komm_port_open(af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString);
        end;
      end;
  end;

begin
  onActivate := nil;
  if not Regi_hardver_beallitas then af.HardverQ.Open
  else pnlJobbAlso.Visible:=true;
  meresirany:='-';
  pingprobak:=5;
  kamprobak:=5;
  lblRendszam_elso.Caption := '';
  lblRendszam_hatso.Caption := '';
  btnElso.Visible:= Elso_Gomb_Szoveg<>'' ;
  btnElso.Caption:=Elso_Gomb_Szoveg;
  tbIdeiglenes.TabVisible:=ideiglenes_latszik;
  if ideiglenes_latszik then  pcTablak.ActivePageIndex:=0;

  tbForgalom.TabVisible:=forgalom_latszik;
  sbtnSorszamhivas.Visible:=Hivoszamhasznalat;
  mnSzablyosmrlegentartozkodsfigyels1.Checked:=szabalyos_merlegen_tartozkodas_figyeles;
  if not automata_kezelo then
    begin
      {
      if TryStrToInt(ParamStr(1),g) then
      begin
        if aF.FelhaszQ.Locate('id',g,[])then
         begin
           f_ide:=aF.FelhaszQ.FieldByName('id').AsInteger;
           felhnev:=aF.FelhaszQ.FieldByName('nev').AsString;
         end;
      end
      else  }
      begin
        belepF.ShowModal;
        sbtnUjmerlegjegy.Enabled:=true;
        sbtnFolytatas.Enabled:=true;
      end;
   end
   else
   begin
     f_ide:=0;
     felhnev:='Automata';
     sbtnUjmerlegjegy.Enabled:=false;
     sbtnFolytatas.Enabled:=false;
   end;
  with MainMenu1 do
    for h := 0 to Items.Count-1 do
    begin
     if items[h].Tag=0 then items[h].Enabled:=f_ide<>0;
     //if Items[h].Tag=100 then items[h].visible:=automata_torzsimport;

    end;
  aF.jogok_beolvasasa;
  tomeg_levon_szovegek_m.visible:=tomeg_levon;
  Antheratrzsimport1.Visible:= automata_torzsimport;
  if rendszamleker then  socketconnect;
  piKezdoDatum.Date := date;
  piBefejezoDatum.Date := date;
  StatusBar1.panels[0].text := verzio;
  StatusBar1.panels[2].text := 'Bejelentkezve: ' + felhnev;
  WindowState:=wsMaximized;
  if ideiglenes_latszik then
  begin
    AF.NyitbeQ.Close;
    AF.NyitbeQ.MacroByName('SZURES').AsRaw:='WHERE Torolve=0';
    AF.NyitbeQ.open;
  end;

  if ( rendszamleker)or (lejatszas) then   kepatmeretez;
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
      if Regi_hardver_beallitas then
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
              end;
          end;
        end
        else
          if vezerles_tipus = 'PLC' then
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
            end
            else
            begin
              PLC_Ir(Infra_BE_Cim, 0);
              PLC_Ir(Infra_KI_Cim, 0);
            end;
          end
          else StatusBar1.panels[3].text := '';
      end
      else
      //Új hardver beállítésok esetén
      begin
        infrak;
        kamerak;
      end;
    { TODO -oKNZ -c : Ide kell a lámpa kifeléfordulás 2021. 10. 19. 17:53:39 }
      if Regi_hardver_beallitas then
      begin
        if Elso_lampa <> 0 then Lampakapcs(Elso_lampa, Lampa_Zold);
        if Hatso_lampa <> 0 then  Lampakapcs(Hatso_lampa, Lampa_Zold);
      end
      else
      begin
        lampak;
        gombok_ledek;
      end;

      //Mérlegek
      if Regi_hardver_beallitas then
      begin
        if (UpperCase(ParamStr(1)) <> '/D') and (UpperCase(Merleg_tipus[1])<>'NINCS')
           and (PortF.merleg_szam('RS1')<>0) then PortF.portopen;
        if (UpperCase(ParamStr(1)) <> '/D') and (UpperCase(Merleg_tipus[1])<>'NINCS')
           and (PortF.merleg_szam('IP1')<>0) and (moxa_ip1<>'Local') then PortF.IP1_Start;
         if (UpperCase(ParamStr(1)) <> '/D') and (UpperCase(Merleg_tipus[1])<>'NINCS')
           and (PortF.merleg_szam('IP2')<>0) and (moxa_ip2<>'Local') then PortF.IP2_Start;
      end
      else
      begin
        if (UpperCase(ParamStr(1)) <> '/D') then   Merleg;
      end;

    end;
    lbl1.Visible:=rendszamleker;
    lbl2.Visible:=rendszamleker;
    lbl3.Visible:=sorompo_vezerles;
    ledLampa.Visible:=(Elso_lampa <> 0) or (Hatso_lampa <> 0);
    Tomeg_Timer.Enabled := true;
    Rendszam_Lampa_Timer.Enabled := Regi_hardver_beallitas;
  finally
    btnKamerakep.visible:=nagykamera;
    // tmrElokep.Enabled:=lejatszas;
    StatusBar1.panels[5].Text:='';
    StatusBar1.panels[6].Text:='';
    if UpperCase(ParamStr(1)) = '/D' then demotomegF.show;
    if (nagykamera)and(lejatszas) then
    begin
      try
       // NagykamF:=TNagykamF.Create(Self);
        try
          FoF.stop(false);
        finally
          Fof.play(true);
        end;
      finally
        nagykamF.show;
      end;
    end;
  end;
  if (not FileExists(konyvtar+'kijelzo.dat')) and (kijelzo_tipus<>'Nincs') then
      ShowMessage('A kijelzõ port nincs beállítva!');

  if (not FileExists(konyvtar+'hivoszamkijelzo.dat')) and (Hivoszamhasznalat)  then
      ShowMessage('A hívószám kijelzõ port nincs beállítva!');
  PC_kommunikacio_beallitas;
  esemeny:=af.esemeny_kibont(Now,'');
  if Utolso_futtatas<>esemeny.evs+esemeny.hos+esemeny.naps then
  begin
    if FileExists(konyvtar+'Ftp_fel.exe') then
    begin
      ShellExecute(Handle, 'open',PChar(konyvtar+'Ftp_fel.exe'), '/BEZAR', nil, SW_HIDE) ;
      Af.Regiek_torlese;

      with af.CfgT do
      begin
        open;
        if locate('tulajdonsag','Utolso_futtatas',[]) then
        begin
          edit;
          FieldByName('ertek').AsString:=esemeny.evs+esemeny.hos+esemeny.naps;
          post;
          close;
        end
        else
         af.cfg_kezel('A dátum amikor futtatta a mentést és a töröltbe írást','ALAP','Utolso_futtatas','String',esemeny.evs+esemeny.hos+esemeny.naps);
      end;
    end



  end;
  for i := 1 to Maxmerleg do
  begin
    elozotomeg[i]:=0;
    nyugalmiszamlalo[i]:=0;
    nullszintvolt[i]:=True;
    rendszamvolt[i]:=False;
    mentesvolt[i]:=False;
    maxtomeg[i]:=0;
    if aktiv_merlegek[i]<>0 then
    begin
      ThRendszamLampa[i]:=Rendszam_lampa_thread.Create(True);
      ThRendszamLampa[i].thmerleg:=i;
      ThRendszamLampa[i].Resume;
    end;
  end;
  Fof.SetFocus;
end;

procedure TFoF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  programvege:=true;
  StatusBar1.panels[1].Text:='Kilépés folyamatban...';
  Tomeg_Timer.Enabled:=false;
  if (UpperCase(ParamStr(1)) <> '/D') and (UpperCase(Merleg_tipus[1])<>'NINCS') and (felhnev<>'') then
  begin
    PortF.portclose;
    PortF.port2close;
    PortF.pc_komm_port_close;
  end;

end;

procedure TFoF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if torzsiport_folyamatban then CanClose:=false
  else
  begin
    if not van_plugin then CanClose:=True
    else
    begin
     if lejatszas then
      begin
       tmrElokep.Enabled:=false;
       stop(False);
       CanClose := FreeLibrary(vlclib);
      end
     else CanClose:=true;
    end;
  end;
end;

procedure TFoF.FormCreate(Sender: TObject);
var
  i: Integer;
  sL: TStringList;
begin
  kepernyo_kezel;

 //nagykamera:=True;
 // teszt :=  paramStr(1) = '/D'; //demo
  //showmessage(ExtractFileDir(ExtractFilePath(application.exename))+'\plugins');
  van_plugin:=DirectoryExists(ExtractFileDir(ExtractFilePath(application.exename))+'\plugins');
  if not lejatszas then exit;
  if van_plugin then
   begin
     for i := 0 to 3 do Play_panel_letrehozasa(FoF,'cam' + i.ToString, 'cam_kepe' + i.ToString);

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
  //if (not rendszamleker)and(not lejatszas) then pnlBaloldal.Width:=Round(fof.Width*(0.7))
  //else  pnlBaloldal.Width:=Round(FoF.Width*(0.3));
  kepernyo_kezel;
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
  Result :=ExtractFileDir(ExtractFilePath(application.exename)); //'H:\Delphi\ipcam\Win32\Debug';
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

procedure TFoF.imgFelsokepClick(Sender: TObject);
begin
  if (Sender=imgFelsokep)and (imgFelsokep.Picture.Graphic=nil) then exit;
  if (Sender=imgAlsokep)and (imgAlsokep.Picture.Graphic=nil) then exit;
  if (Sender=imgFelsokep)and(FileExists(aF.ForgalomQ.FieldByName('Kepnev1').AsString)) then
      NagykepF.kepnev:=aF.ForgalomQ.FieldByName('Kepnev1').AsString;
  if (Sender=imgAlsokep)and(FileExists(aF.ForgalomQ.FieldByName('Kepnev2').AsString)) then
      NagykepF.kepnev:=aF.ForgalomQ.FieldByName('Kepnev2').AsString;
  NagykepF.Showmodal;
end;

procedure TFoF.Import1Click(Sender: TObject);
begin
  ImportF.Kapcs.Close;
  ImportF.Kapcs.Params:=Af.Kapcs.Params;
  ImportF.ShowModal;
end;

function TFoF.IO_Ir(cim:integer; ertek: Boolean): boolean;
begin
  if not IOmodul_van then exit;

  mcIOmodul.Host := IOmodul_IP;
  if Ping_teszt(mcIOmodul.Host) then

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

procedure TFoF.jpgbetolt(kepnev1, kepnev2: string);

  var     JPEGImg: TJPEGImage;
begin
 // if (k1=jvmemparoskepnev1.AsString)and (k2=jvmemparoskepnev2.AsString) then exit;//ne olvassa be újra
  imgFelsokep.Picture:=nil;
  imgAlsokep.Picture:=nil;
  //if not jvmemparosparosit.AsBoolean then Exit;

  lblKep1.Caption:=kepnev1;
  lblKep2.Caption:=kepnev2;
  if FileExists( lblKep1.Caption) then
   begin
    JPEGImg := TJpegImage.Create;
    try
     JPEGImg.LoadFromFile( lblKep1.Caption);
     if JPEGImg.Width<600 then
      JPEGImg.Scale:=jsFullSize
     else
      if JPEGImg.Width<1200 then
       JPEGImg.Scale:=jsHalf
      else
       if JPEGImg.Width<2000 then
        JPEGImg.Scale:=jsQuarter
       else
        JPEGImg.Scale:=jsEighth;
    finally
     imgFelsokep.Picture.Assign(JPEGImg);
     JPEGImg.Free;
    end;
   end;
   if FileExists(lblKep2.Caption) then
   begin
    JPEGImg := TJpegImage.Create;
    try
     JPEGImg.LoadFromFile(lblKep2.Caption);
     if JPEGImg.Width<600 then
      JPEGImg.Scale:=jsFullSize
     else
      if JPEGImg.Width<1200 then
       JPEGImg.Scale:=jsHalf
      else
       if JPEGImg.Width<2000 then
        JPEGImg.Scale:=jsQuarter
       else
        JPEGImg.Scale:=jsEighth;
    finally
     imgAlsokep.Picture.Assign(JPEGImg);
     JPEGImg.Free;
    end;
   end;
  lblKep1.Visible:=imgFelsokep.Picture=nil;
  lblKep2.Visible:=imgAlsokep.Picture=nil;
end;

procedure TFoF.JvLED1DblClick(Sender: TObject);
var szam:integer;
begin
  szam:=0;
  if  sender = JvLED1 then  szam:=1
  else
    if sender = JvLED2 then  szam:=2
    else
      if sender = JvLED3 then  szam:=3
      else
        if sender = JvLED4 then  szam:=4
        else
          if sender = JvLED5 then  szam:=5
          else
            if sender = JvLED6 then  szam:=6
            else
              if sender = JvLED7 then  szam:=7
              else
                if sender = JvLED8 then  szam:=8;

  if af.HardverQ.Locate('Felirat_szam',szam,[]) then
  begin
    if Pos('LAMPA',af.HardverQ.FieldByName('Eszkoznev').AsString)<>0 then
    begin
      if (szam<>0) then  TJvLed(FindComponent('JvLED'+IntToStr(szam))).Status:=not TJvLed(FindComponent('JvLED'+IntToStr(szam))).Status;
      if af.HardverQ.FieldbyName('Tipus').AsString='PLC' then
      begin
        PLC_IP:=af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString;
        PLC_Ir(af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger,TJvLed(FindComponent('JvLED'+IntToStr(szam))).Status.ToInteger);
      end
      else
        if af.HardverQ.FieldbyName('Tipus').AsString='PLC485' then
        begin
          PLC_COMF.ModBusIrBit(af.HardverQ.FieldbyName('Port_v_IP_Cim').AsString,af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger,TJvLed(FindComponent('JvLED'+IntToStr(szam))).Status.ToInteger);
        end;
    end;
  end;
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
  jpgbetolt(aF.ForgalomQ.FieldByName('Kepnev1').AsString,aF.ForgalomQ.FieldByName('Kepnev2').AsString);
  exit;
  if FileExists(aF.ForgalomQ.FieldByName('Kepnev1').AsString) then
  imgFelsokep.Picture.LoadFromFile(aF.ForgalomQ.FieldByName('Kepnev1').AsString)
  else imgFelsokep.Picture:=nil;
  if FileExists(aF.ForgalomQ.FieldByName('Kepnev2').AsString) then
  imgAlsokep.Picture.LoadFromFile(aF.ForgalomQ.FieldByName('Kepnev2').AsString)
  else imgAlsokep.Picture:=nil;
  //kepatmeretez;
end;

procedure TFoF.kepernyo_kezel;
begin
  if (not rendszamleker)and(not lejatszas) then
 begin
   if felhnev='Programozó' then
   begin
     pnlBaloldal.Align:=alLeft;
     pnlBaloldal.Width:=Round(fof.Width*(0.8));
     pnlJobboldal.Visible:=True;

   end
   else
   begin
     pnlJobboldal.Visible:=false;
     pnlBaloldal.Align:=alClient;//Width:=Round(fof.Width*(0.9));
   end;
   if not lejatszas then  pnlKiskep.Visible:=false;
 end
 else
 begin
   pnlBaloldal.Width:=Round(FoF.Width*(0.3));
   campagc.ActivePageIndex:=0;
   if not lejatszas then  pnlKiskep.Visible:=false;
 end;
 alapbe_m.visible:=felhnev='Programozó';
 Hardverbelltsok1.visible:=felhnev='Programozó';
 teszt_m.visible:=felhnev='Programozó';
 memLog.Visible:=felhnev='Programozó';
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

procedure TFoF.piBefejezoDatumChange(Sender: TObject);
begin
 if piBefejezoDatum.Date<piKezdoDatum.Date then piKezdoDatum.Date:=piBefejezoDatum.Date;
 szures;
end;

procedure TFoF.piKezdoDatumChange(Sender: TObject);
begin
  szures;
end;

procedure TFoF.play(nagy:Boolean);
var
  i: Integer;
  hany_kamera:integer;
begin
 if not lejatszas then Exit;
  // create new vlc instance
  if not van_plugin then  Exit;//ha nincs plugin kilép
  //ShowMessage(Panelek.Count.ToString);
  //ShowMessage(rtspURLs[0]);
  hany_kamera:=Round(Panelek.Count/2);
  case hany_kamera of
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
              af.camlog('play próba cam0');
            end;
           end;
           if nagy then
           begin
            try
              stop(not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
              af.camlog('play próba cam4');
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
              //af.camlog('play próba cam0');
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
              //af.camlog('play próba cam1');
            end;
          end;
         if nagy then
          begin
            try
              stop(not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
              //af.camlog('play próba cam0');
               //cam1
              vlcInstance5 := libvlc_new(0, nil);
              if teszt then
                vlcMedia5 := libvlc_media_new_path(vlcInstance5, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia5 := libvlc_media_new_location(vlcInstance5, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer5 := libvlc_media_player_new_from_media(vlcMedia5);
              libvlc_media_release(vlcMedia5);
              libvlc_media_player_set_hwnd(vlcMediaPlayer5, Pointer((panelek[5] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
              //af.camlog('play próba cam1');
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
              //cam2
              vlcInstance2 := libvlc_new(0, nil);
              if teszt then
                vlcMedia2 := libvlc_media_new_path(vlcInstance2, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia2 := libvlc_media_new_location(vlcInstance2, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer2 := libvlc_media_player_new_from_media(vlcMedia2);
              libvlc_media_release(vlcMedia2);
              libvlc_media_player_set_hwnd(vlcMediaPlayer2, Pointer((panelek[2] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer2);
            end;
           end;
           if nagy then
           begin
            try
              stop( not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
               //cam1
              vlcInstance5 := libvlc_new(0, nil);
              if teszt then
                vlcMedia5 := libvlc_media_new_path(vlcInstance5, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia5 := libvlc_media_new_location(vlcInstance5, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer5 := libvlc_media_player_new_from_media(vlcMedia5);
              libvlc_media_release(vlcMedia5);
              libvlc_media_player_set_hwnd(vlcMediaPlayer5, Pointer((panelek[5] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer5);
              //cam2
              vlcInstance6 := libvlc_new(0, nil);
              if teszt then
                vlcMedia6 := libvlc_media_new_path(vlcInstance6, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia6 := libvlc_media_new_location(vlcInstance6, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer6 := libvlc_media_player_new_from_media(vlcMedia6);
              libvlc_media_release(vlcMedia6);
              libvlc_media_player_set_hwnd(vlcMediaPlayer6, Pointer((panelek[6] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer6);
            end;
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
              //cam2
              vlcInstance2 := libvlc_new(0, nil);
              if teszt then
                vlcMedia2 := libvlc_media_new_path(vlcInstance2, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia2 := libvlc_media_new_location(vlcInstance2, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer2 := libvlc_media_player_new_from_media(vlcMedia2);
              libvlc_media_release(vlcMedia2);
              libvlc_media_player_set_hwnd(vlcMediaPlayer2, Pointer((panelek[2] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer2);
              //cam3
              vlcInstance3 := libvlc_new(0, nil);
              if teszt then
                vlcMedia3 := libvlc_media_new_path(vlcInstance3, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[3] <> '' then
                vlcMedia3 := libvlc_media_new_location(vlcInstance3, PAnsiChar(AnsiString(rtspURLs[3])));
              vlcMediaPlayer3 := libvlc_media_player_new_from_media(vlcMedia3);
              libvlc_media_release(vlcMedia3);
              libvlc_media_player_set_hwnd(vlcMediaPlayer3, Pointer((panelek[3] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer3);
            end;
           end;
           if nagy then
           begin
            try
              stop( not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
               //cam1
              vlcInstance5 := libvlc_new(0, nil);
              if teszt then
                vlcMedia5 := libvlc_media_new_path(vlcInstance5, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia5 := libvlc_media_new_location(vlcInstance5, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer5 := libvlc_media_player_new_from_media(vlcMedia5);
              libvlc_media_release(vlcMedia5);
              libvlc_media_player_set_hwnd(vlcMediaPlayer5, Pointer((panelek[5] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer5);
              //cam2
              vlcInstance6 := libvlc_new(0, nil);
              if teszt then
                vlcMedia6 := libvlc_media_new_path(vlcInstance6, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia6 := libvlc_media_new_location(vlcInstance6, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer6 := libvlc_media_player_new_from_media(vlcMedia6);
              libvlc_media_release(vlcMedia6);
              libvlc_media_player_set_hwnd(vlcMediaPlayer6, Pointer((panelek[6] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer6);
              //cam3
              vlcInstance7 := libvlc_new(0, nil);
              if teszt then
                vlcMedia7 := libvlc_media_new_path(vlcInstance7, PAnsiChar(AnsiString('c:\Users\Public\Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[3] <> '' then
                vlcMedia7 := libvlc_media_new_location(vlcInstance7, PAnsiChar(AnsiString(rtspURLs[3])));
              vlcMediaPlayer7 := libvlc_media_player_new_from_media(vlcMedia7);
              libvlc_media_release(vlcMedia7);
              libvlc_media_player_set_hwnd(vlcMediaPlayer7, Pointer((panelek[7] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer7);
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
  if ( rendszamleker)or (lejatszas) then
  begin
    pnlFelsokep.OnResize := nil;
    if pnlJobbAlso.Visible then pnlAlsokep.Height := Round((pnlJobboldal.Height - pnlJobbAlso.Height) / 2)
    else pnlAlsokep.Height := Round((pnlJobboldal.Height ) / 2);
    pnlFelsokep.OnResize := pnlFelsokepResize;
  end;
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
  merleg,kamera:integer;
begin
  soc := Socket.ReceiveText;
  aF.soclog(soc);
  if (Pos(';', soc) <> 0) and (soc[Length(soc)] = '#') then
  begin
    StatusBar1.Panels[1].Text := soc;
    socketrendszam := copy(soc, 1, Pos(';', soc) - 1);
    socketkep := copy(soc, Pos(';', soc) + 1, Length(soc) - Pos(';', soc) - 1);
    //új rendszer
    merleg:=0;
    kamera:=0;
    if Pos('_1_',soc)<>0 then  begin merleg:=1;kamera:=1;   end
    else
      if Pos('_2_',soc)<>0 then  begin merleg:=1;kamera:=2;   end
      else
        if Pos('_3_',soc)<>0 then  begin merleg:=2;kamera:=1;   end
        else if Pos('_4_',soc)<>0 then  begin merleg:=2;kamera:=2;   end;
    if merleg<>0 then
    begin
      SocketTomb[merleg,kamera].rendszam:=socketrendszam;
      SocketTomb[merleg,kamera].kep:=socketkep;
    end;


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
  Result := 'Pillanat felvétel sikertelen';
  try
   lejatszas_ellenorzese //ha hozzá van rendelve de nincs lejátszás újraindítja
  finally
    FormatSettings.ShortDateFormat := 'yyyy.mm.dd';
    fn := StringReplace(StringReplace(DateTimeToStr(Now), '.', '', [rfReplaceAll]), ':', '', [rfReplaceAll]);
    fn := StringReplace(p + '_' + fn, ' ', '', [rfreplaceAll]);
   //insert('1',fn,8); //beszurom h a masodik fele mindig egyessel induljon
    try
      try
        case p[1] of
          '0':begin
               //kis camera pillanat felvétel
               if Assigned(vlcMediaPlayer0)then libvlc_video_take_snapshot(vlcMediaPlayer0, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
               //nagy camera pillanat felvétel
               if Assigned(vlcMediaPlayer4)then libvlc_video_take_snapshot(vlcMediaPlayer4, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
              end;
          '1':begin
               //kis camera pillanat felvétel
               if Assigned(vlcMediaPlayer1)then libvlc_video_take_snapshot(vlcMediaPlayer1, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
               //nagy camera pillanat felvétel
               if Assigned(vlcMediaPlayer5)then libvlc_video_take_snapshot(vlcMediaPlayer5, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
              end;
          '2':begin
               //kis camera pillanat felvétel
               if Assigned(vlcMediaPlayer2)then libvlc_video_take_snapshot(vlcMediaPlayer2, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
               //nagy camera pillanat felvétel
               if Assigned(vlcMediaPlayer6)then libvlc_video_take_snapshot(vlcMediaPlayer6, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
              end;
          '3':begin
               //kis camera pillanat felvétel
               if Assigned(vlcMediaPlayer3)then libvlc_video_take_snapshot(vlcMediaPlayer3, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
               //nagy camera pillanat felvétel
               if Assigned(vlcMediaPlayer7)then libvlc_video_take_snapshot(vlcMediaPlayer7, 0, PAnsiChar(AnsiString(kepmappa + fn + '.png')), 0, 0);
              end;
        end;
        for i := 0 to 9 do
        begin
          if fileExists(kepmappa + fn + '.png') then
          begin
            kep_konvertalasa(kepmappa + fn + '.png');
            break
          end
          else  sleep(200);
        end;
      finally
        if fileExists(kepmappa + fn + '.jpg') then result := kepmappa + fn + '.jpg'
        else Result := 'Pillanat felvétel sikertelen';
      end;
    except
      Result := 'Pillanat felvétel sikertelen';
    end;
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
  if kodF.Kode.text = 'OK2023' then
  begin
    if UpperCase(ParamStr(1)) <> '/D' then
      PortF.btnHivoszamkijezobeallitas.Visible:= Hivoszamhasznalat;
      PortF.ShowModal;
  end;
end;

procedure TFoF.sbtnSorszamhivasClick(Sender: TObject);
begin
  if sbtnSorszamhivas.Caption<>'0' then
    PortF.hivoszamkijelzore_ir(sbtnSorszamhivas.Caption);
  tmrKijelzo_Torles.Enabled:=false;
  tmrKijelzo_Torles.Enabled:=true;
end;

procedure TFoF.sbtnUjmerlegjegyClick(Sender: TObject);
begin
  if not aF.van_joga('j4') then   exit;
  if sender=sbtnFolytatas then
  begin
    if af.NyitbeQ.IsEmpty then exit;
    MjegyF.Folytatas:=true;
  end
  else MjegyF.Folytatas:=false;
  mjegyF.masol(piKezdoDatum.Date, piBefejezoDatum.Date, False);
  mjegyF.ShowModal;
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
   if Assigned(vlcMediaPlayer2) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer2);
      while libvlc_media_player_is_playing(vlcMediaPlayer2) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer2);
      vlcMediaPlayer2 := nil;
      libvlc_release(vlcInstance2);
    end;
    if Assigned(vlcMediaPlayer3) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer3);
      while libvlc_media_player_is_playing(vlcMediaPlayer3) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer3);
      vlcMediaPlayer3 := nil;
      libvlc_release(vlcInstance3);
    end;
   end;
   //nagykam
   if nagy then
    begin
    if Assigned(vlcMediaPlayer4) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer4);
       while libvlc_media_player_is_playing(vlcMediaPlayer4) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer4);
        vlcMediaPlayer4 := nil;
        libvlc_release(vlcInstance4);
      end;
      if Assigned(vlcMediaPlayer5) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer5);
       while libvlc_media_player_is_playing(vlcMediaPlayer5) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer5);
        vlcMediaPlayer5 := nil;
        libvlc_release(vlcInstance5);
      end;
     if Assigned(vlcMediaPlayer6) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer6);
       while libvlc_media_player_is_playing(vlcMediaPlayer6) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer6);
        vlcMediaPlayer6 := nil;
        libvlc_release(vlcInstance6);
      end;
      if Assigned(vlcMediaPlayer7) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer7);
       while libvlc_media_player_is_playing(vlcMediaPlayer7) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer7);
        vlcMediaPlayer7 := nil;
        libvlc_release(vlcInstance7);
      end;
    end;
 // lejatszas:=False;
end;

procedure TFoF.Szoftverbelltsok1Click(Sender: TObject);
begin
 if InputBox('Adja meg jelszót',#31'Jelszó:', 'aaaaaaaaa')<>'csoki' then exit;
 szoftver_alapF.fo
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
var tomeg,i:integer;
    pont:char;
    tomeg_szoveg:string;
begin
  Tomeg_Timer.Enabled:=false;
  af.  ForgalomQ.Refresh;
  pont:=' ';
  if (StatusBar1.panels[4].text<>'') and (StatusBar1.panels[4].text[Length(StatusBar1.panels[4].text)]=' ') then pont:='.';
  tomeg_szoveg:='';
  for i := 1 to 4 do
  begin
    if mertertekek[i]<>'' then  tomeg_szoveg:=tomeg_szoveg+mertertekek[i]+' kg   ';
    try
      tomeg:=strtoint(mertertekek[i]);
      if (lado=1) and (tomeg>mintomeg) then AF.tomeglog('M'+IntTosTr(i)+':'+mertertekek[i]);
    except

    end;
  end;
  StatusBar1.panels[4].text := 'Tömeg: ' + tomeg_szoveg + pont;
  lblIrany.caption:=meresirany;
  try
    tomeg:=strtoint(mertertekek[1]);
    if (lado=1) and (tomeg>mintomeg) then AF.tomeglog(mertertekek[1]);
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
    if UpperCase(ParamStr(1)) <> '/D' then
      if (FileExists(konyvtar+'kijelzo.dat')) and (kijelzo_tipus<>'Nincs') then PortF.kijelzore_ir;
  except
  end;

  if not Regi_hardver_beallitas then

    begin
    { TODO -oKNZ -c : AT CP IP-s részt is meg kell csinálni ide 2023.08.10. 9:17:16 }
      af.HardverQ.first;
      while not af.HardverQ.eof do
      begin
        if af.HardverQ.FieldByName('Felirat_szam').AsInteger>0 then
        begin
          TJvLED(FindComponent('JvLED'+IntToStr(af.HardverQ.FieldbyName('Felirat_szam').AsInteger))).Status:=
               igaz(PLC_COMF.Lekerdezett_Valasz,(af.HardverQ.FieldbyName('Bekapcs_Kimenet_szam').AsInteger));
        end;
        af.HardverQ.next;
      end;
    end;

  Tomeg_Timer.Enabled:=true;
end;

procedure TFoF.tulaj_mClick(Sender: TObject);
begin
  if InputBox('Adja meg jelszót',#31'Jelszó:', 'aaaaaaaaa')<>'csoki' then exit;
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
  else
    if vezerles_tipus = 'PLC' then
    begin
      PLC_Ir(Melyik, Mire);
    end
    else
      if vezerles_tipus = 'IO' then
      begin
        IO_Ir(IOmodul_regiszter_iras1,Mire=1);
      end;


end;

procedure TFoF.ledLampaDblClick(Sender: TObject);
begin
  if ledLampa.Kind = lkGreenLight then  Lampakapcs(Elso_lampa, Lampa_Piros)
  else Lampakapcs(Elso_lampa, Lampa_Zold);

  //ShellExecute(Handle, nil, PChar(Application.ExeName), PChar(f_ide.ToString), nil, SW_SHOWNORMAL);
  //af.restart_log;
  //Application.Terminate;
end;

procedure TFoF.lejatszas_ellenorzese;
begin
  //kis kamera lejatszas van
  tmrElokep.Enabled:=false;
  if (Assigned(vlcMediaPlayer0))and (libvlc_media_player_is_playing(vlcMediaPlayer0) = 0)
     or (Assigned(vlcMediaPlayer1))and (libvlc_media_player_is_playing(vlcMediaPlayer1) = 0)
     or (Assigned(vlcMediaPlayer2))and (libvlc_media_player_is_playing(vlcMediaPlayer2) = 0)
     or (Assigned(vlcMediaPlayer3))and (libvlc_media_player_is_playing(vlcMediaPlayer3) = 0)
  then
  begin
     try
       FoF.stop(false);
     finally
       Fof.play(false);
     end;
     af.camlog('Újraindítás kellett')
  end
  else af.camlog('NEM kellett újraindítás ');
  //nagykamera lejátszás van
  if (Assigned(vlcMediaPlayer4))and (libvlc_media_player_is_playing(vlcMediaPlayer4) = 0)
     or (Assigned(vlcMediaPlayer5))and (libvlc_media_player_is_playing(vlcMediaPlayer5) = 0)
     or(Assigned(vlcMediaPlayer6))and (libvlc_media_player_is_playing(vlcMediaPlayer6) = 0)
     or (Assigned(vlcMediaPlayer7))and (libvlc_media_player_is_playing(vlcMediaPlayer7) = 0)
  then
  begin
     try
       FoF.stop(true);
     finally
       Fof.play(true);
     end;
     af.camlog('Újraindítás kellett')
  end
  else af.camlog('NEM kellett újraindítás ');
  tmrElokep.Enabled:=true;
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
  memlog.Lines.Insert(0,'IO kapcsolati hiba!');
end;

procedure TFoF.mctPLCResponseError(const FunctionCode, ErrorCode: Byte;
  const ResponseBuffer: TModBusResponseBuffer);
begin
  ShowMessage('PLC kapcsolati hiba!(R)');
  memlog.Lines.Insert(0,'PLC kapcsolati hiba!(R)');
end;

procedure TFoF.mnSzablyosmrlegentartozkodsfigyels1Click(Sender: TObject);
begin
  mnSzablyosmrlegentartozkodsfigyels1.Checked:=not mnSzablyosmrlegentartozkodsfigyels1.Checked;
  szabalyos_merlegen_tartozkodas_figyeles:= mnSzablyosmrlegentartozkodsfigyels1.Checked;
  with af.CfgT do
  begin
    open;
    if locate('tulajdonsag','Szabályos mérlegen tartozkodás figyelése',[]) then
    begin
      edit;
      FieldByName('ertek').AsBoolean:=mnSzablyosmrlegentartozkodsfigyels1.Checked;
      post;

    end
    else
    begin
      close;
      af.cfg_kezel('Ha be van kapcsolva és az Infra5 vagy Infra6 jelez, nem enged mérni','ALAP','Szabályos mérlegen tartozkodás figyelése','Boolean',mnSzablyosmrlegentartozkodsfigyels1.Checked);
    end;
  end;


end;

procedure TFoF.Mrlegelseklistja1Click(Sender: TObject);
begin
  MerlegelesekF.Showmodal;
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
      SQL.Add('(Datum,Ido,Rendszam,Rendszam2,Irany,Kod,Szallitolev,Tomeg,Kepnev1,Kepnev2,Parositott,Nem_kell,kezi)');
      SQL.Add(' VALUES(:Datum,:Ido,:Rendszam,:Rendszam2,:Irany,:Kod,:Szallitolev,:Tomeg,:Kepnev1,:Kepnev2,:Parositott,:Nem_Kell,:kezi) ');
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
      ParamByName('kezi').AsBoolean:=False;
      //showmessage(SQL.Text);
      ExecSQL;
      Close;
    end;
  end;

  procedure dolgozo(Merleg:integer);
  var
    i: Integer;
  begin
    try
      tomeg := StrToInt(mertertekek[merleg]);
      if (tomeg < 0) and (tomeg > -10) then
      begin
        tomeg := -1;
        exit;
      end;
    except
      tomeg := -1;
      exit;
    end;
    //Nyugvó tömeg esetén esetén a rendszámot lekér és ment
    if (tomeg > mintomeg) and (nyugalmiszamlalo[merleg] > nyugvovarakozas) and (nullszintvolt[merleg]) and (not rendszamvolt[merleg]) then
    begin
      //mentés
     // lblrendszam_elso.caption:=snapshot('0');
     // lblrendszam_hatso.caption:=snapshot('1');
     case merleg of
       1:
          begin
            kepnev1 := snapshot('0');
            kepnev2 := snapshot('1');
          end;
       2:
          begin
            kepnev1 := snapshot('2');
            kepnev2 := snapshot('3');
          end;
     end;

      if rendszamleker then  iprendszamleker;
      rendszamvolt[merleg] := true;
      mentes;
      if Elso_Gomb_Meres_Utan=1 then btnElsoClick(Sender);
      { TODO -oKNZ -c : Ide kell a lampa befelé fordulas 2021. 10. 19. 17:57:26 }
      if Elso_lampa <> 0 then
      Lampakapcs(Elso_lampa, Lampa_Zold);
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
      if (tomeg > mintomeg) and ((elozotomeg[merleg] - 20 <= tomeg) and (elozotomeg[merleg] + 20 >= tomeg)) then
        nyugalmiszamlalo[merleg] := nyugalmiszamlalo[merleg] + 1
      else
        begin
          nyugalmiszamlalo[merleg] := 0;
          if (tomeg > mintomeg) and (not rendszamvolt[merleg]) then // a piros lampan athajtas miatt vettem ki and (ledLampa.Kind = lkGreenLight) then
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
              end
              else
              begin
                if PLC_Olvas(Infra_BE_Cim)=1 then meresirany:='BE'
                else if PLC_Olvas(Infra_KI_Cim)=1 then meresirany:='KI';
                PLC_Ir(Infra_BE_Cim, 0);
                PLC_Ir(Infra_KI_Cim, 0);
              end;

          end;
        end;

    if (tomeg < mintomeg) then
    begin
      nullszintvolt[merleg] := true;
      rendszamvolt[merleg] := false;
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
          end
          else
          begin
            PLC_Ir(Infra_BE_Cim, 0);
            PLC_Ir(Infra_KI_Cim, 0);
          end;
      { TODO -oKNZ -c : Ide kell a lampa kifelefordulas 2021. 10. 19. 17:58:03 }
      if (not (ledLampa.Kind = lkGreenLight))  then
      begin
        Lampakapcs(Elso_lampa, Lampa_Zold);
        Lampakapcs(Hatso_lampa, Lampa_Zold);
      end;
      meresirany:='-';
    end;
    elozotomeg[merleg] := tomeg;
  end;

 
  var i:Integer;

begin
  Rendszam_Lampa_Timer.Enabled := false;
  if automata_meres then
    for I := 1 to 4 do if mertertekek[i]<>'' then dolgozo(i);

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
      af.camlog('Panel törölve:'+F.Name+neve );
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
          af.camlog('Panel létrehozva:'+F.Name+neve );
         end;
      end;
   end;
  van_cam := True;
end;

function TFoF.Ping_teszt(IP:string): boolean;
var i:integer;
begin
  Result:=False;
  if UpperCase(IP)='LOCAL' then exit;

  if pingprobak=pingproba then
  begin
   StatusBar1.panels[3].text := 'PLC ping hiba!(P)';
   memlog.Lines.Insert(0,'PLC ping hiba!(P)');
   Exit;
  end;
  Inc(pingprobak);
  StatusBar1.panels[3].text := 'Ping teszt';
  memlog.Lines.Insert(0,'PLC teszt');
  Application.ProcessMessages;
  for I := 1 to Ping_varakozas do
  begin
    if PingHost(IP) then
    begin
      Result:=true;
      pingprobak:=1;
      Break
    end
    else Sleep(100)
  end;

end;

procedure TFoF.PLCsorosportbellts1Click(Sender: TObject);
begin
  kodF.ShowModal;
  if kodF.Kode.text = 'OK2023' then
  begin
    PLC_COMF.showmodal;
  end;
end;

function TFoF.PLC_Ir(cim, ertek: Integer): boolean;

begin
  if (vezerles_tipus <> 'PLC') then exit;

  mctPLC.Host := PLC_IP;
  if Ping_teszt(mctPLC.Host) then
  begin
    if mctPLC.WriteRegister(cim + 1, ertek) then     //A címhez hozzá kell adni egyet, mert így olvassa ki a helyes regisztert
    begin
      Result := True;
      StatusBar1.panels[3].text := 'Írt cím:' + Inttostr(cim) + ' Érték:' + Inttostr(ertek);
      memlog.Lines.Insert(0,StatusBar1.panels[3].text );
    end
    else
    begin
      Result := False;
      StatusBar1.panels[3].text := 'PLC írási hiba!';
      memlog.Lines.Insert(0,StatusBar1.panels[3].text );
    end;
  end
  else
    begin
      StatusBar1.panels[3].text := 'PLC kapcsolati hiba!(I)';
      memlog.Lines.Insert(0,StatusBar1.panels[3].text );
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
  if Ping_teszt(mctPLC.Host) then
  begin
    if mctPLC.ReadHoldingRegisters(cim + 1, blokk, Data) then  //A címhez hozzá kell adni egyet, mert így olvassa ki a helyes regisztert
    begin
      sLine := 'Olvasott cím:' + Inttostr(cim) + ' Érték:';
      for i := 0 to (blokk - 1) do
      begin
        sLine := sLine + IntToHex(Data[i], 4);
        StatusBar1.panels[3].text := sLine;
        memlog.Lines.Insert(0,StatusBar1.panels[3].text );
        Result := Data[i];
      end;

    end
    else
    begin
      StatusBar1.panels[3].text := 'PLC olvasási hiba!';
      memlog.Lines.Insert(0,StatusBar1.panels[3].text );
      Result := -1;
    end;
  end
  else
    begin
      StatusBar1.panels[3].text := 'PLC kapcsolati hiba(O)!';
      memlog.Lines.Insert(0,StatusBar1.panels[3].text );
      Result := -1;
    end;
end;

{ PCKommunikacio_thread }

procedure PCKommunikacio_thread.Execute;

  procedure PC_komm_rendszam;
  var inup: TFDQuery;
      rendszam1,rendszam2,kepnev1,kepnev2,sz,azon:string;
  begin
    rendszam1:=Copy(PC_kommunikacio,2,Pos(';', PC_kommunikacio)-2);
    sz:=Copy(PC_kommunikacio,Pos(';', PC_kommunikacio)+1,Length(PC_kommunikacio)-Pos(';', PC_kommunikacio)-1); //itt vágja le a #3-at
    rendszam2:=Copy(sz,1,Pos(';', sz)-1);
    sz:=Copy(sz,Pos(';', sz)+1,Length(sz)-Pos(';', sz));
    kepnev1:=Copy(sz,1,Pos(';', sz)-1);
    sz:=Copy(sz,Pos(';', sz)+1,Length(sz)-2);
    kepnev2:=sz;
    if ParamStr(1)='/RE' then ShowMessage(PortF.comPC_Kommunikacio.Port+#13+#10+#13+#10+rendszam1) ;

    inup:=TFDQuery.Create(Application);
    with inup do
    begin
      close;
      Connection:=af.Kapcs;
      SQL.Clear;
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO nyitbe');
      SQL.Add('(storno,rendszam,rendszam2,');
      SQL.Add('erkdatum,erkido,tavdatum,tavido,felhasznalo,eazon,');
      SQL.Add('merlegelo,kepnev1,kepnev2');
      SQL.Add(')');
      SQL.Add('VALUES(:storno,:rendszam,:rendszam2,');
      SQL.Add(':erkdatum,:erkido,:tavdatum,:tavido,:felhasznalo,:eazon,');
      SQL.Add(':merlegelo,:kepnev1,:kepnev2');

      SQL.Add(');');
      azon:=StringReplace(StringReplace(DateTimeToStr(Now), '.', '', [rfReplaceAll]), ':', '', [rfReplaceAll])+IntToStr(hibaszamlalo);
      //ShowMessage(sql.Text);
      //ParamByName('sorszam').AsString:=sorsz;
      ParamByName('storno').AsString:='';
      ParamByName('rendszam').AsString:=rendszam1;
      ParamByName('rendszam2').AsString:=rendszam2;
      ParamByName('kepnev1').AsString:=kepnev1;
      ParamByName('kepnev2').AsString:=kepnev2;
      ParamByName('merlegelo').AsString:='';
      ParamByName('erkdatum').AsDate:=Date;
      ParamByName('erkido').AsTime:=Time;
      ParamByName('tavdatum').AsDate:=Date;
      ParamByName('tavido').AsTime:=Time;
      ParamByName('felhasznalo').AsString:=felhnev;
      ParamByName('eazon').AsString:=azon;
      ExecSQL;
    end;
    inup.Free;
    Synchronize(kijelez);


  end;


begin
  inherited;
  repeat
    if PC_kommunikacio<>'' then
    begin
      PC_komm_rendszam;
      PC_kommunikacio:='';
    end;
    Application.ProcessMessages;
    Sleep(100);
  until programvege;

end;

procedure PCKommunikacio_thread.kijelez;
begin
   if (ideiglenes_latszik) {and (Screen.ActiveForm.Name='FoF')} then Af.NyitbeQ.Refresh;
end;

{ Rendszam_lampa_thread }

procedure Rendszam_lampa_thread.Execute;
var i,tomeg:integer;
    rendszam1,rendszam2,kepnev1,kepnev2: string;

  procedure mentes;
  var inup: TFDQuery;
      sz,azon:string;
      i:integer;

  begin
    if rendszamleker then
    begin
      rendszam1:=Rendszamtomb[thmerleg,1].rendszam;
      rendszam2:=Rendszamtomb[thmerleg,2].rendszam;
      kepnev1:=Rendszamtomb[thmerleg,1].kep;
      kepnev2:=Rendszamtomb[thmerleg,2].kep;;
    end;
    inup:=TFDQuery.Create(Application);
    with inup do
    begin
      close;
      Connection:=af.Kapcs;
      SQL.Clear;
      Close;
      SQL.Clear;
      SQL.Add('Insert into forgalom ');
      SQL.Add('(Datum,Ido,Rendszam,Rendszam2,Irany,Kod,Szallitolev,Tomeg,Kepnev1,Kepnev2,Parositott,Nem_kell,kezi)');
      SQL.Add(' VALUES(:Datum,:Ido,:Rendszam,:Rendszam2,:Irany,:Kod,:Szallitolev,:Tomeg,:Kepnev1,:Kepnev2,:Parositott,:Nem_Kell,:kezi) ');
      ParamByName('Datum').AsDate := Date;
      ParamByName('Ido').AsTime := Time;
      ParamByName('Rendszam').AsString := rendszam1;
      ParamByName('Rendszam2').AsString := rendszam2;
      ParamByName('Irany').AsString := meresirany;//'-';
      ParamByName('Kod').AsString := '0';
      ParamByName('Szallitolev').AsString := '0';
      ParamByName('Tomeg').AsInteger := maxtomeg[thmerleg];
      ParamByName('Kepnev1').AsString := kepnev1;
      ParamByName('Kepnev2').AsString := kepnev2;
      ParamByName('Parositott').AsInteger := 0;
      ParamByName('Nem_Kell').AsInteger := 0;
      ParamByName('kezi').AsBoolean:=False;
      //showmessage(SQL.Text);
      ExecSQL;
    end;
    inup.Free;
    if rendszamleker then
      for i := 1 to 2 do
        if  (RendszamTomb[thmerleg,i].fut) then ThRendszam_keres[thmerleg,i].Terminate;

    maxtomeg[thmerleg]:=0;
    mentesvolt[thmerleg]:=true;
  end;

begin
  inherited;
  rendszam1:=''; rendszam2:='';kepnev1:='';kepnev2:='';

  repeat
    thElet[thmerleg]:=thElet[thmerleg]+1;
    Synchronize(mukodtet);
    try
      tomeg := StrToInt(mertertekek[thmerleg]);
      if (tomeg >= 0) or (tomeg < -10) then
      begin
        if tomeg>mintomeg then
        begin
          //A jármû ráhalad a mérlegre
          if tomeg>elozotomeg[thmerleg]+20 then
          begin
            elozotomeg[thmerleg]:=tomeg;
            maxtomeg[thmerleg]:=tomeg;
            nyugalmiszamlalo[thmerleg]:=0;
            //iranymehhatarozas
            if rendszamleker then
              for i := 1 to 2 do
                if (RendszamTomb[thmerleg,i].van_kamera) and (not RendszamTomb[thmerleg,i].fut) and (not mentesvolt[thmerleg]) then
                begin
                   ThRendszam_keres[thmerleg,i]:=Rendszam_keres_thread.Create(True);
                   ThRendszam_keres[thmerleg,i].thmerleg:=thmerleg;
                   ThRendszam_keres[thmerleg,i].thkamera:=i;
                   RendszamTomb[thmerleg,i].fut:=true;
                   ThRendszam_keres[thmerleg,i].Resume;
                end;
          end
          else
            //A jármû megállt a mérlegen
            if (tomeg<=elozotomeg[thmerleg]+20) and (tomeg>=elozotomeg[thmerleg]-20) then
            begin
              nyugalmiszamlalo[thmerleg]:=nyugalmiszamlalo[thmerleg]+1;
              if nyugalmiszamlalo[thmerleg]>nyugvovarakozas then
              begin
                //if (rendszamleker) and (not rendszamvolt[thmerleg]) then begin {rendszámlekérés mindenképpen képpel} end;
                if (not rendszamleker) and (lejatszas) then
                begin
                  kepnev1 := Fof.snapshot(IntToStr((thmerleg-1)*2));
                  kepnev2 := Fof.snapshot(IntToStr((thmerleg-1)*2+1));
                end;
                if not mentesvolt[thmerleg] then mentes;
              end;
            end
            else //a tömeg csökken
              begin
                elozotomeg[thmerleg]:=tomeg;
                nyugalmiszamlalo[thmerleg]:=0;
                if (not rendszamleker) and (lejatszas) and (kepnev1='') then
                begin
                  kepnev1 := Fof.snapshot(IntToStr((thmerleg-1)*2));
                  kepnev2 := Fof.snapshot(IntToStr((thmerleg-1)*2+1));
                end;
              end;
        end
        else  //ha a tömeg min alatt van, de volt rajta valami akkor mentsen
          if  maxtomeg[thmerleg]<>0 then
          begin
            if not mentesvolt[thmerleg] then mentes;
            mentesvolt[thmerleg]:=false;
          end
          else
          begin
            mentesvolt[thmerleg]:=false;
          end;


      end
      else  tomeg := -1;
    except
      tomeg := -1;
    end;

    for i := 1 to 2 do
    begin
      Application.ProcessMessages;
      Sleep(100);
    end;
  until programvege;
end;

procedure Rendszam_lampa_thread.mukodtet;
var s:string;
begin
  s:='';
  if RendszamTomb[thmerleg,1].fut then s:=' 1. rsz.fut';
  if RendszamTomb[thmerleg,2].fut then s:=s+' 2. rsz.fut';
  if Mentesvolt[thmerleg] then  s:=s+' Mentve'
  else  s:=s+' Nincs mentés';



  if felhnev='Programozó' then TLabel(Fof.FindComponent('lblThElo'+thmerleg.ToString)).Visible:=True;
  TLabel(Fof.FindComponent('lblThElo'+thmerleg.ToString)).caption:=
    ThElet[thmerleg].ToString+' '+nyugalmiszamlalo[thmerleg].ToString+s;
end;

{ Rendszam_keres_thread }

procedure Rendszam_keres_thread.Execute;
var kilep:boolean;

 function kereskuld:boolean;
    var
      sza: integer;
      kepszam:string;
    begin
      SocketTomb[thmerleg,thkamera].rendszam:='';
      SocketTomb[thmerleg,thkamera].kep:='';
      if (thmerleg=1) and  (thkamera=1) then kepszam:='1'
      else
        if (thmerleg=1) and  (thkamera=2) then kepszam:='2'
        else
          if (thmerleg=2) and  (thkamera=1) then kepszam:='3'
          else
            if (thmerleg=2) and  (thkamera=2) then kepszam:='4';

      FoF.ClientSocket.Socket.SendText('<H' + kepszam + '=1>');
      sza := 0;
     repeat
        Sleep(100);
        Application.ProcessMessages;
        sza := sza + 1;
      until (sza > 10) or (SocketTomb[thmerleg,thkamera].rendszam <> '');
      szoveg:=SocketTomb[thmerleg,thkamera].rendszam;
      Result:=false;
      //Itt van a kiértékelõ rész
      // a még nincs rendszám beírja az elsõ nem üres adatait
      if (RendszamTomb[thmerleg,thkamera].rendszam='')  then
      begin
        RendszamTomb[thmerleg,thkamera].rendszam:=SocketTomb[thmerleg,thkamera].rendszam;
        RendszamTomb[thmerleg,thkamera].kep:=SocketTomb[thmerleg,thkamera].kep;
      end
      else
      // Ha már volt ismeretlen rendszám , akkor beírja az újabb adatait, így mindig az utolsó ismeretlen lesz letárolva
        if (RendszamTomb[thmerleg,thkamera].rendszam[1]='_') and (SocketTomb[thmerleg,thkamera].rendszam<>'') then
        begin
          RendszamTomb[thmerleg,thkamera].rendszam:=SocketTomb[thmerleg,thkamera].rendszam;
          RendszamTomb[thmerleg,thkamera].kep:=SocketTomb[thmerleg,thkamera].kep;
        end
        else
        //Ha már volt helyesnek tûnõ rendszám letárolva és nem egyezik meg akkor kelllene megvizsálni esetleg
        //de most beírom az újabbat
          if (RendszamTomb[thmerleg,thkamera].rendszam[1]<>'_')
             and (SocketTomb[thmerleg,thkamera].rendszam<>'') and ( SocketTomb[thmerleg,thkamera].rendszam[1]<>'_')
             and (RendszamTomb[thmerleg,thkamera].rendszam<>SocketTomb[thmerleg,thkamera].rendszam) then
          begin
            RendszamTomb[thmerleg,thkamera].rendszam:=SocketTomb[thmerleg,thkamera].rendszam;
            RendszamTomb[thmerleg,thkamera].kep:=SocketTomb[thmerleg,thkamera].kep;
          end
          else
            if RendszamTomb[thmerleg,thkamera].rendszam=SocketTomb[thmerleg,thkamera].rendszam then  Result:=True;

    end;


begin
  inherited;
  kilep:=false;
  RendszamTomb[thmerleg,thkamera].rendszam:='';
  RendszamTomb[thmerleg,thkamera].kep:='';
  while (not terminated) and (not kilep) do
  begin
    Synchronize(kijelez);
    kilep:=kereskuld;
  end;
  RendszamTomb[thmerleg,thkamera].fut:=false;
end;

procedure Rendszam_keres_thread.kijelez;
begin
  if felhnev='Programozó' then TLabel(Fof.FindComponent('lblThRendszam'+thkamera.ToString)).Visible:=True;
  TLabel(Fof.FindComponent('lblThRendszam'+thKamera.ToString)).caption:=szoveg+' '+nyugalmiszamlalo[thmerleg].ToString;;
end;

end.


