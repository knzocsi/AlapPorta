unit nagykamU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvComponentBase,
  JvFormPlacement, JvAppStorage, JvAppIniStorage;

type
  TNagykamF = class(TForm)
    campagc: TPageControl;
    cam0: TTabSheet;
    cam1: TTabSheet;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage2: TJvFormStorage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fo;
  end;

var
  NagykamF: TNagykamF;

implementation
  uses fou,AU;
{$R *.dfm}

procedure TNagykamF.fo;
begin
 try
  // fof.play(true);
 finally
  // Show
 end;
end;

procedure TNagykamF.FormActivate(Sender: TObject);
begin

  campagc.ActivePage:=cam0;
end;

procedure TNagykamF.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 //FoF.stop;
end;

procedure TNagykamF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 if (lejatszas) then
  begin
    try
      FoF.stop(true);
    finally
      Fof.play(False);
    end;
  end;

 //Application.ProcessMessages
end;

procedure TNagykamF.FormCreate(Sender: TObject);
var i:Integer;
begin
 for i := 0 to 1 do FoF.Play_panel_letrehozasa(NagykamF,'cam' + i.ToString, 'Cam_kepe' + i.ToString);
end;

procedure TNagykamF.FormHide(Sender: TObject);
begin
JvFormStorage2.SaveFormPlacement;
end;

procedure TNagykamF.FormShow(Sender: TObject);
begin
JvFormStorage2.RestoreFormPlacement;
end;

end.
