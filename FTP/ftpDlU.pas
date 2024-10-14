unit ftpDlU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdComponent, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP,System.types,Winapi.ShellAPI,System.IOUtils,System.inifiles;

type
  TftpF = class(TForm)
    IdFTP1: TIdFTP;
    Panel1: TPanel;
    memLog: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure logol(szoveg:string);
    procedure xls_letoltese;
    procedure xls_feltoltese;
    procedure ftpLog_mentese;
  public
    { Public declarations }
    procedure fo;
  end;

var
  ftpF: TftpF;
  LList: TStringDynArray;
  Ftp_helyi_dir,Ftp_tavoli_dir:String;

implementation
  uses AU;
{$R *.dfm}

{ TForm1 }

procedure TftpF.Button1Click(Sender: TObject);
begin
  IdFTP1.Connect;
  if not IdFTP1.Connected then
   begin
     Application.MessageBox('FTP nem elérhetõ!','Figyelmeztetés',MB_ok);
     Exit
   end
  else
   begin
    try
      IdFTP1.ChangeDir(Ftp_tavoli_dir);
      try
       IdFTP1.ChangeDir('merlegjegyek');
      except
       IdFTP1.MakeDir('merlegjegyek');
       IdFTP1.ChangeDir('merlegjegyek');
      end;
      IdFTP1.List('',True);
    finally
      xls_feltoltese
    end;
   end;
 IdFTP1.Disconnect;
 //Sleep(3000);
 Close;
end;

procedure TftpF.Button2Click(Sender: TObject);
begin
 close;
end;

procedure TftpF.fo;
begin
 try
   memLog.Clear;
   Button1Click(Self)
 finally
  if not Automata_Ftp_feltoltes then ShowModal
 end;
end;

procedure TftpF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=False;
 ftpLog_mentese;
 CanClose:=True
end;

procedure TftpF.FormCreate(Sender: TObject);
begin
 memLog.Clear;
 ftpF.Caption:='Fájl(ok) küldése FTP szerverre';
 Button1.Caption:='Fájlok küldése';
 Ftp_helyi_dir:=libre_mappa;
 Ftp_tavoli_dir:=Ftp_tavoli_mappa;
end;

procedure TftpF.ftpLog_mentese;
var lf:TextFile;
    i:Integer;
begin
 AssignFile(lf, 'ftp_log.txt');
 for i := 0 to memLog.Lines.Count-1 do
  begin
   if FileExists('ftp_log.txt') then Append(lf) else Rewrite(lf);
   Writeln(lf,memlog.Lines[i]);
  end;
 CloseFile(lf);
end;

procedure TftpF.IdFTP1Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
 logol(AStatusText);
end;

procedure TftpF.logol(szoveg: string);
begin
 memLog.Lines.Add(DateTimeToStr(now)+': '+szoveg);
 Application.ProcessMessages
end;

procedure TftpF.xls_feltoltese;
var i,s:Integer;
    f:file;
begin
 logol('Új excel fájl(ok) feltöltése FTP-re');
 CreateDir(Ftp_helyi_dir);
 LList:=(TDirectory.GetFiles(Ftp_helyi_dir,'*.*'));
 s:=0;
 for i := 0 to Length(LList)-1 do
      begin
       if Pos('!',LList[i])=0 then
        begin
          idftp1.Put(LList[i],ExtractFileName(LList[i]), True, 0);
          AssignFile(f,llist[i]);
          if FileExists(Ftp_helyi_dir+'!'+ExtractFileName(LList[i]))then
             TFile.Delete(Ftp_helyi_dir+'!'+ExtractFileName(LList[i]));
          Rename(f,Ftp_helyi_dir+'!'+ExtractFileName(LList[i]));
          logol(LList[i]+ ' feltöltve');
          inc(s);
        end;
      end;
 if s=0 then logol('Nem lett(ek) új excel fájl(ok) feltöltve') else logol('Excel fájl(ok) feltöltve');
end;

procedure TftpF.xls_letoltese;
var i,s:Integer;
begin
 logol('Új excel fájl(ok) keresése');
 CreateDir(Ftp_helyi_dir);
 s:=0;
for i := 0 to idftp1.DirectoryListing.Count - 1 do
      begin
       if Pos('!',idftp1.DirectoryListing.Items[i].FileName)=0 then
        begin
          idftp1.Get(idftp1.DirectoryListing.Items[i].FileName,Ftp_helyi_dir+idftp1.DirectoryListing.Items[i].FileName, True, False);
          idftp1.Rename(idftp1.DirectoryListing.Items[i].FileName,'!'+idftp1.DirectoryListing.Items[i].FileName);
          logol(idftp1.DirectoryListing.Items[i].FileName+ ' letöltve');
          inc(s);
        end;
      end;
 if s=0 then logol('Nem lett(ek) új excel fájl(ok) letöltve') else
  begin
   logol('Excel fájl(ok) letöltve');
   LList:=(TDirectory.GetFiles(Ftp_helyi_dir,'*.*'));
  end;
end;

end.

