object PortF: TPortF
  Left = 445
  Top = 180
  Caption = 'Port'
  ClientHeight = 500
  ClientWidth = 908
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
    Width = 908
    Height = 68
    Align = alTop
    TabOrder = 0
    object ComLed1: TComLed
      Left = 817
      Top = 0
      Width = 25
      Height = 25
      ComPort = ComPort1
      LedSignal = lsConn
      Kind = lkRedLight
      OnDblClick = ComLed1DblClick
    end
    object ComLed2: TComLed
      Left = 848
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
      Width = 100
      Height = 25
      Caption = '1. port be'#225'll'#237't'#225's'
      TabOrder = 3
      OnClick = Button1Click
    end
    object btnKijelzo_beallitas: TButton
      Left = 382
      Top = 4
      Width = 130
      Height = 25
      Caption = 'M'#225'sodkijelz'#337' be'#225'll'#237't'#225's'
      TabOrder = 4
      OnClick = btnKijelzo_beallitasClick
    end
    object btnHivoszamkijezobeallitas: TButton
      Left = 382
      Top = 37
      Width = 130
      Height = 25
      Caption = 'H'#237'v'#243'sz'#225'mkijelz'#337' be'#225'll'#237't'#225's'
      TabOrder = 5
      Visible = False
      OnClick = btnHivoszamkijezobeallitasClick
    end
    object Button2: TButton
      Left = 253
      Top = 37
      Width = 100
      Height = 25
      Caption = '2. port be'#225'll'#237't'#225's'
      TabOrder = 6
      OnClick = Button2Click
    end
  end
  object memTeszt: TMemo
    Left = 0
    Top = 68
    Width = 668
    Height = 356
    Align = alClient
    Lines.Strings = (
      'Soros teszt'
      '')
    TabOrder = 1
    ExplicitLeft = -5
  end
  object memHexa: TMemo
    Left = 0
    Top = 424
    Width = 908
    Height = 76
    Align = alBottom
    Lines.Strings = (
      '')
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 668
    Top = 68
    Width = 240
    Height = 356
    Align = alRight
    TabOrder = 2
    object memEredmeny: TMemo
      Left = 1
      Top = 137
      Width = 238
      Height = 218
      Align = alClient
      Lines.Strings = (
        '')
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 238
      Height = 136
      Align = alTop
      TabOrder = 1
      object lblTomeg1: TLabel
        Left = 16
        Top = 77
        Width = 49
        Height = 13
        Caption = 'lblTomeg1'
      end
      object lblKapcsolat1: TLabel
        Left = 120
        Top = 77
        Width = 63
        Height = 13
        Caption = 'lblKapcsolat1'
      end
      object lblTomeg2: TLabel
        Left = 16
        Top = 96
        Width = 49
        Height = 13
        Caption = 'lblTomeg2'
      end
      object lblKapcsolat2: TLabel
        Left = 120
        Top = 96
        Width = 63
        Height = 13
        Caption = 'lblKapcsolat2'
      end
      object lblTomeg3: TLabel
        Left = 16
        Top = 117
        Width = 49
        Height = 13
        Caption = 'lblTomeg3'
      end
      object lblKapcsolat3: TLabel
        Left = 120
        Top = 117
        Width = 63
        Height = 13
        Caption = 'lblKapcsolat3'
      end
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
  object comKijelzo: TComPort
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
    Left = 120
    Top = 322
  end
  object IdTCPClient1: TIdTCPClient
    OnDisconnected = IdTCPClient1Disconnected
    OnConnected = IdTCPClient1Connected
    ConnectTimeout = 0
    Host = '127.0.0.1'
    Port = 1001
    ReadTimeout = -1
    Left = 240
    Top = 80
  end
  object IdTCPClient2: TIdTCPClient
    OnDisconnected = IdTCPClient2Disconnected
    OnConnected = IdTCPClient2Connected
    ConnectTimeout = 0
    Host = '127.0.0.1'
    Port = 1001
    ReadTimeout = -1
    Left = 240
    Top = 152
  end
  object Client_Timer1: TTimer
    Interval = 500
    OnTimer = Client_Timer1Timer
    Left = 320
    Top = 80
  end
  object Client_Timer2: TTimer
    Interval = 500
    OnTimer = Client_Timer2Timer
    Left = 320
    Top = 152
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
    OnRxChar = ComPort2RxChar
    Left = 168
    Top = 152
  end
  object comHivoszamkijelzo: TComPort
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
    OnRxChar = comHivoszamkijelzoRxChar
    Left = 184
    Top = 320
  end
  object comPC_Kommunikacio: TComPort
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
    OnRxChar = comPC_KommunikacioRxChar
    Left = 296
    Top = 314
  end
  object IdTCPClient3: TIdTCPClient
    OnDisconnected = IdTCPClient3Disconnected
    OnConnected = IdTCPClient3Connected
    ConnectTimeout = 0
    Host = '127.0.0.1'
    Port = 1001
    ReadTimeout = -1
    Left = 240
    Top = 216
  end
  object Client_Timer3: TTimer
    Interval = 500
    OnTimer = Client_Timer3Timer
    Left = 320
    Top = 216
  end
end
