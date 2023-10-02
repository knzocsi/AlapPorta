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
  FireDAC.Comp.DataSet;

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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const maxSQL=2;
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
    );
var
  AF: TAF;
  adatbazis,logdir:string;
  utolsoSQL:integer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FoU;

{$R *.dfm}

procedure TAF.DataModuleCreate(Sender: TObject);
var i:integer;

begin
  adatbazis:=ExtractFileDir(Application.Exename)+'\rendszamok.db';
  Kapcs.Params.Values['database'] := adatbazis;
  Kapcs.Connected:=true;
  for I :=1 {utolso_sql+1} to maxSQL do
    with ModScript do
    begin
      SQLScripts[0].SQL.Text:=modSQL[i];
      //ShowMessage(modSQL[i]);
      if ValidateAll then
       begin
         ExecuteAll;
         FoF.IniFile.WriteInteger('SQL\utolsoSQL',i);
         //aF.script_log('Script végrehajtása sikeres: '+i.tostring);
       end;
      //else aF.script_log('Script végrehajtása sikertelen :'+i.tostring);
    end;
  Kapcs.Connected:=false;
end;

end.
