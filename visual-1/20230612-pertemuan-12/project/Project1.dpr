program Project1;

uses
  Forms,
  FormDataMahasiswa in 'FormDataMahasiswa.pas' {DataMahasiswa},
  FormDataDosen in 'FormDataDosen.pas' {DataDosen},
  FormMenuUtama in 'FormMenuUtama.pas' {MenuUtama};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuUtama, MenuUtama);
  Application.CreateForm(TDataMahasiswa, DataMahasiswa);
  Application.CreateForm(TDataDosen, DataDosen);
  Application.Run;
end.
