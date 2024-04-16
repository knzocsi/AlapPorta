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
      
        'SELECT id,soap_merleg_azonosito, if(irany='#39'K'#39','#39'OUT'#39','#39'IN'#39') AS ira' +
        'ny,'
      'IF(irany='#39'K'#39',rendszam2,rendszam) AS rendszam,'
      'IF(irany='#39'K'#39',kepnev2,kepnev1) AS kepnev,tomeg,datum,ido'
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
end
