unit BelepU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExControls, JvDBLookup,
  Vcl.ExtCtrls, Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids,
  JvDBGrid, JvDBUltimGrid;

type
  TBelepF = class(TForm)
    Panel1: TPanel;
    edjelszo: TEdit;
    Button1: TButton;
    DBLookupListBox1: TDBLookupListBox;
    procedure FormCreate(Sender: TObject);
    procedure edjelszoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edjelszoKeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BelepF: TBelepF;

implementation
  uses au;
{$R *.dfm}

procedure TBelepF.Button1Click(Sender: TObject);
begin
 Application.Terminate
end;

procedure TBelepF.DBLookupListBox1Click(Sender: TObject);
begin
 edjelszo.Clear;
 edjelszo.SetFocus;
end;

procedure TBelepF.edjelszoKeyPress(Sender: TObject; var Key: Char);
begin
 if (key=#13)then
 if(aF.Transform(edjelszo.Text)=aF.FelhaszQ.FieldByName('jelszo').AsString) then
 begin
   f_ide:=aF.FelhaszQ.FieldByName('id').AsInteger;
   felhnev:=aF.FelhaszQ.FieldByName('nev').AsString;
   BelepF.Close
 end
 else
 begin
  Application.MessageBox('Hibás jelszó!','Hiba',MB_OK);
  edjelszo.SetFocus;
 end;
end;

procedure TBelepF.edjelszoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //
end;

procedure TBelepF.FormActivate(Sender: TObject);
begin
 edjelszo.Clear;
end;

procedure TBelepF.FormCreate(Sender: TObject);
begin
 af.felhaszQ.open;
 if af.felhaszQ.isempty then
  begin
    aF.programozo_letrehozasa;
    af.felhaszQ.refresh;
  end;
 aF.FelhaszQ.first;
end;


procedure TBelepF.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then edjelszo.SetFocus
end;

end.
