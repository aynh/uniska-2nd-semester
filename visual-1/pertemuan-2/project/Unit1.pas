unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TFormInputDataMahasiswa = class(TForm)
    LabelNama: TLabel;
    EditNama: TEdit;
    LabelNPM: TLabel;
    EditNPM: TEdit;
    LabelTanggalLahir: TLabel;
    DateTimePickerTanggalLahir: TDateTimePicker;
    LabelProgramStudi: TLabel;
    ComboBoxProgramStudi: TComboBox;
    LabelJenisKelamin: TLabel;
    RadioGroupJenisKelamin: TRadioGroup;
    LabelAlamat: TLabel;
    EditAlamat: TEdit;
    LabelNomorHP: TLabel;
    EditNomorHP: TEdit;
    LabelAgama: TLabel;
    ComboBoxAgama: TComboBox;
    RadioGroupStatusNikah: TRadioGroup;
    LabelStatusNikah: TLabel;
    LabelEmail: TLabel;
    EditEmail: TEdit;
    LabelHeading: TLabel;
    ButtonInput: TButton;
    ButtonUlang: TButton;
    procedure ButtonUlangClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputDataMahasiswa: TFormInputDataMahasiswa;

implementation

{$R *.dfm}

procedure TFormInputDataMahasiswa.ButtonUlangClick(Sender: TObject);
begin
  EditNPM.Text := '';
  EditNama.Text := '';
  DateTimePickerTanggalLahir.DateTime := Now();
  ComboBoxProgramStudi.Text := '';
  RadioGroupJenisKelamin.ItemIndex := -1;
  EditAlamat.Text := '';
  EditNomorHP.Text := '';
  EditEmail.Text := '';
  ComboBoxAgama.Text := '';
  RadioGroupStatusNikah.ItemIndex := -1;
end;

end.
