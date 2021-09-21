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
  Vcl.Samples.Spin,frxClass, Vcl.Mask, JvExMask, JvSpin;

type
  TMjegyF = class(TForm)
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
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
    Panel1: TPanel;
    lblpartner: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    cbxirany: TComboBox;
    btnMentes: TButton;
    partnerlookup: TJvDBLookupCombo;
    edszallev: TEdit;
    termeklookup: TJvDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    spBrutto: TSpinEdit;
    sptara: TSpinEdit;
    spnetto: TSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    lblelsodat: TLabel;
    Label12: TLabel;
    lblmasdat: TLabel;
    lblelsoido: TLabel;
    lblmasido: TLabel;
    edmegjegy: TEdit;
    Label8: TLabel;
    Button1: TButton;
    btn1: TButton;
    kezelolookup: TJvDBLookupCombo;
    Label13: TLabel;
    Button2: TButton;
    kep1: TImage;
    kep2: TImage;
    Label14: TLabel;
    Label15: TLabel;
    cbxktip: TComboBox;
    chknincspot: TCheckBox;
    lblekaer: TLabel;
    edekaer: TEdit;
    cbxrendszam1: TComboBox;
    cbxrendszam2: TComboBox;
    chkrogzitett: TCheckBox;
    btnTaramegadas: TButton;
    pnlmezgaz: TPanel;
    spalapnedv: TJvSpinEdit;
    spnedv: TJvSpinEdit;
    spolaj: TJvSpinEdit;
    sptisztasag: TJvSpinEdit;
    sphekto: TJvSpinEdit;
    spfeherje: TJvSpinEdit;
    speses: TJvSpinEdit;
    chkkerekites: TCheckBox;
    chkkuk: TCheckBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    lblegysegtomeg: TLabel;
    sptort: TJvSpinEdit;
    Label24: TLabel;
    spegysegtomeg: TJvSpinEdit;
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
    Label26: TLabel;
    cbxbuzaminoseg: TComboBox;
    taroloklookup: TJvDBLookupCombo;
    Label27: TLabel;
    Button3: TButton;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    lblsznetto: TLabel;
    Spsznetto: TSpinEdit;
    edSample: TEdit;
    lblMintaID: TLabel;
    btnNyomtatas: TButton;
    jvmemparoskezi: TBooleanField;
    chkelso_kezi: TCheckBox;
    chkmasodik_kezi: TCheckBox;
    tulajlookup: TJvDBLookupCombo;
    tulajT: TFDTable;
    tulajTID: TFDAutoIncField;
    tulajTNev: TWideStringField;
    tulajTCim: TWideStringField;
    tulajTAdoszam: TWideStringField;
    tulajTkuj: TWideStringField;
    tulajTktj: TWideStringField;
    tulajTElotag: TWideStringField;
    tulajDs: TDataSource;
    Label28: TLabel;
    partnerlookup2: TJvDBLookupCombo;
    lblpartner2: TLabel;
    chkpartnerekegy: TCheckBox;
    Partnerlist2Ds: TDataSource;
    Partnerlist2: TFDQuery;
    btnekaer: TButton;
    procedure JvDBUltimGrid1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMentesClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
    procedure Button3Click(Sender: TObject);
    procedure spnedvExit(Sender: TObject);
    procedure edSampleChange(Sender: TObject);
    procedure spnedvChange(Sender: TObject);
    procedure cbxiranyChange(Sender: TObject);
    procedure partnerlookup2Change(Sender: TObject);
    procedure Panel1Click(Sender: TObject);


  private
    { Private declarations }
    procedure kepek_betoltese;
    procedure uresre;
    procedure jeloles;
    procedure nagykep(im:TImage);
    procedure rendszam_combok;
    procedure szazalek;
  public
    { Public declarations }
    procedure masol(kd,vd:TDate;friss:Boolean);
  end;

var
  MjegyF: TMjegyF;
  brutto,tara,netto,sznetto:integer;
  k1,k2:string;
  br,tr,aned,ned,tisz:single;
  nedvesseg,tisztasag,nedvelvon: string;
  ttom:Real;
implementation
  uses AU,TermekekU,PartnerekU, NezetU, MerlegkezelokU,nagykepU, RendszamokU,
  tarolokU;
{$R *.dfm}

{ TmjegyF }
procedure TMjegyF.btn1Click(Sender: TObject);
begin
 try
   TermekekF.ShowModal
 finally
   termeklist.Refresh
 end;
end;

procedure TMjegyF.btnTaramegadasClick(Sender: TObject);
begin
  RendszamokF.ShowModal;
  rendszam_combok
end;

procedure TMjegyF.Button1Click(Sender: TObject);
begin
 try
   PartnerekF.ShowModal
 finally
   Partnelist.Refresh
 end;
end;

procedure TMjegyF.Button2Click(Sender: TObject);
begin
 try
   MerlegkezelokF.ShowModal
 finally
   aF.merlegkezQ.Close;
   aF.merlegkezQ.Open();
 end;
end;

procedure TMjegyF.Button3Click(Sender: TObject);
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
   end;
 1:begin //beszállítás
    lblpartner.Caption:='Átadó:';
    partnerlookup.Enabled:=True;
    lblpartner2.Caption:='Átvevõ:';
    partnerlookup2.Enabled:=true;
   end;
 2:begin //kiszállítás
    lblpartner.Caption:='Eladó:';
    partnerlookup.Enabled:=true;
    lblpartner2.Caption:='Vevõ:';
    partnerlookup2.Enabled:=True;
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
        Panel1.Height:=280;
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
        Panel1.Height:=240;
      end;
   end;
begin
  aF.merlegkezQ.First;
  kezelolookup.KeyValue:=aF.merlegkezQ.FieldByName('id').AsInteger;
  rendszam_combok;
  pnlmezgaz.Visible:=mezgaz;
  lblsznetto.Visible:=mezgaz;
  Spsznetto.Visible:=mezgaz;
  lblMintaID.Visible:=(nedvesseg_beolvasasa) and (mezgaz);
  edSample.Visible:=(nedvesseg_beolvasasa) and (mezgaz);
  edSample.Text:='';
  lblekaer.Visible:=ekaer_felhasz<>'';
  edekaer.Visible:=ekaer_felhasz<>'';
 // magassagok;
end;

procedure TMjegyF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Partnelist.Close;
  termeklist.Close;
  aF.merlegkezQ.Close;
  tulajT.close;
end;

procedure TMjegyF.jeloles;
begin
  jvmemparos.Edit;
  jvmemparosparosit.AsBoolean:=not jvmemparosparosit.AsBoolean;
  jvmemparos.Post;
end;

procedure TMjegyF.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  jeloles;
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
          chkelso_kezi.Checked:=FieldByName('kezi').AsBoolean;
         end;
        if (t1<>0)and (t2=0)and (rc<>RecNo) then
         begin
          t2:=FieldByName('tomeg').AsInteger;
          lblmasdat.Caption:=FieldByName('datum').AsString;
          lblmasido.Caption:=FieldByName('ido').AsString;
          chkmasodik_kezi.Checked:=FieldByName('kezi').AsBoolean;
         end;
        cbxrendszam1.Text:=jvmemparos.FieldByName('rendszam').AsString;
        cbxrendszam2.Text:=jvmemparos.FieldByName('rendszam2').AsString;
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
  nagykep(Sender as TImage);
end;

procedure TMjegyF.kepek_betoltese;
begin
 // if (k1=jvmemparoskepnev1.AsString)and (k2=jvmemparoskepnev2.AsString) then exit;//ne olvassa be újra
  kep1.Picture:=nil;
  kep2.Picture:=nil;
  k1:=jvmemparoskepnev1.AsString;
  k2:=jvmemparoskepnev2.AsString;
  if FileExists(k1) then kep1.Picture.LoadFromFile(k1);
  if FileExists(k2) then kep2.Picture.LoadFromFile(k2);
  Label14.Visible:=kep1.Picture=nil;
  Label15.Visible:=kep2.Picture=nil;
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
  uresre
end;

procedure TMjegyF.btnMentesClick(Sender: TObject);
var sorsz,pcime,egyedi:String;
    ujid:integer;
    keszmenny:Extended;
 procedure elokeszit;
   begin
      with aF.frxmerleg do
       begin

         TfrxMemoView(FindObject('memcim')).Text:='Mérlegjegy';
         TfrxMemoView(FindObject('frxpsz')).Text:='1. példány';
         TfrxMemoView(FindObject('frxekaer')).Text:=edekaer.Text;
         TfrxMemoView(FindObject('memtulaj')).Text:=tulajTNev.AsString;
         TfrxMemoView(FindObject('memtulajcime')).Text:=tulajTcim.AsString;
         //TfrxMemoView(FindObject('memadosz')).Text:=tulajTadoszam.AsString;
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
        // TfrxMemoView(FindObject('memewc')).Text:='';
         TfrxMemoView(FindObject('memalapnedv')).Text:=spalapnedv.Value.ToString+' %';
         TfrxMemoView(FindObject('memnedv')).Text:=spnedv.Value.ToString+' %';
         TfrxMemoView(FindObject('memtisztasag')).Text:=sptisztasag.Value.ToString+' %';
         TfrxMemoView(FindObject('memtort')).Text:=sptort.Value.ToString+' %';

         TfrxMemoView(FindObject('memnedvlevon')).Text:=nedvelvon+' kg';
         TfrxMemoView(FindObject('memnedveszt')).Text:=nedvesseg+' kg';
         TfrxMemoView(FindObject('memszemetlevon')).Text:=tisztasag+' kg';
         TfrxMemoView(FindObject('memtorttomeg')).Text:=IntToStr(Round(ttom))+' kg';
         TfrxMemoView(FindObject('memsznetto')).Text:=Spsznetto.Value.ToString+' kg';
         TfrxMemoView(FindObject('memegysar')).Text:=termeklist.FieldByName('ar').AsString+' Ft';
         TfrxReportSummary(FindObject('ReportSummary1')).Visible:=duplex_mjegy;
         with NezetF do
           begin
            rep_valaszt(aF.frxmerleg,1);
           end;
        { PrepareReport(true);
         NezetF.valasztott:=aF.frxmerleg;
         nezetF.Showmodal;}
         //Report.Preview;
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
 if kezelolookup.KeyValue='!' then
  begin
    ShowMessage('A mérlegkezelõt meg kell adni!');
    exit
  end;
 if cbxirany.ItemIndex<1 then
  begin
    ShowMessage('A mérés irányát meg kell adni!');
    exit
  end;
 if (cbxrendszam1.Text='')or(cbxrendszam2.Text='') then
  begin
    ShowMessage('A rendszámokat meg kell adni!');
    exit
  end;
 if (spBrutto.Value<=0)or(sptara.Value<=0) then
  begin
    ShowMessage('Nincs kiválasztva 2 mérés vagy nincs tára rögzített mérésnél!');
    exit
  end;
  if taroloklookup.KeyValue='!' then
  begin
    ShowMessage('A tárolót meg kell adni!');
    exit
  end;
  sorsz:=af.bizszam(6,'0','merlegjegy',tulajTElotag.AsString,tulajTID.AsInteger);
 // pcime:=cim_2;
  //nyomtatva:=false;
  szazalek;
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

  egyedi:=eazon_letrehozasa;//ez alapján kérem vissza mentés után a sorszámot

  with aF.Q2 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO merlegjegy');
      SQL.Add('(storno,rendszam,rendszam2,p_id,p_kod,p_nev,p_cim,');
      SQL.Add('termek_id,termek_kod,termek_nev,Termek_afa,termek_ar,');
      SQL.Add('szallitolev,megjegyzes,tomegbe,');
      SQL.Add('tomegki,erkdatum,erkido,tavdatum,tavido,felhasznalo,irany,');
      SQL.Add('brutto,tara,netto,SzNetto,merlegelo,kuj,ktj,eazon,ekaer,');
      SQL.Add('alapnedv,nedv,tisztasag,tortszaz,feherje,olaj,esesszam,hekto,');
      SQL.Add('egysegtomeg,kerekites,kukorica,buzaminoseg,mennyiseg,tarolasi_dij, ');
      SQL.Add('szaritasi_dij,tisztitasi_dij,tarolo_id,tarolo,elso_kezi,masodik_kezi,');
      SQL.Add('tul_id,tul_nev,tul_cim,tul_adoszam,tul_kuj,tul_ktj,tul_elotag,');
      SQL.Add('p2_id,p2_kod,p2_nev,p2_cim,p2_kuj,p2_ktj)  ');
      SQL.Add('VALUES(:storno,:rendszam,:rendszam2,:p_id,:p_kod,:p_nev,:p_cim,');
      SQL.Add(':termek_id,:termek_kod,:termek_nev,:Termek_afa,:termek_ar,');
      SQL.Add(':szallitolev,:megjegyzes,:tomegbe,');
      SQL.Add(':tomegki,:erkdatum,:erkido,:tavdatum,:tavido,:felhasznalo,');
      SQL.Add(':irany,:brutto,:tara,:netto,:SzNetto,:merlegelo,:kuj,:ktj,:eazon,:ekaer,');
      SQL.Add(':alapnedv,:nedv,:tisztasag,:tortszaz,:feherje,:olaj,:esesszam,:hekto,');
      SQL.Add(':egysegtomeg,:kerekites,:kukorica,:buzaminoseg,:mennyiseg,:tarolasi_dij, ');
      SQL.Add(':szaritasi_dij,:tisztitasi_dij,:tarolo_id,:tarolo,:elso_kezi,:masodik_kezi,');
      SQL.Add(':tul_id,:tul_nev,:tul_cim,:tul_adoszam,:tul_kuj,:tul_ktj,:tul_elotag,');
      SQL.Add(':p2_id,:p2_kod,:p2_nev,:p2_cim,:p2_kuj,:p2_ktj)  ');
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
      if spEgysegtomeg.Value=1 then keszmenny:=spsznetto.Value
      else
      if chkkerekites.Checked then keszmenny:=Round(spszNetto.Value/spEgysegtomeg.Value)
      else keszmenny:=spszNetto.Value/spEgysegtomeg.Value;

      ParamByName('mennyiseg').AsFloat:=keszmenny;
      ParamByName('tarolasi_dij').value:=0;
      ParamByName('szaritasi_dij').value:=0;
      ParamByName('tisztitasi_dij').value:=0;
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
      sorsz:=mentett_sorsz_lekerese(egyedi);
      if Sender=btnNyomtatas then
      begin
        with NezetF.valasztott do//frissiti a bizszamot
         begin
            TfrxMemoView(FindObject('membizszam')).Text:=sorsz;
            PrepareReport(true);
         end;
       // aF.PDFExportmjegy.FileName:=pdfmappa+'\'+StringReplace(sorsz,'/','_',[rfReplaceAll]) +'.pdf';
       // aF.frxmerleg.Export(aF.PDFExportmjegy);
        NezetF.valasztott.Print;
        NezetF.valasztott.Preview:=nil;
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
     aF.psz_plusz(ujid);
     aF.ForgalomQ.Refresh;
     masol(0,0,true);
     rendszam_combok;
     uresre;
end;

procedure TMjegyF.nagykep(im: Timage);
begin
nagykepF.imgnagy.Picture:=im.Picture;
NagykepF.ShowModal;
end;

procedure TMjegyF.Panel1Click(Sender: TObject);
begin
//
end;

procedure TMjegyF.partnerlookup2Change(Sender: TObject);
begin
 if ActiveControl.Name='partnerlookup2' then
 if chkpartnerekegy.Checked then partnerlookup.KeyValue:=partnerlookup2.KeyValue;
end;

procedure TMjegyF.partnerlookupChange(Sender: TObject);
begin
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

procedure TMjegyF.szazalek;
var tt,sze,szu,levsz,tsz:Extended;
begin
  nedvesseg:='0';
  tisztasag:='0';
  nedvelvon:='0';

  br:=0;tr:=0;aned:=0;ned:=0;tisz:=0;tsz:=0;tt:=0;sze:=0;szu:=0;levsz:=0;
  tsz:=0;nedvesseg:='';tisztasag:='';ttom:=0;
  br := SpBrutto.Value;
  tr := Sptara.value;
  aned := SpAlapnedv.Value;
  ned := SpNedv.Value;
  tisz := Sptisztasag.Value;
  tsz:= Sptort.Value;

  nedvesseg := IntToStr(round((br-tr)*((ned-aned)/100.0)));
  tisztasag := IntToStr(round((br-tr)*((tisz)/100.0)));
  //tort szemek tomege
  ttom:=(round((br-tr)*(tsz/100.0)));
  //Öcsi
  tt:=round((br-tr-(round((br-tr)*((tisz+tsz)/100.0)))));

  sze:=1-((tisz+tsz+ned)/100);
  szu:=1-((tisz+tsz+aned)/100);
  levsz:=sze/szu;
      if chkkuk.Checked then
       begin
         Spsznetto.Value :=Round(levsz*tt);
         nedvelvon:=FloatToStr(Round((1-levsz)*tt));
       end
      else
       begin
         Spsznetto.Value := round(tt-(tt*(ned-aned))/100.0);
         nedvelvon:=FloatToStr(Round((ned-aned)*tt/100));
       end;

    if nedvesseg='' then nedvesseg:='0';
    if nedvelvon='' then nedvelvon:='0';
    if tisztasag='' then tisztasag:='0';
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
end;

end.
