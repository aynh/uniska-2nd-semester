unit FormLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FormMenu;

type
  TLoginForm = class(TForm)
    LabelHeading: TLabel;
    LabelUsername: TLabel;
    LabelPassword: TLabel;
    EditUsername: TEdit;
    EditPassword: TEdit;
    ButtonLogin: TButton;
    procedure Login;
    procedure ButtonLoginClick(Sender: TObject);
    procedure EditUsernameKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

{$R *.dfm}

procedure TLoginForm.Login;
var
  username, password: String;
begin
  username := EditUsername.Text;
  password := EditPassword.Text;

  // cek bila username dan admin sudah benar
  if (username = 'admin') and (password = '1') then
  begin
    MessageDlg('Selamat datang, ' + username + '!', mtInformation, [mbOK], 0);

    // tampilkan form menu
    MenuForm.Show;
    // dan sembunyikan form login
    LoginForm.Hide;
  end
  else
  begin
    MessageDlg('Username atau password salah!', mtError, [mbRetry], 0);
  end;
end;

procedure TLoginForm.ButtonLoginClick(Sender: TObject);
begin
  Login;
end;

procedure TLoginForm.EditUsernameKeyPress(Sender: TObject; var Key: Char);
begin
  // jalankan procedure login bila tekan enter
  if (Key = #13) then
    Login;
end;

end.
