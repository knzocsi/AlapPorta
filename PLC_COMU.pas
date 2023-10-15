unit PLC_COMU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls,Cport;

type
  ThLekerdezes  = class(TThread)
     procedure kijelez;
  protected
    procedure Execute; override;
  public
    port:string;
  end;

  TPLC_COMF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnKilepes: TButton;
    btnCOM_beallit: TButton;
    btnStartStop: TButton;
    cbModbusFunctionCode: TComboBox;
    btnKuldes: TButton;
    speKezdoCim: TSpinEdit;
    speBitSzam: TSpinEdit;
    memoLogModbus: TMemo;
    pnlAlso: TPanel;
    lblKommunikacio: TLabel;
    ComPort_RTU: TComPort;
    tmrModbusTimeout: TTimer;
    procedure btnStartStopClick(Sender: TObject);
    procedure ComPort_RTUAfterClose(Sender: TObject);
    procedure ComPort_RTUAfterOpen(Sender: TObject);
    procedure btnCOM_beallitClick(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure btnKuldesClick(Sender: TObject);
    procedure ComPort_RTURxChar(Sender: TObject; Count: Integer);
    procedure FormActivate(Sender: TObject);
    procedure tmrModbusTimeoutTimer(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);

  private
    { Private declarations }
  public
    Lekerdezett_Valasz:Integer;
    function ModBusOlvasBit(port:string;coil,db:Integer):integer;
    function ModBusIrBit(port:string;coil,ertek:Integer):integer;
    function portOpen(port:string):integer;
    procedure threadrun(port:string);
    { Public declarations }
  end;

var
  PLC_COMF: TPLC_COMF;
  dt_modbus_rx,dt_all_rx:string;
  i,j,k:integer;

  modbus_is_start_data,modbus_is_id,modbus_is_len,modbus_is_data,modbus_is_crc:boolean;
  modbus_cnt_dt,modbus_state_id:integer;
  modbus_slave_id,modbus_slave_code,modbus_slave_data_len,modbus_slave_data,modbus_slave_crc,code_str:string;
  spModbusSlaveID:byte;
  crcKey:integer;
  ModBus_Valasz:String;

  LekerdezesTh:ThLekerdezes;

implementation

{$R *.dfm}

Uses au;

procedure ThLekerdezes.kijelez;
begin
  PLC_COMF.lblKommunikacio.Caption:=IntToStr(PLC_COMF.Lekerdezett_Valasz);
end;

procedure ThLekerdezes.execute;
var i:integer;
begin
   repeat
     try
       PLC_COMF.Lekerdezett_Valasz:= PLC_COMF.ModBusOlvasBit(port,0,16);
     finally

     end;
     for i:=1 to 25 do
     begin
       Sleep(20);
       Application.ProcessMessages;
     end;
     Synchronize(kijelez);
   until programvege;
end;



{
fungsi : ubah ascii ke hex
in : ascii string
out : ascii hex
}
function ascii2hex(a_str,delimiter:string):string;
var
        i,j:integer;
        tmp_str,ctrl_str:string;
const
        ascii_ctrl:array[0..32] of string=('NULL','SOH','STX','ETX','EOT','ENQ','ACK','BELL','BS','HT',
                'LF','VT','FF','CR','SO','SI','DLE','DC1','DC2','DC3','DC4','NAK','SYN','ETB','CAN','EM',
                'SUB','ESC','FS','GS','RS','US','SP');
begin
result:='';
try
        tmp_str:=a_str;
        //for i:=1 to length(tmp_str) do
        i:=0;
        repeat
        begin
                inc(i);
                if tmp_str[i]='<' then
                        begin
                                ctrl_str:='';
                                inc(i);
                                repeat
                                       ctrl_str:=ctrl_str+tmp_str[i];
                                       inc(i);
                                until tmp_str[i]='>';

                                for j:=0 to 32 do
                                        if ctrl_str=ascii_ctrl[j] then
                                                break;

                                result:=Result+'$'+inttohex(j,2)+delimiter;
                        end
                else
                        result:=Result+'$'+inttohex(ord(tmp_str[i]),2)+delimiter;
        end
        until i>=length(tmp_str);

except
        on Exception do exit;
end;
end;


{
fungsi : ubah hex ke ascii
in : hex string
out : ascii string
}
function hex2ascii(a_str_hex,delimiter:string):string;
var
        i:integer;
        str_hex_tmp,tmp_str:string;
const
        ascii_ctrl:array[0..32] of string=('NULL','SOH','STX','ETX','EOT','ENQ','ACK','BELL','BS','HT',
                'LF','VT','FF','CR','SO','SI','DLE','DC1','DC2','DC3','DC4','NAK','SYN','ETB','CAN','EM',
                'SUB','ESC','FS','GS','RS','US','SP');
begin
result:='';
str_hex_tmp:='';
try
        tmp_str:=a_str_hex;
        for i:=1 to length(tmp_str) do
        begin
                if tmp_str[i]<>delimiter[1] then
                        str_hex_tmp:=str_hex_tmp+tmp_str[i]
                else
                        begin
                                if StrToInt(str_hex_tmp)<=32 then
                                        result:=Result+'<'+ascii_ctrl[StrToInt(str_hex_tmp)]+'>'
                                else
                                        result:=Result+chr(StrToInt(str_hex_tmp));
                                str_hex_tmp:='';
                        end;
        end;
except
        on Exception do exit;
end;
end;

{
fungsi : ubah ascii normal ke ascii extended
in : ascii string
out : ascii extended string
}
function ascii2asciiextended(adata,delimiter:string):string;
var
        i:integer;
        tmp_str:string;
const
        ascii_ctrl:array[0..32] of string=('NULL','SOH','STX','ETX','EOT','ENQ','ACK','BELL','BS','HT',
                'LF','VT','FF','CR','SO','SI','DLE','DC1','DC2','DC3','DC4','NAK','SYN','ETB','CAN','EM',
                'SUB','ESC','FS','GS','RS','US','SP');
begin
        Result:='';
        tmp_str:=adata;
        try
                i:=0;
                repeat
                        inc(i);
                        if ord(tmp_str[i])<=32 then
                                Result:=Result+'<'+ascii_ctrl[ord(tmp_str[i])]+'>'+delimiter
                        else
                                Result:=Result+tmp_str[i]+delimiter;
                until i>=length(tmp_str);
        except
                on Exception do
                        exit;
        end;
end;

{
fungsi : ubah ascii ke dec
in : ascii string
out : dec string
}
function ascii2decimal(adata,delimiter:string):string;
var
        i:integer;
        tmp_str:string;
begin
        Result:='';
        tmp_str:=adata;
        try
                i:=0;
                repeat
                        inc(i);
                        Result:=Result+inttostr(ord(tmp_str[i]))+delimiter;
                until i>=length(tmp_str);
        except
                on Exception do exit;
        end;
end;

{
function utk crc modbus
input : rtu modbus data
output : crc value word
}
function modbus_crc(astr_ascii:string;polynom_val:word):word;
var
        i:integer;
        id_loop,tmp_data:byte;
        tmp_str:string;
        tmp_word_crc:word;
begin
        tmp_word_crc:=$ffff;
        tmp_str:=astr_ascii;

        for i:=1 to length(tmp_str) do
        begin
                tmp_data:=ord(tmp_str[i]);      //assign data
                tmp_word_crc:=tmp_word_crc xor tmp_data;        //xor awal
                for id_loop:=1 to 8 do                                  //crc bit1-8
                begin
                        if (tmp_word_crc and 1)=1 then
                                tmp_word_crc:=(tmp_word_crc shr 1) xor polynom_val
                        else
                                tmp_word_crc:=tmp_word_crc shr 1;
                end;
        end;
        Result:=tmp_word_crc;
end;



{
function format string modbus
input :
        -slave id       :byte
        -function code  :byte
        -addr start     :word
        -num of point   :word
output:
        -modbus string with crc
}
function modbus_format2rtu(id,func_code:byte;addr_start,num_point,polynom_crc:word):string;
var
        crcx:word;
        tmp_str:string;
begin
        {
        if addr_start>0 then
                addr_start:=addr_start-1
        else
                addr_start:=1;
        }
        tmp_str:=chr(id)+chr(func_code)+ chr(hi(addr_start)) +
                chr(lo(addr_start)) + chr(hi(num_point)) +
                chr(lo(num_point));

        crcx:=modbus_crc(tmp_str,polynom_crc);
        Result:=tmp_str+chr(lo(crcx))+chr(hi(crcx));
end;


procedure TPLC_COMF.btnCOM_beallitClick(Sender: TObject);
begin
  ComPort_RTU.ShowSetupDialog;
  ComPort_RTU.StoreSettings(stIniFile, konyvtar+'plc_port.dat' );
end;

procedure TPLC_COMF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TPLC_COMF.btnKuldesClick(Sender: TObject);
var  str_modbus:string;
begin
  if cbModbusFunctionCode.ItemIndex=-1 then
  begin
    cbModbusFunctionCode.SetFocus;
    exit;
  end;
  try
    str_modbus:=modbus_format2rtu(spModbusSlaveID,strtoint(trim(copy(cbModbusFunctionCode.Text,1,pos(':',cbModbusFunctionCode.Text)-1))),speKezdoCim.Value,speBitSzam.Value,crcKey);
    memoLogModbus.Lines.Add(formatdatetime('dd/mm/yyyy hh:nn:ss:zzz',now)+' : [TX] '+ascii2hex(str_modbus,' '));
    ComPort_RTU.WriteStr(str_modbus);
  finally

  end;
end;

procedure TPLC_COMF.btnStartStopClick(Sender: TObject);
begin
  ComPort_RTU.Connected:=not ComPort_RTU.Connected;
end;

procedure TPLC_COMF.ComPort_RTUAfterClose(Sender: TObject);
begin
  if Active then
  begin
    btnStartStop.Caption:='Port Nyitás';
    btnKuldes.Enabled:=false;
  end;
end;

procedure TPLC_COMF.ComPort_RTUAfterOpen(Sender: TObject);
begin
  if Active then
  begin
    btnStartStop.Caption:='Port zárás';
    btnKuldes.Enabled:=True;
  end;
end;

procedure TPLC_COMF.ComPort_RTURxChar(Sender: TObject; Count: Integer);
var adat:string;
    i:integer;
begin
  try
    Comport_RTU.ReadStr(adat,count);
    Modbus_valasz:=Modbus_valasz+adat;
    for i:=1 to count  do
    begin
        dt_modbus_rx:=adat[i];
        if Active then memoLogModbus.Text:=memoLogModbus.Text+ascii2hex(dt_modbus_rx[1],' ');

    end;

    exit;
    begin

       // lblKommunikacio.Caption:=lblKommunikacio.caption+ 'Állapot: '+IntToStr(modbus_state_id)+'  ';
        case modbus_state_id of
        0:      //start id
                begin
                        //rtu modbus
                        begin
                        if Ord(dt_modbus_rx[1])=spModbusSlaveID then
                                begin
                                        modbus_slave_id:=dt_modbus_rx;
                                        modbus_cnt_dt:=0;
                                        modbus_state_id:=1;
                                        tmrModbusTimeout.Enabled:=false;
                                        //lblKommunikacio.Caption:= 'ID: '+IntToStr(Ord(dt_modbus_rx[1]))+'  ';
                                end;
                        end;
                end;
        1:      //code
                begin
                        code_str:=copy(cbModbusFunctionCode.Text,1,pos(' :',cbModbusFunctionCode.Text)-1);
                        //rtu modbus
                        begin
                        if (Ord(dt_modbus_rx[1])=strtoint(code_str))or(Ord(dt_modbus_rx[1])=($80+strtoint(code_str))) then
                                begin
                                        modbus_slave_code:=dt_modbus_rx;
                                        modbus_state_id:=2;
                                        tmrModbusTimeout.Enabled:=false;
                                        //lblKommunikacio.Caption:=lblKommunikacio.Caption+ 'Kód: '+IntToStr(Ord(dt_modbus_rx[1]))+'  ';
                                end;
                        end;
                end;
        2:      //data length
                begin
                         //rtu modbus
                        begin
                          modbus_slave_data_len:=dt_modbus_rx;
                          modbus_state_id:=3;
                          tmrModbusTimeout.Enabled:=false;
                          //lblKommunikacio.Caption:=lblKommunikacio.Caption+ 'Adathossz: '+IntToStr(Ord(dt_modbus_rx[1]))+'  ';
                        end;
                end;
        3:      //data slave
                begin
                         //rtu modbus
                        begin
                          inc(modbus_cnt_dt);
                          if modbus_cnt_dt<=ord(modbus_slave_data_len[1]) then
                                  modbus_slave_data:=modbus_slave_data+dt_modbus_rx
                          else
                                  begin
                                          //lblKommunikacio.Caption:=lblKommunikacio.Caption+ 'Adat: '+modbus_slave_data+'  ';
                                          modbus_slave_crc:=' '+dt_modbus_rx;
                                          modbus_state_id:=4;
                                          modbus_cnt_dt:=0;
                                  end;
                          tmrModbusTimeout.Enabled:=false;
                        end;
                end;
        4:      //data crc
                begin
                        //rtu modbus
                        begin
                          modbus_slave_crc[1]:=dt_modbus_rx[1];
                          {
                          inc(modbus_cnt_dt);
                          if modbus_cnt_dt<=1 then
                                  modbus_slave_crc[1]:=dt_modbus_rx[1]
                          else                                        }
                                  begin

                                          {
                                          Memo1.Clear;
                                          Memo1.Lines.Add('id='+ascii2hex(modbus_slave_id,''));
                                          Memo1.Lines.Add('code='+ascii2hex(modbus_slave_code,''));
                                          Memo1.Lines.Add('length='+ascii2hex(modbus_slave_data_len,''));
                                          Memo1.Lines.Add('data='+ascii2hex(modbus_slave_data,' '));
                                          Memo1.Lines.Add('crc='+ascii2hex(modbus_slave_crc,''));
                                          }
                                          memoLogModbus.Lines.Add(formatdatetime('dd/mm/yyyy hh:nn:ss:zzz',now)+' : [RX] '+
                                                  ascii2hex(modbus_slave_id,' ')+
                                                  ascii2hex(modbus_slave_code,' ')+
                                                  ascii2hex(modbus_slave_data_len,' ')+
                                                  ascii2hex(modbus_slave_data,' ')+
                                                  ascii2hex(modbus_slave_crc,' '));

                                          {
                                          case ord(modbus_slave_code[1]) of
                                          1,2:    //read bit respon data
                                                  begin
                                                  //lvDataView.Items.BeginUpdate;
                                                  //lvDataView.Items.Clear;
                                                  modbus_cnt_dt:=speKezdoCim.Value;
                                                  //for i:=1 to length(modbus_slave_data) do
                                                          for j:=1 to speBitSzam.Value do
                                                          begin
                                                                  k:=1 shl (j-1);

                                                                  li:=lvDataView.Items.Add;
                                                                  with li do
                                                                  begin
                                                                          Caption:=inttostr(modbus_cnt_dt+j-1);
                                                                          SubItems.Add(inttostr( ord(modbus_slave_data[(j div 9)+1]) and k) );
                                                                          SubItems.Add('$'+inttohex( ord(modbus_slave_data[(j div 9)+1]) and k ,2));
                                                                  end;
                                                          end;

                                                  lvDataView.Items.EndUpdate;
                                                  end;

                                          3,4:    //read 16bit respon data
                                                  begin
                                                  lvDataView.Items.BeginUpdate;
                                                  lvDataView.Items.Clear;
                                                  modbus_cnt_dt:=speKezdoCim.Value;

                                                  i:=1;
                                                  repeat
                                                          li:=lvDataView.Items.Add;
                                                          with li do
                                                          begin
                                                                  Caption:=inttostr(modbus_cnt_dt+(i div 2));
                                                                  SubItems.Add(inttostr( (ord(modbus_slave_data[i])*256) + ord(modbus_slave_data[i+1]) ));
                                                                  SubItems.Add('$'+inttohex( (ord(modbus_slave_data[i])*256)+ord(modbus_slave_data[i+1]),4 ));
                                                          end;
                                                          i:=i+2;
                                                  until (i>=length(modbus_slave_data)) or (i>=ord(modbus_slave_data_len[1]));

                                                  lvDataView.Items.EndUpdate;
                                                  end;
                                          end;
                                          }
                                          modbus_slave_id:='';
                                          modbus_slave_code:='';
                                          modbus_slave_data_len:='';
                                          modbus_slave_data:='';
                                          modbus_slave_crc:='';
                                          modbus_state_id:=0;
                                          lblKommunikacio.Caption:='';
                                  end;
                          tmrModbusTimeout.Enabled:=false;
                        end;
                end;
        end;
    end;
  Except
        on Exception do exit;
  end;
end;

procedure TPLC_COMF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  portOpen('0');
end;

procedure TPLC_COMF.Label2Click(Sender: TObject);
begin
  ModBusIrBit('0',1,1);
end;

procedure TPLC_COMF.Label3Click(Sender: TObject);
begin
  ModBusOlvasBit('0',0,1);
end;

function TPLC_COMF.ModBusIrBit(port:string;coil, ertek: Integer): integer;
var  str_modbus:string;
     i,szam:integer;


begin
  try
    portOpen(port);
    if ertek=0 then  szam:=0
    else szam:=65280;
    str_modbus:=modbus_format2rtu(spModbusSlaveID,5,coil,szam,crcKey);
    if Active then memoLogModbus.Lines.Add(formatdatetime('dd/mm/yyyy hh:nn:ss:zzz',now)+' : [TX] '+ascii2hex(str_modbus,' '));
    ComPort_RTU.WriteStr(str_modbus);
    i:=0;
    ModBus_Valasz:='';
    while (i<10) and (ModBus_Valasz='') do
    begin
      Application.ProcessMessages;
      Sleep(10);
      i:=i+1;
    end;
    if ModBus_Valasz<>'' then
    begin
      Sleep(100);
      Application.ProcessMessages;

      Result:=1;
    end;
    ComPort_RTU.Close;
  except
    Result:=-1;
  end;

end;

function TPLC_COMF.ModBusOlvasBit(port:string;coil, db:Integer): Integer;
var  str_modbus:string;
     i:integer;

begin
  try
    portOpen(port);
    str_modbus:=modbus_format2rtu(spModbusSlaveID,1,coil,db,crcKey);
    if Active then memoLogModbus.Lines.Add(formatdatetime('dd/mm/yyyy hh:nn:ss:zzz',now)+' : [TX] '+ascii2hex(str_modbus,' '));
    ComPort_RTU.WriteStr(str_modbus);
    i:=0;
    ModBus_Valasz:='';
    while (i<10) and (ModBus_Valasz='') do
    begin
      Application.ProcessMessages;
      Sleep(10);
      i:=i+1;
    end;
    if ModBus_Valasz<>'' then
    begin
      Sleep(100);
      Application.ProcessMessages;
      Result:=Ord(ModBus_Valasz[4]);
    end;
    ComPort_RTU.Close;
  except
    Result:=-1;
  end;

end;

function TPLC_COMF.portOpen(port:string): integer;
begin
  ComPort_RTU.LoadSettings(stIniFile,konyvtar+'plc_port.dat');
  if port <>'0' then  ComPort_RTU.Port:=port;
  modbus_is_start_data:=false;
  modbus_is_id:=false;
  modbus_is_len:=false;
  modbus_is_data:=false;
  modbus_is_crc:=false;
  modbus_cnt_dt:=0;
  modbus_state_id:=0;
  spModbusSlaveID:=1;
  crcKey:= 40961;
  lblKommunikacio.Caption:='';
  if port <>'0' then ComPort_RTU.open;
end;

procedure TPLC_COMF.threadrun(port:string);
begin
  LekerdezesTh:=ThLekerdezes.Create(True);
  LekerdezesTh.port:=port;
  LekerdezesTh.Resume;
end;

procedure TPLC_COMF.tmrModbusTimeoutTimer(Sender: TObject);
begin
  try
        if Active then memoLogModbus.Lines.Add(formatdatetime('dd/mm/yyyy hh:nn:ss:zzz',now)+' : Communication timeout');
        modbus_state_id:=0;
        tmrModbusTimeout.Enabled:=false;
  except
        on Exception do
                tmrModbusTimeout.Enabled:=false;
  end;
end;

end.
