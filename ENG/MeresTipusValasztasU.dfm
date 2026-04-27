object MeresTipusValasztasF: TMeresTipusValasztasF
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233's m'#243'dja'
  ClientHeight = 156
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 0
    Width = 319
    Height = 156
    Align = alClient
    Caption = 'Kiv'#225'laszt'#225's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'Norm'#225'l m'#233'r'#233's'
      'R'#246'gz'#237'tett t'#225'r'#225's m'#233'r'#233's')
    ParentFont = False
    TabOrder = 0
    OnClick = RadioGroup1Click
    ExplicitLeft = 24
    ExplicitTop = 8
    ExplicitWidth = 265
    ExplicitHeight = 129
  end
end
