object CfgNemHasznaltF: TCfgNemHasznaltF
  Left = 0
  Top = 0
  Caption = 'Nem haszn'#225'lt be'#225'll'#237't'#225'sok'
  ClientHeight = 480
  ClientWidth = 760
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblinfo: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 744
      Height = 41
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      Align = alClient
      AutoSize = False
      WordWrap = True
    end
  end
  object clbsorok: TCheckListBox
    Left = 0
    Top = 57
    Width = 760
    Height = 382
    Align = alClient
    ItemHeight = 17
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 760
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnkilepes: TButton
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      Cancel = True
      Caption = 'Kil'#233'p'#233's'
      ModalResult = 2
      TabOrder = 0
    end
    object btnmind: TButton
      Left = 528
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Mind kijel'#246'l'
      TabOrder = 1
      OnClick = btnmindClick
    end
    object btntorles: TButton
      Left = 644
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Kijel'#246'ltek t'#246'rl'#233'se'
      TabOrder = 2
      OnClick = btntorlesClick
    end
  end
end
