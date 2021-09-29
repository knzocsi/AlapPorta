unit NezetU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, JvExControls,
  JvBitmapButton, System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ComCtrls,
  JvExComCtrls, JvToolBar, frxClass, frxPreview, frxCtrls,Vcl.Printers,
  Vcl.Mask, JvExMask, JvSpin;

type
  TNezetF = class(TForm)
    frxNezet: TfrxPreview;
    ImageList1: TImageList;
    JvToolBar1: TJvToolBar;
    Button2: TButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Button3: TButton;
    Button1: TButton;
    btNyomtvalaszt: TButton;
    jvpsz: TJvSpinEdit;
    Button5: TButton;
    Button4: TButton;
    procedure btNyomtvalasztClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
   nyomtatva:Boolean;
   valasztott:TfrxReport;
   procedure rep_valaszt(akt_rep:TFrxReport;psz:Integer);

  end;

var
  NezetF: TNezetF;

implementation
  Uses NyomtatokU;
{$R *.dfm}


procedure TNezetF.Button1Click(Sender: TObject);
begin
 //DmReportok.rep_meretez(0.25);
end;

procedure TNezetF.Button2Click(Sender: TObject);
begin
 //DmReportok.rep_meretez(-0.25);
end;

procedure TNezetF.Button3Click(Sender: TObject);
begin
 if (jvpsz.Value<=0)or(jvpsz.Text='') then
  begin
    Application.MessageBox('A példányszám hibás!','Hiba!',MB_OK);
    Exit;
  end;
 valasztott.PrintOptions.Copies:=jvpsz.AsInteger;
 NyomtatokF.Close;
 nyomtatva:=True;
 Close
end;

procedure TNezetF.Button4Click(Sender: TObject);
begin
   try
  //  DmReportok.frxPDFExp.FileName:=ExtractFilePath(Application.ExeName)+'PDF\'+'t.pdf';
    //DmReportok.frxPDFExp.
  //  pdf_mentve:=valasztot_rep.Export(DmReportok.frxPDFExp);
   finally
    {valasztot_rep.PrepareReport(true);
    valasztot_rep.PrintOptions.Copies:=0;
    nyomtatva:=True;}
    NyomtatokF.Close;
    Close
   end;
end;

procedure TNezetF.btNyomtvalasztClick(Sender: TObject);
begin
 with NyomtatokF do
  begin
    Left:=btNyomtvalaszt.Left;
    Top:=btNyomtvalaszt.Top+btnyomtvalaszt.Height;
    show
  end;

end;
procedure TNezetF.Button5Click(Sender: TObject);
begin
 nyomtatva:=False;
 NyomtatokF.Close;
 Close
end;

procedure TNezetF.rep_valaszt(akt_rep: TFrxReport; psz: Integer);
begin
  nyomtatva:=False;
  valasztott:=akt_rep;
  valasztott.PrintOptions.Copies:=psz;
  valasztott.Preview:=frxNezet;
  //NezetF.frxNezet.Zoom:=meret;
  jvpsz.Value:=psz;
  valasztott.PrepareReport(true);
  ShowModal;
end;

end.
