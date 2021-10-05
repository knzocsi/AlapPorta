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
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tesztF: TtesztF;

implementation
   uses FoU;
{$R *.dfm}

procedure TtesztF.Button1Click(Sender: TObject);
//var Stream: TResourceStream;
begin
{  Stream := TResourceStream.Create(HInstance, 'Rep_'+IntToStr(cbxrepval.ItemIndex+1), RT_RCDATA);
  frxtesztrep.LoadFromStream(Stream);
  frxtesztrep.ShowReport(true);
  Stream.Free  }
  FoF.stop(false);
end;

procedure TtesztF.Button2Click(Sender: TObject);
begin
Fof.play(False);
end;

procedure TtesztF.Button3Click(Sender: TObject);
begin
//Label1.Caption:='nincs kep';
  try
   label1.CAPtion := FoF.snapshot('0');
  except
   ShowMessage('hiba');
  end;
end;

end.
