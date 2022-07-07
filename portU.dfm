object PortF: TPortF
  Left = 445
  Top = 180
  Caption = 'Port'
  ClientHeight = 408
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFelso: TPanel
    Left = 0
    Top = 0
    Width = 568
    Height = 41
    Align = alTop
    TabOrder = 0
    object ComLed1: TComLed
      Left = 481
      Top = 0
      Width = 25
      Height = 25
      ComPort = ComPort1
      LedSignal = lsConn
      Kind = lkRedLight
      OnDblClick = ComLed1DblClick
    end
    object ComLed2: TComLed
      Left = 512
      Top = 0
      Width = 25
      Height = 25
      ComPort = ComPort1
      LedSignal = lsRx
      Kind = lkRedLight
    end
    object btnKilepes: TButton
      Left = 0
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object btnMemotorol: TButton
      Left = 160
      Top = 4
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 1
      OnClick = btnMemotorolClick
    end
    object chkKiiras: TCheckBox
      Left = 104
      Top = 8
      Width = 57
      Height = 17
      Caption = 'Ki'#237'r'#225's'
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = chkKiirasClick
    end
    object Button1: TButton
      Left = 253
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Be'#225'll'#237't'#225's'
      TabOrder = 3
      OnClick = Button1Click
    end
    object btnKijelzo_beallitas: TButton
      Left = 367
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Kijelz'#337' be'#225'll'#237't'#225's'
      TabOrder = 4
      OnClick = btnKijelzo_beallitasClick
    end
  end
  object memTeszt: TMemo
    Left = 0
    Top = 41
    Width = 328
    Height = 291
    Align = alClient
    Lines.Strings = (
      'Soros teszt'
      '')
    TabOrder = 1
  end
  object memHexa: TMemo
    Left = 0
    Top = 332
    Width = 568
    Height = 76
    Align = alBottom
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 328
    Top = 41
    Width = 240
    Height = 291
    Align = alRight
    TabOrder = 2
    object memEredmeny: TMemo
      Left = 1
      Top = 81
      Width = 238
      Height = 209
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 238
      Height = 80
      Align = alTop
      TabOrder = 1
      object chkErtek_vj: TCheckBox
        Left = 16
        Top = 16
        Width = 137
        Height = 17
        Caption = #201'rt'#233'k v'#233'ge jel ut'#225'n'
        TabOrder = 0
      end
      object chkErtek_feld: TCheckBox
        Left = 16
        Top = 32
        Width = 137
        Height = 17
        Caption = #201'rt'#233'k feldolgozva'
        TabOrder = 1
      end
      object chkMertertek: TCheckBox
        Left = 16
        Top = 48
        Width = 97
        Height = 17
        Caption = 'M'#233'rt '#233'rt'#233'k'
        TabOrder = 2
      end
    end
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    DiscardNull = True
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrEnable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    SyncMethod = smNone
    OnRxChar = ComPort1RxChar
    Left = 168
    Top = 80
  end
  object ComPort2: TComPort
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
    Left = 168
    Top = 152
  end
end
