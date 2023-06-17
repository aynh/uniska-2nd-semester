object MenuUtama: TMenuUtama
  Left = 231
  Top = 193
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Menu Utama'
  ClientHeight = 141
  ClientWidth = 284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonDataMahasiswa: TButton
    Left = 42
    Top = 30
    Width = 200
    Height = 32
    Caption = 'Data Mahasiswa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = ButtonDataMahasiswaClick
  end
  object ButtonDataDosen: TButton
    Left = 42
    Top = 78
    Width = 200
    Height = 32
    Caption = 'Data Dosen'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = ButtonDataDosenClick
  end
end
