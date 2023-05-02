object MenuUtama: TMenuUtama
  Left = 587
  Top = 215
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Menu Utama'
  ClientHeight = 248
  ClientWidth = 292
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
  object LabelHeader: TLabel
    Left = 44
    Top = 26
    Width = 203
    Height = 39
    Caption = 'Menu Utama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ButtonFormKonversiSuhu: TButton
    Left = 27
    Top = 89
    Width = 240
    Height = 32
    Caption = 'Form Konversi Suhu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonFormKonversiSuhuClick
  end
  object ButtonFormBangunRuang: TButton
    Left = 25
    Top = 135
    Width = 240
    Height = 32
    Caption = 'Form Bangun Ruang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonFormBangunRuangClick
  end
  object ButtonAbout: TButton
    Left = 96
    Top = 202
    Width = 100
    Height = 25
    Caption = 'About'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonAboutClick
  end
end
