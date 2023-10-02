unit MerlegelesekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMerlegelesekF = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    btnKilepes: TButton;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MerlegelesekF: TMerlegelesekF;

implementation
uses au;

{$R *.dfm}

procedure TMerlegelesekF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TMerlegelesekF.FormActivate(Sender: TObject);
var fnev:string;
begin
  OnActivate:=nil;
  fnev:=ExtractFileDir(ExtractFilePath(application.exename))+'\LOG\m'+af.datum_szoveg(Now,false)+'.txt';
  if  FileExists(fnev) then  Memo1.Lines.LoadFromFile(fnev) else Memo1.Text:='A mai napra nincs adat!';

end;

procedure TMerlegelesekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Onactivate:=Formactivate;
end;

end.
