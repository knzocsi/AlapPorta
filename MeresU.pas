unit MeresU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TMeresF = class(TForm)
    cbxrendszam1: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    cbxrendszam2: TComboBox;
    Label9: TLabel;
    spTomeg: TSpinEdit;
    btnMentes: TButton;
    btnKilepes: TButton;
    chkkezi: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure btnMentesClick(Sender: TObject);
    procedure spTomegEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mentes:boolean;
    rendszam1,rendszam2:string;
    tomeg:integer;
  end;

var
  MeresF: TMeresF;

implementation
uses au;

{$R *.dfm}

procedure TMeresF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TMeresF.btnMentesClick(Sender: TObject);
begin
  mentes:=true;
  tomeg:=spTomeg.Value;
  rendszam1:=cbxrendszam1.Text;
  rendszam2:=cbxrendszam2.Text;
  close;
end;

procedure TMeresF.FormActivate(Sender: TObject);
begin

  mentes:=false;
  af.rendszam_combok(cbxrendszam1);
  af.rendszam_combok(cbxrendszam2);
  cbxrendszam1.Text:=rendszam1;
  cbxrendszam2.Text:=rendszam2;
  try
    tomeg := StrToInt(mertertek);
    if tomeg < 0 then
      tomeg := 0;
  except
    tomeg := 0;
  end;
  spTomeg.Value:=tomeg;
  chkkezi.Checked:=false;
  chkkezi.Enabled:=aF.van_joga('j8');
  spTomeg.ReadOnly:=not chkkezi.Checked;
end;

procedure TMeresF.spTomegEnter(Sender: TObject);
begin
 spTomeg.ReadOnly:=not chkkezi.Checked;
end;

end.
