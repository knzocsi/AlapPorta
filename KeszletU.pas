unit KeszletU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, JvExControls,
  JvDBLookup, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TKeszletF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    btnNyomtatas: TButton;
    keszletGrid: TJvDBUltimGrid;
    termeklookup: TJvDBLookupCombo;
    Label3: TLabel;
    partnerlookup: TJvDBLookupCombo;
    Label5: TLabel;
    tarololookup: TJvDBLookupCombo;
    TarolokT: TFDQuery;
    TarolokDs: TDataSource;
    termeklist: TFDQuery;
    termeklistDs: TDataSource;
    Partnelist: TFDQuery;
    PartnelistDs: TDataSource;
    Label1: TLabel;
    chktort: TCheckBox;
    chkpartnercsop: TCheckBox;
    btnexport: TButton;
    chknullas: TCheckBox;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnNyomtatasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure termeklookupChange(Sender: TObject);
    procedure btnexportClick(Sender: TObject);
  private
    { Private declarations }
    procedure szures;
  public
    { Public declarations }
  end;

var
  KeszletF: TKeszletF;
  nyomtat:Boolean=False;
implementation
  uses AU,NezetU, LibreExcelU;
{$R *.dfm}

procedure TKeszletF.btnKilepesClick(Sender: TObject);
begin
Close
end;

procedure TKeszletF.btnNyomtatasClick(Sender: TObject);
begin
  nyomtat:=True;
  with NezetF do
  begin
    rep_valaszt(af.frxKeszlet,1);
    if nyomtatva then valasztott.Print;
    valasztott.Preview:=nil;
  end;
  nyomtat:=False
end;

procedure TKeszletF.btnexportClick(Sender: TObject);
begin
 LibreExcelF.mezo_nevek(keszletGrid,nil);
end;

procedure TKeszletF.FormActivate(Sender: TObject);
begin
 if nyomtat then
  begin
    nyomtat:=False;
    Exit
  end;
 termeklist.Open;
 Partnelist.open;
 TarolokT.Open;
 szures;
end;

procedure TKeszletF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 termeklist.close;
 Partnelist.close;
 TarolokT.close;
 aF.KeszletQ.Close
end;


procedure TKeszletF.szures;
var felt:string;

  procedure menny_mezo_letrehozasa;
   var fld: TField;
   begin
    (af.KeszletQ.FindField('menny')).Destroy;

    if not chkpartnercsop.Checked then
     begin
      fld:= TBCDField.Create(aF.KeszletQ);
      fld.FieldName := 'menny';
      fld.DisplayLabel := 'menny';
      fld.DataSet := af.KeszletQ;
      fld.Size := 2;
      af.KeszletQ.Fields.Add(fld);
     end
     else
     begin
      fld:= TFMTBCDField.Create(aF.KeszletQ);
      fld.FieldName := 'menny';
      fld.DisplayLabel := 'menny';
      fld.DataSet := af.KeszletQ;
      fld.Size := 4;
      af.KeszletQ.Fields.Add(fld);
     end;
   end;
begin
 if nyomtat then Exit;
 felt:='';
 with aF.KeszletQ do
  begin
    Close;
    //menny_mezo_letrehozasa;
    SQL.Clear;
    if not chkpartnercsop.Checked then
     begin
      SQL.Add(' SELECT * from keszlet_nezet');
      if chktort.Checked then felt:=' WHERE tort=1 '
      else felt:=' WHERE tort=0 ';
      if termeklookup.KeyValue<>'!' then felt:=felt+' and term_id='+#39+termeklookup.KeyValue+#39;
      if partnerlookup.KeyValue<>'!' then felt:=felt+' and partner_id='+#39+partnerlookup.KeyValue+#39;
      if tarololookup.KeyValue<>'!' then felt:=felt+' and tarolo_id='+#39+tarololookup.KeyValue+#39;
      if chknullas.Checked then felt:=felt+' and menny>0';
      SQL.Add(felt);

     end
    else
     begin //
      SQL.Add(' SELECT Term_id,Term_kod,Term_nev,0 AS Tarolo_id, ');
      SQL.Add('''Összes'' As Tarolo_nev, partner_id,Partner_kod,');
      SQL.Add('Partner_nev,0 AS felhasznalo_id,''Összes'' As Felhasznalo_nev, SUM(menny) As menny,');
      SQL.Add('tort, current_timestamp() As modositva from keszlet_nezet');
      if chktort.Checked then felt:=' WHERE tort=1 '
      else felt:=' WHERE tort=0 ';
      if termeklookup.KeyValue<>'!' then felt:=felt+' and term_id='+#39+termeklookup.KeyValue+#39;
      if partnerlookup.KeyValue<>'!' then felt:=felt+' and partner_id='+#39+partnerlookup.KeyValue+#39;
      if chknullas.Checked then felt:=felt+' and menny>0';
      SQL.Add(felt);
      SQL.Add('GROUP BY partner_id,Term_id');
     end;
    Open;
  end;
end;

procedure TKeszletF.termeklookupChange(Sender: TObject);
begin
 szures
end;

end.
