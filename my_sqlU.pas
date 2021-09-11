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
          Memo1.Lines.Add('Adatb�zis l�trehoz�sa');

          af.DB_Create.SQLScripts[0].SQL.Text:=StringReplace(modSQL[1],':adatbazis',adatbazis,[rfreplaceall]);
          if aF.DB_Create.ValidateAll then  //ha siker�lt kapcsol�dni megpr�b�ljuk l�trehzni az adatb�zist
            begin
             aF.DB_Create.ExecuteAll;
             aF.script_log('Adatb�zis l�tehoz�sa');
            end
          else
           begin
            Memo1.Lines.Add('hib�s script!');
            aF.script_log('Adatb�zis l�tehoz�sa sikertelen');
           end;

        except
          Memo1.Lines.Add('Adatb�zis l�trehoz�sa sikertelen!');
          Close;
          exit;

        end;
        Close;
        Memo1.Lines.Add('Adatb�zis l�trehozva!');
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
          Memo1.Lines.Add('Kapcsol�d�s sikertelen');
          exit;
        end;
      end;
   end;
begin

 aF.Kapcs.Connected:=False;
 Memo1.Clear;
 Memo1.Lines.Add('Kapcsol�d�s megkezd�se ');
 //dm.Kapcs.Params.
 Button2.Caption:='Kil�p�s';
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
  // Memo1.Lines.Add('Szerver kapcsol�d�s param�terei : '+Params.Text);
   try
    Memo1.Lines.Add('Kapcsol�d�si kis�rlet a szerverhez');
    Open;
    if Connected then
     begin
      Memo1.Lines.Add('Szerverhez kapcsol�dva');
      Application.ProcessMessages;
      Close; //ha adatb�zis n�v n�lk�l sem tud kapsol�dni
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
      Memo1.Lines.Add('Kapcsol�d�si kis�rlet az adatb�zishoz');
      Application.ProcessMessages;
     // Memo1.Lines.Add('Adatb�zis kapcsolat param�terei : '+Params.Text);
       try
        Open;
       except
        Memo1.Lines.Add('Az adatb�zis nem el�rhet� ezen a szerveren');
        //if dlgF.sdgl(3,'Az adatb�zis nem el�rhet� ezen a szerveren. L�trehozzam az adatb�zist?')=6 then adatbazis_letrehozasa
        if MessageDlg('Az adatb�zis nem el�rhet� ezen a szerveren. L�trehozzam az adatb�zist?',mtConfirmation,mbYesNo,0)=6 then adatbazis_letrehozasa
        else exit;
       end;
     end;
   // Button2.Caption:='Folytat�s';
   // Button2.SetFocus;
   except
    Memo1.Lines.Add('Szerverhez kapcsol�d�s sikertelen');
    Application.ProcessMessages;
    Button2.Caption:='Kil�p�s';
    exit;
   end;
  // Exit;
  if Connected then  //ha kapcsol�dott lementj�k a par�kat
     begin
       Memo1.Lines.Add('Adatb�zishoz kapcsol�dva!');
       i:=TIniFile.Create(ExtractFileDir(ExtractFilePath(application.exename))+'\porta_beallit.ini');
       i.WriteString('ALAP','Szerver',szerver);
       i.WriteString('ALAP','Adatbazis',adatbazis);
       i.WriteString('ALAP','Port',port);
       i.UpdateFile;
       i.Free;
       Button2.Caption:='Folytat�s';
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
