object PenentuKategoriUsia: TPenentuKategoriUsia
  Left = 478
  Top = 243
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penentu Kategori Usia'
  ClientHeight = 300
  ClientWidth = 300
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
  object LabelUsia: TLabel
    Left = 101
    Top = 41
    Width = 99
    Height = 25
    Caption = 'Usia Kamu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelUsiaInput: TLabel
    Left = 104
    Top = 74
    Width = 100
    Height = 39
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelKategori: TLabel
    Left = 75
    Top = 186
    Width = 150
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 'Kamu Adalah'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object LabelKategoriOutput: TLabel
    Left = 25
    Top = 219
    Width = 250
    Height = 39
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TrackBarUsia: TTrackBar
    Left = 50
    Top = 114
    Width = 200
    Height = 40
    Max = 200
    Position = 1
    TabOrder = 0
    ThumbLength = 25
    OnChange = TrackBarUsiaChange
  end
end
