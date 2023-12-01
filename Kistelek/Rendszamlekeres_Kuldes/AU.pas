unit AU;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, Vcl.Forms,Vcl.Dialogs,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,Winapi.Windows,System.Contnrs,VCL.ExtCtrls,VCL.Controls,
  system.IniFiles;

type
  TAF = class(TDataModule)
    Kapcs: TFDConnection;
    ModScript: TFDScript;
    RendszamokQ: TFDQuery;
    RendszamokDS: TDataSource;
    Q1: TFDQuery;
    Q2: TFDQuery;
    Q3: TFDQuery;
    ParositottQ: TFDQuery;
    ParositottDS: TDataSource;
    Q4: TFDQuery;
    Q5: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
    function GetVLCLibPath: string;
    function LoadVLCLibrary(APath: string): integer;
    function GetAProcAddress(handle: integer; var addr: Pointer; procName: string; failedList: TStringList): integer;
    function LoadVLCFunctions(vlcHandle: integer; failedList: TStringList): Boolean;
    procedure Play_Panel_letrehozasa(F:Tform; szulo, neve: string);
    procedure play(nagy:Boolean);
    procedure stop(nagy:Boolean);
    procedure camlog(S:string);
  end;
type
  plibvlc_instance_t = type Pointer;

  plibvlc_media_player_t = type Pointer;

  plibvlc_media_t = type Pointer;

var
  libvlc_media_new_path: function(p_instance: Plibvlc_instance_t; path: PAnsiChar): Plibvlc_media_t; cdecl;
  libvlc_media_new_location: function(p_instance: plibvlc_instance_t; psz_mrl: PAnsiChar): Plibvlc_media_t; cdecl;
  libvlc_media_player_new_from_media: function(p_media: Plibvlc_media_t): Plibvlc_media_player_t; cdecl;
  libvlc_media_player_set_hwnd: procedure(p_media_player: Plibvlc_media_player_t; drawable: Pointer); cdecl;
  libvlc_media_player_play: procedure(p_media_player: Plibvlc_media_player_t); cdecl;
  libvlc_media_player_stop: procedure(p_media_player: Plibvlc_media_player_t); cdecl;
  libvlc_media_player_release: procedure(p_media_player: Plibvlc_media_player_t); cdecl;
  libvlc_media_player_is_playing: function(p_media_player: Plibvlc_media_player_t): Integer; cdecl;
  libvlc_media_release: procedure(p_media: Plibvlc_media_t); cdecl;
  libvlc_new: function(argc: Integer; argv: PAnsiChar): Plibvlc_instance_t; cdecl;
  libvlc_release: procedure(p_instance: Plibvlc_instance_t); cdecl;
  libvlc_video_take_snapshot: procedure(p_media_player: Plibvlc_media_player_t; num: Integer; Filepath: PansiChar; iw, ih: Integer); cdecl;
const maxSQL=4;
modSQL :array[1..maxSQL] of string =

      (
      //1
      'CREATE TABLE IF NOT EXISTS `rendszamok` (' + #13#10 +
      '`id` INTEGER PRIMARY KEY,' + #13#10 +
      '`rendszam` TEXT  ,' + #13#10 +
      '`kameraszam`  INTEGER,' + #13#10 +
      '`parositva` INTEGER,' + #13#10 +
      '`idopont` DATETIME,' + #13#10 +
      '`kepnev` TEXT'+#13#10+
      ');'+ #13#10 +
      ''//+#13#10+
      //2
      ,
      'CREATE TABLE IF NOT EXISTS `parositott` (' + #13#10 +
      '`id` INTEGER PRIMARY KEY,' + #13#10 +
      '`rendszam1` TEXT,' + #13#10 +
      '`rendszam2` TEXT,' + #13#10 +
      '`bekuldve` INTEGER,' + #13#10 +
      '`kepnev1` TEXT, '+#13#10+
      '`kepnev2` TEXT '+#13#10+
      '); '+ #13#10 +
      ''
      //3
      ,
      'ALTER TABLE parositott ADD COLUMN masolva INTEGER;'+ #13#10
      //4
      ,
      'ALTER TABLE parositott ADD COLUMN idopont DATETIME;'+ #13#10 +

      ''
    );
var
  AF: TAF;
  adatbazis,logdir:string;
  utolsoSQL:integer;
  Panelek: TObjectList;
  P: TPanel;
  vlcInstance0, vlcInstance1, vlcInstance2, vlcInstance3: plibvlc_instance_t;
  //nagy
  vlcInstance4, vlcInstance5, vlcInstance6, vlcInstance7: plibvlc_instance_t;
  vlcMedia0, vlcMedia1, vlcMedia2, vlcMedia3: plibvlc_media_t;
  //nagy
  vlcMedia4, vlcMedia5, vlcMedia6, vlcMedia7: plibvlc_media_t;
  vlcMediaPlayer0, vlcMediaPlayer1, vlcMediaPlayer2, vlcMediaPlayer3: plibvlc_media_player_t;
  //nagy
  vlcMediaPlayer4, vlcMediaPlayer5, vlcMediaPlayer6, vlcMediaPlayer7: plibvlc_media_player_t;

  teszt, van_cam, van_plugin: Boolean;

    // A VLC plugin maPPÁja iskell a dll/ek mellett!!!!
  vlcLib: integer;
  rtspURLs: array [0..3] of string;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FoU;

{$R *.dfm}

procedure TAF.camlog(S: string);
var tf : TextFile;
    m:string;
begin
 m:=ExtractFileDir(application.exename);
// ForceDirectories(m);
 AssignFile(tf,m+'\cam_log.txt');
 if not FileExists(m+'\cam_log.txt') then ReWrite(tf)
 else Append(tf);
 WriteLn(tf, s+' : '+Datetimetostr(Now)+'');
 Writeln(tf,'*****************************************************************************************************************');
 CloseFile(tf);
end;

procedure TAF.DataModuleCreate(Sender: TObject);
var i,k:integer;
   kini:TIniFile;
begin
  adatbazis:=ExtractFileDir(Application.Exename)+'\rendszamok.db';
  Kapcs.Params.Values['database'] := adatbazis;
  Kapcs.Connected:=true;
  for I :=1 {utolso_sql+1} to maxSQL do
    with ModScript do
    begin
      SQLScripts[0].SQL.Text:=modSQL[i];
      //ShowMessage(modSQL[i]);
      //if ValidateAll then
     //  begin
         ExecuteAll;
         FoF.IniFile.WriteInteger('SQL\utolsoSQL',i);
         //aF.script_log('Script végrehajtása sikeres: '+i.tostring);
      // end;
      //else aF.script_log('Script végrehajtása sikertelen :'+i.tostring);
    end;
  Kapcs.Connected:=false;
  with kini do
   begin
     kini:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\cam.ini');
     for k := 0 to 3 do
     begin
      rtspurls[k]:=ReadString('Rtsp','URL Cam '+k.ToString,'');
     // rtspurls[k]:=cfg_kezel('','RTSP','URL Cam '+k.ToString,'String',rtspurls[k]);
      WriteString('Rtsp','URL Cam '+k.ToString,rtspurls[k]);
     // showmessage(rtspURLS[k]);
     end;
    teszt:=rtspURLs[0]='';
   end;
end;


 
procedure TAF.DataModuleDestroy(Sender: TObject);
begin
 stop(False);
 FreeLibrary(vlclib);
end;

function TAF.GetAProcAddress(handle: integer; var addr: Pointer;
  procName: string; failedList: TStringList): integer;
begin
 addr := GetProcAddress(handle, PWideChar(procName));
  if Assigned(addr) then
    Result := 0
  else
  begin
    if Assigned(failedList) then
      failedList.Add(procName);
    Result := -1;
  end;
end;

function TAF.GetVLCLibPath: string;
var
  Handle: HKEY;
  RegType: Integer;
  DataSize: Cardinal;
  Key: PWideChar;
begin
  Result := '';
  Result :=ExtractFileDir(ExtractFilePath(application.exename));
  Result := string(PChar(Result));
end;

function TAF.LoadVLCFunctions(vlcHandle: integer;
  failedList: TStringList): Boolean;
begin
  GetAProcAddress(vlcHandle, @libvlc_new, 'libvlc_new', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_new_location, 'libvlc_media_new_location', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_new_from_media, 'libvlc_media_player_new_from_media', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_release, 'libvlc_media_release', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_set_hwnd, 'libvlc_media_player_set_hwnd', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_play, 'libvlc_media_player_play', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_stop, 'libvlc_media_player_stop', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_release, 'libvlc_media_player_release', failedList);
  GetAProcAddress(vlcHandle, @libvlc_release, 'libvlc_release', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_player_is_playing, 'libvlc_media_player_is_playing', failedList);
  GetAProcAddress(vlcHandle, @libvlc_media_new_path, 'libvlc_media_new_path', failedList);
  GetAProcAddress(vlcHandle, @libvlc_video_take_snapshot, 'libvlc_video_take_snapshot', failedList);
  // if all functions loaded, result is an empty list, otherwise result is a list of functions failed
  Result := failedList.Count = 0;
end;

function TAF.LoadVLCLibrary(APath: string): integer;
begin
 Result := LoadLibrary(PWideChar(APath + '\libvlccore.dll'));
 Result := LoadLibrary(PWideChar(APath + '\libvlc.dll'));
end;

procedure TAF.play(nagy: Boolean);
var
  i: Integer;
  hany_kamera:integer;
begin
// if not lejatszas then Exit;
  // create new vlc instance
  if not van_plugin then  Exit;//ha nincs plugin kilép
  //ShowMessage(Panelek.Count.ToString);
 // ShowMessage(rtspURLs[0]);
  hany_kamera:=Panelek.Count;//Round(Panelek.Count/2);
  case hany_kamera of
    1:
      begin
        try
          if not nagy then
           begin
            try
              stop(nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[0] <> '' then
                vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
              af.camlog('play próba cam0');
            end;
           end;
           if nagy then
           begin
            try
              stop(not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
              af.camlog('play próba cam4');
            end;
           end;

           //showmessage('cam 0 lejatszas:'+rtspUrls[0]);
        except
          // showmessage('cam 0 lejatszas hiba:'+rtspUrls[0]);          //
        end;
      end;
    2:
      begin
        try //cam0
          // showmessage(rtspURLS[0]);
          // showmessage(rtspURLS[1]);
         if not nagy then
          begin
            try
              stop(nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
              vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
              //af.camlog('play próba cam0');
               //cam1
              vlcInstance1 := libvlc_new(0, nil);
              if teszt then
                vlcMedia1 := libvlc_media_new_path(vlcInstance1, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia1 := libvlc_media_new_location(vlcInstance1, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer1 := libvlc_media_player_new_from_media(vlcMedia1);
              libvlc_media_release(vlcMedia1);
              libvlc_media_player_set_hwnd(vlcMediaPlayer1, Pointer((panelek[1] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
              af.camlog('play próba cam1');
            end;
          end;
         if nagy then
          begin
            try
              stop(not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
              //af.camlog('play próba cam0');
               //cam1
              vlcInstance5 := libvlc_new(0, nil);
              if teszt then
                vlcMedia5 := libvlc_media_new_path(vlcInstance5, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia5 := libvlc_media_new_location(vlcInstance5, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer5 := libvlc_media_player_new_from_media(vlcMedia5);
              libvlc_media_release(vlcMedia5);
              libvlc_media_player_set_hwnd(vlcMediaPlayer5, Pointer((panelek[5] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
              //af.camlog('play próba cam1');
            end;
          end;

         //else ;
        except
         // showmessage('cam 0 lejatszas hiba:'+rtspUrls[0]);
        end;

      end;
      //Nagy kamera lejatszas
   3: begin
         try
         if not nagy then
           begin
            try
              stop( nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
               //cam1
              vlcInstance1 := libvlc_new(0, nil);
              if teszt then
                vlcMedia1 := libvlc_media_new_path(vlcInstance1, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia1 := libvlc_media_new_location(vlcInstance1, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer1 := libvlc_media_player_new_from_media(vlcMedia1);
              libvlc_media_release(vlcMedia1);
              libvlc_media_player_set_hwnd(vlcMediaPlayer1, Pointer((panelek[1] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
              //cam2
              vlcInstance2 := libvlc_new(0, nil);
              if teszt then
                vlcMedia2 := libvlc_media_new_path(vlcInstance2, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia2 := libvlc_media_new_location(vlcInstance2, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer2 := libvlc_media_player_new_from_media(vlcMedia2);
              libvlc_media_release(vlcMedia2);
              libvlc_media_player_set_hwnd(vlcMediaPlayer2, Pointer((panelek[2] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer2);
            end;
           end;
           if nagy then
           begin
            try
              stop( not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
               //cam1
              vlcInstance5 := libvlc_new(0, nil);
              if teszt then
                vlcMedia5 := libvlc_media_new_path(vlcInstance5, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia5 := libvlc_media_new_location(vlcInstance5, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer5 := libvlc_media_player_new_from_media(vlcMedia5);
              libvlc_media_release(vlcMedia5);
              libvlc_media_player_set_hwnd(vlcMediaPlayer5, Pointer((panelek[5] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer5);
              //cam2
              vlcInstance6 := libvlc_new(0, nil);
              if teszt then
                vlcMedia6 := libvlc_media_new_path(vlcInstance6, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia6 := libvlc_media_new_location(vlcInstance6, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer6 := libvlc_media_player_new_from_media(vlcMedia6);
              libvlc_media_release(vlcMedia6);
              libvlc_media_player_set_hwnd(vlcMediaPlayer6, Pointer((panelek[6] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer6);
            end;
           end;
         except
           //
         end;

      end;
   4: begin
       try
         if not nagy then
           begin
            try
              stop( nagy);
            finally
              vlcInstance0 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia0 := libvlc_media_new_path(vlcInstance0, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia0 := libvlc_media_new_location(vlcInstance0, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer0 := libvlc_media_player_new_from_media(vlcMedia0);
              libvlc_media_release(vlcMedia0);
              libvlc_media_player_set_hwnd(vlcMediaPlayer0, Pointer((panelek[0] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer0);
               //cam1
              vlcInstance1 := libvlc_new(0, nil);
              if teszt then
                vlcMedia1 := libvlc_media_new_path(vlcInstance1, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia1 := libvlc_media_new_location(vlcInstance1, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer1 := libvlc_media_player_new_from_media(vlcMedia1);
              libvlc_media_release(vlcMedia1);
              libvlc_media_player_set_hwnd(vlcMediaPlayer1, Pointer((panelek[1] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer1);
              //cam2
              vlcInstance2 := libvlc_new(0, nil);
              if teszt then
                vlcMedia2 := libvlc_media_new_path(vlcInstance2, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia2 := libvlc_media_new_location(vlcInstance2, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer2 := libvlc_media_player_new_from_media(vlcMedia2);
              libvlc_media_release(vlcMedia2);
              libvlc_media_player_set_hwnd(vlcMediaPlayer2, Pointer((panelek[2] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer2);
              //cam3
              vlcInstance3 := libvlc_new(0, nil);
              if teszt then
                vlcMedia3 := libvlc_media_new_path(vlcInstance3, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[3] <> '' then
                vlcMedia3 := libvlc_media_new_location(vlcInstance3, PAnsiChar(AnsiString(rtspURLs[3])));
              vlcMediaPlayer3 := libvlc_media_player_new_from_media(vlcMedia3);
              libvlc_media_release(vlcMedia3);
              libvlc_media_player_set_hwnd(vlcMediaPlayer3, Pointer((panelek[3] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer3);
            end;
           end;
           if nagy then
           begin
            try
              stop( not nagy);
            finally
              vlcInstance4 := libvlc_new(0, nil);
              if teszt then
              begin
                vlcMedia4 := libvlc_media_new_path(vlcInstance4, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              end
              else if rtspURLs[0] <> '' then
                vlcMedia4 := libvlc_media_new_location(vlcInstance4, PAnsiChar(AnsiString(rtspURLs[0])));
              vlcMediaPlayer4 := libvlc_media_player_new_from_media(vlcMedia4);
              libvlc_media_release(vlcMedia4);
              libvlc_media_player_set_hwnd(vlcMediaPlayer4, Pointer((panelek[4] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer4);
               //cam1
              vlcInstance5 := libvlc_new(0, nil);
              if teszt then
                vlcMedia5 := libvlc_media_new_path(vlcInstance5, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[1] <> '' then
                vlcMedia5 := libvlc_media_new_location(vlcInstance5, PAnsiChar(AnsiString(rtspURLs[1])));
              vlcMediaPlayer5 := libvlc_media_player_new_from_media(vlcMedia5);
              libvlc_media_release(vlcMedia5);
              libvlc_media_player_set_hwnd(vlcMediaPlayer5, Pointer((panelek[5] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer5);
              //cam2
              vlcInstance6 := libvlc_new(0, nil);
              if teszt then
                vlcMedia6 := libvlc_media_new_path(vlcInstance6, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[2] <> '' then
                vlcMedia6 := libvlc_media_new_location(vlcInstance6, PAnsiChar(AnsiString(rtspURLs[2])));
              vlcMediaPlayer6 := libvlc_media_player_new_from_media(vlcMedia6);
              libvlc_media_release(vlcMedia6);
              libvlc_media_player_set_hwnd(vlcMediaPlayer6, Pointer((panelek[6] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer6);
              //cam3
              vlcInstance7 := libvlc_new(0, nil);
              if teszt then
                vlcMedia7 := libvlc_media_new_path(vlcInstance7, PAnsiChar(AnsiString(konyvtar+'Videos\Sample Videos\Wildlife.wmv')))
              else if rtspURLs[3] <> '' then
                vlcMedia7 := libvlc_media_new_location(vlcInstance7, PAnsiChar(AnsiString(rtspURLs[3])));
              vlcMediaPlayer7 := libvlc_media_player_new_from_media(vlcMedia7);
              libvlc_media_release(vlcMedia7);
              libvlc_media_player_set_hwnd(vlcMediaPlayer7, Pointer((panelek[7] as TPanel).handle));
              libvlc_media_player_play(vlcMediaPlayer7);
            end;
           end;
       except
           //
       end;

      end;

  end;
  //lejatszas:=True;
end;

procedure TAF.Play_Panel_letrehozasa(F: Tform; szulo, neve: string);
var
  I: Integer;
  aform:TForm;
begin
  if panelek = nil then
    panelek := TObjectList.Create;

  for I := 0 to panelek.Count - 1 do
  begin
    if (F.Name+neve=(TObject(panelek[I]) as TPanel).name) then
    begin
      panelek.Delete(I);
      af.camlog('Panel törölve:'+F.Name+neve );
      Break
    end;
  end;
  with F do
   begin
     for I := 0 to F.componentcount-1 do
      begin
        if (F.components[i] is TPanel)and((F.components[i] as TPanel).name=szulo) then
         begin
          p := Tpanel.create(Application);
          p.parent := F.components[i] as TPanel;
          p.Name :=F.Name+neve;
          p.caption := 'Kamera nem elérhetõ!';
          p.align := TAlign.alClient;
          panelek.Add(p);
          af.camlog('Panel létrehozva:'+F.Name+neve );
         end;
      end;
   end;
  van_cam := True;
end;

procedure TAF.stop(nagy: Boolean);
begin
if not nagy then
   begin
    if Assigned(vlcMediaPlayer0) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer0);
      while libvlc_media_player_is_playing(vlcMediaPlayer0) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer0);
      vlcMediaPlayer0 := nil;
      libvlc_release(vlcInstance0);
    end;
    if Assigned(vlcMediaPlayer1) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer1);
      while libvlc_media_player_is_playing(vlcMediaPlayer1) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer1);
      vlcMediaPlayer1 := nil;
      libvlc_release(vlcInstance1);
    end;
   if Assigned(vlcMediaPlayer2) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer2);
      while libvlc_media_player_is_playing(vlcMediaPlayer2) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer2);
      vlcMediaPlayer2 := nil;
      libvlc_release(vlcInstance2);
    end;
    if Assigned(vlcMediaPlayer3) then
    begin
      libvlc_media_player_stop(vlcMediaPlayer3);
      while libvlc_media_player_is_playing(vlcMediaPlayer3) = 1 do
        Sleep(100);
      libvlc_media_player_release(vlcMediaPlayer3);
      vlcMediaPlayer3 := nil;
      libvlc_release(vlcInstance3);
    end;
   end;
   //nagykam
   if nagy then
    begin
    if Assigned(vlcMediaPlayer4) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer4);
       while libvlc_media_player_is_playing(vlcMediaPlayer4) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer4);
        vlcMediaPlayer4 := nil;
        libvlc_release(vlcInstance4);
      end;
      if Assigned(vlcMediaPlayer5) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer5);
       while libvlc_media_player_is_playing(vlcMediaPlayer5) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer5);
        vlcMediaPlayer5 := nil;
        libvlc_release(vlcInstance5);
      end;
     if Assigned(vlcMediaPlayer6) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer6);
       while libvlc_media_player_is_playing(vlcMediaPlayer6) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer6);
        vlcMediaPlayer6 := nil;
        libvlc_release(vlcInstance6);
      end;
      if Assigned(vlcMediaPlayer7) then
      begin
       libvlc_media_player_stop(vlcMediaPlayer7);
       while libvlc_media_player_is_playing(vlcMediaPlayer7) = 1 do  Sleep(100);
        libvlc_media_player_release(vlcMediaPlayer7);
        vlcMediaPlayer7 := nil;
        libvlc_release(vlcInstance7);
      end;
    end;
 // lejatszas:=False;
end;

end.
