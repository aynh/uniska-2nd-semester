object MenuUtama: TMenuUtama
  Left = 419
  Top = 224
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
  object ButtonPenentuKelulusan: TButton
    Left = 27
    Top = 89
    Width = 240
    Height = 32
    Caption = 'Penentu Kelulusan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonPenentuKelulusanClick
  end
  object ButtonKategoriUsia: TButton
    Left = 25
    Top = 137
    Width = 240
    Height = 32
    Caption = 'Kategori Usia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonKategoriUsiaClick
  end
  object ButtonKonversiSatuanJarak: TButton
    Left = 26
    Top = 185
    Width = 240
    Height = 32
    Caption = 'Konversi Satuan Jarak'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = ButtonKonversiSatuanJarakClick
  end
end
