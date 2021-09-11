unit NyomtatokU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TNyomtatokF = class(TForm)
    lbNyomtatok: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure lbNyomtatokClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NyomtatokF: TNyomtatokF;

implementation
  uses Vcl.Printers,AU;
{$R *.dfm}

procedure TNyomtatokF.FormCreate(Sender: TObject);
begin
 lbNyomtatok.Items.Assign(Printer.Printers);
 lbNyomtatok.ItemIndex:=Printer.PrinterIndex
end;

procedure TNyomtatokF.FormDestroy(Sender: TObject);
begin
 lbNyomtatok.Clear
end;

procedure TNyomtatokF.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key=VK_ESCAPE then  Close
end;

procedure TNyomtatokF.lbNyomtatokClick(Sender: TObject);
begin
aF.frxmerleg.PrintOptions.Printer:=lbNyomtatok.Items[lbNyomtatok.ItemIndex];
close
end;

end.
