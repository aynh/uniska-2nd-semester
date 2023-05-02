unit Utilities;

interface

uses Dialogs, FormMenuUtama;

procedure TampilkanMenuUtama;
procedure TutupMenuUtama;
procedure ValidasiNomor(var Key: Char);

implementation

procedure TampilkanMenuUtama;
begin
  MenuUtama.Show;
end;

procedure TutupMenuUtama;
begin
  MenuUtama.Hide;
end;

procedure ValidasiNomor(var Key: Char);
begin
  if not (Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
  begin
    Key := #0;
    MessageDlg('Tolong input angka saja', mtError, [mbOK], 0);
  end;
end;

end.
 