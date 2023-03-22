unit Hardver_beallU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.DB, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage;

type
  THardver_beallF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    pcAdatok: TPageControl;
    tsLista: TTabSheet;
    tsReszletek: TTabSheet;
    DBGrid1: TDBGrid;
    dbeLeiras: TDBEdit;
    dcbEszkoz: TDBComboBox;
    tbSegitseg: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    dbeSzamitogep: TDBEdit;
    Label3: TLabel;
    dcbTipus: TDBComboBox;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    dcbEgyedi: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    dbeComport_v_IP_cim: TDBEdit;
    Label7: TLabel;
    dbeIP_Port: TDBEdit;
    Label9: TLabel;
    dbeBekapcs_kimenet: TDBEdit;
    Label10: TLabel;
    dbeKikapcs_kimenet: TDBEdit;
    dchkAktiv: TDBCheckBox;
    dchkHibas: TDBCheckBox;
    dchkAlaphelyzet: TDBCheckBox;
    dbeGombszoveg: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    dbeGombszam: TDBEdit;
    Label13: TLabel;
    dbeLabelszoveg: TDBEdit;
    Label14: TLabel;
    dbeLabelszam: TDBEdit;
    Label15: TLabel;
    dbeVarakozas: TDBEdit;
    Label16: TLabel;
    dbeRtsp: TDBEdit;
    StringGrid1: TStringGrid;
    Image1: TImage;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Hardver_beallF: THardver_beallF;

implementation
uses au;

{$R *.dfm}

procedure THardver_beallF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure THardver_beallF.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button=nbInsert then
  begin
    { TODO 1 -oKNZ -c : Itt lesz a combok alaphelyzetbe állítása 2023. 03. 22. 17:13:30 }
  end;
  if Button=nbPost then
  begin
    { TODO 1 -oKNZ -c : Itt kell figyelni a hibás értékeket 2023. 03. 22. 16:47:08 }

  end;
end;

procedure THardver_beallF.FormActivate(Sender: TObject);
begin
  pcAdatok.ActivePageIndex:=0;
end;

end.
