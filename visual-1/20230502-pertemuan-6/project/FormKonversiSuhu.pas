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
    procedure ButtonKonversiClick(Sender: TObject);
    procedure EditReamurKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KonversiSuhu: TKonversiSuhu;

implementation

{$R *.dfm}

procedure TKonversiSuhu.ButtonKonversiClick(Sender: TObject);
var
  reamur: Double;
begin
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

procedure TKonversiSuhu.EditReamurKeyPress(Sender: TObject; var Key: Char);
begin
  ValidasiNomor(Key);
end;

procedure TKonversiSuhu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TampilkanMenuUtama;
end;

procedure TKonversiSuhu.FormShow(Sender: TObject);
begin
  TutupMenuUtama;
end;

procedure TKonversiSuhu.ButtonResetClick(Sender: TObject);
begin
  EditReamur.Clear;
  EditCelcius.Clear;
  EditFahrenheit.Clear;
  EditKelvin.Clear;
end;

end.

