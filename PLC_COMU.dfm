object PLC_COMF: TPLC_COMF
  Left = 0
  Top = 0
  Caption = 'PLC_COM'
  ClientHeight = 467
  ClientWidth = 951
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
    Width = 951
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 13
      Width = 40
      Height = 13
      Caption = 'Funkci'#243':'
    end
    object Label2: TLabel
      Left = 528
      Top = 12
      Width = 48
      Height = 13
      Caption = 'Kezd'#337'c'#237'm:'
    end
    object Label3: TLabel
      Left = 616
      Top = 16
      Width = 60
      Height = 13
      Caption = 'Bitek sz'#225'ma:'
      OnClick = Label3Click
    end
    object btnKilepes: TButton
      Left = 32
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object btnCOM_beallit: TButton
      Left = 822
      Top = 29
      Width = 75
      Height = 25
      Caption = 'COM be'#225'll'#237't'#225's'
      TabOrder = 1
      OnClick = btnCOM_beallitClick
    end
    object btnStartStop: TButton
      Left = 160
      Top = 29
      Width = 75
      Height = 25
      Caption = 'Port nyit'#225's'
      TabOrder = 2
      OnClick = btnStartStopClick
    end
    object cbModbusFunctionCode: TComboBox
      Left = 256
      Top = 32
      Width = 266
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        '01 : Read multiple bit'
        '02 : Read multiple bit'
        '03 : Read multiple 16/32 bit register'
        '04 : Read multiple 16/32 bit register'
        '05 : Write single bit'
        '06 : Write single 16 bit register'
        '07 : Read exception status'
        '08 : Loopback test'
        '15 : Write multiple bits'
        '16 : Write multiple 16/32 bit register'
        '65 : Read ascii buffer'
        '66 : Write ascii buffer ')
    end
    object btnKuldes: TButton
      Left = 704
      Top = 29
      Width = 75
      Height = 25
      Caption = 'K'#252'ld'#233's'
      Enabled = False
      TabOrder = 4
      OnClick = btnKuldesClick
    end
    object speKezdoCim: TSpinEdit
      Left = 528
      Top = 31
      Width = 73
      Height = 22
      MaxValue = 256
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object speBitSzam: TSpinEdit
      Left = 616
      Top = 31
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 1
    end
  end
  object memoLogModbus: TMemo
    Left = 0
    Top = 81
    Width = 951
    Height = 345
    Align = alClient
    Lines.Strings = (
      'memoLogModbus')
    TabOrder = 1
  end
  object pnlAlso: TPanel
    Left = 0
    Top = 426
    Width = 951
    Height = 41
    Align = alBottom
    TabOrder = 2
    object lblKommunikacio: TLabel
      Left = 32
      Top = 16
      Width = 76
      Height = 13
      Caption = 'lblKommunikacio'
    end
  end
  object ComPort_RTU: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    Buffer.InputSize = 8192
    Buffer.OutputSize = 8192
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnAfterOpen = ComPort_RTUAfterOpen
    OnAfterClose = ComPort_RTUAfterClose
    OnRxChar = ComPort_RTURxChar
    Left = 229
    Top = 112
  end
  object tmrModbusTimeout: TTimer
    Enabled = False
    OnTimer = tmrModbusTimeoutTimer
    Left = 349
    Top = 104
  end
end
