unit tesztU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxClass;

type
  TtesztF = class(TForm)
    frxtesztrep: TfrxReport;
    Button1: TButton;
    cbxrepval: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tesztF: TtesztF;

implementation

{$R *.dfm}

procedure TtesztF.Button1Click(Sender: TObject);
var Stream: TResourceStream;
begin
  Stream := TResourceStream.Create(HInstance, 'Rep_'+IntToStr(cbxrepval.ItemIndex+1), RT_RCDATA);
  frxtesztrep.LoadFromStream(Stream);
  frxtesztrep.ShowReport(true);
  Stream.Free
end;

end.
