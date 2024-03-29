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
  uses au, NezetU,LibreExcelU, MermodU, MermodlistU;
{$R *.dfm}

{ TMjegyekF }

procedure TMjegyekF.btnelozmenyekClick(Sender: TObject);
begin
if not aF.van_joga('j9') then exit;
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

   elokeszit(mjegyekQ.FieldByName('storno').AsString);
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
       TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(p+psz)+'. p�ld�ny';
       if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(p+1+psz)+'. p�ld�ny';
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
if not aF.van_joga('j9') then exit;
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
     TfrxMemoView(FindObject('frxszar_fok')).Text:=FormatFloat('0.000',atlag_szar_fok)+' �';
     TfrxMemoView(FindObject('frxnetto2')).Text:=FormatFloat('0.000',(o_szar_kiad/1000))+' to x';
     TfrxMemoView(FindObject('frxszar_to')).Text:=FormatFloat('###,###,##0,- Ft/to', spSzaritasi_dij.Value);
     TfrxMemoView(FindObject('frxszar_ar')).Text:=FormatFloat('###,###,##0,- Ft',atlag_szar_fok*(o_szar_kiad/1000)* szaritasi_dij);
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
end;   {'0.###'  �C }

procedure TMjegyekF.Button2Click(Sender: TObject);
begin
termenyszaritasroll.collapsed:=true;
termenyszaritasroll.Visible:=false;
end;

procedure TMjegyekF.btnStornoClick(Sender: TObject);
var p,psz:Integer;
begin
if MessageDlg('Biztosan stornozza?',mtConfirmation,mbYesNo,0)=6 then
   begin
     elokeszit('Storno');
     if not NezetF.nyomtatva then
      begin
       nyomtat:=false;
       exit;
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
           TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(p+psz)+'. p�ld�ny';
           if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(p+1+psz)+'. p�ld�ny';
           PrepareReport(true);
           Print;
           if duplex_mjegy then Inc(psz)
         end;
        aF.psz_plusz(mjegyekQ.FieldByName('id').AsInteger,PrintOptions.Copies);
        mjegyekQ.Refresh;
        Preview:=nil;
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
if MessageDlg('Biztosan t�rli az elsz�mol�sb�l?',mtConfirmation,mbYesNo,0)=6 then
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
 //szazalek;
 try
  AF.fo_szazalek(mjegyekQ.FieldByName('Brutto').Value, mjegyekQ.FieldByName('tara').Value,
   mjegyekQ.FieldByName('tisztasag').Value,mjegyekQ.FieldByName('nedv').Value,
   mjegyekQ.FieldByName('alapnedv').Value, mjegyekQ.FieldByName('tortszaz').Value,
   0,mjegyekQ.FieldByName('kukorica').AsBoolean);
 finally
 nyomtat:=True;
 af.merlegjegy_mezgaz;//mi latszon
 AF.merlegjegy_tomeglevonas;// t�meg levon�s
 with aF.frxmerleg do
   begin
     if stfelirat<>'' then TfrxMemoView(FindObject('memcim')).Text:=stfelirat+' '+LowerCase(TfrxMemoView(FindObject('memcim')).Text);
     //else   TfrxMemoView(FindObject('memcim')).Text:='Storno m�rlegjegy';
     TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(mjegyekQ.FieldByName('psz').AsInteger+1)+'. p�ld�ny';
     if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(mjegyekQ.FieldByName('psz').AsInteger+2)+'. p�ld�ny';
     if mjegyekQ.FieldByName('ekaer').AsString<>'' then
      begin
       TfrxMemoView(FindObject('frxekaer')).Text:=mjegyekQ.FieldByName('ekaer').AsString;
       TfrxMemoView(FindObject('frxekaerlbl')).Text:='EK�ER:';
       //TfrxMemoView(FindObject('frxekaer')).visible:=True;
      end
      else
      begin
       TfrxMemoView(FindObject('frxekaer')).Text:='';
       TfrxMemoView(FindObject('frxekaerlbl')).Text:='';
      end;
     TfrxMemoView(FindObject('memtulaj')).Text:=mjegyekQ.FieldByName('tul_nev').AsString;
     TfrxMemoView(FindObject('memtulajcime')).Text:=mjegyekQ.FieldByName('tul_cim').AsString;
     if TfrxMemoView(FindObject('memtuladosz'))<>nil then TfrxMemoView(FindObject('memtuladosz')).Text:=mjegyekQ.FieldByName('tul_adoszam').AsString;;
     if TfrxMemoView(FindObject('memtulcjsz'))<>nil then TfrxMemoView(FindObject('memtulcjsz')).Text:=mjegyekQ.FieldByName('tul_cjsz').AsString;
     if TfrxMemoView(FindObject('memTelefon'))<>nil then TfrxMemoView(FindObject('memTelefon')).Text:=tulajTTelefon.AsString;
     if TfrxMemoView(FindObject('memmerlegtipusa'))<>nil then TfrxMemoView(FindObject('memmerlegtipusa')).Text:=merleg_neve;
     case mjegyekQ.FieldByName('irany').AsString[1] of
     'B':begin
          TfrxMemoView(FindObject('mempartner')).Text:='�tad�:';
          TfrxMemoView(FindObject('mempartner2')).Text:='�tvev�:';
         end;
     'K':begin
          TfrxMemoView(FindObject('mempartner')).Text:='Elad�:';
          TfrxMemoView(FindObject('mempartner2')).Text:='Vev�:';
         end;
     end;
     TfrxMemoView(FindObject('mempartnerneve')).Text:=mjegyekQ.FieldByName('p_nev').AsString;
     TfrxMemoView(FindObject('mempartnercime')).Text:=mjegyekQ.FieldByName('p_cim').AsString;
     TfrxMemoView(FindObject('mempartnerneve2')).Text:=mjegyekQ.FieldByName('p2_nev').AsString;
     TfrxMemoView(FindObject('mempartnercime2')).Text:=mjegyekQ.FieldByName('p2_cim').AsString;
     TfrxMemoView(FindObject('memelsoido')).Text:=mjegyekQ.FieldByName('erkdatum').AsString+' '+mjegyekQ.FieldByName('erkido').AsString;
     TfrxMemoView(FindObject('memmasodikido')).Text:=mjegyekQ.FieldByName('tavdatum').AsString+' '+mjegyekQ.FieldByName('tavido').AsString;;
     TfrxMemoView(FindObject('membizszam')).Text:=mjegyekQ.FieldByName('Sorszam').AsString;
     TfrxMemoView(FindObject('memrendszamok')).Text:=mjegyekQ.FieldByName('rendszam').AsString+' '+mjegyekQ.FieldByName('rendszam2').AsString;;
     TfrxMemoView(FindObject('membrutto')).Text:=mjegyekQ.FieldByName('brutto').AsString+' kg';
     TfrxMemoView(FindObject('memtara')).Text:=mjegyekQ.FieldByName('tara').AsString+' kg';
     TfrxMemoView(FindObject('memnetto')).Text:=mjegyekQ.FieldByName('netto').AsString+' kg';
     TfrxMemoView(FindObject('memirany')).Text:=mjegyekQ.FieldByName('irany').AsString;
     TfrxMemoView(FindObject('memmegjegy')).Text:=mjegyekQ.FieldByName('megjegyzes').AsString;
     TfrxMemoView(FindObject('memtermkod')).Text:=mjegyekQ.FieldByName('termek_kod').AsString;
     TfrxMemoView(FindObject('memtermnev')).Text:=mjegyekQ.FieldByName('termek_nev').AsString;
    //TfrxMemoView(FindObject('memmerlegkezelo')).Text:=mjegyekQ.FieldByName('merlegelo').AsString;
    //TfrxMemoView(FindObject('frxkuj')).Text:=mjegyekQ.FieldByName('tul_kuj').AsString;;
    //TfrxMemoView(FindObject('frxktj')).Text:=mjegyekQ.FieldByName('tul_ktj').AsString;;
    //TfrxMemoView(FindObject('frxpartnerkuj')).Text:=mjegyekQ.FieldByName('kuj').AsString;
    //TfrxMemoView(FindObject('frxpartnerktj')).Text:=mjegyekQ.FieldByName('ktj').AsString;
     TfrxMemoView(FindObject('memszallev')).Text:=mjegyekQ.FieldByName('szallitolev').AsString;
        //ewc
         if mjegyekQ.FieldByName('ewc').AsString<>'' then
          begin
           TfrxMemoView(FindObject('memewc')).Text:=mjegyekQ.FieldByName('ewc').AsString;
          end
         else
         begin
           TfrxMemoView(FindObject('memewc')).Text:='';
           TfrxMemoView(FindObject('memewclbl')).Text:='';
         end;
        if jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger, 'b_nedv')=True then //nedvesseghez kapcsolodik
         begin
          TfrxMemoView(FindObject('memalapnedv')).Text:=mjegyekQ.FieldByName('alapnedv').AsString+' %';
          TfrxMemoView(FindObject('memnedv')).Text:=mjegyekQ.FieldByName('nedv').AsString+' %';
          TfrxMemoView(FindObject('memnedvlevon')).Text:=nedvesseg_vesztes_tomege.ToString+' kg';
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
         if jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_tisztasag') then //szemet
          begin
           TfrxMemoView(FindObject('memtisztasag')).Text:=mjegyekQ.FieldByName('tisztasag').AsString+' %';
           TfrxMemoView(FindObject('memszemetlevon')).Text:=szemet_tomeg.ToString+' kg';
          end
         else
          begin
           TfrxMemoView(FindObject('memtisztasag')).Text:='';
           TfrxMemoView(FindObject('memtisztasaglbl')).Text:='';
           TfrxMemoView(FindObject('memszemetlevon')).Text:='';
           TfrxMemoView(FindObject('memszemetlevonlbl')).Text:='';
          end;
         if jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_tort') then //tort szemek
          begin
           TfrxMemoView(FindObject('memtort')).Text:=mjegyekQ.FieldByName('tortszaz').AsString+' %';
           TfrxMemoView(FindObject('memtorttomeg')).Text:=IntToStr(Round(nyers_tort_szemek_tomege))+' kg';
          end
          else
          begin
           TfrxMemoView(FindObject('memtort')).Text:='';
           TfrxMemoView(FindObject('memtortlbl')).Text:='';
           TfrxMemoView(FindObject('memtorttomeg')).Text:='';
           TfrxMemoView(FindObject('memtorttomeglbl')).Text:='';
          end;
         if jegyen_latszik(mjegyekQ.FieldByName('termek_id').AsInteger,'b_hekto') then
         begin
         if TfrxMemoView(FindObject('memhekto'))<>nil then
          begin
           TfrxMemoView(FindObject('memhekto')).Text:=mjegyekQ.FieldByName('hekto').AsString;
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

     TfrxMemoView(FindObject('memsznetto')).Text:=szaritott_netto_tomege.tostring{mjegyekQ.FieldByName('sznetto').AsString}+' kg';
     TfrxMemoView(FindObject('memegysar')).Text:=mjegyekQ.FieldByName('termek_ar').AsString+' Ft';
     TfrxMemoView(FindObject('memtomlevon')).Text:=mjegyekQ.FieldByName('levon_tomeg').AsString+' kg';
     TfrxMemoView(FindObject('memtomlevon_szoveg')).Text:=mjegyekQ.FieldByName('levon_szoveg').AsString;
     //csak azon �ll�tsa ami val�ban duplex, a szimpl�m m�s a neve/p�ld�nysz�mok miatt fontos
     if  TfrxReportSummary(FindObject('ReportSummary1'))<>nil then TfrxReportSummary(FindObject('ReportSummary1')).Visible:=duplex_mjegy;

     NezetF.rep_valaszt(aF.frxmerleg,1);
   end;
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
       ShowMessage('Ez a m�rlegjegy m�r szerepel ebben az elsz�mol�sban!');
       Exit;
     end;
    if not memszamol.Locate('p_nev',mjegyekQ.FieldByName('p_nev').AsString,[]) then
     begin
       ShowMessage('Egy elsz�mol�sban csak egy partner szerepelhet!');
       Exit;
     end;
    if not memszamol.Locate('termek_nev',mjegyekQ.FieldByName('termek_nev').AsString,[]) then
     begin
       ShowMessage('Egy elsz�mol�sban csak egy term�ny szerepelhet!');
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
    memszamolnedvlevon.value:=nedvesseg_vesztes_tomege;//sz�molni
    memszamoltisztasag.value:=mjegyekQ.FieldByName('tisztasag').value;
    memszamoltisztasaglevon.value:=szemet_tomeg;//sz�molni
    memszamoltortszaz.value:=mjegyekQ.FieldByName('tortszaz').value;
    memszamolszNetto.value:=mjegyekQ.FieldByName('szNetto').value;
    memszamolszart_tort.value:=szaritott_tort_szemek_tomege;//t�rt szemek t�mege sz�molni
    memszamoltavdat.asString:=mjegyekQ.FieldByName('tavdatum').AsString;
    memszamolszaritasra_kiad.value:=tisztitott_nyers_netto_tomege;//mjegyekQ.FieldByName('netto').value-StrToFloat(tisztasag);//netto-szem�t t�meg sz�molni
    memszamolszar_hofok.value:=0;
    memszamolszall_km.value:=0;
    memszamol.Post;
  end;

end;

procedure TMjegyekF.mlistaGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
try
 {if (button= mbRight) and (mlistaGrid.MouseCoord(X,Y).Y=0)then              //ha jobb klikk �s title k�ldi(0 az Y) akkor erre sz�r
  begin
    {Col_neve:=(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].FieldName;
   col_felirat:=(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].Title.Caption;
   lblmire.Caption:=col_felirat;
   edszures.SetFocus; }
 // end;
  if (button= mbRight) and (mlistaGrid.MouseCoord(X,Y).Y=0)then                //ha bal klikk �s title k�ldi akkor sort
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
     cbxrendsz.Items.Add('*Nincs sz�rve*');
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

  //�csi
  tt:=round((br-tr-(round((br-tr)*((tisz+tsz)/100.0)))));

 // sze:=1-((tisz+tsz+ned)/100);
  //szu:=1-((tisz+tsz+aned)/100);
  //�csi
  tisztitott_tomeg:=round((br-tr-(round((br-tr)*((tisz+tsz)/100.0)))));
  sze:=1-(ned/100);
  szu:=1-(aned/100);
  levsz:=sze/szu;
      if mjegyekQ.FieldByName('kukorica').AsBoolean then
       begin
         sznetto :=Round((tisztitott_tomeg*(1-ned/100))/(1-aned/100));
         nedvelvon:=FloatToStr(Round(tisztitott_tomeg-sznetto));
         //sz�raz t�rt szemek t�mege
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
    if not chkstorno.Checked then  SQL.Add(' and storno=""');
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
