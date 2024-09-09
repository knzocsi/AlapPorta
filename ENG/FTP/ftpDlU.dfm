object ftpF: TftpF
  Left = 0
  Top = 0
  Caption = 'ftpF'
  ClientHeight = 526
  ClientWidth = 1030
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1030
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 10
      Width = 209
      Height = 25
      Caption = #218'j m'#233'r'#233's f'#225'jlok let'#246'lt'#233'se'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 256
      Top = 8
      Width = 249
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object memLog: TMemo
    Left = 0
    Top = 41
    Width = 1030
    Height = 485
    Align = alClient
    Color = -1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object IdFTP1: TIdFTP
    OnStatus = IdFTP1Status
    Host = 'ftp.knzsoft.hu.maxer.hu'
    Passive = True
    ConnectTimeout = 0
    Password = 'oKnNlZ18'
    TransferType = ftBinary
    Username = 'knzsoft_hu_invoice'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 559
    Top = 16
  end
end
