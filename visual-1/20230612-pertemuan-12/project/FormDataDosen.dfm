object DataDosen: TDataDosen
  Left = 174
  Top = 239
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Data Dosen'
  ClientHeight = 526
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
    Top = 17
    Width = 335
    Height = 281
    Caption = 'Data'
    TabOrder = 0
    object LabelNIDN: TLabel
      Left = 19
      Top = 27
      Width = 25
      Height = 13
      Caption = 'NIDN'
    end
    object LabelNamaLengkap: TLabel
      Left = 19
      Top = 59
      Width = 70
      Height = 13
      Caption = 'Nama Lengkap'
    end
    object LabelTanggalMasuk: TLabel
      Left = 19
      Top = 93
      Width = 71
      Height = 13
      Caption = 'Tanggal Masuk'
    end
    object LabelAlamat: TLabel
      Left = 19
      Top = 126
      Width = 33
      Height = 13
      Caption = 'Alamat'
    end
    object LabelAgama: TLabel
      Left = 19
      Top = 192
      Width = 33
      Height = 13
      Caption = 'Agama'
    end
    object LabelNomorWA: TLabel
      Left = 19
      Top = 159
      Width = 51
      Height = 13
      Caption = 'Nomor WA'
    end
    object EditNIDN: TEdit
      Left = 102
      Top = 23
      Width = 210
      Height = 21
      MaxLength = 10
      TabOrder = 0
    end
    object EditNamaLengkap: TEdit
      Left = 102
      Top = 56
      Width = 210
      Height = 21
      MaxLength = 50
      TabOrder = 1
    end
    object DateTimePickerTanggalMasuk: TDateTimePicker
      Left = 102
      Top = 89
      Width = 210
      Height = 21
      Date = 45089.833244247680000000
      Time = 45089.833244247680000000
      TabOrder = 2
    end
    object RadioGroupStatus: TRadioGroup
      Left = 18
      Top = 221
      Width = 300
      Height = 42
      Caption = 'Status'
      Columns = 2
      Items.Strings = (
        'PNS'
        'DTY')
      TabOrder = 6
    end
    object ComboBoxAgama: TComboBox
      Left = 102
      Top = 188
      Width = 210
      Height = 21
      ItemHeight = 13
      MaxLength = 15
      TabOrder = 5
      Items.Strings = (
        'Islam'
        'Kristen'
        'Katolik'
        'Hindu'
        'Budha'
        'Konghucu')
    end
    object EditNomorWA: TEdit
      Left = 102
      Top = 155
      Width = 210
      Height = 21
      MaxLength = 16
      TabOrder = 4
    end
    object EditAlamat: TEdit
      Left = 102
      Top = 122
      Width = 210
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
  end
  object GroupBoxAction: TGroupBox
    Left = 515
    Top = 17
    Width = 162
    Height = 281
    Caption = 'Action'
    TabOrder = 1
    object ButtonTambah: TButton
      Left = 31
      Top = 55
      Width = 100
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
      OnClick = ButtonTambahClick
    end
    object ButtonUbah: TButton
      Left = 31
      Top = 104
      Width = 100
      Height = 25
      Caption = 'Ubah'
      Enabled = False
      TabOrder = 1
      OnClick = ButtonUbahClick
    end
    object ButtonHapus: TButton
      Left = 31
      Top = 153
      Width = 100
      Height = 25
      Caption = 'Hapus'
      Enabled = False
      TabOrder = 2
      OnClick = ButtonHapusClick
    end
    object ButtonClear: TButton
      Left = 32
      Top = 201
      Width = 100
      Height = 25
      Caption = 'Clear'
      TabOrder = 3
      OnClick = ButtonClearClick
    end
  end
  object GroupBoxDaftarData: TGroupBox
    Left = 12
    Top = 309
    Width = 760
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
    object DBGridDosen: TDBGrid
      Left = 10
      Top = 20
      Width = 740
      Height = 141
      DataSource = DataSourceDosen
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGridDosenCellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nidn'
          Title.Caption = 'NIDN'
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
          FieldName = 'tanggal_masuk'
          Title.Caption = 'Tanggal masuk'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alamat'
          Title.Caption = 'Alamat'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomor_wa'
          Title.Caption = 'Nomor WA'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'agama'
          Title.Caption = 'Agama'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Caption = 'Status'
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
  object ADOConnectionDosen: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\_.mdb;Persist Sec' +
      'urity Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 16
    Top = 16
  end
  object ADODataSetDosen: TADODataSet
    Active = True
    Connection = ADOConnectionDosen
    CursorType = ctStatic
    CommandText = 'select * from dosen'
    Parameters = <>
    Left = 48
    Top = 16
    object ADODataSetDosenID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODataSetDosennidn: TWideStringField
      FieldName = 'nidn'
      Size = 10
    end
    object ADODataSetDosennama_lengkap: TWideStringField
      FieldName = 'nama_lengkap'
      Size = 50
    end
    object ADODataSetDosentanggal_masuk: TDateTimeField
      FieldName = 'tanggal_masuk'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object ADODataSetDosenalamat: TWideStringField
      FieldName = 'alamat'
      Size = 50
    end
    object ADODataSetDosennomor_wa: TWideStringField
      FieldName = 'nomor_wa'
      Size = 16
    end
    object ADODataSetDosenagama: TWideStringField
      FieldName = 'agama'
      Size = 15
    end
    object ADODataSetDosenstatus: TWideStringField
      FieldName = 'status'
      Size = 3
    end
  end
  object DataSourceDosen: TDataSource
    DataSet = ADODataSetDosen
    Left = 80
    Top = 16
  end
end
