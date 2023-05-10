object KonversiSatuanJarak: TKonversiSatuanJarak
  Left = 364
  Top = 174
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Konversi Satuan Jarak'
  ClientHeight = 295
  ClientWidth = 432
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
  object LabelPilihan: TLabel
    Left = 230
    Top = 20
    Width = 38
    Height = 13
    Caption = 'Satuan'
  end
  object LabelInput: TLabel
    Left = 59
    Top = 20
    Width = 28
    Height = 13
    Caption = 'Input'
  end
  object ComboBoxPilihan: TComboBox
    Left = 230
    Top = 37
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'Kilometer (km)'
    OnChange = ComboBoxPilihanChange
    Items.Strings = (
      'Kilometer (km)'
      'Hektometer (hm)'
      'Dekameter (dam)'
      'Meter (m)'
      'Desimeter (dm)'
      'Centimeter (cm)'
      'Milimeter (mm)')
  end
  object GroupBoxHasil: TGroupBox
    Left = 16
    Top = 75
    Width = 400
    Height = 200
    Caption = 'HASIL'
    TabOrder = 1
    object Label1: TLabel
      Left = 57
      Top = 27
      Width = 89
      Height = 13
      Caption = 'Hektometer (hm)'
    end
    object Label2: TLabel
      Left = 223
      Top = 27
      Width = 92
      Height = 13
      Caption = 'Dekameter (dam)'
    end
    object Label3: TLabel
      Left = 57
      Top = 81
      Width = 51
      Height = 13
      Caption = 'Meter (m)'
    end
    object Label4: TLabel
      Left = 222
      Top = 81
      Width = 80
      Height = 13
      Caption = 'Desimeter (dm)'
    end
    object Label5: TLabel
      Left = 56
      Top = 135
      Width = 85
      Height = 13
      Caption = 'Centimeter (cm)'
    end
    object Label6: TLabel
      Left = 223
      Top = 135
      Width = 78
      Height = 13
      Caption = 'Milimeter (mm)'
    end
    object Edit1: TEdit
      Left = 56
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 222
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 56
      Top = 98
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 222
      Top = 98
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 56
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 222
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object EditInput: TEdit
    Left = 59
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = EditInputChange
    OnKeyPress = EditInputKeyPress
  end
end
