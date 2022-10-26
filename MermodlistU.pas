unit MermodlistU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TMermodlistF = class(TForm)
    Panel1: TPanel;
    mlistaGrid: TJvDBUltimGrid;
    mjegyekQ: TFDQuery;
    mjegyekQDs: TDataSource;
    btnkilepes: TButton;
    lblsorszam: TLabel;
    procedure btnkilepesClick(Sender: TObject);
    procedure mlistaGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fo(ssz:string);
  end;

var
  MermodlistF: TMermodlistF;

implementation
  uses au;
{$R *.dfm}

procedure TMermodlistF.btnkilepesClick(Sender: TObject);
begin
 close;
end;

procedure TMermodlistF.fo(ssz: string);
begin
try
  lblsorszam.Caption:=ssz;
  with mjegyekQ do
   begin
     Close;
     ParamByName('s').AsString:=ssz;
     open;
   end;
finally
  ShowModal
end;
end;

procedure TMermodlistF.mlistaGridMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
try
{ if (button= mbRight) and (mlistaGrid.MouseCoord(X,Y).Y=0)then              //ha jobb klikk és title küldi(0 az Y) akkor erre szûr
  begin
    {Col_neve:=(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].FieldName;
   col_felirat:=(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].Title.Caption;
   lblmire.Caption:=col_felirat;
   edszures.SetFocus; }
//  end;
  if (button= mbRight) and (mlistaGrid.MouseCoord(X,Y).Y=0)then                //ha bal klikk és title küldi akkor sort
    af.rendez(mjegyekQ,(Sender as TDBGrid).Columns[mlistaGrid.MouseCoord(X,Y).X-1].FieldName);
except
 //
end;
end;

end.
