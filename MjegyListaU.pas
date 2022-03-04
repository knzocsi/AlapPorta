unit MjegyListaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  frxClass, Vcl.Samples.Spin, JvExControls, JvDBLookup;

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
    JvDBUltimGrid1: TJvDBUltimGrid;
    mjegyekQ: TFDQuery;
    mjegyekQDs: TDataSource;
    Button3: TButton;
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
    procedure FormActivate(Sender: TObject);
    procedure btnListanyomtatasClick(Sender: TObject);
    procedure btnUjranyomtatasClick(Sender: TObject);
    procedure piKezdoDatumChange(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxrendszChange(Sender: TObject);
    procedure rendszamok_feloltese;
    procedure Button4Click(Sender: TObject);
    procedure piBefejezoDatumChange(Sender: TObject);
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
  uses au, NezetU,LibreExcelU;
{$R *.dfm}

{ TMjegyekF }

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
   with NezetF do
     begin
      rep_valaszt(aF.FrxmjegyList,1);
      if nyomtatva then valasztott.Print;
      valasztott.Preview:=nil;
     end;
  nyomtat:=false;
end;

procedure TMjegyekF.Button3Click(Sender: TObject);
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
 LibreExcelF.mezo_nevek(JvDBUltimGrid1,nil);
end;

procedure TMjegyekF.cbxrendszChange(Sender: TObject);
begin
if rfelt then exit;
szures
end;

procedure TMjegyekF.elokeszit(stfelirat: String);

  function jegyen_latszik(mezo:string):Boolean;
   begin
     Result:=false;
     with af.Q2 do
       begin
         Close;
         SQL.Clear;
         Open(' SELECT '+mezo+' from termek');
         Result:=Fields[0].AsBoolean;
         close
       end;
   end;

begin
 if mjegyekQ.IsEmpty then exit;
 AF.merlegjegy_tipus_betoltese;
 szazalek;
 nyomtat:=True;
 af.merlegjegy_mezgaz;//mi latszon
 AF.merlegjegy_tomeglevonas;// tömeg levonás
 with aF.frxmerleg do
   begin
     if stfelirat<>'' then TfrxMemoView(FindObject('memcim')).Text:=stfelirat+' '+LowerCase(TfrxMemoView(FindObject('memcim')).Text);
     //else   TfrxMemoView(FindObject('memcim')).Text:='Storno mérlegjegy';
     TfrxMemoView(FindObject('frxpsz')).Text:=IntToStr(mjegyekQ.FieldByName('psz').AsInteger+1)+'. példány';
     if duplex_mjegy then TfrxMemoView(FindObject('frxpsz2')).Text:=IntToStr(mjegyekQ.FieldByName('psz').AsInteger+2)+'. példány';
     if mjegyekQ.FieldByName('ekaer').AsString<>'' then
      begin
       TfrxMemoView(FindObject('frxekaer')).Text:=mjegyekQ.FieldByName('ekaer').AsString;
       TfrxMemoView(FindObject('frxekaerlbl')).Text:='EKÁER:';
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
          TfrxMemoView(FindObject('mempartner')).Text:='Átadó:';
          TfrxMemoView(FindObject('mempartner2')).Text:='Átvevõ:';
         end;
     'K':begin
          TfrxMemoView(FindObject('mempartner')).Text:='Eladó:';
          TfrxMemoView(FindObject('mempartner2')).Text:='Vevõ:';
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
     TfrxMemoView(FindObject('memnetto')).Text:=mjegyekQ.FieldByName('sznetto').AsString+' kg';
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
        if jegyen_latszik('b_nedv') then //nedvesseghez kapcsolodik
         begin
          TfrxMemoView(FindObject('memalapnedv')).Text:=mjegyekQ.FieldByName('alapnedv').AsString+' %';
          TfrxMemoView(FindObject('memnedv')).Text:=mjegyekQ.FieldByName('nedv').AsString+' %';
          TfrxMemoView(FindObject('memnedvlevon')).Text:=nedvelvon+' kg';
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
         if jegyen_latszik('b_tisztasag') then //szemet
          begin
           TfrxMemoView(FindObject('memtisztasag')).Text:=mjegyekQ.FieldByName('tisztasag').AsString+' %';
           TfrxMemoView(FindObject('memszemetlevon')).Text:=tisztasag+' kg';
          end
         else
          begin
           TfrxMemoView(FindObject('memtisztasag')).Text:='';
           TfrxMemoView(FindObject('memtisztasaglbl')).Text:='';
           TfrxMemoView(FindObject('memszemetlevon')).Text:='';
           TfrxMemoView(FindObject('memszemetlevonlbl')).Text:='';
          end;
         if jegyen_latszik('b_tort') then //tort szemek
          begin
           TfrxMemoView(FindObject('memtort')).Text:=mjegyekQ.FieldByName('tortszaz').AsString+' %';
           TfrxMemoView(FindObject('memtorttomeg')).Text:=IntToStr(Round(ttom))+' kg';
          end
          else
          begin
           TfrxMemoView(FindObject('memtort')).Text:='';
           TfrxMemoView(FindObject('memtortlbl')).Text:='';
           TfrxMemoView(FindObject('memtorttomeg')).Text:='';
           TfrxMemoView(FindObject('memtorttomeglbl')).Text:='';
          end;

     TfrxMemoView(FindObject('memsznetto')).Text:=mjegyekQ.FieldByName('sznetto').AsString+' kg';
     TfrxMemoView(FindObject('memegysar')).Text:=mjegyekQ.FieldByName('termek_ar').AsString+' Ft';
     TfrxMemoView(FindObject('memtomlevon')).Text:=mjegyekQ.FieldByName('levon_tomeg').AsString+' kg';
     TfrxMemoView(FindObject('memtomlevon_szoveg')).Text:=mjegyekQ.FieldByName('levon_szoveg').AsString;
     //csak azon állítsa ami valóban duplex, a szimplám más a neve/példányszámok miatt fontos
     if  TfrxReportSummary(FindObject('ReportSummary1'))<>nil then TfrxReportSummary(FindObject('ReportSummary1')).Visible:=duplex_mjegy;

     NezetF.rep_valaszt(aF.frxmerleg,1);
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
 szures;
end;

procedure TMjegyekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
termeklist.close;
Partnelist.close;
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
var tt,sze,szu,levsz,tsz:Extended;
begin
  nedvesseg:='0';
  tisztasag:='0';
  nedvelvon:='0';

  br:=0;tr:=0;aned:=0;ned:=0;tisz:=0;tsz:=0;tt:=0;sze:=0;szu:=0;levsz:=0;
  tsz:=0;nedvesseg:='';tisztasag:='';ttom:=0;
  br := mjegyekQ.FieldByName('Brutto').Value;
  tr := mjegyekQ.FieldByName('tara').Value;
  aned := mjegyekQ.FieldByName('alapnedv').Value;
  ned := mjegyekQ.FieldByName('nedv').Value;
  tisz := mjegyekQ.FieldByName('tisztasag').Value;
  tsz:= mjegyekQ.FieldByName('tortszaz').Value;

  nedvesseg := IntToStr(round((br-tr)*((ned-aned)/100.0)));
  tisztasag := IntToStr(round((br-tr)*((tisz)/100.0)));
  //tort szemek tomege
  ttom:=(round((br-tr)*(tsz/100.0)));
  //Öcsi
  tt:=round((br-tr-(round((br-tr)*((tisz+tsz)/100.0)))));

  sze:=1-((tisz+tsz+ned)/100);
  szu:=1-((tisz+tsz+aned)/100);
  levsz:=sze/szu;
      if mjegyekQ.FieldByName('kukorica').AsBoolean then
       begin
         sznetto :=Round(levsz*tt);
         nedvelvon:=FloatToStr(Round((1-levsz)*tt));
       end
      else
       begin
         sznetto := round(tt-(tt*(ned-aned))/100.0);
         nedvelvon:=FloatToStr(Round((ned-aned)*tt/100));
       end;

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
