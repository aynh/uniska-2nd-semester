unit FormBangunRuang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Utilities;

type
  TBangunRuang = class(TForm)
    LabelHeading: TLabel;
    LabelJari: TLabel;
    EditJari: TEdit;
    LabelTinggi: TLabel;
    EditTinggi: TEdit;
    ButtonHitung: TButton;
    LabelLuas: TLabel;
    LabelVolume: TLabel;
    EditLuas: TEdit;
    EditVolume: TEdit;
    LabelPHI: TLabel;
    ButtonReset: TButton;
    procedure ButtonHitungClick(Sender: TObject);
    procedure EditJariKeyPress(Sender: TObject; var Key: Char);
    procedure EditTinggiKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BangunRuang: TBangunRuang;

implementation

{$R *.dfm}

procedure TBangunRuang.ButtonHitungClick(Sender: TObject);
const
  phi = 3.14;
var
  jari, tinggi: Double;
begin
  if (EditJari.Text = '') and (EditTinggi.Text = '') then
    MessageDlg('Jari-jari dan tinggi tidak boleh kosong', mtError, [mbOK], 0)
  else if EditJari.Text = '' then
    MessageDlg('Jari-jari tidak boleh kosong', mtError, [mbOK], 0)
  else if EditTinggi.Text = '' then
    MessageDlg('Tinggi tidak boleh kosong', mtError, [mbOK], 0)
  else
  begin
    jari := StrToFloat(EditJari.Text);
    tinggi := StrToFloat(EditTinggi.Text);
    EditLuas.Text := FloatToStr(2 * phi * jari * (jari + tinggi));
    EditVolume.Text := FloatToStr(phi * jari * jari * tinggi);
  end;
end;

procedure TBangunRuang.EditJariKeyPress(Sender: TObject; var Key: Char);
begin
  ValidasiNomor(Key);
end;

procedure TBangunRuang.EditTinggiKeyPress(Sender: TObject; var Key: Char);
begin
  ValidasiNomor(Key);
end;

procedure TBangunRuang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TampilkanMenuUtama;
end;

procedure TBangunRuang.FormShow(Sender: TObject);
begin
  TutupMenuUtama;
end;

procedure TBangunRuang.ButtonResetClick(Sender: TObject);
begin
  EditJari.Clear;
  EditTinggi.Clear;
  EditLuas.Clear;
  EditVolume.Clear;
end;

end.

