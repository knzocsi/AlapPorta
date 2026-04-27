unit GongyoloegekFU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvSpin, JvExExtCtrls, JvExtComponent, JvRollOut, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TGongyoloegekF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    JvDBUltimGrid1: TJvDBUltimGrid;
    reszletekroll: TJvRollOut;
    Label1: TLabel;
    edszovege: TEdit;
    btnfelvesz: TButton;
    Label2: TLabel;
    sptomeg: TJvSpinEdit;
    edvkod: TEdit;
    Label3: TLabel;
    EllenQ: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnfelveszClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sptomegKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure ures;
    procedure beolvas;
  public
    { Public declarations }
  end;

var
  GongyoloegekF: TGongyoloegekF;

implementation
  uses AU;
{$R *.dfm}

procedure TGongyoloegekF.beolvas;
begin
 ures;
 if aF.gongyQ.IsEmpty then Exit;
 edvkod.Text:=aF.gongyQ.FieldByName('v_kod').AsString;
 edszovege.Text:=aF.gongyQ.FieldByName('nev').AsString;
 sptomeg.value:=aF.gongyQ.FieldByName('tomeg').value;
 btnfelvesz.Caption:='Módosít';
 btnfelvesz.tag:=aF.gongyQ.FieldByName('id').AsInteger;
end;

procedure TGongyoloegekF.btnfelveszClick(Sender: TObject);
begin
  if edszovege.Text='' then
  begin
    ShowMessage('Adja meg a göngyöleg nevét!');
    Exit;
  end;
  if sptomeg.Value<=0 then
  begin
    ShowMessage('Adja meg a göngyöleg tömegét!');
    Exit;
  end;
  if AF.gongyQ.Locate('nev',edszovege.Text,[locaseinsensitive]) then
  if AF.gongyQ.FieldByName('id').AsInteger<>(sender as TButton).Tag then
  begin
    ShowMessage('Ilyen göngyöleg már léterzik!');
    exit;
  end;
  if Length(edvkod.Text)<4 then
  begin
    ShowMessage('Adja meg a göngyöleg vonakódját! min 4 szám.');
    Exit;
  end;
  if AF.gongyQ.Locate('v_kod',edvkod.Text,[locaseinsensitive]) then
  if AF.gongyQ.FieldByName('id').AsInteger<>(sender as TButton).Tag then
  begin
    ShowMessage('Ilyen göngyöleg vonalkód létezik!');
    exit;
  end;
//  with ellenQ do
//   begin
//     Close;
//     Open;
//     DisableControls;
//     if Locate('v_kod',edvkod.Text,[loCaseInsensitive]) then
//       begin
//         ShowMessage('Ez a vonalkód már foglalt');
//         exit;
//       end;
//     EnableControls;
//     Close
//   end;
with AF.Q1 do
 begin
  Close;
  sql.Clear;
  if (sender as TButton).Tag=0 then
  begin
    SQL.Add('Insert into gongyoleg ');
    SQL.Add('(nev,tomeg,v_kod)VALUES(:nev,:tomeg,:v_kod) ');
  end
  else
  begin
   SQL.Add(' Update gongyoleg SET nev=:nev, tomeg=:tomeg, v_kod=:v_kod ');
   SQL.Add(' Where id='+#39+inttostr((sender as TButton).Tag)+#39)
  end;
  Params[0].AsString:=edszovege.Text;
  Params[1].Value:=sptomeg.Value;
  Params[2].AsString:=edvkod.Text;
  ExecSQL
 end;
 AF.gongyQ.Refresh;
 beolvas
end;

procedure TGongyoloegekF.Button1Click(Sender: TObject);
begin
 close
end;

procedure TGongyoloegekF.Button2Click(Sender: TObject);
begin
 ures;
 reszletekroll.Collapsed:=false;
end;

procedure TGongyoloegekF.Button3Click(Sender: TObject);
begin
 beolvas;
 reszletekroll.Collapsed:=false;
end;

procedure TGongyoloegekF.Button4Click(Sender: TObject);
begin
if MessageDlg('Biztosan törli?',mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes then
   begin
    with AF.Q1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Delete from gongyoleg ');
      SQL.Add(' Where id='+IntToStr(AF.gongyQ.Fields[0].AsInteger));
      ExecSQL;
      Close;
    end;
    AF.gongyQ.Refresh;
   end;
end;

procedure TGongyoloegekF.FormActivate(Sender: TObject);
begin
 AF.gongyQ.Close;
 AF.gongyQ.open;
 beolvas
end;

procedure TGongyoloegekF.JvDBUltimGrid1CellClick(Column: TColumn);
begin
 beolvas
end;

procedure TGongyoloegekF.JvDBUltimGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key=VK_UP)or(Key=VK_DOWN) then beolvas
end;

procedure TGongyoloegekF.sptomegKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then btnfelveszClick(btnfelvesz)
end;

procedure TGongyoloegekF.ures;
begin
 with AF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT LPAD(CAST(IF(MAX(id)is NULL,1,MAX(id)+1) AS CHAR),4,''0'')FROM gongyoleg');
    Open;
    edvkod.Text:=fields[0].AsString;
    Close;
  end;
 //edvkod.Clear;
 edszovege.Clear;
 sptomeg.Value:=0;
 btnfelvesz.Caption:='Felvesz';
 btnfelvesz.tag:=0;
end;

end.
