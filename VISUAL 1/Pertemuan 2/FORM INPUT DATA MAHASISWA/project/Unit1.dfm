object FormInputDataMahasiswa: TFormInputDataMahasiswa
  Left = 322
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form Input Data Mahasiswa'
  ClientHeight = 502
  ClientWidth = 630
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
  object LabelNama: TLabel
    Left = 138
    Top = 116
    Width = 110
    Height = 19
    Alignment = taRightJustify
    Caption = 'Nama Lengkap'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelNPM: TLabel
    Left = 210
    Top = 83
    Width = 32
    Height = 19
    Alignment = taRightJustify
    Caption = 'NPM'
    FocusControl = EditNPM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelTanggalLahir: TLabel
    Left = 147
    Top = 149
    Width = 102
    Height = 19
    Alignment = taRightJustify
    Caption = 'Tanggal Lahir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelProgramStudi: TLabel
    Left = 141
    Top = 182
    Width = 108
    Height = 19
    Alignment = taRightJustify
    Caption = 'Program Studi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelJenisKelamin: TLabel
    Left = 149
    Top = 220
    Width = 100
    Height = 19
    Alignment = taRightJustify
    Caption = 'Jenis Kelamin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelAlamat: TLabel
    Left = 192
    Top = 257
    Width = 52
    Height = 19
    Alignment = taRightJustify
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelNomorHP: TLabel
    Left = 139
    Top = 290
    Width = 106
    Height = 19
    Alignment = taRightJustify
    Caption = 'Nomor HP/WA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelAgama: TLabel
    Left = 193
    Top = 356
    Width = 52
    Height = 19
    Alignment = taRightJustify
    Caption = 'Agama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelStatusNikah: TLabel
    Left = 155
    Top = 394
    Width = 94
    Height = 19
    Alignment = taRightJustify
    Caption = 'Status Nikah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelEmail: TLabel
    Left = 204
    Top = 323
    Width = 40
    Height = 19
    Alignment = taRightJustify
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelHeading: TLabel
    Left = 42
    Top = 8
    Width = 547
    Height = 58
    Caption = 'Input Data Mahasiswa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditNama: TEdit
    Left = 257
    Top = 116
    Width = 250
    Height = 21
    TabOrder = 1
  end
  object EditNPM: TEdit
    Left = 257
    Top = 83
    Width = 250
    Height = 21
    MaxLength = 10
    TabOrder = 0
  end
  object DateTimePickerTanggalLahir: TDateTimePicker
    Left = 257
    Top = 149
    Width = 250
    Height = 21
    Date = 45006.465557800930000000
    Time = 45006.465557800930000000
    TabOrder = 2
  end
  object ComboBoxProgramStudi: TComboBox
    Left = 257
    Top = 182
    Width = 250
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      'Agribisnis'
      'Bimbingan dan Konseling'
      'Ekonomi Syariah'
      'Farmasi'
      'Hukum Ekonomi Syariah'
      'Ilmu Administrasi Publik'
      'Ilmu Hukum'
      'Ilmu Komunikasi'
      'Kesehatan Masyarakat'
      'Magister Administrasi Pendidikan'
      'Magister Ilmu Administrasi Publik'
      'Magister Ilmu Komunikasi'
      'Magister Manajemen'
      'Magister Peternakan'
      'Manajemen'
      'Pendidikan Bahasa Inggris'
      'Pendidikan Guru Madrasah Ibtidaiyah'
      'Pendidikan Kimia'
      'Pendidikan Olahraga'
      'Peternakan'
      'Sistem Informasi'
      'Teknik Elektro'
      'Teknik Industri'
      'Teknik Informatika'
      'Teknik Mesin'
      'Teknik Sipil')
  end
  object RadioGroupJenisKelamin: TRadioGroup
    Left = 257
    Top = 215
    Width = 250
    Height = 30
    Caption = 'Pilihan Jenis Kelamin'
    Columns = 2
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
    TabOrder = 4
  end
  object EditAlamat: TEdit
    Left = 257
    Top = 257
    Width = 250
    Height = 21
    TabOrder = 5
  end
  object EditNomorHP: TEdit
    Left = 257
    Top = 290
    Width = 250
    Height = 21
    MaxLength = 13
    TabOrder = 6
  end
  object ComboBoxAgama: TComboBox
    Left = 257
    Top = 356
    Width = 250
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Islam'
      'Kristen'
      'Katolik'
      'Hindu'
      'Budha'
      'Konghucu')
  end
  object RadioGroupStatusNikah: TRadioGroup
    Left = 257
    Top = 389
    Width = 250
    Height = 30
    Caption = 'Pilihan Status Nikah'
    Columns = 2
    Items.Strings = (
      'Sudah Nikah'
      'Belum Nikah')
    TabOrder = 9
  end
  object EditEmail: TEdit
    Left = 257
    Top = 323
    Width = 250
    Height = 21
    TabOrder = 7
  end
  object ButtonInput: TButton
    Left = 190
    Top = 446
    Width = 90
    Height = 30
    Caption = 'Input'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object ButtonUlang: TButton
    Left = 349
    Top = 446
    Width = 90
    Height = 30
    Caption = 'Ulang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = ButtonUlangClick
  end
end
