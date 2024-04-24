unit DMSoapU;

interface

uses
  System.SysUtils, System.Classes, System.Net.URLClient, System.Net.HttpClient,
  System.Net.HttpClientComponent, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
  System.Hash,vcl.Forms,Winapi.Windows, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,System.NetEncoding, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,winapi.Ole2,System.DateUtils,VCL.Dialogs;

type
  ThSOAP  = class(TThread)
    procedure soap_log;
  protected
    procedure Execute; override;
  {public
    port:string; }
  end;

type
  TDMSoapF = class(TDataModule)
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    XMLD1: TXMLDocument;
    ForgQ_tread: TFDQuery;
    InupQ_tread: TFDQuery;
    Soap_tread_kapcs: TFDConnection;
    Soap_tread_transaction: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function bekodolas(Value : String;tip:Integer):String;
    function SystemTimeToUTC(Sys : TDateTime):TDateTime;
    Procedure UTCT(out ctms,ctms_jel,req_id:string);
    function ZeroNumber2(Num: Integer): String;
    function ZeroNumber(Num: Integer): String;
    procedure mappak_letrehozasa;
    function SoapXmlKuld:Boolean;
    procedure SoapValaszFeldolgozasa(fi:string);
    procedure szerver_statusza(out st:Boolean;OUT szoveg: string);
  public
    { Public declarations }
    procedure SoapThreadRun;
  end;

var
  DMSoapF: TDMSoapF;
  soap_req_ver,soap_head_ver,
  soap_login,soap_passhash,soap_alakulcs,
  soap_szapcim,soap_ip,soap_keres,soap_valasz,soap_kuldve,soap_ujraker,
  soap_mappa, soap_gyar,
  soap_bekuldve,soap_merlegnek,soap_alap_mappa:String;
  rp: IHTTPResponse;
  verziovaltas,soap_kepet_kuld:Boolean;
  soap_kapcs_idokorlat,soap_valaszadasi_idokorlat,soap_kuldes_gyakorisaga:Integer;
  Xmlbe,valasz: TStringList;
  soap_port,soap_szerver,soap_adatbazis,soap_user,soap_passwd: String;

  SoapTh:ThSOAP;
  soap_programvege:Boolean=False;
  soap_logba:string;
  soap_kilepes,soap_xml_teszt:Boolean;

implementation
  uses Soap_valaszU,Soap_PingU,Soap_keresU;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDMSoapF }

function TDMSoapF.bekodolas(Value: String; tip: Integer): String;
var
  HashSHA256: THashSHA2;
  HashSHA512: THashSHA2;
begin
 case tip of
  256:Begin
        HashSHA256 := THashSHA2.Create;
        HashSHA256.GetHashString(Value,SHA256);
        result := HashSHA256.GetHashString(Value,SHA256);
      end;
  512:Begin
        HashSHA512 := THashSHA2.Create;
        HashSHA512.GetHashString(Value,SHA512);
        result := HashSHA512.GetHashString(Value,SHA512);
      End;

 end;
end;

procedure TDMSoapF.DataModuleCreate(Sender: TObject);
begin
 soap_req_ver:='1.0';
 soap_head_ver:='1.0';
end;

procedure TDMSoapF.mappak_letrehozasa;
begin
//itt még nem tudom h mi kell mi nem, majd kiderül
  soap_valasz:=soap_alap_mappa+'\SOAP_XML\soap_valasz\';
  ForceDirectories(soap_valasz);
  soap_kuldve:=soap_alap_mappa+'\SOAP_XML\soap_kuldve\';
  ForceDirectories(soap_kuldve);
end;

procedure TDMSoapF.SoapThreadRun;
begin
inherited;
 try
  try
   NetHTTPClient1.ConnectionTimeout:=soap_kapcs_idokorlat;
   NetHTTPClient1.ResponseTimeout:=soap_valaszadasi_idokorlat;
   NetHTTPRequest1.ConnectionTimeout:=soap_kapcs_idokorlat;
   NetHTTPRequest1.ResponseTimeout:=soap_valaszadasi_idokorlat;
   with Soap_tread_kapcs do
    begin
      Close;
      with Params do
      begin
        clear;
        Add('DriverID=MySQL');
        Add('Server='+soap_szerver);
        Add('Port='+soap_port);
        Add('Database='+soap_adatbazis);
        Add('User_Name='+soap_user);
        Add('Password='+soap_passwd);
        Add('CharacterSet= Utf8mb4');
      end;
      Open
    end;
  except
   exit;
  end;
 finally
  if Soap_tread_kapcs.Connected then SoapTh:=ThSOAP.Create(False);
 end;
  //ha true akkor suspended
 // LekerdezesTh.port:=port;  //ha változót szeretnék beküldeni akkor create(true)
 // NTAKTh.Resume; //majd resume
end;

procedure TDMSoapF.SoapValaszFeldolgozasa(fi: string);
var GenResult:IXMLGenIFResultRootType;
    GenResFuncCode,SOAP_CODE,MERID: string;
    GenResReasonCode: string;
begin
 XMLD1.LoadFromFile(fi);
 GenResult:=GetGenIFResultRoot(XMLD1);
 GenResFuncCode:=GenResult.Result.FuncCode;
 GenResReasonCode:=GenResult.Result.ReasonCode;
 SOAP_CODE:=GenResult.GenIFResults.GenIFResult.UserSpecResultXMLs.MerlegResponseXMLs.MerlegResponseXML.SAP_CODE.ToString;
 MERID:=GenResult.GenIFResults.GenIFResult.UserSpecResultXMLs.MerlegResponseXMLs.MerlegResponseXML.ID.ToString;

 with InupQ_tread do
  begin
    //visszakapott soap code mentese mereshez
    Close;
    SQL.Clear;
    SQL.Add(' UPDATE forgalom SET ');
    SQL.Add(' soap_allapot=:soap_allapot, soap_code=:soap_code');
    SQL.Add(' WHERE id='+#39+IntToStr(StrToInt(merid)-30000000)+#39);
    ParamByName('soap_allapot').AsString:=GenResFuncCode;
    ParamByName('soap_code').AsString:=SOAP_CODE;
    ExecSQL;
  end;
end;

function TDMSoapF.SoapXmlKuld: Boolean;
var fn,Vn,stcode,
    tms,tmsj,rid,val:string;
    GenQuery: IXMLGenIfQueryRootType;


 function Req_sign(tmst,reqid:string):string;
  begin
    Result:=UpperCase(bekodolas(reqid+tmst+soap_alakulcs,512));
  end;

   function kep_beszurasa: RawByteString;
     var inStream: TFileStream;
         outStream: TStringStream;
    begin
     if (FileExists(ForgQ_tread.FieldByName('kepnev').AsString)){and(Q1.FieldByName('rendszam').AsString<>'A')} then
     begin
      inStream := TFileStream.Create(ForgQ_tread.FieldByName('kepnev').AsString, fmOpenRead);

      try
        outStream := TStringStream.Create;
        try
          TNetEncoding.Base64.Encode(inStream, outStream);
          Result:=outStream.DataString;
          Result:=StringReplace(Result, #13#10,'', [rfReplaceAll]);
        finally
          outStream.Free;
        end;
      finally
        inStream.Free;
      end;
     end
     else Result:='';
    end;

   procedure hiba_mentese(uzenet:string);
     var tf : TextFile;
    begin
     AssignFile(tf, ExtractFileDir(ExtractFilePath(application.exename))+'\SAP_hibak.txt');
     //ShowMessage(ExtractFileDir(ExtractFilePath(application.exename))+'\hibak.txt');
     if not FileExists(ExtractFileDir(ExtractFilePath(application.exename))+'\SAP_hibak.txt') then ReWrite(tf)
     else Append(tf);
     WriteLn(tf, DateTimeToStr(now)+':'+ uzenet);
     //Writeln(tf,'*************************************************************');
     CloseFile(tf);
    end;

    function entorles(rpk:string):string;
     var x:string;
     begin
       x:=rpk;
       while pos(#13#10, x) > 0 do
       Delete(x, pos(#13#10, x), 2);
       Result:=x;
     end;
begin
  fn:=soap_kuldve+intToStr(ForgQ_tread.FieldByName('id').AsInteger+30000000)+'.xml';
  vn:=soap_valasz+intToStr(ForgQ_tread.FieldByName('id').AsInteger+30000000)+'.xml';
  utct(tms,tmsj,rid);
  GenQuery:= NewGenIfQueryRoot;
  {XmlDoc.Version:='1.0';
XMLDoc.Encoding:='utf-8';}
  with GenQuery.Header do
   begin
     RequestId:=rid;
     Timestamp:=tmsj;
     RequestVersion:=soap_req_ver;
     HeaderVersion:=soap_head_ver;
   end;
 with GenQuery.User do
  begin
    login:=soap_login;
    PasswordHash:=UpperCase(Bekodolas(soap_passhash,512));
    RequestSignature:=req_sign(tms,rid);
  end;
  //(Mérésbe beírni req-id)
  with GenQuery.GenIfQuerys.GenIfQuery do
   begin
     Querydomain:='merleg';
     Op_name:='post';
     Op_mode:=0;
     Sql_name:='';
     Params:='';
     soap_gyar:='2010';
     with UserSpecXMLs.MerlegXMLs.MerlegXML do
      begin
        id:=ForgQ_tread.FieldByName('id').AsInteger+30000000;//mérés id
        WERKS:=StrToInt(soap_gyar);
        MERLEG:='M'+soap_gyar+ForgQ_tread.FieldByName('soap_merleg_azonosito').AsString;//vmi mérleg azonosító
        if ForgQ_tread.FieldByName('rendszam').AsString='' then  Rendszam:='******'
        else Rendszam:=ForgQ_tread.FieldByName('rendszam').AsString;
        Brutto:=ForgQ_tread.FieldByName('tomeg').AsString;
        ForgalomIrany:=ForgQ_tread.FieldByName('irany').AsString;
        Datum:=ForgQ_tread.FieldByName('datum').AsString;
        Ido:=FormatDateTime('hh:nn:ss',ForgQ_tread.FieldByName('ido').AsDateTime);
        if (soap_kepet_kuld) and (FileExists(ForgQ_tread.FieldByName('kepnev').AsString)) then
         begin
          Picture_Base64.Ext:='jpg';
          Picture_Base64.NodeValue:=kep_beszurasa;
         end
         else
         begin
          Picture_Base64.Ext:='jpg';
          Picture_Base64.NodeValue:='';
         end;
      end;
   end;
  Xmlbe:=TStringList.Create;
  Xmlbe.Add('<?xml version="1.0" encoding="UTF-8" standalone="yes"?>');
  Xmlbe.Add(FormatXMLData(GenQuery.XML));
  Xmlbe.SaveToFile(fn);
  Xmlbe.Free;

  if soap_xml_teszt then//csak létrehozza az xmlt
   begin
     Result:=True;
     exit;
   end;
  try
   rp:=NetHTTPRequest1.Post(soap_szapcim,fn);
   //hiba_mentese(ForgQ_tread.FieldByName('id').AsString+': ' + rp.StatusCode.ToString);
  // soap_logba:= rp.StatusCode.ToString;
   //Synchronize;
   Result:=True;
  except
    on E:Exception do
    begin
     { MessageDlg('hiba: ' +
        E.Message, mtWarning, [mbOK], 0);  }
     //hiba_mentese(ForgQ_tread.FieldByName('id').AsString+': ' + E.Message);
     Result:=False;
    end;
  end;
  if Result then
   begin
     stcode:=rp.StatusCode.ToString;
     //hiba_mentese(ForgQ_tread.FieldByName('id').AsString+': Result=True');
     val:=entorles(rp.ContentAsString);
     valasz:=TStringList.Create;
     try
      valasz.Add(FormatXMLDAta(val));
     except
      valasz.Add(val);
     end;
    // valasz.Add(FormatXMLData(rp.ContentAsString(TEncoding.UTF8)));
     valasz.SaveToFile(vn,TEncoding.UTF8);
     valasz.Free;
     if stcode='200' then SoapValaszFeldolgozasa(vn);
   end;
end;

function TDMSoapF.SystemTimeToUTC(Sys: TDateTime): TDateTime;
var TimeZoneInf : _TIME_ZONE_INFORMATION;
    SysTime,LocalTime: TSystemTime;
begin
  if GetTimeZoneInformation(TimeZoneInf) < $FFFFFFFF then
  begin
    DatetimetoSystemTime(Sys, SysTime);
    if TzSpecificLocalTimeToSystemTime(@TimeZoneInf,SysTime,LocalTime) then
      result:=SystemTimeToDateTime(LocalTime)
    else result:=Sys;
  end
  else result:=Sys;
end;

procedure TDMSoapF.szerver_statusza(out st: Boolean; out szoveg: string);
var van:Boolean;
    hiba:string;
begin
 Ping1(soap_ip,1,32,van,hiba);
 if van then
  begin
   szoveg:='SOAP elérhetõ!';
  end
 else
  begin
   szoveg:='SOAP nem elérhetõ: '+hiba ;
  end;
 st:=van;
 //if not st then hiba_mentese(szoveg);
end;

//MAJD ÁTÍROM AZ NTAK-osra v a NAV-osra
procedure TDMSoapF.UTCT(out ctms, ctms_jel, req_id: string);
var
  Day, Month, Year: Word;
  Hour, Minute, Sec, Millisec: Word;
  //kDay, kMonth, kYear: Word;
  kHour, kMinute, kSec, kMillisec: Word;
  UTC: TDateTime;
  kliensIdo: TDateTime;
  kulonbseg:Integer;
  jel:String;
begin
  UTC := SystemTimeToUTC(Now);
  kliensIdo:=Now;
  DecodeDate(UTC, Year, Month, Day);
  DecodeTime(UTC, Hour, Minute, Sec, Millisec);
  //DecodeDate(kliensIdo, kYear, kMonth, kDay);
  DecodeTime(kliensIdo, kHour, kMinute, kSec, kMillisec);
  if Hour>kHour then jel:='-' else jel:='+';
  kulonbseg:=khour-hour;
  if kulonbseg<0 then kulonbseg:=-1*kulonbseg;
  ctms_jel := Year.ToString + '-' + ZeroNumber(Month) + '-' + ZeroNumber(Day)
    + 'T' + ZeroNumber(Hour) + ':' + ZeroNumber(Minute) + ':' + ZeroNumber(Sec)+'.'
    +ZeroNumber2(Millisec)+'Z'+jel+'0'+IntToStr(kulonbseg) + ':00';
  ctms := ZeroNumber(Year)+ZeroNumber(Month)+ZeroNumber(Day)+ZeroNumber(Hour)
           +ZeroNumber(Minute)+ZeroNumber(Sec);
  Req_id:='R'+ ctms+copy(soap_login,6,12)+IntToStr(Random(9999)); //21 karakter
end;

function TDMSoapF.ZeroNumber(Num: Integer): String;
begin
  if Num<0 then num:=-1*num;
  if Num < 10 then
    Result := '0' + IntToStr(Num)
  else
    Result := IntToStr(Num);
end;

function TDMSoapF.ZeroNumber2(Num: Integer): String;
begin
  if Num<0 then num:=-1*num;
  if Num < 10 then Result := '00' + IntToStr(Num);
  if (Num>9) and (Num<100) then  Result := '0' + IntToStr(Num);
  if (Num>99) and (Num<1000) then  Result := IntToStr(Num);
end;

{ ThSOAP }

procedure ThSOAP.Execute;
var Szerver_elerheto: Boolean;
    szerver_uzenet: string;
begin
  inherited;
repeat
 CoInitialize(nil);
 DMSoapF.szerver_statusza(Szerver_elerheto,szerver_uzenet);
 if (not Szerver_elerheto)and(not soap_xml_teszt) then
  begin
    soap_logba:= szerver_uzenet;
    Synchronize(soap_log);
  end
 else
  try
    soap_logba:= szerver_uzenet;
    Synchronize(soap_log);
    DMSoapF.mappak_letrehozasa;
    DMSoapF.ForgQ_tread.Close;
    DMSoapF.ForgQ_tread.open;
    with DMSoapF.ForgQ_tread do
     begin
       first;
       while not Eof do
       begin
        soap_logba:= 'Küldés  meres ID: '+FieldByName('id').AsString;
        Synchronize(soap_log);
        try
         if not DMSoapF.SoapXmlKuld then
          begin
           soap_logba:= 'Küldés sikertelen, meres ID: '+FieldByName('id').AsString;
           Synchronize(soap_log);
          end;
        except
          soap_logba:= 'Küldés sikertelen, meres ID: '+FieldByName('id').AsString;
          Synchronize(soap_log);
        end;
         next;
       end;
     end;
  except
    soap_logba:= 'Küldés sikertelen!';
    Synchronize(soap_log);
  end;
  Sleep(soap_kuldes_gyakorisaga);
until soap_programvege;//mielõtt kilép a programból true, eddig fut
end;

procedure ThSOAP.soap_log;
var tf : TextFile;
   loga: String;
   d,f:String;
begin
 loga:=soap_alap_mappa+'\SOAP_Log\';
 ForceDirectories(loga);
 d:=FormatDateTime('yyyy_mm_dd',Date);
 f:=loga+'SOAP_log'+d+'.txt';
 AssignFile(tf,f);
 if not FileExists(f) then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, soap_logba+' '+DateTimeToStr(now));
 //Writeln(tf,'*************************************************************');
 CloseFile(tf);
end;

end.
