unit LibreExcelU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Comp.Client,JvDBUltimGrid, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvMemoryDataset,UHojaCalc,System.StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TLibreExcelF = class(TForm)
    Panel1: TPanel;
    kilepbtn: TButton;
    RadioGroup1: TRadioGroup;
    Exportbtn: TButton;
    Label1: TLabel;
    JvMlehet: TJvMemoryData;
    JvMlehetindex: TIntegerField;
    JvMlehetcaption: TStringField;
    JvMlehetfieldname: TStringField;
    JvMlehetkell: TBooleanField;
    leszgrid: TJvDBUltimGrid;
    JvMlehetDs: TDataSource;
    SaveDialog: TSaveDialog;
    chkftp: TCheckBox;
    chkosszes: TCheckBox;
    btnbeall_ment: TButton;
    cfg_exportT: TFDTable;
    cfg_export_mezokT: TFDTable;
    TQ: TFDQuery;
    procedure kilepbtnClick(Sender: TObject);
    procedure ExportbtnClick(Sender: TObject);
    procedure btnbeall_mentClick(Sender: TObject);
    procedure chkosszesClick(Sender: TObject);
  private
    { Private declarations }
    procedure beallitasok_betoltese;
  public
    { Public declarations }
    procedure mezo_nevek(Forras_grid:TJvDBUltimGrid;forras:TDataSet;automata:Boolean=false);

  end;

var
  LibreExcelF: TLibreExcelF;
  ds:Tdataset;
  aut:Boolean;
implementation
  uses AU,ftpDlU;

{$R *.dfm}


{ TForm1 }


procedure TLibreExcelF.beallitasok_betoltese;
begin
  with JvMlehet do
   begin
    first;
    DisableControls;
    while not Eof do
     begin
      edit;
      FieldByName('kell').AsBoolean:=false;
      post;
      next;
     end;
    first;
    EnableControls
   end;
  cfg_exportT.Open;
  if cfg_exportT.Locate('forras',ds.Name,[]) then
   begin
     if cfg_exportT.FieldByName('excel').AsBoolean then RadioGroup1.ItemIndex:=1
     else RadioGroup1.ItemIndex:=0;
     chkftp.Checked:=cfg_exportT.FieldByName('feltoltes_ftp').AsBoolean;
     cfg_export_mezokT.Open;
     cfg_export_mezokT.Filtered:=False;
     cfg_export_mezokT.Filter:=' c_id='+QuotedStr(cfg_exportT.FieldByName('id').AsString);
     cfg_export_mezokT.Filtered:=True;
     cfg_export_mezokT.First;
     while not cfg_export_mezokT.Eof do
      begin
      if JvMlehet.Locate('fieldname',cfg_export_mezokT.FieldByName('mezo').AsString,[]) then
       begin
         JvMlehet.Edit;
         JvMlehetkell.AsBoolean:=True;
         JvMlehet.Post
       end;
       cfg_export_mezokT.Next
      end;
   end;
   cfg_exportT.Close;
   cfg_export_mezokT.Close;
   JvMlehet.first;
end;

procedure TLibreExcelF.btnbeall_mentClick(Sender: TObject);
var aid:Integer;
begin
try
 cfg_exportT.Open;
 if not cfg_exportT.Locate('forras',ds.Name,[]) then cfg_exportT.Append
 else cfg_exportT.Edit;
 cfg_exportT.FieldByName('forras').AsString:=ds.Name;
 cfg_exportT.FieldByName('excel').AsBoolean:=RadioGroup1.ItemIndex=1;
 cfg_exportT.FieldByName('feltoltes_ftp').AsBoolean:=chkftp.Checked;
 cfg_exportT.Post;
 cfg_exportT.Locate('forras',ds.Name,[]);
 aid:=cfg_exportT.FieldByName('id').AsInteger;
 //elõzõek törlése
 with TQ do
  begin
    close;
    SQL.Clear;
    SQL.Add('DELETE FROM cfg_export_mezok ');
    SQL.Add(' WHERE c_id='+aid.ToString);
    ExecSQL
  end;
  cfg_exportT.Close;
 //mezõk mentése
  cfg_export_mezokT.Open;
  JvMlehet.First;
  JvMlehet.DisableControls;
   while not JvMlehet.eof do
    begin
     if JvMlehetkell.AsBoolean then
      begin
       cfg_export_mezokT.Append;
       cfg_export_mezokT.FieldByName('c_id').AsInteger:=aid;
       cfg_export_mezokT.FieldByName('mezo').AsString:=JvMlehetfieldname.AsString;
       cfg_export_mezokT.Post;
      end;
      JvMlehet.Next;
    end;
  JvMlehet.First;
  JvMlehet.EnableControls;
  cfg_export_mezokT.Close;
finally
  ShowMessage(af.ford('rsBeallitasokMentve'))
end;
end;

procedure TLibreExcelF.chkosszesClick(Sender: TObject);
begin
with JvMlehet do
 begin
  first;
  DisableControls;
  while not Eof do
   begin
    edit;
    FieldByName('kell').AsBoolean:=chkosszes.Checked;
    post;
    next;
   end;
  first;
  EnableControls
 end;
end;

procedure TLibreExcelF.ExportbtnClick(Sender: TObject);
var Hcalc:THojaCalc;
    fn:string;
    ex:Boolean;
    i,j,o:Integer;
begin
 ex:=RadioGroup1.ItemIndex=1;
  if (not aut) then
   begin
    if (not chkftp.Checked) then
     begin
      SaveDialog.Execute;
      fn:=SaveDialog.FileName;
     end
   end
  else fn:=libre_mappa+formatDatetime('YYYYMMDD',Now)+'_'+RightStr(StringOfChar('0', 2) + IntToStr(mentesido), 2);
  if fn='' then exit;

  if ex then HCalc:= THojaCalc.create(thcExcel, False,false)//ha excel
  else HCalc:= THojaCalc.create(thcOpenOffice, False,false); //OpenOffice doc if possible, please

  HCalc.FileName:=fn;//fájl név

  HCalc.ActivateSheetByIndex(1); //elsõ munkafüzet
 { if HCalc.IsActiveSheetProtected then
    ShowMessage('2nd sheet of name "'+HCalc.ActiveSheetName+'" IS protected');}
 try
 //oszlopok
   j:=1;
   JvMlehet.First;
   JvMlehet.DisableControls;
   while not JvMlehet.eof do
    begin
     if JvMlehetkell.AsBoolean then
      begin
       HCalc.CellText[1,j] := JvMlehetcaption.AsString;
       Hcalc.Bold(1,j);
       Hcalc.FontSize(1,j,15);
       inc(j);
      end;
      JvMlehet.Next;
    end;

  o:=1;//oszlop
  i:=2;//sor-mivel az 1. sor a fejléc
  ds.First;
  ds.DisableControls;
  while not ds.eof do
   begin
    JvMlehet.First;
    o:=1;
    while not JvMlehet.eof do //minden recordnál végig megyek h melyik mezõ kell, mert a dataset sorrend és a grid sorrend eltérõ lehet
    begin
     if JvMlehetkell.AsBoolean then //ha kell
      begin                   //kikeresem a mezõt a neve alapján a dataset adott recordjában
       HCalc.CellText[i,o] := ds.FieldByName(JvMlehetfieldname.AsString).AsString;
       inc(o);//oszlop léptetés
      end;
      JvMlehet.Next;
    end;
    inc(i);//sor léptetés
    ds.Next//dataset léptetés
   end;
  JvMlehet.EnableControls;
  ds.EnableControls;
  ds.First;

  //Change a cell value.
  {IF HCalc.CellText[i,2] = '' THEN}
  //HCalc.AddNewSheet('New Sheet');
  //HCalc.PrintDoc;
 // ShowMessage(Hcalc.FileName);
  if (Hcalc.SaveDocAs(fn,ex)) then
   begin
    if not aut then ShowMessage('Mentés kész');
   end
  else if not aut then ShowMessage('Mentés sikertelen');
  HCalc.Free;
  //ez azért kell, mert a libre vmiért nem menti le a kiterjesztést
  if not ex then RenameFile(fn,fn+'.ods');
 finally
  if chkftp.Checked then ftpF.fo;
 end;

end;

procedure TLibreExcelF.kilepbtnClick(Sender: TObject);
begin
Close
end;

procedure TLibreExcelF.mezo_nevek(Forras_grid: TJvDBUltimGrid;forras:TDataSet;automata:Boolean=false);
var i,k:Integer;
begin
 chkftp.Checked:=Ftp_feltoltes;
 chkftp.Visible:=Ftp_feltoltes;

 aut:=automata;
 if forras<>nil then ds:=forras else ds:=Forras_grid.DataSource.DataSet;
 if ds.IsEmpty then Exit;

 JvMlehet.Close;
 JvMlehet.Open;
 k:=1;
 if forras_grid<>nil then
 begin
 for I := 0 to Forras_grid.Columns.Count-1 do
  if Forras_grid.Columns[i].Visible then
   begin
     JvMlehet.Append;
     JvMlehetindex.AsInteger:=k;
     JvMlehetcaption.AsString:=Forras_grid.Columns[i].Title.Caption;
     JvMlehetfieldname.AsString:=Forras_grid.Columns[i].FieldName;
     JvMlehetkell.AsBoolean:=True;
     JvMlehet.Post;
     inc(k)
   end;
 end
 else
   begin
    for I := 0 to ds.Fields.Count-1 do
    if ds.fields[i].Visible then
     begin
       JvMlehet.Append;
       JvMlehetindex.AsInteger:=k;
       JvMlehetcaption.AsString:=ds.fields[i].DisplayName;
       JvMlehetfieldname.AsString:=ds.fields[i].FieldName;
       JvMlehetkell.AsBoolean:=True;
       JvMlehet.Post;
       inc(k)
     end;
   end;
 JvMlehet.First;
 beallitasok_betoltese;
 if aut then ExportbtnClick(self)
 else ShowModal
end;

end.
