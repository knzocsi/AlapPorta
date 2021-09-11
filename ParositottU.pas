unit ParositottU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TParositottF = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnKilepes: TButton;
    piKezdoDatum: TDateTimePicker;
    piBefejezoDatum: TDateTimePicker;
    DBGrid1: TDBGrid;
    pnl1: TPanel;
    img1: TImage;
    pnl2: TPanel;
    dbnvgr1: TDBNavigator;
    procedure szures;

    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure piKezdoDatumChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ParositottF: TParositottF;

implementation
uses au;

{$R *.dfm}

{ TParositottF }

procedure TParositottF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TParositottF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  piKezdoDatum.Date:=date;
  piBefejezoDatum.Date:=date;
  szures;
end;

procedure TParositottF.piKezdoDatumChange(Sender: TObject);
begin
  szures;
end;

procedure TParositottF.szures;
begin
  with af.ParositottQ do
  begin
    close;
    SQL.Clear;
    SQL.Add('SELECT * FROM parositott ');
    SQL.Add('WHERE ((Erkdatum>=:kdatum) and (Erkdatum<=:bdatum)) or  ((Tavdatum>=:kdatum) and (Tavdatum<=:bdatum))');
    SQL.Add('ORDER BY ErkDatum desc, ErkIdo desc');
    ParamByName('kdatum').AsDate:=piKezdoDatum.Date;
    ParamByName('bdatum').AsDate:=piBefejezoDatum.Date;
    Open();
  end;

end;

end.
