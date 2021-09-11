unit ForgalomU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.DBCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvExExtCtrls, JvExtComponent,
  JvRollOut, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, JvExControls, JvDBLookup,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid;

type
  TForgalomF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    piKezdoDatum: TDateTimePicker;
    piBefejezoDatum: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    DBNavigator1: TDBNavigator;
    JvDBUltimGrid1: TJvDBUltimGrid;
    Button1: TButton;
    Button2: TButton;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure szures;
    procedure piKezdoDatumChange(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ForgalomF: TForgalomF;

implementation
uses au, mjegyU,LibreExcelU;

{$R *.dfm}

procedure TForgalomF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TForgalomF.Button1Click(Sender: TObject);
begin
 mjegyF.masol(piKezdoDatum.Date,piBefejezoDatum.Date,False);
 mjegyF.ShowModal;
end;

procedure TForgalomF.Button2Click(Sender: TObject);
begin
LibreExcelF.mezo_nevek(JvDBUltimGrid1,nil);
end;

procedure TForgalomF.DBGrid1CellClick(Column: TColumn);
begin
  aF.kepszures(image1);
end;

procedure TForgalomF.DBGrid1DblClick(Sender: TObject);
begin
  aF.kepszures(image1);
end;

procedure TForgalomF.DBGrid1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  aF.kepszures(image1);
end;

procedure TForgalomF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  aF.kepszures(image1);
end;

procedure TForgalomF.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  aF.kepszures(image1);
end;

procedure TForgalomF.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  aF.kepkeres(image1);
end;

procedure TForgalomF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
 // Button1.enabled:=aF.van_joga('4');
  piKezdoDatum.Date:=date;
  piBefejezoDatum.Date:=date;
  szures;
end;

procedure TForgalomF.piKezdoDatumChange(Sender: TObject);
begin
  szures;
end;

procedure TForgalomF.szures;
begin
  with af.ForgalomQ do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM forgalom ');
    SQL.Add('WHERE (Datum>=:kdatum) and (Datum<=:bdatum)');
    SQL.Add('ORDER BY Datum desc, Ido desc');
    ParamByName('kdatum').AsDate:=piKezdoDatum.Date;
    ParamByName('bdatum').AsDate:=piBefejezoDatum.Date;
    Open;
  end;
end;

end.
