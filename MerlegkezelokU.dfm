object MerlegkezelokF: TMerlegkezelokF
  Left = 0
  Top = 0
  Caption = 'M'#233'rlegkezel'#337'k'
  ClientHeight = 580
  ClientWidth = 421
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
    Width = 421
    Height = 57
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 224
      Top = 16
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 336
      Top = 16
      Width = 75
      Height = 25
      Caption = 'T'#246'rl'#233's'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 421
    Height = 523
    Align = alClient
    DataSource = aF.merlegkezQDs
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nev'
        Title.Caption = 'M'#233'rlegkezel'#337
        Visible = True
      end>
  end
end
