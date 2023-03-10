unit TermekekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client,System.Win.ComObj,
  JvExMask, JvSpin, JvDBSpinEdit, JvExControls, JvDBLookup;

type
  TTermekekF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    termekgrid: TDBGrid;
    tbReszlet: TTabSheet;
    DBNavigator1: TDBNavigator;
    TermekT: TFDTable;
    TermekDS: TDataSource;
    lbl1: TLabel;
    dedKod: TDBEdit;
    lbl2: TLabel;
    dedNev: TDBEdit;
    btnImport: TButton;
    excelO: TOpenDialog;
    TermekTID: TFDAutoIncField;
    TermekTKod: TWideStringField;
    TermekTNev: TWideStringField;
    TermekTitj: TWideStringField;
    TermekTme: TWideStringField;
    TermekTar: TBCDField;
    TermekTafa: TBCDField;
    TermekTegysegtomeg: TBCDField;
    TermekTalapnedv: TBCDField;
    TermekTkerekites: TBooleanField;
    TermekTkukorica: TBooleanField;
    TermekTb_nedv: TBooleanField;
    TermekTb_feherje: TBooleanField;
    TermekTb_eses: TBooleanField;
    TermekTb_tisztasag: TBooleanField;
    TermekTb_tort: TBooleanField;
    TermekTb_olaj: TBooleanField;
    TermekTb_buzaminoseg: TBooleanField;
    TermekTb_hekto: TBooleanField;
    TermekTtipus_id: TIntegerField;
    DBEditj: TDBEdit;
    Label1: TLabel;
    DBEdMe: TDBEdit;
    Label2: TLabel;
    JvDBSpinAr: TJvDBSpinEdit;
    Label3: TLabel;
    JvDBSpinAfa: TJvDBSpinEdit;
    Label4: TLabel;
    JvDBSpegystomeg: TJvDBSpinEdit;
    Label5: TLabel;
    JvDBSpinAlapnedv: TJvDBSpinEdit;
    lblalapnedv: TLabel;
    dbchkkerekites: TDBCheckBox;
    DBChkKukorica: TDBCheckBox;
    DBChknedv: TDBCheckBox;
    DBChkfeherje: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBChktisztaság: TDBCheckBox;
    DBChktort: TDBCheckBox;
    DBChkolaj: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBChkhekto: TDBCheckBox;
    TermekTewc: TWideStringField;
    Label6: TLabel;
    dedewc: TDBEdit;
    Panel2: TPanel;
    Label7: TLabel;
    lblmire: TLabel;
    edszures: TEdit;
    lucTipus: TJvDBLookupCombo;
    Label8: TLabel;
    edTipus_id: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure TermekTAfterInsert(DataSet: TDataSet);
    procedure TermekTBeforeInsert(DataSet: TDataSet);
    procedure lbl1DblClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure TermekTBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edszuresChange(Sender: TObject);
    procedure termekgridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lucTipusChange(Sender: TObject);
    procedure pcListaReszletChange(Sender: TObject);
  private
    { Private declarations }
    procedure szures;
  public
    { Public declarations }
  end;

var
  TermekekF: TTermekekF;
  col_neve,col_felirat:String;
implementation
uses
  AU, kezdokeszletU;

{$R *.dfm}

procedure TTermekekF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TTermekekF.btnImportClick(Sender: TObject);
var fn:string;
    FExcel,FworkSheet: Variant;
    s, o: integer;
begin
  try
   excelo.execute;
  finally
   fn:=excelO.filename;
  end;
  if not FileExists(fn) then
   begin
     ShowMessage('A fájl nem létezik');
     exit;
   end;
  FExcel := CreateOleObject('Excel.Application');
  FExcel.Visible:=False;
  try
   FExcel.Workbooks.Open(fn);
   //FworkSheet:=FExcel.FworkSheet[1];
   FWorkSheet:=FExcel.WorkBooks[1].sheets[1];
  except
   ShowMessage('A fájl nem létezik');
   exit;
  end;
  s:=2;
  TermekT.DisableControls;
  while FworkSheet.Cells[s,1].text<>'' do
   begin
    // ShowMessage(FworkSheet.Cells[s,1].text);
     if not TermekT.Locate('kod',FworkSheet.cells[s,1],[]) then
      begin
        TermekT.Append;
        termekt.FieldByName('kod').AsString:=FworkSheet.cells[s,1];
        termekt.FieldByName('nev').AsString:=FworkSheet.cells[s,2];
        TermekT.Post
      end;
     inc(s);
   end;
  TermekT.EnableControls;
  FExcel.Quit;
  aF.KillTask('EXCEL.EXE');
  ShowMessage('Excel import végrehajtva');
  TermekT.Refresh
end;


procedure TTermekekF.termekgridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
try
 if (button= mbRight) and (termekGrid.MouseCoord(X,Y).Y=0)then              //ha jobb klikk és title küldi(0 az Y) akkor erre szûr
  begin
   Col_neve:=(Sender as TDBGrid).Columns[termekGrid.MouseCoord(X,Y).X-1].FieldName;
   col_felirat:=(Sender as TDBGrid).Columns[termekGrid.MouseCoord(X,Y).X-1].Title.Caption;
   lblmire.Caption:=col_felirat;
   edszures.SetFocus;
  end;
  if (button= mbleft) and (termekGrid.MouseCoord(X,Y).Y=0)then                //ha bal klikk és title küldi akkor sort
    af.rendez(TermekT,(Sender as TDBGrid).Columns[termekGrid.MouseCoord(X,Y).X-1].FieldName);
except
 //
end;
end;

procedure TTermekekF.edszuresChange(Sender: TObject);
begin
 szures
end;

procedure TTermekekF.FormActivate(Sender: TObject);

   procedure checklatszik;
    var i:Integer;
    begin
     for i := 0 to ComponentCount-1 do
       if (Components[i] is TDBCheckBox) then (Components[i] as TDBCheckBox).Visible:=mezgaz;
       JvDBSpinAlapnedv.Visible:=mezgaz;
       lblalapnedv.Visible:=mezgaz;
    end;

begin
  OnActivate:=nil;
  pcListaReszlet.ActivePage:=TTabSheet(tbLista);
  checklatszik;
  TermekT.Open();
  af.TipusQ.open;
end;

procedure TTermekekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  af.TipusQ.close;
end;

procedure TTermekekF.FormCreate(Sender: TObject);
begin
 col_neve:='kod';
 col_felirat:='Kód';
end;

procedure TTermekekF.lbl1DblClick(Sender: TObject);
begin
  if aF.van_joga('j7')then kezdokeszletF.showmodal;
end;

procedure TTermekekF.lucTipusChange(Sender: TObject);
begin
  if lucTipus.KeyValue<>'!' then
  begin
     TermekT.Edit;
     edTipus_id.Text:=lucTipus.KeyValue;
  end
  else
  begin
    TermekT.Edit;
    edTipus_id.Text:='0';
  end;
end;

procedure TTermekekF.pcListaReszletChange(Sender: TObject);
begin
  lucTipus.KeyValue:=edTipus_id.Text;
end;

procedure TTermekekF.szures;
var felt:string;
begin
  felt:='';
  if edszures.Text<>'' then felt:=' UPPER('+col_neve+')LIKE UPPER('+#39+'%'+edszures.Text+'%'+#39+')';
  with termekt do
  begin
    Filtered:=false;
    filter:=felt;
    Filtered:=true;
  end;
end;

procedure TTermekekF.TermekTAfterInsert(DataSet: TDataSet);
begin
  TermekT.FieldByName('kod').AsString:=aF.kod(5,'0','termek');
end;

procedure TTermekekF.TermekTBeforeInsert(DataSet: TDataSet);
begin
//if not aF.van_joga('j6')then  then

end;

procedure TTermekekF.TermekTBeforePost(DataSet: TDataSet);
begin
  if dedkod.Text='' then
  begin
    ShowMessage('Adja meg a kódot');
    if DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
  if af.kod_foglalt(TermekTID.AsInteger,dedkod.Text,'termek') then
  begin
    ShowMessage('Ez a kód már foglalt!');
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
  if dednev.Text='' then
  begin
    ShowMessage('Adja meg a nevet');
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
  if af.nev_foglalt(TermekTID.AsInteger,dednev.Text,'termek') then
  begin
    ShowMessage('Ez a név már foglalt!');
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
   end;
end;

end.
