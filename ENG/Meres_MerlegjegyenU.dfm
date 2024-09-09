object Meres_MerlegjegyenF: TMeres_MerlegjegyenF
  Left = 0
  Top = 0
  Caption = 'Weighning on weighning ticket'
  ClientHeight = 234
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 11
    Top = 8
    Width = 74
    Height = 16
    Caption = 'First weighning:'
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
    Caption = 'Second wieghning:'
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
    Top = 69
    Width = 36
    Height = 13
    Caption = 'Mass:'
  end
  object rgMeresszama: TRadioGroup
    Left = 11
    Top = 88
    Width = 89
    Height = 49
    Caption = 'Weighning number'
    Items.Strings = (
      '1. weighning'
      '2. weighning')
    TabOrder = 0
  end
  object chkelso_kezi: TCheckBox
    Left = 36
    Top = 26
    Width = 49
    Height = 17
    Caption = 'Manual'
    Enabled = False
    TabOrder = 1
  end
  object chkmasodik_kezi: TCheckBox
    Left = 227
    Top = 25
    Width = 49
    Height = 17
    Caption = 'Manual'
    Enabled = False
    TabOrder = 2
  end
  object rgMerlegszama: TRadioGroup
    Left = 128
    Top = 91
    Width = 108
    Height = 49
    Caption = 'Number of scale'
    Items.Strings = (
      '1. scale'
      '2. scale')
    TabOrder = 3
  end
  object btnMeres: TButton
    Left = 258
    Top = 137
    Width = 88
    Height = 25
    Caption = 'Weighning'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnMeresClick
  end
  object spTomeg: TSpinEdit
    Left = 258
    Top = 88
    Width = 151
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 5
    Value = 0
  end
  object btnKilepes: TButton
    Left = 258
    Top = 201
    Width = 88
    Height = 25
    Hint = 'Close'
    Caption = 'Exit'
    TabOrder = 6
    OnClick = btnKilepesClick
  end
  object chkKezimeres: TCheckBox
    Left = 128
    Top = 146
    Width = 97
    Height = 17
    Caption = 'Manual weighning'
    TabOrder = 7
    OnClick = chkKezimeresClick
  end
  object btnelfogadas: TButton
    Left = 91
    Top = 201
    Width = 75
    Height = 25
    Caption = 'Accept'
    TabOrder = 8
    OnClick = btnelfogadasClick
  end
end
