object BangunRuang: TBangunRuang
  Left = 281
  Top = 126
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Bangun Ruang'
  ClientHeight = 373
  ClientWidth = 275
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
  object LabelHeading: TLabel
    Left = 37
    Top = 24
    Width = 200
    Height = 66
    Alignment = taCenter
    Caption = 'Bangun Ruang'#13#10'Tabung'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelJari: TLabel
    Left = 91
    Top = 112
    Width = 97
    Height = 13
    Caption = 'Input Jari-jari -- (r)'
  end
  object LabelTinggi: TLabel
    Left = 94
    Top = 155
    Width = 91
    Height = 13
    Caption = 'Input Tinggi -- (t)'
  end
  object LabelLuas: TLabel
    Left = 66
    Top = 250
    Width = 145
    Height = 13
    Caption = 'Luas -- (2 * PHI * r * (r + t))'
  end
  object LabelVolume: TLabel
    Left = 74
    Top = 301
    Width = 130
    Height = 13
    Caption = 'Volume -- (PHI * r * r * t)'
  end
  object LabelPHI: TLabel
    Left = 220
    Top = 354
    Width = 53
    Height = 13
    Caption = 'PHI = 3.14'
  end
  object EditJari: TEdit
    Left = 77
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = EditJariKeyPress
  end
  object EditTinggi: TEdit
    Left = 77
    Top = 170
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = EditTinggiKeyPress
  end
  object ButtonHitung: TButton
    Left = 100
    Top = 205
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 2
    OnClick = ButtonHitungClick
  end
  object EditLuas: TEdit
    Left = 57
    Top = 264
    Width = 160
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object EditVolume: TEdit
    Left = 58
    Top = 316
    Width = 160
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object ButtonReset: TButton
    Left = 2
    Top = 350
    Width = 60
    Height = 20
    Caption = 'Reset'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = ButtonResetClick
  end
end
