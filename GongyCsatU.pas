unit GongyCsatU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, Vcl.Mask,
  JvExMask, JvSpin, JvExControls, JvDBLookup, siComp, siLngLnk;

type
  TGongyCsatF = class(TForm)
    Panel1: TPanel;
    btnkilepes: TButton;
    Panel2: TPanel;
    btntorol: TButton;
    gongygrid: TJvDBUltimGrid;
    cbgongy: TJvDBLookupCombo;
    spmenny: TJvSpinEdit;
    btnfelvesz: TButton;
    Label1: TLabel;
    Label2: TLabel;
    spegystomeg: TJvSpinEdit;
    chkkezi: TCheckBox;
    Label3: TLabel;
    siLangLinked_GongyCsatF: TsiLangLinked;
    procedure btnkilepesClick(Sender: TObject);
    procedure btnfelveszClick(Sender: TObject);
    procedure spmennyKeyPress(Sender: TObject; var Key: Char);
    procedure chkkeziClick(Sender: TObject);
    procedure cbgongyChange(Sender: TObject);
    procedure btntorolClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fo(elsomeres:Boolean);
  end;

var
  GongyCsatF: TGongyCsatF;
  emeres:Boolean;
implementation
  uses AU;
{$R *.dfm}

procedure TGongyCsatF.btnfelveszClick(Sender: TObject);
begin
 if (not chkkezi.Checked)and(cbgongy.KeyValue=0) then
  begin
    ShowMessage('Válasszon göngyöleget!');
    exit;
  end;
 if spmenny.Value<=0 then
  begin
    ShowMessage('Hibás göngyöleg mennyiség!');
    Exit;
  end;
 //csatgongy_masol:=True;
 if AF.mem_csatgongy.Locate('g_id;elso;',VarArrayOf([cbgongy.KeyValue,emeres]),[]) then
  begin
   AF.mem_csatgongy.Edit;
   AF.mem_csatgongyg_menny.Value:=AF.mem_csatgongyg_menny.Value+spmenny.Value;
  end
 else
  begin
   AF.mem_csatgongy.Append;
   af.mem_csatgongyg_id.AsInteger:=cbgongy.KeyValue;
   if not chkkezi.Checked then
    begin
     AF.mem_csatgongyg_nev.AsString:=AF.gongyQ.FieldByName('nev').AsString;
     AF.mem_csatgongyg_tomeg.AsFloat:=AF.gongyQ.FieldByName('tomeg').AsFloat;
    end
   else
    begin
     AF.mem_csatgongyg_nev.AsString:='Kézi';
     AF.mem_csatgongyg_tomeg.AsFloat:=spegystomeg.Value;
    end;
   AF.mem_csatgongyg_menny.AsFloat:=spmenny.Value;
   AF.mem_csatgongyelso.AsBoolean:=emeres;
  end;
  AF.mem_csatgongy.Post;
  //csatgongy_masol:=False;
  cbgongy.KeyValue:=0;
  spmenny.Value:=0;
  chkkezi.Checked:=False;
end;

procedure TGongyCsatF.btnkilepesClick(Sender: TObject);
begin
 close;
end;

procedure TGongyCsatF.btntorolClick(Sender: TObject);
begin
if MessageDlg('Biztosan törli?',mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes then
   begin
    af.mem_csatgongy.Delete
   end;
end;

procedure TGongyCsatF.cbgongyChange(Sender: TObject);
begin
 if cbgongy.KeyValue=0 then spegystomeg.Value:=0
 else spegystomeg.Value:=AF.gongyQ.FieldByName('tomeg').AsFloat;
end;

procedure TGongyCsatF.chkkeziClick(Sender: TObject);
begin
 cbgongy.KeyValue:=0;
 cbgongy.Enabled:=not chkkezi.Checked;
 spegystomeg.Enabled:=chkkezi.Checked;
 spmenny.Value:=1;
 spmenny.Enabled:=not chkkezi.Checked;
end;

procedure TGongyCsatF.fo(elsomeres:Boolean);
begin
 emeres:=elsomeres;
 af.gongyQ.Close;
 af.gongyQ.Open;
 cbgongy.KeyValue:=0;
 spmenny.Value:=0;
 chkkezi.Checked:=False;
 ShowModal;
end;

procedure TGongyCsatF.spmennyKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then btnfelveszClick(Self);
end;

end.
