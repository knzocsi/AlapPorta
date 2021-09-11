unit kodu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TkodF = class(TForm)
    kodE: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure kodEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kodF: TkodF;

implementation

{$R *.DFM}

procedure TkodF.FormActivate(Sender: TObject);
begin
  kode.Text:='';
end;

procedure TkodF.kodEKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then close;
end;

end.
