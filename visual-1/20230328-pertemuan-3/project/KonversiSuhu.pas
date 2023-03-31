unit KonversiSuhu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormKonversiSuhu = class(TForm)
    LabelHeading: TLabel;
    RadioGroupKonversi: TRadioGroup;
    LabelInput: TLabel;
    LabelOutput: TLabel;
    EditInput: TEdit;
    EditOutput: TEdit;
    ButtonKonversi: TButton;
    ButtonUlang: TButton;
    procedure ButtonKonversiClick(Sender: TObject);
    procedure RadioGroupKonversiClick(Sender: TObject);
    procedure ButtonUlangClick(Sender: TObject);
    procedure EditInputChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKonversiSuhu: TFormKonversiSuhu;

implementation

{$R *.dfm}

procedure TFormKonversiSuhu.RadioGroupKonversiClick(Sender: TObject);
var
  nilaiInput, nilaiOutput: string;
begin
  // enable inputan suhu
  EditInput.Enabled := True;

  if (EditInput.Text <> '') and (EditOutput.Text <> '') then
  begin
    // balik inputan dan hasil kalau keduanya tidak kosong
    nilaiInput := EditInput.Text;
    nilaiOutput := EditOutput.Text;
    EditInput.Text := nilaiOutput;
    EditOutput.Text := nilaiInput;
  end
  else
  begin
    // kalau ada yang kosong, reset keduanya
    EditInput.Text := '';
    EditOutput.Text := '';
  end;

  case RadioGroupKonversi.ItemIndex of
    0:
      begin
        // konversi celcius ke fahrenheit
        LabelInput.Caption := 'Input Celcius';
        LabelOutput.Caption := 'Output Fahrenheit';
      end;
    1:
      begin
        // konversi fahrenheit ke celcius
        LabelInput.Caption := 'Input Fahrenheit';
        LabelOutput.Caption := 'Output Celcius';
      end;
  end;
end;

procedure TFormKonversiSuhu.ButtonKonversiClick(Sender: TObject);
var
  celcius, fahrenheit: Double;
begin
  case RadioGroupKonversi.ItemIndex of
    0:
      begin
        // konversi celcius ke fahrenheit
        celcius := StrToFloat(EditInput.Text);
        fahrenheit := (1.8 * celcius) + 32;
        EditOutput.Text := FloatToStr(fahrenheit);
      end;
    1:
      begin
        // konversi fahrenheit ke celcius
        fahrenheit := StrToFloat(EditInput.Text);
        celcius := (fahrenheit - 32) * 5 / 9;
        EditOutput.Text := FloatToStr(celcius);
      end;
  end;
end;

procedure TFormKonversiSuhu.ButtonUlangClick(Sender: TObject);
begin
  // disable tombol konversi dan inputan suhu
  ButtonKonversi.Enabled := False;
  EditInput.Enabled := False;

  // reset inputan dan hasil
  EditInput.Text := '';
  EditOutput.Text := '';
  RadioGroupKonversi.ItemIndex := -1;

  // reset caption label input dan output
  LabelInput.Caption := 'Input Suhu';
  LabelOutput.Caption := 'Output Suhu';
end;

procedure TFormKonversiSuhu.EditInputChange(Sender: TObject);
begin
  // enable tombol konversi kalau inputan tidak kosong
  ButtonKonversi.Enabled := EditInput.Text <> '';
end;

end.

