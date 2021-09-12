unit AU;

interface



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
  Xml.XMLDoc,System.ioUtils,Vcl.StdCtrls, frxExportBaseDialog;

const
  joga: array [1..20] of string=
   ('Dolgozó felvitele','Dolgozó módosítása','Mérlegjegy módosítás','Mérlegjegy készítés',
    'Mérlegelõk módosítása','Mérés','Kezdõ készlet felv.','Kézi mérés',
    '','','','', '','','','','','','','');

  Lampa_Zold=0;
  Lampa_Piros=1;



type
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
    KeszletQTerm_id: TLongWordField;
    KeszletQTerm_kod: TWideStringField;
    KeszletQTerm_nev: TWideStringField;
    KeszletQTarolo_id: TIntegerField;
    KeszletQTarolo_nev: TWideStringField;
    KeszletQpartner_id: TIntegerField;
    KeszletQPartner_kod: TWideStringField;
    KeszletQPartner_nev: TWideStringField;
    KeszletQfelhasznalo_id: TIntegerField;
    KeszletQFelhasznalo_nev: TWideStringField;
    KeszletQmenny: TBCDField;
    KeszletQmodositva: TDateTimeField;
    KeszletQtort: TBooleanField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure Forgalom_TimerTimer(Sender: TObject);
    procedure felhasznalok_jogaijogChange(Sender: TField);
    procedure frxmerlegAfterPrint(Sender: TfrxReportComponent);
    procedure KapcsBeforeCommit(Sender: TObject);
    procedure KapcsLost(Sender: TObject);
    procedure AutomentesTimer(Sender: TObject);
  private
    { Private declarations }
    procedure ini_kezel;
    procedure GetVerisonNumber(var Fover, Alver, Build: Integer; File_ut: Pchar);
  public
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
    procedure psz_plusz(medi:Integer);
    function tara(rsz:string):Integer;
    procedure soclog(S:string);
    function nev_foglalt(ide:Integer; neve, tbl: String): Boolean;
    function kod_foglalt(ide:Integer;kodja,tbl:String):Boolean;
    function partner_kesz(tid,tarid, pid:Integer; tort:ShortInt):Extended;
    procedure rendszam_combok(combobox:TComboBox);
    function datum_szoveg(datum:TDateTime;idokell:boolean):string;

    { Public declarations }
  end;

var
  AF: TAF;
  visszanap:integer;
  port,szerver,adatbazis,user,passwd,telephely,rtspURL,felhnev,PLC_IP,meresirany:string;
  f_ide,utolso_sql,mentesido:Integer;
  jogmod,rendszamleker,nagykamera,mezgaz:Boolean;
  bit:integer;
  mertertek,konyvtar,verzio,tulajcime,tulajneve,adosz,pdfmappa,kuj,ktj,vezerles_tipus,kepmappa:string;
  nullszintvolt,rendszamvolt,sorompo_vezerles:boolean;
  nyugalmiszamlalo,nyugvovarakozas,elozotomeg,Elso_lampa,Hatso_lampa,mintomeg:integer;
  Sorompo_nyit_cim_BE,Sorompo_Infra_Hiba_cim_BE,sorompo_infra_hibas_BE,Sorompo_Nyitas_Volt_Cim_BE:integer;
  Sorompo_nyit_cim_KI,Sorompo_Infra_Hiba_cim_KI,sorompo_infra_hibas_KI,Sorompo_Nyitas_Volt_Cim_KI,Ping_varakozas,Merleg_Nullaz_Cim:integer;
  lehajtasivarakozas:integer;
  rtspURLs: array [0..3] of string;
  soapXML:string;
  lejatszas: Boolean;
  libre_mappa:string;
  duplex_mjegy,automata_meres,nedvesseg_beolvasasa,automata_kezelo,programvege:Boolean;
  IOmodul_van:boolean;
  IOmodul_IP:string;
  IOmodul_regiszter_iras1:integer;
  bizkibocsajto_id:Integer;
  Merleg_tipus:String;


implementation
uses my_sqlU,MjegyListaU,NezetU,Db_modU,SQL_text,LibreExcelU;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TAF.DataModuleCreate(Sender: TObject);
begin
  bit:=9;
  ini_kezel;
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
  FormatSettings.DateSeparator := '.';
  FormatSettings.ShortDateFormat := 'yyyy.MM.dd';
  FormatSettings.DecimalSeparator:=',';

  if ParamStr(1)='/SC' then ModScript.ScriptDialog:=ModScriptDialog
  else ModScript.ScriptDialog:=nil;
  modok_vegrehajt;//  SQL_text unitba kell

  Kapcs.ResourceOptions.AutoReconnect:=True;
  jogmod:=False;
  Automentes.Enabled:=mentesido in [0..23];
  if (nedvesseg_beolvasasa) and (mezgaz) then Sample_Kapcs.Connected:=true;
  //ha ez a constans nem nulla a partner tablabol veszem ki a biz kibocsjtot
  {bizkibocsajto_id:=2;
  if bizkibocsajto_id<>0 then
   begin
    with Q1 do
     begin
       Close;
       sql.Clear;
       SQL.Add('select pc.nev,pc.cim,p.adoszam,p.kuj,p.ktj from partner_combo pc INNER JOIN partner p ON p.id=pc.id');
       SQL.Add(' WHERE pc.id='+bizkibocsajto_id.ToString);
       open;
       if not eof then
        begin
         tulajneve:=FieldByName('nev').AsString;
         tulajcime:=FieldByName('cim').AsString;
         adosz:=FieldByName('adoszam').AsString;
         kuj:=FieldByName('kuj').AsString;
         ktj:=FieldByName('ktj').AsString;
        end;
       close
     end;
   end }


end;

function TAF.datum_szoveg(datum: TDateTime; idokell: boolean): string;
var ev,ho,nap,ora,perc,mp,szmp:word;
begin
  DecodeDate(datum,ev,ho,nap);
  DecodeTime(datum,ora,perc,mp,szmp);
  Result:=IntToStr(ev)+IntToStr(ho)+IntToStr(nap);
  if idokell then Result:=Result+IntToStr(ora)+IntToStr(perc)+IntToStr(mp)+IntToStr(szmp);
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

procedure TAF.Forgalom_TimerTimer(Sender: TObject);
var id,id1:integer;
  function lekerdez(rendszam,irany:string;datum:TDate):Integer;
  begin
    if irany='B' then irany:='K'
    else if irany='K' then irany:='B';
    with ForgTimQ do
    begin
      close;
      SQL.Clear;
      SQL.Add('SELECT * FROM forgalom ');
      SQL.Add('WHERE (Rendszam<>"-") and (Parositott=0) and (Rendszam=:rendszam) and (Irany=:irany) and (Datum>=:datum) ');
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
      if FieldByName('Rendszam').AsString<>'-' then
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
          if FieldByName('Irany').AsString='K' then
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

procedure TAF.ini_kezel;
var i:Tinifile;
   fover,alver,build,j,k:Integer;
   ujdbnev:string;
begin
  i:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
  GetVerisonNumber(Fover, Alver,Build,PChar(Application.ExeName));
  verzio:='Ver.: '+IntToStr(fover)+'.'+IntToStr(alver)+'.'+IntToStr(build);
  konyvtar:=ExtractFilePath(Application.ExeName);
  szerver:=i.ReadString('ALAP','Szerver','localhost');
  i.writeString('ALAP','Szerver',szerver);
  adatbazis:=i.ReadString('ALAP','Adatbazis','');
 { if adatbazis='' then
   begin
    ujdbnev:=InputBox('Adatbázis neve','Adatbázis','');
    adatbazis:=ujdbnev
   end;  }
  i.writeString('ALAP','Adatbazis',adatbazis);

  port:=i.ReadString('ALAP','Port','3307');
  i.writeString('ALAP','Port',port);
  visszanap:=i.ReadInteger('ALAP','Visszanap',5);
  i.WriteInteger('ALAP','Visszanap',visszanap);

  telephely:=i.ReadString('ALAP','Telephely','Rakamaz');
  i.writeString('ALAP','Telephely',telephely);
  //rtspURL:=i.ReadString('ALAP','RtspURL','');
  //i.writeString('ALAP','RtspURL',rtspURL);
  nyugvovarakozas:=i.ReadInteger('ALAP','nyugvovarakozas',10);
  i.WriteInteger('ALAP','nyugvovarakozas',nyugvovarakozas);

  mintomeg:=i.ReadInteger('ALAP','mintomeg',500);
  i.WriteInteger('ALAP','mintomeg',mintomeg);
  tulajcime:=i.ReadString('ALAP','Cim','');
  i.writeString('ALAP','Cim',tulajcime);

  tulajneve:=i.ReadString('ALAP','Nev','');
  i.writeString('ALAP','Nev',tulajneve);

  adosz:=i.ReadString('ALAP','Adoszam','');
  i.writeString('ALAP','Adoszam',adosz);

  kuj:=i.ReadString('ALAP','KUJ','');
  i.writeString('ALAP','KUJ',kuj);

  ktj:=i.ReadString('ALAP','KTJ','');
  i.writeString('ALAP','KTJ',ktj);



  j:=i.ReadInteger('ALAP','Automata_kezelo',0);
  i.WriteInteger('ALAP','Automata_kezelo',j);
  automata_kezelo:=j=1;

  pdfmappa:=i.ReadString('Mappak','Pdf',ExtractFileDir(ExtractFilePath(application.exename))+'\Merlegjegy_PDF');
  i.writeString('Mappak','pdf',pdfmappa);

  j:=i.ReadInteger('ALAP','Rendszamleker',0);
  i.WriteInteger('ALAP','Rendszamleker',j);
  rendszamleker:=j=1;

  lejatszas:=i.ReadBool('ALAP','Lejatszas',False);
  i.WriteBool('ALAP','Lejatszas',lejatszas);

  vezerles_tipus:=UpperCase(i.ReadString('ALAP','vezerles_tipus(USB/PLC)','PLC'));
  i.writeString('ALAP','vezerles_tipus(USB/PLC)',vezerles_tipus);

  lehajtasivarakozas:=i.ReadInteger('ALAP','Lehajtasivarakozas',10);
  i.WriteInteger('ALAP','Lehajtasivarakozas',lehajtasivarakozas);

  nagykamera:=i.ReadBool('ALAP','nagy_kemera_kep',true);
  i.WriteBool('ALAP','nagy_kemera_kep',nagykamera);
  Merleg_tipus:=i.ReadString('ALAP','Merleg_tipus','Dibal');
  i.WriteString('ALAP','Merleg_tipus',Merleg_tipus);


  PLC_IP:=i.ReadString('PLC_USB','PLC_IP','Local');
  i.writeString('PLC_USB','PLC_IP',PLC_IP);



  Elso_lampa:=i.ReadInteger('PLC_USB','Elso_lampa',11);
  i.WriteInteger('PLC_USB','Elso_lampa',Elso_lampa);



  Hatso_lampa:=i.ReadInteger('PLC_USB','Hatso_lampa',21);
  i.WriteInteger('PLC_USB','Hatso_lampa',Hatso_lampa);

  Sorompo_nyit_cim_BE:=i.ReadInteger('PLC_USB','Sorompo_nyit_cim_BE',10);
  i.WriteInteger('PLC_USB','Sorompo_nyit_cim_BE',Sorompo_nyit_cim_BE);

  Sorompo_nyit_cim_KI:=i.ReadInteger('PLC_USB','Sorompo_nyit_cim_KI',20);
  i.WriteInteger('PLC_USB','Sorompo_nyit_cim_KI',Sorompo_nyit_cim_KI);

  Sorompo_Infra_Hiba_cim_BE:=i.ReadInteger('PLC_USB','Sorompo_Infra_Hiba_cim_BE',12);
  i.WriteInteger('PLC_USB','Sorompo_Infra_Hiba_cim_BE',Sorompo_Infra_Hiba_cim_BE);

  Sorompo_Infra_Hiba_cim_KI:=i.ReadInteger('PLC_USB','Sorompo_Infra_Hiba_cim_KI',22);
  i.WriteInteger('PLC_USB','Sorompo_Infra_Hiba_cim_KI',Sorompo_Infra_Hiba_cim_KI);

  Sorompo_Nyitas_Volt_Cim_BE:=i.ReadInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_BE',13);
  i.WriteInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_BE',Sorompo_Nyitas_Volt_Cim_BE);

  Sorompo_Nyitas_Volt_Cim_KI:=i.ReadInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_KI',23);
  i.WriteInteger('PLC_USB','Sorompo_Nyitas_Volt_Cim_KI',Sorompo_Nyitas_Volt_Cim_KI);

  Merleg_Nullaz_Cim:=i.ReadInteger('PLC_USB','Merleg_Nullaz_Cim',30);
  i.WriteInteger('PLC_USB','Merleg_Nullaz_Cim',Merleg_Nullaz_Cim);

  j:=i.ReadInteger('PLC_USB','Sorompo_vezerles',1);
  i.WriteInteger('PLC_USB','Sorompo_vezerles',j);
  Sorompo_vezerles:=j=1;

  sorompo_infra_hibas_BE:=i.ReadInteger('PLC_USB','sorompo_infra_hibas_BE',0);
  i.WriteInteger('PLC_USB','sorompo_infra_hibas_BE',sorompo_infra_hibas_BE);

  sorompo_infra_hibas_KI:=i.ReadInteger('PLC_USB','sorompo_infra_hibas_KI',0);
  i.WriteInteger('PLC_USB','sorompo_infra_hibas_KI',sorompo_infra_hibas_KI);

  Ping_varakozas:=i.ReadInteger('PLC_USB','Ping_varakozas(s)',10);
  i.WriteInteger('PLC_USB','Ping_varakozas(s)',Ping_varakozas);

  IOmodul_IP:=i.ReadString('PLC_USB','IOmodul_IP','Local');
  i.writeString('PLC_USB','IOmodul_IP',IOmodul_IP);
  IOmodul_van:=UpperCase( IOmodul_IP )<>'LOCAL';


  IOmodul_regiszter_iras1:=i.ReadInteger('PLC_USB','IOmodul_regiszter_iras1',1);
  i.WriteInteger('PLC_USB','IOmodul_regiszter_iras1',IOmodul_regiszter_iras1);

  utolso_sql:=i.ReadInteger('MySql','Utolso_sql',maxSQL);//mert az 1 a db letrehozas
  i.WriteInteger('MySql','Utolso_sql',utolso_sql);



  for k := 0 to 1 do
    begin
     rtspurls[k]:=i.ReadString('Rtsp','URL Cam '+k.ToString,'');
     i.WriteString('Rtsp','URL Cam '+k.ToString,rtspurls[k]);
    // showmessage(rtspURLS[k]);
    end;


  soapXML:=i.ReadString('Mappak','SoapXML',ExtractFileDir(ExtractFilePath(application.exename))+'\SoapXML');
  i.writeString('Mappak','SoapXML',SoapXML);
  ForceDirectories(soapXML);
  kepmappa:=i.ReadString('Mappak','kepek',ExtractFileDir(ExtractFilePath(application.exename))+'\Kepek');
  i.writeString('Mappak','kepek',kepmappa);
  libre_mappa:=i.ReadString('ALAP','Libre_mappa',ExtractFileDir(ExtractFilePath(application.exename))+'\Libre_export');
  i.writeString('ALAP','Libre_mappa',libre_mappa);
  mentesido:=i.ReadInteger('ALAP','Mentesido',20);
  i.WriteInteger('ALAP','Mentesido',mentesido);
  mezgaz:=i.Readbool('ALAP','Mezgaz',false);//mert az 1 a db letrehozas
  i.WriteBool('ALAP','Mezgaz',mezgaz);
  duplex_mjegy:=i.Readbool('ALAP','duplex',false);//dupla mérlegjegy egy lapon
  i.WriteBool('ALAP','duplex',duplex_mjegy);
  automata_meres:=i.ReadBool('ALAP','automata_meres',False);
  i.WriteBool('ALAP','automata_meres',automata_meres);
  nedvesseg_beolvasasa:=i.ReadBool('ALAP','nedvesseg_beolvasasa',False);
  i.WriteBool('ALAP','nedvesseg_beolvasasa',nedvesseg_beolvasasa);



  ForceDirectories(kepmappa);
  kepmappa:=kepmappa+'\';
  ForceDirectories(pdfmappa);
  ForceDirectories(libre_mappa);
  libre_mappa:=libre_mappa+'\';
  i.UpdateFile;
  i.Free;
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
begin
//Exit;
Automentes.Enabled:=false;
//ShowMessage('volt');
//ShowMessage(libre_mappa+formatDatetime('YYYYMMDD_'+mentesido.ToString,Now)+'*');
if FindFirst(libre_mappa+formatDatetime('YYYYMMDD_'+mentesido.ToString,Now)+'*', faAnyFile, searchResult)<>0 then
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
Automentes.Enabled:=true;
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
    SQL.Add('SELECT IF(MAX(EV_SSZ)is NULL,1,MAX(EV_SSZ)+1) FROM '+kt+' WHERE YEAR(tavdatum)=YEAR(CURRENT_TIMESTAMP) ');
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

procedure TAF.psz_plusz(medi: Integer);
begin
with Q1 do
 begin
   Close;
   SQL.Clear;
   SQL.add(' UPDATE merlegjegy SET psz=psz+1 WHERE id='+#39+medi.ToString+#39);
   ExecSQL;
   Close;
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
 AssignFile(tf,m+'\sock_log.txt');
 if not FileExists(m+'\sock_log.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, s+' : '+Datetimetostr(Now)+'');
 Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
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

end.
