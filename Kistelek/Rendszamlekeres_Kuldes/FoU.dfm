object FoF: TFoF
  Left = 0
  Top = 0
  Caption = 'Rendsz'#225'm k'#252'ld'#233's'
  ClientHeight = 571
  ClientWidth = 937
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
    Width = 937
    Height = 81
    Align = alTop
    TabOrder = 0
    DesignSize = (
      937
      81)
    object lblRendszamok: TLabel
      Left = 136
      Top = 24
      Width = 306
      Height = 48
      Caption = 'lblRendszamok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnDblClick = lblRendszamokDblClick
    end
    object Label1: TLabel
      Left = 136
      Top = 16
      Width = 94
      Height = 13
      Caption = 'Utols'#243' rendsz'#225'mok:'
      OnDblClick = lblRendszamokDblClick
    end
    object btnKilepes: TButton
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object btnCombeallitas: TButton
      Left = 824
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Port be'#225'l'#237't'#225's'
      TabOrder = 1
      OnClick = btnCombeallitasClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 937
    Height = 490
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 104
      Top = 96
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Splitter1: TSplitter
      Left = 1
      Top = 225
      Width = 935
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Color = clLime
      ParentColor = False
      ExplicitLeft = 2
      ExplicitTop = 109
    end
    object JvDBGrid1: TJvDBGrid
      Left = 1
      Top = 1
      Width = 935
      Height = 108
      Align = alTop
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
      Top = 109
      Width = 935
      Height = 116
      Align = alClient
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
    object pnlAlso: TPanel
      Left = 1
      Top = 232
      Width = 935
      Height = 257
      Align = alBottom
      TabOrder = 2
      OnResize = pnlAlsoResize
      object pnlBalkep: TPanel
        Left = 425
        Top = 1
        Width = 424
        Height = 255
        Align = alLeft
        TabOrder = 0
        object Image2: TImage
          Left = 1
          Top = 1
          Width = 422
          Height = 253
          Align = alClient
          Stretch = True
          ExplicitLeft = 2
          ExplicitTop = 2
        end
      end
      object pnlJobbKep: TPanel
        Left = 1
        Top = 1
        Width = 424
        Height = 255
        Align = alLeft
        TabOrder = 1
        object Image1: TImage
          Left = 1
          Top = 1
          Width = 422
          Height = 253
          Align = alClient
          Stretch = True
          ExplicitLeft = -3
          ExplicitTop = -2
        end
      end
    end
  end
  object FormStorage: TJvFormStorage
    AppStorage = IniFile
    AppStoragePath = 'Form\'
    StoredProps.Strings = (
      'pnlAlso.Height')
    StoredValues = <
      item
        Name = 'Name'
      end
      item
        Name = 'TestBoolean'
        Value = False
      end>
    Left = 96
    Top = 216
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
    Left = 32
    Top = 215
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
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 688
    Top = 16
  end
end
