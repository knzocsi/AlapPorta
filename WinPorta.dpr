program WinPorta;

{$R *.dres}

uses
  Vcl.Forms,
  FoU in 'FoU.pas' {FoF},
  AU in 'AU.pas' {AF: TDataModule},
  PartnerekU in 'PartnerekU.pas' {PartnerekF},
  TermekekU in 'TermekekU.pas' {TermekekF},
  RendszamokU in 'RendszamokU.pas' {RendszamokF},
  ForgalomU in 'ForgalomU.pas' {ForgalomF},
  ParositottU in 'ParositottU.pas' {ParositottF},
  KepekU in 'KepekU.pas' {KepekF},
  BelepU in 'BelepU.pas' {BelepF},
  FelhaszU in 'FelhaszU.pas' {FelhaszF},
  portU in 'portU.pas' {PortF},
  kodu in 'kodu.pas' {kodF},
  my_sqlU in 'my_sqlU.pas' {MySQLF},
  mjegyU in 'mjegyU.pas' {MjegyF},
  MjegyListaU in 'MjegyListaU.pas' {MjegyekF},
  MerlegkezelokU in 'MerlegkezelokU.pas' {MerlegkezelokF},
  SQL_text in 'SQL_text.pas',
  KeszletU in 'KeszletU.pas' {keszletF},
  kezdokeszletU in 'kezdokeszletU.pas' {kezdokeszletF},
  nagykepU in 'nagykepU.pas' {NagykepF},
  nagykamU in 'nagykamU.pas' {NagykamF},
  LibreExcelU in 'LibreExcelU.pas' {LibreExcelF},
  tipusokU in 'tipusokU.pas' {TipusokF},
  tarolokU in 'tarolokU.pas' {TarolokF},
  Rak_szallU in 'Rak_szallU.pas' {Rak_szallF},
  rak_szall_listU in 'rak_szall_listU.pas' {rak_szall_listF},
  MeresU in 'MeresU.pas' {MeresF},
  NezetU in 'NezetU.pas' {NezetF},
  NyomtatokU in 'NyomtatokU.pas' {NyomtatokF},
  Tulajok in 'Tulajok.pas' {TulajokF},
  EkaerU in 'EkaerU.pas' {EkaerF},
  Ping2U in 'Ping2U.pas',
  tesztU in 'tesztU.pas' {tesztF},
  levon_szovegekU in 'levon_szovegekU.pas' {levon_szovegekF},
  FelrakCimekU in 'FelrakCimekU.pas' {felrakcimekF},
  demotomegU in 'demotomegU.pas' {DemotomegF},
  LerakCimekU in 'LerakCimekU.pas' {LerakCimekF},
  VarakozasU in 'VarakozasU.pas' {VarF},
  szoftver_alapU in 'szoftver_alapU.pas' {szoftver_alapF},
  AlapbemodU in 'AlapbemodU.pas' {AlapbemodF},
  MermodU in 'MermodU.pas' {MermodF},
  MermodlistU in 'MermodlistU.pas' {MermodlistF},
  Vcl.Themes,
  Vcl.Styles,
  Meres_MerlegjegyenU in 'Meres_MerlegjegyenU.pas' {Meres_MerlegjegyenF},
  Hardver_beallU in 'Hardver_beallU.pas' {Hardver_beallF},
  PLC_COMU in 'PLC_COMU.pas' {PLC_COMF},
  ImportU in 'ImportU.pas' {ImportF},
  MerlegelesekU in 'MerlegelesekU.pas' {MerlegelesekF},
  DMSoapU in 'SOAP\DMSoapU.pas' {DMSoapF: TDataModule},
  Soap_valaszU in 'SOAP\Soap_valaszU.pas',
  Soap_PingU in 'SOAP\Soap_PingU.pas',
  Soap_keresU in 'SOAP\Soap_keresU.pas',
  DijakU in 'DijakU.pas' {DijakF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMSoapF, DMSoapF);
  Application.CreateForm(TAF, AF);
  Application.CreateForm(TFoF, FoF);
  Application.CreateForm(TNagykamF, NagykamF);
  Application.CreateForm(TNezetF, NezetF);
  Application.CreateForm(TMeresF, MeresF);
  Application.CreateForm(TPartnerekF, PartnerekF);
  Application.CreateForm(TTermekekF, TermekekF);
  Application.CreateForm(TRendszamokF, RendszamokF);
  Application.CreateForm(TForgalomF, ForgalomF);
  Application.CreateForm(TParositottF, ParositottF);
  Application.CreateForm(TKepekF, KepekF);
  Application.CreateForm(TFelhaszF, FelhaszF);
  Application.CreateForm(TkodF, kodF);
  Application.CreateForm(TMjegyF, MjegyF);
  Application.CreateForm(TMerlegkezelokF, MerlegkezelokF);
  Application.CreateForm(TkeszletF, keszletF);
  Application.CreateForm(TkezdokeszletF, kezdokeszletF);
  Application.CreateForm(TNagykepF, NagykepF);
  Application.CreateForm(TLibreExcelF, LibreExcelF);
  Application.CreateForm(TTipusokF, TipusokF);
  Application.CreateForm(TTarolokF, TarolokF);
  Application.CreateForm(TRak_szallF, Rak_szallF);
  Application.CreateForm(Trak_szall_listF, rak_szall_listF);
  Application.CreateForm(TMjegyekF, MjegyekF);
  Application.CreateForm(TNyomtatokF, NyomtatokF);
  Application.CreateForm(TTulajokF, TulajokF);
  Application.CreateForm(TEkaerF, EkaerF);
  Application.CreateForm(TtesztF, tesztF);
  Application.CreateForm(Tlevon_szovegekF, levon_szovegekF);
  Application.CreateForm(TfelrakcimekF, felrakcimekF);
  Application.CreateForm(TDemotomegF, DemotomegF);
  Application.CreateForm(TLerakCimekF, LerakCimekF);
  Application.CreateForm(TVarF, VarF);
  Application.CreateForm(Tszoftver_alapF, szoftver_alapF);
  Application.CreateForm(TAlapbemodF, AlapbemodF);
  Application.CreateForm(TMermodF, MermodF);
  Application.CreateForm(TMermodlistF, MermodlistF);
  Application.CreateForm(TMeres_MerlegjegyenF, Meres_MerlegjegyenF);
  Application.CreateForm(THardver_beallF, Hardver_beallF);
  Application.CreateForm(TPLC_COMF, PLC_COMF);
  Application.CreateForm(TImportF, ImportF);
  Application.CreateForm(TMerlegelesekF, MerlegelesekF);
  Application.CreateForm(TBelepF, BelepF);
  Application.CreateForm(TDijakF, DijakF);
  Application.Run;
end.
