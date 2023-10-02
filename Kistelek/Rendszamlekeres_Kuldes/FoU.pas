unit FoU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid;

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
    Panel3: TPanel;
    tmrParosit_Kuld: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tmrKepkeresTimer(Sender: TObject);
    procedure esemeny_kibont(idopont:Tdatetime;fnev:string);
    function nullak(szam,hossz:integer):string;
    procedure btnKilepesClick(Sender: TObject);
    procedure tmrParosit_KuldTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoF: TFoF;
  esemeny:esemeny_rec;

implementation
uses au;

{$R *.dfm}

procedure TFoF.btnKilepesClick(Sender: TObject);
begin
  //ShowMessage(DateTimeToStr(now)+' '+DateTimeToStr(45197.4825578704));
  close;
end;

procedure TFoF.esemeny_kibont(idopont: Tdatetime; fnev: string);
var ev,ho,nap,ora,perc,masodperc,ms:word;
    datum,ido:Tdatetime;
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
end;

procedure TFoF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  af.RendszamokQ.Open;
end;

procedure TFoF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //CanClose:=InputBox('Jelszó bekérés',#31'Jelszó','')='AdminKNZ';
end;

procedure TFoF.FormCreate(Sender: TObject);
begin
  IniFile.FileName:= ExtractFileDir(Application.Exename)+'\Rendszamkuldes_beallitas.ini';
  utolsoSQL:=IniFile.ReadInteger('SQL\utolsoSQL',0);
  IniFile.WriteInteger('SQL\utolsoSQL',utolsoSQL);
  logdir:=IniFile.ReadString('ALAP\LogDir','');
  if ( logdir<>'') and (logdir[Length(logdir)]<>'\')  then logdir:=logdir+'\';
  IniFile.WriteString('ALAP\LogDir',logdir);
 end;

function TFoF.nullak(szam, hossz: integer): string;
var s:string;
begin
  s:=szam.ToString;
  while Length(s)<hossz do s:='0'+s;
  Result:=s;
end;

procedure TFoF.tmrKepkeresTimer(Sender: TObject);
var SearchRec: TSearchRec;
    aktdir:string;
begin
  tmrKepkeres.Enabled:=false;
  esemeny_kibont(Now,'');
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
                esemeny_kibont(Now,SearchRec.Name);
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
var esem:esemeny_rec;

  procedure kuldes(rendszam1,rendszam2,kepnev1,kepnev2:string);
  begin
    ;
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
  begin
    with af.q3 do
    begin
      close;
      SQL.clear;
      SQL.Add('INSERT INTO parositott ');
      SQL.Add('(rendszam1,rendszam2,kepnev1,kepnev2) VALUES (:rendszam1,:rendszam2,:kepnev1,:kepnev2) ');
      ParamByName('rendszam1').AsString:=esem.rendszam;
      ParamByName('kepnev1').AsString:=esem.kepnev;
      ParamByName('rendszam2').AsString:='';
      ParamByName('kepnev2').AsString:='';
      parositas_beiras(esem.id);
      if ketrendszam then
      begin
        ParamByName('rendszam2').AsString:=af.q2.FieldByName('rendszam').AsString;
        ParamByName('kepnev2').AsString:=af.q2.FieldByName('kepnev').AsString;
        parositas_beiras(af.q2.FieldByName('id').AsInteger);
      end;
      ExecSQL;
      kuldes(ParamByName('rendszam1').AsString,ParamByName('rendszam2').AsString,ParamByName('kepnev1').AsString,ParamByName('kepnev2').AsString);
      esem.rendszam:='';
      esem.kamera_szam:=0;
      esem.kepnev:='';
      esem.id:=0;
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
    esem.rendszam:='';
    while not eof do
    begin
      if esem.rendszam<>'' then
      begin
        if esem.kamera_szam<>FieldByName('kameraszam').AsInteger then  mentes(True)
        else mentes(False);

      end
      else
      begin
        esem.rendszam:=FieldByName('rendszam').AsString;
        esem.kamera_szam:=FieldByName('kameraszam').AsInteger;
        esem.kepnev:=FieldByName('kepnev').AsString;
        esem.datum:=FieldByName('idopont').AsDateTime;
        esem.id:=FieldByName('id').AsInteger;
      end;

      next;
    end;
  end;
  tmrParosit_Kuld.Enabled:=True;
end;

end.
