object DataMahasiswa: TDataMahasiswa
  Left = 225
  Top = 168
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Data Mahasiswa'
  ClientHeight = 516
  ClientWidth = 784
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
  object GroupBoxData: TGroupBox
    Left = 170
    Top = 16
    Width = 335
    Height = 273
    Caption = 'Data'
    TabOrder = 0
    object LabelNPM: TLabel
      Left = 19
      Top = 27
      Width = 21
      Height = 13
      Caption = 'NPM'
    end
    object LabelNamaLengkap: TLabel
      Left = 19
      Top = 59
      Width = 70
      Height = 13
      Caption = 'Nama Lengkap'
    end
    object LabelTanggalLahir: TLabel
      Left = 19
      Top = 147
      Width = 64
      Height = 13
      Caption = 'Tanggal Lahir'
    end
    object LabelTempatLahir: TLabel
      Left = 19
      Top = 180
      Width = 62
      Height = 13
      Caption = 'Tempat Lahir'
    end
    object EditNPM: TEdit
      Left = 102
      Top = 23
      Width = 210
      Height = 21
      TabOrder = 0
    end
    object EditNamaLengkap: TEdit
      Left = 102
      Top = 56
      Width = 210
      Height = 21
      TabOrder = 1
    end
    object RadioGroupProgramStudi: TRadioGroup
      Left = 15
      Top = 89
      Width = 300
      Height = 42
      Caption = 'Program Studi'
      Columns = 2
      Items.Strings = (
        'Teknik Informatika'
        'Sistem Informasi')
      TabOrder = 2
    end
    object DateTimePickerTanggalLahir: TDateTimePicker
      Left = 107
      Top = 143
      Width = 210
      Height = 21
      Date = 45089.833244247680000000
      Time = 45089.833244247680000000
      TabOrder = 3
    end
    object EditTempatLahir: TEdit
      Left = 105
      Top = 176
      Width = 210
      Height = 21
      TabOrder = 4
    end
    object RadioGroupJenisKelamin: TRadioGroup
      Left = 19
      Top = 209
      Width = 300
      Height = 42
      Caption = 'Jenis Kelamin'
      Columns = 2
      Items.Strings = (
        'Laki-laki'
        'Perempuan')
      TabOrder = 5
    end
  end
  object GroupBoxAction: TGroupBox
    Left = 515
    Top = 21
    Width = 162
    Height = 267
    Caption = 'Action'
    TabOrder = 1
    object ButtonTambah: TButton
      Left = 31
      Top = 47
      Width = 100
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = ButtonTambahClick
    end
    object ButtonUbah: TButton
      Left = 31
      Top = 96
      Width = 100
      Height = 25
      Caption = 'Ubah'
      Enabled = False
      TabOrder = 1
      OnClick = ButtonUbahClick
    end
    object ButtonHapus: TButton
      Left = 31
      Top = 145
      Width = 100
      Height = 25
      Caption = 'Hapus'
      Enabled = False
      TabOrder = 2
      OnClick = ButtonHapusClick
    end
    object ButtonClear: TButton
      Left = 32
      Top = 193
      Width = 100
      Height = 25
      Caption = 'Clear'
      TabOrder = 3
      OnClick = ButtonClearClick
    end
  end
  object GroupBoxDaftarData: TGroupBox
    Left = 32
    Top = 300
    Width = 720
    Height = 200
    Caption = 'Daftar Data'
    TabOrder = 2
    object LabelCari: TLabel
      Left = 331
      Top = 172
      Width = 155
      Height = 13
      Caption = 'Cari Berdasarkan Nama Lengkap'
    end
    object DBGridMahasiswa: TDBGrid
      Left = 10
      Top = 20
      Width = 700
      Height = 141
      DataSource = DataSourceMahasiswa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridMahasiswaCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'npm'
          Title.Caption = 'NPM'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama_lengkap'
          Title.Caption = 'Nama lengkap'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prodi'
          Title.Caption = 'Program studi'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal_lahir'
          Title.Caption = 'Tanggal lahir'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tempat_lahir'
          Title.Caption = 'Tempat lahir'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jenis_kelamin'
          Title.Caption = 'Jenis kelamin'
          Visible = True
        end>
    end
    object EditCari: TEdit
      Left = 500
      Top = 168
      Width = 210
      Height = 21
      TabOrder = 1
      OnChange = EditCariChange
    end
  end
  object ADOConnectionMahasiswa: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\_.mdb;Persist Sec' +
      'urity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 128
    Top = 176
  end
  object ADODataSetMahasiswa: TADODataSet
    Active = True
    Connection = ADOConnectionMahasiswa
    CursorType = ctStatic
    CommandText = 'select * from mahasiswa'
    Parameters = <>
    Left = 128
    Top = 216
  end
  object DataSourceMahasiswa: TDataSource
    DataSet = ADODataSetMahasiswa
    Left = 128
    Top = 256
  end
end
