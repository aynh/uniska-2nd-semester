unit FormKonversiSatuanJarak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Utilities;

type
  TKonversiSatuanJarak = class(TForm)
    ComboBoxPilihan: TComboBox;
    LabelPilihan: TLabel;
    GroupBoxHasil: TGroupBox;
    EditInput: TEdit;
    LabelInput: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    procedure ComboBoxPilihanChange(Sender: TObject);
    procedure EditInputKeyPress(Sender: TObject; var Key: Char);
    procedure Hitung;
    procedure EditInputChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KonversiSatuanJarak: TKonversiSatuanJarak;

implementation

{$R *.dfm}

// ini procedure untuk menghitung hasil-nya
// dibuat procedure agar tidak ada duplikasi kode
// sebab ia menghitung saat inputan berubah
// DAN saat item combobox yang dipilih berubah
procedure TKonversiSatuanJarak.Hitung;
var
  input, km, hm, dam, m, dm, cm, mm: Double;
begin
  // jika input tidak berisi atau kosong
  if EditInput.Text = '' then
    // set input jadi 0
    input := 0
  else
    // kalau tidak, konversikan nilai-nya ke double
    input := StrToFloat(EditInput.Text);

  // cek item combobox yang dipilih:
  case ComboBoxPilihan.ItemIndex of
    0: // pilihan kilometer
      begin
        // set km dengan nilai input
        km := input;

        hm := km * 10;
        Edit1.Text := FloatToStr(hm);

        dam := hm * 10;
        Edit2.Text := FloatToStr(dam);

        m := dam * 10;
        Edit3.Text := FloatToStr(m);

        dm := m * 10;
        Edit4.Text := FloatToStr(dm);

        cm := dm * 10;
        Edit5.Text := FloatToStr(cm);

        mm := cm * 10;
        Edit6.Text := FloatToStr(mm);
      end;
    1: // pilihan hektometer
      begin
        // set hm dengan nilai input
        hm := input;

        km := hm / 10;
        Edit1.Text := FloatToStr(km);

        dam := hm * 10;
        Edit2.Text := FloatToStr(dam);

        m := dam * 10;
        Edit3.Text := FloatToStr(m);

        dm := m * 10;
        Edit4.Text := FloatToStr(dm);

        cm := dm * 10;
        Edit5.Text := FloatToStr(cm);

        mm := cm * 10;
        Edit6.Text := FloatToStr(mm);
      end;
    2: // pilihan dekameter
      begin
        // set dam dengan nilai input
        dam := input;

        hm := dam / 10;
        Edit2.Text := FloatToStr(hm);

        km := hm / 10;
        Edit1.Text := FloatToStr(km);

        m := dam * 10;
        Edit3.Text := FloatToStr(m);

        dm := m * 10;
        Edit4.Text := FloatToStr(dm);

        cm := dm * 10;
        Edit5.Text := FloatToStr(cm);

        mm := cm * 10;
        Edit6.Text := FloatToStr(mm);
      end;
    3: // pilihan meter
      begin
        // set m dengan nilai input
        m := input;

        dam := m / 10;
        Edit3.Text := FloatToStr(dam);

        hm := dam / 10;
        Edit2.Text := FloatToStr(hm);

        km := hm / 10;
        Edit1.Text := FloatToStr(km);

        dm := m * 10;
        Edit4.Text := FloatToStr(dm);

        cm := dm * 10;
        Edit5.Text := FloatToStr(cm);

        mm := cm * 10;
        Edit6.Text := FloatToStr(mm);
      end;
    4: // pilihan desimeter
      begin
        // set dm dengan nilai input
        dm := input;

        m := dm / 10;
        Edit4.Text := FloatToStr(m);

        dam := m / 10;
        Edit3.Text := FloatToStr(dam);

        hm := dam / 10;
        Edit2.Text := FloatToStr(hm);

        km := hm / 10;
        Edit1.Text := FloatToStr(km);

        cm := dm * 10;
        Edit5.Text := FloatToStr(cm);

        mm := cm * 10;
        Edit6.Text := FloatToStr(mm);
      end;
    5: // pilihan centimeter
      begin
        // set cm dengan nilai input
        cm := input;

        dm := cm / 10;
        Edit5.Text := FloatToStr(dm);

        m := dm / 10;
        Edit4.Text := FloatToStr(m);

        dam := m / 10;
        Edit3.Text := FloatToStr(dam);

        hm := dam / 10;
        Edit2.Text := FloatToStr(hm);

        km := hm / 10;
        Edit1.Text := FloatToStr(km);

        mm := cm * 10;
        Edit6.Text := FloatToStr(mm);
      end;
    6: // pilihan milimeter
      begin
        // set mm dengan nilai input
        mm := input;

        cm := mm / 10;
        Edit6.Text := FloatToStr(cm);

        dm := cm / 10;
        Edit5.Text := FloatToStr(dm);

        m := dm / 10;
        Edit4.Text := FloatToStr(m);

        dam := m / 10;
        Edit3.Text := FloatToStr(dam);

        hm := dam / 10;
        Edit2.Text := FloatToStr(hm);

        km := hm / 10;
        Edit1.Text := FloatToStr(km);
      end;
  end;
end;

procedure TKonversiSatuanJarak.ComboBoxPilihanChange(Sender: TObject);
begin
  // cek item combobox yang dipilih
  case ComboBoxPilihan.ItemIndex of
    0: // pilihan kilometer
      begin
        Label1.Caption := 'Hektometer (hm)';
        Label2.Caption := 'Dekameter (dam)';
        Label3.Caption := 'Meter (m)';
        Label4.Caption := 'Desimeter (dm)';
        Label5.Caption := 'Centimeter (cm)';
        Label6.Caption := 'Milimeter (mm)';
      end;
    1: // pilihan hektometer
      begin
        Label1.Caption := 'Kilometer (km)';
        Label2.Caption := 'Dekameter (dam)';
        Label3.Caption := 'Meter (m)';
        Label4.Caption := 'Desimeter (dm)';
        Label5.Caption := 'Centimeter (cm)';
        Label6.Caption := 'Milimeter (mm)';
      end;
    2: // pilihan dekameter
      begin
        Label1.Caption := 'Kilometer (km)';
        Label2.Caption := 'Hektometer (hm)';
        Label3.Caption := 'Meter (m)';
        Label4.Caption := 'Desimeter (dm)';
        Label5.Caption := 'Centimeter (cm)';
        Label6.Caption := 'Milimeter (mm)';
      end;
    3: // pilihan meter
      begin
        Label1.Caption := 'Kilometer (km)';
        Label2.Caption := 'Hektometer (hm)';
        Label3.Caption := 'Dekameter (dam)';
        Label4.Caption := 'Desimeter (dm)';
        Label5.Caption := 'Centimeter (cm)';
        Label6.Caption := 'Milimeter (mm)';
      end;
    4: // pilihan desimeter
      begin
        Label1.Caption := 'Kilometer (km)';
        Label2.Caption := 'Hektometer (hm)';
        Label3.Caption := 'Dekameter (dam)';
        Label4.Caption := 'Meter (m)';
        Label5.Caption := 'Centimeter (cm)';
        Label6.Caption := 'Milimeter (mm)';
      end;
    5: // pilihan centimeter
      begin
        Label1.Caption := 'Kilometer (km)';
        Label2.Caption := 'Hektometer (hm)';
        Label3.Caption := 'Dekameter (dam)';
        Label4.Caption := 'Meter (m)';
        Label5.Caption := 'Desimeter (dm)';
        Label6.Caption := 'Milimeter (mm)';
      end;
    6: // pilihan milimeter
      begin
        Label1.Caption := 'Kilometer (km)';
        Label2.Caption := 'Hektometer (hm)';
        Label3.Caption := 'Dekameter (dam)';
        Label4.Caption := 'Meter (m)';
        Label5.Caption := 'Desimeter (dm)';
        Label6.Caption := 'Centimeter (cm)';
      end;
  end;

  // setelah merubah label-label, hitung hasil outputnya juga
  Hitung;
end;

procedure TKonversiSatuanJarak.EditInputKeyPress(Sender: TObject;
  var Key: Char);
begin
  // validasi nomor untuk setiap tombol keyboard yang ditekan
  ValidasiNomor(Key);
end;

procedure TKonversiSatuanJarak.EditInputChange(Sender: TObject);
begin
  // hitung nilai kalau inputan berubah
  Hitung;
end;

procedure TKonversiSatuanJarak.FormShow(Sender: TObject);
begin
  // tutup menu utama kalau form ini di tampilkan
  TutupMenuUtama;
end;

procedure TKonversiSatuanJarak.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // tampilkan kembali menu utama kalau form ini di tutup
  TampilkanMenuUtama;
end;

end.
