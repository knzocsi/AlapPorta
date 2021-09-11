unit my_sqlU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, Vcl.StdCtrls, FireDAC.VCLUI.Login,
  FireDAC.Comp.UI, Vcl.ExtCtrls,System.iniFiles, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Script, FireDAC.Phys.SQLiteWrapper.Stat;

type
  TMySQLF = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Memo1: TMemo;
    Button2: TButton;
    sqliteImportKapcs: TFDConnection;
    exportQ: TFDQuery;
    importQ: TFDQuery;
    export2Q: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure importQError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  MySQLF: TMySQLF;

implementation

{$R *.dfm}

uses Au,SQL_text;

procedure TMySQLF.Button1Click(Sender: TObject);
var i:Tinifile;
procedure adatbazis_letrehozasa;
   begin
    with aF.Kapcs do
      begin
       Close;
        with Params do
        begin
          clear;
          Add('DriverID=MySQL');
          Add('Server='+szerver);
          Add('Port='+port);
          Add('User_Name='+user);
          Add('Password='+passwd);
          Add('CharacterSet= Utf8mb4');
        end;
       Open;
       Connected:=False;
        try
          Memo1.Lines.Add('Adatbázis létrehozása');

          af.DB_Create.SQLScripts[0].SQL.Text:=StringReplace(modSQL[1],':adatbazis',adatbazis,[rfreplaceall]);
          if aF.DB_Create.ValidateAll then  //ha sikerült kapcsolódni megpróbáljuk létrehzni az adatbázist
            begin
             aF.DB_Create.ExecuteAll;
             aF.script_log('Adatbázis létehozása');
            end
          else
           begin
            Memo1.Lines.Add('hibás script!');
            aF.script_log('Adatbázis létehozása sikertelen');
           end;

        except
          Memo1.Lines.Add('Adatbázis létrehozása sikertelen!');
          Close;
          exit;

        end;
        Close;
        Memo1.Lines.Add('Adatbázis létrehozva!');
        with Params do
        begin
          clear;
          Add('DriverID=MySQL');
          Add('Server='+szerver);
          Add('Port='+port);
          Add('Database='+adatbazis);
          Add('User_Name='+user);
          Add('Password='+passwd);
          Add('CharacterSet= Utf8mb4');
        end;
        try
          open
        except
          Close;
          Memo1.Lines.Add('Kapcsolódás sikertelen');
          exit;
        end;
      end;
   end;
begin

 aF.Kapcs.Connected:=False;
 Memo1.Clear;
 Memo1.Lines.Add('Kapcsolódás megkezdése ');
 //dm.Kapcs.Params.
 Button2.Caption:='Kilépés';
 szerver:=Edit1.Text;
 port:=Edit4.Text;
 adatbazis:=Edit5.Text;
 user:=Edit2.Text;
 passwd:=Edit3.Text;
 with aF.Kapcs do
  begin
   Close;
    with Params do
    begin
      clear;
      Add('DriverID=MySQL');
      Add('Server='+szerver);
      Add('Port='+port);
      Add('User_Name='+user);
      Add('Password='+passwd);
      Add('CharacterSet= Utf8mb4');
    end;
  // Memo1.Lines.Add('Szerver kapcsolódás paraméterei : '+Params.Text);
   try
    Memo1.Lines.Add('Kapcsolódási kisérlet a szerverhez');
    Open;
    if Connected then
     begin
      Memo1.Lines.Add('Szerverhez kapcsolódva');
      Application.ProcessMessages;
      Close; //ha adatbázis név nélkül sem tud kapsolódni
      with Params do
      begin
        clear;
        Add('DriverID=MySQL');
        Add('Server='+szerver);
        Add('Port='+port);
        Add('Database='+adatbazis);
        Add('User_Name='+user);
        Add('Password='+passwd);
        Add('CharacterSet= Utf8mb4');
      end;
      Memo1.Lines.Add('Kapcsolódási kisérlet az adatbázishoz');
      Application.ProcessMessages;
     // Memo1.Lines.Add('Adatbázis kapcsolat paraméterei : '+Params.Text);
       try
        Open;
       except
        Memo1.Lines.Add('Az adatbázis nem elérhetõ ezen a szerveren');
        //if dlgF.sdgl(3,'Az adatbázis nem elérhetõ ezen a szerveren. Létrehozzam az adatbázist?')=6 then adatbazis_letrehozasa
        if MessageDlg('Az adatbázis nem elérhetõ ezen a szerveren. Létrehozzam az adatbázist?',mtConfirmation,mbYesNo,0)=6 then adatbazis_letrehozasa
        else exit;
       end;
     end;
   // Button2.Caption:='Folytatás';
   // Button2.SetFocus;
   except
    Memo1.Lines.Add('Szerverhez kapcsolódás sikertelen');
    Application.ProcessMessages;
    Button2.Caption:='Kilépés';
    exit;
   end;
  // Exit;
  if Connected then  //ha kapcsolódott lementjük a parákat
     begin
       Memo1.Lines.Add('Adatbázishoz kapcsolódva!');
       i:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
       i.WriteString('ALAP','Szerver',szerver);
       i.WriteString('ALAP','Adatbazis',adatbazis);
       i.WriteString('ALAP','Port',port);
       i.UpdateFile;
       i.Free;
       Button2.Caption:='Folytatás';
     end;
  end;
end;

procedure TMySQLF.Button2Click(Sender: TObject);
begin
Close
end;

procedure TMySQLF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if aF.Kapcs.Connected then Close else Application.Terminate;
end;

procedure TMySQLF.FormCreate(Sender: TObject);
begin
 Memo1.Clear;
 Edit1.Text:=szerver;
 Edit5.Text:=adatbazis;
 Edit2.Text:=user;
 Edit3.Text:=passwd;
 Edit4.Text:=port;
end;

procedure TMySQLF.importQError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
 //ShowMessage(importQ.SQL.Text);
end;


end.
