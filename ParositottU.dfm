object ParositottF: TParositottF
  Left = 0
  Top = 0
  Caption = 'P'#225'ros'#237'tott'
  ClientHeight = 374
  ClientWidth = 800
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object Label2: TLabel
      Left = 312
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Befejez'#337' d'#225'tum:'
    end
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object piKezdoDatum: TDateTimePicker
      Left = 152
      Top = 22
      Width = 113
      Height = 21
      Date = 43587.773554583330000000
      Time = 43587.773554583330000000
      TabOrder = 1
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 312
      Top = 22
      Width = 105
      Height = 21
      Date = 43587.774182199070000000
      Time = 43587.774182199070000000
      TabOrder = 2
      OnChange = piKezdoDatumChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 329
    Height = 325
    Align = alLeft
    DataSource = aF.ParositottDS
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnl1: TPanel
    Left = 329
    Top = 49
    Width = 471
    Height = 325
    Align = alClient
    TabOrder = 2
    object img1: TImage
      Left = 1
      Top = 1
      Width = 469
      Height = 282
      Align = alClient
      Stretch = True
      ExplicitLeft = 0
      ExplicitWidth = 261
    end
    object pnl2: TPanel
      Left = 1
      Top = 283
      Width = 469
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        469
        41)
      object dbnvgr1: TDBNavigator
        Left = 77
        Top = 6
        Width = 308
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
      end
    end
  end
end
