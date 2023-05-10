unit Utilities;

interface

uses Dialogs, FormMenuUtama;

procedure TampilkanMenuUtama;
procedure TutupMenuUtama;
procedure ValidasiNomor(var Key: Char);

implementation

procedure TampilkanMenuUtama;
begin
  // tampilkan form dengan menggunakan .Show
  MenuUtama.Show;
end;

procedure TutupMenuUtama;
begin
  // tutup form dengan menggunakan .Hide
  MenuUtama.Hide;
end;

// procedure untuk validasi karakter yang di input
procedure ValidasiNomor(var Key: Char);
begin
  // jika karakter bukan merupakan nomor, backspace, dan enter
  if not (Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
  begin
    // clear inputan
    Key := #0;
    // tampilkan messagebox untuk memberi tahu user
    MessageDlg('Tolong input angka saja', mtError, [mbOK], 0);
  end;
end;

end.
