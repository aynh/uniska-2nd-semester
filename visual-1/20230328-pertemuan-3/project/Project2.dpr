program Project2;

uses
  Forms,
  PenggunaanMessageBox in 'PenggunaanMessageBox.pas' {Form1},
  KonversiSuhu in 'KonversiSuhu.pas' {FormKonversiSuhu};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormKonversiSuhu, FormKonversiSuhu);
  Application.CreateForm(TFormPenggunaanMessageBox, FormPenggunaanMessageBox);
  Application.Run;
end.
