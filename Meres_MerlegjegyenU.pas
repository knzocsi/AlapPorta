unit Meres_MerlegjegyenU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Samples.Spin;

type
  TMeres_MerlegjegyenF = class(TForm)
    RadioGroup1: TRadioGroup;
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
    btnMegsem: TButton;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Meres_MerlegjegyenF: TMeres_MerlegjegyenF;

implementation

{$R *.dfm}

end.
