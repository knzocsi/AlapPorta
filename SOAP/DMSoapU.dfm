object DMSoapF: TDMSoapF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 263
  Width = 358
  object NetHTTPClient1: TNetHTTPClient
    ConnectionTimeout = 300000
    ResponseTimeout = 300000
    Accept = 'application/xml '
    AcceptCharSet = 'UTF-8'
    ContentType = 'application/xml '
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 40
    Top = 24
  end
  object NetHTTPRequest1: TNetHTTPRequest
    ConnectionTimeout = 300000
    ResponseTimeout = 300000
    Accept = 'application/xml '
    AcceptCharSet = 'UTF-8'
    Client = NetHTTPClient1
    Left = 40
    Top = 72
  end
  object XMLD1: TXMLDocument
    Left = 32
    Top = 128
  end
  object ForgQ_tread: TFDQuery
    Connection = Soap_tread_kapcs
    Transaction = Soap_tread_transaction
    SQL.Strings = (
      
        'SELECT id,soap_merleg_azonosito, if(irany='#39'KI'#39','#39'OUT'#39','#39'IN'#39') AS ir' +
        'any,'
      'rendszam, kepnev1 AS kepnev,tomeg,datum,ido'
      'FROM forgalom'
      'WHERE soap_allapot='#39'SEND'#39';')
    Left = 128
    Top = 128
  end
  object InupQ_tread: TFDQuery
    Connection = Soap_tread_kapcs
    Transaction = Soap_tread_transaction
    Left = 208
    Top = 128
  end
  object Soap_tread_kapcs: TFDConnection
    Params.Strings = (
      'DriverID=MySQL')
    LoginPrompt = False
    Transaction = Soap_tread_transaction
    Left = 128
    Top = 24
  end
  object Soap_tread_transaction: TFDTransaction
    Connection = Soap_tread_kapcs
    Left = 128
    Top = 80
  end
  object siLangLinked_DMSoapF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    StoreAsUTF8 = True
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
    Left = 160
    Top = 112
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
