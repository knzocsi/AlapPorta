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
  object siLangLinked_ftpF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    NumOfLanguages = 3
    LangDispatcher = FoF.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Hungarian'
      'English'
      'Romanian')
    Language = 'Hungarian'
    CommonContainer = FoF.siLang_FoF
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 512
    Top = 272
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
