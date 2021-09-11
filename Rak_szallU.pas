unit Rak_szallU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, JvExControls, JvDBLookup,
  Vcl.ComCtrls, Vcl.Mask, JvExMask, JvSpin, Vcl.ExtCtrls, JvMemoryDataset,
  frxclass, frxDBSet;

type
  TRak_szallF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    btnmentes: TButton;
    btnnyomtatas: TButton;
    sppsz: TJvSpinEdit;
    Datuma: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    k_partnerlookup: TJvDBLookupCombo;
    k_tarololookup: TJvDBLookupCombo;
    f_partnerlookup: TJvDBLookupCombo;
    f_tarololookup: TJvDBLookupCombo;
    termeklookup: TJvDBLookupCombo;
    chktort: TCheckBox;
    sp_k_keszlet: TJvSpinEdit;
    sp_f_keszlet: TJvSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btnfelvesz: TButton;
    Label10: TLabel;
    spmenny: TJvSpinEdit;
    JvDBUltimGrid1: TJvDBUltimGrid;
    k_partnerQ: TFDQuery;
    f_partnerQ: TFDQuery;
    k_partnerQDs: TDataSource;
    f_partnerQDs: TDataSource;
    k_taroloQ: TFDQuery;
    f_taroloQ: TFDQuery;
    f_taroloQDs: TDataSource;
    k_taroloQDs: TDataSource;
    TermekekQ: TFDQuery;
    TermekekQDs: TDataSource;
    Panel3: TPanel;
    Button2: TButton;
    procedure k_partnerlookupChange(Sender: TObject);
    procedure btnkilepesClick(Sender: TObject);
    procedure btnfelveszClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnmentesClick(Sender: TObject);
    procedure spmennyKeyPress(Sender: TObject; var Key: Char);
    procedure btnnyomtatasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure indit;
  end;

var
  Rak_szallF: TRak_szallF;
  indul:Boolean;
implementation
  uses AU,NezetU;
{$R *.dfm}

procedure TRak_szallF.btnkilepesClick(Sender: TObject);
begin
 close;
end;

procedure TRak_szallF.btnmentesClick(Sender: TObject);
var k:Extended;
    ujid:Integer;
    sorsz,egyedi:String;

  function eazon_letrehozasa:string;
     begin
       Result:=StringReplace(StringReplace(DateTimeToStr(Now), '.', '', [rfReplaceAll]), ':', '', [rfReplaceAll])+IntToStr(round(100000));
     end;

    function mentett_sorsz_lekerese(ea:string):String;
     begin
       with aF.sszQ do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT id,Sorszam from rak_szall WHERE Eazon='+#39+ea+#39);
          Open();
          result:=FieldByName('Sorszam').AsString;
          ujid:=FieldByName('id').AsInteger;
          Close
        end;

     end;

  procedure elokeszit;
   begin
      with aF.frxrakszall do
       begin
         TfrxMemoView(FindObject('frxbizszam')).Text:=sorsz;
         TfrxMemoView(FindObject('frxcim')).Text:='Raktárközi szállítólevél';
         TfrxMemoView(FindObject('frxdatum')).Text:=FormatDateTime('YYYY.MM.DD',Datuma.Date);
         TfrxMemoView(FindObject('frxk_partner')).Text:=k_partnerlookup.DisplayValue;
         TfrxMemoView(FindObject('frxk_tarolo')).Text:=k_tarololookup.DisplayValue;
         TfrxMemoView(FindObject('frxf_partner')).Text:=f_partnerlookup.DisplayValue;
         TfrxMemoView(FindObject('frxf_tarolo')).Text:=f_tarololookup.DisplayValue;
          with NezetF do
           begin
            rep_valaszt(aF.frxrakszall,1);
           end;
       end;
    end;
begin
 if af.rktetm.IsEmpty then
  begin
   showmessage('Elõször vigyen fel tételeket!');
   Exit
  end;
 if k_partnerlookup.KeyValue=0 then
  begin
   showmessage('Válassza ki a kiadó partnert!');
   Exit
  end;
 if k_tarololookup.KeyValue=0 then
  begin
   showmessage('Válassza ki a kiadó tárolót!');
   Exit
  end;
 if f_partnerlookup.KeyValue=0 then
  begin
   showmessage('Válassza ki a fogadó partnert!');
   Exit
  end;
 if f_tarololookup.KeyValue=0 then
  begin
   showmessage('Válassza ki a fogadó tárolót!');
   Exit
  end;
  //mennyiségek ellenõrzése
  with aF.rktetm do
   begin
    first;
    while not eof do
     begin
       k:=aF.partner_kesz(af.rktetmtermek_id.AsInteger, k_tarololookup.KeyValue,k_partnerlookup.KeyValue,af.rktetmtort.Value.ToInteger);
       if af.rktetmmenny.Value>k then
        if MessageDlg('Kiadó partner készlete kevesebb, mint a kiadandó mennyiség: '+af.rktetmtermek_nev.AsString +'  Folytatja?',
                       TMsgDlgType.mtconfirmation,mbYesNo,0)=7
        then abort;
       next
     end;
   end;
  sorsz:=af.bizszam(6,'0','rak_szall','',0); //csak a nyomtatasi kep miatt, nyom elott lekerem h biztos legyen

  if Sender=btnnyomtatas then
   begin
     nezetF.nyomtatva:=false;
     elokeszit;
     if not NezetF.nyomtatva then  exit;
   end;

  egyedi:=eazon_letrehozasa;//ez alapján kérem vissza mentés után a sorszámot
   with af.q2 do
    begin
      close;
      sql.Clear;
      SQL.Add('INSERT INTO rak_szall (eazon,storno,k_id,k_kod,k_nev,k_cim,k_tarolo_id,k_tarolo_nev, ');
      SQL.Add('v_id,v_kod,v_nev,v_cim,v_tarolo_id,v_tarolo_nev,datum,felhasznalo,megjegyzes)');
      SQL.Add('VALUES(');
      SQL.Add(':eazon,:storno,:k_id,:k_kod,:k_nev,:k_cim,:k_tarolo_id,:k_tarolo_nev, ');
      SQL.Add(':v_id,:v_kod,:v_nev,:v_cim,:v_tarolo_id,:v_tarolo_nev,:datum,:felhasznalo,:megjegyzes)');
      ParamByName('eazon').AsString:=egyedi;
      ParamByName('storno').AsString:='';
      ParamByName('k_id').AsInteger:=k_partnerlookup.KeyValue;
      ParamByName('k_kod').Asstring:=k_partnerQ.FieldByName('kod').AsString;
      ParamByName('k_nev').Asstring:=k_partnerQ.FieldByName('nev').AsString;
      ParamByName('k_cim').Asstring:=k_partnerQ.FieldByName('cim').AsString;
      ParamByName('k_tarolo_id').AsInteger:=k_tarololookup.KeyValue;
      ParamByName('k_tarolo_nev').Asstring:=k_taroloQ.FieldByName('nev').AsString;
      ParamByName('v_id').AsInteger:=f_partnerlookup.KeyValue;
      ParamByName('v_kod').Asstring:=f_partnerQ.FieldByName('kod').AsString;
      ParamByName('v_nev').Asstring:=f_partnerQ.FieldByName('nev').AsString;
      ParamByName('v_cim').Asstring:=f_partnerQ.FieldByName('cim').AsString;
      ParamByName('v_tarolo_id').AsInteger:=f_tarololookup.KeyValue;
      ParamByName('v_tarolo_nev').Asstring:=f_taroloQ.FieldByName('nev').AsString;
      ParamByName('datum').AsDate:=Datuma.Date;
      ParamByName('felhasznalo').Asstring:=felhnev;
      ParamByName('megjegyzes').Asstring:='';
      ExecSQL;
      sorsz:=mentett_sorsz_lekerese(egyedi);
      if Sender=btnnyomtatas then
      with NezetF.valasztott do//frissiti a bizszamot
       begin
          TfrxMemoView(FindObject('frxizszam')).Text:=sorsz;
          PrepareReport(true);
          print
       end;
       //tetelek mentese es keszletezes
      with aF.rktetm do
       begin
        first;
        while not aF.rktetm.eof do
         begin
           aF.keszletez(af.rktetmtermek_id.AsInteger,k_tarololookup.KeyValue,
           k_partnerlookup.KeyValue,af.rktetmtort.AsBoolean.ToInteger,-1*af.rktetmmenny.Value);
           aF.keszletez(af.rktetmtermek_id.AsInteger,f_tarololookup.KeyValue,
           f_partnerlookup.KeyValue,af.rktetmtort.AsBoolean.ToInteger,af.rktetmmenny.Value);
           Af.Q2.close;
           af.Q2.sql.Clear;
           af.Q2.SQL.Add('INSERT into rak_szall_tet (rk_id,termek_id,termek_kod,termek_nev,mennyiseg,tort)');
           af.Q2.SQL.Add('VALUES (:rk_id,:termek_id,:termek_kod,:termek_nev,:mennyiseg,:tort)');
           af.Q2.ParamByName('rk_id').AsInteger:=ujid;
           af.Q2.ParamByName('termek_id').AsInteger:=aF.rktetmtermek_id.AsInteger;
           af.Q2.ParamByName('termek_kod').Asstring:=af.rktetmtermek_kod.AsString;
           af.Q2.ParamByName('termek_nev').AsString:=af.rktetmtermek_nev.AsString;
           af.Q2.ParamByName('mennyiseg').value:=af.rktetmmenny.Value;
           af.Q2.ParamByName('tort').asboolean:=af.rktetmtort.AsBoolean;
           af.Q2.ExecSQL;
           aF.rktetm.next
         end;
       end;
    end;
   close
end;

procedure TRak_szallF.btnnyomtatasClick(Sender: TObject);
begin
 btnmentesClick(btnnyomtatas)
end;

procedure TRak_szallF.btnfelveszClick(Sender: TObject);
begin
 if termeklookup.KeyValue=0 then
  begin
    ShowMessage('Válasszon terméket!');
    Exit
  end;
 if spmenny.Value<=0 then
  begin
    ShowMessage('Adja meg a mennyiséget!');
    Exit
  end;
  if af.rktetm.Locate('termek_id;tort',VarArrayOf([TermekekQ.FieldByName('id').AsInteger,chktort.Checked]),[]) then
   begin
    ShowMessage('Ezt a terméket már felvitte a tételek közé!');
    Exit
   end;

  af.rktetm.AppendRecord([TermekekQ.FieldByName('id').AsInteger,
  TermekekQ.FieldByName('kod').AsString,TermekekQ.FieldByName('nev').AsString,
  spmenny.Value,chktort.Checked]);
  spmenny.Value:=0;
end;

procedure TRak_szallF.Button2Click(Sender: TObject);
begin
 if MessageDlg('Biztosan törli ezt a tételt?',TMsgDlgType.mtConfirmation,mbYesNo,0)=7 then exit;
 af.rktetm.Delete
end;

procedure TRak_szallF.indit;
begin
 indul:=True;
 k_partnerQ.Open;
 k_partnerlookup.KeyValue:=0;
 k_taroloQ.Open;
 k_tarololookup.KeyValue:=0;
 f_partnerQ.Open;
 f_partnerlookup.KeyValue:=0;
 f_taroloQ.Open;
 f_tarololookup.KeyValue:=0;
 TermekekQ.Open;
 termeklookup.KeyValue:=0;
 sppsz.Value:=2;
 Datuma.DateTime:=now;
 chktort.Checked:=false;
 af.rktetm.Active:=false;
 af.rktetm.EmptyTable;
 af.rktetm.Active:=true;
 indul:=False;
 ShowModal
end;

procedure TRak_szallF.k_partnerlookupChange(Sender: TObject);
begin
if indul then exit;
sp_k_keszlet.Value:= aF.partner_kesz(termeklookup.KeyValue, k_tarololookup.KeyValue,k_partnerlookup.KeyValue,chktort.Checked.ToInteger);
sp_f_keszlet.Value:= aF.partner_kesz(termeklookup.KeyValue, f_tarololookup.KeyValue,f_partnerlookup.KeyValue,chktort.Checked.ToInteger)
end;

procedure TRak_szallF.spmennyKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then btnfelveszClick(self)
end;

end.
