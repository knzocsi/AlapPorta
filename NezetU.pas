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
    procedure merlegjegy_elokeszitese;
  public
    { Public declarations }
   nyomtatva:Boolean;
   valasztott:TfrxReport;
   procedure rep_valaszt(akt_rep:TFrxReport;psz:Integer);

  end;

var
  NezetF: TNezetF;

implementation
  Uses NyomtatokU,AU;
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

procedure TNezetF.merlegjegy_elokeszitese;
begin
 with valasztott do
  begin
    if Mjegy_nyom_rec.Storno then TfrxMemoView(FindObject('memcim')).Text:='Storno '+ LowerCase(TfrxMemoView(FindObject('memcim')).Text);
    TfrxMemoView(FindObject('membizszam')).Text:=Mjegy_nyom_rec.Mjegysorszam;
    //van a mérlegjegyen példányszám
    if TfrxMemoView(FindObject('frxpsz'))<>nil then
     begin
      TfrxMemoView(FindObject('frxpsz')).Text:=Mjegy_nyom_rec.Psz.ToString+'. példány';
      if duplex_mjegy then
       if TfrxMemoView(FindObject('frxpsz2'))<>nil then
        TfrxMemoView(FindObject('frxpsz2')).Text:=(Mjegy_nyom_rec.Psz+1).ToString+'. példány';
     end;
    //ha vannak tulajdonos adatok
    if TfrxMemoView(FindObject('memtulaj'))<>nil then
     TfrxMemoView(FindObject('memtulaj')).Text:=Mjegy_nyom_rec.Tulaj_nev;
    if TfrxMemoView(FindObject('memtulajcime'))<>nil then
     TfrxMemoView(FindObject('memtulajcime')).Text:=Mjegy_nyom_rec.Tulaj_cime;
    if TfrxMemoView(FindObject('memtuladosz'))<>nil then
     TfrxMemoView(FindObject('memtuladosz')).Text:=Mjegy_nyom_rec.Tulaj_adosz;
    if TfrxMemoView(FindObject('memtulcjsz'))<>nil then
     TfrxMemoView(FindObject('memtulcjsz')).Text:=Mjegy_nyom_rec.Tulaj_cjsz;
    if TfrxMemoView(FindObject('memTelefon'))<>nil then
     TfrxMemoView(FindObject('memTelefon')).Text:=Mjegy_nyom_rec.Tulaj_telefon;
    //merleg neve
    if TfrxMemoView(FindObject('memmerlegtipusa'))<>nil then
     TfrxMemoView(FindObject('memmerlegtipusa')).Text:=merleg_neve;
    //partner adatok
    if not Clean_Way then
     if TfrxMemoView(FindObject('mempartner'))<>nil then
      TfrxMemoView(FindObject('mempartner')).Text:=Mjegy_nyom_rec.Partner1_felirat;
    if TfrxMemoView(FindObject('mempartnerneve'))<>nil then
      TfrxMemoView(FindObject('mempartnerneve')).Text:=Mjegy_nyom_rec.Partner1_nev;
    if TfrxMemoView(FindObject('mempartnercime'))<>nil then
      TfrxMemoView(FindObject('mempartnercime')).Text:=Mjegy_nyom_rec.Partner1_cim;
    if not Clean_Way then
     if TfrxMemoView(FindObject('mempartner2'))<>nil then
      TfrxMemoView(FindObject('mempartner2')).Text:=Mjegy_nyom_rec.Partner2_felirat;
    if TfrxMemoView(FindObject('mempartnerneve2'))<>nil then
      TfrxMemoView(FindObject('mempartnerneve2')).Text:=Mjegy_nyom_rec.Partner2_nev;
    if TfrxMemoView(FindObject('mempartnercime2'))<>nil then
      TfrxMemoView(FindObject('mempartnercime2')).Text:=Mjegy_nyom_rec.Partner2_cim;
    //fuvarozó
    if TfrxMemoView(FindObject('mempartnerneve3'))<>nil then
      TfrxMemoView(FindObject('mempartnerneve3')).Text:=Mjegy_nyom_rec.Partner3_nev;
    if TfrxMemoView(FindObject('mempartnercime3'))<>nil then
      TfrxMemoView(FindObject('mempartnercime3')).Text:=Mjegy_nyom_rec.Partner3_cim;
    //ha van EKÁER
    if TfrxMemoView(FindObject('frxekaer'))<>nil then
     begin
      if Mjegy_nyom_rec.Ekaer<>'' then
        begin
         TfrxMemoView(FindObject('frxekaer')).Text:=Mjegy_nyom_rec.Ekaer;
         TfrxMemoView(FindObject('frxekaerlbl')).Text:='EKÁER:';
        end;
     end;
    //szállev
    if TfrxMemoView(FindObject('memszallev'))<>nil then
     TfrxMemoView(FindObject('memszallev')).Text:=Mjegy_nyom_rec.Szallev;
    //megjegyzés
    if TfrxMemoView(FindObject('memmegjegy'))<>nil then
     TfrxMemoView(FindObject('memmegjegy')).Text:=Mjegy_nyom_rec.Megjegyzes;
     //származási hely
     if Mjegy_nyom_rec.Szarmazasi_hely<>'' then
      begin
      if TfrxMemoView(FindObject('memszarhely'))<>nil then
        TfrxMemoView(FindObject('memszarhely')).Text:=Mjegy_nyom_rec.Szarmazasi_hely;
      end
     else
      begin
      if TfrxMemoView(FindObject('memszarhely'))<>nil then
       TfrxMemoView(FindObject('memszarhely')).Text:='';
      end;
    //rendszamok
    if TfrxMemoView(FindObject('memrendszamok'))<>nil then
     TfrxMemoView(FindObject('memrendszamok')).Text:=Mjegy_nyom_rec.Rendszam;
    //irany
    if TfrxMemoView(FindObject('memirany'))<>nil then
     TfrxMemoView(FindObject('memirany')).Text:=Mjegy_nyom_rec.Irany;
    //idõpontok
    if TfrxMemoView(FindObject('memelsoido'))<>nil then
      TfrxMemoView(FindObject('memelsoido')).Text:=DateToStr(Mjegy_nyom_rec.Erkdatum)+' '+TimeToStr(Mjegy_nyom_rec.Erkido);
    if TfrxMemoView(FindObject('memmasodikido'))<>nil then
     //Nem rögzített
     if Mjegy_nyom_rec.Tavdatum<>0 then
      begin
        TfrxMemoView(FindObject('memmasodikido')).Text:=DateToStr(Mjegy_nyom_rec.Tavdatum)+' '+TimeToStr(Mjegy_nyom_rec.Tavido);
      end
     else
      begin
       TfrxMemoView(FindObject('memmasodikido')).Text:='';
      end;
    //termék adatok
    //ewc  ÚGY TUDOM NEM HASZNÁLJÁK
    if TfrxMemoView(FindObject('memewc'))<>nil then
     begin
      TfrxMemoView(FindObject('memewc')).Text:='';
      TfrxMemoView(FindObject('memewclbl')).Text:='';
     end;
    //termék kód
     if TfrxMemoView(FindObject('memtermkod'))<>nil then
      TfrxMemoView(FindObject('memtermkod')).Text:=Mjegy_nyom_rec.Termek_kod;
    //termék név
     if TfrxMemoView(FindObject('memtermnev'))<>nil then
      TfrxMemoView(FindObject('memtermnev')).Text:=Mjegy_nyom_rec.Termek_nev;
    //termék ár
     if TfrxMemoView(FindObject('memegysar'))<>nil then
      TfrxMemoView(FindObject('memegysar')).Text:=Mjegy_nyom_rec.Termek_ar;
    //százalékok, levonások
    if Mjegy_nyom_rec.Nedvesseg_latszik then //nedvesseghez kapcsolodik
     begin
      if TfrxMemoView(FindObject('memalapnedv'))<>nil then
       TfrxMemoView(FindObject('memalapnedv')).Text:=Mjegy_nyom_rec.Alapnedv;
      if TfrxMemoView(FindObject('memnedv'))<>nil then
       TfrxMemoView(FindObject('memnedv')).Text:=Mjegy_nyom_rec.Nedv;
      if TfrxMemoView(FindObject('memnedvlevon'))<>nil then
       TfrxMemoView(FindObject('memnedvlevon')).Text:=Mjegy_nyom_rec.Nedvlevon;
      //ezek nem kellenek
      if TfrxMemoView(FindObject('memnedveszt'))<>nil then
       TfrxMemoView(FindObject('memnedveszt')).Text:='';
      if TfrxMemoView(FindObject('memnedvesztlbl'))<>nil then
       TfrxMemoView(FindObject('memnedvesztlbl')).Text:='';
     end
    else
     begin
      if TfrxMemoView(FindObject('memalapnedv'))<>nil then
       TfrxMemoView(FindObject('memalapnedv')).Text:='';
      if TfrxMemoView(FindObject('memalapnedvlbl'))<>nil then
       TfrxMemoView(FindObject('memalapnedvlbl')).Text:='';
      if TfrxMemoView(FindObject('memnedv'))<>nil then
       TfrxMemoView(FindObject('memnedv')).Text:='';
      if TfrxMemoView(FindObject('memnedvlbl'))<>nil then
       TfrxMemoView(FindObject('memnedvlbl')).Text:='';
      if TfrxMemoView(FindObject('memnedvlevon'))<>nil then
       TfrxMemoView(FindObject('memnedvlevon')).Text:='';
      if TfrxMemoView(FindObject('memnedvlevonlbl'))<>nil then
       TfrxMemoView(FindObject('memnedvlevonlbl')).Text:='';
      if TfrxMemoView(FindObject('memnedveszt'))<>nil then
       TfrxMemoView(FindObject('memnedveszt')).Text:='';
      if TfrxMemoView(FindObject('memnedvesztlbl'))<>nil then
       TfrxMemoView(FindObject('memnedvesztlbl')).Text:='';
     end;
     if Mjegy_nyom_rec.Tisztasag_latszik then //szemet
      begin
      if TfrxMemoView(FindObject('memtisztasag'))<>nil then
       TfrxMemoView(FindObject('memtisztasag')).Text:=Mjegy_nyom_rec.Tisztasag;
      if TfrxMemoView(FindObject('memszemetlevon'))<>nil then
       TfrxMemoView(FindObject('memszemetlevon')).Text:=Mjegy_nyom_rec.Szemet_levon;
      end
     else
      begin
      if TfrxMemoView(FindObject('memtisztasag'))<>nil then
       TfrxMemoView(FindObject('memtisztasag')).Text:='';
      if TfrxMemoView(FindObject('memtisztasaglbl'))<>nil then
       TfrxMemoView(FindObject('memtisztasaglbl')).Text:='';
      if TfrxMemoView(FindObject('memszemetlevon'))<>nil then
       TfrxMemoView(FindObject('memszemetlevon')).Text:='';
      if TfrxMemoView(FindObject('memszemetlevonlbl'))<>nil then
       TfrxMemoView(FindObject('memszemetlevonlbl')).Text:='';
      end;
     if Mjegy_nyom_rec.Tort_latszik then //tort szemek
      begin
      if TfrxMemoView(FindObject('memtort'))<>nil then
       TfrxMemoView(FindObject('memtort')).Text:=Mjegy_nyom_rec.Tort;
      if TfrxMemoView(FindObject('memtorttomeg'))<>nil then
       TfrxMemoView(FindObject('memtorttomeg')).Text:=Mjegy_nyom_rec.Tort_tomeg;
      end
     else
      begin
      if TfrxMemoView(FindObject('memtort'))<>nil then
       TfrxMemoView(FindObject('memtort')).Text:='';
      if TfrxMemoView(FindObject('memtortlbl'))<>nil then
       TfrxMemoView(FindObject('memtortlbl')).Text:='';
      if TfrxMemoView(FindObject('memtorttomeg'))<>nil then
       TfrxMemoView(FindObject('memtorttomeg')).Text:='';
      if TfrxMemoView(FindObject('memtorttomeglbl'))<>nil then
       TfrxMemoView(FindObject('memtorttomeglbl')).Text:='';
      end;
     if Mjegy_nyom_rec.Hekto_latszik then
     begin
     if TfrxMemoView(FindObject('memhekto'))<>nil then
      begin
       TfrxMemoView(FindObject('memhekto')).Text:=Mjegy_nyom_rec.Hekto;
      end;
     end
     else
     begin
      if TfrxMemoView(FindObject('memhekto'))<>nil then
      begin
       TfrxMemoView(FindObject('memhekto')).Text:='';
       TfrxMemoView(FindObject('memhektolbl')).Text:='';
      end;
     end;
     //tömegek
     if TfrxMemoView(FindObject('membrutto'))<>nil then
      TfrxMemoView(FindObject('membrutto')).Text:=Mjegy_nyom_rec.Brutto;
     if TfrxMemoView(FindObject('memtara'))<>nil then
      TfrxMemoView(FindObject('memtara')).Text:=Mjegy_nyom_rec.Tara;
     if TfrxMemoView(FindObject('memnetto'))<>nil then
      TfrxMemoView(FindObject('memnetto')).Text:=Mjegy_nyom_rec.Netto;
     if TfrxMemoView(FindObject('memsznetto'))<>nil then
      TfrxMemoView(FindObject('memsznetto')).Text:=Mjegy_nyom_rec.Sz_netto;

     if Mjegy_nyom_rec.Tomeg_levon_ny<>'' then
      if TfrxMemoView(FindObject('memtomlevon'))<>nil then
       begin
         TfrxMemoView(FindObject('memtomlevon')).Text:=Mjegy_nyom_rec.Tomeg_levon_ny;
         TfrxMemoView(FindObject('memtomlevon_szoveg')).Text:=Mjegy_nyom_rec.Tomeg_levon_szoveg;
       end;
     //csak azon állítsa ami valóban duplex, a szimplám más a neve/példányszámok miatt fontos
     if TfrxReportSummary(FindObject('ReportSummary1'))<>nil then TfrxReportSummary(FindObject('ReportSummary1')).Visible:=duplex_mjegy;
  end;
end;

procedure TNezetF.rep_valaszt(akt_rep: TFrxReport; psz: Integer);
begin
  nyomtatva:=False;
  valasztott:=akt_rep;
  valasztott.PrintOptions.Copies:=psz;
  valasztott.Preview:=frxNezet;
  //NezetF.frxNezet.Zoom:=meret;
  jvpsz.Value:=psz;
  if valasztott.Name='frxmerleg' then merlegjegy_elokeszitese;

  valasztott.PrepareReport(true);
  ShowModal;
end;

end.
