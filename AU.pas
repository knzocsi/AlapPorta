unit AU;

interface
{
Mérlegjegy típusok resorce-ban
0-alap mérlegjegy,duplex
1- SA-HO-KA
}


uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  JvComponentBase, JvAppStorage, JvAppIniStorage,Vcl.Forms,Dialogs,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.ExtCtrls, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script,System.hash, JvMemoryDataset,
  System.variants,System.inifiles,Winapi.Windows, frxClass, frxDBSet,
  frxExportPDF,System.strUtils, FireDAC.VCLUI.Script, FireDAC.Comp.UI,TlHelp32,
  Xml.XMLDoc,System.ioUtils,Vcl.StdCtrls, frxExportBaseDialog,System.DateUtils,
  Winapi.ShellAPI,System.Types,System.Win.ComObj,Excel2000, System.Actions,
  Vcl.ActnList, Vcl.StdActns,reinit;

 
  const ini_nev='porta_beallit.ini';
  joga: array [1..20] of string=
   ('Dolgozó felvitele','Dolgozó módosítása','Mérlegjegy módosítás','Mérlegjegy készítés','Mérlegelõk módosítása',
   'Mérés','Kezdõ készlet felv.','Kézi mérés','Táramegadás','',
   '','', '','','',
   '','','','','');

  Lampa_Zold=0;
  Lampa_Piros=1;


  Maxinfra=4; // ha változás van, akkor a hardver_beall formon az eszkoz kombóban is kell változtatmi
  Maxmerleg=4;  // ha változás van, akkor a hardver_beall formon az eszkoz kombóban is kell változtatmi
  Maxkamera=4 ; // ha változás van, akkor a hardver_beall formon az eszkoz kombóban is kell változtatmi

type
   esemeny_rec=record
    ev:word;
    ho:word;
    nap:word;
    ora:word;
    perc:Word;
    masodperc:word;
    evs:string;
    hos:string;
    naps:string;
    oras:string;
    kamera_szam:word;
    datum:TDateTime;
    rendszam:string[20];
    kepnev:string;
    id:integer;
  end;

  Tautomata_mjegy_rec=class(TObject)
     Fs_Id : Integer;
     Fs_Mjegysorszam: string;
     Fs_Erkdatum: TDate;
     Fs_Erkido: TTime;
     Fs_Tavdatum: TDate;
     Fs_Tavido: TTime;
     Fs_Rendszam: string;
     Fs_Betomeg:Integer;
     Fs_Kitomeg:Integer;
     Fs_Netto:Integer;
     Fs_Parositott:Boolean;
     Fs_Irany: string;
     Fs_Tara:Integer;
  public
     procedure mjegy_rec_betoltese_nyomtatasa(Parositva:Boolean;Auto_mjegyQ: TFDQuery);
     procedure mjegy_rec_ures;
  published
   property Id: integer read Fs_Id
        write Fs_Id;
    property Mjegysorszam: string read Fs_Mjegysorszam
        write Fs_Mjegysorszam;
    property Erkdatum: TDate read Fs_Erkdatum
        write Fs_Erkdatum;
    property Erkido: TTime read Fs_Erkido
        write Fs_Erkido;
    property Tavdatum: TDate read Fs_Tavdatum
        write Fs_Tavdatum;
    property Tavido: TTime read Fs_Tavido
        write Fs_Tavido;
    property Rendszam: string read Fs_Rendszam
        write Fs_Rendszam;
    property Betomeg: integer read Fs_Betomeg
        write Fs_Betomeg;
    property Kitomeg: integer read Fs_Kitomeg
        write Fs_Kitomeg;
    property Netto: integer read Fs_Netto
        write Fs_Netto;
    property Parositott: Boolean read Fs_Parositott
        write Fs_Parositott;
    property Irany: string read Fs_Irany
        write Fs_Irany;
    property Tara: integer read Fs_Tara
        write Fs_Tara;
  end;

  Auto_mjegy_Thread  = class(TThread)
  protected
    procedure Execute; override;
  end;

  Tmjegy_rec_nyom=class(TObject)
     Fs_Id : Integer;
     Fs_Mjegysorszam: string;
     Fs_Psz : Integer;
     Fs_Storno:Boolean;

     Fs_Tulaj_nev: String;
     Fs_Tulaj_cime: string;
     Fs_Tulaj_adosz: string;
     Fs_Tulaj_cjsz: string;
     Fs_Tulaj_telefon: string;

     Fs_Partner1_felirat: string;
     Fs_Partner1_nev: string;
     Fs_Partner1_cim: string;
     Fs_Partner2_felirat: string;
     Fs_Partner2_nev: string;
     Fs_Partner2_cim: string;
     Fs_Partner3_felirat: string;
     Fs_Partner3_nev: string;
     Fs_Partner3_cim: string;

     Fs_Ekaer: string;
     Fs_Szallev: string;
     Fs_Szarmazasi_hely: string;
     Fs_Megjegyzes: string;

     Fs_Rendszam: string;
     Fs_Erkdatum: TDate;
     Fs_Erkido: TTime;
     Fs_Tavdatum: TDate;
     Fs_Tavido: TTime;
     Fs_Irany: string;

     Fs_Termek_kod: string;
     Fs_Termek_nev: string;

     Fs_Merlegkezelo: string;

     Fs_Nedvesseg_latszik: Boolean;
     Fs_Alapnedv: string;
     Fs_Nedv:string;
     Fs_Nedvlevon: string;

     Fs_Tisztasag_latszik: Boolean;
     Fs_Tisztasag: string;
     Fs_Szemet_levon: string;

     Fs_Tort_latszik: Boolean;
     Fs_Tort: string;
     Fs_Tort_tomeg: string;

     Fs_Hekto_latszik: Boolean;
     Fs_Hekto: string;

     Fs_Brutto:string;
     Fs_Tara:string;
     Fs_Sz_netto:string;
     Fs_Netto:string;

     Fs_Termek_ar:string;

     Fs_Tomeg_levon_ny: string;
     Fs_Tomeg_levon_szoveg: string;

     Fs_Parositott:Boolean;

     Fs_Siker_latszik: Boolean;
     Fs_Siker: string;
     Fs_Siker_tomeg: string;

     Fs_Tisztitasi_dij_rec:string;
     Fs_Szaritasi_dij_rec:string;

     Fs_Ertek:string;

  public
//     procedure mjegy_rec_betoltese_nyomtatasa(Parositva:Boolean);
     procedure mjegy_rec_nyom_ures;
  published
   property Id: integer read Fs_Id
        write Fs_Id;
    property Mjegysorszam: string read Fs_Mjegysorszam
        write Fs_Mjegysorszam;
    property Psz: integer read Fs_Psz
        write Fs_Psz;
    property Storno: Boolean read Fs_Storno
        write Fs_Storno;
    property Tulaj_nev: string read Fs_Tulaj_nev
        write Fs_Tulaj_nev;
    property Tulaj_cime: string read Fs_Tulaj_cime
        write Fs_Tulaj_cime;
    property Tulaj_adosz: string read Fs_Tulaj_adosz
        write Fs_Tulaj_adosz;
    property Tulaj_cjsz: string read Fs_Tulaj_cjsz
        write Fs_Tulaj_cjsz;
    property Tulaj_telefon: string read Fs_Tulaj_telefon
        write Fs_Tulaj_telefon;

    property Partner1_felirat: string read Fs_Partner1_felirat
        write Fs_Partner1_felirat;
    property Partner1_nev: string read Fs_Partner1_nev
        write Fs_Partner1_nev;
    property Partner1_cim: string read Fs_Partner1_cim
        write Fs_Partner1_cim;
    property Partner2_felirat: string read Fs_Partner2_felirat
        write Fs_Partner2_felirat;
    property Partner2_nev: string read Fs_Partner2_nev
        write Fs_Partner2_nev;
    property Partner2_cim: string read Fs_Partner2_cim
        write Fs_Partner2_cim;
    property Partner3_felirat: string read Fs_Partner3_felirat
        write Fs_Partner3_felirat;
    property Partner3_nev: string read Fs_Partner3_nev
        write Fs_Partner3_nev;
    property Partner3_cim: string read Fs_Partner3_cim
        write Fs_Partner3_cim;

    property Ekaer: string read Fs_Ekaer
        write Fs_Ekaer;
    property Szallev: string read Fs_Szallev
        write Fs_Szallev;
    property Szarmazasi_hely: string read Fs_Szarmazasi_hely
        write Fs_Szarmazasi_hely;
    property Megjegyzes: string read Fs_Megjegyzes
        write Fs_Megjegyzes;
    property Irany: string read Fs_Irany
        write Fs_Irany;
    property Termek_kod: string read Fs_Termek_kod
        write Fs_Termek_kod;
    property Termek_nev: string read Fs_Termek_nev
        write Fs_Termek_nev;
    property Merlegkezelo: string read Fs_Merlegkezelo
        write Fs_Merlegkezelo;

    property Erkdatum: TDate read Fs_Erkdatum
        write Fs_Erkdatum;
    property Erkido: TTime read Fs_Erkido
        write Fs_Erkido;
    property Tavdatum: TDate read Fs_Tavdatum
        write Fs_Tavdatum;
    property Tavido: TTime read Fs_Tavido
        write Fs_Tavido;
    property Rendszam: string read Fs_Rendszam
        write Fs_Rendszam;

    property Nedvesseg_latszik: Boolean read Fs_Nedvesseg_latszik
        write Fs_Nedvesseg_latszik;
    property Alapnedv: string read Fs_Alapnedv
        write Fs_Alapnedv;
    property Nedv: string read Fs_Nedv
        write Fs_Nedv;
    property Nedvlevon: string read Fs_Nedvlevon
        write Fs_Nedvlevon;
    property Tisztasag_latszik: Boolean read Fs_Tisztasag_latszik
        write Fs_Tisztasag_latszik;
    property Tisztasag: string read Fs_Tisztasag
        write Fs_Tisztasag;
    property Szemet_levon: string read Fs_Szemet_levon
        write Fs_Szemet_levon;
    property Tort_latszik: Boolean read Fs_Tort_latszik
        write Fs_Tort_latszik;
    property Tort: string read Fs_Tort
        write Fs_Tort;
    property Tort_tomeg: string read Fs_Tort_tomeg
        write Fs_Tort_tomeg;
    property Hekto_latszik: Boolean read Fs_Hekto_latszik
        write Fs_Hekto_latszik;
    property Hekto: string read Fs_Hekto
        write Fs_Hekto;
    property Brutto: string read Fs_Brutto
        write Fs_Brutto;
    property Tara: string read Fs_Tara
        write Fs_Tara;
    property Sz_netto: string read Fs_Sz_netto
        write Fs_Sz_netto;
    property Netto: string read Fs_Netto
        write Fs_Netto;
    property Termek_ar: string read Fs_Termek_ar
        write Fs_Termek_ar;
    property Tomeg_levon_ny: string read Fs_Tomeg_levon_ny
        write Fs_Tomeg_levon_ny;
    property Tomeg_levon_szoveg: string read Fs_Tomeg_levon_szoveg
        write Fs_Tomeg_levon_szoveg;

    property Parositott: Boolean read Fs_Parositott
        write Fs_Parositott;

    property Siker_latszik: Boolean read Fs_Siker_latszik
        write Fs_Siker_latszik;
    property Siker: string read Fs_Siker
        write Fs_Siker;
    property Siker_tomeg: string read Fs_Siker_tomeg
        write Fs_Siker_tomeg;
    property Tisztitasi_dij_rec: string read Fs_Tisztitasi_dij_rec
        write Fs_Tisztitasi_dij_rec;
    property Szaritasi_dij_rec: string read Fs_Szaritasi_dij_rec
        write Fs_Szaritasi_dij_rec;
    property Ertek: string read Fs_Ertek
        write Fs_ertek;
  end;

  TAF = class(TDataModule)
    ForgalomDS: TDataSource;
    ForgalomQ: TFDQuery;
    Forgalom_Timer: TTimer;
    ForgTimT: TFDTable;
    ForgTimQ: TFDQuery;
    ParositottT: TFDTable;
    ParositottQ: TFDQuery;
    ParositottDS: TDataSource;
    DB_Create: TFDScript;
    felhasznalok_jogai: TJvMemoryData;
    FelhaszQ: TFDQuery;
    FelhaszQDs: TDataSource;
    Q1: TFDQuery;
    felhasznalok_jogaif_id: TIntegerField;
    felhasznalok_jogaijog_neve: TStringField;
    felhasznalok_jogaijog: TBooleanField;
    felhasznalok_jogaiID: TIntegerField;
    felhasznalok_jogaijszam: TStringField;
    felhasznalok_jogaiDs: TDataSource;
    Kapcs: TFDConnection;
    frxmerleg: TfrxReport;
    SszQ: TFDQuery;
    FrxmjegyList: TfrxReport;
    DBFrxmjegyList: TfrxDBDataset;
    PDFExportmjegy: TfrxPDFExport;
    merlegkezQ: TFDQuery;
    merlegkezQDs: TDataSource;
    ModScript: TFDScript;
    ModScriptDialog: TFDGUIxScriptDialog;
    KeszletQDs: TDataSource;
    KeszletQ: TFDQuery;
    frxKeszlet: TfrxReport;
    frxDBDKeszlet: TfrxDBDataset;
    fdgxscrptdlg1: TFDGUIxScriptDialog;
    taraQ: TFDQuery;
    Automentes: TTimer;
    FoglaltQ: TFDQuery;
    KeszletezesProc: TFDStoredProc;
    Partner_keszleteQ: TFDQuery;
    rktetm: TJvMemoryData;
    rktetmtermek_id: TIntegerField;
    rktetmtermek_kod: TStringField;
    rktetmtermek_nev: TStringField;
    rktetmmenny: TFloatField;
    rktetmtort: TBooleanField;
    rktetmDs: TDataSource;
    frxDBDrakszall: TfrxDBDataset;
    frxrakszall: TfrxReport;
    Q2: TFDQuery;
    rszQ: TFDQuery;
    Sample_Kapcs: TFDConnection;
    SampleQ1: TFDQuery;
    ZarolQ: TFDQuery;
    ZarolvaQ: TFDQuery;
    frxtesztrep: TfrxReport;
    TermekT: TFDTable;
    TermekTID: TFDAutoIncField;
    TermekTKod: TWideStringField;
    TermekTNev: TWideStringField;
    TermekTitj: TWideStringField;
    TermekTme: TWideStringField;
    TermekTar: TBCDField;
    TermekTafa: TBCDField;
    TermekTegysegtomeg: TBCDField;
    TermekTalapnedv: TBCDField;
    TermekTkerekites: TBooleanField;
    TermekTkukorica: TBooleanField;
    TermekTb_nedv: TBooleanField;
    TermekTb_feherje: TBooleanField;
    TermekTb_eses: TBooleanField;
    TermekTb_tisztasag: TBooleanField;
    TermekTb_tort: TBooleanField;
    TermekTb_olaj: TBooleanField;
    TermekTb_buzaminoseg: TBooleanField;
    TermekTb_hekto: TBooleanField;
    TermekTtipus_id: TIntegerField;
    TermekTewc: TWideStringField;
    TermekDS: TDataSource;
    PartnerT: TFDTable;
    PartnerDS: TDataSource;
    autotorzs: TTimer;
    CfgT: TFDTable;
    CfgTDs: TDataSource;
    IrszScript: TFDScript;
    irszQ: TFDQuery;
    NyitbeQ: TFDQuery;
    NyitbeDS: TDataSource;
    tipusQDs: TDataSource;
    tipusQ: TFDQuery;
    tipusQid: TAutoIncField;
    tipusQnev: TWideStringField;
    HardverQ: TFDQuery;
    HardverDS: TDataSource;
    HWKapcs: TFDConnection;
    MentesKapcs: TFDConnection;
    Auto_mjegy_kapcs: TFDConnection;
    Auto_mjegy_Trans: TFDTransaction;
    Auto_mjegyQ: TFDQuery;
    Auto_mjegyINUPQ: TFDQuery;
    frxPDFTeszthez: TfrxPDFExport;
    dijkatQ: TFDQuery;
    FDQuery1: TFDQuery;
    FDQuery1Term_id: TLongWordField;
    FDQuery1Term_kod: TWideStringField;
    FDQuery1Term_nev: TWideStringField;
    FDQuery1Tarolo_id: TIntegerField;
    FDQuery1Tarolo_nev: TWideStringField;
    FDQuery1partner_id: TIntegerField;
    FDQuery1Partner_kod: TWideStringField;
    FDQuery1Partner_nev: TWideStringField;
    FDQuery1felhasznalo_id: TIntegerField;
    FDQuery1Felhasznalo_nev: TWideStringField;
    FDQuery1modositva: TDateTimeField;
    FDQuery1tort: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure Forgalom_TimerTimer(Sender: TObject);
    procedure felhasznalok_jogaijogChange(Sender: TField);
    procedure frxmerlegAfterPrint(Sender: TfrxReportComponent);
    procedure KapcsBeforeCommit(Sender: TObject);
    procedure KapcsLost(Sender: TObject);
    procedure AutomentesTimer(Sender: TObject);
    procedure autotorzsTimer(Sender: TObject);
    procedure frissites(mappa:string);


  private
    { Private declarations }
    LCID: Cardinal;
    FExcel: TExcelApplication;
    FworkBook: TExcelWorkbook;
    FworkSheet: TExcelWorksheet;

    FExcel2: TExcelApplication;
    FworkBook2: TExcelWorkbook;
    FworkSheet2: TExcelWorksheet;


    procedure ini_kezel;
    procedure kapcs_ini_kezel;
    procedure GetVerisonNumber(var Fover, Alver, Build: Integer; File_ut: Pchar);


  public

    function esemeny_kibont(idopont: Tdatetime; fnev: string):esemeny_rec;
    function nullak(szam, hossz: integer): string;
    function kepszures(im:TImage):string;
    function kepkeres(im:TImage):string;
    function Transform(Value : String) : String;
    procedure jogok_beolvasasa;
    procedure programozo_letrehozasa;
    function van_joga(jogszam:string):Boolean;
    function bizszam(length: integer; pad: char;kt,etag:string;tulid:integer): string;
    function kod(length: integer; pad: char;tbl:string): string;
    procedure modok_vegrehajt;
    procedure keszletez(tid,tarid, pid:Integer; tort:ShortInt;m:Extended);
    function KillTask(ExeFileName: string): Integer;
    procedure soapXML_letrehozasa(id:Integer);
    procedure script_log(uzenet: string);
    procedure restart_log;
    procedure psz_plusz(medi,mennyi:Integer);
    function tara(rsz:string):Integer;
    procedure soclog(S:string);
    function nev_foglalt(ide:Integer; neve, tbl: String): Boolean;
    function kod_foglalt(ide:Integer;kodja,tbl:String):Boolean;
    function partner_kesz(tid,tarid, pid:Integer; tort:ShortInt):Extended;
    procedure rendszam_combok(combobox:TComboBox);
    function datum_szoveg(datum:TDateTime;idokell:boolean):string;
    procedure merlegjegy_mezgaz;
    procedure tabla_zarol(tabla:string);
    function tabla_zarolva(tabla:string):Integer;
    procedure tabla_kizar(tabla:string);
    procedure merlegjegy_tipus_betoltese;
    procedure merlegjegy_tipus_betoltese_clean(iranya:string);
    procedure merlegjegy_tomeglevonas;
    procedure camlog(S:string);
    procedure tomeglog(S:string);
    procedure rendez(ds: TFDDataSet; fname:string);
    procedure torzs_import_xlsx;
    procedure torzs_import_csv;
    procedure import_log(S:string);
    function cfg_kezel(magyarazat,csoport,tulajdonsag,tipus:String;ertek:Variant):Variant;
    procedure fo_szazalek(brutto,tara,szemet_szazalek,akt_nedvesseg_szazalek,alap_nedvesseg_szazalek,
                          tort_szemek_szazalek,levonando_tomeg:Extended; kukorica:Boolean);
    procedure nyitbe_torles(id,torles:integer);
    procedure Regiek_torlese;
    procedure auto_mjegy_tread_run;
    procedure auto_teszt;
    procedure dijak_lekerese(pid,tid:Integer);
    procedure merlegjegy_lista_tipus_betoltese;
    function ford(keresett: string):string;
    { Public declarations }
  end;

var
  AF: TAF;
  visszanap:integer;
  port,szerver,adatbazis,user,passwd,telephely,rtspURL,felhnev,PLC_IP,meresirany:string;
  f_ide,utolso_sql,mentesido:Integer;
  jogmod,rendszamleker,nagykamera,mezgaz,kozponti_prg:Boolean;
  bit:integer;
  konyvtar,verzio,tulajcime,tulajneve,adosz,pdfmappa,kuj,ktj,vezerles_tipus,kepmappa:string;
  sorompo_vezerles:boolean;
  nyugvovarakozas,Elso_lampa,Hatso_lampa,mintomeg:integer;
  Sorompo_nyit_cim_BE,Sorompo_Infra_Hiba_cim_BE,sorompo_infra_hibas_BE,Sorompo_Nyitas_Volt_Cim_BE:integer;
  Sorompo_nyit_cim_KI,Sorompo_Infra_Hiba_cim_KI,sorompo_infra_hibas_KI,Sorompo_Nyitas_Volt_Cim_KI,Ping_varakozas,Merleg_Nullaz_Cim:integer;
  lehajtasivarakozas:integer;
  rtspURLs: array [0..3] of string;
  soapXML:string;
  lejatszas,nyelvvalaszt: Boolean;
  libre_mappa:string;
  duplex_mjegy,automata_meres,nedvesseg_beolvasasa,automata_kezelo,programvege,tomeg_levon:Boolean;
  IOmodul_van:boolean;
  IOmodul_IP:string;
  IOmodul_regiszter_iras1:integer;
  bizkibocsajto_id,Elso_Gomb_Varakozas,alap_tarolo,alap_irany,Elso_Gomb_Meres_Utan:Integer;
  Elso_Gomb_Szoveg,Elso_Gomb_Tipus,ekaer_felhasz,ekaer_jsz,
  ekaer_mappa,ekaer_csk,kpmappa,merleg_neve,torzs_import_mappa:String;
  Merlegjegy_tipus,alap_atvevo,alap_elado,lado,pingproba,kamproba,Merlegjegy_lista_tipus:Integer;
  Infra_Figyeles,automata_torzsimport,termenyszaritas_elszamolasa,dijszab_csoportok:boolean;
  Infra_BE_Cim,Infra_KI_Cim:integer;
  torzsiport_folyamatban: Boolean=False;
  merlegjegy_modositas: Boolean;
  kijelzo_tipus,moxa_ip1,moxa_ip2,moxa_ip3:string;
  moxa_port:integer;
  tisztitasi_dij,szaritasi_dij,tarolasi_dij,be_tarolasi_dij,
  ki_tarolasi_dij,szallitasi_dij:Extended;
  //szazalekhoz
  szemet_tomeg, nedvesseg_szazalek,nedvesseg_vesztes_tomege,
  nyers_tort_szemek_tomege,tisztitott_nyers_netto_tomege,
  tisztitott_nyers_netto_tomege_tortel, nyers_netto_tomege,
  szaritott_tort_szemek_tomege,szaritott_netto_tomege,akt_szar_dij, akt_tiszt_dij: Extended;
  ideiglenes_latszik,forgalom_latszik,taramegadas,Hivoszamhasznalat:boolean;
  Regi_hardver_beallitas:boolean;
  PC_Szam:string;
  aktualis_merlegszam,kepernyo_meretarany:integer;
  szabalyos_merlegen_tartozkodas_figyeles:boolean;
  Masolas_utvonala,Kepek_Mappa,Utolso_futtatas:string;
  //ha true elindul a tead
  Soap_aktiv: Boolean=False;
  Automata_irany_meghatarozas:boolean;
  Automata_parositas:boolean;
  Automata_merlegjegy, Automata_merlegjegy_parositaskor:Boolean;
  Automata_mjegy_Rec : Tautomata_mjegy_rec;
  Automata_mjegy_nyom_sulyhatar:Integer=0;

  Mjegy_nyom_rec: Tmjegy_rec_nyom;

  Automata_mjegy_thread: Auto_mjegy_Thread;

  fuvarozo_merlegjegyen: Boolean=False;

  Clean_way: Boolean=False;

  szarmazasi_hely_latszik: Boolean=False;

  Ftp_feltoltes: Boolean=False;
  Automata_Ftp_feltoltes: Boolean=False;
  Ftp_tavoli_mappa: string;
  nyomtatas_szamlalo:Integer=2;
  //0-hun, 1-eng
  nyelv_index:Integer=0;

implementation
uses my_sqlU,MjegyListaU,NezetU,SQL_text,LibreExcelU,VarakozasU, FoU,PortU,
     DMSoapU, FordU ;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


function TAF.nullak(szam, hossz: integer): string;
var s:string;
begin
  s:=szam.ToString;
  while Length(s)<hossz do s:='0'+s;
  Result:=s;
end;

procedure TAF.nyitbe_torles(Id,torles: integer);
var muveletQ:TFDQuery;
begin
  muveletQ:=TFDQuery.Create(Application);
  with muveletQ do
  begin
    close;
    Connection:=Kapcs;
    SQL.Clear;
    SQL.Add('UPDATE nyitbe SET Torolve='+torles.ToString);
    SQL.Add('WHERE ID='+ID.ToString);
    ExecSQL;
    Free;
  end;
end;

function TAF.esemeny_kibont(idopont: Tdatetime; fnev: string):esemeny_rec;
var ev,ho,nap,ora,perc,masodperc,ms:word;
    datum,ido:Tdatetime;
    esemeny:esemeny_rec;

begin
  if fnev='' then
  begin
    DecodeDate(idopont,ev,ho,nap);
    DecodeTime(idopont,ora,perc,masodperc,ms);
    esemeny.ev:=ev;
    esemeny.ho:=ho;
    esemeny.nap:=nap;
    esemeny.ora:=ora;
    esemeny.perc:=perc;
    esemeny.masodperc:=masodperc;
    esemeny.evs:= nullak(ev,2);
    esemeny.hos:=nullak(ho,2);
    esemeny.naps:=nullak(nap,2);
    esemeny.oras:=nullak(ora,2);
  end
  else
  begin
    try
      esemeny.evs:=Copy(fnev,1,4);
      esemeny.ev:=StrToInt(esemeny.evs);
      esemeny.hos:=Copy(fnev,5,2);
      esemeny.ho:=StrToInt(esemeny.hos);
      esemeny.naps:=Copy(fnev,7,2);
      esemeny.nap:=StrToInt(esemeny.naps);
      esemeny.oras:=Copy(fnev,10,2);
      esemeny.ora:=StrToInt(esemeny.oras);
      esemeny.perc:=StrToInt(Copy(fnev,12,2));
      esemeny.masodperc:=StrToInt(Copy(fnev,14,2));
      esemeny.kamera_szam:=StrToInt(Copy(fnev,21,1));
      esemeny.rendszam:=Copy(fnev,23,Length(fnev)-26);
      datum:=EncodeDate (esemeny.ev, esemeny.ho, esemeny.nap);
      ido:=EncodeTime( esemeny.ora, esemeny.perc, esemeny.masodperc,0);
      esemeny.datum:=datum+ido;
    except
      //hiba esetén csak ezt ellenõrzöm majd le
      esemeny.ev:=0;
    end;
  end;
  Result:=esemeny;
end;



procedure TAF.DataModuleCreate(Sender: TObject);

 procedure irsz_feltoltes;
  begin
   irszQ.Params[0].AsString:='2000';
   irszQ.Open;
   if irszQ.IsEmpty then IrszScript.ExecuteAll;
   irszQ.Close;
  end;
begin
  bit:=9;
  kapcs_ini_kezel;
  frissites(kpmappa);

  user:='knz';
  passwd:='MaTt2019';
 { user:='knz';
  passwd:='MaTt2019'; }


 // exit;
  if adatbazis='' then
   begin
    try
     MySQLF:=TMySQLF.Create(Application);
     MySQLF.ShowModal
    finally
     MySQLF.Free;
    end;
   end
  else
  with Kapcs do
  begin
    Close;
    with Params do
    begin
      clear;
      Add('DriverID=MySQL');
      Add('Server='+szerver);
      Add('Port='+port);
      Add('Database='+adatbazis);
      Add('User_Name='+user);
      Add('Password='+passwd);
      Add('CharacterSet= Utf8mb4');
      try
       open;
      except
       try
         MySQLF:=TMySQLF.Create(Application);
         MySQLF.ShowModal
       finally
         MySQLF.Free;
       end;
      end;
    end;
  end;

  if ParamStr(1)='/SC' then ModScript.ScriptDialog:=ModScriptDialog
  else ModScript.ScriptDialog:=nil;
  modok_vegrehajt;//  SQL_text unitba kell
  if ParamStr(1)='/SC' then showmessage(modSQL[maxSQL]);
  ini_kezel;
  if Masolas_utvonala<>'' then  af.frissites(Masolas_utvonala);
  FormatSettings.DateSeparator := '.';
  FormatSettings.ShortDateFormat := 'yyyy.MM.dd';
  FormatSettings.DecimalSeparator:=',';
  irsz_feltoltes;
  Kapcs.ResourceOptions.AutoReconnect:=True;
  jogmod:=False;
  LCID := GetUserDefaultLCID;
  Automentes.Enabled:=mentesido in [0..23];
  if (nedvesseg_beolvasasa) and (mezgaz) then Sample_Kapcs.Connected:=true;
  autotorzs.Enabled:=automata_torzsimport;
  // merlegjegy_tipus_betoltese;//iniben kell megadni-elõkészítés elõtt töltöm be
  ForceDirectories(ExtractFilePath(application.exename)+'\LOG');
  HWKapcs.Params:=Kapcs.Params;
  MentesKapcs.Params:=Kapcs.Params;
 // Auto_mjegy_kapcs.Params.Clear;
 // Auto_mjegy_kapcs.Params:=Kapcs.Params;

  if Automata_parositas then Forgalom_Timer.Enabled:=True;
 // if Automata_merlegjegy or Automata_merlegjegy_parositaskor then auto_mjegy_tread_run;
//

  PortF:=TPortF.Create(Application);
  //  mérlegjegy nyomtatáshoz KELL
  if Mjegy_nyom_rec=nil then Mjegy_nyom_rec := Tmjegy_rec_nyom.Create;
 // FordF:=FordF.Create(Application);//azért van itt mert angol alatt ezen kiakad és nem fordul le
//  ShowMessage(nyelv_index.ToString);

end;

function TAF.datum_szoveg(datum: TDateTime; idokell: boolean): string;
var ev,ho,nap,ora,perc,mp,szmp:word;
begin
  DecodeDate(datum,ev,ho,nap);
  DecodeTime(datum,ora,perc,mp,szmp);
  Result:=IntToStr(ev)+IntToStr(ho)+IntToStr(nap);
  if idokell then Result:=Result+IntToStr(ora)+IntToStr(perc)+IntToStr(mp)+IntToStr(szmp);
end;

procedure TAF.dijak_lekerese(pid,tid: Integer);
var kat:Integer;
  function  van_kat: Integer;
   begin
     with dijkatQ do
      begin
        close;
        SQL.Clear;
        SQL.Add(' SELECT d_id FROM partner');
        SQL.Add(' WHERE id='+pid.ToString);
        Open;
        Result:=Fields[0].AsInteger;
        close;
      end;
   end;

begin
 if not dijszab_csoportok then exit;
 kat:=van_kat;
 if kat=0 then //ha nincs neki beolvassuk az alapot
  begin
    tisztitasi_dij:=cfg_kezel('','DÍJAK','Tisztítási díj','Float',0);
    szaritasi_dij:=cfg_kezel('','DÍJAK','Szárítási díj','Float',0);
    tarolasi_dij:=cfg_kezel('','DÍJAK','Tárolási díj','Float',0);
    be_tarolasi_dij:=cfg_kezel('','DÍJAK','Betárolási díj','Float',0);
    ki_tarolasi_dij:=cfg_kezel('','DÍJAK','Kitárolási díj','Float',0);
    szallitasi_dij:=cfg_kezel('','DÍJAK','Szállítási díj','Float',0);
  end
 else
  begin
    with dijkatQ do
      begin
        close;
        SQL.Clear;
        SQL.Add(' SELECT * FROM dijaszab_kategoriak');
        SQL.Add(' WHERE id='+kat.ToString);
        Open;
        tisztitasi_dij:=FieldByName('tisztitasi').AsFloat;
        szaritasi_dij:=FieldByName('szaritasi').AsFloat;
        tarolasi_dij:=FieldByName('tarolasi').AsFloat;
        be_tarolasi_dij:=FieldByName('betarolasi').AsFloat;
        ki_tarolasi_dij:=FieldByName('kitarolasi').AsFloat;
        szallitasi_dij:=FieldByName('szallitasi').AsFloat;
        close;
        //ha van vmi külön beállítva azt beállítja
        SQL.Clear;
        SQL.Add('SELECT *, COUNT(id) AS van  FROM dijaszab_kategoriak_termek');
        SQL.Add(' WHERE d_id='+kat.ToString+' AND t_id='+tid.ToString );
        Open;
        if FieldByName('van').AsInteger<>0 then
         begin  //csak akkor írja felül az alap díjszab árakat ha van külön megadva
          if FieldByName('tisztitasi').AsFloat<>0 then
           tisztitasi_dij:=FieldByName('tisztitasi').AsFloat;
          if FieldByName('szaritasi').AsFloat<>0 then
           szaritasi_dij:=FieldByName('szaritasi').AsFloat;
          if FieldByName('tarolasi').AsFloat<>0 then
           tarolasi_dij:=FieldByName('tarolasi').AsFloat;
          if FieldByName('betarolasi').AsFloat<>0 then
           be_tarolasi_dij:=FieldByName('betarolasi').AsFloat;
          if FieldByName('kitarolasi').AsFloat<>0 then
           ki_tarolasi_dij:=FieldByName('kitarolasi').AsFloat;
          if FieldByName('szallitasi').AsFloat<>0 then
           szallitasi_dij:=FieldByName('szallitasi').AsFloat;
         end;
        Close;
      end;
  end;
end;

procedure TAF.felhasznalok_jogaijogChange(Sender: TField);
begin
 if jogmod then
  begin
    with aF.Q1 do
     begin
       Close;
       SQL.Clear;
       SQL.Add('UPDATE jogok set '+felhasznalok_jogaijszam.AsString+'=:p0');
       SQL.Add(' WHERE id='+IntToStr(felhasznalok_jogaiID.AsInteger));
       Params[0].Value:=felhasznalok_jogaijog.Value;
       ExecSQL
     end;
    jogmod:=False;
  end;
end;

function TAF.ford(keresett: string): string;
begin
 if FordF<>nil then
 with FordF do
  begin

   try
    Result:= TLabel(FindComponent(keresett)).Caption;
   except
    Result:='';
   end;
  end;
end;

procedure TAF.Forgalom_TimerTimer(Sender: TObject);
var id,id1:integer;
  function lekerdez(rendszam,irany:string;datum:TDate):Integer;
  begin
    if irany='BE' then irany:='KI'
    else if irany='KI' then irany:='BE';
    with ForgTimQ do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM forgalom ');
      SQL.Add('WHERE (Rendszam<>"******") and (Parositott=0) and (Rendszam=:rendszam) and (Irany=:irany) and (Datum>=:datum) ');
      ParamByName('rendszam').AsString:=rendszam;
      ParamByName('irany').AsString:=irany;
      ParamByName('datum').AsDate:=datum;
      open;
      last;
      if RecordCount<>0 then Result:=FieldByName('ID').AsInteger
      else Result:=-1;
    end;
  end;

begin
  Forgalom_Timer.Enabled:=False;
  with ForgTimT do
  begin
    Close;
    Open();
    Last;
    while  (FieldByName('Parositott').AsInteger=0) and (not bof) do
    begin
      if FieldByName('Rendszam').AsString<>'******' then
      begin
        id:=lekerdez(FieldByName('Rendszam').AsString,FieldByName('Irany').AsString,FieldByName('datum').AsDateTime-visszanap);
        if id<>-1 then
        begin
          //Kitolti a parositott tablat a T es Q adataibol
          ParositottT.Open();
          ParositottT.Append;
          ParositottT.FieldByName('Erkdatum').AsDateTime:=ForgTimQ.FieldByName('Datum').AsDateTime;
          ParositottT.FieldByName('Erkido').AsDateTime:=ForgTimQ.FieldByName('Ido').AsDateTime;
          ParositottT.FieldByName('Tavdatum').AsDateTime:=FieldByName('Datum').AsDateTime;
          ParositottT.FieldByName('Tavido').AsDateTime:=FieldByName('Ido').AsDateTime;
          ParositottT.FieldByName('Rendszam').AsString:=FieldByName('Rendszam').AsString;
          if FieldByName('Kod').AsString<>'0' then
            ParositottT.FieldByName('Kod').AsString:=FieldByName('Kod').AsString
          else ParositottT.FieldByName('Kod').AsString:=ForgTimQ.FieldByName('Kod').AsString;
          if FieldByName('Szallitolev').AsString<>'0' then
            ParositottT.FieldByName('Szallitolev').AsString:=FieldByName('Szallitolev').AsString
          else ParositottT.FieldByName('Szallitolev').AsString:=ForgTimQ.FieldByName('Szallitolev').AsString;
          if FieldByName('Irany').AsString='KI' then
          begin
            ParositottT.FieldByName('Betomeg').AsInteger:=ForgTimQ.FieldByName('Tomeg').AsInteger;
            ParositottT.FieldByName('Kitomeg').AsInteger:=FieldByName('Tomeg').AsInteger;
            ParositottT.FieldByName('Forgalom_be_ID').AsInteger:=ForgTimQ.FieldByName('ID').AsInteger;
            ParositottT.FieldByName('Forgalom_ki_ID').AsInteger:=FieldByName('ID').AsInteger;
          end
          else
          begin
            ParositottT.FieldByName('Kitomeg').AsInteger:=ForgTimQ.FieldByName('Tomeg').AsInteger;
            ParositottT.FieldByName('Betomeg').AsInteger:=FieldByName('Tomeg').AsInteger;
            ParositottT.FieldByName('Forgalom_Ki_ID').AsInteger:=ForgTimQ.FieldByName('ID').AsInteger;
            ParositottT.FieldByName('Forgalom_Be_ID').AsInteger:=FieldByName('ID').AsInteger;
          end;
          ParositottT.FieldByName('Netto').AsInteger:=Abs(FieldByName('Tomeg').AsInteger-ForgTimQ.FieldByName('Tomeg').AsInteger);
          ParositottT.FieldByName('Mjegysorszam').AsString:='';
          ParositottT.post;
          ParositottT.Close;
          id1:=FieldByName('ID').AsInteger;
          // A forgalom tablaba a parositott mezobe beirka az osszeparositott id-ket
          if Locate('ID',id) then
          begin
            edit;
            FieldByName('Parositott').AsInteger:=id1;
            post;
          end;
          if Locate('ID',id1) then
          begin
            edit;
            FieldByName('Parositott').AsInteger:=id;
            post;
          end;
        end;
      end;
      Prior;
    end;
  end;
  Forgalom_Timer.Enabled:=True;
end;

procedure TAF.fo_szazalek(brutto, tara, szemet_szazalek,akt_nedvesseg_szazalek,
  alap_nedvesseg_szazalek, tort_szemek_szazalek, levonando_tomeg: Extended;
  kukorica: Boolean);
Var  alap_nedv,akt_nedv:Extended;
begin
 szemet_tomeg:=0;
 nedvesseg_szazalek:=0;
 nedvesseg_vesztes_tomege:=0;
 nyers_tort_szemek_tomege:=0;
 tisztitott_nyers_netto_tomege_tortel:=0;
 tisztitott_nyers_netto_tomege:=0;
 nyers_netto_tomege:=0;
 szaritott_tort_szemek_tomege:=0;
 szaritott_netto_tomege:=0;
 akt_szar_dij:=0;
 akt_tiszt_dij:=0;

 nyers_netto_tomege:=brutto-tara;

 if akt_nedvesseg_szazalek>alap_nedvesseg_szazalek then
 begin
  alap_nedv:=alap_nedvesseg_szazalek;
  akt_nedv:=akt_nedvesseg_szazalek;
  akt_szar_dij:=((nyers_netto_tomege*(akt_nedv-alap_nedv))/1000)*szaritasi_dij;//szárítási díj csak akkor ha nedv>alapnedv
 end
 else
 begin
  alap_nedv:=alap_nedvesseg_szazalek;
  akt_nedv:=alap_nedvesseg_szazalek
 end;
 akt_tiszt_dij:=(nyers_netto_tomege/1000)*tisztitasi_dij;

 szemet_tomeg:=nyers_netto_tomege*(szemet_szazalek/100.0);
 nyers_tort_szemek_tomege:=(nyers_netto_tomege*(tort_szemek_szazalek/100.0));

 tisztitott_nyers_netto_tomege_tortel:= nyers_netto_tomege-szemet_tomeg;
 tisztitott_nyers_netto_tomege:= nyers_netto_tomege-szemet_tomeg-nyers_tort_szemek_tomege;
 szaritott_netto_tomege := tisztitott_nyers_netto_tomege;
 if kukorica then
  begin
    //Sznetto=nettó*(1-Tisztaság)*(1-Nedvesség)/(1-Alapnedvesség)
    szaritott_netto_tomege :=Round(tisztitott_nyers_netto_tomege*(1-akt_nedv/100)/(1-alap_nedv/100))-levonando_tomeg;
    nedvesseg_vesztes_tomege:=(Round(tisztitott_nyers_netto_tomege-szaritott_netto_tomege));
    szaritott_tort_szemek_tomege:= Round(nyers_tort_szemek_tomege*(1-akt_nedv/100)/(1-alap_nedv/100));
    //Sznetto=nettó*(1-Tisztaság)*(1-Tisztaság-Nedvesség)/(1-Tisztaság-Alapnedvesség)
    //Spsznetto.Value :=Round(levsz*tisztitott_tomeg)-sp_tomeg_levon.Value;
    //nedvelvon:=FloatToStr(Round((1-levsz)*tisztitott_tomeg));
  end
  else
  begin //MÉG ÁT KELL ÍRNI
   szaritott_netto_tomege :=Round(tisztitott_nyers_netto_tomege-(tisztitott_nyers_netto_tomege*(akt_nedv-alap_nedv))/100.0)-levonando_tomeg;//*(1-akt_nedv/100)/(1-alap_nedv/100))-levonando_tomeg;
    nedvesseg_vesztes_tomege:=(Round(tisztitott_nyers_netto_tomege-szaritott_netto_tomege));
    szaritott_tort_szemek_tomege:= Round(nyers_tort_szemek_tomege*(1-akt_nedv/100)/(1-alap_nedv/100));
   // Spsznetto.Value := round(tisztitott_tomeg-(tisztitott_tomeg*(ned-aned))/100.0)-sp_tomeg_levon.Value;
   // nedvelvon:=FloatToStr(Round((ned-aned)*tisztitott_tomeg/100));
  end;

 // nyers_netto_tomege:
  { tisz := Sptisztasag.Value;
  tortszem_szazalek:= Sptort.Value;
  if sp_tomeg_levon.Text='' then sp_tomeg_levon.Value:=0;

  nedvesseg := IntToStr(round((br-tr)*((ned-aned)/100.0)));
  tisztasag := IntToStr(round((br-tr)*((tisz)/100.0)));
  //tort szemek tomege
  tortszem_tomeg:=(round((br-tr)*(tortszem_szazalek/100.0)));
  ttom:=tortszem_tomeg;//kell a mentésnél!
  //Öcsi
  tisztitott_tomeg:=round((br-tr-(round((br-tr)*((tisz+tortszem_szazalek)/100.0)))));

  sze:=1-((tisz+tortszem_szazalek+ned)/100);
  szu:=1-((tisz+tortszem_szazalek+aned)/100);
  levsz:=sze/szu;
  if chkkuk.Checked then
  begin
    //Sznetto=nettó*(1-Tisztaság)*(1-Nedvesség)/(1-Alapnedvesség)
     spSznetto.Value :=Round(tisztitott_tomeg*(1-ned/100)/(1-aned/100))-sp_tomeg_levon.Value;
     nedvelvon:=FloatToStr(Round(tisztitott_tomeg-spSznetto.Value));

    //Sznetto=nettó*(1-Tisztaság)*(1-Tisztaság-Nedvesség)/(1-Tisztaság-Alapnedvesség)
    //Spsznetto.Value :=Round(levsz*tisztitott_tomeg)-sp_tomeg_levon.Value;
    //nedvelvon:=FloatToStr(Round((1-levsz)*tisztitott_tomeg));
  end
  else
  begin
    Spsznetto.Value := round(tisztitott_tomeg-(tisztitott_tomeg*(ned-aned))/100.0)-sp_tomeg_levon.Value;
    nedvelvon:=FloatToStr(Round((ned-aned)*tisztitott_tomeg/100));
  end;

  if nedvesseg='' then nedvesseg:='0';
  if nedvelvon='' then nedvelvon:='0';
  if tisztasag='' then tisztasag:='0';}


end;

procedure TAF.frissites(mappa:string);
var  fover,alver,build,foverkp,alverkp,buildkp,helyi_verzio,kp_verzio:Integer;
     exe_neve,helyi_mappa:string;
     frissites_kell:boolean;

begin
  if (mappa<>'') and (mappa[Length(mappa)]='\') then Delete(mappa,Length(mappa),1);
  // ha más helyrõl kell frissíteni, akkor a központi program is feissítsen
  if ((Kozponti_prg) and (mappa='')  )or(not DirectoryExists(mappa)) then Exit;

  exe_neve:=TPath.GetFileName(Application.ExeName);
  helyi_mappa:=ExtractFileDir(Application.ExeName);
  //ha van elozo exe azt törlöm
  DeleteFile(PChar(helyi_mappa+'\'+exe_neve+'.OLD'));
  //kpver
  GetVerisonNumber(Foverkp, Alverkp,Buildkp,PChar((mappa+'\'+exe_neve)));
  kp_verzio:= StrToInt(IntToStr(foverkp)+IntToStr(alverkp)+IntToStr(buildkp));

  //kliens ver
  if not FileExists(mappa+'\'+exe_neve) then Exit;
  GetVerisonNumber(Fover, Alver,Build,PChar(helyi_mappa+'\'+exe_neve));
  helyi_verzio:= StrToInt(IntToStr(fover)+IntToStr(alver)+IntToStr(build));

  //if helyi_verzio<kp_verzio then frissites_kell:=true;//showmessage('frissites');
  frissites_kell:=false;
  if foverkp>fover then frissites_kell:=true
    else if alverkp>alver then frissites_kell:=true
      else if buildkp>build then frissites_kell:=true;


  if frissites_kell then
  begin
    //a kliens exe-t átírom
    RenameFile(PChar(helyi_mappa+'\'+exe_neve),helyi_mappa+'\'+exe_neve+'.OLD');
    //ha sikeres a másolás restart
    if CopyFile(PChar(mappa+'\'+exe_neve),PChar(helyi_mappa+'\'+exe_neve),False) then
     begin
       ShowMessage(ford('rsFrissites'));
       ShellExecute(Application.Handle,'open', PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL) ;
       Application.Terminate;
     end //ha sikertelen a másolás vissza módosítom a nevét eredetire
    else RenameFile(PChar(helyi_mappa+'\'+exe_neve+'.OLD'),PChar(mappa+'\'+exe_neve));
  end;
end;

procedure TAF.frxmerlegAfterPrint(Sender: TfrxReportComponent);
begin
 //NezetF.valasztott.Preview:=nil;
end;

procedure TAF.GetVerisonNumber(var Fover, Alver, Build: Integer;
  File_ut: Pchar);
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;

begin
  VerInfoSize := GetFileVersionInfoSize(File_ut, Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(File_ut, 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Fover := dwFileVersionMS shr 16;
    Alver := dwFileVersionMS and $FFFF;
    //Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Build := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TAF.import_log(S: string);
var tf : TextFile;
    m:string;
begin
 m:=torzs_import_mappa+'log';
 ForceDirectories(m);
 AssignFile(tf,m+'\import_log_'+FormatDateTime('yyyymmdd',now)+' .txt');
 if not FileExists(m+'\import_log'+FormatDateTime('yyyymmddhhnnss',now)+' .txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, s+ ' '+Datetimetostr(Now)+'');
// Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
 Application.ProcessMessages;
end;

procedure TAF.ini_kezel;
var inif:Tinifile;
    k: Integer;
  // ujdbnev:string;
begin
{ Kapcs.Connected:=False;
  with ModScript do
   begin
     SQLScripts[0].SQL.text:='CREATE TABLE IF NOT EXISTS `cfg` (' + #13#10 +
    '`id` INT(11) NOT NULL AUTO_INCREMENT,' + #13#10 +
    '`csoport` VARCHAR(50) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
    '`tulajdonsag` VARCHAR(50) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
    '`tipus` VARCHAR(10) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
    '`ertek` VARCHAR(200) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'',' + #13#10 +
    '`magyarazat` VARCHAR(200) NOT NULL DEFAULT '''' COLLATE ''utf8_general_ci'','+#13#10+
    'PRIMARY KEY (`ID`)'+#13#10+
    ') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;';
    ExecuteAll;
   end;
  Kapcs.Connected:=True; }

  inif:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\'+ini_nev);
  Regi_hardver_beallitas:=inif.ReadBool('ALAP','Regi_hardver_beallitas',True);
  Regi_hardver_beallitas:=cfg_kezel('Régi esetén az inibõl és a cfgbõl veszi a hardver adatokat. Újnál a hardver táblábõl','ALAP','Regi_hardver_beallitas','Boolean',True);

  PC_Szam:=Uppercase(inif.ReadString('ALAP','PC_Szam','PC01'));
  inif.writeString('ALAP','PC_Szam',PC_Szam);
  visszanap:=inif.ReadInteger('ALAP','Visszanap',5);
  visszanap:=cfg_kezel('','ALAP','Visszanap','Integer',5);
 // ShowMessage(visszanap.ToString);
  telephely:=inif.ReadString('ALAP','Telephely','Telephely');
  telephely:=cfg_kezel('','ALAP','Telephely','String',telephely);
  //inif.writeString('ALAP','Telephely',telephely);
  nyugvovarakozas:=inif.ReadInteger('ALAP','Nyugvovarakozas',10);
  nyugvovarakozas:=cfg_kezel('','ALAP','Nyugvó várakozás','Integer',10);
  //inif.WriteInteger('ALAP','Nyugvovarakozas',nyugvovarakozas);
  mintomeg:=inif.ReadInteger('ALAP','Mintomeg',500);
  mintomeg:=cfg_kezel('','ALAP','Minimum tömeg','Integer',mintomeg);

  kepernyo_meretarany:=inif.ReadInteger('ALAP','kepernyo_meretarany',100);
  inif.WriteInteger('ALAP','kepernyo_meretarany',kepernyo_meretarany);
  pingproba:=inif.ReadInteger('ALAP','Pingproba',3);
  pingproba:=cfg_kezel('','ALAP','Ping próbák száma','Integer',pingproba);
  //inif.WriteInteger('ALAP','Pingproba',pingproba);
  kamproba:=inif.ReadInteger('ALAP','Kamproba',3);
  kamproba:=cfg_kezel('','ALAP','Camera próbák száma','Integer',kamproba);
  //inif.WriteInteger('ALAP','Kamproba',kamproba);
  //j:=inif.ReadInteger('ALAP','Automata_kezelo',0);
  automata_kezelo:=inif.ReadBool('ALAP','Automata_kezelo',False);
  automata_kezelo:=cfg_kezel('','ALAP','Automata kezelõ','Boolean',False);
  szabalyos_merlegen_tartozkodas_figyeles:=cfg_kezel('Ha be van kapcsolva és az Infra5 vagy Infra6 jelez, nem enged mérni','ALAP','Szabályos mérlegen tartozkodás figyelése','Boolean',False);

  //inif.WriteBool('ALAP','Automata_kezelo',automata_kezelo);
  pdfmappa:=inif.ReadString('Mappak','Pdf',ExtractFileDir(ExtractFilePath(application.exename))+'\Merlegjegy_PDF');
  pdfmappa:=cfg_kezel('','MAPPAK','Pdf mappa','String',ExtractFileDir(ExtractFilePath(application.exename))+'\Merlegjegy_PDF');
  //inif.writeString('Mappak','pdf',pdfmappa);
 // j:=inif.ReadInteger('ALAP','Rendszamleker',0);
  rendszamleker:=inif.ReadBool('ALAP','Rendszamleker',False);
  rendszamleker:=cfg_kezel('','ALAP','Rendszám lekérése','Boolean',False);
  //inif.WriteBool('ALAP','Rendszamleker',rendszamleker);
 // lejatszas:=inif.ReadBool('ALAP','Lejatszas',False);
  lejatszas:=cfg_kezel('','ALAP','Élõ ip camera lejátszás','Boolean',False);
 // inif.WriteBool('ALAP','Lejatszas',lejatszas);
  vezerles_tipus:=UpperCase(inif.ReadString('ALAP','Vezerles_tipus(USB/PLC)','PLC'));
 // vezerles_tipus:=cfg_kezel('','ALAP','Vezérlés típus(USB/PLC)','String','PLC');
  inif.writeString('ALAP','Vezerles_tipus(USB/PLC)',vezerles_tipus);
  lehajtasivarakozas:=inif.ReadInteger('ALAP','Lehajtasivarakozas',10);
  lehajtasivarakozas:=cfg_kezel('','ALAP','Lehajtási várakozas','Integer',lehajtasivarakozas);
  //inif.WriteInteger('ALAP','Lehajtasivarakozas',lehajtasivarakozas);
  nagykamera:=inif.ReadBool('ALAP','Nagy_kamera_kep',False);
  nagykamera:=cfg_kezel('','ALAP','Nagy kamera kép','Boolean',nagykamera);
  //inif.WriteBool('ALAP','Nagy_kamera_kep',nagykamera);
  Merleg_tipus[1]:=inif.ReadString('Merleg','Merleg_tipus','Dibal');
  //Merleg_tipus:=cfg_kezel('','Merleg','Mérleg típus','String',Merleg_tipus[1]);
  inif.WriteString('Merleg','Merleg_tipus',Merleg_tipus[1]);
  Kijelzo_tipus:=inif.ReadString('Merleg','Kijelzo_tipus','Nincs');
  //Merleg_tipus:=cfg_kezel('','Merleg','Mérleg típus','String',Merleg_tipus);
  inif.WriteString('Merleg','Kijelzo_tipus',Kijelzo_tipus);

  PLC_IP:=inif.ReadString('PLC_USB','PLC_IP','Local');
  //PLC_IP:=cfg_kezel('','PLC_USB','PLC_IP','String',PLC_IP);
  inif.writeString('PLC_USB','PLC_IP',PLC_IP);
  Elso_lampa:=inif.ReadInteger('PLC_USB','Elso_lampa',11);
  //Elso_lampa:=cfg_kezel('','PLC_USB','Elsõ lámpa','Integer',Elso_lampa);
  inif.WriteInteger('PLC_USB','Elso_lampa',Elso_lampa);
  Hatso_lampa:=inif.ReadInteger('PLC_USB','Hatso_lampa',21);
  //Hatso_lampa:=cfg_kezel('','PLC_USB','Hátsó lámpa','Integer',Hatso_lampa);
  inif.WriteInteger('PLC_USB','Hatso_lampa',Hatso_lampa);
  Sorompo_nyit_cim_BE:=inif.ReadInteger('PLC_USB','Sorompo_nyit_cim_BE',10);
  //Sorompo_nyit_cim_BE:=cfg_kezel('','PLC_USB','Sorompó nyit cím BE','Integer',Sorompo_nyit_cim_BE);
  inif.WriteInteger('PLC_USB','Sorompo_nyit_cim_BE',Sorompo_nyit_cim_BE);
  Sorompo_nyit_cim_KI:=inif.ReadInteger('PLC_USB','Sorompo_nyit_cim_KI',20);
  //Sorompo_nyit_cim_KI:=cfg_kezel('','PLC_USB','Sorompó nyit cím KI','Integer',Sorompo_nyit_cim_KI);
  inif.WriteInteger('PLC_USB','Sorompo_nyit_cim_KI',Sorompo_nyit_cim_KI);
  Sorompo_Infra_Hiba_cim_BE:=inif.ReadInteger('PLC_USB','Sorompo_Infra_Hiba_cim_BE',12);
  //Sorompo_Infra_Hiba_cim_BE:=cfg_kezel('','PLC_USB','Sorompó infra hiba cím BE','Integer',Sorompo_Infra_Hiba_cim_BE);
  inif.WriteInteger('PLC_USB','Sorompo_Infra_Hiba_cim_BE',Sorompo_Infra_Hiba_cim_BE);
  Sorompo_Infra_Hiba_cim_KI:=inif.ReadInteger('PLC_USB','Sorompo_Infra_Hiba_cim_KI',22);
  //Sorompo_Infra_Hiba_cim_KI:=cfg_kezel('','PLC_USB','Sorompó infra hiba cím KI','Integer',Sorompo_Infra_Hiba_cim_KI);
  inif.WriteInteger('PLC_USB','Sorompo_Infra_Hiba_cim_KI',Sorompo_Infra_Hiba_cim_KI);
  Sorompo_Nyitas_Volt_Cim_BE:=inif.ReadInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_BE',13);
  //Sorompo_Nyitas_Volt_Cim_BE:=cfg_kezel('','PLC_USB','Sorompó nyitás volt cím BE','Integer',Sorompo_Nyitas_Volt_Cim_BE);
  inif.WriteInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_BE',Sorompo_Nyitas_Volt_Cim_BE);
  Sorompo_Nyitas_Volt_Cim_KI:=inif.ReadInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_KI',23);
  //Sorompo_Nyitas_Volt_Cim_KI:=cfg_kezel('','PLC_USB','Sorompó nyitás volt cím KI','Integer',Sorompo_Nyitas_Volt_Cim_KI);
  inif.WriteInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_KI',Sorompo_Nyitas_Volt_Cim_KI);
  Merleg_Nullaz_Cim:=inif.ReadInteger('PLC_USB','Merleg_Nullaz_Cim',30);
 // Merleg_Nullaz_Cim:=cfg_kezel('','PLC_USB','Mérleg nulláz cím','Integer',Merleg_Nullaz_Cim);
  inif.WriteInteger('PLC_USB','Merleg_Nullaz_Cim',Merleg_Nullaz_Cim);
 // j:=inif.ReadInteger('PLC_USB','Sorompo_vezerles',1);
  Sorompo_vezerles:=inif.Readbool('PLC_USB','Sorompo_vezerles',true);
  //Sorompo_vezerles:=cfg_kezel('','PLC_USB','Sorompó vezérlés','Boolean',Sorompo_vezerles);
  inif.WriteBool('PLC_USB','Sorompo_vezerles',Sorompo_vezerles);
 // j:=inif.ReadInteger('PLC_USB','Infra_Figyeles',0);
  Infra_Figyeles:=inif.ReadBool('PLC_USB','Infra_Figyeles',False);
  //Infra_Figyeles:=cfg_kezel('','PLC_USB','Infra figyelés','Boolean',Infra_Figyeles);
  inif.Writebool('PLC_USB','Infra_Figyeles',Infra_Figyeles);
  Infra_BE_Cim:=inif.ReadInteger('PLC_USB','Infra_BE_Cim',14);
  //Infra_BE_Cim:=cfg_kezel('','PLC_USB','Infra BE cím','Integer',Infra_BE_Cim);
  inif.WriteInteger('PLC_USB','Infra_BE_Cim',Infra_BE_Cim);
  Infra_KI_Cim:=inif.ReadInteger('PLC_USB','Infra_KI_Cim',15);
  //Infra_KI_Cim:=cfg_kezel('','PLC_USB','Infra KI cím','Integer',Infra_KI_Cim);
  inif.WriteInteger('PLC_USB','Infra_KI_Cim',Infra_KI_Cim);
  sorompo_infra_hibas_BE:=inif.ReadInteger('PLC_USB','sorompo_infra_hibas_BE',0);
  //sorompo_infra_hibas_BE:=cfg_kezel('','PLC_USB','Sorompo infra hibás BE','Integer',sorompo_infra_hibas_BE);
  inif.WriteInteger('PLC_USB','sorompo_infra_hibas_BE',sorompo_infra_hibas_BE);
  sorompo_infra_hibas_KI:=inif.ReadInteger('PLC_USB','sorompo_infra_hibas_KI',0);
  //sorompo_infra_hibas_KI:=cfg_kezel('','PLC_USB','Sorompo infra hibás KI','Integer',sorompo_infra_hibas_KI);
  inif.WriteInteger('PLC_USB','sorompo_infra_hibas_KI',sorompo_infra_hibas_KI);
  Ping_varakozas:=inif.ReadInteger('PLC_USB','Ping_varakozas(s)',10);
  //Ping_varakozas:=cfg_kezel('','PLC_USB','Ping várakozás(s)','Integer',Ping_varakozas);
  inif.WriteInteger('PLC_USB','Ping_varakozas(s)',Ping_varakozas);
  IOmodul_IP:=inif.ReadString('PLC_USB','IOmodul_IP','Local');
  //IOmodul_IP:=cfg_kezel('','PLC_USB','IOmodul IP cím','String',IOmodul_IP);
  inif.writeString('PLC_USB','IOmodul_IP',IOmodul_IP);
  IOmodul_van:=UpperCase( IOmodul_IP )<>'LOCAL';
  IOmodul_regiszter_iras1:=inif.ReadInteger('PLC_USB','IOmodul_regiszter_iras1',1);
  //IOmodul_regiszter_iras1:=cfg_kezel('','PLC_USB','IOmodul regiszter irás 1','Integer',IOmodul_regiszter_iras1);
  inif.WriteInteger('PLC_USB','IOmodul_regiszter_iras1',IOmodul_regiszter_iras1);
  //Az elsõ gomb a fõ formon. Tipusa PLC vagy IO
  Elso_gomb_tipus:=inif.ReadString('PLC_USB','Elso_gomb_tipus','Local');
  //Elso_gomb_tipus:=cfg_kezel('','PLC_USB','Elsõ gomb típus','String',Elso_gomb_tipus);
  inif.writeString('PLC_USB','Elso_gomb_tipus',Elso_gomb_tipus);
  Elso_gomb_szoveg:=inif.ReadString('PLC_USB','Elso_gomb_szoveg','');
  Elso_gomb_szoveg:=cfg_kezel('','PLC_USB','Elsõ gomb szöveg','String',Elso_gomb_szoveg);
  //inif.writeString('PLC_USB','Elso_gomb_szoveg',Elso_gomb_szoveg);
  Elso_Gomb_Varakozas:=inif.ReadInteger('PLC_USB','Elso_Gomb_Varakozas',500);
  //Elso_Gomb_Varakozas:=cfg_kezel('','PLC_USB','Elsõ gomb várakozás','Integer',Elso_Gomb_Varakozas);
  inif.WriteInteger('PLC_USB','Elso_Gomb_Varakozas',Elso_Gomb_Varakozas);
  Elso_Gomb_Meres_Utan:=inif.ReadInteger('PLC_USB','Elso_Gomb_Meres_Utan',0);
  //Elso_Gomb_Meres_Utan:=cfg_kezel('','PLC_USB','Elsõ gomb mérés után','Integer',Elso_Gomb_Meres_Utan);
  inif.WriteInteger('PLC_USB','Elso_Gomb_Meres_Utan',Elso_Gomb_Meres_Utan);

  utolso_sql:=inif.ReadInteger('MySql','Utolso_sql',maxSQL);//mert az 1 a db letrehozas
  //utolso_sql:=cfg_kezel('','MYSQL','Utolsó SQL frissítés','Integer',Utolso_sql);
 // inif.WriteInteger('MySql','Utolso_sql',utolso_sql);
 // MW101	Bruttó tömeg felsõ két byte
  Masolas_utvonala:=inif.ReadString('ALAP','Masolas_utvonala','');
  if ( Masolas_utvonala<>'') and (Masolas_utvonala[Length(Masolas_utvonala)]<>'\')  then Masolas_utvonala:=Masolas_utvonala+'\';
  inif.writeString('ALAP','Masolas_utvonala',Masolas_utvonala);

  Kepek_Mappa:=cfg_kezel('A kamerák által készített képek tárolásio helye','PLC_USB','Kepek_Mappa','String',Kepek_Mappa);
  if ( Kepek_Mappa<>'') and (Kepek_Mappa[Length(Kepek_Mappa)]<>'\')  then Kepek_Mappa:=Kepek_Mappa+'\';

  { TODO -oKNZ -c : Az Rtspket itt kell betölteni 2023. 03. 21. 17:55:47 }


  for k := 0 to 3 do
    begin
     rtspurls[k]:=inif.ReadString('Rtsp','URL Cam '+k.ToString,'');
    // rtspurls[k]:=cfg_kezel('','RTSP','URL Cam '+k.ToString,'String',rtspurls[k]);
     inif.WriteString('Rtsp','URL Cam '+k.ToString,rtspurls[k]);
    // showmessage(rtspURLS[k]);
    end;
  soapXML:=inif.ReadString('Mappak','SoapXML',ExtractFileDir(ExtractFilePath(application.exename))+'\SoapXML');
  soapXML:=cfg_kezel('','MAPPAK','SoapXML mappa','String',soapXML);
  soap_alap_mappa:=soapXML;
  ForceDirectories(soap_alap_mappa);
  //inif.writeString('Mappak','SoapXML',SoapXML);
  kepmappa:=inif.ReadString('Mappak','kepek',ExtractFileDir(ExtractFilePath(application.exename))+'\Kepek');
  kepmappa:=cfg_kezel('','MAPPAK','Képek mappa','String',kepmappa);
  //inif.writeString('Mappak','kepek',kepmappa);
  libre_mappa:=inif.ReadString('ALAP','Libre_mappa',ExtractFileDir(ExtractFilePath(application.exename))+'\Libre_export');
  libre_mappa:=cfg_kezel('','MAPPAK','Libre mappa','String',Libre_mappa);
  //  inif.writeString('ALAP','Libre_mappa',libre_mappa);
  ekaer_mappa:=inif.ReadString('Mappak','Ekaer_mappa',ExtractFileDir(ExtractFilePath(application.exename))+'\EKAER');
  ekaer_mappa:=cfg_kezel('','MAPPAK','Ekaer mappa','String',Ekaer_mappa);
  //inif.writeString('Mappak','Ekaer_mappa',ekaer_mappa);
  mentesido:=inif.ReadInteger('ALAP','Mentesido',20);
  mentesido:=cfg_kezel('','ALAP','Mentésidõ','Integer',Mentesido);
  //inif.WriteInteger('ALAP','Mentesido',mentesido);
  mezgaz:=inif.Readbool('ALAP','Mezgaz',false);//mert az 1 a db letrehozas
  mezgaz:=cfg_kezel('','ALAP','Mezgazõgazdasági program','Boolean',mezgaz);
  //inif.WriteBool('ALAP','Mezgaz',mezgaz);
  duplex_mjegy:=inif.Readbool('ALAP','Duplex',false);//dupla mérlegjegy egy lapon
  duplex_mjegy:=cfg_kezel('','ALAP','Duplex','Boolean',duplex_mjegy);
  //inif.WriteBool('ALAP','Duplex',duplex_mjegy);
  automata_meres:=inif.ReadBool('ALAP','Automata_meres',False);
  //automata_meres:=cfg_kezel('','ALAP','Automata mérés','Boolean',automata_meres);
  inif.WriteBool('ALAP','Automata_meres',automata_meres);

  nedvesseg_beolvasasa:=inif.ReadBool('ALAP','Nedvesseg_beolvasasa',False);
  nedvesseg_beolvasasa:=cfg_kezel('','ALAP','Nedvesség beolvasása','Boolean',Nedvesseg_beolvasasa);
  //inif.WriteBool('ALAP','Nedvesseg_beolvasasa',nedvesseg_beolvasasa);
  alap_tarolo:=inif.ReadInteger('ALAP','Alap_tarolo',0);
  alap_tarolo:=cfg_kezel('','ALAP','Alapértelmezett tároló','Integer',alap_tarolo);
  //inif.WriteInteger('ALAP','Alap_tarolo',alap_tarolo);
  alap_irany:=inif.ReadInteger('ALAP','Alap_irany',0);
  //alap_irany:=cfg_kezel('','ALAP','Alapértelmezett irány','Integer',alap_irany);
  inif.WriteInteger('ALAP','Alap_irany',alap_irany);

  alap_atvevo:=inif.ReadInteger('ALAP','Alap_atvevo',0);
  alap_atvevo:=cfg_kezel('','ALAP','Alapértelmezett átvevõ','Integer',alap_atvevo);
  //inif.WriteInteger('ALAP','Alap_atvevo',alap_atvevo);
  alap_elado:=inif.ReadInteger('ALAP','Alap_elado',0);
  alap_elado:=cfg_kezel('','ALAP','Alapértelmezett eladó','Integer',alap_elado);
  //inif.WriteInteger('ALAP','Alap_elado',alap_elado);
  Merlegjegy_tipus:=inif.ReadInteger('ALAP','Merlegjegy_tipus',0);
  Merlegjegy_tipus:=cfg_kezel('','ALAP','Mérlegjegy típus','Integer',Merlegjegy_tipus);
  Merlegjegy_lista_tipus:=cfg_kezel('','ALAP','Mérlegjegy lista típus','Integer',0);
//  inif.WriteInteger('ALAP','Merlegjegy_tipus',Merlegjegy_tipus);
  merleg_neve:=inif.ReadString('ALAP','Merleg_neve','');
 // merleg_neve:=cfg_kezel('','ALAP','Mérleg neve','String',merleg_neve);
  inif.writeString('ALAP','Merleg_neve',Merleg_neve);

  kpmappa:=inif.ReadString('ALAP','kozponti_mappa','');
  kpmappa:=cfg_kezel('','MAPPAK','Központi mappa','String',kpmappa);
 // inif.writeString('ALAP','kozponti_mappa',kpmappa);
  tomeg_levon:=inif.ReadBool('ALAP','Tomeg_levon',False);
  tomeg_levon:=cfg_kezel('','ALAP','Tömeg levonás','Boolean',Tomeg_levon);
  //inif.WriteBool('ALAP','Tomeg_levon',tomeg_levon);
  ekaer_felhasz:=inif.ReadString('EKAER','ekaer_felhasz','');
  ekaer_felhasz:=cfg_kezel('','EKAER','Ekaer felhasználó','String',ekaer_felhasz);
 // inif.writeString('EKAER','ekaer_felhasz',ekaer_felhasz);
  ekaer_jsz:=inif.ReadString('EKAER','ekaer_jsz','');
  ekaer_jsz:=cfg_kezel('','EKAER','Ekaer jelszó','String',ekaer_jsz);
 // inif.writeString('EKAER','ekaer_jsz',ekaer_jsz);
  ekaer_csk:=inif.ReadString('EKAER','ekaer_alakulcs','');
  ekaer_csk:=cfg_kezel('','EKAER','Ekaer kulcs','String',ekaer_csk);
  //inif.writeString('EKAER','ekaer_alakulcs',ekaer_csk);
  lado:=inif.ReadInteger('ALAP','Lado',0);
  lado:=cfg_kezel('Ha nagyobb mint egy, akkor logolja a mintomeg feletti értékeket','ALAP','Ladorec','Integer',lado);
 // inif.WriteInteger('ALAP','Lado',lado);
  automata_torzsimport:=inif.Readbool('ALAP','Automata_torzsimport',false);//automata törzsimport
  automata_torzsimport:=cfg_kezel('','ALAP','Automata törzsimport','Boolean',automata_torzsimport);
  //inif.WriteBool('ALAP','Automata_torzsimport',Automata_torzsimport);
  torzs_import_mappa:=inif.ReadString('Mappak','Torzs_import',ExtractFileDir(ExtractFilePath(application.exename))+'\Torzs_import');
  torzs_import_mappa:=cfg_kezel('','MAPPÁK','Törzs import mappa','String',torzs_import_mappa);
  //inif.writeString('Mappak','Torzs_import',torzs_import_mappa);
  merlegjegy_modositas:=cfg_kezel('','ALAP','Mérlegjegy módosítás','Boolean',merlegjegy_modositas);

  //moxa_ip1:=inif.ReadString('ALAP','Moxa_ip1',ExtractFileDir(ExtractFilePath(application.exename))+'Local');
 // moxa_ip1:='Local';
  moxa_ip1:=cfg_kezel('1.Moxa ETH-RS232 átalakító ip címe','ALAP','Moxa_ip1','String','Local');
  //moxa_ip2:='Local';
  moxa_ip2:=cfg_kezel('2.Moxa ETH-RS232 átalakító ip címe','ALAP','Moxa_ip2','String','Local');
  //moxa_port:=4001;
  moxa_port:=cfg_kezel('Moxa ETH-RS232 átalakítók portja','ALAP','Moxa_port','Integer',4001);

  {tisztitasi_dij,szaritasi_dij,tarolasi_dij,be_tarolasi_dij,
  ki_tarolasi_dij,szallitasi_dij:Extended;}
  tisztitasi_dij:=cfg_kezel('','DÍJAK','Tisztítási díj','Float',0);
  szaritasi_dij:=cfg_kezel('','DÍJAK','Szárítási díj','Float',0);
  tarolasi_dij:=cfg_kezel('','DÍJAK','Tárolási díj','Float',0);
  be_tarolasi_dij:=cfg_kezel('','DÍJAK','Betárolási díj','Float',0);
  ki_tarolasi_dij:=cfg_kezel('','DÍJAK','Kitárolási díj','Float',0);
  szallitasi_dij:=cfg_kezel('','DÍJAK','Szállítási díj','Float',0);

  termenyszaritas_elszamolasa:=cfg_kezel('Terményszárítás elszámolása több mérlegjegy alapján is','ALAP','Terményszárítás elszámolása','Boolean',false);
  // A mérleges rész átkerül t az PortU-ba

  ideiglenes_latszik:=cfg_kezel('Az ideiglenes fül láthatósága a fõ formon','ALAP','Ideigenes látszik','Boolean',False);
  Forgalom_latszik:=cfg_kezel('A forgalom fül láthatósága a fõ formon','ALAP','Forgalom látszik','Boolean',True);
  taramegadas:=cfg_kezel('A jármûvek táramegadására legyen lehetõség, jog is van hozzá ','ALAP','Táramegadás','Boolean',False);
  //A kisteleki kábelgyárban sorszámmal hívják a kamionokat a mérlegre
  Hivoszamhasznalat:=inif.Readbool('ALAP','Hivoszamhasznalat',false);
  inif.WriteBool('ALAP','Hivoszamhasznalat',Hivoszamhasznalat);
  Utolso_futtatas:=cfg_kezel('A dátum amikor futtatta a mentést és a töröltbe írást','ALAP','Utolso_futtatas','String','');

  Soap_aktiv:=cfg_kezel('SOAP beküldés aktiv e','SOAP','Soap_aktiv','Boolean', False);
  soap_kepet_kuld:=cfg_kezel('SOAP rendszerbe küldjön e képet','SOAP','Soap_kep_kuldes','Boolean', False);
  soap_xml_teszt:=cfg_kezel('SOAP teszt xmlt hozza csak létre, de nem küldi be','SOAP','Soap_xml_teszt','Boolean', False);
  soap_login:=cfg_kezel('SOAP felhasználó(login)','SOAP','Soap_felhasznalo','String', 'merlegtestelek');
  soap_passhash:=cfg_kezel('SOAP password hash','SOAP','Soap_passHash','String', 'S@Pmerlego$$ze');
  soap_alakulcs:=cfg_kezel('SOAP XML aláíró kulcs','SOAP','Soap_alairo_kulcs','String', 'Al@|rashoz szükséges_kulcs');
  soap_szapcim:=cfg_kezel('SOAP végpont elérési címe','SOAP','Soap_cim','String', 'http://192.168.16.15:40080/test/merleg/?');
  soap_ip:=cfg_kezel('SOAP végpont ip címe','SOAP','Soap_ip','String', '192.168.16.06');
  soap_kapcs_idokorlat:=cfg_kezel('SOAP szerverhez kapcsolódási idõkorlát(ms)','SOAP','Soap_kapcs_idokorlat','Integer', 300000);
  soap_valaszadasi_idokorlat:=cfg_kezel('SOAP szerver válaszadási idõkorlát(ms)','SOAP','Soap_szerver_idokorlat','Integer', 300000);
  soap_kuldes_gyakorisaga:=cfg_kezel('SOAP küldés gyakorisága, ennyi sleepet teszek a szálba(ms)','SOAP','Soap_kuldes_gyak','Integer', 5000);

  Automata_irany_meghatarozas:=cfg_kezel('Meghatározza az irányt a kamerából és abból, hogy bent van e a jármû','ALAP','Automata_irany_meghatarozas','Boolean', False);
  Automata_parositas:= cfg_kezel('A forgalom táblában lévõ adatokat párosítja','ALAP','Automata_parositas','Boolean', False);

  Automata_merlegjegy:= cfg_kezel('Minden forgalomba került mérésnél nyomtat mérlegjegyet','ALAP','Automata_merlegjegy','Boolean', False);
  Automata_merlegjegy_parositaskor:= cfg_kezel('Akkor nyomtat mérlegjegyet ha sikerült párosítani','ALAP','Automata_merlegjegy_parositaskor','Boolean', False);
  Automata_mjegy_nyom_sulyhatar:=cfg_kezel('Akkor nyomtat mérlegjegyet ha túllépi a súlyhatárt','ALAP','Automata_mjegy_nyom_sulyhatar','Integer',20000);
  //Automata_merlegjegy, Automata_merlegjegy_parositaskor
  dijszab_csoportok:=cfg_kezel('Díjszabási csoport pertnerhez rendelhetõ','DÍJAK','Díjszabási csoportok','Boolean',dijszab_csoportok);
  fuvarozo_merlegjegyen:= cfg_kezel('Fuvarozó kiválasztható a mérlegjegyhez','ALAP','Fuvarozo_merlegjegyen','Boolean', fuvarozo_merlegjegyen);
  Clean_way:= cfg_kezel('Clean_way használja','ALAP','Clean_way','Boolean', Clean_way);
  szarmazasi_hely_latszik:= cfg_kezel('Származási hely megadható a mérlegjegyen','ALAP','Szarmazasi_hely_latszik','Boolean', szarmazasi_hely_latszik);

  Ftp_feltoltes:= cfg_kezel('Exportált fájl feltöltése FTP szerverre','FTP','Ftp_feltoltes','Boolean', Ftp_feltoltes);
  Ftp_tavoli_mappa:=cfg_kezel('FTP feltöltéshez mappa','FTP','Ftp_tavoli_mappa','String', 'HU1265634700000093');
  automata_Ftp_feltoltes:= cfg_kezel('Automatikus feltöltés az FTP szerverre','FTP','Automata_Ftp_feltoltes','Boolean', Automata_Ftp_feltoltes);

  nyelv_index:=cfg_kezel('0-magyat; 1-angol','ALAP','Nyelv','Integer',nyelv_index);

  ForceDirectories(soapXML);
  ForceDirectories(kepmappa);
  kepmappa:=kepmappa+'\';
  ForceDirectories(pdfmappa);
  ForceDirectories(libre_mappa);
  libre_mappa:=libre_mappa+'\';
  ForceDirectories(ekaer_mappa);
  ekaer_mappa:=ekaer_mappa+'\';
  ForceDirectories(ekaer_mappa+'\kuldes');
  ForceDirectories(ekaer_mappa+'\valasz');
  if automata_torzsimport then
   begin
    ForceDirectories(torzs_import_mappa);
    torzs_import_mappa:=torzs_import_mappa+'\';
    ForceDirectories(torzs_import_mappa+'Importalva');
   end;

  inif.UpdateFile;
  inif.Free;
end;

procedure TAF.jogok_beolvasasa;
var i:Integer;
begin
 felhasznalok_jogai.Active:=False;
 felhasznalok_jogai.EmptyTable;
 with Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * from jogok ');
    Open;
    First;
    felhasznalok_jogai.Active:=true;
    felhasznalok_jogai.DisableControls;
    while not Eof do
     begin
       i:=1;
       while joga[i]<>'' do
        begin
          felhasznalok_jogai.Append;
          felhasznalok_jogaiId.AsInteger:=FieldByName('id').AsInteger;
          felhasznalok_jogaif_id.AsInteger:=FieldByName('f_id').AsInteger;
          felhasznalok_jogaijszam.AsString:='j'+i.ToString;
          felhasznalok_jogaijog_neve.AsString:=joga[i];
          felhasznalok_jogaijog.AsBoolean:=FieldByName('j'+i.ToString).Value;
          felhasznalok_jogai.Post;
          inc(i);
        end;
       Next;
     end;
     felhasznalok_jogai.EnableControls;
     Close
  end;

end;

procedure TAF.KapcsBeforeCommit(Sender: TObject);
begin
  if not Kapcs.Connected then Kapcs.Connected:=True;
end;

procedure TAF.KapcsLost(Sender: TObject);
begin
  Kapcs.Connected:=true
end;

procedure TAF.kapcs_ini_kezel;
var i:TiniFile;
    fover,alver,build,j,k:Integer;
begin
 i:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
  GetVerisonNumber(Fover, Alver,Build,PChar(Application.ExeName));
  verzio:='Ver.: '+IntToStr(fover)+'.'+IntToStr(alver)+'.'+IntToStr(build);
  konyvtar:=ExtractFilePath(Application.ExeName);
  szerver:=i.ReadString('ALAP','Szerver','localhost');
  i.writeString('ALAP','Szerver',szerver);
  adatbazis:=i.ReadString('ALAP','Adatbazis','');
  {if adatbazis='' then
   begin
    ujdbnev:=InputBox('Adatbázis neve','Adatbázis','');
    adatbazis:=ujdbnev
   end;}
  i.writeString('ALAP','Adatbazis',adatbazis);
  port:=i.ReadString('ALAP','Port','3307');
  i.writeString('ALAP','Port',port);
  Kozponti_prg:=i.ReadBool('ALAP','Kozponti_prg',False);
  i.WriteBool('ALAP','Kozponti_prg',Kozponti_prg);

  i.UpdateFile;
  i.Free;
end;

function TAF.kepkeres(im:TImage):string;
var kh:integer;
begin
   (*
    //if not Eof  then
    begin
      kh:=Pos(telephely,FieldByName('Kepnev').AsString);
      if kh<>0 then
      begin
        im.Picture.LoadFromFile(kepszerver+copy(FieldByName('Kepnev').AsString,kh,Length(FieldByName('Kepnev').AsString)-kh+1));
      end;
    end;
    //else im.Picture:=nil;
   *)
end;

function TAF.kepszures(im:TImage):string;
begin
//
end;

procedure TAF.keszletez(tid,tarid, pid:Integer; tort:ShortInt;m:Extended);
begin
 with KeszletezesProc do
  begin
    close;
    ParamByName('p_id_p').AsInteger:=pid;
    ParamByName('t_id_p').AsInteger:=tid;
    ParamByName('tar_id_p').AsInteger:=tarid;
    ParamByName('tort_p').value:=tort;
    ParamByName('f_id_p').asinteger:=f_ide;
    ParamByName('menny_p').value:=m;
    ExecProc
  end;
end;

function TAF.KillTask(ExeFileName: string): Integer;
const PROCESS_TERMINATE = $0001;
var continueloop    : BOOL;
    fsnapshothandle : THandle;
    fprocessentry32 : TProcessEntry32;
begin
  result:=0;
  fsnapshothandle := createtoolhelp32snapshot(TH32CS_SNAPPROCESS,0);
  fprocessentry32.dwsize := sizeof(fprocessentry32);
  continueloop := process32first(fsnapshothandle,fprocessentry32);
  while integer(continueloop) <> 0 do
  begin
    if((uppercase(extractfilename(fprocessentry32.szexefile)) = uppercase(exefilename))
     or(uppercase(fprocessentry32.szexefile) = uppercase(exefilename)))
    then
      result:=integer(terminateprocess(openprocess(PROCESS_TERMINATE,BOOL(0), fprocessentry32.th32processID),0));
    continueloop:=process32next(fsnapshothandle,fprocessentry32);
  end;
  closehandle(fsnapshothandle);
end;

function TAF.kod(length: integer; pad: char; tbl: string): string;
var
  s: Integer;
begin
  with SszQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT MAX(ID)FROM '+tbl);
    Open;
    if IsEmpty then s := 1
    else s := Fields[0].AsInteger + 1;
    Close
  end;
  result := RightStr(StringOfChar(pad, length) + IntToStr(s), length);
end;

function TAF.kod_foglalt(ide: Integer; kodja, tbl: String): Boolean;
begin
Result:=true;
 with FoglaltQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT IF(id IS null,0,id) AS ID,COUNT(kod) FROM '+tbl);
    SQL.Add(' WHERE kod=:kodja ');
    SQL.Add(' GROUP BY ID');
    ParamByName('kodja').AsString:=kodja;
    open;
    Result:=(Fields[0].AsInteger<>ide) and (Fields[1].AsInteger>0);
  end;
end;

procedure TAF.merlegjegy_lista_tipus_betoltese;
var Stream: TResourceStream;
begin
  Stream := TResourceStream.Create(HInstance, 'Mjegylista_'+merlegjegy_lista_tipus.ToString, RT_RCDATA);
  FrxmjegyList.LoadFromStream(Stream);
  Stream.Free
end;

procedure TAF.merlegjegy_mezgaz; //mezõgazdesági programnál
var i:Integer;
begin
 with aF.frxmerleg do
 for I := 0 to ComponentCount-1 do
      if Components[i].Tag=1 then (Components[i] as TfrxMemoView).Visible:=mezgaz;
end;

procedure TAF.merlegjegy_tipus_betoltese;
var Stream: TResourceStream;
begin
  Stream := TResourceStream.Create(HInstance, 'Rep_'+merlegjegy_tipus.ToString, RT_RCDATA);
  frxmerleg.LoadFromStream(Stream);
  Stream.Free
end;

procedure TAF.merlegjegy_tipus_betoltese_clean(iranya: string);
var Stream: TResourceStream;
begin
  if (iranya='BE')or(iranya='KI') then Stream := TResourceStream.Create(HInstance, 'CleanWay_'+iranya, RT_RCDATA)
  else Stream := TResourceStream.Create(HInstance, 'CleanWay_BE', RT_RCDATA);
  frxmerleg.LoadFromStream(Stream);
  Stream.Free
end;

procedure TAF.merlegjegy_tomeglevonas;
var i:Integer;
begin
 with aF.frxmerleg do
 for I := 0 to ComponentCount-1 do
      if Components[i].Tag=2 then (Components[i] as TfrxMemoView).Visible:=tomeg_levon;
end;

procedure TAF.modok_vegrehajt;
var i:Integer;
    k:Tinifile;
begin
 Kapcs.Connected:=False;
 for I :=2 {utolso_sql+1} to maxSQL do
 with ModScript do
  begin
    SQLScripts[0].SQL.Text:=modSQL[i];
    if ValidateAll then
     begin
       ExecuteAll;
       aF.script_log('Script végrehajtása sikeres: '+i.tostring);
     end
    else aF.script_log('Script végrehajtása sikertelen :'+i.tostring);
  end;
 Kapcs.Connected:=true;
 //cfg_kezel('MYSQL','Utolsó SQL frissítés','Integer',maxSQL);
 k:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
 k.WriteInteger('MySql','Utolso_sql',maxSQL);
 k.UpdateFile;
 k.Free
end;

function TAF.nev_foglalt(ide: Integer; neve, tbl: String): Boolean;
begin
  Result:=true;
 with FoglaltQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT IF(id IS null,0,id) AS ID,COUNT(nev) FROM '+tbl);
    SQL.Add(' WHERE (UPPER(nev)=UPPER(:neve)) ');
    SQL.Add(' GROUP BY ID');
    ParamByName('neve').AsString:=neve;
    open;
    //akkor nem létezik ha a lekérdezett id<> a beeadott id vel és ha egyálatalán van eredmény
    Result:=(Fields[0].AsInteger<>ide) and (Fields[1].AsInteger>0);
  end;
end;

procedure TAF.AutomentesTimer(Sender: TObject);
var searchResult: TSearchRec;
    fn:string;
begin

Automentes.Enabled:=false;
if HourOfTheDay(Now)=mentesido then
 begin
  fn:=formatDatetime('YYYYMMDD',Now)+'_'+RightStr(StringOfChar('0', 2) + IntToStr(mentesido), 2);
  if FindFirst(libre_mappa+fn+'*', faAnyFile, searchResult)<>0 then
  with Q1 do
   begin
    close;
    SQL.Clear;
    SQL.Add('SELECT id,mjegy as Mérlegjegy,Datum as Dátum,ido as Idõ,tomeg as Tömeg,');
    SQL.Add('rendszam as Rendszám, rendszam2 as Rendszám2  FROM forgalom ');
    SQL.Add('WHERE (Datum>=:kdatum) and (Datum<=:bdatum)');
    SQL.Add('ORDER BY Datum desc, Ido desc');
    ParamByName('kdatum').AsDate:=Date;
    ParamByName('bdatum').AsDate:=Date;
    Open;
    LibreExcelF.mezo_nevek(nil,Q1,True);
    close;
   end;
 end;
Automentes.Enabled:=true;
end;

procedure TAF.autotorzsTimer(Sender: TObject);
begin
 autotorzs.Enabled:=False;
 torzsiport_folyamatban:=True;
// Screen.Cursor:=crHourGlass;
try
 try
  af.torzs_import_csv;
  af.torzs_import_xlsx;
 finally
 // ShowMessage('Importálás kész');
  torzsiport_folyamatban:=False;
  //Screen.Cursor:=crDefault;
 end;
except
 //ShowMessage('Hiba történt');
 torzsiport_folyamatban:=False;
 //Screen.Cursor:=crDefault;
end;
 autotorzs.Enabled:=true;
end;

procedure TAF.auto_mjegy_tread_run;
begin
  inherited;
  Automata_mjegy_thread := auto_mjegy_Thread.Create(True);
  Automata_mjegy_thread.Priority:=tpLower;
  Automata_mjegy_thread.Resume;
end;

procedure TAF.auto_teszt;
begin
 with  Af.Auto_mjegy_kapcs do
  begin
    Close;
    with Params do
    begin
      clear;
      Add('DriverID=MySQL');
      Add('Server='+szerver);
      Add('Port='+port);
      Add('Database='+adatbazis);
      Add('User_Name='+user);
      Add('Password='+passwd);
      Add('CharacterSet= Utf8mb4');
      open;
    end;
  end;
  if Af.Auto_mjegy_kapcs.Connected then
   begin
     if Automata_merlegjegy then
      begin
        With AF.Auto_mjegyQ do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT id,datum As erkdatum,ido As erkido, 0 AS tavdatum,0 AS tavido,');
           SQL.Add('rendszam,IF(irany=''BE'', tomeg,0) betomeg,IF(irany=''KI'', tomeg,0) kitomeg,');
           SQL.Add('tomeg AS netto,irany,'''' AS Mjegysorszam');
           SQL.Add(' FROM forgalom');
           SQL.Add(' WHERE aut_nyom=0 ');
           Open;
           first;
           DisableControls;
           while not Eof do
           begin
            Automata_mjegy_Rec.mjegy_rec_betoltese_nyomtatasa(False,AF.Auto_mjegyQ);
            Sleep(200);
            AF.Auto_mjegyINUPQ.close;
            AF.Auto_mjegyINUPQ.SQL.Clear;
            AF.Auto_mjegyINUPQ.SQL.Add('UPDATE forgalom SET aut_nyom=1 WHERE id='+fields[0].AsString);
            AF.Auto_mjegyINUPQ.ExecSQL;
            Next;
           end;
           EnableControls;
           Close
         end;
      end;
     //if Automata_merlegjegy_parositaskor then
     // begin
        With AF.Auto_mjegyQ do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT id,erkdatum,erkido,tavdatum, tavido,');
           SQL.Add(' rendszam, betomeg,kitomeg,');
           SQL.Add(' netto,IF(betomeg>kitomeg,''BE'',''KI'') AS irany,Mjegysorszam');
           SQL.Add(' FROM parositott');
           SQL.Add(' WHERE aut_nyom=0');
           //ParamByName('a').AsBoolean:=False;
           Open;
           first;
           DisableControls;
           while not Eof do
           begin
            Automata_mjegy_Rec.mjegy_rec_betoltese_nyomtatasa(True,AF.Auto_mjegyQ);
            Sleep(200);
            AF.Auto_mjegyINUPQ.close;
            AF.Auto_mjegyINUPQ.SQL.Clear;
            AF.Auto_mjegyINUPQ.SQL.Add('UPDATE parositott SET aut_nyom=1 WHERE id='+fields[0].AsString);
            AF.Auto_mjegyINUPQ.ExecSQL;
            Next;
           end;
           EnableControls;
           Close
         end;
      //end;
   end;
   Af.Auto_mjegy_kapcs.Close;
end;

function TAF.bizszam(length: integer; pad: char;kt,etag:string;tulid:integer): string;
var
  s: Integer;
begin
 if tulid=0 then //nem merlegjegy
 begin
  with SszQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT IF(MAX(EV_SSZ)is NULL,1,MAX(EV_SSZ)+1) FROM '+kt+' WHERE YEAR(datum)=YEAR(CURRENT_TIMESTAMP) ');
    Open;
    s := Fields[0].AsInteger;
    Close
  end;
  result :=IntToStr(CurrentYear)+'/'+RightStr(StringOfChar(pad, length) + IntToStr(s), length);
 end
 else
  begin
    with SszQ do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT IF(MAX(EV_SSZ)is NULL,1,MAX(EV_SSZ)+1) FROM '+kt);
      SQL.Add( ' WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP) ');
      SQL.Add(' AND tul_id='+tulid.ToString);
      Open;
      s := Fields[0].AsInteger;
      Close
    end;
    result :=etag+IntToStr(CurrentYear)+'/'+RightStr(StringOfChar(pad, length) + IntToStr(s), length);
  end;

end;


procedure TAF.camlog(S: string);
 var tf : TextFile;
    m:string;
begin
 m:=ExtractFileDir(application.exename);
// ForceDirectories(m);
 AssignFile(tf,m+'\cam_log.txt');
 if not FileExists(m+'\cam_log.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, s+' : '+Datetimetostr(Now)+'');
 Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
end;

function TAF.cfg_kezel(magyarazat,csoport, tulajdonsag, tipus: String;
  ertek: Variant): Variant;
begin
 with CfgT do
  begin
    open;
    if Locate('csoport;tulajdonsag',VarArrayOf([csoport,tulajdonsag]),[] ) then
     begin
       case tipus[1] of
        'S':Result:=CfgT.FieldByName('ertek') .AsString;
        'I':Result:=CfgT.FieldByName('ertek') .AsInteger;
        'B':Result:=CfgT.FieldByName('ertek') .AsBoolean;
        'F':Result:=CfgT.FieldByName('ertek') .AsFloat;
       end;
     end
    else
     begin
       edit;
       Append;
       FieldByName('csoport').AsString:=csoport;
       FieldByName('tulajdonsag').AsString:=tulajdonsag;
       FieldByName('tipus').AsString:=tipus;
       FieldByName('ertek').AsString:=VarToStr(ertek);
       FieldByName('magyarazat').AsString:=magyarazat;
       post;
       Result:=ertek;
     end;
     close
  end;

end;

function TAF.partner_kesz(tid, tarid, pid: Integer; tort: ShortInt): Extended;
begin
 with Partner_keszleteQ do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT `partner_keszlete`(:pid,:tid,:tarid,:tort)');
    params[0].AsInteger:=pid;
    params[1].AsInteger:=tid;
    params[2].AsInteger:=tarid;
    params[3].value:=tort;
    open;
    Result:=fields[0].Value;
    Close
  end;
end;

procedure TAF.programozo_letrehozasa;
var i:Integer;
    sqlsz:string;
begin
 with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Insert into felhasz ');
    SQL.Add('(nev,jelszo)VALUES(:nev,:jsz) ');
    Params[0].AsString:='Programozó';
    Params[1].AsString:=Transform('Matt');
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('Insert into jogok ');
    SQL.Add(' (f_id, ');
    for I := 1 to 19 do SQL.Add(' j'+i.ToString+',');
    SQL.Add('j20) VALUES((SELECT MAX(ID) from felhasz),');
    for I := 1 to 19 do SQL.Add('1,');
    SQL.Add('1)');
    ExecSQL;
    Close
  end;
end;

procedure TAF.psz_plusz(medi,mennyi: Integer);
begin
if duplex_mjegy then mennyi:=mennyi*2;//csak duplexnél duplán kell számolni a példányszámokat

with Q1 do
 begin
   Close;
   SQL.Clear;
   SQL.add(' UPDATE merlegjegy SET psz=psz+:p0 WHERE id='+#39+medi.ToString+#39);
   Params[0].AsInteger:=mennyi;
   ExecSQL;
   Close;
 end;
end;

procedure TAF.Regiek_torlese;
var inupQ: TFDQuery;
begin
  inupQ:=TFDQuery.Create(Application);
  inupQ.Connection:=Kapcs;
  with inupQ do
  begin
    close;
    SQL.Clear;
    SQL.Add('UPDATE nyitbe SET torolve=1');
    SQL.Add('WHERE Erkdatum<:datum AND torolve<>1 AND irany is NULL ');
    ParamByName('datum').AsDate:=date;
    //ParamByName('irany').AsString:='';
    ExecSQL;
    free;
  end;
  NyitbeQ.close;
  NyitbeQ.Open;
end;

procedure TAF.rendez(ds: TFDDataSet; fname: string);
var aktindex,ujindex:string;
begin
  aktindex:='';
  ujindex:='';
 with ds do
  begin
   if indexfieldNames='' then IndexFieldNames:=fname+':A'
   else
   begin
     aktindex:=IndexFieldNames;
     IndexFieldNames.Empty;
     if (fname=Copy(aktindex,0,Length(fname))) then
     if (Pos(':A',aktindex)=0) then ujindex:=fname+':A' else ujindex:=fname+':D'
     else ujindex:=fname+':A';
     IndexFieldNames:=ujindex;
   end;
  { if (Pos(':A',ujindex)=0) then Last else} First
  end;
end;

procedure TAF.rendszam_combok(combobox: TComboBox);
begin
  combobox.Clear;
  with af.rszQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct(rendszam) from merlegjegy where rendszam<>'+#39+''+#39+' ORDER BY rendszam ASC');
    Open();
    First;
    DisableControls;
    while not Eof do
    begin
      combobox.Items.Add(Fields[0].AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct(rendszam2) from merlegjegy where rendszam2<>'+#39+''+#39+' ORDER BY rendszam2 ASC');
    Open();
    First;
    while not Eof do
    begin
      if combobox.Items.Indexof(Fields[0].AsString)<0 then  combobox.Items.Add(Fields[0].AsString);
      Next;
    end;
    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct(rendszam) from rendszam where rendszam<>'+#39+''+#39+' ORDER BY rendszam ASC');
    Open();
    First;
    while not Eof do
    begin
      if combobox.Items.Indexof(Fields[0].AsString)<0 then  combobox.Items.Add(Fields[0].AsString);
      Next;
    end;
    EnableControls;
  end;
end;

procedure TAF.restart_log;
var tf : TextFile;
    m:string;
begin
 m:=ExtractFileDir(application.exename);
// ForceDirectories(m);
 AssignFile(tf,m+'\rastart_log.txt');
 if not FileExists(m+'\rastart_log.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, 'A szoftver sikeresen újraindult:  '+Datetimetostr(Now)+'');
 Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
end;

procedure TAF.script_log(uzenet: string);
var tf : TextFile;
    m:string;
begin
 m:=ExtractFileDir(application.exename)+'\SQL_LOG';
 ForceDirectories(m);
 AssignFile(tf,m+'\script_log.txt');
 if not FileExists(m+'\script_log.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, uzenet+' ('+Datetimetostr(Now)+')');
 Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
end;

procedure TAF.soapXML_letrehozasa(id:Integer);
var s:TStringList;
    fn,sorsz:string;
begin
 s:=TStringList.Create;

 with Q1 do
  begin
    Close;
    SQL.Clear;
    if id=0 then SQL.Add('Select * from merlegjegy where id=(select MAX(id) FROM merlegjegy)')
    else SQL.Add('Select * from merlegjegy where id='+#39+id.ToString+#39);
    open;
    if IsEmpty then Exit;
     sorsz:=StringReplace(FieldByName('sorszam').AsString,'/','_',[rfReplaceAll]);
     fn:=ExtractFileDir(ExtractFilePath(application.exename))+'\'+sorsz+'.xml';
    s.Add('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>');
    s.Add('<Merlegjegy>');
      if FieldByName('STORNO').AsString='' then s.Add('<Muvelet>Letrehozas</Muvelet>')
      else s.Add('<Muvelet>Storno</Muvelet>');
      s.Add('<Sorszam>'+FieldByName('sorszam').AsString+ '</Sorszam>');
      s.Add('<Irany>'+FieldByName('Irany').AsString[1]+ '</Irany>');
     s.Add('<Ugyfel>');
       s.Add('<kod>'+FieldByName('P_kod').AsString+ '</kod>');
       s.Add('<nev>'+FieldByName('P_nev').AsString+ '</nev>');
     s.Add('</Ugyfel>');
     s.Add('<Termek>');
       s.Add('<kod>'+FieldByName('termek_kod').AsString+ '</kod>');
       s.Add('<nev>'+FieldByName('termek_nev').AsString+ '</nev>');
     s.Add('</Termek>');
     s.Add('<Rendszamok>');
      s.Add('<Rendszam_egy>'+FieldByName('Rendszam').AsString+ '</Rendszam_egy>');
      s.Add('<Rendszam_ketto>'+FieldByName('Rendszam2').AsString+ '</Rendszam_ketto>');
     s.Add('</Rendszamok>');
    s.Add('<Merlegeles>');
      s.Add('<Brutto>'+FieldByName('Brutto').AsString+ '</Brutto>');
      s.Add('<Tara>'+FieldByName('Tara').AsString+ '</Tara>');
      s.Add('<Netto>'+FieldByName('Netto').AsString+ '</Netto>');
    s.Add('</Merlegeles>');
    s.Add('<Idopontok>');
     s.Add('<Elso_meres>');
       s.Add('<Datum>'+FormatDatetime('YYYY-MM-DD',FieldByName('erkdatum').AsDateTime)+'</Datum>');
       s.Add('<ido>'+FieldByName('erkido').AsString+'</ido>');
     s.Add('</Elso_meres>');
     s.Add('<Masodik_meres>');
       s.Add('<Datum>'+FormatDatetime('YYYY-MM-DD',FieldByName('Tavdatum').AsDateTime)+'</Datum>');
       s.Add('<ido>'+FieldByName('tavido').AsString+'</ido>');
     s.Add('</Masodik_meres>');
    s.Add('</Idopontok>');
    s.Add('</Merlegjegy>');
    s.Text:=FormatXMLData(s.Text);
    s.SaveToFile(fn,TEncoding.UTF8);
    Close;
  end;
  s.Free;
  if not FileExists(StringReplace(fn,ExtractFileDir(ExtractFilePath(application.exename)),soapXML,[rfReplaceAll])) then
           TFile.Move(fn,StringReplace(fn,ExtractFileDir(ExtractFilePath(application.exename)),soapXML,[rfReplaceAll]));
// fn:=sapkuldve+df.Q1meres_id.AsString+'.xml';
// vn:=sapvalasz+df.Q1meres_id.AsString+'.xml';

end;

procedure TAF.soclog(S: string);
    var tf : TextFile;
    m:string;
begin
 m:=ExtractFileDir(application.exename);
// ForceDirectories(m);
 AssignFile(tf,m+'\LOG\sock_log.txt');
 if not FileExists(m+'\LOG\sock_log.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, s+' : '+Datetimetostr(Now)+'');
// Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
end;

procedure TAF.tabla_kizar(tabla: string);
begin
  with ZarolQ do
  begin
    Close;
    sql.Clear;
    SQL.Add('UNLOCK TABLES');
    ExecSQL;
  end;
end;

procedure TAF.tabla_zarol(tabla: string);
begin
 with ZarolQ do
  begin
    Close;
    sql.Clear;
    SQL.Add('LOCK TABLE '+tabla+' READ NOWAIT');
    ExecSQL;
  end;
end;

function TAF.tabla_zarolva(tabla: string): Integer;
begin
  with ZarolvaQ do
   begin
     Close;
     SQL.Clear;
     SQL.Add('SHOW OPEN tables LIKE "'+tabla+'"');
     open;
     Result:=fieldbyName('In_use').AsInteger;
     Close
   end;
end;

function TAF.tara(rsz: string): Integer;
begin
with taraQ do
 begin
   Close;
   ParamByName('R').AsString:=rsz;
   Open();
   Result:=Fields[0].AsInteger;
 end;
end;

procedure TAF.tomeglog(S: string);
  var tf : TextFile;
    m:string;
begin
 m:=ExtractFileDir(application.exename)+'\LOG';
 ForceDirectories(m);
 AssignFile(tf,m+'\tomeg_log_'+formatDatetime('YYYYMMDD',Now)+'.txt');
 if not FileExists(m+'\tomeg_log_'+formatDatetime('YYYYMMDD',Now)+'.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, Datetimetostr(Now)+' -'+s);
 //Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
end;

procedure TAF.torzs_import_xlsx;
var XLSXlist: TStringDynArray;
    i: Integer;
    import_kesz,p_import_kesz:Boolean;
    searchResult : TSearchRec;

  procedure termek_import(fn:string);
  var s: integer;
      begin
       import_kesz:=False;
       //varF.Label1.Caption:='Termék törzs importálása...';
      // varF.Label2.Caption:='Importálás indítása... ';
       import_log('Termék import indítása ');
      // Application.ProcessMessages;
       //varf.Show;

        try
         FExcel.Workbooks.Open(fn,EmptyParam , True , EmptyParam , EmptyParam ,
         EmptyParam , EmptyParam , EmptyParam , EmptyParam ,
         EmptyParam , EmptyParam , EmptyParam , EmptyParam , 0);
        except
         import_log('Termék excel indítása sikertelen! ');
         torzsiport_folyamatban:=false;
         varf.Close;
         import_kesz:=true;
         exit;
        end;
        try
          s:=2;
          TermekT.Open;
          TermekT.DisableControls;
          while  FExcel.Cells.Item[s,1].text<>'' do//}s<300 do
           begin
             //varF.Label2.Caption:='Feldolgozás: '+FExcel.Cells.Item[s,2].text;
             //Application.ProcessMessages;
             if not TermekT.Locate('kod',FExcel.Cells.Item[s,1],[]) then  TermekT.Append
             else TermekT.edit;
             termekt.FieldByName('kod').AsString:=FExcel.Cells.Item[s,1].text;
             termekt.FieldByName('nev').AsString:=FExcel.Cells.Item[s,2].text;
             termekt.FieldByName('itj').AsString:=FExcel.Cells.Item[s,3].text;
             TermekT.Post;
             Inc(s)
           end;
          TermekT.EnableControls;
          TermekT.Close;
          import_log('Termék import kész ');
          FworkBook.Close(False,fn);
        finally
         //varf.Close;

         import_kesz:=True;
        end;
      end;
  procedure partner_import(fn:string);
  var s: integer;
    begin
       p_import_kesz:=False;
      // varF.Label1.Caption:='Partner törzs importálása...';
      // varF.Label2.Caption:='Importálás indítása... ';
       import_log('Partner import indítása ');
      // Application.ProcessMessages;
     //  varf.Show;

        try
         FExcel2.Workbooks.Open(fn,EmptyParam , True , EmptyParam , EmptyParam ,
         EmptyParam , EmptyParam , EmptyParam , EmptyParam ,
         EmptyParam , EmptyParam , EmptyParam , EmptyParam , 0);
        except
         import_log('Partner excel indítása sikertelen! ');
         torzsiport_folyamatban:=false;
         varf.Close;
         p_import_kesz:=true;
         exit;
        end;

        try
          s:=2;
          partnerT.Open;
          partnerT.DisableControls;
          while  FExcel2.Cells.Item[s,1].text<>'' do//s<500 do
           begin
            // varF.Label2.Caption:='Feldolgozás: '+FExcel2.Cells.Item[s,4].text;
            // Application.ProcessMessages;
            try
             if not partnerT.Locate('kod',FExcel2.Cells.Item[s,2].text,[]) then  partnerT.Append
             else partnerT.edit;
             partnerT.FieldByName('kod').AsString:=Trim(Copy(FExcel2.Cells.Item[s,2].text,1,15));
             partnerT.FieldByName('nev').AsString:=Trim(copy(FExcel2.Cells.Item[s,4].text,1,150));
             partnerT.FieldByName('irsz').AsString:=Trim(Copy(FExcel2.Cells.Item[s,5].text,1,10));
             partnerT.FieldByName('Telepules').AsString:=Trim(Copy(FExcel2.Cells.Item[s,6].text,1,3));
             partnerT.FieldByName('kozterulet').AsString:=Trim(Copy(FExcel2.Cells.Item[s,7].text,1,150));
             partnerT.FieldByName('telefon').AsString:=Trim(Copy(FExcel2.Cells.Item[s,8].text,1,20));
             partnerT.FieldByName('email').AsString:=trim(Copy(FExcel2.Cells.Item[s,11].text,1,50));
             partnerT.FieldByName('adoszam').AsString:=Trim(Copy(FExcel2.Cells.Item[s,17].text,1,20));
             PartnerT.Post;
            except
             import_log('Sikertelen import: '+FExcel2.Cells.Item[s,2].text+' '+FExcel2.Cells.Item[s,4].text);
            end;
             Inc(s)
           end;
          partnerT.EnableControls;
          partnerT.Close;
          import_log('Partner import kész ');
          FworkBook2.Close(False,fn);
        finally
        // varf.Close;

         p_import_kesz:=True;
        end;
    end;
begin
 FOF.tmrElokep.Enabled:=false;
 Automentes.Enabled:=False;
 SetCurrentDir(torzs_import_mappa);
 varf.Show;
 if findfirst('cikk*', faAnyFile, searchResult) = 0 then
 //ShowMessage(searchResult.Name);
  begin
   repeat
   if FileExists(StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll])) then
         TFile.Delete(StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      TFile.Move(torzs_import_mappa+searchResult.Name,StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      FExcel:= TExcelApplication.Create(nil);
      FExcel.Connect;
      FExcel.Visible[LCID]:= false;
     termek_import(StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      // while not import_kesz do Sleep(100);
       FExcel.Disconnect;
       FExcel.Quit;
       FreeAndNil(FExcel);
    // import_log('Termék import kész ');
   until FindNext(searchResult) <>0;
   //FindClose(searchResult);
  end;

 if findfirst('partner*', faAnyFile, searchResult) = 0 then
  //ShowMessage(searchResult.Name);
  begin
   //import_log('Partner import indítása ');
   if FileExists(StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll])) then
         TFile.Delete(StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      TFile.Move(torzs_import_mappa+searchResult.Name,StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));

      FExcel2:= TExcelApplication.Create(nil);
      FExcel2.Connect;
      FExcel2.Visible[LCID]:= false;
     partner_import(StringReplace(torzs_import_mappa+searchResult.Name,torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      // while not p_import_kesz do Sleep(100);
       FExcel2.Disconnect;
       FExcel2.Quit;
       FreeAndNil(FExcel2);
    // import_log('Partner import kész ');
  end;

 //FindClose(searchResult);
 //exit;
 {XLSXlist:=(TDirectory.GetFiles(torzs_import_mappa,'*.xlsx'));

 for I := 0 to Length(XLSXlist) - 1 do
  begin
   if Pos('cikk',LowerCase(XLSXlist[i]))<>0 then
    begin
      if FileExists(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll])) then
         TFile.Delete(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      TFile.Move(XLSXlist[i],StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      FExcel:= TExcelApplication.Create(nil);
      FExcel.Connect;
      FExcel.Visible[LCID]:= false;
     termek_import(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
       while not import_kesz do Sleep(1000);
       FExcel.Disconnect;
       FExcel.Quit;
       FreeAndNil(FExcel);
    end
   else
  if Pos('partner',LowerCase(XLSXlist[i]))<>0 then
    begin
      if FileExists(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll])) then
         TFile.Delete(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
      TFile.Move(XLSXlist[i],StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));

      FExcel:= TExcelApplication.Create(nil);
      FExcel.Connect;
      FExcel.Visible[LCID]:= false;
     partner_import(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
       while not p_import_kesz do Sleep(1000);
       FExcel.Disconnect;
       FExcel.Quit;
       FreeAndNil(FExcel);
    end;
  end; }
 varF.Close;
 FOF.tmrElokep.Enabled:=true;
 Automentes.Enabled:=mentesido in [0..23];
 KillTask('EXCEL.EXE');
end;

procedure TAF.torzs_import_csv;
var XLSXlist: TStringDynArray;
    i: Integer;
    Splitted: TArray<String>;
    tft,tfp:TextFile;

  procedure termek_import(fn:string);
     var tsor:string;
      begin
       if not FileExists(fn) then exit;
       try
        varF.Label1.Caption:='Termék törzs importálása...';
        varF.Label2.Caption:='Importálás indítása... ';
        varf.Show;
        AssignFile(tft,fn);
        Reset(tft);
        Readln(tft,tsor);
       // ShowMessage(Length(tsor).ToString);
        TermekT.Open;
        TermekT.DisableControls;
        while not Eof(tft) do
         begin
           Readln(tft,tsor);
           Splitted:=tsor.Split([';']);
           varF.Label2.Caption:='Feldolgozás: '+Splitted[1];
           Application.ProcessMessages;
           if not TermekT.Locate('kod',Splitted[0],[]) then  TermekT.Append
           else TermekT.edit;
           termekt.FieldByName('kod').AsString:=Splitted[0];
           termekt.FieldByName('nev').AsString:=Splitted[1];
           termekt.FieldByName('itj').AsString:=Splitted[2];
           TermekT.Post;
         end;
        TermekT.EnableControls;
        TermekT.Close;
       finally
        CloseFile(tft);
        varf.close;
       end;
      end;
  procedure partner_import(fn:string);
  var  psor:string;
      begin
      if not FileExists(fn) then exit;
       try
        varF.Label1.Caption:='Partner törzs importálása...';
        varF.Label2.Caption:='Importálás indítása... ';
        varf.Show;
        AssignFile(tfp,fn);
        Reset(tfp);
        Readln(tfp,psor);
        //ShowMessage(Length(psor).ToString);
        partnerT.Open;
        partnerT.DisableControls;
        while  not Eof(tfp) do
         begin
          Readln(tfp,psor);
          Splitted:=psor.Split([';']);
          varF.Label2.Caption:='Feldolgozás: '+Splitted[1];
          Application.ProcessMessages;
          Try
           if not partnerT.Locate('kod',Splitted[4],[]) then  partnerT.Append
           else partnerT.edit;
           partnerT.FieldByName('kod').AsString:=Splitted[2];
           partnerT.FieldByName('nev').AsString:=Splitted[4];
           partnerT.FieldByName('irsz').AsString:=Splitted[5];
           partnerT.FieldByName('Telepules').AsString:=Splitted[6];
           partnerT.FieldByName('kozterulet').AsString:=Splitted[7];
           partnerT.FieldByName('telefon').AsString:=Splitted[8];
           partnerT.FieldByName('email').AsString:=Splitted[11];
           partnerT.FieldByName('adoszam').AsString:=Splitted[17];
           PartnerT.Post;
          except
           import_log('Hibás sor ')
          End;
         end;
        partnerT.EnableControls;
        partnerT.Close;
       finally
        CloseFile(tfp);
        varf.close;
       end;
      end;
begin
 XLSXlist:=(TDirectory.GetFiles(torzs_import_mappa,'*.csv'));
 for I := 0 to Length(XLSXlist) - 1 do
  begin
   if Pos('cikk',LowerCase(XLSXlist[i]))<>0 then
    begin
      try
       try
        termek_import(XLSXlist[i]);
       finally
        if FileExists(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll])) then
           TFile.Delete(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
        TFile.Move(XLSXlist[i],StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
       end;
      except
        import_log('Termék import sikertelen: '+XLSXlist[i])
      end;
    end;
   if Pos('partner',LowerCase(XLSXlist[i]))<>0 then
    begin
      try
       try
        partner_import(XLSXlist[i]);
       finally
        if FileExists(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll])) then
           TFile.Delete(StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
        TFile.Move(XLSXlist[i],StringReplace(XLSXlist[i],torzs_import_mappa,torzs_import_mappa+'Importalva\',[rfReplaceAll]));
       end;
      except
       import_log('Partner import sikertelen: '+XLSXlist[i])
      end;
    end;
  end;
end;

function TAF.Transform(Value: String): String;
var
  HashMD5: THashMD5;
begin
    HashMD5 := THashMD5.Create;
    HashMD5.GetHashString(Value);
    result := HashMD5.GetHashString(Value);
end;

function TAF.van_joga(jogszam: string): Boolean;
begin
  Result:=felhasznalok_jogai.Locate('f_id;jszam;jog',varArrayOf([f_ide,jogszam,True]),[]);
end;

{ Tautomata_mjegy_rec }

procedure Tautomata_mjegy_rec.mjegy_rec_betoltese_nyomtatasa(parositva:Boolean;Auto_mjegyQ: TFDQuery);
var etagja,mappaja:String;
    frxAuto_mjegy:TfrxReport;

 procedure merlegjegy_tipus_betoltese_automata;
  var Stream: TResourceStream;
  begin
    frxAuto_mjegy := TfrxReport.Create(Application);
    if Parositva then Stream := TResourceStream.Create(HInstance, 'umwelt_paros', RT_RCDATA)
    else Stream := TResourceStream.Create(HInstance, 'umwelt', RT_RCDATA);
    frxAuto_mjegy.LoadFromStream(Stream);
    Stream.Free
  end;

  procedure nyomt_volt(szamlalo:integer);
  var Auto_mjegy_kapcs:TFDConnection;
     Auto_mjegyINUPQ: TFDQuery;
  begin
    Auto_mjegy_kapcs :=TFDConnection.Create(nil);
    Auto_mjegyINUPQ:= TFDQuery.Create(nil);
    Auto_mjegy_kapcs.Params:=Af.Kapcs.Params;
    Auto_mjegy_kapcs.Connected:=true;
    Auto_mjegyINUPQ.Connection:= Auto_mjegy_kapcs;
    Auto_mjegyINUPQ.close;
    Auto_mjegyINUPQ.SQL.Clear;
    if Parositva then
      Auto_mjegyINUPQ.SQL.Add('UPDATE parositott SET aut_nyom='+szamlalo.ToString+' WHERE id='+Automata_mjegy_Rec.Id.ToString)
     else Auto_mjegyINUPQ.SQL.Add('UPDATE forgalom SET aut_nyom=1 WHERE id='+Automata_mjegy_Rec.Id.ToString);
    Auto_mjegyINUPQ.ExecSQL;
    Auto_mjegyINUPQ.Free;
    Auto_mjegy_kapcs.Free;
   end;


begin
 if Automata_mjegy_Rec=nil then Automata_mjegy_Rec := Tautomata_mjegy_rec.Create
 else mjegy_rec_ures;
 try
   if Parositva then etagja:='P' else etagja:='F';
    try
     merlegjegy_tipus_betoltese_automata;
    finally
     Automata_mjegy_Rec.Id := Auto_mjegyQ.FieldByName('id').AsInteger;
     Automata_mjegy_Rec.Mjegysorszam:=etagja + Af.nullak(Auto_mjegyQ.FieldByName('id').AsInteger,7) ;
     Automata_mjegy_Rec.Erkdatum:=Auto_mjegyQ.FieldByName('Erkdatum').AsDateTime;
     Automata_mjegy_Rec.Erkido:=Auto_mjegyQ.FieldByName('Erkido').AsDateTime;
     Automata_mjegy_Rec.Tavdatum:=Auto_mjegyQ.FieldByName('Tavdatum').AsDateTime;
     Automata_mjegy_Rec.Tavido:=Auto_mjegyQ.FieldByName('Tavido').AsDateTime;
     Automata_mjegy_Rec.Rendszam:=Auto_mjegyQ.FieldByName('rendszam').AsString;
     Automata_mjegy_Rec.Betomeg:=Auto_mjegyQ.FieldByName('betomeg').AsInteger;
     Automata_mjegy_Rec.Kitomeg:=Auto_mjegyQ.FieldByName('kitomeg').AsInteger;
//
//      if Automata_mjegy_Rec.Betomeg>Automata_mjegy_Rec.Kitomeg then
//       Automata_mjegy_Rec.Tara:=Automata_mjegy_Rec.kitomeg
//      else Automata_mjegy_Rec.Tara:=Automata_mjegy_Rec.Betomeg;

      Automata_mjegy_Rec.Netto:=Auto_mjegyQ.FieldByName('Netto').AsInteger;
      Automata_mjegy_Rec.Parositott:=Parositva;
      Automata_mjegy_Rec.Irany:=Auto_mjegyQ.FieldByName('irany').AsString;
    end;
 finally
  with frxAuto_mjegy do
   begin
     if TfrxMemoView(FindObject('membizszam'))<>nil
     then TfrxMemoView(FindObject('membizszam')).Text:=Automata_mjegy_Rec.Mjegysorszam;
     if TfrxMemoView(FindObject('memelsoido'))<>nil
     then TfrxMemoView(FindObject('memelsoido')).Text:=DateToStr(Automata_mjegy_Rec.Erkdatum)+ ' '+ TimeToStr(Automata_mjegy_Rec.Erkido);
     if TfrxMemoView(FindObject('memmasodikido'))<>nil
     then TfrxMemoView(FindObject('memmasodikido')).Text:=DateToStr(Automata_mjegy_Rec.Tavdatum)+ ' '+ TimeToStr(Automata_mjegy_Rec.Tavido);
     if TfrxMemoView(FindObject('memrendszamok'))<>nil
     then TfrxMemoView(FindObject('memrendszamok')).Text:=Automata_mjegy_Rec.Rendszam;
     if TfrxMemoView(FindObject('memirany'))<>nil
     then TfrxMemoView(FindObject('memirany')).Text:=Automata_mjegy_Rec.Irany;
     if TfrxMemoView(FindObject('membrutto'))<>nil
     then TfrxMemoView(FindObject('membrutto')).Text:=Automata_mjegy_Rec.Betomeg.ToString;
     if TfrxMemoView(FindObject('memtara'))<>nil
     then TfrxMemoView(FindObject('memtara')).Text:=Automata_mjegy_Rec.Kitomeg.ToString;
     if TfrxMemoView(FindObject('memnetto'))<>nil
     then TfrxMemoView(FindObject('memnetto')).Text:=Automata_mjegy_Rec.Netto.ToString;
     PrintOptions.Copies:=1;
     PrepareReport();
     if UpperCase(ParamStr(1)) = '/PDFTESZT' then
      begin
        mappaja:=ExtractFilePath(Application.ExeName)+'AMJ_PDF\'+etagja+'\';
        ForceDirectories(mappaja);
        Af.frxPDFTeszthez.DefaultPath:=mappaja;
        Af.frxPDFTeszthez.FileName:=Automata_mjegy_Rec.Mjegysorszam+'.pdf';
        Export(Af.frxPDFTeszthez);
      end
     else
       if Automata_mjegy_Rec.Irany='BESZÁLLÍTÁS' then
       begin
         nyomtatas_szamlalo:=nyomtatas_szamlalo+1;
         PrintOptions.ShowDialog := False;
         Print;
         nyomt_volt(2);
       end
       else  nyomt_volt(3);
     Free
   end;

 end;
end;

procedure Tautomata_mjegy_rec.mjegy_rec_ures;
begin
with Automata_mjegy_Rec do
 begin
  Id:=0;
  Mjegysorszam:='';
  Erkdatum:=0;
  Erkido:=0;
  Tavdatum:=0;
  Tavido:=0;
  Rendszam:='';
  Betomeg:=0;
  Kitomeg:=0;
  Netto:=0;
  Parositott:=False;
  Irany:='';
  Tara:=0;
 end;
end;

{ Auto_mjegy_Thread }

procedure Auto_mjegy_Thread.Execute;
var Auto_mjegyQ,Auto_mjegyINUPQ: TFDQuery;
    Auto_mjegy_kapcs:TFDConnection;


  procedure   nyom_volt_kistomeg(Parositott:boolean;Id:integer);
  begin
     Auto_mjegyINUPQ:= TFDQuery.Create(nil);
     Auto_mjegyINUPQ.Connection:= Auto_mjegy_kapcs;
     Auto_mjegyINUPQ.close;
     Auto_mjegyINUPQ. SQL.Clear;
     if not Parositott then Auto_mjegyINUPQ.SQL.Add('UPDATE forgalom SET aut_nyom=1 WHERE id='+id.ToString)
     else Auto_mjegyINUPQ.SQL.Add('UPDATE parositott SET aut_nyom=1 WHERE id='+id.ToString);
     Auto_mjegyINUPQ.ExecSQL;
     Auto_mjegyINUPQ. Free;
  end;


begin
  inherited;
  Auto_mjegyQ:= TFDQuery.Create(nil);
  Auto_mjegy_kapcs :=TFDConnection.Create(nil);
  Auto_mjegy_kapcs.Params:=Af.Kapcs.Params;
  Auto_mjegy_kapcs.Connected:=true;
  Auto_mjegyQ.Connection:= Auto_mjegy_kapcs;
  repeat



   if Auto_mjegy_kapcs.Connected then
   begin
    try
     if Automata_merlegjegy then
      begin
        With Auto_mjegyQ do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT id,datum As erkdatum,ido As erkido, ''1899.01.01'' AS tavdatum,''00:00:00'' AS tavido,');
           SQL.Add('rendszam,tomeg AS betomeg,0 AS kitomeg,');
           SQL.Add('0 AS netto,irany');
           SQL.Add(' FROM forgalom');
           SQL.Add(' WHERE aut_nyom=0 ');

           Open;
           first;
           DisableControls;
           while not Eof do
           begin
            try
              if FieldByName('betomeg').AsInteger>Automata_mjegy_nyom_sulyhatar then
               Automata_mjegy_Rec.mjegy_rec_betoltese_nyomtatasa(False,Auto_mjegyQ)
               // a súlyhatár alattiakat is nyomtatottra írja
              else  nyom_volt_kistomeg(False,FieldByName('ID').AsInteger);
            finally
              Sleep(200);
              Next;
            end;
           end;
           EnableControls;
           Close
         end;
      end;
      if Automata_merlegjegy_parositaskor then
      begin

        With Auto_mjegyQ do
         begin
           Close;
           SQL.Clear;
           SQL.Add('SELECT id,erkdatum,erkido,tavdatum, tavido,');
           SQL.Add('rendszam, betomeg,kitomeg,');
           SQL.Add('netto,IF(betomeg>kitomeg,'+#39+'BESZÁLLÍTÁS'+#39+','+#39+'KISZÁLLÍTÁS'+#39+') AS irany');
           SQL.Add(' FROM parositott');
           SQL.Add(' WHERE aut_nyom=0 ');
           Open;
           first;
           DisableControls;
           while not Eof do
           begin
            try
             if (FieldByName('betomeg').AsInteger>Automata_mjegy_nyom_sulyhatar) then
              Automata_mjegy_Rec.mjegy_rec_betoltese_nyomtatasa(True,Auto_mjegyQ)
            // a súlyhatár alattiakat is nyomtatottra írja
            else  nyom_volt_kistomeg(True,FieldByName('ID').AsInteger);
            finally
              Sleep(200);
              Next;
            end;

           end;
           EnableControls;
           Close
         end;
      end;
    except
    on E : Exception do
      begin
        if UpperCase(paramstr(1))='/HIBAKERESES' then
        begin
          ShowMessage('Exception class name = '+E.ClassName);
          ShowMessage('Exception message = '+E.Message);
        end;
      end;

    end;
   end
   else
   begin
     Auto_mjegy_kapcs.Connected:=true;
   end;

   Application.ProcessMessages;
  until programvege ;
  Auto_mjegy_kapcs.Close;
  Auto_mjegyQ.Free;
  Auto_mjegy_kapcs.Free;
end;

{ Tmjegy_rec_nyom }

procedure Tmjegy_rec_nyom.mjegy_rec_nyom_ures;
begin
   with Mjegy_nyom_rec do
    begin
     Id:=0;
     Mjegysorszam:='';
     Psz :=0;
     Storno:=False;

     Tulaj_nev:='';
     Tulaj_cime:='';
     Tulaj_adosz:='';
     Tulaj_cjsz:='';
     Tulaj_telefon:='';

     Partner1_felirat:='';
     Partner1_nev:='';
     Partner1_cim:='';
     Partner2_felirat:='';
     Partner2_nev:='';
     Partner2_cim:='';
     Partner3_felirat:='';
     Partner3_nev:='';
     Partner3_cim:='';

     Ekaer:='';
     Szallev:='';
     Szarmazasi_hely:='';
     Megjegyzes:='';

     Rendszam:='';
     Erkdatum:=0;
     Erkido:=0;
     Tavdatum:=0;
     Tavido:=0;
     Irany:='';

     Termek_kod:='';
     Termek_nev:='';

     Merlegkezelo:='';

     Nedvesseg_latszik:=False;
     Alapnedv:='';
     Nedv:='';
     Nedvlevon:='';

     Tisztasag_latszik:=False;
     Tisztasag:='';
     Szemet_levon:='';

     Tort_latszik:=False;
     Tort:='';
     Tort_tomeg:='';

     Hekto_latszik:=False;
     Hekto:='';

     Brutto:='';
     Tara:='';
     Sz_netto:='';
     Netto:='';

     Termek_ar:='';

     Tomeg_levon_ny:='';
     Tomeg_levon_szoveg:='';

     Fs_Parositott:=False;

     Siker_latszik:=False;
     Siker:='';
     Siker_tomeg:='';

     Szaritasi_dij_rec:='';
     Tisztitasi_dij_rec:='';

     Ertek:='';
    end;
end;

end.
