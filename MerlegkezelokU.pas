unit MerlegkezelokU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMerlegkezelokF = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MerlegkezelokF: TMerlegkezelokF;

implementation
  uses au,UzenetekU;
{$R *.dfm}

procedure TMerlegkezelokF.Button1Click(Sender: TObject);
begin
Close
end;

procedure TMerlegkezelokF.Button2Click(Sender: TObject);
var ujnev:string;
    i:Integer;
    sqlsz:string;
begin
 ujnev:=InputBox(rsUjMerlegkezeloFelvitele,rsAdjaMegANevet,'');
 if ujnev='' then Exit;
 if aF.merlegkezQ.Locate('nev',ujnev,[locaseinsensitive]) then
  begin
    ShowMessage(rsMerlegkezeloMarLetezik);
    exit;
  end;

 with aF.Q1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Insert into merlegelok ');
    SQL.Add('(nev)VALUES(:nev) ');
    Params[0].AsString:=ujnev;
    ExecSQL;
  end;
  aF.merlegkezQ.Refresh;
end;

procedure TMerlegkezelokF.Button3Click(Sender: TObject);
begin
  if MessageDlg(rsMerlegkezeloTorlese,mtConfirmation,mbYesNo,0)=6 then
   begin
    with aF.Q1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM merlegelok ');
      SQL.Add(' Where id='+IntToStr(aF.merlegkezQ.Fields[0].AsInteger));
      ExecSQL;
      Close;
    end;
    aF.merlegkezQ.Refresh;
   end;
end;

procedure TMerlegkezelokF.FormActivate(Sender: TObject);
begin
aF.merlegkezQ.Close;
aF.merlegkezQ.Open;
end;

procedure TMerlegkezelokF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
aF.merlegkezQ.Close
end;

end.
