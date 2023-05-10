program Project1;

uses
  Forms,
  FormMenuUtama in 'FormMenuUtama.pas' {MenuUtama},
  Utilities in 'Utilities.pas',
  FormPenentuKelulusan in 'FormPenentuKelulusan.pas' {PenentuKelulusan},
  FormPenentuKategoriUsia in 'FormPenentuKategoriUsia.pas' {PenentuKategoriUsia},
  FormKonversiSatuanJarak in 'FormKonversiSatuanJarak.pas' {KonversiSatuanJarak};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuUtama, MenuUtama);
  Application.CreateForm(TKonversiSatuanJarak, KonversiSatuanJarak);
  Application.CreateForm(TPenentuKategoriUsia, PenentuKategoriUsia);
  Application.CreateForm(TPenentuKelulusan, PenentuKelulusan);
  Application.Run;
end.
