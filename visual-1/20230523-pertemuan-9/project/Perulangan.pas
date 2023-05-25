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
    EditIsiTeks: TEdit;
    LabelIsiTeks: TLabel;
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
  awal, akhir: Integer;
begin
  // bersihkan nilai - nilai sebelumnya
  ListBoxOutput.Items.Clear;
  awal := StrToInt(EditNilaiAwal.Text);
  akhir := StrToInt(EditNilaiAkhir.Text);

  // nilai akhir harus lebih besar daripada nilai awal
  if awal > akhir then
    MessageDlg('Nilai awal tidak boleh lebih besar dari nilai akhir', mtError,
      [mbOK], 0)
  // validasi jika isi teks kosong
  else if EditIsiTeks.Text = '' then
    MessageDlg('Isi teks tidak boleh kosong', mtError, [mbOK], 0)
  else
    // perulangan dari nilai awal sampai dengan nilai akhir
    for awal := awal to akhir do
      ListBoxOutput.Items.Add(IntToStr(awal) + ' -- ' + EditIsiTeks.Text);
end;

procedure TForm1.ButtonWhileDoClick(Sender: TObject);
var
  awal, akhir: Integer;
begin        
  // bersihkan nilai - nilai sebelumnya
  ListBoxOutput.Items.Clear;
  awal := StrToInt(EditNilaiAwal.Text);
  akhir := StrToInt(EditNilaiAkhir.Text);
         
  // nilai akhir harus lebih besar daripada nilai awal
  if awal > akhir then
    MessageDlg('Nilai awal tidak boleh lebih besar dari nilai akhir', mtError,
      [mbOK], 0)    
  // validasi jika isi teks kosong
  else if EditIsiTeks.Text = '' then
    MessageDlg('Isi teks tidak boleh kosong', mtError, [mbOK], 0)
  else
    // selama nilai awal lebih dari atau sama dengan nilai akhir:
    while awal <= akhir do
    begin
      ListBoxOutput.Items.Add(IntToStr(awal) + ' -- ' + EditIsiTeks.Text);
      awal := awal + 1;
    end;
end;

procedure TForm1.ButtonRepeatUntilClick(Sender: TObject);
var
  awal, akhir: Integer;
begin           
  // bersihkan nilai - nilai sebelumnya
  ListBoxOutput.Items.Clear;
  awal := StrToInt(EditNilaiAwal.Text);
  akhir := StrToInt(EditNilaiAkhir.Text);
        
  // nilai akhir harus lebih besar daripada nilai awal
  if awal > akhir then
    MessageDlg('Nilai awal tidak boleh lebih besar dari nilai akhir', mtError,
      [mbOK], 0)        
  // validasi jika isi teks kosong
  else if EditIsiTeks.Text = '' then
    MessageDlg('Isi teks tidak boleh kosong', mtError, [mbOK], 0)
  else
    repeat // ulangi baris - baris dibawah
      ListBoxOutput.Items.Add(IntToStr(awal) + ' -- ' + EditIsiTeks.Text);
      awal := awal + 1;
    until awal > akhir; // sampai nilai awal lebih besar daripada nilai akhir
end;

end.

