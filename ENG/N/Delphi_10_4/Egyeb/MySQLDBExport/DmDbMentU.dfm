object DmDbMentF: TDmDbMentF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 473
  Width = 529
  object TablakMetaQ: TFDMetaInfoQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    TableKinds = [tkSynonym, tkTable]
    Left = 40
    Top = 128
    object TablakMetaQTABLE_NAME: TWideStringField
      DisplayWidth = 36
      FieldName = 'TABLE_NAME'
      ReadOnly = True
      Size = 128
    end
    object TablakMetaQTABLE_TYPE: TIntegerField
      FieldName = 'TABLE_TYPE'
      ReadOnly = True
    end
  end
  object MySQLKapcsDbMentTread: TFDConnection
    ConnectionName = 'Kapcs'
    Params.Strings = (
      'DriverID=MySQL'
      'LockingMode=Normal'
      'DateTimeFormat=String'
      'StringFormat=Unicode'
      'CharacterSet=Utf8mb4'
      'Database=clean_way_porta'
      'Port=3307'
      'Server=192.168.50.81'
      'Password=MaTt2019'
      'User_Name=knz'
      'TinyIntFormat=Integer')
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 200
    FormatOptions.AssignedValues = [fvFmtDisplayDate]
    ResourceOptions.AssignedValues = [rvParamCreate, rvMacroCreate, rvMacroExpand, rvParamExpand, rvAutoConnect, rvAutoReconnect, rvSilentMode]
    ResourceOptions.MacroCreate = False
    ResourceOptions.MacroExpand = False
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object TablakMetaQDs: TDataSource
    DataSet = FunkciokQ
    Left = 40
    Top = 192
  end
  object TablaMezokMetaQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    SQL.Strings = (
      
        'SELECT COLUMN_NAME,IFNULL(COLUMN_DEFAULT, '#39'NULL'#39')  AS COLUMN_DEF' +
        'AULT,'
      'IS_NULLABLE,COLUMN_TYPE,COLUMN_KEY,EXTRA,DATA_TYPE'
      ' FROM information_schema.columns '
      
        'WHERE information_schema.columns.TABLE_SCHEMA=:DB AND informatio' +
        'n_schema.columns.TABLE_NAME=:TB')
    Left = 136
    Top = 120
    ParamData = <
      item
        Name = 'DB'
        ParamType = ptInput
      end
      item
        Name = 'TB'
        ParamType = ptInput
      end>
  end
  object AdatokQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    Left = 128
    Top = 184
  end
  object KerQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    Left = 248
    Top = 32
  end
  object memstr: TJvMemoryData
    FieldDefs = <>
    Left = 344
    Top = 40
    object memstrkell: TBooleanField
      FieldName = 'kell'
    end
  end
  object TriggerekQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    SQL.Strings = (
      
        'SELECT  t.TRIGGER_NAME, t.EVENT_MANIPULATION,t.EVENT_OBJECT_TABL' +
        'E,t.ACTION_STATEMENT,t.ACTION_TIMING, t.SQL_MODE '
      'FROM information_schema.TRIGGERS t'
      'WHERE t.TRIGGER_SCHEMA=:DB')
    Left = 240
    Top = 120
    ParamData = <
      item
        Name = 'DB'
        ParamType = ptInput
      end>
  end
  object NezetekQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    SQL.Strings = (
      'SELECT  t.TABLE_NAME, t.VIEW_DEFINITION'
      'FROM information_schema.VIEWS t'
      'WHERE t.TABLE_SCHEMA=:DB')
    Left = 240
    Top = 184
    ParamData = <
      item
        Name = 'DB'
        ParamType = ptInput
      end>
  end
  object DbMentTransaction: TFDTransaction
    Connection = MySQLKapcsDbMentTread
    Left = 160
    Top = 32
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
    Left = 441
    Top = 40
  end
  object EljarasokQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    SQL.Strings = (
      'SELECT ROUTINE_NAME, ROUTINE_DEFINITION'
      'FROM information_schema.ROUTINES'
      'WHERE ROUTINE_SCHEMA=:db AND ROUTINE_TYPE='#39'PROCEDURE'#39)
    Left = 320
    Top = 120
    ParamData = <
      item
        Name = 'DB'
        DataType = ftString
        ParamType = ptInput
        Value = 'clean_way_porta'
      end>
  end
  object FunkciokQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    SQL.Strings = (
      'SELECT ROUTINE_NAME, ROUTINE_DEFINITION, IS_DETERMINISTIC'
      'FROM information_schema.ROUTINES'
      'WHERE ROUTINE_SCHEMA=:db AND ROUTINE_TYPE='#39'FUNCTION'#39)
    Left = 312
    Top = 184
    ParamData = <
      item
        Name = 'DB'
        DataType = ftString
        ParamType = ptInput
        Value = 'clean_way_porta'
      end>
  end
  object ParamokQ: TFDQuery
    Connection = MySQLKapcsDbMentTread
    Transaction = DbMentTransaction
    SQL.Strings = (
      'SELECT PARAMETER_MODE,PARAMETER_NAME,DTD_IDENTIFIER,'
      'DATA_TYPE, ORDINAL_POSITION'
      'FROM information_schema.PARAMETERS'
      'WHERE SPECIFIC_SCHEMA=:db AND SPECIFIC_NAME=:nev'
      'AND ROUTINE_TYPE=:tipus')
    Left = 384
    Top = 120
    ParamData = <
      item
        Name = 'DB'
        DataType = ftString
        ParamType = ptInput
        Value = 'clean_way_porta'
      end
      item
        Name = 'NEV'
        DataType = ftString
        ParamType = ptInput
        Value = 'partner_keszlete'
      end
      item
        Name = 'TIPUS'
        DataType = ftString
        ParamType = ptInput
        Value = 'FUNCTION'
      end>
  end
end
