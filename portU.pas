{.$Define D400}
unit portU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CPort, StdCtrls, ExtCtrls, CPortCtl, IdBaseComponent, IdComponent,
  IdTCPConnection, System.inifiles,IdTCPClient;

type
  TPortF = class(TForm)
    pnlFelso: TPanel;
    btnKilepes: TButton;
    memTeszt: TMemo;
    btnMemotorol: TButton;
    chkKiiras: TCheckBox;
    memHexa: TMemo;
    Button1: TButton;
    Panel1: TPanel;
    memEredmeny: TMemo;
    Panel2: TPanel;
    chkErtek_vj: TCheckBox;
    chkErtek_feld: TCheckBox;
    chkMertertek: TCheckBox;
    ComLed1: TComLed;
    ComLed2: TComLed;
    ComPort1: TComPort;
    btnKijelzo_beallitas: TButton;
    comKijelzo: TComPort;
    IdTCPClient1: TIdTCPClient;
    IdTCPClient2: TIdTCPClient;
    lblTomeg1: TLabel;
    lblKapcsolat1: TLabel;
    lblTomeg2: TLabel;
    lblKapcsolat2: TLabel;
    Client_Timer1: TTimer;
    Client_Timer2: TTimer;
    btnHivoszamkijezobeallitas: TButton;
    ComPort2: TComPort;
    comHivoszamkijelzo: TComPort;
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnMemotorolClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKilepesClick(Sender: TObject);
    procedure chkKiirasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComLed1DblClick(Sender: TObject);
    procedure btnKijelzo_beallitasClick(Sender: TObject);
    function merleg_kiolvasas(sadat:string;merlegszam:integer):string;

    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient2Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure IdTCPClient2Disconnected(Sender: TObject);
    procedure Client_Timer1Timer(Sender: TObject);
    procedure Client_Timer2Timer(Sender: TObject);
    function datum_szoveg(datum:TDateTime;idokell:boolean):string;
    procedure btnHivoszamkijezobeallitasClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
    procedure portopen;
    procedure portclose;
    procedure kuld(Sor:string);
    procedure kijelzore_ir;
    procedure hivoszamkijelzore_ir(szam:string);
    procedure IP1_Start;
    procedure IP2_Start;
    function merleg_szam(merleg:string):integer;
  end;
const
  hibamaximum=5;
  Maxmerleg=4;  // ha változás van, akkor a hardver_beall formon az merleg kombóban is kell változtatmi

var
  PortF: TPortF;

  sorosvetelben,Aktiv:boolean;
  mertdarab,mertek:string;
  tf:textfile;
  merlegek,mertertekek,mertekek: array [1..maxmerleg]of String;
  elozotomeg,nyugalmiszamlalo:array [1..maxmerleg]of integer;
  nullszintvolt,rendszamvolt :array [1..maxmerleg] of boolean;
  hibaszamlalo:integer;



implementation
uses au, foU;

{$R *.DFM}

function TPortF.merleg_szam(merleg:string):integer;
var i:integer;
begin
  i:=1;
  while (i<5) and (merlegek[i]<>merleg) do i:=i+1;
  if (merlegek[i]= merleg) then Result:=i else Result:=0;
end;

function TPortF.merleg_kiolvasas(sadat:string;merlegszam:integer):string;
var kilep,kezd,jo:boolean;
    adat,tp,s1,ertek,mertdarab:string;
    db,v,i,t,j,si,tom,mtip,Merlegadathossz:integer;
    e:extended;
    mert:extended;



    function hexaszov(asciiszov:string):string;
    var i:integer;
        keszszov:string;

    begin
      keszszov:='';
      for i:=1 to Length(asciiszov) do keszszov:=keszszov+IntToHex(ord(asciiszov[i]),2)+' ';
      Result:=keszszov;
    end;

    function ertek_tisztitas(ert:string):string;
    begin
      i:=1;
      s1:='';
      while (length(ert)>i)  do
      begin
        i:=i+1;
        if ert[i] in ['0'..'9','.','-'] then s1:=s1+ert[i];
      end;
      Result:=s1;
    end;

begin
  //ha nincs ilyen mérleg kilép
  if merlegszam=0 then exit;

  kilep:=FALSE;
  kezd:=false;
  ertek:=mertekek[merlegszam];
  db:=0;
  //mertertek:='-4';

  if uppercase( ParamStr(1))='/LOG' then Append(tf) ;
 

  if Active then
  begin
    memTeszt.Text:=ertek+memTeszt.text;
    memHexa.Text:= memHexa.Text+hexaszov(ertek);
  end;

  if uppercase( ParamStr(1))='/LOG'then  Writeln(tf,sadat);
  if ParamStr(1)='/CT2' then ShowMessage('1s:'+ERTEK);
  sadat:=ertek+sadat;
  ertek:='';
  //Merleg_tipus:='DMI610';
  if (Merleg_tipus='Dibal') or (Merleg_tipus='R420') then mtip:=1        //R420 is
  else if Merleg_tipus='DMI610' then mtip:=2
    else if Merleg_tipus='MS' then mtip:=3
      else if Merleg_tipus='Excell' then mtip:=4
        else if Merleg_tipus='EntechVibra' then mtip:=5
          else if Merleg_tipus='Senso' then mtip:=6
            else if Merleg_tipus='Ohaus' then mtip:=7
              else if Merleg_tipus='Bila' then mtip:=8
                else if Merleg_tipus='D400' then mtip:=9
                   else if Merleg_tipus='EntechSartorius' then mtip:=10
                      else if Merleg_tipus='S120' then mtip:=11
                         else if (Merleg_tipus='CZNEWTON') or (Merleg_tipus='BW') or (Merleg_tipus='TScale') then mtip:=12;     //BW is   és T-Scale is




  case mtip of
    1 : begin            //Dibal, R420
          si:=0;
          bit:=8;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];
            if adat=#2 then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#3) and (length(ertek)=bit) then
                        begin

                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          mertekek[merlegszam]:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#3) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertekek[merlegszam]:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    2 : begin              //DMI610
          si:=0;
          bit:=9;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if adat=#2 then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#3) and (length(ertek)=bit) then
                        begin
                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;

                          mertekek[merlegszam]:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#3) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                           if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertekek[merlegszam]:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    3 : begin        //MS
          si:=0;
          sadat:=ertek+sadat;
          repeat
            si:=si+1;
            adat:=sadat[si];
            if (adat<>#10) then ertek:=ertek+adat
            else
              begin
                if (Active) and (chkErtek_vj.Checked) then
                begin
                  memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;
                i:=1;
                s1:='';
                ertek:=ertek_tisztitas(ertek);
                if (Active) and (chkErtek_feld.Checked) then
                begin
                  memEredmeny.Text:='Érték feld: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;
                mertekek[merlegszam]:='';
                kilep:=true;
                mertdarab:='';
              end;

          until (kilep) or (si=Length(sadat));
          if (adat<>#10) then mertdarab:=sadat;
          if Not(kilep) then mertekek[merlegszam]:=sadat;
        end;


    4:  Begin          //EXCELL
          si:=0;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=20 then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertekek[merlegszam]:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat)) ;


         // portolvasás vége
          if Not(kilep) then mertekek[merlegszam]:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-0';
            end;
          if ertek='-1' then ertek:='-0';

        end;


    5:  begin //EntechVibra



          Merlegadathossz:=14;
          si:=0;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=Merlegadathossz then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertekek[merlegszam]:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat)) ;

         // portolvasás vége
          if Not(kilep) then mertekek[merlegszam]:=ertek;

         if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              ertek:=IntToStr(Round(StrToFloat(ertek)*10));
            except
              ertek:='-0';
            end;
            if ertek='-1' then ertek:='-0';

        end;


    6:  begin// Senso

          si:=0;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT4' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat<>#13) then ertek:=ertek+adat
            else
            begin
              //if ParamStr(1)='/CT1' then ShowMessage('2e:'+inttostr(Length(ertek)));
              if (Active) and (chkErtek_vj.Checked) then
              begin
                memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
              end;
              if Length(ertek)=8 then
              begin
                if ParamStr(1)='/CT1' then ShowMessage('3e:'+ertek);
                ertek:=ertek_tisztitas(ertek);
                if (Active) and (chkErtek_feld.Checked) then
                begin
                  memEredmeny.Text:='Érték feld: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;

                mertekek[merlegszam]:='';

                kilep:=true;
              end
              else
              begin
                ertek:='';
                if ParamStr(1)='/CT1' then ShowMessage('2e:'+inttostr(Length(ertek)))
              end;

            end;
          until (kilep) or (si=Length(sadat));


         // portolvasás vége
          if Not(kilep) then mertekek[merlegszam]:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-2';
            end;
          if ertek='-1' then ertek:='-3';

        end;


    7:  begin // Ohaus}

          si:=0;
          if Active then
          begin
            memTeszt.Text:=sadat+memTeszt.text;
            memHexa.Text:= memHexa.Text+hexaszov(sadat);
          end;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=13 then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertekek[merlegszam]:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat));


           // portolvasás vége



          if Not(kilep) then mertekek[merlegszam]:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-0';
            end;
          if ertek='-1' then ertek:='-0';
       end;

    8:  begin//Ifdef Bila}
          si:=0;
          bit:=8;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat=#13) and (not (kezd)) then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#13) and (length(ertek)=bit) then
                        begin

                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          mertekek[merlegszam]:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#13) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertekek[merlegszam]:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    9:  begin  //D400}       //Bilanchia
          si:=0;
          bit:=29;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat=#10) and (not (kezd)) then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#10) and (length(ertek)=bit) then
                        begin

                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          mertekek[merlegszam]:='';
                          kilep:=true ;
                          ertek:=Copy(ertek,2,9) ;

                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#10) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertekek[merlegszam]:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    10: begin //EntechSartorius


          Merlegadathossz:=15;
          si:=0;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=Merlegadathossz then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertekek[merlegszam]:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat));

         // portolvasás vége
          if Not(kilep) then mertekek[merlegszam]:=ertek;

         if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              ertek:=IntToStr(Round(StrToFloat(ertek)*10000));

            except
              ertek:='-0';
            end;
            if ertek='-1' then ertek:='-0';

        end;

     11: begin // S120

          si:=0;
          bit:=8;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if adat=#2 then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#3) and (length(ertek)=bit) then
                        begin
                          if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;

                          mertekek[merlegszam]:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#3) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                           if (Active) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=adat+ertek;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertekek[merlegszam]:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);


          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-0';
            end;
          if ertek='-1' then ertek:='-0';
       end;

     12:  begin// CZNEWTON   BW és T-Scale
          bit:=17;
          si:=0;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT4' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
            begin
              //if ParamStr(1)='/CT1' then ShowMessage('2e:'+inttostr(Length(ertek)));
              if (Aktiv) and (chkErtek_vj.Checked) then
              begin
                memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
              end;
              if (Length(ertek)=bit) and (ertek[1] in ['S','U']) then
              begin
                if ParamStr(1)='/CT1' then ShowMessage('3e:'+ertek);
                //stabil_tomeg:=Pos('S',ertek)=1;
                ertek:=ertek_tisztitas(ertek);
                if (Aktiv) and (chkErtek_feld.Checked) then
                begin
                  memEredmeny.Text:='Érték feld: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;

                mertekek[merlegszam]:='';

                kilep:=true;
              end
              else
              begin
                ertek:='';
                if ParamStr(1)='/CT1' then ShowMessage('2e:'+inttostr(Length(ertek)))
              end;

            end;
          until (kilep) or (si=Length(sadat));


         // portolvasás vége
          if Not(kilep) then mertekek[merlegszam]:=sadat;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-2';
            end;
          if ertek='-1' then ertek:='-3';

        end;


  end;

  //Mérlegek vége

  if (ertek<>'-0') and (ertek<>'') and (kilep) then
  begin
    if ParamStr(1)='/CT2' then ShowMessage('4e:'+ertek);
    try
      if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
      mert:=StrToFloat(ertek);
      ertek:=FloatToStr(mert);
      hibaszamlalo:=0;
    except
      hibaszamlalo:=hibaszamlalo+1;
      ertek:='-0'
    end;
    //if ERTEK<>'-0' THEN mertertek:=ertek;
    sleep(1);
  end
  else
  begin
    hibaszamlalo:=hibaszamlalo+1;
    if ParamStr(1)='/CT2' then ShowMessage('5e:'+ertek);
    ertek:='-4';
  end;

  //Fof.Label11.caption:= mertertek+' kg';
  if (Active) and (chkMertertek.Checked) then
  begin
    memEredmeny.Text:='Mért érték: ('+Merleg_tipus+IntToStr(mtip)+')'+ertek+#13#10+memEredmeny.text;
  end;
  if uppercase( ParamStr(1))='/LOG' then CloseFile(tf);
  if (hibaszamlalo=0) or (hibaszamlalo>hibamaximum) then Result:=ertek
  else Result:=mertertekek[merlegszam];
end;



procedure TPortF.ComPort1RxChar(Sender: TObject; Count: Integer);
var kilep,kezd,jo:boolean;
    adat,tp,s1,sadat:string;
    db,v,i,t,j,si,tom,mtip,Merlegadathossz:integer;
    e:extended;
    mert:extended;

    ertek:string;

    function hexaszov(asciiszov:string):string;
    var i:integer;
        keszszov:string;
    begin
      keszszov:='';
      for i:=1 to Length(asciiszov) do keszszov:=keszszov+IntToHex(ord(asciiszov[i]),2)+' ';
      Result:=keszszov;
    end;

    function ertek_tisztitas(ert:string):string;
    begin
      i:=1;
      s1:='';
      while (length(ert)>i)  do
      begin
        i:=i+1;
        if ert[i] in ['0'..'9','.','-'] then s1:=s1+ert[i];
      end;
      Result:=s1;
    end;

begin
  ComPort1.OnRXChar:=nil;
  sadat:='';
  Sleep(10);
  comport1.readstr(sadat,Count);
  mertertekek[merleg_szam('RS1')]:=merleg_kiolvasas(sadat,merleg_szam('RS1'));

  ComPort1.OnRXChar:= ComPort1RxChar ;
end;

function TPortF.datum_szoveg(datum: TDateTime; idokell: boolean): string;
var ev,ho,nap,ora,perc,mp,szmp:word;
begin
  DecodeDate(datum,ev,ho,nap);
  DecodeTime(datum,ora,perc,mp,szmp);
  Result:=IntToStr(ev)+IntToStr(ho)+IntToStr(nap);
  if idokell then Result:=Result+IntToStr(ora)+IntToStr(perc)+IntToStr(mp)+IntToStr(szmp);
end;


procedure TPortF.FormCreate(Sender: TObject);
var k:integer;
    inif:Tinifile;
begin
  mertek:='';
  sorosvetelben:=false;
  Aktiv:=false;
  //mertertek:='-5';
  hibaszamlalo:=0;

  inif:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\'+ini_nev);
  merlegek[1]:=inif.ReadString('Merleg','Merleg1','RS1');
  inif.writeString('Merleg','Merleg1',merlegek[1]);
  merlegek[2]:=inif.ReadString('Merleg','Merleg2','NINCS');
  inif.writeString('Merleg','Merleg2',merlegek[2]);
  merlegek[3]:=inif.ReadString('Merleg','Merleg3','NINCS');
  inif.writeString('Merleg','Merleg3',merlegek[3]);
  merlegek[4]:=inif.ReadString('Merleg','Merleg4','NINCS');
  inif.writeString('Merleg','Merleg4',merlegek[4]);

  for k:=1 to 4 do
  begin
    mertertekek[k]:='';
    mertekek[k]:='';
    elozotomeg[k] := -1;
    nullszintvolt[k]  := true;
    rendszamvolt [k] := false;
    nyugalmiszamlalo [k] := 0;
  end;
  btnHivoszamkijezobeallitas.Visible:=Hivoszamhasznalat;
end;

procedure TPortF.hivoszamkijelzore_ir(szam:string);
var i:integer;
begin
  PortF.comHivoszamKijelzo.LoadSettings(stIniFile, konyvtar+'hivoszamkijelzo.dat' );
  PortF.comHivoszamKijelzo.open;
  for i := Length(szam) to 5 do szam:=' '+szam;

  for I := 1 to 5 do
  begin
    //ShowMessage(szam);
    PortF.comHivoszamKijelzo.WriteStr('AX/B='+szam+#13+#10);
    Sleep(100);
    Application.ProcessMessages;
  end;
  PortF.comHivoszamKijelzo.Close;
end;

procedure TPortF.IdTCPClient1Connected(Sender: TObject);
begin
  lblKapcsolat1.Caption:='Kapcsolatban';
end;

procedure TPortF.IdTCPClient1Disconnected(Sender: TObject);
begin
  lblKapcsolat1.Caption:='Nincs kapcsolat';
end;

procedure TPortF.IdTCPClient2Connected(Sender: TObject);
begin
  lblKapcsolat2.Caption:='Kapcsolatban';
end;

procedure TPortF.IdTCPClient2Disconnected(Sender: TObject);
begin
  lblKapcsolat2.Caption:='Nincs kapcsolat';
end;

procedure TPortF.IP1_Start;
begin
  Client_Timer1.Enabled:=False;
  if uppercase( ParamStr(1))='/LOG' then
  begin
    ForceDirectories(konyvtar+'\LOG');
    AssignFile(tf,konyvtar+'\LOG\1IP'+datum_szoveg(Now,True)+'.txt');
    Rewrite(tf);
    CloseFile(tf);
  end;
  lblTomeg1.Caption:='-';
  lblKapcsolat1.Caption:='-';
  IdTCPClient1.Host:=moxa_ip1;
  IdTCPClient1.Port:=moxa_port;
  IdTCPClient1.connect;
  Client_Timer1.Enabled:=True;
end;

procedure TPortF.IP2_Start;
begin
  Client_Timer2.Enabled:=False;
  if uppercase( ParamStr(1))='/LOG' then
  begin
    ForceDirectories(konyvtar+'\LOG');
    AssignFile(tf,konyvtar+'\LOG\2IP'+datum_szoveg(Now,True)+'.txt');
    Rewrite(tf);
    CloseFile(tf);
  end;
  lblTomeg2.Caption:='-';
  lblKapcsolat2.Caption:='-';
  IdTCPClient2.Host:=moxa_ip2;
  IdTCPClient2.Port:=moxa_port;
  IdTCPClient2.connect;
  Client_Timer2.Enabled:=True;
end;

procedure TPortF.portclose;
begin
 ComPort1.OnRxChar:=nil;
 while  sorosvetelben do
 begin
   Sleep(10);
   Application.ProcessMessages;
 end;
 try
   ComPort1.close;
 except
 end;
end;


procedure TPortF.portopen;
begin
  if uppercase( ParamStr(1))='/LOG' then
  begin
    ForceDirectories(konyvtar+'\LOG');
    AssignFile(tf,konyvtar+'\LOG\'+datum_szoveg(Now,True)+'.txt');
    Rewrite(tf);
    Writeln(tf, konyvtar+'\srport.dat');
    Writeln(tf, Comport1.port+' OPEN');
    CloseFile(tf);

  end;

  ComPort1.LoadSettings(stIniFile, konyvtar+'\srport.dat' );
// portolvasás
  ComPort1.open;
  ComPort1.ClearBuffer(true,true);
  //ComPort1.WriteStr('XA/B?'+#13+#10);

end;

procedure TPortF.FormActivate(Sender: TObject);
begin
  Aktiv:=true;
  memTeszT.Text:='Soros teszt';
  memHexa.Text:='';
  btnKijelzo_beallitas.Enabled:= kijelzo_tipus<>'Nincs';
end;

procedure TPortF.btnMemotorolClick(Sender: TObject);
begin
  memTeszT.Text:='Soros teszt';
  memHexa.Text:='';
end;

procedure TPortF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Aktiv:=false;
end;

procedure TPortF.btnHivoszamkijezobeallitasClick(Sender: TObject);
begin
  comHivoszamKijelzo.ShowSetupDialog;
  comHivoszamKijelzo.StoreSettings(stIniFile, konyvtar+'hivoszamkijelzo.dat' );
end;

procedure TPortF.btnKijelzo_beallitasClick(Sender: TObject);
begin
  comKijelzo.ShowSetupDialog;
  comKijelzo.StoreSettings(stIniFile, konyvtar+'kijelzo.dat' );
end;

procedure TPortF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TPortF.chkKiirasClick(Sender: TObject);
begin
  Aktiv:=chkKiiras.Checked;
end;

procedure TPortF.kijelzore_ir;
begin
  PortF.comKijelzo.LoadSettings(stIniFile, konyvtar+'kijelzo.dat' );
  PortF.comKijelzo.open;
  if kijelzo_tipus='MS' then  PortF.comKijelzo.WriteStr('AX/B='+mertertekek[1]+#13+#10);
  Sleep(100);
  PortF.comKijelzo.Close;
end;

procedure TPortF.kuld(Sor:string);
begin
  try
  if ComPort1.Connected then ComPort1.WriteStr(sor);
  except

  end;
end;

procedure TPortF.Button1Click(Sender: TObject);
begin
  ComPort1.ShowSetupDialog;
  ComPort1.StoreSettings(stIniFile, konyvtar+'\srport.dat' );
end;

procedure TPortF.Client_Timer1Timer(Sender: TObject);
var s:string;
begin
  Client_Timer1.Enabled:=False;
  if IdTCPClient1.Connected then
    if not IdTCPClient1.Socket.InputBufferIsEmpty then
    begin
      s:=IdTCPClient1.Socket.ReadString(100);
      mertertekek[merleg_szam('IP1')]:=merleg_kiolvasas(s,merleg_szam('IP1'));
      IdTCPClient1.Socket.InputBuffer.Clear;
      lblTomeg1.Caption:=mertertekek[merleg_szam('IP1')];
    end;
  Client_Timer1.Enabled:=True;
end;

procedure TPortF.Client_Timer2Timer(Sender: TObject);
var s:string;
begin
  Client_Timer2.Enabled:=False;
  if IdTCPClient2.Connected then
    if not IdTCPClient2.Socket.InputBufferIsEmpty then
    begin
      s:=IdTCPClient2.Socket.ReadString(100);
      mertertekek[merleg_szam('IP2')]:=merleg_kiolvasas(s,merleg_szam('IP2'));
      IdTCPClient2.Socket.InputBuffer.Clear;
      lblTomeg2.Caption:=mertertekek[merleg_szam('IP2')];
    end;
  Client_Timer2.Enabled:=True;
end;

procedure TPortF.ComLed1DblClick(Sender: TObject);
begin
  ComPort1.close;
  Sleep(100);
  Application.ProcessMessages;
  ComPort1.Open;
end;

end.


//Régi vevõ
(*
 kilep:=FALSE;
  kezd:=false;
  ertek:=mertek;
  db:=0;
  //mertertek:='-4';
  sorosvetelben:=true;
  if uppercase( ParamStr(1))='/LOG' then Append(tf) ;
  sadat:='';
  Sleep(10);
  comport1.readstr(sadat,Count);
  if Aktiv then
  begin
    memTeszt.Text:=sadat+memTeszt.text;
    memHexa.Text:= memHexa.Text+hexaszov(sadat);
  end;
  if uppercase( ParamStr(1))='/LOG'then  Writeln(tf,sadat);
  if ParamStr(1)='/CT2' then ShowMessage('1s:'+ERTEK);
  sadat:=ertek+sadat;
  ertek:='';

  if Merleg_tipus='Dibal' then mtip:=1        //R420 is
  else if Merleg_tipus='DMI610' then mtip:=2
    else if Merleg_tipus='MS' then mtip:=3
      else if Merleg_tipus='Excell' then mtip:=4
        else if Merleg_tipus='EntechVibra' then mtip:=5
          else if Merleg_tipus='Senso' then mtip:=6
            else if Merleg_tipus='Ohaus' then mtip:=7
              else if Merleg_tipus='Bila' then mtip:=8
                else if Merleg_tipus='D400' then mtip:=9
                   else if Merleg_tipus='EntechSartorius' then mtip:=10
                      else if Merleg_tipus='S120' then mtip:=11;

  case mtip of

    1 : begin            //Dibal, R420
          si:=0;
          bit:=8;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if adat=#2 then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#3) and (length(ertek)=bit) then
                        begin
                          {comport2.writestring(#6);}
                          if (Aktiv) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          mertek:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#3) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          if (Aktiv) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertek:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    2 : begin              //DMI610
          si:=0;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if adat=#2 then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#3) and (length(ertek)=bit) then
                        begin
                          {comport2.writestring(#6);}
                          mertek:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#3) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertek:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    3 : begin        //MS
          si:=0;
          if mertdarab<>'' then sadat:=mertdarab+sadat;
          repeat
            si:=si+1;
            adat:=sadat[si];
            if (adat<>#10) then ertek:=ertek+adat
            else
              begin
                if (Aktiv) and (chkErtek_vj.Checked) then
                begin
                  memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;
                i:=1;
                s1:='';
                ertek:=ertek_tisztitas(ertek);
                if (Aktiv) and (chkErtek_feld.Checked) then
                begin
                  memEredmeny.Text:='Érték feld: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;
                mertek:='';
                kilep:=true;
                mertdarab:='';
              end;

          until (kilep) or (si=Length(sadat));
          if (adat<>#10) then mertdarab:=sadat;
        end;


    4:  Begin          //EXCELL
          si:=0;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=20 then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertek:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat)) or (programvege);


         // portolvasás vége
          if Not(kilep) then mertek:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-0';
            end;
          if ertek='-1' then ertek:='-0';

        end;


    5:  begin //EntechVibra



          Merlegadathossz:=14;
          si:=0;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=Merlegadathossz then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertek:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat)) or (programvege);

         // portolvasás vége
          if Not(kilep) then mertek:=ertek;

         if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              ertek:=IntToStr(Round(StrToFloat(ertek)*10));
            except
              ertek:='-0';
            end;
            if ertek='-1' then ertek:='-0';

        end;


    6:  begin// Senso

          si:=0;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT4' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat<>#13) then ertek:=ertek+adat
            else
            begin
              //if ParamStr(1)='/CT1' then ShowMessage('2e:'+inttostr(Length(ertek)));
              if (Aktiv) and (chkErtek_vj.Checked) then
              begin
                memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
              end;
              if Length(ertek)=8 then
              begin
                if ParamStr(1)='/CT1' then ShowMessage('3e:'+ertek);
                ertek:=ertek_tisztitas(ertek);
                if (Aktiv) and (chkErtek_feld.Checked) then
                begin
                  memEredmeny.Text:='Érték feld: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                end;

                mertek:='';
                comport1.ClearBuffer(True,true);
                kilep:=true;
              end
              else
              begin
                ertek:='';
                if ParamStr(1)='/CT1' then ShowMessage('2e:'+inttostr(Length(ertek)))
              end;

            end;
          until (kilep) or (si=Length(sadat));


         // portolvasás vége
          if Not(kilep) then mertek:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-2';
            end;
          if ertek='-1' then ertek:='-3';

        end;


    7:  begin // Ohaus}

          si:=0;
          if Aktiv then
          begin
            memTeszt.Text:=sadat+memTeszt.text;
            memHexa.Text:= memHexa.Text+hexaszov(sadat);
          end;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=13 then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertek:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat));


           // portolvasás vége



          if Not(kilep) then mertek:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-0';
            end;
          if ertek='-1' then ertek:='-0';
       end;

    8:  begin//Ifdef Bila}
          si:=0;
          bit:=8;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat=#13) and (not (kezd)) then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#13) and (length(ertek)=bit) then
                        begin
                          {comport2.writestring(#6);}
                          if (Aktiv) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          mertek:='';
                          kilep:=true ;
                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#13) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          if (Aktiv) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertek:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    9:  begin  //D400}       //Bilanchia
          si:=0;
          bit:=29;
          repeat
            si:=si+1;
            if ParamStr(1)='/CT2' then ShowMessage('2s:'+sadat);
            adat:=sadat[si];

            if (adat=#10) and (not (kezd)) then kezd:=true
                else
                  if kezd then
                    begin
                      if (adat=#10) and (length(ertek)=bit) then
                        begin
                          {comport2.writestring(#6);}
                          if (Aktiv) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          mertek:='';
                          kilep:=true ;
                          ertek:=Copy(ertek,2,9) ;

                          ertek:=ertek_tisztitas(ertek);
                          if ParamStr(1)='/CT3' then ShowMessage('3e:'+ertek);
                        end
                      else
                      begin
                        if (adat=#10) or (length(ertek)=bit)then
                        begin
                          //if paramstr(1)='/b' then showMessage(IntToStr(length(ertek))+','+IntToStr(db));
                          if (Aktiv) and (chkErtek_vj.Checked) then
                          begin
                            memEredmeny.Text:='Hibás érték vj: '+ertek+'(h:'+inttostr(Length(ertek))+' hex: '+hexaszov(ertek)+')'+#13#10+memEredmeny.text;
                          end;
                          ertek:='';
                          db:=1;
                        end
                        else ertek:=ertek+adat;
                      end;
                    end;

          until (kilep) or (si=Length(sadat));
          if Not(kilep) then mertek:=sadat;

          if ParamStr(1)='/CT2' then ShowMessage('4:'+ertek);
        end;

    10: begin //EntechSartorius


          Merlegadathossz:=15;
          si:=0;
          repeat
            si:=si+1;

            adat:=sadat[si];

            if (adat<>#10) then ertek:=ertek+adat
            else
              if Length(ertek)=Merlegadathossz then
              begin
                ertek:=ertek_tisztitas(ertek);
                mertek:='';
                kilep:=true;
              end
              else ertek:=''
          until (kilep) or (si=Length(sadat)) or (programvege);

         // portolvasás vége
          if Not(kilep) then mertek:=ertek;

         if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              ertek:=IntToStr(Round(StrToFloat(ertek)*10000));

            except
              ertek:='-0';
            end;
            if ertek='-1' then ertek:='-0';

        end;

     11: begin // Ohaus}

          si:=0;
          if Aktiv then
          begin
            memTeszt.Text:=sadat+memTeszt.text;
            memHexa.Text:= memHexa.Text+hexaszov(sadat);
          end;
         repeat
            si:=si+1;
            adat:=sadat[si];
            if (adat<>#3) or ((adat=#3) and (ertek=''))  then ertek:=adat+ertek
            else
              begin
                ertek:=ertek_tisztitas(ertek);
                mertek:='';
                kilep:=true;
                try
                  if ertek<>'' then
                  begin
                    tom:=StrToInt(ertek);
                    ertek:=IntToStr(tom);
                  end;
                except

                end;

              end;

          until (kilep) or (si=Length(sadat)) or (programvege);



          if Not(kilep) then mertek:=ertek;

          if kilep then
            try
              if ertek='' then ertek:='-1';
              if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
              StrToFloat(ertek);
            except
              ertek:='-0';
            end;
          if ertek='-1' then ertek:='-0';
       end;
  end;


  if (ertek<>'-0') and (ertek<>'') and (kilep) then
  begin
    if ParamStr(1)='/CT2' then ShowMessage('4e:'+ertek);
    try
      if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=FormatSettings.decimalseparator;
      mert:=StrToFloat(ertek);
      ertek:=FloatToStr(mert);
    except
      ertek:='-0'
    end;
    if ERTEK<>'-0' THEN mertertek:=ertek;
    sleep(1);
  end
  else if ParamStr(1)='/CT2' then ShowMessage('5e:'+ertek);
  sorosvetelben:=false;
  //Fof.Label11.caption:= mertertek+' kg';
  if (Aktiv) and (chkMertertek.Checked) then
  begin
    memEredmeny.Text:='Mért érték: ('+Merleg_tipus+IntToStr(mtip)+')'+mertertek+#13#10+memEredmeny.text;
  end;
  if uppercase( ParamStr(1))='/LOG' then CloseFile(tf);

  //Sleep(100);
  //Application.ProcessMessages;
  ComPort1.OnRXChar:= ComPort1RxChar ;
  *)
