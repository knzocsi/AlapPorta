unit PartnerekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPartnerekF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    pcListaReszlet: TPageControl;
    tbLista: TTabSheet;
    tbReszlet: TTabSheet;
    DBGrid1: TDBGrid;
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
    procedure FormActivate(Sender: TObject);
    procedure btnKilepesClick(Sender: TObject);
    procedure PartnerTBeforeDelete(DataSet: TDataSet);
    procedure PartnerTBeforeInsert(DataSet: TDataSet);
    procedure PartnerTAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartnerekF: TPartnerekF;

implementation

uses
  AU;

{$R *.dfm}

procedure TPartnerekF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TPartnerekF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  pcListaReszlet.ActivePage:=TTabSheet(tbLista);
  PartnerT.Open();

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

        TButton(FindComponent('Yes')).Caption:= 'Igen';
        TButton(FindComponent('No')).Caption:= 'Nem';
        ShowModal;
      finally
        case ModalResult of
          mrYes: ShowMessage('Igen');
          mrNo: ShowMessage('Nemا');
          mrCancel: ShowMessage('Mégsem!');
        end;
        Free;
      end;
    end;
  if MessageDlg('Biztos törli?',
     mtConfirmation, [mbOK,mbCancel], 0) <> mrOk then
  System.SysUtils.Abort;
end;

procedure TPartnerekF.PartnerTBeforeInsert(DataSet: TDataSet);
begin
//
end;

end.
