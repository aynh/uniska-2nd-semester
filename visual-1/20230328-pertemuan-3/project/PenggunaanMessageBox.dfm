object FormPenggunaanMessageBox: TFormPenggunaanMessageBox
  Left = 679
  Top = 247
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penggunaan MessageBox'
  ClientHeight = 300
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
    Left = 28
    Top = 19
    Width = 236
    Height = 26
    Caption = 'Penggunaan MessageBox'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 26
    Top = 70
    Width = 240
    Height = 30
    Caption = 'ShowMessage'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 26
    Top = 112
    Width = 240
    Height = 30
    Caption = 'MessageDlg - mtInformation'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 26
    Top = 154
    Width = 240
    Height = 30
    Caption = 'MessageDlg - mtWarning'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 26
    Top = 196
    Width = 240
    Height = 30
    Caption = 'MessageDlg - mtError'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 26
    Top = 238
    Width = 240
    Height = 30
    Caption = 'MessageDlg - mtConfirmation'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Fira Sans'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button5Click
  end
end
