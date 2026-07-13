unit SoforU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, siComp, siLngLnk;

type
  TSoforF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    siLangLinked1: TsiLangLinked;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoforF: TSoforF;

implementation
uses AU ,FoU;

{$R *.dfm}

procedure TSoforF.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TSoforF.Button2Click(Sender: TObject);
var ujnev:string;
    i:Integer;
    sqlsz:string;
begin
 ujnev:=InputBox('Sofõr felvitele','Sofõr','');
 if ujnev='' then Exit;
 if aF.SoforokQ.Locate('sofor',ujnev,[locaseinsensitive]) then
  begin
    ShowMessage('Ilyen sofõr már van!');
    exit;
  end;

 with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Insert into soforok ');
    SQL.Add('(sofor)VALUES(:sofor) ');
    Params[0].AsString:=ujnev;
    ExecSQL;
  end;
  aF.soforokQ.Refresh;
end;

procedure TSoforF.Button3Click(Sender: TObject);
begin
  if MessageDlg('Bizos törli a sofõrt?',mtConfirmation,mbYesNo,0)=6 then
   begin
    with aF.Q1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM soforok ');
      SQL.Add(' Where id='+IntToStr(aF.soforokQ.Fields[0].AsInteger));
      ExecSQL;
      Close;
    end;
    aF.soforokQ.Refresh;
   end;
end;

end.
