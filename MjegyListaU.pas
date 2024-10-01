unit MjegyListaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  frxClass, Vcl.Samples.Spin, JvExControls, JvDBLookup, JvMemoryDataset,
  JvExExtCtrls, JvExtComponent, JvRollOut, frxDBSet, Vcl.Mask, JvExMask, JvSpin,
  JvSplitter, JvSplit;

type
  TMjegyekF = class(TForm)
    Panel1: TPanel;
    piKezdoDatum: TDateTimePicker;
    Label1: TLabel;
    piBefejezoDatum: TDateTimePicker;
    Label2: TLabel;
    btnKilepes: TButton;
    btnUjranyomtatas: TButton;
    btnListanyomtatas: TButton;
    Panel2: TPanel;
    mjegyekQ: TFDQuery;
    mjegyekQDs: TDataSource;
    btnStorno: TButton;
    Label3: TLabel;
    termeklookup: TJvDBLookupCombo;
    Label5: TLabel;
    partnerlookup: TJvDBLookupCombo;
    termeklist: TFDQuery;
    termeklistDs: TDataSource;
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    Label4: TLabel;
    Label6: TLabel;
    spinbe: TSpinEdit;
    spinki: TSpinEdit;
    Label7: TLabel;
    cbxirany: TComboBox;
    Label8: TLabel;
    cbxrendsz: TComboBox;
    Button4: TButton;
    tulajlookup: TJvDBLookupCombo;
    lblbizki: TLabel;
    chkstorno: TCheckBox;
    partnerlookup2: TJvDBLookupCombo;
    Label9: TLabel;
    Partnelist2: TFDQuery;
    Partnelist2Ds: TDataSource;
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
    btnModositas: TButton;
    btnelozmenyek: TButton;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    taroloklookup: TJvDBLookupCombo;
    Label27: TLabel;
    memszamol: TJvMemoryData;
    memszamolsorsz: TStringField;
    memszamolp_nev: TStringField;
    memszamolp_cim: TStringField;
    memszamoltermek_nev: TStringField;
    memszamolNetto: TFloatField;
    memszamoltisztasag: TFloatField;
    memszamolalapnedv: TFloatField;
    memszamolnedv: TFloatField;
    memszamoltortszaz: TFloatField;
    memszamolszNetto: TFloatField;
    memszamolnedvlevon: TFloatField;
    memszamoltisztasaglevon: TFloatField;
    memszamolszart_tort: TFloatField;
    memszamoltavdat: TStringField;
    termenyszaritasroll: TJvRollOut;
    btntermenyszaritas: TButton;
    Panel3: TPanel;
    Button1: TButton;
    Button2: TButton;
    memszamolDs: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    memszamolszaritasra_kiad: TFloatField;
    Button6: TButton;
    frxTerm_szaritas: TfrxReport;
    memszamolszar_hofok: TFloatField;
    memszamolszall_km: TFloatField;
    spTisztitasi_dij: TJvSpinEdit;
    spSzaritasi_dij: TJvSpinEdit;
    spTarolasi_dij: TJvSpinEdit;
    spBetarolasi_dij: TJvSpinEdit;
    spKitarolasi_dij: TJvSpinEdit;
    spSzallitasi_dij: TJvSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edmegjegy: TEdit;
    chkKepek: TCheckBox;
    Panel4: TPanel;
    pnlKepek: TPanel;
    PageControl1: TPageControl;
    tabKep1: TTabSheet;
    Kep1: TImage;
    lblKep1: TLabel;
    tabKep2: TTabSheet;
    Kep2: TImage;
    lblKep2: TLabel;
    tabKep3: TTabSheet;
    tabKep4: TTabSheet;
    JvxSplitter1: TJvxSplitter;
    mlistaGrid: TJvDBUltimGrid;
    Kep3: TImage;
    Kep4: TImage;
    procedure FormActivate(Sender: TObject);
    procedure btnListanyomtatasClick(Sender: TObject);
    procedure btnUjranyomtatasClick(Sender: TObject);
    procedure piKezdoDatumChange(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure btnStornoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxrendszChange(Sender: TObject);
    procedure rendszamok_feloltese;
    procedure Button4Click(Sender: TObject);
    procedure piBefejezoDatumChange(Sender: TObject);
    procedure mlistaGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnModositasClick(Sender: TObject);
    procedure btnelozmenyekClick(Sender: TObject);
    procedure mlistaGridDblClick(Sender: TObject);
    procedure btntermenyszaritasClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chkKepekClick(Sender: TObject);
    procedure mlistaGridCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure szures;
    procedure szazalek;
    procedure elokeszit(stfelirat:String);
    procedure partnerek_intervallomra;
  public
    { Public declarations }
  end;

var
  MjegyekF: TMjegyekF;
  rfelt:Boolean;
  brutto,tara,netto,sznetto:integer;
  br,tr,aned,ned,tisz:single;
  nedvesseg,tisztasag,nedvelvon: string;
  ttom:Real;
  nyomtat:Boolean;
implementation
  uses au, NezetU,LibreExcelU, MermodU, MermodlistU, UzenetekU;
{$R *.dfm}

{ TMjegyekF }

procedure TMjegyekF.btnelozmenyekClick(Sender: TObject);
begin
  if not aF.van_joga('j3') then exit;
  MermodlistF.fo(mjegyekQ.FieldByName('sorszam').AsString);
end;

procedure TMjegyekF.btnKilepesClick(Sender: TObject);
begin
  Close;
end;

procedure TMjegyekF.btnUjranyomtatasClick(Sender: TObject);
var p,psz:Integer;
begin
  if mjegyekQ.IsEmpty then exit;

   try
    elokeszit(mjegyekQ.FieldByName('storno').AsString);
   finally
    NezetF.rep_valaszt(aF.frxmerleg,1);
   end;

   if not NezetF.nyomtatva then
   begin
    nyomtat:=False;
    exit;
   end;
   psz:=0;
   with NezetF.valasztott do
   begin
    for p :=mjegyekQ.FieldByName('psz').AsInteger+1  to mjegyekQ.FieldByName('psz').AsInteger+PrintOptions.Copies do
     begin
       TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(p+psz)+'. példány';
       if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(p+1+psz)+'. példány';
       PrepareReport(true);
       Print;
       if duplex_mjegy then Inc(psz)
     end;
      aF.psz_plusz(mjegyekQ.FieldByName('id').AsInteger,PrintOptions.Copies);
      mjegyekQ.Refresh;
      Preview:=nil;
   end;
   nyomtat:=false;
end;

procedure TMjegyekF.btnListanyomtatasClick(Sender: TObject);
begin
  if mjegyekQ.IsEmpty then exit;
  nyomtat:=True;
  AF.merlegjegy_lista_tipus_betoltese;
   with NezetF do
     begin
      rep_valaszt(aF.FrxmjegyList,1);
      if nyomtatva then valasztott.Print;
      valasztott.Preview:=nil;
     end;
  nyomtat:=false;
end;

procedure TMjegyekF.btnModositasClick(Sender: TObject);
begin
if not aF.van_joga('j3') then exit;
if mjegyekQ.IsEmpty then exit;
try
 MermodF.fo(mjegyekQ.fields[0].AsInteger);
finally
 mjegyekQ.Refresh
end;
end;
procedure TMjegyekF.btntermenyszaritasClick(Sender: TObject);
begin
memszamol.Active:=False;
memszamol.EmptyTable;
memszamol.Active:=True;
termenyszaritasroll.Visible:=True;
termenyszaritasroll.collapsed:=false;
end;

procedure TMjegyekF.Button1Click(Sender: TObject);
var o_netto,o_szem_szaz,o_szem_levon,o_tort_szaz,o_tort_levon,
    o_szar_kiad,o_nedv,o_nedv_levon,o_szar_fok,o_szNetto,o_km:Extended;
    atlag_szem_szaz,atlag_nedvesseg,atlag_tort_szaz,atlag_szar_fok,
    atlag_szar_tartalom,alap_szar_tartalom,alap_nedv:Extended;
    partner_neve,partner_cime,termeny,datumok,sorszok:string;
    ossz_netto,afa_ossz,fizetendo:Extended;
begin
 if memszamol.IsEmpty then exit;
 
 o_netto:=0;
 o_szem_szaz:=0;
 o_szem_levon:=0;
 o_tort_szaz:=0;
 o_tort_levon:=0;
 o_szar_kiad:=0;
 o_nedv:=0;
 o_nedv_levon:=0;
 o_szar_fok:=0;
 o_Sznetto:=0;
 o_km:=0;
 atlag_szem_szaz:=0;
 atlag_tort_szaz:=0;
 atlag_szar_fok:=0;
 atlag_nedvesseg:=0;
 datumok:='';
 sorszok:='';
 with  memszamol do
  begin
    First;
    while not eof do
    begin
      o_netto:=o_netto+fieldbyname('netto').AsFloat;
      o_szem_szaz:=o_szem_szaz+fieldbyname('tisztasag').AsFloat;
      o_szem_levon:=o_szem_levon+fieldbyname('tisztasaglevon').AsFloat;
      o_tort_szaz:=o_tort_szaz+fieldbyname('tortszaz').AsFloat;
      o_tort_levon:=o_tort_levon+fieldbyname('szart_tort').AsFloat;
      o_szar_kiad:=o_szar_kiad+fieldbyname('szaritasra_kiad').AsFloat;
      o_nedv:=o_nedv+fieldbyname('nedv').AsFloat;
      o_nedv_levon:=o_nedv_levon+fieldbyname('nedvlevon').AsFloat;
      o_szar_fok:=o_szar_fok+fieldbyname('szar_hofok').AsFloat;
      o_szNetto:=o_szNetto+fieldbyname('szNetto').AsFloat;
      o_km:=o_km+fieldbyname('szall_km').AsFloat;
      if Pos(FieldByName('tavdat').AsString+'; ',datumok)=0 then
         datumok:=datumok+FieldByName('tavdat').AsString+'; ';
      sorszok:=sorszok+FieldByName('sorsz').AsString+'; ';
      next;
    end;
    atlag_szem_szaz:=o_szem_szaz/recordcount;
    atlag_tort_szaz:=o_tort_szaz/recordcount;
    atlag_szar_fok:=o_szar_fok/recordcount;
    atlag_nedvesseg:=o_nedv/recordcount;

    alap_nedv:=fieldbyname('alapnedv').AsFloat;
    alap_szar_tartalom:=100-fieldbyname('alapnedv').AsFloat;
    partner_neve:=FieldByName('p_nev').AsString;
    partner_cime:=FieldByName('p_cim').AsString;
    termeny:=FieldByName('termek_nev').AsString;
  end;
  atlag_szar_tartalom:=100-atlag_nedvesseg;
  nyomtat:=True;
  ossz_netto:=0;
 with frxTerm_szaritas do
   begin
     TfrxMemoView(FindObject('frxtulajdonos')).Text:=mjegyekQ.FieldByName('tul_nev').AsString;
     TfrxMemoView(FindObject('frxpartnerneve')).Text:=partner_neve;
     TfrxMemoView(FindObject('frxpartnercime')).Text:=partner_cime;
     TfrxMemoView(FindObject('frxtermeny')).Text:=termeny;
     TfrxMemoView(FindObject('frxidopontok')).Text:=datumok;
     TfrxMemoView(FindObject('frxsorszok')).Text:=sorszok;
     TfrxMemoView(FindObject('frxnetto')).Text:=IntToStr(Round(o_netto))+' kg';
     TfrxMemoView(FindObject('frxszemet_szaz')).Text:=FormatFloat('0.##',atlag_szem_szaz)+' %';
     TfrxMemoView(FindObject('frxszemet_levon')).Text:=IntToStr(Round(o_szem_levon))+' kg';
     TfrxMemoView(FindObject('frxszar_kiad')).Text:=IntToStr(Round(o_szar_kiad))+' kg';
     TfrxMemoView(FindObject('frxnedv')).Text:=FormatFloat('0.#',atlag_nedvesseg)+' %';
     TfrxMemoView(FindObject('frxalapnedv')).Text:=FormatFloat('0.#',alap_nedv)+' %';
     TfrxMemoView(FindObject('frxnettoxnettoszaraz')).Text:=IntToStr(Round(o_szar_kiad))+' kg x '+FormatFloat('0.#',atlag_szar_tartalom)+' %';
     TfrxMemoView(FindObject('frxszarazszaraz')).Text:=FormatFloat('0.#',alap_szar_tartalom)+' %';
     TfrxMemoView(FindObject('frxsznetto')).Text:=IntToStr(Round(o_szNetto))+' kg';
     TfrxMemoView(FindObject('frxnedvelvon')).Text:=IntToStr(Round(o_nedv_levon))+' kg';
     TfrxMemoView(FindObject('frxossz_tort_szaz')).Text:=FormatFloat('0.#',o_tort_szaz)+' %';
     TfrxMemoView(FindObject('frxossz_tort')).Text:=IntToStr(Round(o_tort_levon))+' kg';
     TfrxMemoView(FindObject('frxossz_szar_kiad')).Text:=IntToStr(Round(o_szNetto))+' kg';
     TfrxMemoView(FindObject('frxnetto1')).Text:=FormatFloat('0.000',(o_netto/1000))+' to x';
     TfrxMemoView(FindObject('frxtiszt_to')).Text:=FormatFloat('###,###,##0,- Ft/to', spTisztitasi_dij.Value);
     TfrxMemoView(FindObject('frxtiszt_ar')).Text:=FormatFloat('###,###,##0,- Ft', (o_netto/1000)* spTisztitasi_dij.Value);
     ossz_netto:=(o_netto/1000)* spTisztitasi_dij.Value;
     TfrxMemoView(FindObject('frxszar_fok')).Text:=FormatFloat('0.000',atlag_szar_fok)+' °';
     TfrxMemoView(FindObject('frxnetto2')).Text:=FormatFloat('0.000',(o_szar_kiad/1000))+' to x';
     TfrxMemoView(FindObject('frxszar_to')).Text:=FormatFloat('###,###,##0,- Ft/to', spSzaritasi_dij.Value);
     TfrxMemoView(FindObject('frxszar_ar')).Text:=FormatFloat('###,###,##0,- Ft',atlag_szar_fok*(o_szar_kiad/1000)* spszaritasi_dij.value);
     ossz_netto:=ossz_netto+atlag_szar_fok*(o_szar_kiad/1000)* spSzaritasi_dij.Value;
     TfrxMemoView(FindObject('frxnetto3')).Text:=FormatFloat('0.000',(o_netto/1000))+' to x';
     TfrxMemoView(FindObject('frxbetar_to')).Text:=FormatFloat('###,###,##0,- Ft/to', spBetarolasi_dij.Value);
     TfrxMemoView(FindObject('frxbetar_ar')).Text:=FormatFloat('###,###,##0,- Ft',(o_netto/1000)* spBetarolasi_dij.Value);
     ossz_netto:=ossz_netto+(o_netto/1000)* spBetarolasi_dij.Value;
     TfrxMemoView(FindObject('frxnetto4')).Text:=FormatFloat('0.000',(o_szNetto/1000))+' to x';
     TfrxMemoView(FindObject('frxkitar_to')).Text:=FormatFloat('###,###,##0,- Ft/to', spKitarolasi_dij.Value);
     TfrxMemoView(FindObject('frxkitar_ar')).Text:=FormatFloat('###,###,##0,- Ft',(o_szNetto/1000)* spKitarolasi_dij.Value);
     ossz_netto:=ossz_netto+(o_szNetto/1000)* spKitarolasi_dij.Value;
     TfrxMemoView(FindObject('frxkm')).Text:=FormatFloat('0.#',o_km)+' km';
     TfrxMemoView(FindObject('frxnetto5')).Text:=FormatFloat('0.000',(o_Netto/1000))+' to x';
     TfrxMemoView(FindObject('frxszall_to')).Text:=FormatFloat('###,###,##0,- Ft/to', spSzallitasi_dij.Value);
     TfrxMemoView(FindObject('frxszall_ar')).Text:=FormatFloat('###,###,##0,- Ft',o_km*(o_Netto/1000)* spSzallitasi_dij.Value);
     ossz_netto:=ossz_netto+o_km*(o_Netto/1000)* spSzallitasi_dij.Value;
     TfrxMemoView(FindObject('frxosszesen')).Text:=FormatFloat('###,###,##0,- Ft', ossz_netto);
     fizetendo:=ossz_netto*(1+(27/100));
     afa_ossz:=Round(fizetendo)-Round(ossz_netto);
     TfrxMemoView(FindObject('frxafaosszege')).Text:=FormatFloat('###,###,##0,- Ft', afa_ossz);
     TfrxMemoView(FindObject('frxfizetendo')).Text:=FormatFloat('###,###,##0,- Ft', fizetendo);
     PrepareReport(true);
     ShowReport(true);
   end;
end;   {'0.###'  °C }

procedure TMjegyekF.Button2Click(Sender: TObject);
begin
termenyszaritasroll.collapsed:=true;
termenyszaritasroll.Visible:=false;
end;

procedure TMjegyekF.btnStornoClick(Sender: TObject);
var p,psz:Integer;
begin
if MessageDlg(rsStornozza,mtConfirmation,mbYesNo,0)=6 then
   begin
     try
      elokeszit('Storno');
     finally
      NezetF.rep_valaszt(aF.frxmerleg,1);
     end;

     if not NezetF.nyomtatva then
      begin
       nyomtat:=false;
       exit;
      end;
      case mjegyekQ.FieldByName('irany').AsString[1] of
       'B':begin
             aF.keszletez(mjegyekQ.FieldByName('termek_id').AsInteger,
             mjegyekQ.FieldByName('tarolo_id').AsInteger,
             mjegyekQ.FieldByName('p2_id').AsInteger,0,-1*mjegyekQ.FieldByName('mennyiseg').value);
             //tort szemek
             if mjegyekQ.FieldByName('tortszaz').Value>0 then
             aF.keszletez(mjegyekQ.FieldByName('termek_id').AsInteger,
             mjegyekQ.FieldByName('tarolo_id').AsInteger,
             mjegyekQ.FieldByName('p_id2').AsInteger,1,-1*ttom);

           end;
       'K':begin
            aF.keszletez(mjegyekQ.FieldByName('termek_id').AsInteger,
             mjegyekQ.FieldByName('tarolo_id').AsInteger,
             mjegyekQ.FieldByName('p_id').AsInteger,0,mjegyekQ.FieldByName('mennyiseg').value);
            //tort szemek
             if mjegyekQ.FieldByName('tortszaz').Value>0 then
             aF.keszletez(mjegyekQ.FieldByName('termek_id').AsInteger,
             mjegyekQ.FieldByName('tarolo_id').AsInteger,
             mjegyekQ.FieldByName('p_id').AsInteger,1,ttom);
           end;
       end;
    with NezetF.valasztott do
     begin
        with aF.Q2 do
         begin
           Close;
           SQL.Clear;
           SQL.Add(' UPDATE merlegjegy SET Storno="Storno" where id='+mjegyekQ.FieldByName('ID').AsString);
           ExecSQL
         end;
        psz:=0;
        for p :=mjegyekQ.FieldByName('psz').AsInteger+1  to mjegyekQ.FieldByName('psz').AsInteger+PrintOptions.Copies do
         begin
          if TfrxMemoView(FindObject('frxpsz'))<>nil then
           begin
            TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(p+psz)+'. példány';
             if (duplex_mjegy) and (TfrxMemoView(FindObject('frxpsz2'))<>nil) then
              TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(p+1+psz)+'. példány';
             PrepareReport(true);
             Print;
             if duplex_mjegy then Inc(psz)
           end;
         end;
        aF.psz_plusz(mjegyekQ.FieldByName('id').AsInteger,PrintOptions.Copies);
        mjegyekQ.Refresh;
        Preview:=nil;
     end;

     szures;
     nyomtat:=false;
   end;
end;

procedure TMjegyekF.Button4Click(Sender: TObject);
begin
 LibreExcelF.mezo_nevek(mlistaGrid,nil);
end;

procedure TMjegyekF.Button6Click(Sender: TObject);
begin
if MessageDlg(rsBiztosanTorliElszamolasbol,mtConfirmation,mbYesNo,0)=6 then
   memszamol.Delete;
end;

procedure TMjegyekF.cbxrendszChange(Sender: TObject);
begin
if rfelt then exit;
szures
end;

procedure TMjegyekF.chkKepekClick(Sender: TObject);
begin
  pnlKepek.Visible:=chkKepek.Checked;
  if pnlKepek.Visible then PageControl1.ActivePage:=tabKep1;

end;

procedure TMjegyekF.elokeszit(stfelirat: String);

  function jegyen_latszik(tid:Integer; mezo:string):Boolean;
   begin
     Result:=false;
     with af.Q2 do
       begin
         Close;
         SQL.Clear;
         Open(' SELECT '+mezo+' from termek WHERE id='+tid.ToString);
         Result:=Fields[0].AsBoolean;
         close
       end;
   end;

begin
 if mjegyekQ.IsEmpty then exit;
 AF.merlegjegy_tipus_betoltese;
 try
  AF.fo_szazalek(mjegyekQ.FieldByName('Brutto').Value, mjegyekQ.FieldByName('tara').Value,
   mjegyekQ.FieldByName('tisztasag').Value,mjegyekQ.FieldByName('nedv').Value,
   mjegyekQ.FieldByName('alapnedv').Value, mjegyekQ.FieldByName('tortszaz').Value,
   0,mjegyekQ.FieldByName('kukorica').AsBoolean);
 finally
  nyomtat:=True;
  try
   if not Clean_way then AF.merlegjegy_tipus_betoltese//azért kell mindig betölteni hogy a cím jó legyen (ha esetleg stornóztak)
   else AF.merlegjegy_tipus_betoltese_clean(UpperCase(Copy(mjegyekQ.FieldByName('irany').AsString,1,2)));
  finally
   af.merlegjegy_mezgaz;//mezõgazdasági
   AF.merlegjegy_tomeglevonas;// tömeg levonás
   Mjegy_nyom_rec.mjegy_rec_nyom_ures;  //üresre teszem mindig
  end;
   while Mjegy_nyom_rec=nil do Sleep(200);

   with Mjegy_nyom_rec do
      begin
       Id:=mjegyekQ.FieldByName('ID').AsInteger;
       Mjegysorszam:=mjegyekQ.FieldByName('Sorszam').AsString;
       Psz :=mjegyekQ.FieldByName('psz').AsInteger+1;
       Storno:=stfelirat='Storno';
       Tulaj_nev:=mjegyekQ.FieldByName('tul_nev').AsString;
       Tulaj_cime:=mjegyekQ.FieldByName('tul_cim').AsString;
       Tulaj_adosz:=mjegyekQ.FieldByName('tul_adoszam').AsString;
       Tulaj_cjsz:=mjegyekQ.FieldByName('tul_cjsz').AsString;
       Tulaj_telefon:=tulajTTelefon.AsString;
       case mjegyekQ.FieldByName('irany').AsString[1] of
       'B':begin
            Partner1_felirat:='Átadó:';
            Partner2_felirat:='Átvevõ:';
           end;
       'K':begin
            Partner1_felirat:='Eladó:';
            Partner2_felirat:='Vevõ:';
           end;
       end;
       Partner1_nev:=mjegyekQ.FieldByName('P_Nev').AsString;
       Partner1_cim:=mjegyekQ.FieldByName('P_Cim').AsString;
       Partner2_nev:=mjegyekQ.FieldByName('P2_Nev').AsString;
       Partner2_cim:=mjegyekQ.FieldByName('P2_Cim').AsString;;
       Partner3_felirat:='Fuvarozó';
       Partner3_nev:=mjegyekQ.FieldByName('P3_Nev').AsString;
       Partner3_cim:=mjegyekQ.FieldByName('P3_Cim').AsString;
       Ekaer:=mjegyekQ.FieldByName('ekaer').AsString;
       Szallev:=mjegyekQ.FieldByName('Szallitolev').AsString;
       Szarmazasi_hely:=mjegyekQ.FieldByName('szarmazasi_hely').AsString;
       Megjegyzes:=mjegyekQ.FieldByName('Megjegyzes').AsString;
       Rendszam:=mjegyekQ.FieldByName('Rendszam').AsString+' '+mjegyekQ.FieldByName('Rendszam2').AsString;
       Erkdatum:=mjegyekQ.FieldByName('Erkdatum').AsDateTime;
       Erkido:=mjegyekQ.FieldByName('Erkido').AsDateTime;
       if mjegyekQ.FieldByName('tavdatum').AsString<>'' then
        begin
         Tavdatum:=mjegyekQ.FieldByName('Tavdatum').AsDateTime;
         Tavido:=mjegyekQ.FieldByName('Tavido').AsDateTime;
        end;
       Irany:=mjegyekQ.FieldByName('irany').AsString;                  //nincs megadva
       if (not Clean_way) or (mjegyekQ.FieldByName('irany').AsString[1]='-') then
        begin
          Termek_kod:=mjegyekQ.FieldByName('Termek_Kod').AsString;
          Termek_nev:=mjegyekQ.FieldByName('Termek_Nev').AsString;
        end
       else
        begin
          case mjegyekQ.FieldByName('irany').AsString[1] of
           'B' : begin
                   Termek_kod:=mjegyekQ.FieldByName('ewc').AsString;
                   Termek_nev:=mjegyekQ.FieldByName('Termek_Nev').AsString;
                 end;
           'K' : begin
                   Termek_kod:=mjegyekQ.FieldByName('itj').AsString;
                   Termek_nev:=mjegyekQ.FieldByName('Termek_Nev').AsString;
                 end;
          end;
        end;
       Merlegkezelo:=mjegyekQ.FieldByName('merlegelo').AsString;
       Nedvesseg_latszik:=jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger, 'b_nedv');
       Alapnedv:=mjegyekQ.FieldByName('alapnedv').AsString+' %';
       Nedv:=mjegyekQ.FieldByName('nedv').AsString+' %';
       Nedvlevon:=nedvesseg_vesztes_tomege.ToString+' kg';
       Tisztasag_latszik:=jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_tisztasag');
       Tisztasag:=mjegyekQ.FieldByName('tisztasag').AsString+' %';
       Szemet_levon:=szemet_tomeg.ToString+' kg';
       Tort_latszik:=jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_tort');
       Tort:=mjegyekQ.FieldByName('tortszaz').AsString+' %';
       Tort_tomeg:=IntToStr(Round(nyers_tort_szemek_tomege))+' kg';
       Hekto_latszik:=jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_hekto');
       Hekto:=mjegyekQ.FieldByName('hekto').AsString;
       Brutto:=mjegyekQ.FieldByName('Brutto').AsString+' kg';
       Tara:=mjegyekQ.FieldByName('Tara').AsString+' kg';
       Sz_netto:=mjegyekQ.FieldByName('SzNetto').AsString+' kg';
       Netto:=mjegyekQ.FieldByName('Netto').AsString+' kg';
       Termek_ar:=mjegyekQ.FieldByName('termek_ar').AsString+' Ft';
       Tomeg_levon_ny:=mjegyekQ.FieldByName('levon_tomeg').AsString+' kg';
       Tomeg_levon_szoveg:=mjegyekQ.FieldByName('levon_szoveg').AsString;
       Siker_latszik:=jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_siker');
       Siker:=mjegyekQ.FieldByName('siker').AsString+' %';
       Tisztitasi_dij_rec:=IntToStr(Round(mjegyekQ.FieldByName('tisztitasi_dij').AsFloat))+' -Ft';
       Szaritasi_dij_rec:=IntToStr(Round(mjegyekQ.FieldByName('szaritasi_dij').AsFloat))+' -Ft';
       Ertek:=IntToStr(Round(mjegyekQ.FieldByName('SzNetto').value*mjegyekQ.FieldByName('termek_ar').Value
       -(mjegyekQ.FieldByName('tisztitasi_dij').AsFloat+mjegyekQ.FieldByName('szaritasi_dij').AsFloat))) +' -Ft';
      end;

//     NezetF.rep_valaszt(aF.frxmerleg,1);
 end;
end;

procedure TMjegyekF.FormActivate(Sender: TObject);
begin
 if nyomtat then  exit;

 termeklist.close;
 termeklist.Open();
 Partnelist.close;
 Partnelist.Open();

 piKezdoDatum.Date:=date;
 piBefejezoDatum.Date:=date;

 tulajT.Open();
  if tulajT.RecordCount=1 then //ha csak egy tulaj van
   begin
     tulajlookup.visible:=False;
     lblbizki.visible:=false;
   end
   else
  begin
    tulajlookup.visible:=true;
    lblbizki.visible:=true;
  end;
 tulajlookup.KeyValue:=tulajTID.AsInteger;
 rfelt:=True;
 rendszamok_feloltese;
 rfelt:=false;
 btnmodositas.Visible:=merlegjegy_modositas;
 btnelozmenyek.Visible:=merlegjegy_modositas;
 btntermenyszaritas.Visible:=termenyszaritas_elszamolasa;
 termenyszaritasroll.Visible:=false;
 TarolokT.close;
 TarolokT.open;
 spTisztitasi_dij.Value:=tisztitasi_dij;
 spSzaritasi_dij.Value:=szaritasi_dij;
 spTarolasi_dij.Value:=tarolasi_dij;
 spBetarolasi_dij.Value:=be_tarolasi_dij;
 spKitarolasi_dij.Value:=ki_tarolasi_dij;
 spSzallitasi_dij.Value:=szallitasi_dij;
 edmegjegy.Clear;
 chkKepek.Checked:=false;
 pnlKepek.Visible:=false;
 szures;
end;

procedure TMjegyekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
termeklist.close;
Partnelist.close;
end;

procedure TMjegyekF.mlistaGridCellClick(Column: TColumn);
var esemeny:esemeny_rec;
    kep_teljes_nev:string;

  procedure kepbetolt(kepnev:string;kep:TImage);
  begin
     if kepnev<>'' then
     try
       esemeny:=af.esemeny_kibont(Now,kepnev);
       kep_teljes_nev:=Kepek_Mappa+esemeny.evs+'\'+esemeny.hos+'\'+esemeny.naps+'\'+esemeny.oras+'\'+kepnev;
       if FileExists(kep_teljes_nev) then kep.Picture.LoadFromFile(kep_teljes_nev);
     except

     end;
  end;

begin
  if chkKepek.Checked then
  begin
    kepbetolt(mjegyekQ.FieldByName('Kepnev1').AsString ,Kep1);
    kepbetolt(mjegyekQ.FieldByName('Kepnev2').AsString ,Kep2);
    kepbetolt(mjegyekQ.FieldByName('Kepnev3').AsString ,Kep3);
    kepbetolt(mjegyekQ.FieldByName('Kepnev4').AsString ,Kep4);
  end;
end;

procedure TMjegyekF.mlistaGridDblClick(Sender: TObject);
begin
 if not termenyszaritas_elszamolasa then exit;
 if mjegyekQ.FieldByName('storno').AsString<>'' then exit;

 if not memszamol.IsEmpty then
  begin
    if memszamol.Locate('sorsz',mjegyekQ.FieldByName('sorszam').AsString,[]) then
     begin
       ShowMessage(rsMerlegjegySzerepelAzElszamolasban);
       Exit;
     end;
    if not memszamol.Locate('p_nev',mjegyekQ.FieldByName('p_nev').AsString,[]) then
     begin
       ShowMessage(rsElaszolasbanegyPartner);
       Exit;
     end;
    if not memszamol.Locate('termek_nev',mjegyekQ.FieldByName('termek_nev').AsString,[]) then
     begin
       ShowMessage(rsElaszolasbanegyTermek);
       Exit;
     end;
  end;
  //szazalek;
  try
   AF.fo_szazalek(mjegyekQ.FieldByName('Brutto').Value, mjegyekQ.FieldByName('tara').Value,
   mjegyekQ.FieldByName('tisztasag').Value,mjegyekQ.FieldByName('nedv').Value,
   mjegyekQ.FieldByName('alapnedv').Value, mjegyekQ.FieldByName('tortszaz').Value,
   0,mjegyekQ.FieldByName('kukorica').AsBoolean);
  finally
    memszamol.Edit;
    memszamol.Append;
    memszamolsorsz.AsString:=mjegyekQ.FieldByName('sorszam').AsString;
    memszamolp_nev.AsString:=mjegyekQ.FieldByName('p_nev').AsString;
    memszamolp_cim.AsString:=mjegyekQ.FieldByName('p_cim').AsString;
    memszamoltermek_nev.AsString:=mjegyekQ.FieldByName('termek_nev').AsString;
    memszamolnetto.value:=mjegyekQ.FieldByName('netto').value;
    memszamolalapnedv.value:=mjegyekQ.FieldByName('alapnedv').value;
    memszamolnedv.value:=mjegyekQ.FieldByName('nedv').value;
    memszamolnedvlevon.value:=nedvesseg_vesztes_tomege;//számolni
    memszamoltisztasag.value:=mjegyekQ.FieldByName('tisztasag').value;
    memszamoltisztasaglevon.value:=szemet_tomeg;//számolni
    memszamoltortszaz.value:=mjegyekQ.FieldByName('tortszaz').value;
    memszamolszNetto.value:=mjegyekQ.FieldByName('szNetto').value;
    memszamolszart_tort.value:=szaritott_tort_szemek_tomege;//tört szemek tömege számolni
    memszamoltavdat.asString:=mjegyekQ.FieldByName('tavdatum').AsString;
    memszamolszaritasra_kiad.value:=tisztitott_nyers_netto_tomege;//mjegyekQ.FieldByName('netto').value-StrToFloat(tisztasag);//netto-szemét tömeg számolni
    memszamolszar_hofok.value:=0;
    memszamolszall_km.value:=0;
    memszamol.Post;
  end;

end;

procedure TMjegyekF.mlistaGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
try
 {if (button= mbRight) and (mlistaGrid.MouseCoord(X,Y).Y=0)then              //ha jobb klikk és title küldi(0 az Y) akkor erre szûr
  begin
    {Col_neve:=(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].FieldName;
   col_felirat:=(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].Title.Caption;
   lblmire.Caption:=col_felirat;
   edszures.SetFocus; }
 // end;
  if (button= mbRight) and (mlistaGrid.MouseCoord(X,Y).Y=0)then                //ha bal klikk és title küldi akkor sort
    af.rendez(mjegyekQ,(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].FieldName);
except
 //
end;
end;

procedure TMjegyekF.rendszamok_feloltese;
begin
  with aF.Q1 do
   begin
     close;
     SQL.Clear;
     SQL.Add(' select distinct(rendszam) from merlegjegy');
     SQL.Add(' where Date(tavdatum)>=:p0 and Date(tavdatum)<=:p1 ');
     ParamByName('p0').AsDate:=piKezdoDatum.Date;
     ParamByName('p1').AsDate:=piBefejezoDatum.Date;
     Open();
     cbxrendsz.Clear;
     cbxrendsz.Items.Add('*Nincs szûrve*');
     First;
     DisableControls;
     while not eof do
     begin
      cbxrendsz.Items.Add(FieldByName('rendszam').AsString);
      Next
     end;
     Close;
     cbxrendsz.ItemIndex:=0;
   end;
end;

procedure TMjegyekF.partnerek_intervallomra;
begin
 with Partnelist do
  begin
   Close;
   sql.Clear;
   SQL.Add(' select distinct(p_id) as id,p_kod as kod ,p_nev as nev from merlegjegy');
   SQL.Add(' where Date(tavdatum)>=:p0 and Date(tavdatum)<=:p1 ');
   ParamByName('p0').AsDate:=piKezdoDatum.Date;
   ParamByName('p1').AsDate:=piBefejezoDatum.Date;
   Open();
  end;
 with Partnelist2 do
  begin
   Close;
   sql.Clear;
   SQL.Add(' select distinct(p2_id) as id,p2_kod as kod,p2_nev as nev from merlegjegy');
   SQL.Add(' where Date(tavdatum)>=:p0 and Date(tavdatum)<=:p1 ');
   ParamByName('p0').AsDate:=piKezdoDatum.Date;
   ParamByName('p1').AsDate:=piBefejezoDatum.Date;
   Open();
  end;
end;

procedure TMjegyekF.piBefejezoDatumChange(Sender: TObject);
begin
if piBefejezoDatum.Date<piKezdoDatum.Date then piKezdoDatum.Date:=piBefejezoDatum.Date;
 szures;
end;

procedure TMjegyekF.piKezdoDatumChange(Sender: TObject);
begin
 rfelt:=True;
 rendszamok_feloltese;
 partnerek_intervallomra;
 rfelt:=false;
 szures;
end;

procedure TMjegyekF.szazalek;
var tt,sze,szu,levsz,tsz,tortszemtomeg,tisztitott_tomeg:Extended;
begin
  nedvesseg:='0';
  tisztasag:='0';
  nedvelvon:='0';
 {szemet_tomeg:=0;
 nedvesseg_szazalek:=0;
 nedvesseg_vesztes_tomege:=0;
 nyers_tort_szemek_tomege:=0;
 tisztitott_nyers_netto_tomege_tortel:=0;
 tisztitott_nyers_netto_tomege:=0;
 nyers_netto_tomege:=0;
 szaritott_tort_szemek_tomege:=0;
 szaritott_netto_tomege:=0; }
 {ShowMessage(nyers_netto_tomege.ToString);
 ShowMessage(szemet_tomeg.ToString);
 ShowMessage(nedvesseg_vesztes_tomege.ToString);
 ShowMessage(szaritott_netto_tomege.ToString);
 ShowMessage(nyers_tort_szemek_tomege.ToString); }
 // EXIT;

{  br:=0;tr:=0;aned:=0;ned:=0;tisz:=0;tsz:=0;tt:=0;sze:=0;szu:=0;levsz:=0;
  tsz:=0;nedvesseg:='';tisztasag:='';ttom:=0;
  tisztitott_tomeg:=0;
  tortszemtomeg:=0;
  br := mjegyekQ.FieldByName('Brutto').Value;
  tr := mjegyekQ.FieldByName('tara').Value;
  if mjegyekQ.FieldByName('nedv').Value>mjegyekQ.FieldByName('alapnedv').Value then
   begin
    aned := mjegyekQ.FieldByName('alapnedv').Value;
    ned := mjegyekQ.FieldByName('nedv').Value;
   end
  else
   begin
    aned := mjegyekQ.FieldByName('alapnedv').Value;
    ned := mjegyekQ.FieldByName('alapnedv').Value;
   end;
  tisz := mjegyekQ.FieldByName('tisztasag').Value;
  tsz:= mjegyekQ.FieldByName('tortszaz').Value;

  nedvesseg := IntToStr(round((br-tr)*((ned-aned)/100.0)));
  tisztasag := IntToStr(round((br-tr)*((tisz)/100.0)));
  //nyers tort szemek tomege
  ttom:=(round((br-tr)*(tsz/100.0)));

  //Öcsi
  tt:=round((br-tr-(round((br-tr)*((tisz+tsz)/100.0)))));

 // sze:=1-((tisz+tsz+ned)/100);
  //szu:=1-((tisz+tsz+aned)/100);
  //Öcsi
  tisztitott_tomeg:=round((br-tr-(round((br-tr)*((tisz+tsz)/100.0)))));
  sze:=1-(ned/100);
  szu:=1-(aned/100);
  levsz:=sze/szu;
      if mjegyekQ.FieldByName('kukorica').AsBoolean then
       begin
         sznetto :=Round((tisztitott_tomeg*(1-ned/100))/(1-aned/100));
         nedvelvon:=FloatToStr(Round(tisztitott_tomeg-sznetto));
         //száraz tört szemek tömege
         //ttom:=Round(levsz*tortszemtomeg);
       end
      else
       begin
         sznetto := round(tt-(tt*(ned-aned))/100.0);
         nedvelvon:=FloatToStr(Round((ned-aned)*tt/100));
         ttom:=round(tortszemtomeg-(tortszemtomeg*(ned-aned))/100.0);
       end; }

    if nedvesseg='' then nedvesseg:='0';
    if nedvelvon='' then nedvelvon:='0';
    if tisztasag='' then tisztasag:='0';
end;

procedure TMjegyekF.szures;
begin
 spinki.Value:=0;
 spinbe.Value:=0;
 with mjegyekQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' select * from merlegjegy ');
    SQL.Add(' where (Date(tavdatum)>=:p0 and Date(tavdatum)<=:p1) and tul_id=:p2 ');
    ParamByName('p0').AsDate:=piKezdoDatum.Date;
    ParamByName('p1').AsDate:=piBefejezoDatum.Date;
    ParamByName('p2').AsInteger:=tulajlookup.KeyValue;
    if termeklookup.KeyValue<>'!' then SQL.Add(' and termek_kod='+#39+termeklist.FieldByName('kod').AsString+#39);
    if partnerlookup.KeyValue<>'!' then SQL.Add(' and p_kod='+#39+partnelist.FieldByName('kod').AsString+#39);
    if partnerlookup2.KeyValue<>'!' then SQL.Add(' and p2_kod='+#39+partnelist2.FieldByName('kod').AsString+#39);
    if cbxirany.ItemIndex>0 then SQL.Add(' and irany='+#39+cbxirany.Text+#39);
    if cbxrendsz.ItemIndex<>0 then SQL.Add(' and rendszam='+#39+cbxrendsz.Text+#39);
    if not chkstorno.Checked then  SQL.Add(' and storno<>"Storno"');
    if taroloklookup.KeyValue<>'!' then SQL.Add(' and tarolo_id='+#39+taroloklookup.KeyValue+#39);
    if edmegjegy.Text<>'' then SQL.Add('AND UPPER(megjegyzes)LIKE UPPER('+#39+'%'+edmegjegy.Text+'%'+#39+')');
    Open;
    if IsEmpty then Exit;
    DisableControls;
    First;
    while not Eof do
    begin
      if FieldByName('Storno').asString='' then
       begin
        spinki.Value:=spinki.Value+fieldbyName('tomegki').AsInteger;
        spinbe.Value:=spinbe.Value+fieldbyName('tomegbe').AsInteger;
       end;
      Next
    end;
    First;
    EnableControls
  end;
end;

end.
