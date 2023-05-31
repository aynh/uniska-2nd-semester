program Project1;

uses
  Forms,
  FormLogin in 'FormLogin.pas' {LoginForm},
  FormKonversiSuhu in 'FormKonversiSuhu.pas' {KonversiSuhu},
  FormMenu in 'FormMenu.pas' {MenuForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TKonversiSuhu, KonversiSuhu);
  Application.CreateForm(TMenuForm, MenuForm);
  Application.Run;
end.
