object MeresF: TMeresF
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233's'
  ClientHeight = 272
  ClientWidth = 439
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
    Left = 40
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
    Left = 41
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
    Left = 40
    Top = 222
    Width = 75
    Height = 25
    Caption = 'Ment'#233's'
    TabOrder = 3
    OnClick = btnMentesClick
  end
  object btnKilepes: TButton
    Left = 256
    Top = 222
    Width = 75
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 4
    OnClick = btnKilepesClick
  end
  object chkkezi: TCheckBox
    Left = 159
    Top = 111
    Width = 97
    Height = 17
    Caption = 'K'#233'zi m'#233'r'#233's'
    TabOrder = 5
    OnClick = chkkeziClick
  end
  object btnMeres1: TButton
    Left = 41
    Top = 135
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 1. m'#233'rleg'
    TabOrder = 6
    OnClick = btnMeres1Click
  end
  object btnMeres2: TButton
    Left = 137
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 2. m'#233'rleg'
    TabOrder = 7
    Visible = False
    OnClick = btnMeres1Click
  end
  object btnMeres3: TButton
    Left = 233
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 3. m'#233'rleg'
    TabOrder = 8
    Visible = False
  end
  object btnMeres4: TButton
    Left = 329
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 4. m'#233'rleg'
    TabOrder = 9
    Visible = False
    OnClick = btnMeres1Click
  end
end
