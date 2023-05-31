unit FormKonversiSuhu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Utilities;

type
  TKonversiSuhu = class(TForm)
    LabelHeading: TLabel;
    LabelReamur: TLabel;
    EditReamur: TEdit;
    ButtonKonversi: TButton;
    LabelCelcius: TLabel;
    LabelFahrenheit: TLabel;
    LabelKelvin: TLabel;
    EditCelcius: TEdit;
    EditFahrenheit: TEdit;
    EditKelvin: TEdit;
    ButtonReset: TButton;
    procedure Konversi;
    procedure ButtonKonversiClick(Sender: TObject);
    procedure EditReamurKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonResetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KonversiSuhu: TKonversiSuhu;

implementation

uses FormMenu;

{$R *.dfm}

procedure TKonversiSuhu.Konversi;
var
  reamur: Double;
begin
  // validasi nilai kosong
  if EditReamur.Text = '' then
    MessageDlg('Reamur tidak boleh kosong', mtError, [mbOK], 0)
  else
  begin
    reamur := StrToFloat(EditReamur.Text);
    EditCelcius.Text := FloatToStr(reamur * 5 / 4);
    EditFahrenheit.Text := FloatToStr(reamur * 9 / 4 + 32);
    EditKelvin.Text := FloatToStr(reamur * 5 / 4 + 273);
  end;
end;

procedure TKonversiSuhu.ButtonKonversiClick(Sender: TObject);
begin
  Konversi;
end;

procedure TKonversiSuhu.EditReamurKeyPress(Sender: TObject; var Key: Char);
begin
  ValidasiNomor(Key);
  // jalankan procedure konversi bila tekan enter
  if Key = #13 then
    Konversi;
end;

procedure TKonversiSuhu.ButtonResetClick(Sender: TObject);
begin
  EditReamur.Clear;
  EditCelcius.Clear;
  EditFahrenheit.Clear;
  EditKelvin.Clear;
end;

procedure TKonversiSuhu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // tampilkan kembali form menu bila form ini ditutup
  MenuForm.Show;
end;

end.

