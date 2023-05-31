object KonversiSuhu: TKonversiSuhu
  Left = 564
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Konversi Suhu'
  ClientHeight = 377
  ClientWidth = 272
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object LabelHeading: TLabel
    Left = 36
    Top = 24
    Width = 199
    Height = 66
    Alignment = taCenter
    Caption = 'Konversi Suhu'#13#10'Reamur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelReamur: TLabel
    Left = 89
    Top = 112
    Width = 101
    Height = 13
    Caption = 'Input Reamur -- (R)'
  end
  object LabelCelcius: TLabel
    Left = 90
    Top = 207
    Width = 96
    Height = 13
    Caption = 'Celcius -- (R * 5/4)'
  end
  object LabelFahrenheit: TLabel
    Left = 66
    Top = 257
    Width = 144
    Height = 13
    Caption = 'Fahrenheit -- (R * 9/4 + 32)'
  end
  object LabelKelvin: TLabel
    Left = 76
    Top = 305
    Width = 123
    Height = 13
    Caption = 'Kelvin -- (R * 5/4 + 273)'
  end
  object EditReamur: TEdit
    Left = 75
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = EditReamurKeyPress
  end
  object ButtonKonversi: TButton
    Left = 98
    Top = 162
    Width = 75
    Height = 25
    Caption = 'Konversi'
    TabOrder = 1
    OnClick = ButtonKonversiClick
  end
  object EditCelcius: TEdit
    Left = 56
    Top = 223
    Width = 160
    Height = 21
    Enabled = False
    TabOrder = 2
  end
  object EditFahrenheit: TEdit
    Left = 56
    Top = 272
    Width = 160
    Height = 21
    Enabled = False
    TabOrder = 3
  end
  object EditKelvin: TEdit
    Left = 57
    Top = 320
    Width = 160
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object ButtonReset: TButton
    Left = 2
    Top = 354
    Width = 75
    Height = 20
    Caption = 'Reset'
    TabOrder = 5
    OnClick = ButtonResetClick
  end
end
