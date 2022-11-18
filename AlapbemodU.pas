unit AlapbemodU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TAlapbemodF = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cbxcsoport: TComboBox;
    rgtipus: TRadioGroup;
    chkigaz: TCheckBox;
    edmagyarazat: TEdit;
    edertek: TEdit;
    edtulajdonsag: TEdit;
    btnok: TButton;
    Button2: TButton;
    procedure rgtipusClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure fo(idje:Integer);
  end;

var
  AlapbemodF: TAlapbemodF;

implementation
  uses AU;
{$R *.dfm}

procedure TAlapbemodF.btnokClick(Sender: TObject);
begin
 if cbxcsoport.Text='' then
  begin
    ShowMessage('A csoportot meg kell adni!');
    exit
  end;
 if edtulajdonsag.Text='' then
  begin
    ShowMessage('A tulajdonságot meg kell adni!');
    exit
  end;
 with af.CfgT do
  begin
   // open;
    if Locate('id',btnok.tag,[] ) then
     begin
       edit;
       //Append;
       FieldByName('csoport').AsString:=cbxcsoport.Text;
       FieldByName('tulajdonsag').AsString:=edtulajdonsag.Text;
       FieldByName('tipus').AsString:=rgtipus.Items[rgtipus.ItemIndex];
       if edertek.Visible then FieldByName('ertek').AsString:=edertek.Text
       else
       begin
         if chkigaz.Checked then FieldByName('ertek').AsString:='True'
         else FieldByName('ertek').AsString:='False'
       end;
       FieldByName('magyarazat').AsString:=edmagyarazat.Text;
       post;
     end;
  end;
  close;
end;

procedure TAlapbemodF.fo(idje: Integer);

  procedure cbx_csop_feltoltese;
   begin
     cbxcsoport.Clear;
     with af.Q1 do
      begin
        close;
        Open(' SELECT DISTINCT(csoport) FROM cfg ORDER BY csoport ASC ');
        while not eof do
         begin
           cbxcsoport.Items.Add(Fields[0].asstring);
           Next
         end;
        Close
      end;
   end;
begin
try
 cbx_csop_feltoltese;
 if idje<>0 then
  begin
    cbxcsoport.ItemIndex:=cbxcsoport.Items.IndexOf(af.cfgT.FieldByName('csoport').AsString);
    edtulajdonsag.Text:=af.cfgT.FieldByName('tulajdonsag').AsString;
    case af.cfgT.FieldByName('tipus').AsString[1] of
     'I':rgtipus.ItemIndex:=0;
     'S':rgtipus.ItemIndex:=1;
     'B':rgtipus.ItemIndex:=2;
    end;
    rgtipusClick(Self);
    chkigaz.Checked:=af.cfgT.FieldByName('ertek').AsString='True';
    if edertek.Visible then edertek.Text:=af.cfgT.FieldByName('ertek').AsString;
    edmagyarazat.Text:= af.cfgT.FieldByName('magyarazat').AsString;
    btnok.tag:=idje;
  end;
finally
  ShowModal
end;
end;

procedure TAlapbemodF.rgtipusClick(Sender: TObject);
begin
 case rgtipus.ItemIndex of
  0:begin
      chkigaz.Visible:=false;
      edertek.NumbersOnly:=True;
      edertek.Visible:=true;
    end;
  1:begin
      chkigaz.Visible:=false;
      edertek.NumbersOnly:=false;
      edertek.Visible:=true;
    end;
  2:begin
      chkigaz.Visible:=true;
      edertek.NumbersOnly:=True;
      edertek.Visible:=false;
    end;
 end;
end;

end.
