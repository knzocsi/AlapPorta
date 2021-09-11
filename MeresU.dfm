object MeresF: TMeresF
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233's'
  ClientHeight = 215
  ClientWidth = 395
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
  object Label6: TLabel
    Left = 41
    Top = 24
    Width = 53
    Height = 13
    Caption = 'Rendsz'#225'm:'
  end
  object Label7: TLabel
    Left = 217
    Top = 24
    Width = 62
    Height = 13
    Caption = 'Rendsz'#225'm 2:'
  end
  object Label9: TLabel
    Left = 150
    Top = 87
    Width = 36
    Height = 13
    Caption = 'T'#246'meg:'
  end
  object cbxrendszam1: TComboBox
    Left = 41
    Top = 40
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    Sorted = True
    TabOrder = 0
    Text = 'CBXRENDSZAM1'
  end
  object cbxrendszam2: TComboBox
    Left = 217
    Top = 40
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Sorted = True
    TabOrder = 1
    Text = 'CBXRENDSZAM2'
  end
  object spTomeg: TSpinEdit
    Left = 150
    Top = 106
    Width = 100
    Height = 22
    MaxValue = 0
    MinValue = 0
    ReadOnly = True
    TabOrder = 2
    Value = 0
    OnEnter = spTomegEnter
  end
  object btnMentes: TButton
    Left = 56
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Ment'#233's'
    TabOrder = 3
    OnClick = btnMentesClick
  end
  object btnKilepes: TButton
    Left = 264
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 4
    OnClick = btnKilepesClick
  end
  object chkkezi: TCheckBox
    Left = 47
    Top = 108
    Width = 97
    Height = 17
    Caption = 'K'#233'zi m'#233'r'#233's'
    TabOrder = 5
  end
end
