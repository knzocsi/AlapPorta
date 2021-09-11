unit AAU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvComponentBase, JvAppStorage,
  JvAppIniStorage;

type
  TAAF = class(TForm)
    iniCtrl: TJvAppIniFileStorage;
    procedure GetVerisonNumber(var Fover, Alver, Build: Integer; File_ut: Pchar);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AAF: TAAF;
  verzio,kpverzio,prgverzio:string;
  fover,alver,build:integer;

implementation

{$R *.dfm}

procedure TAAF.GetVerisonNumber(var Fover, Alver, Build: Integer; File_ut: Pchar);
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;

begin
  VerInfoSize := GetFileVersionInfoSize(File_ut, Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(File_ut, 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Fover := dwFileVersionMS shr 16;
    Alver := dwFileVersionMS and $FFFF;
    //Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Build := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

end.
