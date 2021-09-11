unit LibreExcelU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Comp.Client,JvDBUltimGrid, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvMemoryDataset,UHojaCalc;

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
    procedure kilepbtnClick(Sender: TObject);
    procedure ExportbtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mezo_nevek(Forras_grid:TJvDBUltimGrid;forras:TDataSet;automata:Boolean=false);

  end;

var
  LibreExcelF: TLibreExcelF;
  ds:Tdataset;
  aut:Boolean;
implementation
  uses AU;

{$R *.dfm}


{ TForm1 }


procedure TLibreExcelF.ExportbtnClick(Sender: TObject);
var Hcalc:THojaCalc;
    fn:string;
    ex:Boolean;
    i,j,o:Integer;
begin
 ex:=RadioGroup1.ItemIndex=1;
  if not aut then
   begin
    SaveDialog.Execute;
    fn:=SaveDialog.FileName;
   end
  else fn:=libre_mappa+formatDatetime('YYYYMMDD_HH_NN_SS',Now);
  if fn='' then exit;

  if ex then HCalc:= THojaCalc.create(thcExcel, False,false)//ha excel
  else HCalc:= THojaCalc.create(thcOpenOffice, False,false); //OpenOffice doc if possible, please

  HCalc.FileName:=fn;//fájl név

  HCalc.ActivateSheetByIndex(1); //elsõ munkafüzet
 { if HCalc.IsActiveSheetProtected then
    ShowMessage('2nd sheet of name "'+HCalc.ActiveSheetName+'" IS protected');}
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
end;

procedure TLibreExcelF.kilepbtnClick(Sender: TObject);
begin
Close
end;

procedure TLibreExcelF.mezo_nevek(Forras_grid: TJvDBUltimGrid;forras:TDataSet;automata:Boolean=false);
var i,k:Integer;
begin
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
 if aut then ExportbtnClick(self)
 else ShowModal
end;

end.
