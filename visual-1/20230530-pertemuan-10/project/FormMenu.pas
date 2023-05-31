unit FormMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FormKonversiSuhu;

type
  TMenuForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MenuForm: TMenuForm;

implementation

uses FormLogin;

{$R *.dfm}

procedure TMenuForm.Button1Click(Sender: TObject);
begin
  // tampilkan form konversi suhu
  KonversiSuhu.Show;
  // sembunyikan form menu
  MenuForm.Hide;
end;

procedure TMenuForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // tampilkan kembali form login bila form ini ditutup
  LoginForm.Show;
end;

end.
