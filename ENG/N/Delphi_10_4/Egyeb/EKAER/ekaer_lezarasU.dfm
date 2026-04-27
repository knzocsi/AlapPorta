object ekaer_lezarasF: Tekaer_lezarasF
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Fuvar befejez'#233'se'
  ClientHeight = 176
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblekaer: TLabel
    Left = 18
    Top = 17
    Width = 84
    Height = 25
    Caption = 'lblekaer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label47: TLabel
    Left = 21
    Top = 72
    Width = 79
    Height = 13
    Caption = 'Lerakod'#225's ideje:'
  end
  object le_datum: TDateTimePicker
    Left = 21
    Top = 86
    Width = 81
    Height = 21
    Date = 44460
    Time = 0.422771053243196000
    TabOrder = 0
  end
  object le_ido: TDateTimePicker
    Left = 108
    Top = 86
    Width = 81
    Height = 21
    Date = 44460
    Time = 0.422771053243196000
    Kind = dtkTime
    TabOrder = 1
  end
  object Button1: TButton
    Left = 72
    Top = 143
    Width = 131
    Height = 25
    Caption = 'Fuvar befejez'#233'se'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 143
    Width = 75
    Height = 25
    Caption = 'M'#233'gsem'
    ModalResult = 2
    TabOrder = 3
  end
  object chkcsakdatum: TCheckBox
    Left = 21
    Top = 113
    Width = 97
    Height = 17
    Caption = 'Csak d'#225'tum'
    TabOrder = 4
  end
end
