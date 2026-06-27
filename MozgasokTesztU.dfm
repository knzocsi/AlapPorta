object MozgasokTesztF: TMozgasokTesztF
  Left = 0
  Top = 0
  Caption = 'Mozg'#225'sok teszt'
  ClientHeight = 91
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 60
    Height = 13
    Caption = 'K'#225'rtyasz'#225'm:'
  end
  object rgirany: TRadioGroup
    Left = 8
    Top = 8
    Width = 105
    Height = 65
    Caption = 'Ir'#225'ny'
    Columns = 2
    Items.Strings = (
      'Be'
      'Ki')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 152
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 304
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ment'#233's'
    TabOrder = 2
    OnClick = Button1Click
  end
end
