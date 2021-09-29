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
  tipusokU in 'tipusokU.pas' {tipusokF},
  tarolokU in 'tarolokU.pas' {TarolokF},
  Rak_szallU in 'Rak_szallU.pas' {Rak_szallF},
  rak_szall_listU in 'rak_szall_listU.pas' {rak_szall_listF},
  MeresU in 'MeresU.pas' {MeresF},
  NezetU in 'NezetU.pas' {NezetF},
  NyomtatokU in 'NyomtatokU.pas' {NyomtatokF},
  Tulajok in 'Tulajok.pas' {TulajokF},
  EkaerU in 'EkaerU.pas' {EkaerF},
  Ping2U in 'Ping2U.pas',
  tesztU in 'tesztU.pas' {tesztF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAF, AF);
  Application.CreateForm(TFoF, FoF);
  Application.CreateForm(TNezetF, NezetF);
  Application.CreateForm(TBelepF, BelepF);
  Application.CreateForm(TPortF, PortF);
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
  Application.CreateForm(TNagykamF, NagykamF);
  Application.CreateForm(TLibreExcelF, LibreExcelF);
  Application.CreateForm(TtipusokF, tipusokF);
  Application.CreateForm(TTarolokF, TarolokF);
  Application.CreateForm(TRak_szallF, Rak_szallF);
  Application.CreateForm(Trak_szall_listF, rak_szall_listF);
  Application.CreateForm(TMjegyekF, MjegyekF);
  Application.CreateForm(TNyomtatokF, NyomtatokF);
  Application.CreateForm(TTulajokF, TulajokF);
  Application.CreateForm(TEkaerF, EkaerF);
  Application.CreateForm(TtesztF, tesztF);
  Application.Run;
end.
