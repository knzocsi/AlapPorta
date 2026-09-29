object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'GLABs teszt kliens'
  ClientHeight = 460
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object LabelWeightPlate: TLabel
    Left = 16
    Top = 19
    Width = 60
    Height = 15
    Caption = 'Rendsz'#225'm:'
  end
  object LabelWeightValue: TLabel
    Left = 310
    Top = 19
    Width = 71
    Height = 15
    Caption = 'T'#246'meg (kg):'
  end
  object LabelCause: TLabel
    Left = 490
    Top = 19
    Width = 18
    Height = 15
    Caption = 'Ok:'
  end
  object LabelWeightStationId: TLabel
    Left = 16
    Top = 51
    Width = 63
    Height = 15
    Caption = #193'llom'#225's ID:'
  end
  object EditWeightPlate: TEdit
    Left = 140
    Top = 16
    Width = 150
    Height = 23
    TabOrder = 0
  end
  object EditWeightValue: TEdit
    Left = 390
    Top = 16
    Width = 80
    Height = 23
    TabOrder = 1
  end
  object ComboBoxCause: TComboBox
    Left = 520
    Top = 16
    Width = 100
    Height = 23
    Style = csDropDownList
    TabOrder = 2
    Items.Strings = (
      'arrival'
      'dispatch'
      'other')
  end
  object EditWeightStationId: TEdit
    Left = 170
    Top = 48
    Width = 150
    Height = 23
    TabOrder = 3
  end
  object ButtonSendWeightByPlate: TButton
    Left = 16
    Top = 88
    Width = 190
    Height = 30
    Caption = 'K'#252'ld'#233's (rendsz'#225'm alapj'#225'n)'
    TabOrder = 4
    OnClick = ButtonSendWeightByPlateClick
  end
  object ButtonSendWeightByStation: TButton
    Left = 216
    Top = 88
    Width = 210
    Height = 30
    Caption = 'K'#252'ld'#233's ('#225'llom'#225'shoz k'#246't'#118'e)'
    TabOrder = 5
    OnClick = ButtonSendWeightByStationClick
  end
  object ButtonSettings: TButton
    Left = 16
    Top = 132
    Width = 130
    Height = 30
    Caption = 'Be'#225'll'#237't'#225'sok...'
    TabOrder = 6
    OnClick = ButtonSettingsClick
  end
  object ButtonRefreshProfile: TButton
    Left = 156
    Top = 132
    Width = 170
    Height = 30
    Caption = 'Profil ID friss'#237't'#233'se'
    TabOrder = 7
    OnClick = ButtonRefreshProfileClick
  end
  object LabelProfileStatus: TLabel
    Left = 340
    Top = 140
    Width = 284
    Height = 15
    Caption = 'Profile ID: -'
  end
  object LabelDiagPath: TLabel
    Left = 16
    Top = 175
    Width = 111
    Height = 15
    Caption = 'Diagnosztika (GET):'
  end
  object EditDiagPath: TEdit
    Left = 170
    Top = 172
    Width = 150
    Height = 23
    TabOrder = 9
    Text = 'partners'
  end
  object ButtonDiagGet: TButton
    Left = 330
    Top = 172
    Width = 140
    Height = 28
    Caption = 'V'#233'gpont teszt'
    TabOrder = 10
    OnClick = ButtonDiagGetClick
  end
  object ButtonSaveLog: TButton
    Left = 16
    Top = 204
    Width = 150
    Height = 28
    Caption = 'Napl'#243' ment'#233'se'
    TabOrder = 11
    OnClick = ButtonSaveLogClick
  end
  object ButtonSaveJson: TButton
    Left = 176
    Top = 204
    Width = 190
    Height = 28
    Caption = 'Utols'#243' JSON ment'#233'se'
    TabOrder = 12
    OnClick = ButtonSaveJsonClick
  end
  object MemoLog: TMemo
    Left = 16
    Top = 240
    Width = 608
    Height = 204
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 8
  end
end
