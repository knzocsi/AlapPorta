// A Fõ form ImportClick-be:
//  ImportF.Kapcs.Params:=Af.Kapcs.Params;

unit ImportU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  JvExDBGrids, JvDBGrid;

type
  TImportF = class(TForm)
    Panel1: TPanel;
    btnKilepes: TButton;
    cbTabla: TComboBox;
    ImportT: TFDMemTable;
    TablaQ: TFDQuery;
    Label1: TLabel;
    cbMezo: TComboBox;
    Label2: TLabel;
    btnBetoltes: TButton;
    OpenDialog1: TOpenDialog;
    ImportDS: TDataSource;
    lblFilename: TLabel;
    btnOszlopbeallitasa: TButton;
    JvDBGrid1: TJvDBGrid;
    cbOszlop: TComboBox;
    Label3: TLabel;
    btnImport: TButton;
    Q1: TFDQuery;
    Kapcs: TFDConnection;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbTablaChange(Sender: TObject);
    procedure btnBetoltesClick(Sender: TObject);
    procedure btnOszlopbeallitasaClick(Sender: TObject);
    procedure cbOszlopChange(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportF: TImportF;

implementation


{$R *.dfm}



procedure TImportF.btnBetoltesClick(Sender: TObject);
  procedure csv;
  var csvfile:TextFile;
      sor:string;
      i,max:integer;

    function oszlopszam:integer;
    var szam:integer;
        s,s1:string;
    begin
      szam:=1;
      s:=sor;
      while pos(';',s)<>0 do
      begin
        ImportT.FieldDefs.Add(szam.ToString,ftString,100);
        cbOszlop.items.Add(szam.ToString);//+'.oszlop');
        Delete(s,1,pos(';',s));
        szam:=szam+1;
      end;

      Result:=szam-1;
    end;

    function szo:string;
    begin
      Result:='';
      if pos(';',sor)<>0 then
      begin
        szo:=Copy(sor,1,pos(';',sor)-1);
        sor:=Copy(sor,pos(';',sor)+1,Length(sor)-pos(';',sor));
      end;
    end;



  begin
    AssignFile(csvfile,OpenDialog1.FileName);
    Reset(csvfile);
    max:=0;
    while not eof(csvfile) do
    begin
      Readln(csvfile,sor);
      if (sor<>'') and (sor[length(sor)]<>';') then sor:=sor+';';
      if (sor<>'') and (max=0) then
      begin
        max:=oszlopszam;;
        ImportT.open;
      end;
      if max<>0 then
      begin
        ImportT.append;
        for i:=1 to max do
        begin
          ImportT.FieldByName(inttostr(i)).AsString:=szo;
        end;
        ImportT.post;
      end;
    end;
    CloseFile(csvfile);

    ImportT.EnableControls;
    if max<>0 then
      for i:=0 to max-1 do
      begin
        jvDBGrid1.Columns[i].Width:=50;
      end;
  end;

  procedure dbf;
  begin
    ;
  end;

begin
 
  OpenDialog1.Filter:='*.csv;*.txt';

  if OpenDialog1.Execute then
  begin
    //ImportT.Open;
    lblFilename.Caption:= OpenDialog1.FileName;
    ImportT.Close;
    ImportT.FieldDefs.Clear;
    ImportT.DisableControls;
    csv;
  end;
end;

procedure TImportF.btnImportClick(Sender: TObject);
var i,mezoszam:integer;
    SQLF,sqlt,sqlv,mezo:string;
    hasznalt_oszlop:array[1..100] of integer;
    hasznalt_mezo:array[1..100] of string[30];



begin
  sqlt:='';
  mezoszam:=0;
  for i := 0 to JvDBGrid1.Columns.Count-1 do
  begin
    mezo:=Copy(JvDBGrid1.Columns[i].Title.Caption,
              pos('.',JvDBGrid1.Columns[i].Title.Caption)+1,Length(JvDBGrid1.Columns[i].Title.Caption)-pos('.',JvDBGrid1.Columns[i].Title.Caption));
    if pos('.',JvDBGrid1.Columns[i].Title.Caption)<>0 then
      if sqlt='' then
      begin
        sqlt:=mezo;
        sqlv:=':'+mezo;
        mezoszam:=1;
        hasznalt_oszlop[mezoszam]:=i+1;
        hasznalt_mezo[mezoszam]:=mezo;
      end
      else
      begin
        sqlt:=sqlt+','+mezo;
        sqlv:=sqlv+',:'+mezo;
        mezoszam:=mezoszam+1;
        hasznalt_oszlop[mezoszam]:=i+1;
        hasznalt_mezo[mezoszam]:=mezo;
      end;
  end;
  if (sqlt='')or(ImportT.RecordCount=0) then exit;
  with ImportT do
  begin
    first;
    DisableControls;
    SQLF:='INSERT INTO '+cbTabla.Text+' ('+sqlt+') VALUES ('+sqlv+');';
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('SELECT * FROM '+cbTabla.Text);
    Q1.Open;

    while not eof do
    begin
      TablaQ.close;
      TablaQ.SQL.Clear;
      TablaQ.SQL.Add(SQLF);
      for i := 1 to mezoszam do
      begin

        case Q1.FieldByName(Hasznalt_mezo[i]).DataType of
          ftString,
          ftWideString  :  TablaQ.ParamByName(Hasznalt_mezo[i]).AsString:=FieldByName(Hasznalt_oszlop[i].ToString).AsString;
          ftInteger :  try TablaQ.ParamByName(Hasznalt_mezo[i]).AsInteger:=FieldByName(Hasznalt_oszlop[i].ToString).AsInteger;
                       except TablaQ.ParamByName(Hasznalt_mezo[i]).AsInteger:=0;
                       end;
          ftFloat,
          ftBCD     :  try TablaQ.ParamByName(Hasznalt_mezo[i]).AsFloat:=FieldByName(Hasznalt_oszlop[i].ToString).AsFloat;
                       except TablaQ.ParamByName(Hasznalt_mezo[i]).AsFloat:=0;
                       end;
          ftCurrency:  try TablaQ.ParamByName(Hasznalt_mezo[i]).AsCurrency:=FieldByName(Hasznalt_oszlop[i].ToString).AsCurrency;
                       except TablaQ.ParamByName(Hasznalt_mezo[i]).AsCurrency:=0;
                       end;
        else Showmessage(IntToStr(Ord(Q1.FieldByName(Hasznalt_mezo[i]).DataType)));//TablaQ.ParamByName(Hasznalt_mezo[i]).AsString:=FieldByName(Hasznalt_oszlop[i].ToString).AsString;
        end;
      end;
      try
        TablaQ.ExecSQL;
      except
        //ShowMessage(TablaQ.SQL.Text);
        on e:EDatabaseError do
        begin
          showmessage(e.message)
        end;

      end;
      next;
    end;
    EnableControls;
  end;
  ShowMessage('Kész az importálás!');
end;

procedure TImportF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TImportF.btnOszlopbeallitasaClick(Sender: TObject);
begin
   if cbTabla.itemindex=-1 then
  begin
    ShowMessage('A táblát meg kell adni!');
    exit;
  end;
  if cbMezo.Text='' then
  begin
    ShowMessage('A mezõt meg kell adni!');
    exit;
  end;
  if cbOszlop.Text='' then
  begin
    ShowMessage('Az oszlopot meg kell adni!');
    exit;
  end;
  JvDBGrid1.Columns[JvDBGrid1.col-1].Title.Caption:=IntToStr(JvDBGrid1.col)+'.'+cbMezo.Text;
end;

procedure TImportF.cbOszlopChange(Sender: TObject);
begin
   if cbOszlop.Text<>'' then JvDBGrid1.Col:=StrToInt(cbOszlop.text);
end;

procedure TImportF.cbTablaChange(Sender: TObject);

  procedure mezok(Tabla:string);
  var i:integer;
  begin
    with TablaQ do
    begin
      close;
      SQL.Clear;
      SQL.Add('Select * From '+tabla);
      open;
      cbMezo.Items.Clear;
      for i := 1 to FieldCount-1 do cbMezo.items.Add(Fields[i].DisplayName);
    end;
  end;

begin
  //ShowMessage(ImportF.Kapcs.Params.Database);
  Kapcs.open;
  case cbTabla.ItemIndex of
    0: mezok('Termek');
    1: mezok('Partner');
    2: mezok('Keszlet');

  end;
end;

procedure TImportF.FormActivate(Sender: TObject);
begin
  OnActivate:=nil;
  lblFilename.Caption:='';
  cbTabla.ItemIndex:=-1;
  cbMezo.Items.Clear;

  Kapcs.Connected:=True;

end;

procedure TImportF.FormCreate(Sender: TObject);
begin
  //ImportF.Kapcs:=AF.kapcs;

end;

end.
