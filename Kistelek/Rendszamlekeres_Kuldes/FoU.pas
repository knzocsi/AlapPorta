unit FoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Imaging.jpeg, CPort;

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
  TFoF = class(TForm)
    FormStorage: TJvFormStorage;
    IniFile: TJvAppIniFileStorage;
    Panel1: TPanel;
    btnKilepes: TButton;
    Panel2: TPanel;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Splitter1: TSplitter;
    tmrKepkeres: TTimer;
    pnlAlso: TPanel;
    tmrParosit_Kuld: TTimer;
    lblRendszamok: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    pnlBalkep: TPanel;
    pnlJobbKep: TPanel;
    Image1: TImage;
    Image2: TImage;
    btnCombeallitas: TButton;
    ComPort1: TComPort;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tmrKepkeresTimer(Sender: TObject);
    function esemeny_kibont(idopont:Tdatetime;fnev:string):esemeny_rec;
    function nullak(szam,hossz:integer):string;
    procedure btnKilepesClick(Sender: TObject);
    procedure tmrParosit_KuldTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure pnlAlsoResize(Sender: TObject);
    procedure btnCombeallitasClick(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoF: TFoF;
  konyvtar,soros_adat,Masolas_utvonala:string;
  kezdes:Boolean=True;

implementation
uses au;

{$R *.dfm}

procedure TFoF.btnCombeallitasClick(Sender: TObject);
begin
  ComPort1.ShowSetupDialog;
  ComPort1.StoreSettings(stIniFile, konyvtar+'srport.dat' );
end;

procedure TFoF.btnKilepesClick(Sender: TObject);
begin
  //ShowMessage(DateTimeToStr(now)+' '+DateTimeToStr(45197.4825578704));
  close;
end;

procedure TFoF.ComPort1RxChar(Sender: TObject; Count: Integer);
begin
  ComPort1.ReadStr(soros_adat,count);
end;

function TFoF.esemeny_kibont(idopont: Tdatetime; fnev: string):esemeny_rec;
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
    esemeny.evs:=nullak(ev,2);
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

procedure TFoF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  lblRendszamok.Caption:='';
  if not FileExists( konyvtar+'srport.dat') then  ShowMessage('A port nincs beállítva!')
  else ComPort1.LoadSettings(stIniFile, konyvtar+'srport.dat' );
  af.RendszamokQ.Open;
  af.ParositottQ.open;
  kezdes:=false;
end;

procedure TFoF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //CanClose:=InputBox('Jelszó bekérés',#31'Jelszó','')='AdminKNZ';
end;

procedure TFoF.FormCreate(Sender: TObject);
begin
  konyvtar:= ExtractFileDir(Application.Exename)+'\';
  IniFile.FileName:=konyvtar+'Rendszamkuldes_beallitas.ini';
  utolsoSQL:=IniFile.ReadInteger('SQL\utolsoSQL',0);
  IniFile.WriteInteger('SQL\utolsoSQL',utolsoSQL);
  logdir:=IniFile.ReadString('ALAP\LogDir','');
  if ( logdir<>'') and (logdir[Length(logdir)]<>'\')  then logdir:=logdir+'\';
  IniFile.WriteString('ALAP\LogDir',logdir);
  Masolas_utvonala:=IniFile.ReadString('ALAP\Masolas_utvonala','');
  if ( Masolas_utvonala<>'') and (Masolas_utvonala[Length(Masolas_utvonala)]<>'\')  then Masolas_utvonala:=Masolas_utvonala+'\';
  IniFile.WriteString('ALAP\Masolas_utvonala',Masolas_utvonala);
 end;

function TFoF.nullak(szam, hossz: integer): string;
var s:string;
begin
  s:=szam.ToString;
  while Length(s)<hossz do s:='0'+s;
  Result:=s;
end;

procedure TFoF.pnlAlsoResize(Sender: TObject);
var x,y:integer;
begin
  if  kezdes then exit;
  //ShowMessage('Átméretezés');
  y:=pnlAlso.Height;
  x:=y*2;
  pnlBalkep.Width:=x;
  pnlJobbKep.Width:=x;
end;

procedure TFoF.tmrKepkeresTimer(Sender: TObject);
var SearchRec: TSearchRec;
    aktdir:string;
    esemeny:esemeny_rec;

begin
  tmrKepkeres.Enabled:=false;
  esemeny:=esemeny_kibont(Now,'');
  aktdir:=logdir+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\';

  if DirectoryExists(aktdir) then
  begin
    if FindFirst(aktdir+'*.jpg', faAnyFile, SearchRec)=0 then
    begin
      try
        repeat
          if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
          begin
            with af.q1 do
            begin
              close;
              SQL.clear;
              SQL.Add('SELECT * FROM rendszamok ');
              SQL.Add('WHERE kepnev="'+SearchRec.Name+'" ');
              open;
              if eof then
              begin
                esemeny:=esemeny_kibont(Now,SearchRec.Name);
                if esemeny.ev<>0 then
                begin
                  close;
                  SQL.clear;
                  SQL.Add('INSERT INTO rendszamok ');
                  SQL.Add('(rendszam,kameraszam,idopont,parositva,kepnev) VALUES (:rendszam,:kameraszam,:idopont,:parositva,:kepnev) ');
                  ParamByName('rendszam').AsString:=esemeny.rendszam;
                  ParamByName('kameraszam').AsInteger:=esemeny.kamera_szam;
                  ParamByName('idopont').AsDatetime:=esemeny.datum;
                  ParamByName('parositva').AsInteger:=0;
                  ParamByName('kepnev').AsString:=SearchRec.Name;
                  ExecSQL;
                end;
              end;
            end;
            //ShowMessage(SearchRec.Name);
          end;
        until FindNext(SearchRec)<>0;
      finally
        FindClose(SearchRec);
        af.RendszamokQ.Close;
        af.RendszamokQ.Open;
      end;
    end;
  end;
  tmrKepkeres.Enabled:=true;
end;

procedure TFoF.tmrParosit_KuldTimer(Sender: TObject);
var elozoesem:esemeny_rec;
    parositott_id:Integer;

  procedure kep_masolas;
  var aktdir:string;
  esemeny:esemeny_rec;

  begin
    if DirectoryExists(Masolas_utvonala) then
    begin
      with Af.Q4 do
      begin
        close;
        SQL.Clear;
        SQL.Add('SELECT * FROM parositott');
        SQL.Add('WHERE (bekuldve=1) and (masolva=0)');
        open;
        while not Eof do
        begin
          if FieldByName('kepnev1').AsString<>'' then
          begin
            esemeny:=esemeny_kibont(now,FieldByName('kepnev1').AsString);
            aktdir:=logdir+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\';
            if CopyFile(PWideChar(aktdir+fieldbyname('kepnev1').AsString),PWideChar(Masolas_utvonala+fieldbyname('kepnev1').AsString),false) then
            begin
              Af.Q5.close;
              Af.Q5.SQL.Clear;
              Af.Q5.SQL.Add('UPDATE parositott');
              Af.Q5.SQL.Add('SET masolva=1');
              Af.Q5.SQL.Add('WHERE id='+FieldByName('id').AsString);
              Af.Q5.ExecSQL;
            end;
          end;
          if FieldByName('kepnev2').AsString<>'' then
          begin
            esemeny:=esemeny_kibont(now,FieldByName('kepnev2').AsString);
            aktdir:=logdir+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\';
            CopyFile(PWideChar(aktdir+fieldbyname('kepnev2').AsString),PWideChar(Masolas_utvonala+fieldbyname('kepnev2').AsString),false);
          end;
          next;
        end;

      end;
    end;

  end;


  procedure kuldes(iD:integer;rendszam1,rendszam2,kepnev1,kepnev2:string);
  var i:integer;
  begin
    if not FileExists( konyvtar+'srport.dat') then  exit;
    ComPort1.LoadSettings(stIniFile, konyvtar+'srport.dat' );
    soros_adat:='';
    ComPort1.open;
    ComPort1.WriteStr(#2+rendszam1+';'+rendszam2+';'+kepnev1+';'+kepnev2+#3);
    i:=1;
    while (soros_adat<>#6) and (i<10) do
    begin
      Application.ProcessMessages;
      Sleep(100);
      i:=i+1;
    end;
    ComPort1.Close;
    if i<>10 then
      with Af.Q4 do
      begin
        close;
        SQL.Clear;
        SQL.Add('UPDATE parositott');
        SQL.Add('SET bekuldve=1');
        SQL.Add('WHERE id='+ID.ToString);
        ExecSQL;
      end;


  end;

  procedure parositas_beiras(id:Integer);
  begin
    with af.q4 do
    begin
      close;
      SQL.clear;
      SQL.Add('UPDATE rendszamok SET parositva=1 WHERE id='+id.ToString);
      ExecSQL;
    end;

  end;

  procedure mentes(ketrendszam:Boolean);
  var aktdir:string;
  esemeny:esemeny_rec;
  begin
    with af.q3 do
    begin
      close;
      SQL.clear;
      SQL.Add('INSERT INTO parositott ');
      SQL.Add('(rendszam1,rendszam2,kepnev1,kepnev2,bekuldve,masolva) VALUES (:rendszam1,:rendszam2,:kepnev1,:kepnev2,0,0) ');
      ParamByName('rendszam1').AsString:=elozoesem.rendszam;
      ParamByName('kepnev1').AsString:=elozoesem.kepnev;
      ParamByName('rendszam2').AsString:='';
      ParamByName('kepnev2').AsString:='';
      parositas_beiras(elozoesem.id);
      if ketrendszam then
      begin
        ParamByName('rendszam2').AsString:=af.q2.FieldByName('rendszam').AsString;
        ParamByName('kepnev2').AsString:=af.q2.FieldByName('kepnev').AsString;
        parositas_beiras(af.q2.FieldByName('id').AsInteger);
      end;
      ExecSQL;
      lblRendszamok.caption:=ParamByName('rendszam1').AsString+'   '+ParamByName('rendszam2').AsString;
      esemeny:=esemeny_kibont(elozoesem.datum,'');
      aktdir:=logdir+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\';
      if ParamByName('kepnev1').AsString<>'' then  Image1.Picture.LoadFromFile(aktdir+ParamByName('kepnev1').AsString);
      esemeny:=esemeny_kibont(af.q2.FieldByName('idopont').AsDateTime,'');
      aktdir:=logdir+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\';
      if ParamByName('kepnev2').AsString<>'' then Image2.Picture.LoadFromFile(aktdir+ParamByName('kepnev2').AsString);
      close;
      SQL.clear;
      SQL.Add('SELECT * FROM parositott');
      open;
      last;
      kuldes(Fieldbyname('ID').AsInteger,Fieldbyname('rendszam1').AsString,Fieldbyname('rendszam2').AsString,Fieldbyname('kepnev1').AsString,Fieldbyname('kepnev2').AsString);
      close;
      kep_masolas;
      elozoesem.rendszam:='';
      elozoesem.kamera_szam:=0;
      elozoesem.kepnev:='';
      elozoesem.id:=0;
      af.ParositottQ.close;
      af.ParositottQ.open;
    end;

  end;



begin
  tmrParosit_Kuld.Enabled:=False;
  with af.q2 do
  begin
    close;
    SQL.clear;
    SQL.Add('SELECT * FROM rendszamok ');
    SQL.Add('WHERE (idopont>:idopont) and (parositva=0) ');
    ParamByName('idopont').AsDatetime:=now-0.00001157*30;
    open;
    elozoesem.rendszam:='';
    while not eof do
    begin
      if elozoesem.rendszam<>'' then
      begin
        if elozoesem.kamera_szam<>FieldByName('kameraszam').AsInteger then  mentes(True)
        else mentes(False);

      end
      else
      begin
        elozoesem.rendszam:=FieldByName('rendszam').AsString;
        elozoesem.kamera_szam:=FieldByName('kameraszam').AsInteger;
        elozoesem.kepnev:=FieldByName('kepnev').AsString;
        elozoesem.datum:=FieldByName('idopont').AsDateTime;
        elozoesem.id:=FieldByName('id').AsInteger;
      end;

      next;
    end;
  end;
  tmrParosit_Kuld.Enabled:=True;
end;

end.
