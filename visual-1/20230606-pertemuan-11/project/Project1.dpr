program Project1;

uses
  Forms,
  FormDataMahasiswa in 'FormDataMahasiswa.pas' {DataMahasiswa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataMahasiswa, DataMahasiswa);
  Application.Run;
end.
