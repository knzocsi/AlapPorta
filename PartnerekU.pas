unit PartnerekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvExControls, JvDBLookup;

type
  TPartnerekF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    tbReszlet: TTabSheet;
    PartnerGrid: TDBGrid;
    DBNavigator1: TDBNavigator;
    PartnerT: TFDTable;
    lbl1: TLabel;
    dbedtKod: TDBEdit;
    PartnerDS: TDataSource;
    lbl2: TLabel;
    dbedtNev: TDBEdit;
    lbl3: TLabel;
    dbedtIrsz: TDBEdit;
    lbl4: TLabel;
    dbedtTelepules: TDBEdit;
    lbl5: TLabel;
    dbedtKerulet: TDBEdit;
    lbl6: TLabel;
    dbedtKozterulet: TDBEdit;
    lbl7: TLabel;
    dbedtKozt_Jelleg: TDBEdit;
    lbl8: TLabel;
    dbedtHazszam: TDBEdit;
    lbl9: TLabel;
    dbedtLepcsohaz: TDBEdit;
    lbl10: TLabel;
    dbedtEmelet: TDBEdit;
    lbl11: TLabel;
    dbedtAjto: TDBEdit;
    lbl12: TLabel;
    dbedtAdoszam: TDBEdit;
    DBEdtkuj: TDBEdit;
    DBEdtktj: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdepulet: TDBEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    dbedtemail: TDBEdit;
    dbedttelefon: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbedthrsz: TDBEdit;
    Panel2: TPanel;
    Label7: TLabel;
    lblmire: TLabel;
    edszures: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    bdchkMagansz: TDBCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dbeadoazon: TDBEdit;
    dbeado_kod: TDBEdit;
    dbeado_megye_kod: TDBEdit;
    cbdijkat: TJvDBLookupCombo;
    lbldijszab: TLabel;
    dijkatT: TFDTable;
    dijkatDs: TDataSource;
    btndijszab: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure PartnerTBeforeDelete(DataSet: TDataSet);
    procedure PartnerTBeforeInsert(DataSet: TDataSet);
    procedure PartnerTAfterInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PartnerGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edszuresChange(Sender: TObject);
    procedure dbedtIrszChange(Sender: TObject);
    procedure PartnerTBeforePost(DataSet: TDataSet);
    procedure btndijszabClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PartnerGridCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure szures;
  public
    { Public declarations }
  end;

var
  PartnerekF: TPartnerekF;
  col_neve,col_felirat:String;
implementation

uses
  AU, DijakU, dijszabU,UzenetekU;

{$R *.dfm}

procedure TPartnerekF.btndijszabClick(Sender: TObject);
begin
 try
  dijszabF.showmodal;
 finally
  dijkatT.Refresh;
 end;
end;

procedure TPartnerekF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TPartnerekF.Button1Click(Sender: TObject);
begin
 af.tabla_zarol('partner')
end;

procedure TPartnerekF.Button2Click(Sender: TObject);
begin
 if af.tabla_zarolva('partner')=1 then ShowMessage(rsTablaZarolva)
 else ShowMessage(rsTablaNincsZarolva);
end;

procedure TPartnerekF.Button3Click(Sender: TObject);
begin
 af.tabla_kizar('partner');
end;

procedure TPartnerekF.dbedtIrszChange(Sender: TObject);
begin
if Length(dbEdtIrsz.Text)<>4 then Exit;
if (PartnerT.state in [dsEdit,dsInsert]) then
 with af.irszQ do
  begin
    Close;
    Params[0].AsString:=dbEdtIrsz.Text;
    Open;
    if IsEmpty then dbedtTelepules.Clear
    else
     begin
       dbedtTelepules.Text:=Fields[1].AsString;
       if Visible then dbedtKozterulet.SetFocus;
     end;
    close
  end;
end;

procedure TPartnerekF.edszuresChange(Sender: TObject);
begin
 szures
end;

procedure TPartnerekF.FormActivate(Sender: TObject);
begin
 // OnActivate:=nil;
  pcListaReszlet.ActivePage:=TTabSheet(tbLista);
  lbldijszab.Visible:=dijszab_csoportok;
  cbdijkat.Visible:=dijszab_csoportok;
  btndijszab.Visible:=dijszab_csoportok;
  dijkatT.Open;
  PartnerT.Open();
end;

procedure TPartnerekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dijkatT.Close;
end;

procedure TPartnerekF.FormCreate(Sender: TObject);
begin
 col_neve:='kod';
 col_felirat:='Kód';
end;

procedure TPartnerekF.PartnerGridCellClick(Column: TColumn);
begin
// af.dijak_lekerese(PartnerT.FieldByName('id').AsInteger);
// ShowMessage(tisztitasi_dij.ToString+' '+ tarolasi_dij.ToString);

end;

procedure TPartnerekF.PartnerGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
try
 if (button= mbRight) and (PartnerGrid.MouseCoord(X,Y).Y=0)then              //ha jobb klikk és title küldi(0 az Y) akkor erre szűr
  begin
   Col_neve:=(Sender as TDBGrid).Columns[PartnerGrid.MouseCoord(X,Y).X-1].FieldName;
   col_felirat:=(Sender as TDBGrid).Columns[PartnerGrid.MouseCoord(X,Y).X-1].Title.Caption;
   lblmire.Caption:=col_felirat;
   edszures.SetFocus;
  end;
if (button= mbleft) and (PartnerGrid.MouseCoord(X,Y).Y=0)then                //ha bal klikk és title küldi akkor sort
    af.rendez(PartnerT,(Sender as TDBGrid).Columns[PartnerGrid.MouseCoord(X,Y).X-1].FieldName);
except
 //
end;
end;

procedure TPartnerekF.PartnerTAfterInsert(DataSet: TDataSet);
begin
PartnerT.FieldByName('kod').AsString:=aF.kod(5,'0','partner');
end;

procedure TPartnerekF.PartnerTBeforeDelete(DataSet: TDataSet);
begin
  exit;
  with CreateMessageDialog('Msg', mtConfirmation, [mbYes, mbNo], mbNo) do
    begin
      try

        TButton(FindComponent('Yes')).Caption:= rsIgen;
        TButton(FindComponent('No')).Caption:= rsNem;
        ShowModal;
      finally
        case ModalResult of
          mrYes: ShowMessage(rsIgen+'!');
          mrNo: ShowMessage(rsNem+'!');
          mrCancel: ShowMessage(rsMegsem+'!');
        end;
        Free;
      end;
    end;
  if MessageDlg(PChar(rsBiztosanTorli), mtConfirmation, [mbOK,mbCancel], 0) <> mrOk then
  System.SysUtils.Abort;
end;

procedure TPartnerekF.PartnerTBeforeInsert(DataSet: TDataSet);
begin
//
end;

procedure TPartnerekF.PartnerTBeforePost(DataSet: TDataSet);
begin
 if Length(dbeadoazon.Text)<>0 then
  begin
    if (Length(dbeadoazon.Text)<>8) OR (Length(dbeado_kod.Text)<>1) OR (Length(dbeado_megye_kod.Text)<>2)  then
     begin
      ShowMessage(rsHibasAdoszam);
      if DataSet.State=dsEdit then DataSet.Cancel else  Abort;
     end;
  end;
  if Length(dbedtNev.Text)<5 then
  begin
    ShowMessage(rsNevetMegKellAdni);
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
  if Length(dbedtIrsz.Text)<4 then
  begin
    ShowMessage(rsIrszetMegKellAdni);
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
  if Length(dbedtTelepules.Text)<3 then
  begin
    ShowMessage(rsTelepulestMegKellAdni);
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
if af.kod_foglalt(PartnerT.FieldByName('id').AsInteger,dbedtKod.Text,'partner') then
  begin
    ShowMessage(rsEzAKodMarFoglalt);
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end;
  if af.nev_foglalt(PartnerT.FieldByName('id').AsInteger,dbedtNev.Text,'partner') then
  begin
    ShowMessage(rsEzANevMarFoglalt);
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
   end;
end;

procedure TPartnerekF.szures;
var felt:string;
begin
  felt:='';
  if edszures.Text<>'' then felt:=' UPPER('+col_neve+')LIKE UPPER('+#39+'%'+edszures.Text+'%'+#39+')';
  with PartnerT do
  begin
    Filtered:=false;
    filter:=felt;
    Filtered:=true;
  end;
end;

end.
