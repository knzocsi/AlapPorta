object FormSettings: TFormSettings
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'GLABs be'#225'll'#237't'#225'sok'
  ClientHeight = 520
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  TextHeight = 15
  object LabelHost: TLabel
    Left = 16
    Top = 19
    Width = 30
    Height = 15
    Caption = 'Host:'
  end
  object LabelClientId: TLabel
    Left = 16
    Top = 51
    Width = 53
    Height = 15
    Caption = 'Client ID:'
  end
  object LabelClientSecret: TLabel
    Left = 16
    Top = 83
    Width = 74
    Height = 15
    Caption = 'Client Secret:'
  end
  object LabelScope: TLabel
    Left = 16
    Top = 115
    Width = 38
    Height = 15
    Caption = 'Scope:'
  end
  object LabelProfileId: TLabel
    Left = 16
    Top = 147
    Width = 58
    Height = 15
    Caption = 'Profile ID:'
  end
  object LabelStationId: TLabel
    Left = 16
    Top = 179
    Width = 136
    Height = 15
    Caption = 'Alap'#233'rtelmezett '#193'llom'#225's ID:'
  end
  object EditHost: TEdit
    Left = 160
    Top = 13
    Width = 380
    Height = 23
    TabOrder = 0
  end
  object EditClientId: TEdit
    Left = 160
    Top = 45
    Width = 380
    Height = 23
    TabOrder = 1
  end
  object EditClientSecret: TEdit
    Left = 160
    Top = 77
    Width = 380
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
  end
  object EditScope: TEdit
    Left = 160
    Top = 109
    Width = 380
    Height = 23
    TabOrder = 3
  end
  object EditProfileId: TEdit
    Left = 160
    Top = 141
    Width = 380
    Height = 23
    TabOrder = 4
  end
  object EditStationId: TEdit
    Left = 160
    Top = 173
    Width = 380
    Height = 23
    TabOrder = 5
  end
  object ButtonTestConnection: TButton
    Left = 16
    Top = 212
    Width = 220
    Height = 30
    Caption = 'Kapcsolat tesztel'#233'se'
    TabOrder = 6
    OnClick = ButtonTestConnectionClick
  end
  object ListBoxProfiles: TListBox
    Left = 16
    Top = 252
    Width = 524
    Height = 110
    ItemHeight = 15
    TabOrder = 7
  end
  object ButtonUseAsProfileId: TButton
    Left = 16
    Top = 370
    Width = 160
    Height = 28
    Caption = '-> Profile ID'
    TabOrder = 8
    OnClick = ButtonUseAsProfileIdClick
  end
  object MemoStatus: TMemo
    Left = 16
    Top = 406
    Width = 524
    Height = 62
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object ButtonSave: TButton
    Left = 380
    Top = 476
    Width = 78
    Height = 28
    Caption = 'Ment'#233's'
    Default = True
    TabOrder = 10
    OnClick = ButtonSaveClick
  end
  object ButtonCancel: TButton
    Left = 462
    Top = 476
    Width = 78
    Height = 28
    Cancel = True
    Caption = 'M'#233'gse'
    ModalResult = 2
    TabOrder = 11
  end
end
