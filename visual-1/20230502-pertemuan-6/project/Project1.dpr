program Project1;

uses
  Forms,
  FormMenuUtama in 'FormMenuUtama.pas' {MenuUtama},
  FormKonversiSuhu in 'FormKonversiSuhu.pas' {KonversiSuhu},
  FormBangunRuang in 'FormBangunRuang.pas' {BangunRuang},
  Biodata in 'Biodata.pas' {About},
  Utilities in 'Utilities.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuUtama, MenuUtama);
  Application.CreateForm(TKonversiSuhu, KonversiSuhu);
  Application.CreateForm(TBangunRuang, BangunRuang);
  Application.CreateForm(TAbout, About);
  Application.Run;
end.
