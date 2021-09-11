{$Define D400}
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
    db,v,i,t,j,si,tom:integer;
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
  Append(tf) ;
  sadat:='';
  Sleep(10);
  comport1.readstr(sadat,Count);
  if Aktiv then
  begin
    memTeszt.Text:=sadat+memTeszt.text;
    memHexa.Text:= memHexa.Text+hexaszov(sadat);
  end;
  Writeln(tf,sadat);
  if ParamStr(1)='/CT2' then ShowMessage('1s:'+ERTEK);
  sadat:=ertek+sadat;
  ertek:='';
{$Ifdef micra}

{$Endif}

{$Ifdef Dibal}
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
{$Endif}

{$Ifdef DMI610}
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
{$Endif}


{$Ifdef MS}

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
{$Endif}

{$Ifdef Entechensp}

{$Endif}

{$Ifdef Excell}


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
      if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=decimalseparator;
      StrToFloat(ertek);
    except
      ertek:='-0';
    end;
  if ertek='-1' then ertek:='-0';

{$Endif}


{$Ifdef EntechVibra}
  case Merlegtipus of
      MtVibraMerleg     : Merlegadathossz:=14;
      MtSartoriusMerleg : Merlegadathossz:=15;
  end;


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
      if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=decimalseparator;
      case Merlegtipus of
        MtVibraMerleg     : ertek:=IntToStr(Round(StrToFloat(ertek)*10));
        MtSartoriusMerleg : ertek:=IntToStr(Round(StrToFloat(ertek)*10000));
      end;
    except
      ertek:='-0';
    end;
    if ertek='-1' then ertek:='-0';


{$Endif}


{$Ifdef Senso}

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
      if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=decimalseparator;
      StrToFloat(ertek);
    except
      ertek:='-2';
    end;
  if ertek='-1' then ertek:='-3';


{$Endif}

{$Ifdef Ohaus}
  if (merlegtipus<>TDibal) and (merlegtipus<>TMicra)  then
  Begin


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
  end
  else
  begin


  si:=0;
  repeat
    si:=si+1;
    adat:=sadat[si];
    if (adat<>#3) or ((adat=#3) and (ertek=''))  then begin if merlegtipus=TMicra then  ertek:=adat+ertek else ertek:=ertek+adat; end
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

  end;

  if Not(kilep) then mertek:=ertek;

  if kilep then
    try
      if ertek='' then ertek:='-1';
      if pos('.',ertek)<>0 then  Ertek[pos('.',ertek)]:=decimalseparator;
      StrToFloat(ertek);
    except
      ertek:='-0';
    end;
  if ertek='-1' then ertek:='-0';

{$Endif}

{$Ifdef Bila}
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
{$Endif}

{$Ifdef D400}       //Bilanchia
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
{$Endif}




  if (ertek<>'-0') and (ertek<>'') and (kilep) then
  begin
    if ParamStr(1)='/CT2' then ShowMessage('4e:'+ertek);
    try
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
  CloseFile(tf);
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

procedure TPortF.portopen;
begin
  AssignFile(tf,'log.txt');
  Rewrite(tf);
  Writeln(tf, konyvtar+'\srport.dat');
  Writeln(tf, Comport1.port+' OPEN');
  CloseFile(tf);

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
