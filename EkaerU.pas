unit EkaerU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls,System.Hash,Xml.XMLDoc, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExControls, JvDBLookup,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  System.DateUtils;

type
  TEkaerF = class(TForm)
    btnkilepes: TButton;
    edmegrend_azon: TEdit;
    cbxtipus: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ed_fuvneve: TEdit;
    ed_fuvadosz: TEdit;
    ed_fuvcim1: TEdit;
    cbx_fuvojel: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ed_szallneve: TEdit;
    Label8: TLabel;
    ed_szalladosz: TEdit;
    cbx_szallojel: TComboBox;
    Label10: TLabel;
    ed_szallcim1: TEdit;
    Label11: TLabel;
    ed_vevadosz: TEdit;
    Label14: TLabel;
    ed_vevocim1: TEdit;
    Label15: TLabel;
    cbx_vevojel: TComboBox;
    Label16: TLabel;
    Label17: TLabel;
    ed_vevoneve: TEdit;
    Label18: TLabel;
    ed_felceg: TEdit;
    ed_felcegadosz: TEdit;
    Label19: TLabel;
    cbx_felcegojel: TComboBox;
    Label20: TLabel;
    ed_felcegtel: TEdit;
    ed_felcegemail: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    ed_leceg: TEdit;
    ed_lecegadosz: TEdit;
    Label30: TLabel;
    cbx_lecegojel: TComboBox;
    Label31: TLabel;
    ed_lecegtel: TEdit;
    ed_lecegemail: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    ed_vontato_rsz: TEdit;
    ed_vont1_rsz: TEdit;
    ed_vont2_rsz: TEdit;
    cbx_vontato_jel: TComboBox;
    Label40: TLabel;
    cbx_vont1_jel: TComboBox;
    Label41: TLabel;
    cbx_vont2_jel: TComboBox;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    fel_datum: TDateTimePicker;
    le_datum: TDateTimePicker;
    fel_ido: TDateTimePicker;
    le_ido: TDateTimePicker;
    cbx_fuvok: TComboBox;
    ed_termeknev: TEdit;
    ed_adr: TEdit;
    ed_tomeg: TEdit;
    ed_ertek: TEdit;
    ed_engedelyszam: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    btnkuldes: TButton;
    felcimlookup: TJvDBLookupCombo;
    Label7: TLabel;
    felcimekQ: TFDQuery;
    felcimekQDs: TDataSource;
    felcimekQid: TFDAutoIncField;
    felcimekQtul_id: TIntegerField;
    felcimekQirsz: TWideStringField;
    felcimekQtelepules: TWideStringField;
    felcimekQkozterulet: TWideStringField;
    felcimekQkozt_jelleg: TWideStringField;
    felcimekQhazszam: TWideStringField;
    felcimekQepulet: TWideStringField;
    felcimekQlepcsohaz: TWideStringField;
    felcimekQemelet: TWideStringField;
    felcimekQajto: TWideStringField;
    felcimekQhrsz: TWideStringField;
    felcimekQemail: TWideStringField;
    felcimekQtelefon: TWideStringField;
    felcimekQcim: TWideStringField;
    btnkitolt: TButton;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    lblekaer: TLabel;
    ed_vtsz: TEdit;
    Button2: TButton;
    lecimekQ: TFDQuery;
    lecimekQDs: TDataSource;
    lecimlookup: TJvDBLookupCombo;
    Label12: TLabel;
    Button1: TButton;
    lecimekQid: TFDAutoIncField;
    lecimekQtul_id: TIntegerField;
    lecimekQirsz: TWideStringField;
    lecimekQtelepules: TWideStringField;
    lecimekQkozterulet: TWideStringField;
    lecimekQkozt_jelleg: TWideStringField;
    lecimekQhazszam: TWideStringField;
    lecimekQepulet: TWideStringField;
    lecimekQlepcsohaz: TWideStringField;
    lecimekQemelet: TWideStringField;
    lecimekQajto: TWideStringField;
    lecimekQhrsz: TWideStringField;
    lecimekQemail: TWideStringField;
    lecimekQtelefon: TWideStringField;
    lecimekQcim: TWideStringField;
    Label9: TLabel;
    procedure btnkuldesClick(Sender: TObject);
    procedure felcimlookupCloseUp(Sender: TObject);
    procedure btnkilepesClick(Sender: TObject);
    procedure btnkitoltClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure lecimlookupCloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function bekodol(s:string):string;
    function SystemTimeToUTC(Sys : TDateTime):TDateTime;
    Procedure UTCT(out ctms,ctms_jel,req_id:string);
    function ZeroNumber(Num: Integer): String;
    function ZeroNumber2(Num: Integer): String;
    function kuldes:string;
    procedure uresre;
    procedure kitolt;
  public
    { Public declarations }
    procedure fo;
  end;

var
  EkaerF: TEkaerF;
  KiXML,VaXML:TStringlist;
  ekaercim:String;
implementation
  uses au,mjegyU, FelrakCimekU,LerakCimekU, UzenetekU;
{$R *.dfm}

{ TForm1 }

function TEkaerF.bekodol(s: string): string;
 var HashSHA256: THashSHA2;
     HashSHA512: THashSHA2;
begin
  HashSHA512 := THashSHA2.Create;
  HashSHA512.GetHashString(s,SHA512);
  result :=UpperCase(HashSHA512.GetHashString(s,SHA512));
end;


procedure TEkaerF.btnkilepesClick(Sender: TObject);
begin
 Close
end;

procedure TEkaerF.btnkitoltClick(Sender: TObject);
begin
 kitolt
end;

procedure TEkaerF.btnkuldesClick(Sender: TObject);
begin
 kuldes
end;

procedure TEkaerF.Button1Click(Sender: TObject);
begin
 try
   lerakcimekF.fo(MjegyF.tulajTID.AsInteger);
 finally
   lecimekQ.Close;
   lecimekQ.Open
 end;
end;

procedure TEkaerF.Button2Click(Sender: TObject);
begin
 try
   felrakcimekF.fo(MjegyF.tulajTID.AsInteger);
 finally
   felcimekQ.Close;
   felcimekQ.Open
 end;
end;

procedure TEkaerF.felcimlookupCloseUp(Sender: TObject);
begin
 if felcimlookup.KeyValue<>'!' then
  begin
    ed_felcegtel.Text:=felcimekQtelefon.AsString;
    ed_felcegemail.Text:=felcimekQemail.AsString;
  end
  else
  begin
    ed_felcegtel.Clear;
    ed_felcegemail.Clear
  end;
end;

procedure TEkaerF.fo;
begin
 try
  uresre;
 finally
  kitolt;
  ShowModal
 end;
end;

procedure TEkaerF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if lblekaer.Caption<>'HIBA' then MjegyF.edekaer.Text:=lblekaer.Caption 
end;

procedure TEkaerF.FormCreate(Sender: TObject);
begin
 NetHTTPClient1.SecureProtocols:=[THTTPSecureProtocol.TLS12];
  if UpperCase(ParamStr(1)) = '/D'  then //DEMO
    begin
     ekaercim := 'https://import-test.ekaer.nav.gov.hu/TradeCardManagementService/customer/manageTradeCards';
     caption:= 'EKÁER igénylés (TESZTELÉS)';
    end
  else
   begin//Éles
    ekaercim := 'https://import.ekaer.nav.gov.hu/TradeCardManagementService/customer/manageTradeCards';
    caption:= 'EKÁER igénylés (ÉLES)';
   end;
 //  a lenti címmel lehet validalni
 //ekaercim:='https://import-test.ekaer.nav.gov.hu/TradeCardManagementService/customer/validateTradeCardRequest'
end;

procedure TEkaerF.kitolt;
var Ch:string;
    datum:TDate;
    ido:TTime;
    keszmenny:Extended;
begin
 edmegrend_azon.Text:=StringReplace(af.bizszam(6,'0','merlegjegy',MjegyF.tulajTElotag.AsString,MjegyF.tulajTID.AsInteger),'/','_',[rfReplaceAll]);//
 cbxtipus.ItemIndex:=3;
 //fuvarozót nem tudom egyenlőre
 ed_fuvneve.Text:='';
 ed_fuvadosz.Text:='';
 ed_fuvcim1.Text:='';
 cbx_fuvojel.ItemIndex:=cbx_fuvojel.Items.IndexOf('HU');
 //szállító, gondolom kiszállításkor ez az eladó
 ed_szallneve.Text:=MjegyF.Partnelist.FieldByName('nev').AsString;
 ed_szalladosz.Text:=Copy(MjegyF.Partnelist.FieldByName('adoszam').AsString,1,8);
 Application.ProcessMessages;
 cbx_szallojel.ItemIndex:=cbx_szallojel.Items.IndexOf('HU');
 ed_szallcim1.Text:=MjegyF.Partnelist.FieldByName('cim').AsString;
 //vevő
 ed_vevoneve.Text:=MjegyF.Partnerlist2.FieldByName('nev').AsString;
 ed_vevadosz.Text:=Copy(MjegyF.Partnerlist2.FieldByName('adoszam').AsString,1,8);
 Application.ProcessMessages;
 cbx_vevojel.ItemIndex:=cbx_vevojel.Items.IndexOf('HU');
 ed_vevocim1.Text:=MjegyF.Partnerlist2.FieldByName('cim').AsString;
 //felrakodási cég
 ed_felceg.Text:=MjegyF.tulajTNev.AsString;
 ed_felcegadosz.Text:=Copy(MjegyF.tulajTadoszam.AsString,1,8);
 Application.ProcessMessages;
 cbx_felcegojel.ItemIndex:=cbx_felcegojel.Items.IndexOf('HU');

 //lerakodasi cég
 ed_leceg.Text:=MjegyF.Partnerlist2.FieldByName('nev').AsString;
 ed_lecegadosz.Text:=Copy(MjegyF.Partnerlist2.FieldByName('adoszam').AsString,1,8);
 Application.ProcessMessages;
 cbx_lecegojel.ItemIndex:=cbx_lecegojel.Items.IndexOf('HU');


 //jarmű
 ed_vontato_rsz.Text:=MjegyF.cbxrendszam1.Text;
 cbx_vontato_jel.ItemIndex:=cbx_vontato_jel.Items.IndexOf('H');
 ed_vont1_rsz.Text:=MjegyF.cbxrendszam2.Text;
 cbx_vont1_jel.ItemIndex:=cbx_vont1_jel.Items.IndexOf('H');
 ed_vont2_rsz.Text:='';
 cbx_vont2_jel.ItemIndex:=cbx_vont2_jel.Items.IndexOf('H');

 //idők

 ch:=mjegyf.lblelsodat.Caption;
  try
    datum:=EncodeDate(StrToInt(copy(ch,1,4)),StrToInt(copy(ch,6,2)),StrToInt(copy(ch,9,2)));
    fel_datum.date:=datum;
  except
  end;
  ch:=mjegyF.lblelsoido.Caption;
  try
    ido:=EncodeTime(StrToInt(copy(ch,1,2)),StrToInt(copy(ch,4,2)),0,0);
    fel_ido.Time:=ido;
  except
  end;

  ch:=mjegyF.lblmasdat.Caption;
  try
    datum:=EncodeDate(StrToInt(copy(ch,1,4)),StrToInt(copy(ch,6,2)),StrToInt(copy(ch,9,2)));
    le_datum.date:=datum;
  except
  end;
  ch:=mjegyF.lblmasido.Caption;
  try
    ido:=EncodeTime(StrToInt(copy(ch,1,2)),StrToInt(copy(ch,4,2)),0,0);
    le_ido.Time:=ido;
  except
  end;

  cbx_fuvok.ItemIndex:=0;
  ed_vtsz.Text:=mjegyF.termeklistitj.AsString;
  ed_termeknev.Text:=MjegyF.termeklistNev.AsString;
  ed_adr.Clear;
  ed_engedelyszam.Clear;
  ed_tomeg.Text:=MjegyF.spnetto.Value.ToString;
  keszmenny:=0;
  if MjegyF.spEgysegtomeg.Value=1 then keszmenny:=MjegyF.spsznetto.Value
  else
  if MjegyF.chkkerekites.Checked then keszmenny:=Round(MjegyF.spszNetto.Value/MjegyF.spEgysegtomeg.Value)
  else keszmenny:=MjegyF.spszNetto.Value/MjegyF.spEgysegtomeg.Value;
  ed_ertek.Text:=IntToStr(Round(keszmenny*mjegyf.termeklistar.Value));

end;

function TEkaerF.kuldes: string;
var kifn,vfn:string;
    trid,tms,tmsj,rid:string;
    rp: IHTTPResponse;
    timestamp,times,eredmeny:string;

  function dt(datum:TDate;ido:Ttime):string;
  var e,h,n,o,p,mp,ms,pluszora:word;
  pj:string;

  function LocalToUTC(LocalTime: TDateTime): TDateTime;
   var TimeZoneInformation: TTimeZoneInformation;
      Bias: integer;
      begin
       Bias := 0;

       case GetTimeZoneInformation(TimeZoneInformation) of
        TIME_ZONE_ID_STANDARD: Bias := TimeZoneInformation.Bias + TimeZoneInformation.StandardBias;
        TIME_ZONE_ID_DAYLIGHT: Bias := TimeZoneInformation.Bias + TimeZoneInformation.DaylightBias;
       end;

       result := LocalTime + (Bias * 1/1440);
      end;
  (************************************************************)
  function nu(szam,hossz:Word):string;
  var s:string;
      i,h:integer;
  begin
    s:=IntToStr(szam);
    h:=Length(s);
    if h<hossz then for i:=1 to hossz-h do s:='0'+s;
    Result:=s;
  end;
  (************************************************************)
  begin
    DecodeDate(datum,e,h,n);
    DecodeTime(ido,o,p,mp,ms);
    if ido>LocalToUTC(ido) then
    begin
      pluszora:=round((ido-LocalToUTC(ido))*24);
      pj:='+';
    end
    else
    begin
      pluszora:=round((LocalToUTC(ido)-ido)*24);
      pj:='-';
    end;
    result:=nu(e,4)+'-'+nu(h,2)+'-'+nu(n,2)+'T'+nu(o,2)+':'+nu(p,2)+':'+nu(mp,2)+pj+nu(pluszora,2)+':00';
  end;
  function del(s,c:string):string;
  var i:integer;
  begin
    i:=1;
    Result:='';
    while Pos(c,s)<>0 do Delete(s,Pos(c,s),Length(c));
    Result:=s;
  end;

   function kimeno_xml_osszeallitasa:string;
    begin
      KiXML:=TStringList.Create;
      //fejléc            <?xml version="1.0" encoding="UTF-8"?>
      KiXML.Add('<?xml version="1.0" encoding="UTF-8"?>');
      KiXML.Add('<manageTradeCardsRequest xmlns="http://schemas.nav.gov.hu/EKAER/1.0/ekaermanagement">');
     // +'"http://schemas.nav.gov.hu/EKAER/1.0/ekaermanagement ekaermanagement.xsd" xmlns="http://schemas.nav.gov.hu/EKAER/1.0/ekaermanagement">');
      timestamp:=dt(Date,Time);
      times:=Copy(timestamp,1,19);
      times:=del(times,'-');times:=del(times,'T');times:=del(times,':');
      timestamp:=dt(Date,Time);
      KiXML.Add('<header>');
       KiXML.Add('<requestId>'+rid+'</requestId>');
       KiXML.Add('<timestamp>'+timestamp+'</timestamp>');
       KiXML.Add('<requestVersion>1.9</requestVersion>');
       KiXML.Add('<headerVersion>1.0</headerVersion>');
      KiXML.Add('</header>');
      KiXML.Add('<user>');
       KiXML.Add('<user>'+ekaer_felhasz+'</user>');
       KiXML.Add('<passwordHash>'+bekodol(ekaer_jsz)+'</passwordHash>');

       KiXML.Add('<VATNumber>'+{'57343381'}copy(MjegyF.tulajTAdoszam.AsString,1,8)+'</VATNumber>');
       KiXML.Add('<requestSignature>'+bekodol(rid+times+ekaer_csk)+'</requestSignature>');
      KiXML.Add('</user>');
       KiXML.Add('<tradeCardOperations>');
        KiXML.Add('<tradeCardOperation>');
        KiXML.Add('<index>1</index>');
        KiXML.Add('<operation>create</operation>');
        KiXML.Add('<tradeCard>');
         KiXML.Add('<orderNumber>'+edmegrend_azon.text+'</orderNumber>');
         if cbxtipus.itemindex>0 then KiXML.Add('<tradeType>'+Copy(cbxtipus.Text,2,1)+'</tradeType>');
         KiXML.Add('<modByCarrierEnabled>false</modByCarrierEnabled>');
         if ed_fuvneve.text<>'' then kixml.Add('<carrierText>'+ed_fuvneve.text+'</carrierText>');
         if ed_szallneve.text<>'' then kixml.Add('<sellerName>'+ed_szallneve.text+'</sellerName>');
         if ed_szalladosz.text<>'' then kixml.Add('<sellerVatNumber>'+ed_szalladosz.text+'</sellerVatNumber>');
         if cbx_szallojel.text<>'' then kiXml.Add('<sellerCountry>'+cbx_szallojel.text+'</sellerCountry>');
         if ed_szallcim1.text<>'' then KiXml.Add('<sellerAddress>'+ed_szallcim1.text+'</sellerAddress>');
         if ed_vevoneve.text<>'' then kixml.Add('<destinationName>'+ed_vevoneve.text+'</destinationName>');
         if ed_vevadosz.text<>'' then kixml.Add('<destinationVatNumber>'+ed_vevadosz.text+'</destinationVatNumber>');
         if cbx_vevojel.text<>'' then kiXml.Add('<destinationCountry>'+cbx_vevojel.text+'</destinationCountry>');
         if ed_vevocim1.text<>'' then kixml.Add('<destinationAddress>'+ed_VevoCim1.text+'</destinationAddress>');
         KiXML.Add('<vehicle>');
				  KiXML.Add('<plateNumber>'+ed_vontato_rsz.text+'</plateNumber>');
				  KiXML.Add('<country>'+cbx_vontato_jel.Text+'</country>');
				 KiXML.Add('</vehicle>');
         if ed_vont1_rsz.Text<>'' then
          begin
           KiXML.Add('<vehicle2>');
            KiXML.Add('<plateNumber>'+ed_vont1_rsz.text+'</plateNumber>');
            KiXML.Add('<country>'+cbx_vont1_jel.Text+'</country>');
           KiXML.Add('</vehicle2>');
          end;
         if ed_vont2_rsz.Text<>'' then
          begin
           KiXML.Add('<vehicle3>');
            KiXML.Add('<plateNumber>'+ed_vont2_rsz.text+'</plateNumber>');
            KiXML.Add('<country>'+cbx_vont2_jel.Text+'</country>');
           KiXML.Add('</vehicle3>');
          end;
          KiXML.Add('<deliveryPlans>');
					 KiXML.Add('<deliveryPlan>');
            KiXML.Add('<loadLocation>');
              if ed_felceg.Text<>'' then KiXML.Add('<name>'+ed_felceg.Text+'</name>');
              if ed_felcegadosz.Text<>'' then KiXML.Add('<VATNumber>'+ed_felcegadosz.Text+'</VATNumber>');
              if ed_felcegtel.Text<>'' then KiXML.Add('<phone>'+ed_felcegtel.Text+'</phone>');
              if ed_felcegemail.Text<>'' then KiXML.Add('<email>'+ed_felcegemail.Text+'</email>');
              if cbx_felcegojel.Text<>'' then KiXML.Add('<country>'+cbx_felcegojel.Text+'</country>');
              if felcimekQirsz.AsString<>'' then KiXML.Add('<zipCode>'+felcimekQirsz.AsString+'</zipCode>');
              if felcimekQtelepules.AsString<>'' then KiXML.Add('<city>'+felcimekQtelepules.AsString+'</city>');
              if felcimekQkozterulet.AsString<>'' then KiXML.Add('<street>'+felcimekQkozterulet.AsString+'</street>');
              if felcimekQkozt_jelleg.AsString<>'' then KiXML.Add('<streetType>'+felcimekQkozt_jelleg.AsString+'</streetType>');
              if felcimekQhazszam.AsString<>'' then KiXML.Add('<streetNumber>'+felcimekQhazszam.AsString+'</streetNumber>');
              if felcimekQhrsz.AsString<>'' then KiXML.Add('<lotNumber>'+felcimekQhrsz.AsString+'</lotNumber>');
            KiXML.Add('</loadLocation>');
            KiXML.Add('<unloadLocation>');
              if ed_leceg.Text<>'' then KiXML.Add('<name>'+ed_leceg.Text+'</name>');
              if ed_lecegadosz.Text<>'' then KiXML.Add('<VATNumber>'+ed_lecegadosz.Text+'</VATNumber>');
              if ed_lecegtel.Text<>'' then KiXML.Add('<phone>'+ed_lecegtel.Text+'</phone>');
              if ed_lecegemail.Text<>'' then KiXML.Add('<email>'+ed_lecegemail.Text+'</email>');
              if cbx_lecegojel.Text<>'' then KiXML.Add('<country>'+cbx_lecegojel.Text+'</country>');
              if lecimekQirsz.AsString<>'' then KiXML.Add('<zipCode>'+lecimekQirsz.AsString+'</zipCode>');
              if lecimekQtelepules.AsString<>'' then KiXML.Add('<city>'+lecimekQtelepules.AsString+'</city>');
              if lecimekQkozterulet.AsString<>'' then KiXML.Add('<street>'+lecimekQkozterulet.AsString+'</street>');
              if lecimekQkozt_jelleg.AsString<>'' then KiXML.Add('<streetType>'+lecimekQkozt_jelleg.AsString+'</streetType>');
              if lecimekQhazszam.AsString<>'' then KiXML.Add('<streetNumber>'+lecimekQhazszam.AsString+'</streetNumber>');
              if lecimekQhrsz.AsString<>'' then KiXML.Add('<lotNumber>'+lecimekQhrsz.AsString+'</lotNumber>');
            KiXML.Add('</unloadLocation>');

             kixml.Add('<loadDate>'+dt(fel_datum.Date,fel_ido.Time)+'</loadDate>');
             kixml.Add('<arrivalDate>'+dt(le_datum.Date,le_ido.Time)+'</arrivalDate>');
            KiXML.Add('<items>');
							kiXMl.Add('<tradeCardItem>');
                kiXML.Add('<tradeReason>'+cbx_fuvok.text[2]+'</tradeReason>');
                KiXML.Add('<productVtsz>'+ed_vtsz.text+'</productVtsz>');
                KiXML.Add('<productName>'+ed_termeknev.text+'</productName>');
                if ed_Adr.text<>'' then  kiXml.Add('<adrNumber>'+ed_Adr.text+'</adrNumber>');
                if ed_Engedelyszam.text<>'' then  kixml.Add('<transportLincense>'+ed_Engedelyszam.text+'</transportLincense>');
                kixml.Add('<weight>'+ed_Tomeg.text+'</weight>');
                kixml.Add('<value>'+ed_Ertek.text+'</value>');
              kiXMl.Add('</tradeCardItem>');
            KiXML.Add('</items>');
           KiXML.Add('</deliveryPlan>');
          KiXML.Add('</deliveryPlans>');
         KiXML.Add('</tradeCard>');
        KiXML.Add('</tradeCardOperation>');
       KiXML.Add('</tradeCardOperations>');
      KiXML.Add('</manageTradeCardsRequest>');
      KiXML.Text:=formatXMLData(KiXML.Text);
      KiXML.SaveToFile(ekaer_mappa+'kuldes\'+edmegrend_azon.Text+'.xml',TEncoding.UTF8);
      KiXML.Free;
      result:=ekaer_mappa+'kuldes\'+edmegrend_azon.Text+'.xml';
    end;
begin
 if (Length(ed_vtsz.text)<6)then
   begin
     ShowMessage(rsHibastermekVTSZ);
     exit;
   end;

   if (ed_szallneve.Text='')then
   begin
     ShowMessage(rsSzalliotMegKellAdni);
     exit;
   end;
  if (Length(ed_szalladosz.text)<8)then
   begin
     ShowMessage(rsSzallitoAdoszamaHibas);
     exit;
   end;
   if (cbx_szallojel.Text='')then
   begin
     ShowMessage(rsSzallitoOrszagatMegKellAdni);
     exit;
   end;
  if (ed_szallcim1.text='') then
   begin
     ShowMessage(rsSzallitoCimetMegKellAdni);
     exit;
   end;
  if (ed_Vevoneve.Text='')then
   begin
     ShowMessage(rsVevotMegKellAdni);
     exit;
   end;
  if (Length(ed_VevAdosz.text)<8)then
   begin
     ShowMessage(rsVevoAdoszamaHibas);
     exit;
   end;
   if (cbx_vevojel.Text='')then
   begin
     ShowMessage(rsVevoOrszagatMegKellAdni);
     exit;
   end;
  if (ed_VevoCim1.text='') then
   begin
     ShowMessage(rsVevoCimetMegKellAdni);
     exit;
   end;
 if (ed_Felceg.Text='')then
   begin
     ShowMessage(rsFelrakCegetegKellAdni);
     exit;
   end;
   if (Length(ed_felcegadosz.text)<8)then
   begin
     ShowMessage(rsFelrakAdoszamaHibas);
     exit;
   end;
  if cbx_felcegojel.text='' then
   begin
     ShowMessage(rsFelrakOrszagatMegKellAdni);
     exit;
   end;
  if felcimekQirsz.AsString='' then
   begin
     ShowMessage(rsFelrakIrszHibas);
     exit;
   end;
  if felcimekQtelepules.AsString='' then
   begin
     ShowMessage(rsFelrakVarosHibas);
     exit;
   end;

  if ed_leceg.Text='' then
   begin
     ShowMessage(rsLerakCegetMegKellAdni);
     exit;
   end;
   if (Length(ed_lecegadosz.text)<8)then
   begin
     ShowMessage(rsLerakAdoszamaHibas);
     exit;
   end;
  if cbx_lecegojel.text='' then
   begin
     ShowMessage(rsLerakOrszagatMegKellAdni);
     exit;
   end;
  if lecimekQirsz.AsString='' then
   begin
     ShowMessage(rsLerakIrszHibas);
     exit;
   end;
  if lecimekQtelepules.AsString='' then
   begin
     ShowMessage(rsLerakVarosHibas);
     exit;
   end;

 UTCT(tms,tmsj,rid);
 kifn:=kimeno_xml_osszeallitasa;
 Application.ProcessMessages;
 //ShowMessage(ekaercim);
// ShowMessage(kifn);
 try
  rp:=NetHTTPRequest1.Post(ekaercim,kifn);
 finally
   VaXML:=TStringList.Create;
   VaXML.Add(FormatXMLDAta(rp.ContentAsString(TEncoding.UTF8)));
   VaXML.SaveToFile(ekaer_mappa+'valasz\'+edmegrend_azon.Text+'_valasz.xml',TEncoding.UTF8);
   if pos('tcn',VaXML.Text)<>0 then
    begin
      eredmeny:=Copy(VaXML.Text,Pos('tcn',VaXML.Text)+4,15);
    end
   else eredmeny:= rsHiba;
   VaXML.Free;
 end;
 lblekaer.Caption:=eredmeny;
 if (Not (UpperCase(ParamStr(1))='/D'))and(Eredmeny<>'HIBA')  then close;
end;

procedure TEkaerF.lecimlookupCloseUp(Sender: TObject);
begin
 if lecimlookup.KeyValue<>'!' then
  begin
    ed_lecegtel.Text:=lecimekQtelefon.AsString;
    ed_lecegemail.Text:=lecimekQemail.AsString;
  end
 else
  begin
    ed_lecegtel.Clear;
    ed_lecegemail.Clear
  end;
end;

function TEkaerF.SystemTimeToUTC(Sys: TDateTime): TDateTime;
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

procedure TEkaerF.uresre;
var i:Integer;
begin
  for I := 0 to ComponentCount-1 do
     begin
       if (Components[i] is TEdit) then (Components[i] as TEdit).Clear
       else
       if (Components[i] is TComboBox) then (Components[i] as TComboBox).itemindex:=0;
     end;
     fel_datum.Date:=Date;
     fel_ido.Time:=Time;
     le_datum.Date:=Date;
     le_ido.Time:=IncMinute(Time,60);
     with felcimekQ do
      begin
        Close;
        ParamByName('t').AsInteger:=MjegyF.tulajTID.AsInteger;
        Open;
        if recordcount=1 then felcimlookup.KeyValue:=Fields[0].AsInteger
        else felcimlookup.KeyValue:='!';
        felcimlookupCloseUp(Self)
      end;
      with lecimekQ do
      begin
        Close;
        ParamByName('t').AsInteger:=MjegyF.tulajTID.AsInteger;
        Open;
        if recordcount=1 then lecimlookup.KeyValue:=Fields[0].AsInteger
        else lecimlookup.KeyValue:='!';
        lecimlookupCloseUp(Self)
      end;
      lblekaer.Caption:='';
end;

procedure TEkaerF.UTCT(out ctms, ctms_jel, req_id: string);
var
  Day, Month, Year: Word;
  Hour, Minute, Sec, Millisec: Word;
  kDay, kMonth, kYear: Word;
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
  DecodeDate(kliensIdo, kYear, kMonth, kDay);
  DecodeTime(kliensIdo, kHour, kMinute, kSec, kMillisec);
  if Hour>kHour then jel:='-' else jel:='+';
  kulonbseg:=khour-hour;
  if kulonbseg<0 then kulonbseg:=-1*kulonbseg;
 { ctms_jel := ZeroNumber(Year) + '-' + ZeroNumber(Month) + '-' + ZeroNumber(Day)
    + 'T' + ZeroNumber(Hour) + ':' + ZeroNumber(Minute) + ':' + ZeroNumber(Sec)+'.'
    +ZeroNumber2(Millisec)+'Z';//+jel+'0'+IntToStr(kulonbseg) + ':00'; }
   ctms_jel := ZeroNumber(Year) + '-' + ZeroNumber(Month) + '-' + ZeroNumber(Day)
    + 'T' + ZeroNumber(Hour) + ':' + ZeroNumber(Minute) + ':' + ZeroNumber(Sec)
   +jel+'0'+IntToStr(kulonbseg) + ':00';
  ctms := ZeroNumber(KYear)+ZeroNumber(kMonth)+ZeroNumber(kDay)+ZeroNumber(kHour)
           +ZeroNumber(kMinute)+ZeroNumber(kSec);
  Req_id:='RI'+ ctms+copy(ekaer_csk,6,12)+ZeroNumber2(Random(999)); //21 karakter
end;

function TEkaerF.ZeroNumber(Num: Integer): String;
begin
 if Num<0 then num:=-1*num;

  if Num < 10 then
    Result := '0' + IntToStr(Num)
  else
    Result := IntToStr(Num);
end;

function TEkaerF.ZeroNumber2(Num: Integer): String;
begin
 if Num<0 then num:=-1*num;

  if Num < 10 then Result := '00' + IntToStr(Num);
  if (Num>9) and (Num<100) then  Result := '0' + IntToStr(Num);
  if (Num>99) and (Num<1000) then  Result := IntToStr(Num);
end;

end.
