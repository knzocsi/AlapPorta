unit Meres_MerlegjegyenU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin, System.Actions, Vcl.ActnList, Vcl.StdActns;

type
  TMeres_MerlegjegyenF = class(TForm)
    rgMeresszama: TRadioGroup;
    Label2: TLabel;
    lblelsodat: TLabel;
    chkelso_kezi: TCheckBox;
    lblelsoido: TLabel;
    Label12: TLabel;
    lblmasdat: TLabel;
    lblmasido: TLabel;
    chkmasodik_kezi: TCheckBox;
    rgMerlegszama: TRadioGroup;
    btnMeres: TButton;
    lblTomeg1: TLabel;
    lblTomeg2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    spTomeg: TSpinEdit;
    btnKilepes: TButton;
    Label6: TLabel;
    chkKezimeres: TCheckBox;
    btnelfogadas: TButton;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnelfogadasClick(Sender: TObject);
    procedure btnMeresClick(Sender: TObject);
    procedure chkKezimeresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mert_eredmeny:integer;
  end;

var
  Meres_MerlegjegyenF: TMeres_MerlegjegyenF;

implementation
uses au,PortU,FoU, UzenetekU;

{$R *.dfm}

procedure TMeres_MerlegjegyenF.btnKilepesClick(Sender: TObject);
begin
  Close;
end;

procedure TMeres_MerlegjegyenF.btnMeresClick(Sender: TObject);
var tomeg:integer;
begin
  if szabalyos_merlegen_tartozkodas_figyeles then
  begin

    if (Fof.bemenet_lekerdezes('M'+(rgMerlegszama.ItemIndex+1).ToString,'INFRA5')=0)  or
       (Fof.bemenet_lekerdezes('M'+(rgMerlegszama.ItemIndex+1).ToString,'INFRA6')=0)
      then
    begin
      ShowMessage(rsJarmuNincsAMerlegen);
      exit;
    end;

  end;
  try
    tomeg :=StrToInt(mertertekek[rgMerlegszama.itemindex+1]);
    if tomeg < 0 then
      tomeg := 0;
  except
    tomeg := 0;
  end;
  spTomeg.Value:=tomeg;
end;

procedure TMeres_MerlegjegyenF.chkKezimeresClick(Sender: TObject);
begin
  spTomeg.Value:=0;
  spTomeg.Enabled:=chkKezimeres.Checked;
end;

procedure TMeres_MerlegjegyenF.btnelfogadasClick(Sender: TObject);
begin
  if spTomeg.Value<0 then
  begin
    ShowMessage(rsMeresEredmenyeNulla);
    exit;
  end;
  Mert_eredmeny:=spTomeg.Value;
  Close;
end;

procedure TMeres_MerlegjegyenF.FormActivate(Sender: TObject);
begin
  Mert_eredmeny:=-1;
  if lblTomeg1.Caption='0' then
  begin
    rgMeresszama.ItemIndex:=0;
    rgMerlegszama.ItemIndex:=0;
  end
  else
  begin
    rgMeresszama.ItemIndex:=1;
    if aktualis_merlegszam>1 then rgMerlegszama.ItemIndex:=1
    else  rgMerlegszama.ItemIndex:=0;
  end;
  rgMerlegszama.Visible:=aktualis_merlegszam>1;
  chkKezimeres.Checked:=false;
  chkKezimeres.Enabled:=  aF.van_joga('j8') ;  //kezi meres
  spTomeg.Enabled:=chkKezimeres.Checked;
end;

end.
