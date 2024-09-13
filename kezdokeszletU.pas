unit kezdokeszletU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Samples.Spin,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvSpin;

type
  TkezdokeszletF = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    termeklist: TFDQuery;
    termeklistDs: TDataSource;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit2: TSpinEdit;
    Label5: TLabel;
    Label7: TLabel;
    spakeszlet: TJvSpinEdit;
    spbkeszlet: TJvSpinEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure keszlet_lekeres;
  public
    { Public declarations }
  end;

var
  kezdokeszletF: TkezdokeszletF;

implementation
  uses AU, UzenetekU;
{$R *.dfm}

procedure TkezdokeszletF.Button1Click(Sender: TObject);
begin
//aF.keszletez('a',termeklist.FieldByName('kod').AsString,termeklist.FieldByName('nev').AsString,spakeszlet.AsInteger);
//aF.keszletez('b',termeklist.FieldByName('kod').AsString,termeklist.FieldByName('nev').AsString,spbkeszlet.AsInteger);
with aF.Q1 do
 begin
    if MessageDlg(rsFelulIrAKeszlet,mtConfirmation,mbYesNo,0)=6 then
     begin
      Close;
      SQL.Clear;
      SQL.Add(' INSERT INTO keszlet_a (tkod,tnev,menny,modositva,f_id,felhasz)');
      SQL.Add(' VALUES (:tkod,:tnev,:menny,:modositva,:f_id,:felhasz) ');
      SQL.Add(' ON DUPLICATE KEY UPDATE ');
      SQL.Add(' menny=:menny, modositva=:modositva,f_id=:f_id,felhasz=:felhasz');
      ParamByName('tkod').AsString:=termeklist.FieldByName('kod').AsString;
      ParamByName('tnev').AsString:=termeklist.FieldByName('nev').AsString;
      ParamByName('menny').AsInteger:=spakeszlet.AsInteger;
      ParamByName('modositva').AsDateTime:=Now;
      ParamByName('f_id').AsInteger:=f_ide;
      ParamByName('felhasz').AsString:=felhnev;
      ExecSQL;
     end;
    if MessageDlg(rsFelulIrBKeszlet,mtConfirmation,mbYesNo,0)=6 then
     begin
      Close;
      SQL.Clear;
      SQL.Add(' INSERT INTO keszlet_B (tkod,tnev,menny,modositva,f_id,felhasz)');
      SQL.Add(' VALUES (:tkod,:tnev,:menny,:modositva,:f_id,:felhasz) ');
      SQL.Add(' ON DUPLICATE KEY UPDATE ');
      SQL.Add(' menny=:menny, modositva=:modositva,f_id=:f_id,felhasz=:felhasz');
      ParamByName('tkod').AsString:=termeklist.FieldByName('kod').AsString;
      ParamByName('tnev').AsString:=termeklist.FieldByName('nev').AsString;
      ParamByName('menny').AsInteger:=spbkeszlet.AsInteger;
      ParamByName('modositva').AsDateTime:=Now;
      ParamByName('f_id').AsInteger:=f_ide;
      ParamByName('felhasz').AsString:=felhnev;
      ExecSQL;
     end;

    keszlet_lekeres;
    spakeszlet.Value:=0;
    spbkeszlet.Value:=0;
 end;
end;

procedure TkezdokeszletF.DBGrid1CellClick(Column: TColumn);
begin
keszlet_lekeres;
end;

procedure TkezdokeszletF.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_UP)or(key=VK_DOWN) then keszlet_lekeres
end;

procedure TkezdokeszletF.FormActivate(Sender: TObject);
begin
termeklist.Close;
termeklist.open;
keszlet_lekeres
end;

procedure TkezdokeszletF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
termeklist.Close;
end;

procedure TkezdokeszletF.keszlet_lekeres;
begin
with aF.Q1 do
 begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT if(SUM(menny) IS NULL, 0, SUM(menny)) FROM keszlet_a WHERE tkod='+#39+termeklist.FieldByName('kod').AsString+#39);
   Open;
   SpinEdit1.Value:=Fields[0].AsInteger;
   Close;
   SQL.Clear;
   SQL.Add('SELECT if(SUM(menny) IS NULL, 0, SUM(menny)) FROM keszlet_b WHERE tkod='+#39+termeklist.FieldByName('kod').AsString+#39);
   Open;
   SpinEdit2.Value:=Fields[0].AsInteger;
 end;


end;

end.
