unit MermodU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvSpin,
  Vcl.StdCtrls, Vcl.Samples.Spin, JvExControls, JvDBLookup, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script,frxClass,System.DateUtils;

type
  TMermodF = class(TForm)
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
    lbl_tomeg_levon: TLabel;
    cbxirany: TComboBox;
    btnMentes: TButton;
    partnerlookup: TJvDBLookupCombo;
    edszallev: TEdit;
    spBrutto: TSpinEdit;
    sptara: TSpinEdit;
    spnetto: TSpinEdit;
    edmegjegy: TEdit;
    Button1: TButton;
    btn1: TButton;
    kezelolookup: TJvDBLookupCombo;
    Button2: TButton;
    cbxktip: TComboBox;
    chknincspot: TCheckBox;
    edekaer: TEdit;
    cbxrendszam1: TComboBox;
    cbxrendszam2: TComboBox;
    chkrogzitett: TCheckBox;
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
    Button3: TButton;
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
    btnlevon_szoveg: TButton;
    tulajlookup: TJvDBLookupCombo;
    lblsorszam: TLabel;
    TempQ: TFDQuery;
    temp_script: TFDScript;
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    Partnerlist2Ds: TDataSource;
    Partnerlist2: TFDQuery;
    termeklist: TFDQuery;
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
    termeklistewc: TWideStringField;
    termeklistDs: TDataSource;
    levon_szovegT: TFDTable;
    levon_szovegTID: TFDAutoIncField;
    levon_szovegTSzoveg: TWideStringField;
    levon_szovegDs: TDataSource;
    tulajT: TFDTable;
    tulajTID: TFDAutoIncField;
    tulajTNev: TWideStringField;
    tulajTCim: TWideStringField;
    tulajTAdoszam: TWideStringField;
    tulajTkuj: TWideStringField;
    tulajTktj: TWideStringField;
    tulajTElotag: TWideStringField;
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
    tulajTEmail: TWideStringField;
    tulajTTelefon: TWideStringField;
    tulajTAjto: TWideStringField;
    tulajTcjsz: TWideStringField;
    tulajDs: TDataSource;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    Button4: TButton;
    Partnerlist3: TFDQuery;
    Partnerlist3Ds: TDataSource;
    lblfuvarozo: TLabel;
    cbfuvarozo: TJvDBLookupCombo;
    lblkepnev1: TLabel;
    lblkepnev2: TLabel;
    lblkepnev3: TLabel;
    lblkepnev4: TLabel;
    lblszabalyos: TLabel;
    lblszar: TLabel;
    cbxszar: TComboBox;
    szarQ: TFDQuery;
    spsiker: TJvSpinEdit;
    Label16: TLabel;
    termeklistb_siker: TBooleanField;
    procedure cbxiranyChange(Sender: TObject);
    procedure btnTaramegadasClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure termeklookupCloseUp(Sender: TObject);
    procedure cbxrendszam1Change(Sender: TObject);
    procedure levonlookupChange(Sender: TObject);
    procedure btnekaerClick(Sender: TObject);
    procedure btnlevon_szovegClick(Sender: TObject);
    procedure partnerlookup2Change(Sender: TObject);
    procedure partnerlookupChange(Sender: TObject);
    procedure spnedvChange(Sender: TObject);
    procedure btnMentesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure rendszam_combok;
    procedure szazalek;
    procedure temp_tabla_torlese;
  public
    { Public declarations }
    procedure fo(ideje:Integer);
  end;

var
  MermodF: TMermodF;
  brutto,tara,netto,sznetto:integer;
  br,tr,aned,ned,tisz:single;
  nedvesseg,tisztasag,nedvelvon: string;
  ttom:Real;
  Temp_tabla_neve: String;
  regi_ar,akt_ar,mod_ar:Extended;
implementation
  uses AU,RendszamokU,TermekekU,EkaerU, levon_szovegekU,NezetU;
{$R *.dfm}

{ TMermodF }

procedure TMermodF.btn1Click(Sender: TObject);
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
try
 TermekekF.ShowModal
finally
 termeklist.Refresh;
 term_ures;
 if termeklookup.KeyValue<>'!' then
  begin
   for I := 0 to componentcount-1 do
    if (Components[i].Tag>0) then (Components[i] as Tcontrol).visible:=termeklist.Fields[Components[i].Tag].AsBoolean;

    spegysegtomeg.Value:=termeklistegysegtomeg.Value;
    spegysegtomeg.Visible:=spegysegtomeg.Value<>1;
    lblegysegtomeg.Visible:=spegysegtomeg.Visible;
    spalapnedv.Value:=termeklistalapnedv.Value;
    //spnedv.Value:=termeklistalapnedv.Value;
    chkkuk.Checked:=termeklistkukorica.AsBoolean;
    chkkuk.Visible:=chkkuk.Checked;
    chkkerekites.Checked:=termeklistkerekites.AsBoolean;
    chkkerekites.Visible:=chkkerekites.Checked;
    akt_ar:=termeklistar.AsFloat;
    szazalek;
  end;
end;

end;

procedure TMermodF.btnekaerClick(Sender: TObject);
begin
if tulajlookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsBizonylatKibocsjtotMegKellAdni'));
    exit
  end;
 if partnerlookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsAz')+StringReplace(lblpartner.Caption,':','t',[rfreplaceall])+af.ford('rsMegKellAdni'));
    exit
  end;
 if partnerlookup2.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsAz')+StringReplace(lblpartner2.Caption,':','t',[rfreplaceall])+af.ford('rsMegKellAdni'));
    exit
  end;
 if termeklookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsTermeketMegKellAdni'));
    exit
  end;
 if cbxirany.ItemIndex<1 then
  begin
    ShowMessage(af.ford('rsMeresIranyatMegKellAdni'));
    exit
  end;
 if (cbxrendszam1.Text=''){or(cbxrendszam2.Text='')} then
  begin
    ShowMessage(af.ford('rsRendszamotMegKellAdni'));
    exit
  end;
 if (spBrutto.Value<=0)or(sptara.Value<=0) then
  begin
    ShowMessage(af.ford('rsNincsKivalasztvaKetMeres'));
    exit
  end;
 EkaerF.fo;
end;

procedure TMermodF.btnlevon_szovegClick(Sender: TObject);
begin
 try
   levon_szovegekF.ShowModal
 finally
   levon_szovegT.Close;
   levon_szovegT.open;
 end;
end;

procedure TMermodF.btnMentesClick(Sender: TObject);
var sorsz,pcime,egyedi,paramok:String;
    ujid,p,psz,j:integer;
    keszmenny,tort_keszmenny:Extended;

procedure elokeszit;
   begin
    try
     if not Clean_way then AF.merlegjegy_tipus_betoltese//azért kell mindig betölteni hogy a cím jó legyen (ha esetleg stornóztak)
     else AF.merlegjegy_tipus_betoltese_clean(UpperCase(Copy(cbxIrany.Text,1,2)));
    finally
      af.merlegjegy_mezgaz;//mezõgazdasági
      AF.merlegjegy_tomeglevonas;// tömeg levonás
      Mjegy_nyom_rec.mjegy_rec_nyom_ures;  //üresre teszem mindig
    end;
     while Mjegy_nyom_rec=nil do Sleep(200);

     with Mjegy_nyom_rec do
      begin
       Id:=0;
       Mjegysorszam:=sorsz;
       Psz :=1;
       Storno:=False;
       Tulaj_nev:=tulajTNev.AsString;
       Tulaj_cime:=tulajTCim.AsString;
       Tulaj_adosz:=tulajTAdoszam.AsString;
       Tulaj_cjsz:=tulajTcjsz.AsString;
       Tulaj_telefon:=tulajTTelefon.AsString;
       Partner1_felirat:=lblpartner.Caption;
       Partner1_nev:=Partnelist.FieldByName('nev').AsString;
       Partner1_cim:=Partnelist.FieldByName('cim').AsString;
       Partner2_felirat:=lblpartner2.Caption;
       Partner2_nev:=Partnerlist2.FieldByName('nev').AsString;
       Partner2_cim:=Partnerlist2.FieldByName('cim').AsString;;
       Partner3_felirat:='Fuvarozó';
       Partner3_nev:=Partnerlist3.FieldByName('nev').AsString;
       Partner3_cim:=Partnerlist3.FieldByName('cim').AsString;
       Ekaer:=edekaer.Text;
       Szallev:=edszallev.Text;
       Szarmazasi_hely:=cbxszar.Text;
       Megjegyzes:=edmegjegy.Text;
       Rendszam:=cbxrendszam1.text+' '+cbxrendszam2.text;
       Erkdatum:=StrToDate(lblelsodat.Caption);
       Erkido:=StrToTime(lblelsoido.Caption);
       if not chkrogzitett.checked then
        begin
         Tavdatum:=StrToDate(lblmasdat.Caption);;
         Tavido:=StrToTime(lblmasido.Caption);
        end;
       Irany:=cbxIrany.Text;
       if (not Clean_way) or (cbxIrany.ItemIndex=0) then
        begin
          Termek_kod:=termeklist.FieldByName('kod').AsString;
          Termek_nev:=termeklist.FieldByName('nev').AsString;
        end
       else
        begin
          case cbxIrany.Text[1] of
           'B' : begin
                   Termek_kod:=termeklist.FieldByName('ewc').AsString;
                   Termek_nev:=termeklist.FieldByName('nev').AsString;
                 end;
           'K' : begin
                   Termek_kod:=termeklist.FieldByName('itj').AsString;
                   Termek_nev:=termeklist.FieldByName('nev').AsString;
                 end;
          end;
        end;
       Merlegkezelo:='';
       Nedvesseg_latszik:=spnedv.Visible;
       Alapnedv:=spalapnedv.Value.ToString+' %';
       Nedv:=spnedv.Value.ToString+' %';
       Nedvlevon:=IntToStr(Round(nedvesseg_vesztes_tomege))+' kg';
       Tisztasag_latszik:=sptisztasag.Visible;
       Tisztasag:=sptisztasag.Value.ToString+' %';
       Szemet_levon:=IntToStr(Round(szemet_tomeg))+' kg';
       Tort_latszik:=sptort.Visible;
       Tort:=sptort.Value.ToString+' %';
       Tort_tomeg:=IntToStr(Round(nyers_tort_szemek_tomege))+' kg';
       Hekto_latszik:=sphekto.Visible;
       Hekto:=sphekto.Value.ToString;
       Brutto:=spBrutto.Value.ToString+' kg';
       Tara:=sptara.Value.ToString+' kg';
       Sz_netto:=Spsznetto.Value.ToString+' kg';
       Netto:=spnetto.Value.ToString+' kg';
       Termek_ar:=mod_ar.ToString+' Ft';
       Tomeg_levon_ny:=Sp_tomeg_levon.Value.ToString+' kg';
       Tomeg_levon_szoveg:=levonlookup.DisplayValue;
       Siker_latszik:=spsiker.Visible;
       Siker:=spSiker.Value.ToString+' %';
       Tisztitasi_dij_rec:=IntToStr(Round(akt_tiszt_dij))+' -Ft';
       Szaritasi_dij_rec:=IntToStr(Round(akt_szar_dij))+' -Ft';
      end;

//     with aF.frxmerleg do
//       begin
//         TfrxMemoView(FindObject('frxpsz')).Text:='1. példány';
//         if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:='2. példány';
//         if edekaer.Text<>'' then
//          begin
//           TfrxMemoView(FindObject('frxekaer')).Text:=edekaer.Text;
//           TfrxMemoView(FindObject('frxekaerlbl')).Text:='EKÁER:';
//          end
//          else
//          begin
//           TfrxMemoView(FindObject('frxekaer')).Text:='';
//           TfrxMemoView(FindObject('frxekaerlbl')).Text:='';
//          end;
//
//         TfrxMemoView(FindObject('memtulaj')).Text:=tulajTNev.AsString;
//         TfrxMemoView(FindObject('memtulajcime')).Text:=tulajTcim.AsString;
//         if TfrxMemoView(FindObject('memtuladosz'))<>nil then TfrxMemoView(FindObject('memtuladosz')).Text:=tulajTadoszam.AsString;
//         if TfrxMemoView(FindObject('memtulcjsz'))<>nil then TfrxMemoView(FindObject('memtulcjsz')).Text:=tulajTcjsz.AsString;
//         if TfrxMemoView(FindObject('memTelefon'))<>nil then TfrxMemoView(FindObject('memTelefon')).Text:=tulajTTelefon.AsString;
//         if TfrxMemoView(FindObject('memmerlegtipusa'))<>nil then TfrxMemoView(FindObject('memmerlegtipusa')).Text:=merleg_neve;
//         TfrxMemoView(FindObject('mempartner')).Text:=lblpartner.Caption;
//         TfrxMemoView(FindObject('mempartnerneve')).Text:=Partnelist.FieldByName('nev').AsString;
//         TfrxMemoView(FindObject('mempartnercime')).Text:=Partnelist.FieldByName('cim').AsString;//pcime;
//         TfrxMemoView(FindObject('mempartner2')).Text:=lblpartner2.Caption;
//         TfrxMemoView(FindObject('mempartnerneve2')).Text:=Partnerlist2.FieldByName('nev').AsString;
//         TfrxMemoView(FindObject('mempartnercime2')).Text:=Partnerlist2.FieldByName('cim').AsString;
//         TfrxMemoView(FindObject('memelsoido')).Text:=lblelsodat.Caption+' '+lblelsoido.Caption;
//         if not chkrogzitett.checked then
//          begin
//           TfrxMemoView(FindObject('memmasodikido')).Text:=lblmasdat.Caption+' '+lblmasido.Caption;
//          end
//          else
//          begin
//           TfrxMemoView(FindObject('memmasodikido')).text:='';
//          end;
//         TfrxMemoView(FindObject('membizszam')).Text:=sorsz;
//         TfrxMemoView(FindObject('memrendszamok')).Text:=cbxrendszam1.text+' '+cbxrendszam2.text;
//         TfrxMemoView(FindObject('membrutto')).Text:=spBrutto.Value.ToString+' kg';
//         TfrxMemoView(FindObject('memtara')).Text:=sptara.Value.ToString+' kg';
//         TfrxMemoView(FindObject('memnetto')).Text:=spnetto.Value.ToString+' kg';
//         TfrxMemoView(FindObject('memirany')).Text:=cbxirany.Text;
//         TfrxMemoView(FindObject('memmegjegy')).Text:=edmegjegy.Text;
//         TfrxMemoView(FindObject('memtermkod')).Text:=termeklist.FieldByName('kod').AsString;
//         TfrxMemoView(FindObject('memtermnev')).Text:=termeklist.FieldByName('nev').AsString;
//         //TfrxMemoView(FindObject('memmerlegkezelo')).Text:=aF.merlegkezQ.FieldByName('nev').AsString;
//         //TfrxMemoView(FindObject('frxkuj')).Text:=tulajTkuj.AsString;
//         //TfrxMemoView(FindObject('frxktj')).Text:=tulajTktj.AsString;
//         //TfrxMemoView(FindObject('frxpartnerkuj')).Text:=Partnelist.FieldByName('kuj').AsString;
//         //TfrxMemoView(FindObject('frxpartnerktj')).Text:=Partnelist.FieldByName('ktj').AsString;
//         TfrxMemoView(FindObject('memszallev')).Text:=edszallev.Text;
//         //ewc
//         if termeklist.FieldByName('ewc').AsString<>'' then
//          begin
//           TfrxMemoView(FindObject('memewc')).Text:=termeklist.FieldByName('ewc').AsString;
//          end
//         else
//         begin
//           TfrxMemoView(FindObject('memewc')).Text:='';
//           TfrxMemoView(FindObject('memewclbl')).Text:='';
//         end;
//        if spnedv.Visible then //nedvesseghez kapcsolodik
//         begin
//          TfrxMemoView(FindObject('memalapnedv')).Text:=spalapnedv.Value.ToString+' %';
//          TfrxMemoView(FindObject('memnedv')).Text:=spnedv.Value.ToString+' %';
//          TfrxMemoView(FindObject('memnedvlevon')).Text:=nedvelvon+' kg';
//          //ezek nem kellenek
//          // TfrxMemoView(FindObject('memnedveszt')).Text:=nedvesseg+' kg';
//          TfrxMemoView(FindObject('memnedveszt')).Text:='';
//          TfrxMemoView(FindObject('memnedvesztlbl')).Text:='';
//         end
//        else
//         begin
//          TfrxMemoView(FindObject('memalapnedv')).Text:='';
//          TfrxMemoView(FindObject('memalapnedvlbl')).Text:='';
//          TfrxMemoView(FindObject('memnedv')).Text:='';
//          TfrxMemoView(FindObject('memnedvlbl')).Text:='';
//          TfrxMemoView(FindObject('memnedvlevon')).Text:='';
//          TfrxMemoView(FindObject('memnedvlevonlbl')).Text:='';
//          TfrxMemoView(FindObject('memnedveszt')).Text:='';
//          TfrxMemoView(FindObject('memnedvesztlbl')).Text:='';
//         end;
//         if sptisztasag.Visible then //szemet
//          begin
//           TfrxMemoView(FindObject('memtisztasag')).Text:=sptisztasag.Value.ToString+' %';
//           TfrxMemoView(FindObject('memszemetlevon')).Text:=tisztasag+' kg';
//          end
//         else
//          begin
//           TfrxMemoView(FindObject('memtisztasag')).Text:='';
//           TfrxMemoView(FindObject('memtisztasaglbl')).Text:='';
//           TfrxMemoView(FindObject('memszemetlevon')).Text:='';
//           TfrxMemoView(FindObject('memszemetlevonlbl')).Text:='';
//          end;
//         if sptort.Visible then //tort szemek
//          begin
//           TfrxMemoView(FindObject('memtort')).Text:=sptort.Value.ToString+' %';
//           TfrxMemoView(FindObject('memtorttomeg')).Text:=IntToStr(Round(ttom))+' kg';
//          end
//          else
//          begin
//           TfrxMemoView(FindObject('memtort')).Text:='';
//           TfrxMemoView(FindObject('memtortlbl')).Text:='';
//           TfrxMemoView(FindObject('memtorttomeg')).Text:='';
//           TfrxMemoView(FindObject('memtorttomeglbl')).Text:='';
//          end;
//         if sphekto.Visible then
//         begin
//         if TfrxMemoView(FindObject('memhekto'))<>nil then
//          begin
//           TfrxMemoView(FindObject('memhekto')).Text:=sphekto.Value.ToString;
//          end;
//         end
//         else
//         begin
//          if TfrxMemoView(FindObject('memhekto'))<>nil then
//          begin
//           TfrxMemoView(FindObject('memhekto')).Text:='';
//           TfrxMemoView(FindObject('memhektolbl')).Text:='';
//          end;
//         end;
//
//         TfrxMemoView(FindObject('memsznetto')).Text:=Spsznetto.Value.ToString+' kg';
//         TfrxMemoView(FindObject('memegysar')).Text:=termeklist.FieldByName('ar').AsString+' Ft';
//         TfrxMemoView(FindObject('memtomlevon')).Text:=Sp_tomeg_levon.Value.ToString+' kg';
//         TfrxMemoView(FindObject('memtomlevon_szoveg')).Text:=levonlookup.DisplayValue;
//         //csak azon állítsa ami valóban duplex, a szimplám más a neve/példányszámok miatt fontos
//         if TfrxReportSummary(FindObject('ReportSummary1'))<>nil then TfrxReportSummary(FindObject('ReportSummary1')).Visible:=duplex_mjegy;
//         NezetF.rep_valaszt(aF.frxmerleg,1);
//       end;
   end;

   procedure elozo_mentese;
   var c:String;
       i:Integer;
       tortom:Extended;
    begin
     tortom:=(round((tempQ.FieldByName('brutto').value-tempQ.FieldByName('brutto').value)*(tempQ.FieldByName('tortszaz').value/100.0)));
      with TempQ do
       for I := 1 to Fields.Count-3 do c:=c+fields[i].FieldName+',';
      c:=c+TempQ.fields[i].FieldName+','+TempQ.fields[i+1].FieldName;
      with af.Q1 do
       begin
         close;
         SQL.Clear;
         SQL.Add(' INSERT INTO modositott_merlegjegyek ('+c+')');
         SQL.Add(' SELECT '+c+' FROM '+temp_tabla_neve+' WHERE '+temp_tabla_neve+'.sorszam='+#39+lblsorszam.Caption+#39);
        // SQL.SaveToFile(ExtractFileDir(ExtractFilePath(application.exename))+'\sqltext.txt');
         //ShowMessage(sql.Text);
         ExecSQL
       end;
       with TempQ do
       case tempQ.FieldByName('irany').AsString[1] of
         'B':begin
               aF.keszletez(FieldByName('termek_id').AsInteger,
               FieldByName('tarolo_id').AsInteger,
               FieldByName('p2_id').AsInteger,0,-1*FieldByName('mennyiseg').value);
               //tort szemek
               if FieldByName('tortszaz').Value>0 then
               aF.keszletez(FieldByName('termek_id').AsInteger,
               FieldByName('tarolo_id').AsInteger,
               FieldByName('p_id2').AsInteger,1,-1*tortom);

             end;
         'K':begin
              aF.keszletez(FieldByName('termek_id').AsInteger,
               FieldByName('tarolo_id').AsInteger,
               FieldByName('p_id').AsInteger,0,FieldByName('mennyiseg').value);
              //tort szemek
               if FieldByName('tortszaz').Value>0 then
               aF.keszletez(FieldByName('termek_id').AsInteger,
               FieldByName('tarolo_id').AsInteger,
               FieldByName('p_id').AsInteger,1,tortom);
             end;
       end;
    end;

begin
//elozo_mentese;
//exit;
 if tulajlookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsBizonylatKibocsjtotMegKellAdni'));
    exit
  end;
 if partnerlookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsAz')+StringReplace(lblpartner.Caption,':','t',[rfreplaceall])+af.ford('rsMegKellAdni'));
    exit
  end;
 if partnerlookup2.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsAz')+StringReplace(lblpartner2.Caption,':','t',[rfreplaceall])+af.ford('rsMegKellAdni'));
    exit
  end;
 if termeklookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsTermeketMegKellAdni'));
    exit
  end;
 if kezelolookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsMerlegkezelotMegKellAdni'));
    exit
  end;
 if cbxirany.ItemIndex<1 then
  begin
    ShowMessage(af.ford('rsMeresIranyatMegKellAdni'));
    exit
  end;
 if (cbxrendszam1.Text='') then
  begin
    ShowMessage(af.ford('rsRendszamotMegKellAdni'));
    exit
  end;
 if (not chknincspot.Checked)and(cbxrendszam2.Text='') then
  begin
    ShowMessage(af.ford('rsRendszamotMegKellAdni'));
    exit
  end;

 if (spBrutto.Value<=0)or(sptara.Value<=0) then
  begin
    ShowMessage(af.ford('rsNincsKivalasztvaKetMeres'));
    exit
  end;
  if taroloklookup.KeyValue='!' then
  begin
    ShowMessage(af.ford('rsTarolotMegKellAdni'));
    exit
  end;
  if levonlookup.KeyValue<>'!' then
   if sp_tomeg_levon.Value<=0 then
    begin
     ShowMessage(af.ford('rsLevonandoTomegetMegKellAdni'));
     Exit
    end;

  if regi_ar<>akt_ar then
   begin
    if MessageDlg(af.ford('rsTermekEgysegaraValtozott'),
       mtConfirmation, [mbYes,mbNo], 0) = mrNo
    then mod_ar:=regi_ar
    else mod_ar:=akt_ar
   end
  else mod_ar:=akt_ar;

  sorsz:=lblsorszam.Caption;
  try
   af.dijak_lekerese(Partnelist.FieldByName('id').asinteger,termeklistid.AsInteger)
  finally
   szazalek;
  end;


  if Sender=btnNyomtatas then
  begin
    NezetF.nyomtatva:=false;
    try
     elokeszit;
    finally
     NezetF.rep_valaszt(aF.frxmerleg,1);
    end;
    if not NezetF.nyomtatva then  exit;
  end;
  if spegysegtomeg.Value=0 then
  begin
    keszmenny:=spsznetto.Value;
    tort_keszmenny:=szaritott_tort_szemek_tomege;
  end
  else
    if chkkerekites.Checked=True then
    begin
      keszmenny:=Round(spszNetto.Value/spegysegtomeg.Value);
      tort_keszmenny:=Round(szaritott_tort_szemek_tomege/spEgysegtomeg.Value);
    end
    else
    begin
      keszmenny:=spszNetto.Value/spegysegtomeg.Value;
      tort_keszmenny:=(szaritott_tort_szemek_tomege/spEgysegtomeg.Value);
    end;

  egyedi:=TempQ.FieldByName('eazon').AsString;//nem kell
  with TempQ do //paraméterek
    for j := 1 to Fields.Count-3 do paramok:=paramok+fields[j].FieldName+'=:'+fields[j].FieldName+',';
   paramok:=paramok+TempQ.fields[j].FieldName+'=:'+TempQ.fields[j].FieldName+','+TempQ.fields[j+1].FieldName+'=:'+TempQ.fields[j+1].FieldName;
  //ShowMessage(paramok);
  with aF.Q2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE merlegjegy SET');
      sql.Add(paramok);
      SQL.Add(' WHERE id='+TempQ.fields[0].asstring);
      ParamByName('sorszam').AsString:=sorsz;
      ParamByName('ev_ssz').AsInteger:=tempQ.FieldByName('ev_ssz').AsInteger;
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
      ParamByName('termek_ar').value:=mod_ar;
      ParamByName('szallitolev').AsString:=edszallev.Text;
      ParamByName('megjegyzes').AsString:=edmegjegy.Text;
      ParamByName('merlegelo').AsString:=aF.merlegkezQ.FieldByName('nev').AsString;

      case cbxirany.Text[1] of
       'B':begin
            ParamByName('tomegbe').AsInteger:=spsznetto.Value;
            ParamByName('tomegki').AsInteger:=0;
           end;
       'K':begin
            ParamByName('tomegki').AsInteger:=spsznetto.Value;
            ParamByName('tomegbe').AsInteger:=0;
           end;
      end;
      ParamByName('brutto').AsInteger:=spbrutto.Value;
      ParamByName('tara').AsInteger:=sptara.Value;
      ParamByName('netto').AsInteger:=spnetto.Value;
      ParamByName('SZnetto').AsInteger:=spsznetto.Value;
      ParamByName('erkdatum').AsDate:=StrToDate(lblelsodat.Caption);
      ParamByName('erkido').AsTime:=StrToTime(lblelsoido.Caption);
      //ha nem rogzitett csak akkor mentem a masodik meres idejet
      if not chkrogzitett.checked then
       begin
        ParamByName('tavdatum').AsDate:=StrToDate(lblmasdat.Caption);
        ParamByName('tavido').AsTime:=StrToTime(lblmasido.Caption);
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
      ParamByName('eazon').AsString:=egyedi;
      ParamByName('ekaer').AsString:=edekaer.Text;
      ParamByName('psz').AsInteger:=TempQ.FieldByName('psz').AsInteger;
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
      if spEgysegtomeg.Value=1 then
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
      ParamByName('tarolasi_dij').value:=0;
//      ParamByName('szaritasi_dij').value:=akt_szar_dij;
//      ParamByName('tisztitasi_dij').value:=akt_tiszt_dij;
      ParamByName('tarolo_id').AsInteger:=taroloklookup.KeyValue;
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
      ParamByName('szaraz_tort_szemek').AsInteger:=Round(tort_keszmenny);

      if fuvarozo_merlegjegyen then
       begin
        ParamByName('p3_id').AsInteger:=Partnerlist3.FieldByName('id').AsInteger;
        ParamByName('p3_kod').AsString:=Partnerlist3.FieldByName('kod').AsString;
        ParamByName('p3_nev').AsString:=Partnerlist3.FieldByName('nev').AsString;
        ParamByName('p3_cim').AsString:=Partnerlist3.FieldByName('cim').AsString;;
        ParamByName('p3_kuj').AsString:=Partnerlist3.FieldByName('kuj').AsString;
        ParamByName('p3_ktj').AsString:=Partnerlist3.FieldByName('ktj').AsString;
       end
       else
       begin
        ParamByName('p3_id').AsInteger:=0;
        ParamByName('p3_kod').AsString:='';
        ParamByName('p3_nev').AsString:='';
        ParamByName('p3_cim').AsString:='';
        ParamByName('p3_kuj').AsString:='';
        ParamByName('p3_ktj').AsString:='';
       end;
        ParamByName('kepnev1').AsString:=lblkepnev1.Caption;
        ParamByName('kepnev2').AsString:=lblkepnev2.Caption;
        ParamByName('kepnev3').AsString:=lblkepnev3.Caption;
        ParamByName('kepnev4').AsString:=lblkepnev4.Caption;
        ParamByName('Szabalyos_meres').AsString:=lblszabalyos.Caption;
        ParamByName('szarmazasi_hely').AsString:=cbxszar.Text;
        ParamByName('itj').AsString:=termeklist.Fields[3].AsString;
        ParamByName('siker').value:=spsiker.Value;
        //dijak
      if cbxirany.ItemIndex in [1,2] then
      begin
        ParamByName('tarolasi_dij').AsFloat:=spszNetto.Value*tarolasi_dij;
        ParamByName('szaritasi_dij').AsFloat:=akt_szar_dij;
        ParamByName('tisztitasi_dij').AsFloat:=akt_tiszt_dij;
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

     // SQL.SaveToFile(ExtractFileDir(ExtractFilePath(application.exename))+'\sqltext.txt');
      ExecSQL;
      //keszletezes
      case cbxirany.Text[1] of
       'B':begin
            aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup2.KeyValue,0,keszmenny);
            //tört szemek készletezése
            if sptort.Value>0 then
            aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup2.KeyValue,1,ttom);
           end;
       'K':begin
            aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup.KeyValue,0,-1* keszmenny);
            //tört szemek készletezése
            if sptort.Value>0 then
            aF.keszletez(termeklookup.KeyValue,taroloklookup.KeyValue,partnerlookup.KeyValue,1,-1*ttom);
           end;
      end;
      elozo_mentese;
      //sorsz:=mentett_sorsz_lekerese(egyedi);
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
 close;
end;

procedure TMermodF.btnTaramegadasClick(Sender: TObject);
begin
  RendszamokF.ShowModal;
  rendszam_combok
end;

procedure TMermodF.Button4Click(Sender: TObject);
begin
close
end;

procedure TMermodF.cbxiranyChange(Sender: TObject);
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
   end;
 1:begin //beszállítás
    lblpartner.Caption:=af.ford('rsAtado');
    partnerlookup.Enabled:=True;
    lblpartner2.Caption:=af.ford('rsAtvevo');
    partnerlookup2.Enabled:=true;
    btnekaer.Enabled:=false;
    partnerlookup.keyvalue:='!';
    if alap_atvevo<>0 then  partnerlookup2.keyvalue:=alap_atvevo;
   end;
 2:begin //kiszállítás
    lblpartner.Caption:=af.ford('rsElado');
    partnerlookup.Enabled:=true;
    lblpartner2.Caption:=af.ford('rsVevo');
    partnerlookup2.Enabled:=True;
    btnekaer.Enabled:=true;
    partnerlookup2.keyvalue:='!';
    if alap_elado<>0 then  partnerlookup.keyvalue:=alap_elado;
   end;
end;
end;

procedure TMermodF.cbxrendszam1Change(Sender: TObject);
begin
if chknincspot.Checked then cbxrendszam2.Text:=cbxrendszam1.Text;
  if not chkrogzitett.Checked  then Exit;

  sptara.Value:=aF.tara(cbxrendszam1.Text);
  spnetto.Value:=spbrutto.Value-sptara.Value;
end;

procedure TMermodF.fo(ideje: Integer);

  procedure masolas_tempbe;
   begin
    try
     Temp_tabla_neve:='mjegy_temp_'+FormatDateTime('yyyymmddhhnnsszzz',now);
     with TempQ do
      begin
        Close;
        SQL.Clear;
        SQL.Add('CREATE TEMPORARY TABLE IF NOT EXISTS '+Temp_tabla_neve);
        SQL.Add(' AS (SELECT * FROM merlegjegy WHERE id='+ideje.ToString+ ')');
        ExecSQL;
      end;
    finally
     TempQ.Close;
     TempQ.SQL.Clear;
     TempQ.Open('SELECT * FROM '+Temp_tabla_neve);
    end;
   end;
   procedure szarcb_feltoltese;
    begin
      cbxszar.Clear;
      if not cbxszar.Visible then exit;
      with szarQ do
       begin
         close;
         open;
         first;
         DisableControls;
         while not eof do
          begin
            cbxszar.Items.Add(Fields[0].AsString);
            next;
          end;
          close;
          cbxszar.ItemIndex:=-1;
       end;
    end;
begin
try
 masolas_tempbe;
 Partnelist.Open;
 Partnerlist2.Open;
 Partnerlist3.Open;
 lblfuvarozo.Visible:=fuvarozo_merlegjegyen;
 cbfuvarozo.Visible:=fuvarozo_merlegjegyen;
 termeklist.Open;
 aF.merlegkezQ.Open;
 TarolokT.Open;
 levon_szovegT.Open;
 rendszam_combok;
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
  pnlmezgaz.Visible:=mezgaz;
  lblMintaID.Visible:=(nedvesseg_beolvasasa) and (mezgaz);
  edSample.Visible:=(nedvesseg_beolvasasa) and (mezgaz);
  edSample.Text:='';
  lbl_tomeg_levon.Visible:=tomeg_levon;
  sp_tomeg_levon.Visible:=tomeg_levon;
  lbllevonszoveg.Visible:=tomeg_levon;
  levonlookup.Visible:=tomeg_levon;
  btnlevon_szoveg.Visible:=tomeg_levon;
  lblekaer.Visible:=ekaer_felhasz<>'';
  edekaer.Visible:=ekaer_felhasz<>'';
  btnekaer.visible:=ekaer_felhasz<>'';
  lblszar.Visible:=szarmazasi_hely_latszik;
  cbxszar.Visible:=szarmazasi_hely_latszik;
  szarcb_feltoltese;
finally
 lblsorszam.Caption:=TempQ.FieldByName('sorszam').AsString;

 tulajlookup.KeyValue:=TempQ.FieldByName('tul_id').AsInteger;
 cbxirany.ItemIndex:=cbxirany.Items.IndexOf(TempQ.FieldByName('irany').AsString);
 chknincspot.Checked:=(TempQ.FieldByName('rendszam').AsString=TempQ.FieldByName('rendszam2').AsString)or (TempQ.FieldByName('rendszam2').AsString='');
 lblelsodat.Caption:=TempQ.FieldByName('erkdatum').AsString;
 lblelsoido.Caption:=TempQ.FieldByName('erkido').AsString;
 chkelso_kezi.Checked:=TempQ.FieldByName('elso_kezi').AsBoolean;
 lblmasdat.Caption:=TempQ.FieldByName('tavdatum').AsString;
 lblmasido.Caption:=TempQ.FieldByName('tavido').AsString;
 chkmasodik_kezi.Checked:=TempQ.FieldByName('masodik_kezi').AsBoolean;
 partnerlookup.KeyValue:=TempQ.FieldByName('p_id').AsInteger;
 partnerlookup2.KeyValue:=TempQ.FieldByName('p2_id').AsInteger;
 cbfuvarozo.KeyValue:=TempQ.FieldByName('p3_id').AsInteger;
 termeklookup.KeyValue:=TempQ.FieldByName('termek_id').AsInteger;
 termeklookupCloseUp(self);
 chkkerekites.Checked:=TempQ.FieldByName('kerekites').AsBoolean;
 chkkuk.Checked:=TempQ.FieldByName('kukorica').AsBoolean;
 cbxbuzaminoseg.ItemIndex:=cbxbuzaminoseg.Items.IndexOf(TempQ.FieldByName('buzaminoseg').AsString);
 spegysegtomeg.Value:=TempQ.FieldByName('egysegtomeg').Value;
 spalapnedv.Value:=TempQ.FieldByName('alapnedv').Value;
 spnedv.Value:=TempQ.FieldByName('nedv').Value;
 spolaj.Value:=TempQ.FieldByName('olaj').Value;
 sptisztasag.Value:=TempQ.FieldByName('tisztasag').Value;
 sphekto.Value:=TempQ.FieldByName('hekto').Value;
 spfeherje.Value:=TempQ.FieldByName('feherje').Value;
 speses.Value:=TempQ.FieldByName('esesszam').Value;
 sptort.Value:=TempQ.FieldByName('tortszaz').Value;
 edmegjegy.text:=TempQ.FieldByName('megjegyzes').AsString;
 edekaer.Text:=TempQ.FieldByName('ekaer').AsString;
 spbrutto.Value:=TempQ.FieldByName('brutto').Value;
 sptara.Value:=TempQ.FieldByName('tara').Value;
 spnetto.Value:=TempQ.FieldByName('netto').Value;
 sp_tomeg_levon.Value:=TempQ.FieldByName('levon_tomeg').Value;
 spsznetto.Value:=TempQ.FieldByName('sznetto').Value;
 edszallev.text:=TempQ.FieldByName('szallitolev').AsString;
 cbxrendszam1.ItemIndex:=cbxrendszam1.Items.IndexOf(TempQ.FieldByName('rendszam').AsString);
 cbxrendszam2.ItemIndex:=cbxrendszam2.Items.IndexOf(TempQ.FieldByName('rendszam2').AsString);
 taroloklookup.KeyValue:=TempQ.FieldByName('tarolo_id').AsInteger;
 kezelolookup.KeyValue:=TempQ.FieldByName('merlegelo').AsString;
 lblkepnev1.Caption:=TempQ.fieldbyName('Kepnev1'). Asstring;
 lblkepnev2.Caption:=TempQ.fieldbyName('Kepnev2'). Asstring;
 lblkepnev3.Caption:=TempQ.fieldbyName('Kepnev3'). Asstring;
 lblkepnev4.Caption:=TempQ.fieldbyName('Kepnev4'). Asstring;
 lblszabalyos.Caption:=TempQ.fieldbyName('Szabalyos_meres'). Asstring;
 cbxszar.Text:=TempQ.FieldByName('szarmazasi_hely').AsString;
 spsiker.Value:=TempQ.FieldByName('siker').Value;
 regi_ar:=TempQ.FieldByName('termek_ar').Value;
 ShowModal
end;
end;

procedure TMermodF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 temp_tabla_torlese;
end;

procedure TMermodF.levonlookupChange(Sender: TObject);
begin
 sp_tomeg_levon.Enabled:=levonlookup.KeyValue<>'!';
 if levonlookup.KeyValue='!' then sp_tomeg_levon.Value:=0;
end;

procedure TMermodF.partnerlookup2Change(Sender: TObject);
begin
if not Visible then exit;
 if ActiveControl.Name='partnerlookup2' then
 if chkpartnerekegy.Checked then partnerlookup.KeyValue:=partnerlookup2.KeyValue;
end;

procedure TMermodF.partnerlookupChange(Sender: TObject);
begin
 if not Visible then exit;
 if ActiveControl.Name='partnerlookup' then
 if chkpartnerekegy.Checked then partnerlookup2.KeyValue:=partnerlookup.KeyValue;
end;

procedure TMermodF.rendszam_combok;
begin
 af.rendszam_combok(cbxrendszam1);
 af.rendszam_combok(cbxrendszam2);
end;

procedure TMermodF.spnedvChange(Sender: TObject);
begin
 szazalek
end;

procedure TMermodF.szazalek;
var tisztitott_tomeg,sze,szu,levsz,tortszem_szazalek,tortszem_tomeg:Extended;
begin

 try
  AF.fo_szazalek(SpBrutto.Value, Sptara.value,Sptisztasag.Value,SpNedv.Value,
                 SpAlapnedv.Value, Sptort.Value,sp_tomeg_levon.Value,chkkuk.Checked);
 finally
  spSznetto.Value:=Round(szaritott_netto_tomege);
 end;
 Exit;

end;

procedure TMermodF.temp_tabla_torlese;
begin
 with TempQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DROP TABLE  '+Temp_tabla_neve);
    ExecSQL;
  end;
end;

procedure TMermodF.termeklookupCloseUp(Sender: TObject);
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
  akt_ar:=termeklistar.AsFloat;
  szazalek
end;

end.
