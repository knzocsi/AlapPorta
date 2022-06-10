object NagykepF: TNagykepF
  Left = 0
  Top = 0
  Caption = 'K'#233'p nagy'#237't'#225's'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object imgnagy: TImage
    Left = 0
    Top = 0
    Width = 635
    Height = 248
    Align = alClient
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = -6
  end
  object Button1: TButton
    Left = 0
    Top = 248
    Width = 635
    Height = 52
    Align = alBottom
    Caption = 'Kil'#233'p'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
end
