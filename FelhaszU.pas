unit FelhaszU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFelhaszF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    JvDBUltimGrid1: TJvDBUltimGrid;
    JvDBUltimGrid2: TJvDBUltimGrid;
    ajogQ: TFDQuery;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure JvDBUltimGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure JvDBUltimGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure jogok_szur(fid:Integer);
    function  aktjogle(hj: string): Boolean;
  public
    { Public declarations }
  end;

var
  FelhaszF: TFelhaszF;

implementation
  uses AU;
{$R *.dfm}

{ TFelhaszF }

function TFelhaszF.aktjogle(hj: string): Boolean;
begin
with ajogQ do
 begin
   close;
   SQL.Clear;
   SQL.Add('Select '+hj+ ' from jogok where f_id='+f_ide.ToString);
   Open();
   result:=Fields[0].AsInteger=1;
   Close
 end;
end;

procedure TFelhaszF.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TFelhaszF.Button2Click(Sender: TObject);
var ujnev:string;
    i:Integer;
    sqlsz:string;
begin
 if not aktjogle('j1')then
  begin
   ShowMessage(af.ford('rsNincsJogosultsaga'));
   Exit;
  end;
 ujnev:=InputBox(af.ford('rsUjFelhasznaloFelvitele'),af.ford('rsAdjaMegANevet'),'');
 if ujnev='' then Exit;
 if aF.FelhaszQ.Locate('nev',ujnev,[locaseinsensitive]) then
  begin
    ShowMessage(af.ford('rsFelhasznaloMarLetezik'));
    exit;
  end;

 with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Insert into felhasz ');
    SQL.Add('(nev,jelszo)VALUES(:nev,:jsz) ');
    Params[0].AsString:=ujnev;
    Params[1].AsString:=aF.Transform('proba');
    ExecSQL;
    Close;
    SQL.Clear;
    SQL.Add('Insert into jogok ');
    SQL.Add(' (f_id) VALUES( (SELECT max(id) from felhasz)) ');
    ExecSQL;
    Close
  end;
  aF.FelhaszQ.Refresh;
  aF.FelhaszQ.Last;
  aF.jogok_beolvasasa;
  jogok_szur(aF.FelhaszQ.Fields[0].AsInteger);
  ShowMessage(af.ford('rsFelhasznaloLetrehozva'));
end;

procedure TFelhaszF.Button3Click(Sender: TObject);
var ujnev:string;
    i,kod:Integer;
    sqlsz:string;
begin
if not aktjogle('j2')then
 begin
  ShowMessage(af.ford('rsNincsJogosultsaga'));
  exit;
 end;

 kod:=aF.FelhaszQ.Fields[0].AsInteger;
 ujnev:=InputBox(af.ford('rsFelhasznaloModositas'),af.ford('rsAdjaMegANevet'),aF.felhaszQ.FieldByName('nev').AsString);
 if ujnev='' then Exit;
 if (aF.FelhaszQ.Locate('nev',ujnev,[locaseinsensitive]))and(aF.FelhaszQ.Fields[0].AsInteger<>kod) then
  begin
    ShowMessage(af.ford('rsFelhasznaloMarLetezik'));
    exit;
  end;

 with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE felhasz SET nev='+#39+ujnev+#39);
    SQL.Add(' Where id='+IntToStr(kod));
    ExecSQL;
    Close;
  end;
  aF.FelhaszQ.Refresh;
end;

procedure TFelhaszF.Button4Click(Sender: TObject);
begin
if not aktjogle('j2')then
 begin
  ShowMessage(af.ford('rsNincsJogosultsaga'));
  exit;
 end;
  if MessageDlg(af.ford('rsFelhasznaloTorlese'),mtConfirmation,mbYesNo,0)=6 then
   begin
    with aF.Q1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE felhasz SET aktiv=0');
      SQL.Add(' Where id='+IntToStr(aF.FelhaszQ.Fields[0].AsInteger));
      ExecSQL;
      Close;
    end;
    aF.FelhaszQ.Refresh;
    aF.FelhaszQ.Last;
    aF.jogok_beolvasasa;//ezeket is frissiteni kell törlés után
    jogok_szur(aF.FelhaszQ.Fields[0].AsInteger);
   end;
end;

procedure TFelhaszF.FormActivate(Sender: TObject);
begin
 aF.FelhaszQ.Close;
 aF.FelhaszQ.open;
 aF.FelhaszQ.First;
 jogok_szur(aF.FelhaszQ.Fields[0].AsInteger);
end;

procedure TFelhaszF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 aF.felhasznalok_jogai.Filtered:=false;
 af.jogok_beolvasasa
end;

procedure TFelhaszF.jogok_szur(fid: Integer);
begin
 with aF.felhasznalok_jogai do
  begin
    Filtered:=False;
    filter:=' f_id='+IntToStr(fid);
    Filtered:=True;
  end;
end;

procedure TFelhaszF.JvDBUltimGrid1CellClick(Column: TColumn);
begin
 jogok_szur(aF.FelhaszQ.Fields[0].AsInteger);
end;

procedure TFelhaszF.JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_UP)or(Key=VK_DOWN)  then jogok_szur(aF.FelhaszQ.Fields[0].AsInteger);
end;

procedure TFelhaszF.JvDBUltimGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
jogmod:=Key=VK_SPACE;
end;

procedure TFelhaszF.JvDBUltimGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 jogmod:=JvDBUltimGrid2.SelectedField.FullName='jog';
end;

end.
