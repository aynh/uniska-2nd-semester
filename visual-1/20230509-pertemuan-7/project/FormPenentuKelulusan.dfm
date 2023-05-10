object PenentuKelulusan: TPenentuKelulusan
  Left = 328
  Top = 297
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penentu Kelulusan'
  ClientHeight = 350
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBoxInput: TGroupBox
    Left = 12
    Top = 15
    Width = 400
    Height = 320
    Caption = 'INPUT'
    TabOrder = 0
    object LabelNPM: TLabel
      Left = 111
      Top = 22
      Width = 23
      Height = 13
      Caption = 'NPM'
    end
    object LabelNama: TLabel
      Left = 112
      Top = 66
      Width = 80
      Height = 13
      Caption = 'Nama Lengkap'
    end
    object EditNPM: TEdit
      Left = 112
      Top = 39
      Width = 175
      Height = 21
      TabOrder = 0
      OnChange = EditNPMChange
    end
    object EditNama: TEdit
      Left = 113
      Top = 83
      Width = 175
      Height = 21
      TabOrder = 1
      OnChange = EditNamaChange
    end
    object GroupBoxNilai: TGroupBox
      Left = 25
      Top = 115
      Width = 350
      Height = 150
      Caption = 'NILAI'
      TabOrder = 2
      object LabelAbsen: TLabel
        Left = 56
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Absen'
      end
      object LabelTugas: TLabel
        Left = 218
        Top = 17
        Width = 33
        Height = 13
        Caption = 'Tugas'
      end
      object LabelUTS: TLabel
        Left = 66
        Top = 81
        Width = 20
        Height = 13
        Caption = 'UTS'
      end
      object LabelUAS: TLabel
        Left = 227
        Top = 81
        Width = 20
        Height = 13
        Caption = 'UAS'
      end
      object EditAbsen: TEdit
        Left = 99
        Top = 15
        Width = 43
        Height = 21
        TabOrder = 0
        Text = '0'
        OnChange = EditAbsenChange
        OnKeyPress = EditAbsenKeyPress
      end
      object TrackBarAbsen: TTrackBar
        Left = 17
        Top = 39
        Width = 150
        Height = 35
        Max = 100
        TabOrder = 1
        OnChange = TrackBarAbsenChange
      end
      object EditTugas: TEdit
        Left = 263
        Top = 14
        Width = 43
        Height = 21
        TabOrder = 2
        Text = '0'
        OnChange = EditTugasChange
        OnKeyPress = EditTugasKeyPress
      end
      object TrackBarTugas: TTrackBar
        Left = 182
        Top = 38
        Width = 150
        Height = 35
        Max = 100
        TabOrder = 3
        OnChange = TrackBarTugasChange
      end
      object TrackBarUTS: TTrackBar
        Left = 17
        Top = 101
        Width = 150
        Height = 35
        Max = 100
        TabOrder = 4
        OnChange = TrackBarUTSChange
      end
      object EditUTS: TEdit
        Left = 98
        Top = 77
        Width = 43
        Height = 21
        TabOrder = 5
        Text = '0'
        OnChange = EditUTSChange
        OnKeyPress = EditUTSKeyPress
      end
      object TrackBarUAS: TTrackBar
        Left = 181
        Top = 101
        Width = 150
        Height = 35
        Max = 100
        TabOrder = 6
        OnChange = TrackBarUASChange
      end
      object EditUAS: TEdit
        Left = 262
        Top = 77
        Width = 43
        Height = 21
        TabOrder = 7
        Text = '0'
        OnChange = EditUASChange
        OnKeyPress = EditUASKeyPress
      end
    end
    object ButtonReset: TButton
      Left = 17
      Top = 279
      Width = 75
      Height = 25
      Caption = 'Reset'
      TabOrder = 3
      OnClick = ButtonResetClick
    end
  end
  object GroupBoxOutput: TGroupBox
    Left = 428
    Top = 15
    Width = 365
    Height = 320
    Caption = 'OUTPUT'
    TabOrder = 1
    object LabelNPMOutput: TLabel
      Left = 94
      Top = 22
      Width = 23
      Height = 13
      Caption = 'NPM'
    end
    object LabelNamaOutput: TLabel
      Left = 95
      Top = 66
      Width = 80
      Height = 13
      Caption = 'Nama Lengkap'
    end
    object EditNPMOutput: TEdit
      Left = 95
      Top = 39
      Width = 175
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object EditNamaOutput: TEdit
      Left = 96
      Top = 83
      Width = 175
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object GroupBoxHasil: TGroupBox
      Left = 20
      Top = 115
      Width = 325
      Height = 180
      Caption = 'HASIL'
      TabOrder = 2
      object LabelNilaiAkhir: TLabel
        Left = 43
        Top = 24
        Width = 94
        Height = 25
        Caption = 'Nilai Akhir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelNilaiAkhirOutput: TLabel
        Left = 40
        Top = 55
        Width = 100
        Height = 39
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object LabelPredikatOutput: TLabel
        Left = 190
        Top = 55
        Width = 100
        Height = 39
        Alignment = taCenter
        AutoSize = False
        Caption = 'E'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentColor = False
        ParentFont = False
      end
      object LabelPredikat: TLabel
        Left = 201
        Top = 24
        Width = 78
        Height = 25
        Caption = 'Predikat'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LabelKesimpulan: TLabel
        Left = 25
        Top = 107
        Width = 275
        Height = 52
        Alignment = taCenter
        AutoSize = False
        Caption = 'TIDAK LULUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
end
