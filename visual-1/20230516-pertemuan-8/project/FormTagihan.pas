unit FormTagihan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    EditNamaPelanggan: TEdit;
    LabelNamaPelanggan: TLabel;
    EditJumlahPemakaian: TEdit;
    LabelJumlahPemakaian: TLabel;
    LabelKodeJenisPelanggan: TLabel;
    ComboBoxKodeJenisPelanggan: TComboBox;
    LabelJenisPelanggan: TLabel;
    EditJenisPelanggan: TEdit;
    ButtonClear: TButton;
    ButtonCetak: TButton;
    ButtonHitung: TButton;
    GroupBox2: TGroupBox;
    LabelBiayaBeban: TLabel;
    LabelHargaPerM3: TLabel;
    LabelTotalTagihan: TLabel;
    LabelPajak: TLabel;
    LabelTotalHarga: TLabel;
    EditBiayaBeban: TEdit;
    EditHargaPerM3: TEdit;
    EditTotalHarga: TEdit;
    EditPajak: TEdit;
    EditTotalTagihan: TEdit;
    GroupBox3: TGroupBox;
    LabelBiayaBebanOutput: TLabel;
    LabelHargaPerM3Output: TLabel;
    LabelTotalHargaOutput: TLabel;
    LabelPajakOutput: TLabel;
    LabelTotalTagihanOutput: TLabel;
    LabelNamaPelangganOutput: TLabel;
    LabelKodeJenisPelangganOutput: TLabel;
    LabelJumlahPemakaianOutput: TLabel;
    LabelJenisPelangganOutput: TLabel;
    LabelBiayaBebanOutputR: TLabel;
    LabelHargaPerM3OutputR: TLabel;
    LabelTotalHargaOutputR: TLabel;
    LabelPajakOutputR: TLabel;
    LabelTotalTagihanOutputR: TLabel;
    LabelNamaPelangganOutputR: TLabel;
    LabelKodeJenisPelangganOutputR: TLabel;
    LabelJumlahPemakaianOutputR: TLabel;
    LabelJenisPelangganOutputR: TLabel;
    procedure ComboBoxKodeJenisPelangganChange(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure ButtonHitungClick(Sender: TObject);
    procedure ButtonCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBoxKodeJenisPelangganChange(Sender: TObject);
begin
  case ComboBoxKodeJenisPelanggan.ItemIndex of
    0:
      begin
        EditJenisPelanggan.Text := 'Pabrik';
        EditBiayaBeban.Text := '50000';
        EditHargaPerM3.Text := '2500';
      end;
    1:
      begin
        EditJenisPelanggan.Text := 'Swalayan';
        EditBiayaBeban.Text := '35000';
        EditHargaPerM3.Text := '2000';
      end;
    2:
      begin
        EditJenisPelanggan.Text := 'Toko';
        EditBiayaBeban.Text := '25000';
        EditHargaPerM3.Text := '1500';
      end;
    3:
      begin
        EditJenisPelanggan.Text := 'Rumah';
        EditBiayaBeban.Text := '15000';
        EditHargaPerM3.Text := '750';
      end;
  end;
end;

procedure TForm1.ButtonClearClick(Sender: TObject);
begin
  ComboBoxKodeJenisPelanggan.ClearSelection;
  EditNamaPelanggan.Clear;
  EditJumlahPemakaian.Clear;
  EditJenisPelanggan.Clear;
  EditBiayaBeban.Clear;
  EditHargaPerM3.Clear;
  EditTotalHarga.Clear;
  EditPajak.Clear;
  EditTotalTagihan.Clear;
  LabelNamaPelangganOutputR.Caption := '-';
  LabelJumlahPemakaianOutputR.Caption := '-';
  LabelKodeJenisPelangganOutputR.Caption := '-';
  LabelJenisPelangganOutputR.Caption := '-';
  LabelBiayaBebanOutputR.Caption := '-';
  LabelHargaPerM3OutputR.Caption := '-';
  LabelTotalHargaOutputR.Caption := '-';
  LabelPajakOutputR.Caption := '-';
  LabelTotalTagihanOutputR.Caption := '-';
end;

procedure TForm1.ButtonHitungClick(Sender: TObject);
var
  biaya_beban, harga_per_m3: Integer;
  jumlah_pemakaian, pajak, total_harga, total_tagihan: Double;
begin
  if (EditJumlahPemakaian.Text = '') or (EditJenisPelanggan.Text = '') then
    MessageDlg('Data pelanggan masih belum lengkap!', mtError, [mbOK], 0)
  else
  begin
    jumlah_pemakaian := StrToFloat(EditJumlahPemakaian.Text);
    biaya_beban := StrToInt(EditBiayaBeban.Text);
    harga_per_m3 := StrToInt(EditHargaPerM3.Text);
    total_harga := harga_per_m3 * jumlah_pemakaian + biaya_beban;
    pajak := total_harga * 10 / 100;
    total_tagihan := total_harga + pajak;

    EditTotalHarga.Text := FloatToStr(total_harga);
    EditPajak.Text := FloatToStr(pajak);
    EditTotalTagihan.Text := FloatToStr(total_tagihan);
  end;
end;

procedure TForm1.ButtonCetakClick(Sender: TObject);
var
  biaya_beban, harga_per_m3: Integer;
  jumlah_pemakaian, pajak, total_harga, total_tagihan: Double;
begin
  if (EditJumlahPemakaian.Text = '') or (EditJenisPelanggan.Text = '') then
    MessageDlg('Data pelanggan masih belum lengkap!', mtError, [mbOK], 0)
  else
  begin
    jumlah_pemakaian := StrToFloat(EditJumlahPemakaian.Text);
    biaya_beban := StrToInt(EditBiayaBeban.Text);
    harga_per_m3 := StrToInt(EditHargaPerM3.Text);
    total_harga := harga_per_m3 * jumlah_pemakaian + biaya_beban;
    pajak := total_harga * 10 / 100;
    total_tagihan := total_harga + pajak;

    LabelNamaPelangganOutputR.Caption := EditNamaPelanggan.Text;
    LabelKodeJenisPelangganOutputR.Caption := ComboBoxKodeJenisPelanggan.Text;
    LabelJenisPelangganOutputR.Caption := EditJenisPelanggan.Text;
    LabelJumlahPemakaianOutputR.Caption := FloatToStr(jumlah_pemakaian);
    LabelBiayaBebanOutputR.Caption := IntToStr(biaya_beban);
    LabelHargaPerM3OutputR.Caption := FloatToStr(harga_per_m3);
    LabelTotalHargaOutputR.Caption := FloatToStr(total_harga);
    LabelPajakOutputR.Caption := FloatToStr(pajak);
    LabelTotalTagihanOutputR.Caption := FloatToStr(total_tagihan);
  end;
end;

end.

