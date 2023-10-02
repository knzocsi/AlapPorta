object MerlegelesekF: TMerlegelesekF
  Left = 0
  Top = 0
  Caption = 'MerlegelesekF'
  ClientHeight = 548
  ClientWidth = 989
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 989
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 136
    ExplicitTop = 32
    ExplicitWidth = 185
    object btnKilepes: TButton
      Left = 40
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 89
    Width = 989
    Height = 459
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    ExplicitLeft = 304
    ExplicitTop = 248
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
end
