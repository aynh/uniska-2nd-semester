unit Perulangan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    EditNilaiAwal: TEdit;
    LabelNilaiAwal: TLabel;
    EditNilaiAkhir: TEdit;
    LabelNilaiAkhir: TLabel;
    EditIsiPesan: TEdit;
    LabelIsiPesan: TLabel;
    ButtonForToDo: TButton;
    ButtonWhileDo: TButton;
    ButtonRepeatUntil: TButton;
    ListBoxOutput: TListBox;
    procedure ButtonForToDoClick(Sender: TObject);
    procedure ButtonWhileDoClick(Sender: TObject);
    procedure ButtonRepeatUntilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonForToDoClick(Sender: TObject);
var
  counter: Integer;
begin
  ListBoxOutput.Items.Clear;
  for counter := StrToInt(EditNilaiAwal.Text) to StrToInt(EditNilaiAkhir.Text)
    do
    ListBoxOutput.Items.Add(IntToStr(counter) + ' -- ' + EditIsiPesan.Text);
end;

procedure TForm1.ButtonWhileDoClick(Sender: TObject);
var
  counter: Integer;
begin
  ListBoxOutput.Items.Clear;
  counter := StrToInt(EditNilaiAwal.Text);
  while counter <= StrToInt(EditNilaiAkhir.Text) do
  begin
    ListBoxOutput.Items.Add(IntToStr(counter) + ' -- ' + EditIsiPesan.Text);
    counter := counter + 1;
  end;
end;

procedure TForm1.ButtonRepeatUntilClick(Sender: TObject);
var
  counter: Integer;
begin
  ListBoxOutput.Items.Clear;
  counter := StrToInt(EditNilaiAwal.Text);
  repeat
    ListBoxOutput.Items.Add(IntToStr(counter) + ' -- ' + EditIsiPesan.Text);
    counter := counter + 1;
  until counter > StrToInt(EditNilaiAkhir.Text);
end;

end.

