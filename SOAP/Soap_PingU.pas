unit Soap_PingU;
interface

uses SysUtils,ActiveX,ComObj,Variants,FoU;

function  Ping(const Address:string;Retries,BufferSize:Word):boolean;
function GetStatusCodeStr(statusCode:integer) : string;
procedure  Ping1(const Address:string;Retries,BufferSize:Word;out elerheto:Boolean;out hiba_szoveg:string);

implementation

function GetStatusCodeStr(statusCode:integer) : string;
begin
  case statusCode of
    0     : Result:='Success';
    11001 : Result:='Buffer Too Small';
    11002 : Result:='Destination Net Unreachable';
    11003 : Result:='Destination Host Unreachable';
    11004 : Result:='Destination Protocol Unreachable';
    11005 : Result:='Destination Port Unreachable';
    11006 : Result:='No Resources';
    11007 : Result:='Bad Option';
    11008 : Result:='Hardware Error';
    11009 : Result:='Packet Too Big';
    11010 : Result:='Request Timed Out';
    11011 : Result:='Bad Request';
    11012 : Result:='Bad Route';
    11013 : Result:='TimeToLive Expired Transit';
    11014 : Result:='TimeToLive Expired Reassembly';
    11015 : Result:='Parameter Problem';
    11016 : Result:='Source Quench';
    11017 : Result:='Option Too Big';
    11018 : Result:='Bad Destination';
    11032 : Result:='Negotiating IPSEC';
    11050 : Result:='General Failure'
    else
    result:='Unknow';
  end;
end;


//The form of the Address parameter can be either the computer name (wxyz1234), IPv4 address (192.168.177.124), or IPv6 address (2010:836B:4179::836B:4179).
function  Ping(const Address:string;Retries,BufferSize:Word):Boolean;
var
  FSWbemLocator : OLEVariant;
  FWMIService   : OLEVariant;
  FWbemObjectSet: OLEVariant;
  FWbemObject   : OLEVariant;
  oEnum         : IEnumvariant;
  iValue        : LongWord;
  i             : Integer;

  PacketsReceived : Integer;
  Minimum         : Integer;
  Maximum         : Integer;
  Average         : Integer;
begin
  //result :=false;
  //exit;
  PacketsReceived:=0;
  Minimum        :=0;
  Maximum        :=0;
  Average        :=0;
  //Writeln('');
  //memo2.lines.add(Format('Pinging %s with %d bytes of data:',[Address,BufferSize]));
  FSWbemLocator := CreateOleObject('WbemScripting.SWbemLocator');
  FWMIService   := FSWbemLocator.ConnectServer('localhost', 'root\CIMV2', '', '');
  //FWMIService   := FSWbemLocator.ConnectServer('192.168.52.130', 'root\CIMV2', 'user', 'password');
  for i := 0 to Retries-1 do
  begin
    FWbemObjectSet:= FWMIService.ExecQuery(Format('SELECT * FROM Win32_PingStatus where Address=%s AND BufferSize=%d',[QuotedStr(Address),BufferSize]),'WQL',0);
    oEnum         := IUnknown(FWbemObjectSet._NewEnum) as IEnumVariant;
    if oEnum.Next(1, FWbemObject, iValue) = 0 then
    begin
      if FWbemObject.StatusCode=0 then
      begin
        if FWbemObject.ResponseTime>0 then
          //Fof.memo2.lines.add(Format('Reply from %s: bytes=%s time=%sms TTL=%s',[FWbemObject.ProtocolAddress,FWbemObject.ReplySize,FWbemObject.ResponseTime,FWbemObject.TimeToLive]))
        else
          //Fof.memo2.lines.add(Format('Reply from %s: bytes=%s time=<1ms TTL=%s',[FWbemObject.ProtocolAddress,FWbemObject.ReplySize,FWbemObject.TimeToLive]));

        Inc(PacketsReceived);

        if FWbemObject.ResponseTime>Maximum then
        Maximum:=FWbemObject.ResponseTime;

        if Minimum=0 then
        Minimum:=Maximum;

        if FWbemObject.ResponseTime<Minimum then
        Minimum:=FWbemObject.ResponseTime;

        Average:=Average+FWbemObject.ResponseTime;
        Result:=True;
      end
      else
      begin
      if not VarIsNull(FWbemObject.StatusCode) then
        //Fof.memo2.lines.add(Format('Reply from %s: %s',[FWbemObject.ProtocolAddress,GetStatusCodeStr(FWbemObject.StatusCode)]))
      else
        //Fof.memo2.lines.add(Format('Reply from %s: %s',[Address,'Error processing request']));
       Result:=False;
      end;
    end;
    FWbemObject:=Unassigned;
    FWbemObjectSet:=Unassigned;
    //Sleep(500);
  end;

  //Fof.memo2.lines.add('');
  //Fof.memo2.lines.add(Format('Ping statistics for %s:',[Address]));
  //Fof.memo2.lines.add(Format('    Packets: Sent = %d, Received = %d, Lost = %d (%d%% loss),',[Retries,PacketsReceived,Retries-PacketsReceived,Round((Retries-PacketsReceived)*100/Retries)]));
  if PacketsReceived>0 then
  begin
  // Fof.memo2.lines.add('Approximate round trip times in milli-seconds:');
  // Fof.memo2.lines.add(Format('    Minimum = %dms, Maximum = %dms, Average = %dms',[Minimum,Maximum,Round(Average/PacketsReceived)]));
  end;
end;

procedure  Ping1(const Address:string;Retries,BufferSize:Word;out elerheto:Boolean;out hiba_szoveg:string);
begin
 try
    CoInitialize(nil);
    try
     elerheto:= Ping(address,Retries,BufferSize);
     hiba_szoveg:='';
    finally
      CoUninitialize;
    end;
 except
    on E:Exception do
     begin
       elerheto:=False;
       hiba_szoveg:=(E.Classname+ ':'+ E.Message);
     end;
 end;
 //Readln;
end;
end.
