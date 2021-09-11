unit rak_szall_listU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  JvExControls, JvDBLookup, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid,frxClass, frxDBSet;

type
  Trak_szall_listF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    piKezdoDatum: TDateTimePicker;
    Label1: TLabel;
    piBefejezoDatum: TDateTimePicker;
    Label2: TLabel;
    Button2: TButton;
    btnnzomtatas: TButton;
    btnstorno: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    k_partnerlookup: TJvDBLookupCombo;
    k_tarololookup: TJvDBLookupCombo;
    f_partnerlookup: TJvDBLookupCombo;
    f_tarololookup: TJvDBLookupCombo;
    termeklookup: TJvDBLookupCombo;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Panel2: TPanel;
    rakszallQ: TFDQuery;
    rakszallQDs: TDataSource;
    rakszallQID: TFDAutoIncField;
    rakszallQSorszam: TWideStringField;
    rakszallQEv_ssz: TIntegerField;
    rakszallQEazon: TWideStringField;
    rakszallQStorno: TWideStringField;
    rakszallQK_ID: TIntegerField;
    rakszallQK_Kod: TWideStringField;
    rakszallQK_Nev: TWideStringField;
    rakszallQK_Cim: TWideStringField;
    rakszallQk_tarolo_id: TIntegerField;
    rakszallQk_tarolo_nev: TWideStringField;
    rakszallQV_ID: TIntegerField;
    rakszallQV_Kod: TWideStringField;
    rakszallQV_Nev: TWideStringField;
    rakszallQV_Cim: TWideStringField;
    rakszallQv_tarolo_id: TIntegerField;
    rakszallQv_tarolo_nev: TWideStringField;
    rakszallQdatum: TDateField;
    rakszallQFelhasznalo: TWideStringField;
    rakszallQmegjegyzes: TWideStringField;
    k_partnerQ: TFDQuery;
    k_partnerQDs: TDataSource;
    k_taroloQ: TFDQuery;
    f_taroloQDs: TDataSource;
    k_taroloQDs: TDataSource;
    f_taroloQ: TFDQuery;
    f_partnerQDs: TDataSource;
    f_partnerQ: TFDQuery;
    TermekekQ: TFDQuery;
    TermekekQDs: TDataSource;
    chktort: TCheckBox;
    rakszallQrt_id: TFDAutoIncField;
    rakszallQtermek_id: TIntegerField;
    rakszallQtermek_kod: TWideStringField;
    rakszallQtermek_nev: TWideStringField;
    rakszallQmennyiseg: TBCDField;
    rakszallQtort: TBooleanField;
    TermekekQid: TFDAutoIncField;
    TermekekQkod: TWideStringField;
    TermekekQnev: TWideStringField;
    frxDBDRakszall: TfrxDBDataset;
    frxrakszall_lista: TfrxReport;
    procedure btnkilepesClick(Sender: TObject);
    procedure piKezdoDatumChange(Sender: TObject);
    procedure btnnzomtatasClick(Sender: TObject);
    procedure btnstornoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure szures;
  public
    { Public declarations }
   procedure indit;
  end;

var
  rak_szall_listF: Trak_szall_listF;
  indul:Boolean;
implementation
  uses AU,NezetU;
{$R *.dfm}

procedure Trak_szall_listF.btnkilepesClick(Sender: TObject);
begin
 close
end;

procedure Trak_szall_listF.btnstornoClick(Sender: TObject);
begin
 if(rakszallQStorno.AsString<>'') then exit;
 btnnzomtatasClick(btnstorno)
end;

procedure Trak_szall_listF.Button2Click(Sender: TObject);
begin
  if rakszallQ.IsEmpty then exit;
   with NezetF do
     begin
      rep_valaszt(frxrakszall_lista,1);
      if nyomtatva then valasztott.Print;
      valasztott.Preview:=nil;
     end;
end;

procedure Trak_szall_listF.btnnzomtatasClick(Sender: TObject);
begin
 indul:=true;
 af.rktetm.Active:=false;
 af.rktetm.EmptyTable;
 af.rktetm.Active:=true;
 with af.q1 do //tételek másolása nyomtatáshoz
  begin
    Close;
    sql.clear;
    open('select * from rak_szall_tet where rk_id='+rakszallQID.AsString);
    First;
    while not eof do
     begin
       af.rktetm.AppendRecord([FieldByName('termek_id').AsInteger,
       FieldByName('termek_kod').AsString,FieldByName('termek_nev').AsString,
       FieldByName('mennyiseg').Value,FieldByName('tort').AsBoolean]);
       next
     end;
     close
  end;
  //nyomtatva:=false;
  with aF.frxrakszall do
   begin
     TfrxMemoView(FindObject('frxbizszam')).Text:=rakszallQSorszam.AsString;
     if (Sender=btnstorno)or(rakszallQStorno.AsString<>'') then TfrxMemoView(FindObject('frxcim')).Text:='Storno raktárközi szállítólevél'
     else TfrxMemoView(FindObject('frxcim')).Text:='Raktárközi szállítólevél';
     TfrxMemoView(FindObject('frxdatum')).Text:=FormatDateTime('YYYY.MM.DD',rakszallQdatum.AsDateTime);
     TfrxMemoView(FindObject('frxk_partner')).Text:=rakszallQK_Nev.AsString;
     TfrxMemoView(FindObject('frxk_tarolo')).Text:=rakszallQk_tarolo_nev.AsString;
     TfrxMemoView(FindObject('frxf_partner')).Text:=rakszallQV_Nev.AsString ;
     TfrxMemoView(FindObject('frxf_tarolo')).Text:=rakszallQv_tarolo_nev.AsString;
    with NezetF do
     begin
      nyomtatva:=False;
      rep_valaszt(aF.frxrakszall,1);
      if nyomtatva then valasztott.Print;
      valasztott.Preview:=nil;
     end;
    { PrepareReport(true);
     NezetF.valasztott:=aF.frxrakszall;
     nezetF.Showmodal;}
   end;
   indul:=false; //csak eddig kell
   if not NezetF.nyomtatva then  exit
   else
   if Sender=btnstorno then
    begin
      with aF.Q1 do
       begin
         close;
         sql.Clear;
         SQL.Add(' UPDATE rak_szall set Storno=:p0 WHERE id=:p1');
         Params[0].AsString:='STORNO';
         Params[1].AsInteger:=rakszallQID.AsInteger;
         ExecSQL
       end;
       //tételek visszakészletezése
       with af.rktetm do
        begin
          First;
          while not eof do
           begin
            aF.keszletez(af.rktetmtermek_id.AsInteger,rakszallQk_tarolo_id.AsInteger,
             rakszallQK_ID.AsInteger,af.rktetmtort.AsBoolean.ToInteger,af.rktetmmenny.Value);
            aF.keszletez(af.rktetmtermek_id.AsInteger,rakszallQv_tarolo_id.AsInteger,
             rakszallQV_ID.AsInteger,af.rktetmtort.AsBoolean.ToInteger,-1*af.rktetmmenny.Value);
           next;
           end;
        end;
    end;
 with NezetF do
   begin
    if nyomtatva then valasztott.Print;
    valasztott.Preview:=nil;
   end;
 af.rktetm.Active:=false;
 af.rktetm.EmptyTable;
 rakszallQ.Refresh
end;

procedure Trak_szall_listF.indit;
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
 pikezdodatum.DateTime:=now;
 piBefejezoDatum.DateTime:=now;
 chktort.Checked:=false;
 af.rktetm.Active:=false;
 af.rktetm.EmptyTable;
 af.rktetm.Active:=true;
 indul:=False;
 szures;
 ShowModal
end;

procedure Trak_szall_listF.piKezdoDatumChange(Sender: TObject);
begin
 szures
end;

procedure Trak_szall_listF.szures;
begin
 if indul then exit;

 with rakszallQ do
  begin
    Close;
    SQL.Clear;
    sql.add('SELECT * from rak_szall_lista_nezet ');
    SQL.Add(' WHERE datum>=:kd and datum<=:vd and tort=:tort ');
    if k_partnerlookup.KeyValue<>'0' then SQL.Add(' and K_ID='+IntToStr(k_partnerlookup.KeyValue));
    if f_partnerlookup.KeyValue<>'0' then SQL.Add(' and V_ID='+IntToStr(f_partnerlookup.KeyValue));
    if k_tarololookup.KeyValue<>'0' then SQL.Add(' and K_TAROLO_ID='+ IntToStr(k_tarololookup.KeyValue));
    if f_tarololookup.KeyValue<>'0' then SQL.Add(' and v_TAROLO_ID='+IntToStr(f_tarololookup.KeyValue));
    if termeklookup.KeyValue<>'0' then SQL.Add(' and termek_ID='+IntToStr(termeklookup.KeyValue));
    ParamByName('kd').AsDate:=piKezdoDatum.Date;
    ParamByName('vd').AsDate:=piBefejezoDatum.Date;
    ParamByName('tort').AsBoolean:=chktort.Checked;
    open;
  end;
end;

end.
