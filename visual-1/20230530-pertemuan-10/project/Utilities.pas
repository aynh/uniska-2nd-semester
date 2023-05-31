unit Utilities;

interface

uses Dialogs;

procedure ValidasiNomor(var Key: Char);

implementation

procedure ValidasiNomor(var Key: Char);
begin
  // bila key tidak diantara 0-9, backspace, dan enter
  if not (Key in ['0'..'9', #8 {backspace}, #13 {enter}]) then
  begin
    // bersihkan keynya
    Key := #0;
    MessageDlg('Tolong input angka saja', mtError, [mbOK], 0);
  end;
end;

end.
 