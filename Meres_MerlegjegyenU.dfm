object Meres_MerlegjegyenF: TMeres_MerlegjegyenF
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233's a m'#233'rlegjegyen'
  ClientHeight = 234
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 11
    Top = 8
    Width = 74
    Height = 16
    Caption = 'Els'#337' m'#233'r'#233's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblelsodat: TLabel
    Left = 91
    Top = 8
    Width = 61
    Height = 16
    Caption = 'lblElsodat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblelsoido: TLabel
    Left = 91
    Top = 24
    Width = 58
    Height = 16
    Caption = 'lblElsoido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 227
    Top = 8
    Width = 101
    Height = 16
    Caption = 'M'#225'sodik m'#233'r'#233's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblmasdat: TLabel
    Left = 334
    Top = 7
    Width = 62
    Height = 16
    Caption = 'lblMasdat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblmasido: TLabel
    Left = 334
    Top = 29
    Width = 59
    Height = 16
    Caption = 'lblMasido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTomeg1: TLabel
    Left = 88
    Top = 49
    Width = 12
    Height = 23
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTomeg2: TLabel
    Left = 334
    Top = 49
    Width = 12
    Height = 23
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 106
    Top = 57
    Width = 11
    Height = 13
    Caption = 'kg'
  end
  object Label5: TLabel
    Left = 352
    Top = 57
    Width = 11
    Height = 13
    Caption = 'kg'
  end
  object Label6: TLabel
    Left = 258
    Top = 85
    Width = 36
    Height = 13
    Caption = 'T'#246'meg:'
  end
  object RadioGroup1: TRadioGroup
    Left = 11
    Top = 104
    Width = 89
    Height = 49
    Caption = 'M'#233'r'#233's sz'#225'ma'
    Items.Strings = (
      '1. m'#233'r'#233's'
      '2. m'#233'r'#233's')
    TabOrder = 0
  end
  object chkelso_kezi: TCheckBox
    Left = 36
    Top = 26
    Width = 49
    Height = 17
    Caption = 'K'#233'zi'
    Enabled = False
    TabOrder = 1
  end
  object chkmasodik_kezi: TCheckBox
    Left = 227
    Top = 25
    Width = 49
    Height = 17
    Caption = 'K'#233'zi'
    Enabled = False
    TabOrder = 2
  end
  object rgMerlegszama: TRadioGroup
    Left = 128
    Top = 104
    Width = 108
    Height = 65
    Caption = 'M'#233'rleg sz'#225'ma'
    Items.Strings = (
      'K'#233'zi m'#233'r'#233's'
      '1. m'#233'rleg'
      '2. m'#233'rleg')
    TabOrder = 3
  end
  object btnMeres: TButton
    Left = 258
    Top = 144
    Width = 88
    Height = 25
    Caption = 'M'#233'r'#233's'
    TabOrder = 4
  end
  object spTomeg: TSpinEdit
    Left = 258
    Top = 104
    Width = 117
    Height = 22
    MaxValue = 0
    MinValue = 0
    ReadOnly = True
    TabOrder = 5
    Value = 0
  end
  object btnMegsem: TButton
    Left = 161
    Top = 199
    Width = 88
    Height = 25
    Caption = 'M'#233'gsem'
    TabOrder = 6
  end
end
