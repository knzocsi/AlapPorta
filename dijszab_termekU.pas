unit dijszab_termekU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdijszab_termekF = class(TForm)
    Panel1: TPanel;
    btnkilep: TButton;
    dijakgrid: TJvDBUltimGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    DBEtarolasi: TDBEdit;
    DBEbetarolasi: TDBEdit;
    DBEkitarolasi: TDBEdit;
    DBEszaritasi: TDBEdit;
    DBEtisztitasi: TDBEdit;
    DBEszallitasi: TDBEdit;
    dijak_termekT: TFDTable;
    dijak_termekDs: TDataSource;
    DBTKategoria: TDBText;
    TermekT: TFDTable;
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
    TermekTewc: TWideStringField;
    TermekDS: TDataSource;
    DBLCTermek: TDBLookupComboBox;
    EllenQ: TFDQuery;
    procedure btnkilepClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dijak_termekTBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dijszab_termekF: Tdijszab_termekF;

implementation
  uses AU,dijszabU,UzenetekU;
{$R *.dfm}

procedure Tdijszab_termekF.btnkilepClick(Sender: TObject);
begin
Close;
end;

procedure Tdijszab_termekF.dijak_termekTBeforePost(DataSet: TDataSet);

  function ellenorzes: Boolean;
   begin
   with EllenQ do
    begin
     if DataSet.State=dsEdit then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(id) AS van FROM dijaszab_kategoriak_termek');
        SQL.Add(' WHERE id<>:id AND d_id=:d_id AND t_nev=:nev');
        ParamByName('id').AsInteger:=dijak_termekT.FieldByName('id').AsInteger;
        ParamByName('d_id').AsInteger:=dijszabF.dijkatT.FieldByName('id').AsInteger;
        ParamByName('nev').AsString:=dijak_termekT.FieldByName('t_nev').AsString;
        open;
        Result:= Fields[0].AsInteger=0;
      end;
     if DataSet.State=dsInsert then
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT COUNT(id) AS van FROM dijaszab_kategoriak_termek');
        SQL.Add(' WHERE d_id=:d_id AND t_nev=:nev');
        ParamByName('d_id').AsInteger:=dijszabF.dijkatT.FieldByName('id').AsInteger;
        ParamByName('nev').AsString:=TermekTNev.AsString;
        open;
        Result:= Fields[0].AsInteger=0;
      end;
    end;

   end;
begin
  if not ellenorzes  then
  begin
    ShowMessage(rsEzaTermekmerszerepeldijszabkat);
    if  DataSet.State=dsEdit then DataSet.Cancel else  Abort;
  end
  else dijak_termekT.FieldByName('t_nev').AsString:=TermekTNev.AsString;
end;

procedure Tdijszab_termekF.FormActivate(Sender: TObject);
begin
TermekT.open;
dijak_termekT.Open
end;

procedure Tdijszab_termekF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TermekT.close;
dijak_termekT.close
end;

end.
