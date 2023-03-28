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
begin
  // enable tombol konversi dan inputan suhu
  ButtonKonversi.Enabled := True;
  EditInput.Enabled := True;

  // reset inputan dan hasil
  EditInput.Text := '';
  EditOutput.Text := '';

  if RadioGroupKonversi.ItemIndex = 0 then   
    // konversi celcius ke fahrenheit
    begin
      LabelInput.Caption := 'Input Celcius';
      LabelOutput.Caption := 'Output Fahrenheit';
    end
  else if RadioGroupKonversi.ItemIndex = 1 then   
    // konversi fahrenheit ke celcius
    begin
      LabelInput.Caption := 'Input Fahrenheit';
      LabelOutput.Caption := 'Output Celcius';
    end;
end;

procedure TFormKonversiSuhu.ButtonKonversiClick(Sender: TObject);
var
  celcius, fahrenheit: Double;
begin
  if RadioGroupKonversi.ItemIndex = 0 then
    // konversi celcius ke fahrenheit
    begin
      celcius := StrToFloat(EditInput.Text);
      fahrenheit := (1.8 * celcius) + 32;
      EditOutput.Text := FloatToStr(fahrenheit);
    end
  else if RadioGroupKonversi.ItemIndex = 1 then
    // konversi fahrenheit ke celcius
    begin
      fahrenheit := StrToFloat(EditInput.Text);
      celcius := (fahrenheit - 32) * 5 / 9;
      EditOutput.Text := FloatToStr(celcius);
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

end.
