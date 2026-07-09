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
  JvExDBGrids, JvDBGrid,
  System.StrUtils, System.RegularExpressions, siComp, siLngLnk;

   //ImportF
 resourcestring rsTablatMegKellAdni= 'A táblát meg kell adni!';
 resourcestring rsImportalasKesz= 'Importálás kesz!';
 resourcestring rsMezotMegKellAdni= 'A mezõt meg kell adni!';
 resourcestring rsOszlopotMegKellAdni= 'Az oszlopot meg kell adni!';

type
  TCimAdat = record
    IranyitoSzam: string;
    Telepules: string;
    Kozterulet: string;
    KozteruletJellege: string;
    Hazszam: string;
    HelyrajziSzam: string;
  end;

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
    chkCimbontas: TCheckBox;
    siLangLinked_ImportF: TsiLangLinked;
    procedure btnKilepesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbTablaChange(Sender: TObject);
    procedure btnBetoltesClick(Sender: TObject);
    procedure btnOszlopbeallitasaClick(Sender: TObject);
    procedure cbOszlopChange(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbMezoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImportF: TImportF;
  CimAdat: TCimAdat;

implementation

{$R *.dfm}


const
  // Közterület jellegek listája
  KOZTERULET_JELLEGEK: array[0..42] of string = (
    'utca', 'út', 'u.', 'u', 'tér', 'körút', 'krt.', 'krt', 'köz',
    'sétány', 'park', 'sor', 'körönd', 'liget', 'telep', 'dûlõ',
    'lakótelep', 'major', 'tanya', 'külterület', 'kerület', 'ker.',
    'határ út', 'határ', 'puszta', 'sikátor', 'fasor', 'rakpart',
    'part', 'híd', 'alsó', 'felsõ', 'új', 'öreg', 'nagy', 'kis',
    'erdõ', 'kert', 'iskola', 'gyár', 'üzem', 'ipari park','u.'
  );


function VanHelyrajziSzam(const AText: string): Boolean;
begin
  Result := ContainsText(AText, 'hrsz') or
            ContainsText(AText, 'helyrajzi') or
            TRegEx.IsMatch(AText, '\d{4,}/\d+');
end;

function KinyerHelyrajziSzam(const AText: string): string;
var
  Match: TMatch;
begin
  Result := '';
  // "hrsz.: 1234/5" vagy "hrsz: 1234/5" vagy "hrsz 1234/5" formátum
  Match := TRegEx.Match(AText, 'hrsz[\.:]*\s*(\d+/\d+)', [roIgnoreCase]);
  if Match.Success then
  begin
    Result := Match.Groups[1].Value;
    Exit;
  end;

  // "1234/56 hrsz" formátum
  Match := TRegEx.Match(AText, '(\d+/\d+)\s*hrsz', [roIgnoreCase]);
  if Match.Success then
  begin
    Result := Match.Groups[1].Value;
    Exit;
  end;

  // Csak a szám "01234/56" formátum (pl.: "Szeged 6710 02090/32 hrsz.")
  Match := TRegEx.Match(AText, '(\d{4,}/\d+)', [roIgnoreCase]);
  if Match.Success then
    Result := Match.Groups[1].Value;
end;

function KinyerIranyitoSzam(const AText: string): string;
var
  Match: TMatch;
begin
  Result := '';
  // 4 számjegyû irányítószám keresése a szöveg elején
  Match := TRegEx.Match(Trim(AText), '^(\d{4})\b');
  if Match.Success then
    Result := Match.Groups[1].Value;
end;

function TalalKozteruletJelleg(const AText: string; out Jelleg: string): Integer;
var
  i: Integer;
  Pos: Integer;
  LowerText: string;
begin
  Result := -1;
  Jelleg := '';
  LowerText := LowerCase(AText);

  for i := Low(KOZTERULET_JELLEGEK) to High(KOZTERULET_JELLEGEK) do
  begin
    Pos := System.Pos(' ' + KOZTERULET_JELLEGEK[i] + ' ', ' ' + LowerText + ' ');
    if Pos > 0 then
    begin
      // Ha találtunk jelleget, megnézzük, hogy ez a legjobb-e (leghosszabb illeszkedés)
      if (Result = -1) or (Length(KOZTERULET_JELLEGEK[i]) > Length(Jelleg)) then
      begin
        Result := Pos - 1;
        Jelleg := KOZTERULET_JELLEGEK[i];
      end;
    end;
  end;
end;

function KinyerHazszam(const AText: string): string;
var
  Match: TMatch;
begin
  Result := '';
  // Házszám formátumok: "123", "123/a", "123.a", "123/5", stb.
  Match := TRegEx.Match(AText, '\b(\d+[/.][a-zA-Z0-9]+|\d+)\s*\.?\s*$');
  if Match.Success then
    Result := Trim(Match.Groups[1].Value);
end;

procedure CimSzetbontas(const ACim: string; out ACimAdat: TCimAdat);
var
  Cim: string;
  IranyitoSzam: string;
  Telepules: string;
  Maradek: string;
  KozteruletJelleg: string;
  KozteruletPos: Integer;
  VesszoPos: Integer;
  Reszek: TArray<string>;
  HelyrajziSzam: string;
  i: Integer;
begin
  // Inicializálás
  ACimAdat.IranyitoSzam := '';
  ACimAdat.Telepules := '';
  ACimAdat.Kozterulet := '';
  ACimAdat.KozteruletJellege := '';
  ACimAdat.Hazszam := '';
  ACimAdat.HelyrajziSzam := '';

  Cim := Trim(ACim);
  if Cim = '' then Exit;

  // Helyrajzi szám keresése és eltávolítása
  if VanHelyrajziSzam(Cim) then
  begin
    HelyrajziSzam := KinyerHelyrajziSzam(Cim);
    ACimAdat.HelyrajziSzam := HelyrajziSzam;
    // Eltávolítjuk a helyrajzi számot a címbõl
    Cim := TRegEx.Replace(Cim, 'hrsz[\.:]*\s*\d+/\d+', '', [roIgnoreCase]);
    Cim := TRegEx.Replace(Cim, '\d{4,}/\d+\s*hrsz', '', [roIgnoreCase]);
    if HelyrajziSzam <> '' then
      Cim := StringReplace(Cim, HelyrajziSzam, '', [rfIgnoreCase]);
    Cim := Trim(Cim);
  end;

  // Irányítószám kinyerése
  IranyitoSzam := KinyerIranyitoSzam(Cim);
  if IranyitoSzam <> '' then
  begin
    ACimAdat.IranyitoSzam := IranyitoSzam;
    Cim := Trim(Copy(Cim, Length(IranyitoSzam) + 1, Length(Cim)));
  end;

  // Vesszõ vagy pont eltávolítása a település után
  VesszoPos := Pos(',', Cim);
  if VesszoPos > 0 then
  begin
    Telepules := Trim(Copy(Cim, 1, VesszoPos - 1));
    Maradek := Trim(Copy(Cim, VesszoPos + 1, Length(Cim)));
  end
  else
  begin
    // Nincs vesszõ, akkor szóközzel próbáljuk szétválasztani
    Reszek := Cim.Split([' '], TStringSplitOptions.ExcludeEmpty);
    if Length(Reszek) > 0 then
    begin
      Telepules := Reszek[0];
      Maradek := '';
      for i := 1 to High(Reszek) do
      begin
        if Maradek <> '' then
          Maradek := Maradek + ' ';
        Maradek := Maradek + Reszek[i];
      end;
    end
    else
    begin
      Telepules := Cim;
      Maradek := '';
    end;
  end;

  ACimAdat.Telepules := Telepules;

  // Ha nincs maradék, akkor nincs további adat
  if Maradek = '' then Exit;

  // "Pf: 9" eset kezelése
  if ContainsText(Maradek, 'Pf:') or ContainsText(Maradek, 'Postafi') then
  begin
    // Postafiók esetén nem dolgozunk fel tovább
    Exit;
  end;

  // Közterület jelleg keresése
  KozteruletPos := TalalKozteruletJelleg(Maradek, KozteruletJelleg);

  if KozteruletPos > 0 then
  begin
    // Van közterület jelleg
    ACimAdat.KozteruletJellege := KozteruletJelleg;
    ACimAdat.Kozterulet := Trim(Copy(Maradek, 1, KozteruletPos - 1));

    // A jelleg után maradó rész a házszám
    Maradek := Trim(Copy(Maradek, KozteruletPos + Length(KozteruletJelleg), Length(Maradek)));
    ACimAdat.Hazszam := KinyerHazszam(Maradek);
  end
  else
  begin
    // Nincs közterület jelleg, akkor az egész maradék lehet közterület
    // vagy speciális esetek (pl. "Külterület 2", "VIII. kerület")
    ACimAdat.Kozterulet := Maradek;
  end;
end;

procedure TImportF.btnBetoltesClick(Sender: TObject);
  procedure csv;
  var csvfile:TextFile;
      sor:string;
      i,max:integer;

    function oszlopszam:integer;
    var szam,i:integer;
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
      // A cím bontás miatt kell
      for i:=szam to szam+6 do
      begin
        ImportT.FieldDefs.Add(i.ToString,ftString,100);
        cbOszlop.items.Add(i.ToString);
      end;

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
      for i:=0 to max+5 do
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
    SQLF:='INSERT INTO '+LowerCase(cbTabla.Text)+' ('+sqlt+') VALUES ('+sqlv+');';
    Q1.Close;
    Q1.SQL.Clear;
    Q1.SQL.Add('SELECT * FROM '+LowerCase(cbTabla.Text));
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
  ShowMessage(rsImportalasKesz);
end;

procedure TImportF.btnKilepesClick(Sender: TObject);
begin
  close;
end;

procedure TImportF.btnOszlopbeallitasaClick(Sender: TObject);
begin
   if cbTabla.itemindex=-1 then
  begin
    ShowMessage(rsTablatMegKellAdni);
    exit;
  end;
  if (cbMezo.Text='') and (not chkCimbontas.Checked) then
  begin
    ShowMessage(rsMezotMegKellAdni);
    exit;
  end;
  if cbOszlop.Text='' then
  begin
    ShowMessage(rsOszlopotMegKellAdni);
    exit;
  end;
  if (chkCimbontas.Checked) then
  begin
    with ImportT do
    begin
      JvDBGrid1.Columns[JvDBGrid1.Columns.count-6].Title.Caption:=IntToStr(JvDBGrid1.Columns.count-5)+'.Irsz';
      JvDBGrid1.Columns[JvDBGrid1.Columns.count-5].Title.Caption:=IntToStr(JvDBGrid1.Columns.count-4)+'.Telepules';
      JvDBGrid1.Columns[JvDBGrid1.Columns.count-4].Title.Caption:=IntToStr(JvDBGrid1.Columns.count-3)+'.Kozterulet';
      JvDBGrid1.Columns[JvDBGrid1.Columns.count-3].Title.Caption:=IntToStr(JvDBGrid1.Columns.count-2)+'.Kozt_Jelleg';
      JvDBGrid1.Columns[JvDBGrid1.Columns.count-2].Title.Caption:=IntToStr(JvDBGrid1.Columns.count-1)+'.Hazszam';
      JvDBGrid1.Columns[JvDBGrid1.Columns.count-1].Title.Caption:=IntToStr(JvDBGrid1.Columns.count)+'.Hrsz';
      First;
      while not eof do
      begin
        CimSzetbontas(Fields[StrToInt(cbOszlop.text)].AsString, CimAdat);
        edit;
        FieldByName((JvDBGrid1.Columns.count-5).ToString).AsString:=CimAdat.IranyitoSzam;
        FieldByName((JvDBGrid1.Columns.count-4).ToString).AsString:=CimAdat.Telepules;
        FieldByName((JvDBGrid1.Columns.count-3).ToString).AsString:=CimAdat.Kozterulet;
        FieldByName((JvDBGrid1.Columns.count-2).ToString).AsString:=CimAdat.KozteruletJellege;
        FieldByName((JvDBGrid1.Columns.count-1).ToString).AsString:=CimAdat.Hazszam;
        FieldByName((JvDBGrid1.Columns.count).ToString).AsString:=CimAdat.HelyrajziSzam;
        post;
        next;
      end;
    end;

    chkCimbontas.Checked:=false;
  end

  else JvDBGrid1.Columns[StrToInt(cbOszlop.text)-1].Title.Caption:=cbOszlop.Text+'.'+cbMezo.Text;
end;

procedure TImportF.cbMezoChange(Sender: TObject);
begin
  chkCimbontas.Checked:=false;
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
    0: mezok('termek');
    1: mezok('partner');
    2: mezok('keszlet');

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
