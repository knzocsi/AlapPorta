{.$Define D400}
unit portU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  CPort, StdCtrls, ExtCtrls, CPortCtl;

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
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnMemotorolClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKilepesClick(Sender: TObject);
    procedure chkKiirasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComLed1DblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure portopen;
    procedure portclose;
    procedure kuld(Sor:string);
  end;

var
  PortF: TPortF;
  
  sorosvetelben,Aktiv:boolean;
  mertdarab,mertek:string;
  tf:textfile;


implementation
uses au, foU;

{$R *.DFM}

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
    memEredmeny.Text:='Mért érték: '+mertertek+#13#10+memEredmeny.text;
  end;
  if uppercase( ParamStr(1))='/LOG' then CloseFile(tf);
  Sleep(100);
  Application.ProcessMessages;
end;

procedure TPortF.FormCreate(Sender: TObject);
begin
  mertek:='';
  sorosvetelben:=false;
  Aktiv:=false;
  mertertek:='-5';
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

function datum_szoveg(datum: TDateTime; idokell: boolean): string;
var ev,ho,nap,ora,perc,mp,szmp:word;
begin
  DecodeDate(datum,ev,ho,nap);
  DecodeTime(datum,ora,perc,mp,szmp);
  Result:=IntToStr(ev)+IntToStr(ho)+IntToStr(nap);
  if idokell then Result:=Result+IntToStr(ora)+IntToStr(perc)+IntToStr(mp)+IntToStr(szmp);
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

procedure TPortF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TPortF.chkKiirasClick(Sender: TObject);
begin
  Aktiv:=chkKiiras.Checked;
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

procedure TPortF.ComLed1DblClick(Sender: TObject);
begin
  ComPort1.close;
  Sleep(100);
  Application.ProcessMessages;
  ComPort1.Open;
end;

end.
