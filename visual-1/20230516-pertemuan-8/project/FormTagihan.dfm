object Form1: TForm1
  Left = 254
  Top = 163
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 453
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 300
    Top = 18
    Width = 225
    Height = 39
    Caption = 'FORM TAGIHAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 34
    Top = 70
    Width = 420
    Height = 160
    Caption = 'Data Pelanggan'
    TabOrder = 0
    object LabelNamaPelanggan: TLabel
      Left = 63
      Top = 18
      Width = 92
      Height = 13
      Caption = 'Nama Pelanggan'
    end
    object LabelJumlahPemakaian: TLabel
      Left = 63
      Top = 62
      Width = 100
      Height = 13
      Caption = 'Jumlah Pemakaian'
    end
    object LabelKodeJenisPelanggan: TLabel
      Left = 234
      Top = 18
      Width = 118
      Height = 13
      Caption = 'Kode Jenis Pelanggan'
    end
    object LabelJenisPelanggan: TLabel
      Left = 234
      Top = 62
      Width = 88
      Height = 13
      Caption = 'Jenis Pelanggan'
    end
    object EditNamaPelanggan: TEdit
      Left = 63
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EditJumlahPemakaian: TEdit
      Left = 63
      Top = 79
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object ComboBoxKodeJenisPelanggan: TComboBox
      Left = 235
      Top = 35
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      OnChange = ComboBoxKodeJenisPelangganChange
      Items.Strings = (
        'L01'
        'L02'
        'L03'
        'L04')
    end
    object EditJenisPelanggan: TEdit
      Left = 234
      Top = 79
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object ButtonClear: TButton
      Left = 78
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 4
      OnClick = ButtonClearClick
    end
    object ButtonCetak: TButton
      Left = 173
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 5
      OnClick = ButtonCetakClick
    end
    object ButtonHitung: TButton
      Left = 268
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Hitung'
      TabOrder = 6
      OnClick = ButtonHitungClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 34
    Top = 250
    Width = 420
    Height = 160
    Caption = 'Rincian Biaya'
    TabOrder = 1
    object LabelBiayaBeban: TLabel
      Left = 75
      Top = 24
      Width = 66
      Height = 13
      Caption = 'Biaya Beban'
    end
    object LabelHargaPerM3: TLabel
      Left = 75
      Top = 49
      Width = 71
      Height = 13
      Caption = 'Harga Per M3'
    end
    object LabelTotalTagihan: TLabel
      Left = 75
      Top = 124
      Width = 75
      Height = 13
      Caption = 'Total Tagihan'
    end
    object LabelPajak: TLabel
      Left = 75
      Top = 99
      Width = 56
      Height = 13
      Caption = 'Pajak 10%'
    end
    object LabelTotalHarga: TLabel
      Left = 75
      Top = 74
      Width = 63
      Height = 13
      Caption = 'Total Harga'
    end
    object EditBiayaBeban: TEdit
      Left = 185
      Top = 24
      Width = 160
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EditHargaPerM3: TEdit
      Left = 185
      Top = 49
      Width = 160
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object EditTotalHarga: TEdit
      Left = 185
      Top = 74
      Width = 160
      Height = 21
      Enabled = False
      TabOrder = 2
    end
    object EditPajak: TEdit
      Left = 185
      Top = 99
      Width = 160
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object EditTotalTagihan: TEdit
      Left = 185
      Top = 124
      Width = 160
      Height = 21
      Enabled = False
      TabOrder = 4
    end
  end
  object GroupBox3: TGroupBox
    Left = 492
    Top = 70
    Width = 300
    Height = 340
    Caption = 'Struk Tagihan'
    TabOrder = 2
    object LabelBiayaBebanOutput: TLabel
      Left = 27
      Top = 163
      Width = 66
      Height = 13
      Caption = 'Biaya Beban'
    end
    object LabelHargaPerM3Output: TLabel
      Left = 27
      Top = 192
      Width = 71
      Height = 13
      Caption = 'Harga Per M3'
    end
    object LabelTotalHargaOutput: TLabel
      Left = 27
      Top = 221
      Width = 63
      Height = 13
      Caption = 'Total Harga'
    end
    object LabelPajakOutput: TLabel
      Left = 27
      Top = 250
      Width = 56
      Height = 13
      Caption = 'Pajak 10%'
    end
    object LabelTotalTagihanOutput: TLabel
      Left = 27
      Top = 279
      Width = 75
      Height = 13
      Caption = 'Total Tagihan'
    end
    object LabelNamaPelangganOutput: TLabel
      Left = 27
      Top = 47
      Width = 92
      Height = 13
      Caption = 'Nama Pelanggan'
    end
    object LabelKodeJenisPelangganOutput: TLabel
      Left = 27
      Top = 76
      Width = 118
      Height = 13
      Caption = 'Kode Jenis Pelanggan'
    end
    object LabelJumlahPemakaianOutput: TLabel
      Left = 27
      Top = 134
      Width = 100
      Height = 13
      Caption = 'Jumlah Pemakaian'
    end
    object LabelJenisPelangganOutput: TLabel
      Left = 27
      Top = 105
      Width = 88
      Height = 13
      Caption = 'Jenis Pelanggan'
    end
    object LabelBiayaBebanOutputR: TLabel
      Left = 164
      Top = 163
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelHargaPerM3OutputR: TLabel
      Left = 164
      Top = 192
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelTotalHargaOutputR: TLabel
      Left = 164
      Top = 221
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelPajakOutputR: TLabel
      Left = 164
      Top = 250
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelTotalTagihanOutputR: TLabel
      Left = 164
      Top = 279
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelNamaPelangganOutputR: TLabel
      Left = 164
      Top = 47
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelKodeJenisPelangganOutputR: TLabel
      Left = 164
      Top = 76
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelJumlahPemakaianOutputR: TLabel
      Left = 164
      Top = 134
      Width = 4
      Height = 13
      Caption = '-'
    end
    object LabelJenisPelangganOutputR: TLabel
      Left = 164
      Top = 105
      Width = 4
      Height = 13
      Caption = '-'
    end
  end
end
