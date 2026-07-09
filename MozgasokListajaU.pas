unit MozgasokListajaU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, siComp, siLngLnk;

type
  TMozgasokListajaF = class(TForm)
    btnkilepes: TButton;
    kd: TDateTimePicker;
    kt: TDateTimePicker;
    bd: TDateTimePicker;
    bt: TDateTimePicker;
    edszures: TEdit;
    Label7: TLabel;
    lblmire: TLabel;
    Label1: TLabel;
    cbirany: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    listaGrid: TJvDBUltimGrid;
    ListaQ: TFDQuery;
    ListaQDs: TDataSource;
    fpanel: TPanel;
    siLangLinked_MozgasokListajaF: TsiLangLinked;
    procedure FormCreate(Sender: TObject);
    procedure ktChange(Sender: TObject);
    procedure btChange(Sender: TObject);
    procedure kdChange(Sender: TObject);
    procedure listaGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnkilepesClick(Sender: TObject);
  private
    { Private declarations }
    procedure szures;
  public
    { Public declarations }
    procedure fo;
  end;

var
  MozgasokListajaF: TMozgasokListajaF;
  col_neve,col_felirat:String;
implementation
  uses AU;
{$R *.dfm}

procedure TMozgasokListajaF.btChange(Sender: TObject);
begin
if Visible then
 begin
  bd.Time:=bt.Time;
  szures
 end;
end;

procedure TMozgasokListajaF.btnkilepesClick(Sender: TObject);
begin
 close
end;

procedure TMozgasokListajaF.fo;
begin
 szures;
 ShowModal
end;

procedure TMozgasokListajaF.FormCreate(Sender: TObject);
begin
 col_neve:='kartya_szam';
 col_felirat:='Kártyaszám';
end;

procedure TMozgasokListajaF.kdChange(Sender: TObject);
begin
if Visible then szures
end;

procedure TMozgasokListajaF.ktChange(Sender: TObject);
begin
if Visible then
 begin
   kd.Time:=kt.Time;
   szures;
 end;
end;

procedure TMozgasokListajaF.listaGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
try
 if (button= mbRight) and (listaGrid.MouseCoord(X,Y).Y=0)then              //ha jobb klikk és title küldi(0 az Y) akkor erre szûr
  begin
   Col_neve:=(Sender as TDBGrid).Columns[listaGrid.MouseCoord(X,Y).X-1].FieldName;
   col_felirat:=(Sender as TDBGrid).Columns[listaGrid.MouseCoord(X,Y).X-1].Title.Caption;
   lblmire.Caption:=col_felirat;
   edszures.SetFocus;
  end;
if (button= mbleft) and (listaGrid.MouseCoord(X,Y).Y=0)then                //ha bal klikk és title küldi akkor sort
    af.rendez(ListaQ,(Sender as TDBGrid).Columns[listaGrid.MouseCoord(X,Y).X-1].FieldName);
except
 //
end;
end;

procedure TMozgasokListajaF.szures;
begin
  with ListaQ do
   begin
     close;
     SQL.Clear;
     SQL.Add('SELECT m.*,IF(m.irany=0,''BE'',''KI'') AS irany_szov ' );
     SQL.Add(' FROM mozgasok_nezet m');
     SQL.Add('WHERE idobelyeg>=:ki AND idobelyeg<=:bi ');
     if edszures.Text<>'' then SQL.Add(' AND UPPER('+col_neve+')LIKE UPPER('+#39+'%'+edszures.Text+'%'+#39+')');
     if cbirany.ItemIndex>0 then SQL.Add(' AND irany='+(cbirany.ItemIndex-1).ToString );
     ParamByName('ki').AsDateTime:=kd.DateTime;
     ParamByName('bi').AsDateTime:=bd.DateTime;
     Open;
   end;
end;

end.
