unit nagykamU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, JvComponentBase,
  JvFormPlacement, JvAppStorage, JvAppIniStorage;

type
  TNagykamF = class(TForm)
    campagc: TPageControl;
    cam6: TTabSheet;
    cam7: TTabSheet;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage2: TJvFormStorage;
    cam8: TTabSheet;
    cam9: TTabSheet;
    cam10: TTabSheet;
    cam11: TTabSheet;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormHide(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure cam6Show(Sender: TObject);
    procedure cam6Hide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fo(melyik:Integer);
  end;

var
  NagykamF: TNagykamF;

implementation
  uses fou,AU;
{$R *.dfm}

procedure TNagykamF.cam6Hide(Sender: TObject);
begin
  FoF.stop_1_nagy((Sender as TTabSheet).Tag);
end;

procedure TNagykamF.cam6Show(Sender: TObject);
begin
 FoF.play_1_nagy((Sender as TTabSheet).Tag);
end;

procedure TNagykamF.fo(melyik:Integer);
begin
 try
   campagc.ActivePageIndex:=melyik
 finally
   Show
 end;
end;

procedure TNagykamF.FormActivate(Sender: TObject);
begin
  //campagc.ActivePage:=cam6;
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
 //exit;
 for i := 6 to 11 do
  FoF.Play_panel_letrehozasa(NagykamF,'cam' + i.ToString, 'cam_kepe' + i.ToString,i-6);
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
