object CfgCsoportF: TCfgCsoportF
  Left = 0
  Top = 0
  Caption = 'Be'#225'll'#237't'#225'si csoportok'
  ClientHeight = 420
  ClientWidth = 480
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
    Width = 480
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblinfo: TLabel
      AlignWithMargins = True
      Left = 8
      Top = 8
      Width = 464
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
  object clbcsoportok: TCheckListBox
    Left = 0
    Top = 57
    Width = 480
    Height = 322
    Align = alClient
    ItemHeight = 17
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 379
    Width = 480
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnok: TButton
      Left = 296
      Top = 8
      Width = 81
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object btnmegse: TButton
      Left = 388
      Top = 8
      Width = 81
      Height = 25
      Cancel = True
      Caption = 'M'#233'gse'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
