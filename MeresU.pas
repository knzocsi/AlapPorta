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
    btnMeres1: TButton;
    btnMeres2: TButton;
    btnMeres3: TButton;
    btnMeres4: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure btnMentesClick(Sender: TObject);
    procedure spTomegEnter(Sender: TObject);
    procedure btnMeres1Click(Sender: TObject);
    procedure chkkeziClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mentes:boolean;
    rendszam1,rendszam2:string;
    tomeg,merleg:integer;
  end;

var
  MeresF: TMeresF;

implementation
uses au,PortU;

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

procedure TMeresF.btnMeres1Click(Sender: TObject);

begin
  if Sender=btnMeres1 then merleg:=1;
  if Sender=btnMeres2 then merleg:=2;
  if Sender=btnMeres3 then merleg:=3;
  if Sender=btnMeres4 then merleg:=4;

  try
    tomeg :=StrToInt(mertertekek[merleg]);
    if tomeg < 0 then
      tomeg := 0;
  except
    tomeg := 0;
  end;
  spTomeg.Value:=tomeg;
end;

procedure TMeresF.chkkeziClick(Sender: TObject);
begin
  spTomeg.value:=0;
end;

procedure TMeresF.FormActivate(Sender: TObject);
var i:integer;
begin
  for i := 1 to 4 do TButton(FindComponent('btnMeres'+IntToStr(i))).Visible:=merlegek[i]<>'NINCS';

  merleg:=0;
  mentes:=false;
  af.rendszam_combok(cbxrendszam1);
  af.rendszam_combok(cbxrendszam2);
  cbxrendszam1.Text:=rendszam1;
  cbxrendszam2.Text:=rendszam2;
  try
    tomeg :=0;// StrToInt(mertertekek[1]);
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
