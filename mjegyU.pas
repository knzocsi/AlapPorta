unit mjegyU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, JvMemoryDataset,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, JvExControls,
  JvDBLookup, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvRollOut,
  Vcl.Samples.Spin,frxClass, Vcl.Mask, JvExMask, JvSpin,vcl.Imaging.jpeg,
  Vcl.ComCtrls, Vcl.Buttons;

type


  TMjegyF = class(TForm)
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    termeklist: TFDQuery;
    termeklistDs: TDataSource;
    jvmemparos: TJvMemoryData;
    jvmemparosDs: TDataSource;
    jvmemparosid: TIntegerField;
    jvmemparosdatum: TDateField;
    jvmemparosido: TTimeField;
    jvmemparosrendszam: TStringField;
    jvmemparosrendszam2: TStringField;
    jvmemparoskepnev1: TStringField;
    jvmemparoskepnev2: TStringField;
    jvmemparosparosit: TBooleanField;
    jvmemparostomeg: TIntegerField;
    masolQ: TFDQuery;
    termeklistID: TFDAutoIncField;
    termeklistKod: TWideStringField;
    termeklistNev: TWideStringField;
    termeklistitj: TWideStringField;
    termeklistme: TWideStringField;
    termeklistar: TBCDField;
    termeklistafa: TBCDField;
    termeklistegysegtomeg: TBCDField;
    termeklistalapnedv: TBCDField;
    termeklistkerekites: TBooleanField;
    termeklistkukorica: TBooleanField;
    termeklistb_nedv: TBooleanField;
    termeklistb_feherje: TBooleanField;
    termeklistb_eses: TBooleanField;
    termeklistb_tisztasag: TBooleanField;
    termeklistb_tort: TBooleanField;
    termeklistb_olaj: TBooleanField;
    termeklistb_buzaminoseg: TBooleanField;
    termeklistb_hekto: TBooleanField;
    termeklisttipus_id: TIntegerField;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    jvmemparoskezi: TBooleanField;
    tulajT: TFDTable;
    tulajTID: TFDAutoIncField;
    tulajTNev: TWideStringField;
    tulajTCim: TWideStringField;
    tulajTAdoszam: TWideStringField;
    tulajTkuj: TWideStringField;
    tulajTktj: TWideStringField;
    tulajTElotag: TWideStringField;
    tulajDs: TDataSource;
    Partnerlist2Ds: TDataSource;
    Partnerlist2: TFDQuery;
    tulajTIrsz: TWideStringField;
    tulajTTelepules: TWideStringField;
    tulajTKerulet: TWideStringField;
    tulajTKozterulet: TWideStringField;
    tulajTKozt_Jelleg: TWideStringField;
    tulajTHazszam: TWideStringField;
    tulajTEpulet: TWideStringField;
    tulajTLepcsohaz: TWideStringField;
    tulajTEmelet: TWideStringField;
    tulajTHrsz: TWideStringField;
    levon_szovegT: TFDTable;
    levon_szovegTID: TFDAutoIncField;
    levon_szovegTSzoveg: TWideStringField;
    levon_szovegDs: TDataSource;
    pnlAlso: TPanel;
    lblpartner: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    lblelsodat: TLabel;
    Label12: TLabel;
    lblmasdat: TLabel;
    lblelsoido: TLabel;
    lblmasido: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    lblekaer: TLabel;
    Label27: TLabel;
    lblsznetto: TLabel;
    lblpartner2: TLabel;
    lbllevonszoveg: TLabel;
    cbxIrany: TComboBox;
    btnMentes: TButton;
    partnerlookup: TJvDBLookupCombo;
    spBrutto: TSpinEdit;
    sptara: TSpinEdit;
    spnetto: TSpinEdit;
    edmegjegy: TEdit;
    btnPartnerek_listaja: TButton;
    btn1: TButton;
    kezelolookup: TJvDBLookupCombo;
    btnMerlegkezelok_listaja: TButton;
    cbxktip: TComboBox;
    chknincspot: TCheckBox;
    edekaer: TEdit;
    cbxRendszam1: TComboBox;
    cbxRendszam2: TComboBox;
    chkRogzitett: TCheckBox;
    btnTaramegadas: TButton;
    pnlmezgaz: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lblegysegtomeg: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    lblMintaID: TLabel;
    spalapnedv: TJvSpinEdit;
    spnedv: TJvSpinEdit;
    spolaj: TJvSpinEdit;
    sptisztasag: TJvSpinEdit;
    sphekto: TJvSpinEdit;
    spfeherje: TJvSpinEdit;
    speses: TJvSpinEdit;
    chkkerekites: TCheckBox;
    chkkuk: TCheckBox;
    sptort: TJvSpinEdit;
    spegysegtomeg: TJvSpinEdit;
    cbxbuzaminoseg: TComboBox;
    edSample: TEdit;
    taroloklookup: TJvDBLookupCombo;
    btnTarolok_listaja: TButton;
    termeklookup: TJvDBLookupCombo;
    Spsznetto: TSpinEdit;
    btnNyomtatas: TButton;
    chkelso_kezi: TCheckBox;
    chkmasodik_kezi: TCheckBox;
    partnerlookup2: TJvDBLookupCombo;
    chkpartnerekegy: TCheckBox;
    btnekaer: TButton;
    levonlookup: TJvDBLookupCombo;
    sp_tomeg_levon: TSpinEdit;
    lbl_tomeg_levon: TLabel;
    btnlevon_szoveg: TButton;
    termeklistewc: TWideStringField;
    tulajTEmail: TWideStringField;
    tulajTTelefon: TWideStringField;
    tulajTAjto: TWideStringField;
    tulajTcjsz: TWideStringField;
    pnlFelso: TPanel;
    tulajlookup: TJvDBLookupCombo;
    pnlFelsoBal: TPanel;
    JvDBUltimGrid1: TJvDBUltimGrid;
    pnlFelsoJobb: TPanel;
    pgKepek: TPageControl;
    tsKep1: TTabSheet;
    tsKep2: TTabSheet;
    kep1: TImage;
    lblKep1: TLabel;
    kep2: TImage;
    lblKep2: TLabel;
    btnMeres: TButton;
    lblTomeg1: TLabel;
    Label14: TLabel;
    lblTomeg2: TLabel;
    Label15: TLabel;
    lucTipus: TJvDBLookupCombo;
    Label5: TLabel;
    speSorszam: TJvSpinEdit;
    lblSorszam: TLabel;
    btnFolytatasos_mentes: TSpeedButton;
    edszallev: TMemo;
    tsOsszeskep: TTabSheet;
    tsKep3: TTabSheet;
    tsKep4: TTabSheet;
    Kep3: TImage;
    lblKep3: TLabel;
    Kep4: TImage;
    lblKep4: TLabel;
    pnlKepBal: TPanel;
    pnlKepJobb: TPanel;
    pnlKepBalFelso: TPanel;
    pnlKepBalAlso: TPanel;
    pnlKepJobbFelso: TPanel;
    pnkKepJobbAlso: TPanel;
    OKep1: TImage;
    OKep2: TImage;
    OKep3: TImage;
    OKep4: TImage;
    procedure JvDBUltimGrid1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMentesClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnPartnerek_listajaClick(Sender: TObject);
    procedure btnMerlegkezelok_listajaClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kep1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbxrendszam1Change(Sender: TObject);
    procedure partnerlookupChange(Sender: TObject);
    procedure btnTaramegadasClick(Sender: TObject);
    procedure sptisztasagChange(Sender: TObject);
    procedure termeklookupCloseUp(Sender: TObject);
    procedure btnTarolok_listajaClick(Sender: TObject);
    procedure spnedvExit(Sender: TObject);
    procedure edSampleChange(Sender: TObject);
    procedure spnedvChange(Sender: TObject);
    procedure cbxiranyChange(Sender: TObject);
    procedure partnerlookup2Change(Sender: TObject);
    procedure pnlAlsoClick(Sender: TObject);
    procedure btnekaerClick(Sender: TObject);
    procedure levonlookupChange(Sender: TObject);
    procedure sp_tomeg_levonKeyPress(Sender: TObject; var Key: Char);
    procedure btnlevon_szovegClick(Sender: TObject);
    procedure sp_tomeg_levonExit(Sender: TObject);
    procedure sp_tomeg_levonChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnMeresClick(Sender: TObject);
    procedure lucTipusChange(Sender: TObject);
    procedure tsOsszeskepResize(Sender: TObject);


  private
    { Private declarations }
    procedure kepek_betoltese;
    procedure jpeg_betoltese(kepnev:string;kep,Okep:TImage);
    procedure uresre;
    procedure jeloles;
    procedure rendszam_combok;
    procedure szazalek;
  public
    { Public declarations }
    Folytatas:boolean;
    procedure masol(kd,vd:TDate;friss:Boolean);
  end;

const maxkep=8;
var
  MjegyF: TMjegyF;
  brutto,tara,netto,sznetto:integer;
  br,tr,aned,ned,tisz:single;
  nedvesseg,tisztasag,nedvelvon: string;
  ttom:Real;
  r11,r12,r21,r22:String;
  egyedi_azonosito:string;
  mentes_volt:boolean;
  kepek_tomb:array[1..maxkep] of string;
  jeloltek_szama:integer;

implementation
  uses AU,TermekekU,PartnerekU, NezetU, MerlegkezelokU,nagykepU, RendszamokU,
  tarolokU, EkaerU, levon_szovegekU,Meres_MerlegjegyenU;
{$R *.dfm}

{ TmjegyF }
procedure TMjegyF.btn1Click(Sender: TObject);
begin
 try
   TermekekF.ShowModal
 finally
   termeklist.Refresh;
   termeklookupCloseUp(self);
 end;
end;

procedure TMjegyF.btnTaramegadasClick(Sender: TObject);
begin
  if not aF.van_joga('j9') then exit; //Taramegadas
  RendszamokF.ShowModal;
  rendszam_combok
end;

procedure TMjegyF.btnPartnerek_listajaClick(Sender: TObject);
begin
 try
   PartnerekF.ShowModal
 finally
   Partnelist.Refresh;
   Partnerlist2.Refresh;
 end;
end;

procedure TMjegyF.btnMerlegkezelok_listajaClick(Sender: TObject);
begin
 try
   MerlegkezelokF.ShowModal
 finally
   aF.merlegkezQ.Close;
   aF.merlegkezQ.Open();
 end;
end;

procedure TMjegyF.btnTarolok_listajaClick(Sender: TObject);
begin
  try
   tarolokF.ShowModal
 finally
   TarolokT.Close;
   TarolokT.Open();
 end;
end;

procedure TMjegyF.cbxiranyChange(Sender: TObject);
begin
case cbxirany.ItemIndex of
 0:begin //nincs kiválasztva
    lblpartner.Caption:='Partner:';
    partnerlookup.KeyValue:='!';
    partnerlookup.Enabled:=false;
    lblpartner2.Caption:='Partner 2:';
    partnerlookup2.KeyValue:='!';
    partnerlookup2.Enabled:=false;
    btnekaer.Enabled:=false;
    btnMeres.enabled:=False;
   end;
 1:begin //beszállítás
    lblpartner.Caption:='Átadó:';
    partnerlookup.Enabled:=True;
    lblpartner2.Caption:='Átvevõ:';
    partnerlookup2.Enabled:=true;
    btnekaer.Enabled:=false;
    partnerlookup.keyvalue:='!';
    if alap_atvevo<>0 then  partnerlookup2.keyvalue:=alap_atvevo;
    btnMeres.enabled:= True;
   end;
 2:begin //kiszállítás
    lblpartner.Caption:='Eladó:';
    partnerlookup.Enabled:=true;
    lblpartner2.Caption:='Vevõ:';
    partnerlookup2.Enabled:=True;
    btnekaer.Enabled:=true;
    partnerlookup2.keyvalue:='!';
    if alap_elado<>0 then  partnerlookup.keyvalue:=alap_elado;
    btnMeres.enabled:= True;
   end;
end;
end;

procedure TMjegyF.cbxrendszam1Change(Sender: TObject);
begin
  if chknincspot.Checked then cbxrendszam2.Text:=cbxrendszam1.Text;
  if not chkrogzitett.Checked  then Exit;
  sptara.Value:=aF.tara(cbxrendszam1.Text);
  spnetto.Value:=spbrutto.Value-sptara.Value;
end;

procedure TMjegyF.edSampleChange(Sender: TObject);
var sample_result,s,s1,jellemzo,ertek:string;

begin
  if edSample.Text<>'' then
  with af.SampleQ1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT * FROM samples WHERE SID='+#39+edSample.Text+#39);
    Open;
    if not Eof  then //ShowMessage(fieldbyname('Results').AsString);
    begin
      sample_result:=fieldbyname('Results').AsString;
      s:=sample_result;
      while s<>'' do
      begin
        if pos('|',s)<>0 then s1:=Copy(s,1,Pos('|',s)-1)
        else s1:=s;
        jellemzo:=Copy(s1,1,pos('=',s1)-1);
        ertek:=Copy(s1,pos('=',s1)+1,Length(s1));
        if pos('.',ertek)<>0 then ertek[pos('.',ertek)]:=FormatSettings.DecimalSeparator;
        if jellemzo='aqH'  then spnedv.Text:=ertek;


        if pos('|',s)<>0 then  s:=Copy(s,Pos('|',s)+1,Length(s))
        else s:='';

      end;
      //Next;
    end;
  end;
end;

procedure TMjegyF.FormActivate(Sender: TObject);

  procedure magassagok;
   begin
     if mezgaz then
      begin
        label8.top:=186;
        edmegjegy.top:=201;
        lblekaer.Top:=223;
        label9.Top:=223;
        label10.Top:=223;
        label11.Top:=223;
        edekaer.Top:=238;
        spbrutto.top:=238;
        sptara.top:=238;
        spnetto.top:=238;
        cbxktip.top:=238;
        pnlAlso.Height:=280;
      end
      else
      begin
        label8.top:=128;
        edmegjegy.top:=145;
        lblekaer.Top:=168;
        label9.Top:=168;
        label10.Top:=168;
        label11.Top:=168;
        edekaer.Top:=189;
        spbrutto.top:=189;
        sptara.top:=189;
        spnetto.top:=189;
        cbxktip.top:=189;
        pnlAlso.Height:=240;
      end;
   end;

   var i:integer;

begin
  mentes_volt:=false;
  pnlFelsoBal.Visible:=forgalom_latszik;
  pnlFelsoJobb.Visible:=( rendszamleker)or (lejatszas);
  pnlFelso.Visible:=pnlFelsoBal.Visible or pnlFelsoJobb.Visible;
  if pnlFelsoBal.Visible or pnlFelsoJobb.Visible then pnlAlso.Align:=alBottom
  else
  begin
    Height:=round(500*kepernyo_meretarany/100);
    pnlAlso.Align:=alClient;
  end;
  btnFolytatasos_mentes.Visible:=ideiglenes_latszik;
  btnMeres.enabled:=False;
  btnTaramegadas.Visible:=taramegadas;
  chkrogzitett.Visible:=taramegadas;
  aF.merlegkezQ.First;
  kezelolookup.KeyValue:=aF.merlegkezQ.FieldByName('id').AsInteger;
  rendszam_combok;
  pnlmezgaz.Visible:=mezgaz;
 // lblsznetto.Visible:=mezgaz;
 // Spsznetto.Visible:=mezgaz;
  lblMintaID.Visible:=(nedvesseg_beolvasasa) and (mezgaz);
  edSample.Visible:=(nedvesseg_beolvasasa) and (mezgaz);
  edSample.Text:='';
  lbl_tomeg_levon.Visible:=tomeg_levon;
  sp_tomeg_levon.Visible:=tomeg_levon;
  lbllevonszoveg.Visible:=tomeg_levon;
  levonlookup.Visible:=tomeg_levon;
  btnlevon_szoveg.Visible:=tomeg_levon;
  //lblekaer.Visible:=ekaer_felhasz<>'';
  //edekaer.Visible:=ekaer_felhasz<>'';
  btnekaer.visible:=ekaer_felhasz<>'';
  //lblSorszam.Visible:=Hivoszamhasznalat;
  //speSorszam.Visible:=Hivoszamhasznalat;
  //speSorszam.Enabled:=Not Folytatas;
  speSorszam.Value:=0;
 // magassagok;
  af.tipusQ.Open;
  lucTipus.KeyValue:='!';
  termeklist.close;
  termeklist.sql.Clear;
  termeklist.sql.Add('select * from termek ORDER By NEV ASC;');
  termeklist.open;
  lblTomeg1.Caption:='0';
  lblTomeg2.Caption:='0';
  for i:= 1 to maxkep do kepek_tomb[i]:='';
  jeloltek_szama:=0;
  if Folytatas then
  with af.NyitbeQ do
  begin
     jeloltek_szama:=2;
    if FieldByName('tul_id').AsInteger<>0 then  tulajlookup.KeyValue:=FieldByName('tul_id').AsInteger;
    cbxirany.ItemIndex:=cbxirany.Items.IndexOf(FieldByName('irany').AsString);
    cbxiranyChange(Sender);
    chknincspot.Checked:=(FieldByName('rendszam').AsString=FieldByName('rendszam2').AsString)or (FieldByName('rendszam2').AsString='');
    lblelsodat.Caption:=FieldByName('erkdatum').AsString;
    lblelsoido.Caption:=FieldByName('erkido').AsString;
    chkelso_kezi.Checked:=FieldByName('elso_kezi').AsBoolean;
    lblmasdat.Caption:=FieldByName('tavdatum').AsString;
    lblmasido.Caption:=FieldByName('tavido').AsString;
    chkmasodik_kezi.Checked:=FieldByName('masodik_kezi').AsBoolean;
    partnerlookup.KeyValue:=FieldByName('p_id').AsInteger;
    partnerlookup2.KeyValue:=FieldByName('p2_id').AsInteger;
    termeklookup.KeyValue:=FieldByName('termek_id').AsInteger;
    termeklookupCloseUp(self);
    chkkerekites.Checked:=FieldByName('kerekites').AsBoolean;
    chkkuk.Checked:=FieldByName('kukorica').AsBoolean;
    cbxbuzaminoseg.ItemIndex:=cbxbuzaminoseg.Items.IndexOf(FieldByName('buzaminoseg').AsString);
    spegysegtomeg.Value:=FieldByName('egysegtomeg').Value;
    spalapnedv.Value:=FieldByName('alapnedv').Value;
    spnedv.Value:=FieldByName('nedv').Value;
    spolaj.Value:=FieldByName('olaj').Value;
    sptisztasag.Value:=FieldByName('tisztasag').Value;
    sphekto.Value:=FieldByName('hekto').Value;
    spfeherje.Value:=FieldByName('feherje').Value;
    speses.Value:=FieldByName('esesszam').Value;
    sptort.Value:=FieldByName('tortszaz').Value;
    edmegjegy.text:=FieldByName('megjegyzes').AsString;
    edekaer.Text:=FieldByName('ekaer').AsString;
    spbrutto.Value:=FieldByName('brutto').AsInteger;
    sptara.Value:=FieldByName('tara').AsInteger;
    spnetto.Value:=FieldByName('netto').AsInteger;
    sp_tomeg_levon.Value:=FieldByName('levon_tomeg').AsInteger;
    spsznetto.Value:=FieldByName('sznetto').AsInteger;
    edszallev.text:=FieldByName('szallitolev').AsString;
    cbxRendszam1.Text:=FieldByName('rendszam').AsString;
    cbxRendszam2.Text:=FieldByName('rendszam2').AsString;
    taroloklookup.KeyValue:=FieldByName('tarolo_id').AsInteger;
    af.merlegkezQ.locate('nev',FieldByName('merlegelo').AsString,[]);
    kezelolookup.KeyValue:= aF.merlegkezQ.FieldByName('Id').AsInteger;
    speSorszam.Value:=FieldByName('Hivo_sorszam').AsInteger;
    kepek_tomb[1]:=FieldByName('kepnev1').AsString;
    jpeg_betoltese(kepek_tomb[1],kep1,okep1);
    kepek_tomb[2]:=FieldByName('kepnev2').AsString;
    jpeg_betoltese(kepek_tomb[2],kep2,okep2);
    kepek_tomb[3]:=FieldByName('kepnev3').AsString;
    jpeg_betoltese(kepek_tomb[3],kep3,okep3);
    kepek_tomb[4]:=FieldByName('kepnev4').AsString;
    jpeg_betoltese(kepek_tomb[4],kep4,okep4);
    case cbxIrany.Itemindex of
      1 :
        begin
          lblTomeg1.Caption:=spBrutto.Text;
          lblTomeg2.Caption:=spTara.Text;
        end;
      2 :
        begin
          lblTomeg2.Caption:=spBrutto.Text;
          lblTomeg1.Caption:=spTara.Text;
        end;
    end;

  end;
 end;

procedure TMjegyF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Partnelist.Close;
  termeklist.Close;
  aF.merlegkezQ.Close;
  tulajT.close;
  Partnerlist2.close;
  TarolokT.close;
  levon_szovegT.close;
  Af.tipusQ.Close;
  if Folytatas then
  begin
    Af.NyitbeQ.close;
    Af.NyitbeQ.Open;
    Af.NyitbeQ.locate('eazon',egyedi_azonosito,[]);
  end;

end;

procedure TMjegyF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (not mentes_volt) then
    CanClose:=  ( MessageDlg('Nem volt mentés! Biztos kilép?', mtConfirmation, [mbOK,mbCancel], 0) = mrOk)
  else   CanClose:=True;


end;

procedure TMjegyF.jeloles;
begin
  if (not jvmemparosparosit.AsBoolean) and (jeloltek_szama=2) then
  begin
    ShowMessage('Már ki van jelölve két jármû, vagy folytatásban van!');
    exit;
  end;
  if (not jvmemparosparosit.AsBoolean)  then jeloltek_szama:=jeloltek_szama+1
  else jeloltek_szama:=jeloltek_szama-1;

  jvmemparos.Edit;
  jvmemparosparosit.AsBoolean:=not jvmemparosparosit.AsBoolean;
  jvmemparos.Post;
end;

procedure TMjegyF.jpeg_betoltese(kepnev: string; kep,Okep: TImage);
var     JPEGImg: TJPEGImage;
begin
  kep.Picture:=nil;
  Okep.Picture:=nil;
  if FileExists( kepnev) then
     begin
      JPEGImg := TJpegImage.Create;
      try
       JPEGImg.LoadFromFile( kepnev);
       if JPEGImg.Width<600 then
        JPEGImg.Scale:=jsFullSize
       else
        if JPEGImg.Width<1200 then
         JPEGImg.Scale:=jsHalf
        else
         if JPEGImg.Width<2000 then
          JPEGImg.Scale:=jsQuarter
         else
          JPEGImg.Scale:=jsEighth;
      finally
       kep.Picture.Assign(JPEGImg);
       Okep.Picture.Assign(JPEGImg);
       JPEGImg.Free;
      end;
    end;
end;

procedure TMjegyF.levonlookupChange(Sender: TObject);
begin
 sp_tomeg_levon.Enabled:=levonlookup.KeyValue<>'!';
 if levonlookup.KeyValue='!' then sp_tomeg_levon.Value:=0;
end;

procedure TMjegyF.lucTipusChange(Sender: TObject);
begin
  termeklist.close;
  if lucTipus.KeyValue='!' then
  begin
    termeklist.sql.Clear;
    termeklist.sql.Add('select * from termek ORDER By NEV ASC;');
  end
  else
  begin
    termeklist.sql.Clear;
    termeklist.sql.Add('select * from termek WHERE Tipus_ID='+IntToStr( lucTipus.KeyValue)+' ORDER By NEV ASC;');
  end;
  termeklist.open;

end;

procedure TMjegyF.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  jeloles;
  //Application.ProcessMessages;

  kepek_betoltese;
end;

procedure TMjegyF.JvDBUltimGrid1Exit(Sender: TObject);
var t1,t2,rc:Integer;

begin
  if jvmemparos.IsEmpty then exit;

  t1:=0;
  t2:=0;
  netto:=0;
  brutto:=0;
  tara:=0;
  lblelsodat.Caption:='';
  lblelsoido.Caption:='';
  lblmasdat.Caption:='';
  lblmasido.Caption:='';
 // cbxirany.ItemIndex:=1;
 // cbxiranyChange(Self);
  chkelso_kezi.Checked:=false;
  chkmasodik_kezi.Checked:=False;
  r11:='';
  r12:='';
  r21:='';
  r22:='';
  if not chkrogzitett.Checked then
  begin
    with jvmemparos do
    begin
      DisableControls;
      first;
      while not Eof  do
      begin
        if FieldByName('parosit').AsBoolean=true then
        begin
          if (t1=0)and (t2=0) then
           begin
             t1:=FieldByName('tomeg').AsInteger;
             rc:=RecNo;
             lblelsodat.Caption:=FieldByName('datum').AsString;
             lblelsoido.Caption:=FieldByName('ido').AsString;
             lblTomeg1.Caption:=FieldByName('Tomeg').AsString;
             chkelso_kezi.Checked:=FieldByName('kezi').AsBoolean;
             r11:=jvmemparos.FieldByName('rendszam').AsString;
             r12:=jvmemparos.FieldByName('rendszam2').AsString;
             cbxrendszam1.Text:=jvmemparos.FieldByName('rendszam').AsString;
             cbxrendszam2.Text:=jvmemparos.FieldByName('rendszam2').AsString;
           end;
          if (t1<>0)and (t2=0)and (rc<>RecNo) then
           begin
            t2:=FieldByName('tomeg').AsInteger;
            lblmasdat.Caption:=FieldByName('datum').AsString;
            lblmasido.Caption:=FieldByName('ido').AsString;
            lblTomeg2.Caption:=FieldByName('Tomeg').AsString;
            chkmasodik_kezi.Checked:=FieldByName('kezi').AsBoolean;
            r21:=jvmemparos.FieldByName('rendszam').AsString;
            r22:=jvmemparos.FieldByName('rendszam2').AsString;
           end;

        end;
        next;
      end;
     EnableControls;
    end;
    if (t1<>0) and (t2<>0) then
    begin
      if t1>t2 then
       begin
         brutto:=t1;
         tara:=t2
      end
      else
      begin
        brutto:=t2;
        tara:=t1
      end;
      netto:=brutto-tara;
    end;
  end
  else
  begin
    with jvmemparos do
    begin
      DisableControls;
      first;
      while not Eof  do
      begin
        if FieldByName('parosit').AsBoolean=true then
        begin
          if (t1=0) then
           begin
            t1:=FieldByName('tomeg').AsInteger;
            rc:=RecNo;
            lblelsodat.Caption:=FieldByName('datum').AsString;
            lblelsoido.Caption:=FieldByName('ido').AsString;
            chkelso_kezi.Checked:=FieldByName('kezi').AsBoolean;
           end;
        end;
        next
      end;
      EnableControls;
    end;
    if (t1<>0) then
      begin
       brutto:=t1;
       tara:=sptara.Value;
       netto:=brutto-tara;
      end;
  end;
  spBrutto.Value:=brutto;
  spnetto.Value:=netto;
  sptara.Value:=tara;
  szazalek;
end;

procedure TMjegyF.JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP)or(Key=VK_DOWN) then kepek_betoltese;
  if (key=VK_SPACE) then jeloles;
end;

procedure TMjegyF.kep1Click(Sender: TObject);
begin
  if Sender=kep1 then NagykepF.kepnev:=lblKep1.Caption
  else NagykepF.kepnev:=lblKep2.Caption ;
  NagykepF.Showmodal;
end;

procedure TMjegyF.kepek_betoltese;
var     JPEGImg: TJPEGImage;
begin
 // if (k1=jvmemparoskepnev1.AsString)and (k2=jvmemparoskepnev2.AsString) then exit;//ne olvassa be újra


  if not jvmemparosparosit.AsBoolean then
    if jeloltek_szama=0 then
    begin
      Okep1.Picture:=nil;
      Okep2.Picture:=nil;
      kep1.Picture:=nil;
      kep2.Picture:=nil;
      lblKep1.Caption:='';
      lblKep2.Caption:='';
      kepek_tomb[1]:='';
      kepek_tomb[2]:='';
      exit;
    end
    else
    begin
      Okep3.Picture:=nil;
      Okep4.Picture:=nil;
      kep3.Picture:=nil;
      kep4.Picture:=nil;
      lblKep3.Caption:='';
      lblKep4.Caption:='';
      kepek_tomb[3]:='';
      kepek_tomb[4]:='';
      exit;
    end;
  if jeloltek_szama=1 then
  begin
    kep1.Picture:=nil;
    kep2.Picture:=nil;
    Okep1.Picture:=nil;
    Okep2.Picture:=nil;
    lblKep1.Caption:=jvmemparoskepnev1.AsString;
    kepek_tomb[1]:=jvmemparoskepnev1.AsString;
    lblKep2.Caption:=jvmemparoskepnev2.AsString;
    kepek_tomb[2]:=jvmemparoskepnev2.AsString;
    if FileExists( lblKep1.Caption) then
     begin
      JPEGImg := TJpegImage.Create;
      try
       JPEGImg.LoadFromFile( lblKep1.Caption);
       if JPEGImg.Width<600 then
        JPEGImg.Scale:=jsFullSize
       else
        if JPEGImg.Width<1200 then
         JPEGImg.Scale:=jsHalf
        else
         if JPEGImg.Width<2000 then
          JPEGImg.Scale:=jsQuarter
         else
          JPEGImg.Scale:=jsEighth;
      finally
       kep1.Picture.Assign(JPEGImg);
       Okep1.Picture.Assign(JPEGImg);
       JPEGImg.Free;
      end;
     end;
     if FileExists(lblKep2.Caption) then
     begin
      JPEGImg := TJpegImage.Create;
      try
       JPEGImg.LoadFromFile(lblKep2.Caption);
       if JPEGImg.Width<600 then
        JPEGImg.Scale:=jsFullSize
       else
        if JPEGImg.Width<1200 then
         JPEGImg.Scale:=jsHalf
        else
         if JPEGImg.Width<2000 then
          JPEGImg.Scale:=jsQuarter
         else
          JPEGImg.Scale:=jsEighth;
      finally
       kep2.Picture.Assign(JPEGImg);
       Okep2.Picture.Assign(JPEGImg);
       JPEGImg.Free;
      end;
     end;
    lblKep1.Visible:=kep1.Picture=nil;
    lblKep2.Visible:=kep2.Picture=nil;
  end
  else
  begin
    kep3.Picture:=nil;
    kep4.Picture:=nil;
    Okep3.Picture:=nil;
    Okep4.Picture:=nil;
    lblKep3.Caption:=jvmemparoskepnev1.AsString;
    lblKep4.Caption:=jvmemparoskepnev2.AsString;
    kepek_tomb[3]:=jvmemparoskepnev1.AsString;
    kepek_tomb[4]:=jvmemparoskepnev2.AsString;
    if FileExists( lblKep3.Caption) then
     begin
      JPEGImg := TJpegImage.Create;
      try
       JPEGImg.LoadFromFile( lblKep3.Caption);
       if JPEGImg.Width<600 then
        JPEGImg.Scale:=jsFullSize
       else
        if JPEGImg.Width<1200 then
         JPEGImg.Scale:=jsHalf
        else
         if JPEGImg.Width<2000 then
          JPEGImg.Scale:=jsQuarter
         else
          JPEGImg.Scale:=jsEighth;
      finally
       kep3.Picture.Assign(JPEGImg);
       Okep3.Picture.Assign(JPEGImg);
       JPEGImg.Free;
      end;
     end;
     if FileExists(lblKep4.Caption) then
     begin
      JPEGImg := TJpegImage.Create;
      try
       JPEGImg.LoadFromFile(lblKep4.Caption);
       if JPEGImg.Width<600 then
        JPEGImg.Scale:=jsFullSize
       else
        if JPEGImg.Width<1200 then
         JPEGImg.Scale:=jsHalf
        else
         if JPEGImg.Width<2000 then
          JPEGImg.Scale:=jsQuarter
         else
          JPEGImg.Scale:=jsEighth;
      finally
       kep4.Picture.Assign(JPEGImg);
       Okep4.Picture.Assign(JPEGImg);
       JPEGImg.Free;
      end;
     end;
    lblKep3.Visible:=kep1.Picture=nil;
    lblKep4.Visible:=kep2.Picture=nil;
  end

end;

procedure TMjegyF.masol(kd, vd: TDate;friss:Boolean);
var i:Integer;
begin
  jvmemparos.Close;
  jvmemparos.EmptyTable;
  jvmemparos.Open;
  with masolQ do
  begin
    if not friss then
     begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT id,datum,ido,tomeg,rendszam,rendszam2,kepnev1,kepnev2,kezi from forgalom ');
      SQL.Add(' WHERE parositott=0 and nem_kell=0 and (datum>=:p0 and datum<=:p1)');
      SQL.Add(' ORDER BY datum,ido');
      Params[0].AsDate:=kd;
      Params[1].AsDate:=vd;
      Open;
     end
    else open;
    if not IsEmpty then
      begin
       DisableControls;
       First;
       while not eof do
       begin
         jvmemparos.Edit;
         jvmemparos.Append;
         for I := 0 to FieldCount-1 do jvmemparos.Fields[i]:=Fields[i];
         jvmemparosparosit.AsBoolean:=false;
         jvmemparoskezi.AsBoolean:=FieldByName('kezi').AsBoolean;
         jvmemparos.Post;
         Next;
       end;
      end;
    Close;
    jvmemparos.First;
  end;
  Partnelist.Open;
  Partnerlist2.Open;
  termeklist.Open;
  aF.merlegkezQ.Open;
  TarolokT.Open;
  levon_szovegT.Open;
  uresre;
end;

procedure TMjegyF.btnekaerClick(Sender: TObject);
begin
if tulajlookup.KeyValue='!' then
  begin
    ShowMessage('A bizonylat kibocsájtót meg kell adni!');
    exit
  end;
 if partnerlookup.KeyValue='!' then
  begin
    ShowMessage('A(z) '+StringReplace(lblpartner.Caption,':','t',[rfreplaceall])+' meg kell adni!');
    exit
  end;
 if partnerlookup2.KeyValue='!' then
  begin
    ShowMessage('A(z) '+StringReplace(lblpartner2.Caption,':','t',[rfreplaceall])+' meg kell adni!');
    exit
  end;
 if termeklookup.KeyValue='!' then
  begin
    ShowMessage('A terméket meg kell adni!');
    exit
  end;
 if cbxirany.ItemIndex<1 then
  begin
    ShowMessage('A mérés irányát meg kell adni!');
    exit
  end;
 if (cbxrendszam1.Text=''){or(cbxrendszam2.Text='')} then
  begin
    ShowMessage('A rendszámot meg kell adni!');
    exit
  end;
 if (spBrutto.Value<=0)or(sptara.Value<=0) then
  begin
    ShowMessage('Nincs kiválasztva 2 mérés vagy nincs tára rögzített mérésnél!');
    exit
  end;

 EkaerF.fo;
end;

procedure TMjegyF.btnlevon_szovegClick(Sender: TObject);
begin
 try
   levon_szovegekF.ShowModal
 finally
   levon_szovegT.Close;
   levon_szovegT.open;
 end;
end;

procedure TMjegyF.btnMentesClick(Sender: TObject);
var sorsz,pcime,tablaneve:String;
    ujid,p,psz:integer;
    keszmenny,tort_keszmenny:Extended;

 procedure elokeszit;
   begin
     AF.merlegjegy_tipus_betoltese;//azért kell mindig betölteni hogy a cím jó legyen (ha esetleg stornóztak)
     af.merlegjegy_mezgaz;//mezõgazdasági
     AF.merlegjegy_tomeglevonas;// tömeg levonás
     with aF.frxmerleg do
       begin
         TfrxMemoView(FindObject('frxpsz')).Text:='1. példány';
         if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:='2. példány';
         if edekaer.Text<>'' then
          begin
           TfrxMemoView(FindObject('frxekaer')).Text:=edekaer.Text;
           TfrxMemoView(FindObject('frxekaerlbl')).Text:='EKÁER:';
          end
          else
          begin
           TfrxMemoView(FindObject('frxekaer')).Text:='';
           TfrxMemoView(FindObject('frxekaerlbl')).Text:='';
          end;

         TfrxMemoView(FindObject('memtulaj')).Text:=tulajTNev.AsString;
         TfrxMemoView(FindObject('memtulajcime')).Text:=tulajTcim.AsString;
         if TfrxMemoView(FindObject('memtuladosz'))<>nil then TfrxMemoView(FindObject('memtuladosz')).Text:=tulajTadoszam.AsString;
         if TfrxMemoView(FindObject('memtulcjsz'))<>nil then TfrxMemoView(FindObject('memtulcjsz')).Text:=tulajTcjsz.AsString;
         if TfrxMemoView(FindObject('memTelefon'))<>nil then TfrxMemoView(FindObject('memTelefon')).Text:=tulajTTelefon.AsString;
         if TfrxMemoView(FindObject('memmerlegtipusa'))<>nil then TfrxMemoView(FindObject('memmerlegtipusa')).Text:=merleg_neve;
         TfrxMemoView(FindObject('mempartner')).Text:=lblpartner.Caption;
         TfrxMemoView(FindObject('mempartnerneve')).Text:=Partnelist.FieldByName('nev').AsString;
         TfrxMemoView(FindObject('mempartnercime')).Text:=Partnelist.FieldByName('cim').AsString;//pcime;
         TfrxMemoView(FindObject('mempartner2')).Text:=lblpartner2.Caption;
         TfrxMemoView(FindObject('mempartnerneve2')).Text:=Partnerlist2.FieldByName('nev').AsString;
         TfrxMemoView(FindObject('mempartnercime2')).Text:=Partnerlist2.FieldByName('cim').AsString;
         TfrxMemoView(FindObject('memelsoido')).Text:=lblelsodat.Caption+' '+lblelsoido.Caption;
         if not chkrogzitett.checked then
          begin
           TfrxMemoView(FindObject('memmasodikido')).Text:=lblmasdat.Caption+' '+lblmasido.Caption;
          end
          else
          begin
           TfrxMemoView(FindObject('memmasodikido')).text:='';
          end;
         TfrxMemoView(FindObject('membizszam')).Text:=sorsz;
         TfrxMemoView(FindObject('memrendszamok')).Text:=cbxrendszam1.text+' '+cbxrendszam2.text;
         TfrxMemoView(FindObject('membrutto')).Text:=spBrutto.Value.ToString+' kg';
         TfrxMemoView(FindObject('memtara')).Text:=sptara.Value.ToString+' kg';
         TfrxMemoView(FindObject('memnetto')).Text:=spnetto.Value.ToString+' kg';
         TfrxMemoView(FindObject('memirany')).Text:=cbxirany.Text;
         TfrxMemoView(FindObject('memmegjegy')).Text:=edmegjegy.Text;
         TfrxMemoView(FindObject('memtermkod')).Text:=termeklist.FieldByName('kod').AsString;
         TfrxMemoView(FindObject('memtermnev')).Text:=termeklist.FieldByName('nev').AsString;
         //TfrxMemoView(FindObject('memmerlegkezelo')).Text:=aF.merlegkezQ.FieldByName('nev').AsString;
         //TfrxMemoView(FindObject('frxkuj')).Text:=tulajTkuj.AsString;
         //TfrxMemoView(FindObject('frxktj')).Text:=tulajTktj.AsString;
         //TfrxMemoView(FindObject('frxpartnerkuj')).Text:=Partnelist.FieldByName('kuj').AsString;
         //TfrxMemoView(FindObject('frxpartnerktj')).Text:=Partnelist.FieldByName('ktj').AsString;
         TfrxMemoView(FindObject('memszallev')).Text:=edszallev.Text;
         //ewc
         if termeklist.FieldByName('ewc').AsString<>'' then
          begin
           TfrxMemoView(FindObject('memewc')).Text:=termeklist.FieldByName('ewc').AsString;
          end
         else
         begin
           TfrxMemoView(FindObject('memewc')).Text:='';
           TfrxMemoView(FindObject('memewclbl')).Text:='';
         end;
        if spnedv.Visible then //nedvesseghez kapcsolodik
         begin
          TfrxMemoView(FindObject('memalapnedv')).Text:=spalapnedv.Value.ToString+' %';
          TfrxMemoView(FindObject('memnedv')).Text:=spnedv.Value.ToString+' %';
          TfrxMemoView(FindObject('memnedvlevon')).Text:=IntToStr(Round(nedvesseg_vesztes_tomege))+' kg';
          //ezek nem kellenek
          // TfrxMemoView(FindObject('memnedveszt')).Text:=nedvesseg+' kg';
          TfrxMemoView(FindObject('memnedveszt')).Text:='';
          TfrxMemoView(FindObject('memnedvesztlbl')).Text:='';
         end
        else
         begin
          TfrxMemoView(FindObject('memalapnedv')).Text:='';
          TfrxMemoView(FindObject('memalapnedvlbl')).Text:='';
          TfrxMemoView(FindObject('memnedv')).Text:='';
          TfrxMemoView(FindObject('memnedvlbl')).Text:='';
          TfrxMemoView(FindObject('memnedvlevon')).Text:='';
          TfrxMemoView(FindObject('memnedvlevonlbl')).Text:='';
          TfrxMemoView(FindObject('memnedveszt')).Text:='';
          TfrxMemoView(FindObject('memnedvesztlbl')).Text:='';
         end;
         if sptisztasag.Visible then //szemet
          begin
           TfrxMemoView(FindObject('memtisztasag')).Text:=sptisztasag.Value.ToString+' %';
           TfrxMemoView(FindObject('memszemetlevon')).Text:=IntToStr(Round(szemet_tomeg))+' kg';
          end
         else
          begin
           TfrxMemoView(FindObject('memtisztasag')).Text:='';
           TfrxMemoView(FindObject('memtisztasaglbl')).Text:='';
           TfrxMemoView(FindObject('memszemetlevon')).Text:='';
           TfrxMemoView(FindObject('memszemetlevonlbl')).Text:='';
          end;
         if sptort.Visible then //tort szemek
          begin
           TfrxMemoView(FindObject('memtort')).Text:=sptort.Value.ToString+' %';
           TfrxMemoView(FindObject('memtorttomeg')).Text:=IntToStr(Round(nyers_tort_szemek_tomege))+' kg';
          end
          else
          begin
           TfrxMemoView(FindObject('memtort')).Text:='';
           TfrxMemoView(FindObject('memtortlbl')).Text:='';
           TfrxMemoView(FindObject('memtorttomeg')).Text:='';
           TfrxMemoView(FindObject('memtorttomeglbl')).Text:='';
          end;
         if sphekto.Visible then
         begin
         if TfrxMemoView(FindObject('memhekto'))<>nil then
          begin
           TfrxMemoView(FindObject('memhekto')).Text:=sphekto.Value.ToString;
          end;
         end
         else
         begin
          if TfrxMemoView(FindObject('memhekto'))<>nil then
          begin
           TfrxMemoView(FindObject('memhekto')).Text:='';
           TfrxMemoView(FindObject('memhektolbl')).Text:='';
          end;
         end;

         TfrxMemoView(FindObject('memsznetto')).Text:=Spsznetto.Value.ToString+' kg';
         TfrxMemoView(FindObject('memegysar')).Text:=termeklist.FieldByName('ar').AsString+' Ft';
         TfrxMemoView(FindObject('memtomlevon')).Text:=Sp_tomeg_levon.Value.ToString+' kg';
         TfrxMemoView(FindObject('memtomlevon_szoveg')).Text:=levonlookup.DisplayValue;
         //csak azon állítsa ami valóban duplex, a szimplám más a neve/példányszámok miatt fontos
         if TfrxReportSummary(FindObject('ReportSummary1'))<>nil then TfrxReportSummary(FindObject('ReportSummary1')).Visible:=duplex_mjegy;
         NezetF.rep_valaszt(aF.frxmerleg,1);
       end;
    end;

    function eazon_letrehozasa:string;
     begin
       Result:=StringReplace(StringReplace(DateTimeToStr(Now), '.', '', [rfReplaceAll]), ':', '', [rfReplaceAll])+IntToStr(spnetto.Value);
     end;

    function mentett_sorsz_lekerese(ea:string):String;
     begin
       with aF.Q2 do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT id,Sorszam from merlegjegy WHERE Eazon='+#39+ea+#39);
          Open();
          result:=FieldByName('Sorszam').AsString;
          ujid:=FieldByName('id').AsInteger;
          Close
        end;
     end;



begin

  if tulajlookup.KeyValue='!' then
  begin
    ShowMessage('A bizonylat kibocsájtót meg kell adni!');
    tulajlookup.SetFocus;
    exit
  end;
  if (partnerlookup.KeyValue='!') and (not (Sender = btnFolytatasos_mentes)) then
  begin
    ShowMessage('A(z) '+StringReplace(lblpartner.Caption,':','t',[rfreplaceall])+' meg kell adni!');
    partnerlookup.SetFocus;
    exit
  end;
  if (partnerlookup2.KeyValue='!') and (not (Sender = btnFolytatasos_mentes)) then
  begin
    ShowMessage('A(z) '+StringReplace(lblpartner2.Caption,':','t',[rfreplaceall])+' meg kell adni!');
    partnerlookup2.SetFocus;
    exit
  end;
  if (termeklookup.KeyValue='!') and (not (Sender = btnFolytatasos_mentes))  then
  begin
    ShowMessage('A terméket meg kell adni!');
    termeklookup.SetFocus;
    exit
  end;
  if (kezelolookup.KeyValue='!') and (not (Sender = btnFolytatasos_mentes)) then
  begin
    ShowMessage('A mérlegkezelõt meg kell adni!');
    kezelolookup.SetFocus;
    exit
  end;
  if (cbxirany.ItemIndex<1) and (not (Sender = btnFolytatasos_mentes)) then
  begin
    ShowMessage('A mérés irányát meg kell adni!');
    cbxirany.SetFocus;
    exit
  end;
  if (not chkrogzitett.Checked) and (not (Sender = btnFolytatasos_mentes)) then
  if ((r11<>r21)and(r11<>r22))or((r12<>r21)and(r12<>r22)) then
  begin
    if MessageDlg('A rendszámok eltérnek. Folytatja?',mtConfirmation,mbYesNo,0)=7 then exit;
  end;
  if (cbxrendszam1.Text='') then
  begin
    ShowMessage('A rendszámot meg kell adni!');
    cbxrendszam1.SetFocus;
    exit
  end;
  if (not chknincspot.Checked) and (cbxrendszam2.Text='') then
  begin
    ShowMessage('A pótkocsi rendszámot meg kell adni!');
    cbxrendszam2.SetFocus;
    exit
  end;

  if ((spBrutto.Value<=0)or(sptara.Value<=0) ) and (not (Sender = btnFolytatasos_mentes)) then
  begin
    ShowMessage('Nincs kiválasztva 2 mérés vagy nincs tára rögzített mérésnél!');
    exit
  end;
  if (taroloklookup.KeyValue='!') and (not (Sender = btnFolytatasos_mentes)) then
  begin
    ShowMessage('A tárolót meg kell adni!');
    taroloklookup.SetFocus;
    exit
  end;

  {
  if (speSorszam.Value=0) and (Hivoszamhasznalat)  then
  begin
    ShowMessage('A sorszám nem lehet nulla!');
    speSorszam.SetFocus;
    speSorszam.SelectAll;
    exit
  end;

  if (Not Folytatas) and (Hivoszamhasznalat) and (af.NyitbeQ.locate('Hivo_sorszam',speSorszam.Value,[])) then
  begin
    ShowMessage('Ilyen sorszám már van!');
    speSorszam.SetFocus;
    speSorszam.SelectAll;
    exit
  end;
  }
  if levonlookup.KeyValue<>'!' then
  if sp_tomeg_levon.Value<=0 then
  begin
    ShowMessage('Adja meg a levonandó tömeget!');
    sp_tomeg_levon.SetFocus;
    Exit
  end;


  sorsz:=af.bizszam(6,'0','merlegjegy',tulajTElotag.AsString,tulajTID.AsInteger);

  try
    szazalek;
  except
    exit;
  end;
 //try
 // szazalek;
 //finally
  if Sender=btnNyomtatas then
  begin
    NezetF.nyomtatva:=false;
    elokeszit;
    if not NezetF.nyomtatva then  exit;
  end;
  if spegysegtomeg.Value=0 then keszmenny:=spsznetto.Value
  else
    if chkkerekites.Checked=True then keszmenny:=Round(spszNetto.Value/spegysegtomeg.Value)
    else keszmenny:=spszNetto.Value/spegysegtomeg.Value;

  egyedi_azonosito:=eazon_letrehozasa;//ez alapján kérem vissza mentés után a sorszámot
  if (not (Sender = btnFolytatasos_mentes)) then tablaneve:='merlegjegy'
  else
  begin
    tablaneve:='nyitbe';
  end;

 with aF.Q2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO '+tablaneve);//merlegjegy');
      SQL.Add('(storno,rendszam,rendszam2,p_id,p_kod,p_nev,p_cim,');
      SQL.Add('termek_id,termek_kod,termek_nev,Termek_afa,termek_ar,');
      SQL.Add('szallitolev,megjegyzes,tomegbe,');
      SQL.Add('tomegki,erkdatum,erkido,tavdatum,tavido,felhasznalo,irany,');
      SQL.Add('brutto,tara,netto,SzNetto,merlegelo,kuj,ktj,eazon,ekaer,');
      SQL.Add('alapnedv,nedv,tisztasag,tortszaz,feherje,olaj,esesszam,hekto,');
      SQL.Add('egysegtomeg,kerekites,kukorica,buzaminoseg,mennyiseg,tarolasi_dij, ');
      SQL.Add('szaritasi_dij,tisztitasi_dij,tarolo_id,tarolo,elso_kezi,masodik_kezi,');
      SQL.Add('tul_id,tul_nev,tul_cim,tul_adoszam,tul_kuj,tul_ktj,tul_elotag,');
      SQL.Add('p2_id,p2_kod,p2_nev,p2_cim,p2_kuj,p2_ktj,levon_szoveg,levon_tomeg,');
      SQL.Add(' ewc,tul_cjsz,szaraz_tort_szemek,kepnev1,kepnev2,kepnev3,kepnev4  ');
      if (Hivoszamhasznalat) and (tablaneve='nyitbe') then  SQL.Add(',Hivo_sorszam ');
      SQL.Add(',betarolasi_dij,kitarolasi_dij,szallitasi_dij');
      SQL.Add(')');
      SQL.Add('VALUES(:storno,:rendszam,:rendszam2,:p_id,:p_kod,:p_nev,:p_cim,');
      SQL.Add(':termek_id,:termek_kod,:termek_nev,:Termek_afa,:termek_ar,');
      SQL.Add(':szallitolev,:megjegyzes,:tomegbe,');
      SQL.Add(':tomegki,:erkdatum,:erkido,:tavdatum,:tavido,:felhasznalo,');
      SQL.Add(':irany,:brutto,:tara,:netto,:SzNetto,:merlegelo,:kuj,:ktj,:eazon,:ekaer,');
      SQL.Add(':alapnedv,:nedv,:tisztasag,:tortszaz,:feherje,:olaj,:esesszam,:hekto,');
      SQL.Add(':egysegtomeg,:kerekites,:kukorica,:buzaminoseg,:mennyiseg,:tarolasi_dij, ');
      SQL.Add(':szaritasi_dij,:tisztitasi_dij,:tarolo_id,:tarolo,:elso_kezi,:masodik_kezi,');
      SQL.Add(':tul_id,:tul_nev,:tul_cim,:tul_adoszam,:tul_kuj,:tul_ktj,:tul_elotag,');
      SQL.Add(':p2_id,:p2_kod,:p2_nev,:p2_cim,:p2_kuj,:p2_ktj,:levon_szoveg,');
      SQL.Add(' :levon_tomeg,:ewc,:tul_cjsz,:szaraz_tort_szemek,:kepnev1,:kepnev2,:kepnev3,:kepnev4 ');
      if (Hivoszamhasznalat) and (tablaneve='nyitbe') then
      begin
        SQL.Add(',:Hivo_sorszam ');
        ParamByName('Hivo_sorszam').AsString:=speSorszam.Text;
      end;
      SQL.Add(',:betarolasi_dij,:kitarolasi_dij,:szallitasi_dij');
      SQL.Add(');');
      {ParamByName('betarolasi_dij').value:=spszNetto.Value*be_tarolasi_dij;
        ParamByName('kitarolasi_dij').value:=spszNetto.Value*ki_tarolasi_dij;
        ParamByName('szallitasi_dij').value:=spszNetto.Value*szallitasi_dij;}
      //ShowMessage(sql.Text);
      //ParamByName('sorszam').AsString:=sorsz;
      ParamByName('storno').AsString:='';
      ParamByName('rendszam').AsString:=cbxrendszam1.Text;
      ParamByName('rendszam2').AsString:=cbxrendszam2.Text;
      ParamByName('p_id').AsInteger:=Partnelist.FieldByName('id').AsInteger;
      ParamByName('p_kod').AsString:=Partnelist.FieldByName('kod').AsString;
      ParamByName('p_nev').AsString:=Partnelist.FieldByName('nev').AsString;
      ParamByName('p_cim').AsString:=Partnelist.FieldByName('cim').AsString;
      ParamByName('termek_id').AsInteger:=termeklist.Fields[0].AsInteger;
      ParamByName('termek_kod').AsString:=termeklist.Fields[1].AsString;
      ParamByName('termek_nev').AsString:=termeklist.Fields[2].AsString;
      ParamByName('termek_afa').value:=termeklist.Fields[6].value;
      ParamByName('termek_ar').value:=termeklist.Fields[5].value;
      ParamByName('szallitolev').AsString:=edszallev.Text;
      ParamByName('megjegyzes').AsString:=edmegjegy.Text;
      ParamByName('merlegelo').AsString:=aF.merlegkezQ.FieldByName('nev').AsString;

      if cbxirany.ItemIndex in [1,2] then

        case cbxirany.Text[1] of
         'B':begin
              ParamByName('tomegbe').AsInteger:=spsznetto.Value;
              ParamByName('tomegki').AsInteger:=0;
             end;
         'K':begin
              ParamByName('tomegki').AsInteger:=spsznetto.Value;
              ParamByName('tomegbe').AsInteger:=0;
             end;
        end
      else
        begin
          ParamByName('tomegbe').AsInteger:=0;
          ParamByName('tomegki').AsInteger:=0;
        end;

      ParamByName('brutto').AsInteger:=spbrutto.Value;
      ParamByName('tara').AsInteger:=sptara.Value;
      ParamByName('netto').AsInteger:=spnetto.Value;
      ParamByName('SZnetto').AsInteger:=spsznetto.Value;
      if lblelsodat.Caption<>'' then
      begin
        ParamByName('erkdatum').AsDate:=StrToDate(lblelsodat.Caption);
        ParamByName('erkido').AsTime:=StrToTime(lblelsoido.Caption);
      end
      else
      begin
        ParamByName('erkdatum').AsDate:=Date;
        ParamByName('erkido').AsTime:=Time;
        lblelsodat.Caption:=DateToStr(Date);
        lblelsoido.Caption:=TimeToStr(Time);
      end;
      //ha nem rogzitett csak akkor mentem a masodik meres idejet
      if not chkrogzitett.checked then
       begin
         if lblmasdat.Caption<>'' then
         begin
           ParamByName('tavdatum').AsDate:=StrToDate(lblmasdat.Caption);
           ParamByName('tavido').AsTime:=StrToTime(lblmasido.Caption);
         end
         else
         begin
           ParamByName('tavdatum').AsDate:=Date;
           ParamByName('tavido').AsTime:=Time;
         end;
       end
       else
       begin
         ParamByName('tavdatum').AsDate:=StrToDate(lblelsodat.Caption);
         ParamByName('tavido').AsTime:=StrToTime(lblelsoido.Caption);
       end;

      ParamByName('felhasznalo').AsString:=felhnev;
      ParamByName('irany').AsString:=cbxirany.Text;
      ParamByName('kuj').AsString:=Partnelist.FieldByName('kuj').AsString;
      ParamByName('ktj').AsString:=Partnelist.FieldByName('ktj').AsString;
      ParamByName('eazon').AsString:=egyedi_azonosito;
      ParamByName('ekaer').AsString:=edekaer.Text;
      //ParamByName('ewc').AsString:='';
      ParamByName('alapnedv').value:=spalapnedv.Value;
      ParamByName('nedv').value:=spnedv.Value;
      ParamByName('tisztasag').value:=spTisztasag.Value;
      ParamByName('tortszaz').value:=sptort.Value;
      ParamByName('feherje').value:=spfeherje.Value;
      ParamByName('olaj').value:=spOlaj.Value;
      ParamByName('esesszam').value:=speses.Value;
      ParamByName('hekto').value:=sphekto.Value;
      ParamByName('egysegtomeg').value:=spegysegtomeg.Value;
      ParamByName('kerekites').AsBoolean:=chkkerekites.Checked;
      ParamByName('kukorica').AsBoolean:=chkkuk.checked;
      ParamByName('buzaminoseg').AsString:=cbxbuzaminoseg.Text;
      //mennyiség kiszámitása még kell
      keszmenny:=0;
      tort_keszmenny:=0;
      if (spEgysegtomeg.Value=1) or (spEgysegtomeg.Value=0) then
       begin
        keszmenny:=spsznetto.Value;
        tort_keszmenny:=szaritott_tort_szemek_tomege;
       end
      else
       begin

        if chkkerekites.Checked then
         begin
          keszmenny:=Round(spszNetto.Value/spEgysegtomeg.Value);
          tort_keszmenny:=Round(szaritott_tort_szemek_tomege/spEgysegtomeg.Value);
         end
        else
         begin
          keszmenny:=spszNetto.Value/spEgysegtomeg.Value;
          tort_keszmenny:=szaritott_tort_szemek_tomege/spEgysegtomeg.Value;
         end;
       end;

      ParamByName('mennyiseg').AsFloat:=keszmenny;
      ParamByName('szaraz_tort_szemek').AsFloat:=tort_keszmenny;
       //dijak
      if cbxirany.ItemIndex in [1,2] then
      begin
        ParamByName('tarolasi_dij').AsFloat:=spszNetto.Value*tarolasi_dij;
        ParamByName('szaritasi_dij').AsFloat:=spnetto.Value*(spnedv.Value-spalapnedv.Value)*szaritasi_dij;
        ParamByName('tisztitasi_dij').AsFloat:=spnetto.Value*tisztitasi_dij;
        //ParamByName('betarolasi_dij').AsFloat:=spszNetto.Value*be_tarolasi_dij;
       // ParamByName('kitarolasi_dij').AsFloat:=spszNetto.Value*ki_tarolasi_dij;
        ParamByName('szallitasi_dij').AsFloat:=spszNetto.Value*szallitasi_dij;
        case cbxirany.Text[1] of
         'B':begin
              ParamByName('betarolasi_dij').AsFloat:=spszNetto.Value*be_tarolasi_dij;
              //ShowMessage(VarToStr(spszNetto.Value*be_tarolasi_dij));
              ParamByName('kitarolasi_dij').AsFloat:=0;
             end;
         'K':begin
              ParamByName('betarolasi_dij').AsFloat:=0;
              ParamByName('kitarolasi_dij').AsFloat:=spszNetto.Value*ki_tarolasi_dij;
             end;
        end
      end
      else
        begin
          ParamByName('tarolasi_dij').AsFloat:=0;
          ParamByName('szaritasi_dij').AsFloat:=0;
          ParamByName('tisztitasi_dij').AsFloat:=0;
          ParamByName('betarolasi_dij').AsFloat:=0;
          ParamByName('kitarolasi_dij').AsFloat:=0;
          ParamByName('szallitasi_dij').AsFloat:=0;
        end;
      if taroloklookup.KeyValue<>'!' then ParamByName('tarolo_id').AsInteger:=taroloklookup.KeyValue
      else ParamByName('tarolo_id').AsInteger:=-1;

      ParamByName('tarolo').AsString:=taroloklookup.DisplayValue;
      ParamByName('elso_kezi').AsBoolean:=chkelso_kezi.checked;
      ParamByName('masodik_kezi').AsBoolean:=chkmasodik_kezi.checked;
      ParamByName('tul_id').AsInteger:=tulajlookup.KeyValue;
      ParamByName('tul_nev').Asstring:=tulajTNev.AsString;
      ParamByName('tul_cim').Asstring:=tulajTcim.AsString;
      ParamByName('tul_adoszam').Asstring:=tulajTadoszam.AsString;
      ParamByName('tul_kuj').Asstring:=tulajTkuj.AsString;
      ParamByName('tul_ktj').Asstring:=tulajTktj.AsString;
      ParamByName('tul_elotag').Asstring:=tulajTelotag.AsString;
      ParamByName('p2_id').AsInteger:=Partnerlist2.FieldByName('id').AsInteger;
      ParamByName('p2_kod').AsString:=Partnerlist2.FieldByName('kod').AsString;
      ParamByName('p2_nev').AsString:=Partnerlist2.FieldByName('nev').AsString;
      ParamByName('p2_cim').AsString:=Partnerlist2.FieldByName('cim').AsString;;
      ParamByName('p2_kuj').AsString:=Partnerlist2.FieldByName('kuj').AsString;
      ParamByName('p2_ktj').AsString:=Partnerlist2.FieldByName('ktj').AsString;
      ParamByName('levon_szoveg').AsString:=levonlookup.DisplayValue;
      ParamByName('levon_tomeg').AsInteger:=sp_tomeg_levon.Value;
      ParamByName('ewc').AsString:=termeklist.Fields[20].AsString;
      ParamByName('tul_cjsz').Asstring:=tulajTcjsz.AsString;
      ParamByName('kepnev1').AsString:=kepek_tomb[1];
      ParamByName('kepnev2').AsString:=kepek_tomb[2];
      ParamByName('kepnev3').AsString:=kepek_tomb[3];
      ParamByName('kepnev4').AsString:=kepek_tomb[4];
      ExecSQL;

      if Folytatas then
      with aF.Q2 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('DELETE FROM nyitbe');
        SQL.Add('WHERE eazon= '+#39+AF.NyitbeQ.FieldByName('Eazon').AsString+#39);
        ExecSQL;
      end;
      //keszletezes
      if Sender <>btnFolytatasos_mentes then
        case cbxirany.Text[1] of
         'B':begin
              aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup2.KeyValue,0,keszmenny);
              //tört szemek készletezése
              if sptort.Value>0 then
              aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup2.KeyValue,1,tort_keszmenny);
             end;
         'K':begin
              aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup.KeyValue,0,-1* keszmenny);
              //tört szemek készletezése
              if sptort.Value>0 then
              aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup.KeyValue,1,-1*tort_keszmenny);
             end;
        end;
      sorsz:=mentett_sorsz_lekerese(egyedi_azonosito);
      if Sender=btnNyomtatas then
      begin
        psz:=0;
        with NezetF.valasztott do//frissiti a bizszamot
         begin
            TfrxMemoView(FindObject('membizszam')).Text:=sorsz;
            for p := 1 to PrintOptions.Copies do
             begin
               TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(p+psz)+'. példány';
               if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(p+1+psz)+'. példány';
               PrepareReport(true);
               Print;
               if duplex_mjegy then Inc(psz)
             end;
             aF.psz_plusz(ujid,PrintOptions.Copies);
             Preview:=nil;
         end;
       // aF.PDFExportmjegy.FileName:=pdfmappa+'\'+StringReplace(sorsz,'/','_',[rfReplaceAll]) +'.pdf';
       // aF.frxmerleg.Export(aF.PDFExportmjegy);
      end;
    end;
    with jvmemparos do
     begin
       First;
       while not eof do
       begin
        if FieldByName('parosit').AsBoolean=true then
         begin
          aF.Q2.Close;
          aF.Q2.SQL.Clear;
          aF.Q2.SQL.Add('UPDATE forgalom SET parositott=1,mjegy='+#39+sorsz+#39);
          aF.Q2.SQL.Add(' WHERE id='+IntToStr(Fields[0].AsInteger));
          aF.Q2.ExecSQL;
         end;
         Next;
       end;
     end;
     //if cbxktip.ItemIndex=0 then aF.soapXML_letrehozasa(ujid);
     if Sender =btnFolytatasos_mentes then Close;

     aF.ForgalomQ.Refresh;
     masol(0,0,true);
     rendszam_combok;
     uresre;
     mentes_volt:=true;
     if ideiglenes_latszik then
     begin
       Af.NyitbeQ.Refresh;
       Close;
     end;

end;



procedure TMjegyF.btnMeresClick(Sender: TObject);
var tf:textfile;
    fnev,kezi:string;
begin
  Meres_MerlegjegyenF.lblelsodat.Caption:=lblelsodat.Caption;
  Meres_MerlegjegyenF.lblelsoido.Caption:=lblelsoido.Caption;
  Meres_MerlegjegyenF.lblmasdat.Caption:=lblmasdat.Caption;
  Meres_MerlegjegyenF.lblmasido.Caption:=lblmasido.Caption;
  Meres_MerlegjegyenF.chkelso_kezi.Checked:=chkelso_kezi.Checked;
  Meres_MerlegjegyenF.chkMasodik_kezi.Checked:=chkMasodik_kezi.Checked;
  Meres_MerlegjegyenF.lblTomeg1.Caption:=lblTomeg1.Caption;
  Meres_MerlegjegyenF.lblTomeg2.Caption:=lblTomeg2.Caption;
  Meres_MerlegjegyenF.ShowModal;
  if Meres_MerlegjegyenF.Mert_eredmeny>0 then
  begin
    case Meres_MerlegjegyenF.rgMeresszama.ItemIndex of
      0 :
          begin
            lblTomeg1.Caption:=IntToStr( Meres_MerlegjegyenF.Mert_eredmeny);
            lblelsodat.Caption:=DateToStr(Date);
            lblelsoido.Caption:=TimeToStr(Time);
            chkelso_kezi.Checked:= Meres_MerlegjegyenF.chkKezimeres.Checked;
            if cbxirany.ItemIndex=1 then spBrutto.Value:=Meres_MerlegjegyenF.Mert_eredmeny
              else if cbxirany.ItemIndex=2 then  spTara.Value:=Meres_MerlegjegyenF.Mert_eredmeny;
            if chkRogzitett.Checked then spTara.Value:=af.tara(cbxrendszam1.text);
           end;

      1 :
          begin
            lblTomeg2.Caption:=IntToStr( Meres_MerlegjegyenF.Mert_eredmeny);
            lblmasdat.Caption:=DateToStr(Date);
            lblmasido.Caption:=TimeToStr(Time);
            chkmasodik_kezi.Checked:= Meres_MerlegjegyenF.chkKezimeres.Checked;
            if cbxirany.ItemIndex=1 then spTara.Value:=Meres_MerlegjegyenF.Mert_eredmeny
            else if cbxirany.ItemIndex=2 then  spBrutto.Value:=Meres_MerlegjegyenF.Mert_eredmeny;
          end;
    end;

    fnev:=ExtractFileDir(ExtractFilePath(application.exename))+'\LOG\m'+af.datum_szoveg(Now,false)+'.txt';
    Assignfile(tf,fnev);
    if not FileExists(fnev) then
    begin
      Rewrite(tf);
      CloseFile(tf);
    end;
    if Meres_MerlegjegyenF.chkKezimeres.Checked then kezi:='Kézi' else kezi:='';

    Append(tf);
    Writeln(tf,DateToStr(Date)+#9+TimeToStr(Time)+#9+cbxRendszam1.Text+#9+IntToStr( Meres_MerlegjegyenF.Mert_eredmeny)+#9+cbxRendszam2.Text+#9+kezi);
    CloseFile(tf);
    spnetto.Value:=spBrutto.Value-spTara.Value;
    szazalek;
  end;
end;

procedure TMjegyF.pnlAlsoClick(Sender: TObject);
begin
//
end;

procedure TMjegyF.partnerlookup2Change(Sender: TObject);
begin
 if not Visible then exit;
 if ActiveControl.Name='partnerlookup2' then
 if chkpartnerekegy.Checked then partnerlookup.KeyValue:=partnerlookup2.KeyValue;
end;

procedure TMjegyF.partnerlookupChange(Sender: TObject);
begin
 if not Visible then exit;
 if ActiveControl.Name='partnerlookup' then
 if chkpartnerekegy.Checked then partnerlookup2.KeyValue:=partnerlookup.KeyValue;
end;

procedure TMjegyF.rendszam_combok;
begin
  af.rendszam_combok(cbxrendszam1);
  af.rendszam_combok(cbxrendszam2);
end;

procedure TMjegyF.spnedvChange(Sender: TObject);
begin
  szazalek;
end;

procedure TMjegyF.spnedvExit(Sender: TObject);
begin
  szazalek
end;

procedure TMjegyF.sptisztasagChange(Sender: TObject);
begin
  szazalek;
end;

procedure TMjegyF.sp_tomeg_levonChange(Sender: TObject);
begin
 szazalek
end;

procedure TMjegyF.sp_tomeg_levonExit(Sender: TObject);
begin
 //
end;

procedure TMjegyF.sp_tomeg_levonKeyPress(Sender: TObject; var Key: Char);
begin
//if Key=#13 then szazalek;
end;

procedure TMjegyF.szazalek;
var tisztitott_tomeg,sze,szu,levsz,tortszem_szazalek,tortszem_tomeg:Extended;
begin
 try
  AF.fo_szazalek(SpBrutto.Value, Sptara.value,Sptisztasag.Value,SpNedv.Value,
                 SpAlapnedv.Value, Sptort.Value,sp_tomeg_levon.Value,chkkuk.Checked);
 finally
  spSznetto.Value:=Round(szaritott_netto_tomege);
 end;

  exit;
 { nedvesseg:='0';
  tisztasag:='0';
  nedvelvon:='0';

  br:=0;tr:=0;aned:=0;ned:=0;tisz:=0;tortszem_szazalek:=0;tisztitott_tomeg:=0;sze:=0;szu:=0;levsz:=0;
  nedvesseg:='';tisztasag:='';ttom:=0;
  br := SpBrutto.Value;
  tr := Sptara.value;
  if spnedv.Value>spalapnedv.Value then
   begin
    aned := SpAlapnedv.Value;
    ned := SpNedv.Value;
   end
   else
   begin
    aned := SpAlapnedv.Value;
    ned := SpAlapnedv.Value;
   end;
  tisz := Sptisztasag.Value;
  tortszem_szazalek:= Sptort.Value;
  if sp_tomeg_levon.Text='' then sp_tomeg_levon.Value:=0;
  
  nedvesseg := IntToStr(round((br-tr)*((ned-aned)/100.0)));
  tisztasag := IntToStr(round((br-tr)*((tisz)/100.0)));
  //tort szemek tomege
  tortszem_tomeg:=(round((br-tr)*(tortszem_szazalek/100.0)));
  ttom:=tortszem_tomeg;//kell a mentésnél!
  //Öcsi
  tisztitott_tomeg:=round((br-tr-(round((br-tr)*((tisz+tortszem_szazalek)/100.0)))));

  sze:=1-((tisz+tortszem_szazalek+ned)/100);
  szu:=1-((tisz+tortszem_szazalek+aned)/100);
  levsz:=sze/szu;
  if chkkuk.Checked then
  begin
    //Sznetto=nettó*(1-Tisztaság)*(1-Nedvesség)/(1-Alapnedvesség)
     spSznetto.Value :=Round(tisztitott_tomeg*(1-ned/100)/(1-aned/100))-sp_tomeg_levon.Value;
     nedvelvon:=FloatToStr(Round(tisztitott_tomeg-spSznetto.Value));

    //Sznetto=nettó*(1-Tisztaság)*(1-Tisztaság-Nedvesség)/(1-Tisztaság-Alapnedvesség)
    //Spsznetto.Value :=Round(levsz*tisztitott_tomeg)-sp_tomeg_levon.Value;
    //nedvelvon:=FloatToStr(Round((1-levsz)*tisztitott_tomeg));
  end
  else
  begin
    Spsznetto.Value := round(tisztitott_tomeg-(tisztitott_tomeg*(ned-aned))/100.0)-sp_tomeg_levon.Value;
    nedvelvon:=FloatToStr(Round((ned-aned)*tisztitott_tomeg/100));
  end;

  if nedvesseg='' then nedvesseg:='0';
  if nedvelvon='' then nedvelvon:='0';
  if tisztasag='' then tisztasag:='0';  }
end;

procedure TMjegyF.termeklookupCloseUp(Sender: TObject);
var i:Integer;
   procedure term_ures;
   var k:Integer;
    begin
      for k := 0 to componentcount-1 do
       if (Components[k].Tag>0) then (Components[k] as Tcontrol).visible:=false;
      spegysegtomeg.Value:=1;
      spegysegtomeg.Visible:=spegysegtomeg.Value<>1;
      lblegysegtomeg.Visible:=spegysegtomeg.Visible;
      spalapnedv.Value:=0;
      chkkuk.Checked:=False;
      chkkuk.Visible:=chkkuk.Checked;
      chkkerekites.Checked:=False;
      chkkerekites.Visible:=chkkerekites.Checked;
    end;

begin
 if not pnlmezgaz.visible then  exit;
 term_ures;
 if termeklookup.KeyValue='!' then Exit;
 for I := 0 to componentcount-1 do
  if (Components[i].Tag>0) then (Components[i] as Tcontrol).visible:=termeklist.Fields[Components[i].Tag].AsBoolean;

  spegysegtomeg.Value:=termeklistegysegtomeg.Value;
  spegysegtomeg.Visible:=spegysegtomeg.Value<>1;
  lblegysegtomeg.Visible:=spegysegtomeg.Visible;
  spalapnedv.Value:=termeklistalapnedv.Value;
  spnedv.Value:=termeklistalapnedv.Value;
  chkkuk.Checked:=termeklistkukorica.AsBoolean;
  chkkuk.Visible:=chkkuk.Checked;
  chkkerekites.Checked:=termeklistkerekites.AsBoolean;
  chkkerekites.Visible:=chkkerekites.Checked;
  szazalek
end;

procedure TMjegyF.tsOsszeskepResize(Sender: TObject);
begin
  pnlKepBal.Width:=Round(tsOsszeskep.Width/2);
  pnlKepBalFelso.Height:=Round(tsOsszeskep.Height/2);
  pnlKepJobbFelso.Height:=Round(tsOsszeskep.Height/2);
  OKep1.Height:=Round(tsOsszeskep.Height/2);
  OKep1.Width:=OKep1.Height*2;
  OKep2.Height:=Round(tsOsszeskep.Height/2);
  OKep2.Width:=OKep2.Height*2;
  OKep3.Height:=Round(tsOsszeskep.Height/2);
  OKep3.Width:=OKep3.Height*2;
  OKep4.Height:=Round(tsOsszeskep.Height/2);
  OKep4.Width:=OKep4.Height*2;
end;

procedure TMjegyF.uresre;
begin
  lblpartner.Caption:='Partner:';
  partnerlookup.KeyValue:='!';
  lblpartner2.Caption:='Partner 2:';
  partnerlookup2.KeyValue:='!';
  termeklookup.KeyValue:='!';
  termeklookupCloseUp(Self);
  cbxirany.ItemIndex:=alap_irany;
  taroloklookup.KeyValue:=alap_tarolo;
  cbxiranyChange(Self);
  case cbxirany.ItemIndex of
   1:begin //beszállítás
      if alap_atvevo<>0 then  partnerlookup2.keyvalue:=alap_atvevo;
     end;
   2:begin //kiszállítás
      if alap_elado<>0 then  partnerlookup.keyvalue:=alap_elado;
     end;
  end;
  edszallev.Clear;
  cbxrendszam1.ItemIndex:=-1;
  cbxrendszam2.ItemIndex:=-1;
  lblelsodat.Caption:='';
  lblelsoido.Caption:='';
  lblmasdat.Caption:='';
  lblmasido.Caption:='';
  edekaer.Clear;
  spBrutto.Value:=0;
  sptara.Value:=0;
  spnetto.Value:=0;
  Spsznetto.Value:=0;
  edmegjegy.Clear;
  spnedv.Value:=0;
  spolaj.Value:=0;
  sptisztasag.Value:=0;
  sphekto.Value:=0;
  speses.Value:=0;
  sptort.Value:=0;
  cbxbuzaminoseg.ItemIndex:=0;
  tulajT.Open();
  if tulajT.RecordCount=1 then //ha csak egy tulaj van
   begin
     tulajlookup.visible:=False;
     tulajlookup.KeyValue:=tulajTID.AsInteger;
   end
   else
  begin
     if tulajT.RecordCount=0 then //ha nincs még tulaj
      begin
       tulajlookup.KeyValue:='!';
       tulajlookup.visible:=false;
      end
      else
      begin
       tulajlookup.KeyValue:='!';
       tulajlookup.visible:=true;
      end;
  end;
  levonlookup.KeyValue:='!';
  levonlookupChange(self);
end;

end.
