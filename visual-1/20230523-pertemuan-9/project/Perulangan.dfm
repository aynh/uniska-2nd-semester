object Form1: TForm1
  Left = 246
  Top = 147
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 325
  ClientWidth = 387
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
  object LabelNilaiAwal: TLabel
    Left = 88
    Top = 20
    Width = 52
    Height = 13
    Caption = 'Nilai Awal'
  end
  object LabelNilaiAkhir: TLabel
    Left = 243
    Top = 20
    Width = 54
    Height = 13
    Caption = 'Nilai Akhir'
  end
  object LabelIsiPesan: TLabel
    Left = 170
    Top = 73
    Width = 47
    Height = 13
    Caption = 'Isi Pesan'
  end
  object EditNilaiAwal: TEdit
    Left = 54
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditNilaiAkhir: TEdit
    Left = 210
    Top = 39
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditIsiPesan: TEdit
    Left = 43
    Top = 92
    Width = 300
    Height = 21
    TabOrder = 2
  end
  object ButtonForToDo: TButton
    Left = 36
    Top = 139
    Width = 100
    Height = 25
    Caption = 'For To Do'
    TabOrder = 3
    OnClick = ButtonForToDoClick
  end
  object ButtonWhileDo: TButton
    Left = 144
    Top = 139
    Width = 100
    Height = 25
    Caption = 'While Do'
    TabOrder = 4
    OnClick = ButtonWhileDoClick
  end
  object ButtonRepeatUntil: TButton
    Left = 252
    Top = 139
    Width = 100
    Height = 25
    Caption = 'Repeat Until'
    TabOrder = 5
    OnClick = ButtonRepeatUntilClick
  end
  object ListBoxOutput: TListBox
    Left = 44
    Top = 184
    Width = 300
    Height = 120
    ItemHeight = 13
    TabOrder = 6
  end
end
