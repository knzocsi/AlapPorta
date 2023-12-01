unit Cam_kepU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  JvComponentBase, JvFormPlacement, JvExExtCtrls, JvExtComponent, JvSplit;

type
  TCam_kepF = class(TForm)
    Button1: TButton;
    cam0: TPanel;
    cam1: TPanel;
    Label1: TLabel;
    FormStorage: TJvFormStorage;
    JvxSplitter1: TJvxSplitter;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cam_kepF: TCam_kepF;

implementation
  uses AU,Fou;
{$R *.dfm}

procedure TCam_kepF.Button1Click(Sender: TObject);
begin
Close;
end;

procedure TCam_kepF.FormActivate(Sender: TObject);
begin
 { try
    af.play(False);
    application.processmessages;
  except
   Showmessage('Kamerakép betöltése sikertelen!');
   Exit
  end;  }
end;

procedure TCam_kepF.FormCreate(Sender: TObject);
var i: Integer;
   sL: TStringList;
begin
  van_plugin:=DirectoryExists(ExtractFileDir(ExtractFilePath(application.exename))+'\plugins');
  if van_plugin then
   begin
     for i := 0 to 3 do af.Play_panel_letrehozasa(Cam_kepF,'cam' + i.ToString, 'cam_kepe' + i.ToString);

      vlclib := af.LoadVLCLibrary(af.GetVLCLibPath());
      if vlclib = 0 then
      begin
        Showmessage('Load vlc library failed');
        Exit;
      end;
        // sL will contains list of functions fail to load
      sL := TStringList.Create;
      if not af.LoadVLCFunctions(vlclib, sL) then
      begin
        Showmessage('Egyes funciókat nem sikerült betölteni : ' + #13#10 + sL.Text);
        FreeLibrary(vlclib);
        sL.Free;
        Exit;
      end;
      sL.Free;
    end
  else
   begin
    ShowMessage('A plugin mappa hiányzik az IP kamerához!');
    exit;
   end;
  try
   Label1.Caption:=rtspURLs[0];
   af.play(False);
   //ShowMessage();
   application.processmessages;
  except
   Showmessage('Kamerakép betöltése sikertelen!');
   Exit
  end;
end;

end.
