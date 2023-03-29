object FormKonversiSuhu: TFormKonversiSuhu
  Left = 435
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Konversi Suhu'
  ClientHeight = 253
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Fira Sans'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LabelHeading: TLabel
    Left = 32
    Top = 15
    Width = 220
    Height = 26
    Caption = 'Program Konversi Suhu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
  end
  object LabelInput: TLabel
    Left = 13
    Top = 118
    Width = 64
    Height = 15
    Caption = 'Input Suhu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
  end
  object LabelOutput: TLabel
    Left = 13
    Top = 213
    Width = 73
    Height = 15
    Caption = 'Output Suhu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
  end
  object RadioGroupKonversi: TRadioGroup
    Left = 10
    Top = 55
    Width = 272
    Height = 40
    Caption = 'Pilihan Konversi'
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fira Sans'
    Font.Style = []
    Items.Strings = (
      'Celcius -> Fahrenheit'
      'Fahrenheit -> Celcius')
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroupKonversiClick
  end
  object EditInput: TEdit
    Left = 158
    Top = 114
    Width = 121
    Height = 23
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = EditInputChange
  end
  object EditOutput: TEdit
    Left = 158
    Top = 209
    Width = 121
    Height = 23
    TabStop = False
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object ButtonKonversi: TButton
    Left = 24
    Top = 157
    Width = 90
    Height = 32
    Caption = 'Konversi'
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonKonversiClick
  end
  object ButtonUlang: TButton
    Left = 178
    Top = 157
    Width = 90
    Height = 32
    Caption = 'Ulang'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = ButtonUlangClick
  end
end
