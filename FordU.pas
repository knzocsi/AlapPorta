unit FordU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFordF = class(TForm)
    rsBejelentkezve: TLabel;
    rsFrissites: TLabel;
    rsHiba: TLabel;
    rsHibasJelszo: TLabel;
    rsEzaTermekmerszerepeldijszabkat: TLabel;
    rsHibastermekVTSZ: TLabel;
    rsSzalliotMegKellAdni: TLabel;
    rsSzallitoAdoszamaHibas: TLabel;
    rsSzallitoOrszagatMegKellAdni: TLabel;
    rsSzallitoCimetMegKellAdni: TLabel;
    rsVevotMegKellAdni: TLabel;
    rsVevoAdoszamaHibas: TLabel;
    rsVevoOrszagatMegKellAdni: TLabel;
    rsVevoCimetMegKellAdni: TLabel;
    rsFelrakCegetegKellAdni: TLabel;
    rsFelrakIrszHibas: TLabel;
    rsFelrakOrszagatMegKellAdni: TLabel;
    rsFelrakAdoszamaHibas: TLabel;
    rsFelrakVarosHibas: TLabel;
    rsLerakCegetMegKellAdni: TLabel;
    rsLerakAdoszamaHibas: TLabel;
    rsLerakOrszagatMegKellAdni: TLabel;
    rsLerakIrszHibas: TLabel;
    rsLerakVarosHibas: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    rsNincsJogosultsaga: TLabel;
    rsUjFelhasznaloFelvitele: TLabel;
    rsAdjaMegANevet: TLabel;
    rsFelhasznaloMarLetezik: TLabel;
    rsFelhasznaloLetrehozva: TLabel;
    rsFelhasznaloModositas: TLabel;
    rsFelhasznaloTorlese: TLabel;
    Label3: TLabel;
    rsEbbolAMeresbolMarKeszultMjegy: TLabel;
    rsCsatlakoztatva: TLabel;
    rsKliensHiba: TLabel;
    rsElokep1Folyamatos: TLabel;
    rsElokep1Szunetel: TLabel;
    rsElokep2Folyamatos: TLabel;
    rsElokep2Szunetel: TLabel;
    rsKamerakepBetolteseSikertelen: TLabel;
    rsKartya: TLabel;
    rsNemTalalhato: TLabel;
    rsAKijelzoPortNincsBeallitva: TLabel;
    rsAHivoszamKijelzoPortNincsBeallitva: TLabel;
    rsRendszamLampaIndul: TLabel;
    rsPluginMappaHianyzik: TLabel;
    rsKilepesFolyamatban: TLabel;
    rsAdjaMegAJelenlegiJelszavat: TLabel;
    rsAdjaMegAzUjJelszavat: TLabel;
    rsJelszo: TLabel;
    rsErositseMegAzUjJelszavat: TLabel;
    rsIOKapcsolatiHiba: TLabel;
    rsAKetJelszoNemEgyezik: TLabel;
    rsJelszoModositva: TLabel;
    rsKamerNemElerheto: TLabel;
    rsPLCKapcsolatiHiba: TLabel;
    rsPLCPingHiba: TLabel;
    rsIrtCim: TLabel;
    rsPingTeszt: TLabel;
    rsPLCTeszt: TLabel;
    rsPLCOlvasasiHiba: TLabel;
    rsErtek: TLabel;
    rsPLCIrasiiHiba: TLabel;
    rsIOIrasiHiba: TLabel;
    rsOlvasottCim: TLabel;
    rsRendszamLekerM: TLabel;
    Label4: TLabel;
    rsFelulIrAKeszlet: TLabel;
    rsFelulIrBKeszlet: TLabel;
    Label5: TLabel;
    rsBeallitasokMentve: TLabel;
    Label6: TLabel;
    rsJarmuNincsAMerlegen: TLabel;
    rsMeresEredmenyeNulla: TLabel;
    Label7: TLabel;
    rsUjMerlegkezeloFelvitele: TLabel;
    rsMerlegkezeloMarLetezik: TLabel;
    rsMerlegkezeloTorlese: TLabel;
    Label8: TLabel;
    rsBizonylatKibocsjtotMegKellAdni: TLabel;
    rsAz: TLabel;
    rsMegKellAdni: TLabel;
    rsTermeketMegKellAdni: TLabel;
    rsMeresIranyatMegKellAdni: TLabel;
    rsRendszamotMegKellAdni: TLabel;
    rsNincsKivalasztvaKetMeres: TLabel;
    rsMerlegkezelotMegKellAdni: TLabel;
    rsTarolotMegKellAdni: TLabel;
    rsLevonandoTomegetMegKellAdni: TLabel;
    rsAtvevo: TLabel;
    rsVevo: TLabel;
    rsElado: TLabel;
    rsAtado: TLabel;
    rsTermekEgysegaraValtozott: TLabel;
    Label9: TLabel;
    rsStornozza: TLabel;
    rsBiztosanTorliElszamolasbol: TLabel;
    rsMerlegjegySzerepelAzElszamolasban: TLabel;
    rsElaszolasbanegyPartner: TLabel;
    rsElaszolasbanegyTermek: TLabel;
    Label10: TLabel;
    rsNemVoltMentes: TLabel;
    rsMarKiVanJelolveKetJarmu: TLabel;
    rsAdjaMegAFuvarozot: TLabel;
    rsRendszamokElternek: TLabel;
    rsPotkocsiRendszamatMegKellAdni: TLabel;
    rsKezi: TLabel;
    Label11: TLabel;
    rsHibasPeldanyszam: TLabel;
    Label12: TLabel;
    rsTablaZarolva: TLabel;
    rsTablaNincsZarolva: TLabel;
    rsIgen: TLabel;
    rsNem: TLabel;
    rsMegsem: TLabel;
    rsBiztosanTorli: TLabel;
    rsHibasAdoszam: TLabel;
    rsNevetMegKellAdni: TLabel;
    rsIrszetMegKellAdni: TLabel;
    rsTelepulestMegKellAdni: TLabel;
    rsEzAKodMarFoglalt: TLabel;
    rsEzANevMarFoglalt: TLabel;
    Label13: TLabel;
    rsEloszorTeteltVigyenFel: TLabel;
    rsKiadoPartnertMegKellAdni: TLabel;
    rsKiadoTarolotMegKellAdni: TLabel;
    rsFogadoPartnertMegKellAdni: TLabel;
    rsFogadoTarolotMegKellAdni: TLabel;
    rsKiadoPartnerKeszlete: TLabel;
    rsAdjaMegAMennyisege: TLabel;
    rsEztATermeketMarFelvette: TLabel;
    rsFolytatja: TLabel;
    Label14: TLabel;
    rsKod: TLabel;
    rsKodotMegKellAdni: TLabel;
    rsAdjaMegME: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FordF: TFordF;

implementation
  uses FoU;
{$R *.dfm}

procedure TFordF.FormActivate(Sender: TObject);
begin
 fof.ShowModal;
end;

end.
