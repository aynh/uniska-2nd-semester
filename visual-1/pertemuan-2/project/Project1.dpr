program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormInputDataMahasiswa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormInputDataMahasiswa, FormInputDataMahasiswa);
  Application.Run;
end.
