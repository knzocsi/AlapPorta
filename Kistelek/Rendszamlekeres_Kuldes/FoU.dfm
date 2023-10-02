object FoF: TFoF
  Left = 0
  Top = 0
  Caption = 'Rendsz'#225'm k'#252'ld'#233's'
  ClientHeight = 425
  ClientWidth = 663
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 49
    Align = alTop
    TabOrder = 0
    object btnKilepes: TButton
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 663
    Height = 376
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 55
    object Splitter1: TSplitter
      Left = 1
      Top = 219
      Width = 661
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Color = clLime
      ParentColor = False
      ExplicitTop = 248
    end
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 661
      Height = 218
      Align = alClient
      DataSource = AF.RendszamokDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
    object JvDBGrid2: TJvDBGrid
      Left = 1
      Top = 226
      Width = 661
      Height = 120
      Align = alBottom
      DataSource = AF.ParositottDS
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
    object Panel3: TPanel
      Left = 1
      Top = 346
      Width = 661
      Height = 29
      Align = alBottom
      TabOrder = 2
    end
  end
  object FormStorage: TJvFormStorage
    AppStorage = IniFile
    AppStoragePath = 'Form\'
    StoredValues = <
      item
        Name = 'Name'
      end
      item
        Name = 'TestBoolean'
        Value = False
      end>
    Left = 16
    Top = 112
  end
  object IniFile: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'Rendszamkuldes_beallitas.ini'
    DefaultSection = 'General'
    SubStorages = <
      item
      end
      item
      end>
    Left = 16
    Top = 167
  end
  object tmrKepkeres: TTimer
    OnTimer = tmrKepkeresTimer
    Left = 96
    Top = 112
  end
  object tmrParosit_Kuld: TTimer
    OnTimer = tmrParosit_KuldTimer
    Left = 184
    Top = 112
  end
end
