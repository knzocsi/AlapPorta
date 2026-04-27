object DmEkaer: TDmEkaer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 463
  Width = 630
  object NetHTTPClient1: TNetHTTPClient
    Accept = 'application/xml '
    AcceptCharSet = 'UTF-8'
    ContentType = 'application/xml '
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 510
    Top = 24
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Accept = 'application/xml '
    AcceptCharSet = 'UTF-8'
    Client = NetHTTPClient1
    Left = 510
    Top = 96
  end
  object memtet: TJvMemoryData
    FieldDefs = <>
    Left = 504
    Top = 168
    object memtetdeliveryPlan_id: TStringField
      FieldName = 'deliveryPlan_id'
      Size = 30
    end
    object memtetid: TStringField
      FieldName = 'id'
      Size = 30
    end
    object memtetitemExternalId: TStringField
      FieldName = 'itemExternalId'
      Size = 50
    end
    object memtetitemOperation: TStringField
      FieldName = 'itemOperation'
      Size = 7
    end
    object memtettradeReason: TStringField
      FieldName = 'tradeReason'
      Size = 1
    end
    object memtetTradeReasonText: TStringField
      FieldName = 'TradeReasonText'
      Size = 30
    end
    object memtetproductVtsz: TStringField
      FieldName = 'productVtsz'
      Size = 8
    end
    object memtetproductName: TStringField
      FieldName = 'productName'
      Size = 200
    end
    object memtetadrNumber: TStringField
      FieldName = 'adrNumber'
      Size = 200
    end
    object memtettransportLicence: TStringField
      FieldName = 'transportLicence'
      Size = 30
    end
    object memtetnetto_weight: TFloatField
      FieldName = 'netto_weight'
    end
    object memtetweight: TFloatField
      FieldName = 'weight'
    end
    object memtetvalue: TIntegerField
      FieldName = 'value'
    end
    object memtetvalueModReasonText: TStringField
      FieldName = 'valueModReasontext'
      Size = 200
    end
    object memtetweightModReasonText: TStringField
      FieldName = 'weightModReasonText'
      Size = 200
    end
    object memtetfactoryItemNumber: TStringField
      FieldName = 'factoryItemNumber'
      Size = 200
    end
    object memtetimporterItemNumber: TStringField
      FieldName = 'importerItemNumber'
      Size = 200
    end
    object memtetexpirationDate: TStringField
      FieldName = 'expirationDate'
      Size = 15
    end
    object memtetbatchNumber: TStringField
      FieldName = 'batchNumber'
      Size = 30
    end
    object memtetstatusModReasonText: TStringField
      FieldName = 'statusModReasonText'
      Size = 200
    end
    object memtetproductModReasonText: TStringField
      FieldName = 'productModReasonText'
      Size = 200
    end
    object memtetvatRateAssuranceExemption: TBooleanField
      FieldName = 'vatRateAssuranceExemption'
    end
    object memtetinsUser: TStringField
      FieldName = 'insUser'
      Size = 30
    end
    object memtetinsDate: TStringField
      FieldName = 'insDate'
      Size = 30
    end
    object memtetmodUser: TStringField
      FieldName = 'modUser'
      Size = 30
    end
    object memtetmodDate: TStringField
      FieldName = 'modDate'
      Size = 30
    end
  end
  object memtetDs: TDataSource
    DataSet = memtet
    Left = 504
    Top = 224
  end
  object EKAERKapcs: TFDConnection
    ConnectionName = 'Kapcs'
    Params.Strings = (
      'DriverID=MySQL'
      'LockingMode=Normal'
      'DateTimeFormat=String'
      'StringFormat=Unicode'
      'CharacterSet=Utf8mb4'
      'Database=szamlazo'
      'Port=3307'
      'Server=192.168.56.1')
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 200
    ResourceOptions.AssignedValues = [rvAutoConnect, rvAutoReconnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    OnLost = EKAERKapcsLost
    Left = 40
    Top = 32
  end
  object DB_Create_mySQL: TFDScript
    SQLScripts = <
      item
        Name = 'Dbc'
      end>
    Connection = EKAERKapcs
    ScriptOptions.CommandSeparator = ';'
    ScriptOptions.FileEncoding = ecUTF8
    ScriptOptions.DriverID = 'MySQL'
    ScriptOptions.CharacterSet = 'Utf8mb4'
    ScriptOptions.SQLDialect = 3
    ScriptDialog = ScriptDialogMySQL
    Params = <
      item
        Name = 'adatbazis'
        DataType = ftString
        FDDataType = dtAnsiString
        ParamType = ptInput
        StreamMode = smOpenReadWrite
      end>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 46
    Top = 104
  end
  object ScriptDialogMySQL: TFDGUIxScriptDialog
    Provider = 'Forms'
    Caption = 'MySQL adatb'#225'zis l'#233'trehoz'#225'sa'
    Options = [ssCallstack, ssConsole]
    Left = 46
    Top = 160
  end
  object frxBejel_lap: TfrxReport
    Tag = 11
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.492514699100000000
    ReportOptions.LastChange = 44942.584858865700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 248
    Datasets = <
      item
        DataSet = frxDBDBejel
        DataSetName = 'frxDBDBejel'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210
      PaperHeight = 297
      PaperSize = 9
      LeftMargin = 10
      RightMargin = 10
      TopMargin = 10
      BottomMargin = 10
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 540.472790000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BEJELENT'#201'SI ADATLAP')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 699.213050000000000000
          Height = 52.913420000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'EK'#193'ER-sz'#225'm:')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 120.944960000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'EK'#193'ER-sz'#225'm '#233'rv'#233'nyess'#233'ge:')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 151.181200000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BEJELENT'#201'S ALAPADATOK:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 170.078850000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 173.858380000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #193'ruforgalom ir'#225'nya')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 192.756030000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'St'#225'tusz')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 210.433210000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'G'#233'pj'#225'rm'#369)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 227.771800000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vontatm'#225'ny')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 245.669450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'll'#237'tm'#225'nyoz'#243)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 265.346630000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Utols'#243' m'#243'dos'#237't'#243)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118110240000000000
          Top = 285.244280000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Fuvaroz'#225's megkezd'#233's'#233'nek d'#225'tuma/id'#337'pontja')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 314.480520000000000000
          Width = 136.063080000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Intermod'#225'lis (kombin'#225'lt) fuvaroz'#225's')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 173.858380000000000000
          Width = 143.622140000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bejelent'#233'sben r'#246'gz'#237'tett '#225'rut'#233'telek '#246'sszs'#250'lya')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 207.874150000000000000
          Width = 143.622140000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bejelent'#233'sben r'#246'gz'#237'tett '#225'rut'#233'telek '#246'ssz'#233'rt'#233'ke')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 245.669450000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bejelent'#233's biztos'#237't'#233'ki '#233'rt'#233'ke')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 265.322834645669000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saj'#225't megrendel'#233'si sz'#225'm')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 287.244280000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A bejelent'#233'st l'#233'trehoz'#243' felhaszn'#225'l'#243)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 359.055350000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FELAD'#211)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 359.055350000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#205'MZETT')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 374.953000000000000000
          Width = 332.598640000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 374.953000000000000000
          Width = 313.700990000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 385.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#233'v')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 415.748300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ad'#243'sz'#225'm')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 438.425480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#237'm')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 385.512060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#233'v')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 415.748300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ad'#243'sz'#225'm')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 438.425480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#237'm')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 476.220780000000000000
          Width = 192.756030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'FEL- '#201'S KIRAKOD'#193'SI C'#205'MEK')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 16.338590000000000000
          Top = 491.338900000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 498.897960000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Felrakod'#225'si c'#237'm')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 498.897960000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kirakod'#225'si c'#237'm')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 498.897960000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#233'telek sz'#225'ma')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 516.016080000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Frame.Color = clSilver
          Frame.Typ = []
          Diagonal = True
        end
        object frxaruforgalom_iranya: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 173.858267720000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxaruforgalom_iranya')
          ParentFont = False
        end
        object frxstatusz: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 192.756030000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxstatusz')
          ParentFont = False
        end
        object frxgepjarmu_rendszama: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 210.653680000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxgepjarmu_rendszama')
          ParentFont = False
        end
        object frxvontatmany_rendszama: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 227.905511810000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxvontatmany_rendszama')
          ParentFont = False
        end
        object frxszallito: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 245.669450000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszallito')
          ParentFont = False
        end
        object frxutolso_modosito: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 264.567100000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxutolso_modosito')
          ParentFont = False
        end
        object frxFelrakodasi_datum: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 285.354330710000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxFelrakodasi_datum')
          ParentFont = False
        end
        object frxIntermodalis: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 314.456692910000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxIntermodalis')
          ParentFont = False
        end
        object frxOsszsuly: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 173.858380000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxOsszsuly')
          ParentFont = False
        end
        object frxOsszertek: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 207.874150000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxOsszertek')
          ParentFont = False
        end
        object frxBiztositasiertek: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 245.669450000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxBiztositasiertek')
          ParentFont = False
        end
        object frxMegrendelesiszam: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 264.567100000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxMegrendelesiszam')
          ParentFont = False
        end
        object frxLetrehozo: TfrxMemoView
          AllowVectorExport = True
          Left = 568.709030000000000000
          Top = 287.244280000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxLetrehozo')
          ParentFont = False
        end
        object frxfeladoneve: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 385.512060000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxfeladoneve')
          ParentFont = False
        end
        object frxfeladoadoszama: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 415.748300000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxfeladoadoszama')
          ParentFont = False
        end
        object frxfeladocime: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 438.425480000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxfeladocime')
          ParentFont = False
        end
        object frxcimzettneve: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 385.512060000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxcimzettneve')
          ParentFont = False
        end
        object frxcimzettadoszama: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 415.748300000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxcimzettadoszama')
          ParentFont = False
        end
        object frxcimzettcime: TfrxMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 438.425480000000000000
          Width = 188.976500000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxcimzettcime')
          ParentFont = False
        end
        object frxfelrakodasicim: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 515.016080000000000000
          Width = 279.685220000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxfelrakodasicim')
          ParentFont = False
        end
        object frxlerakodasicim: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Top = 515.795610000000000000
          Width = 279.685220000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxlerakodasicim')
          ParentFont = False
        end
        object frxekaerszam: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 98.267780000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxekaerszam')
        end
        object frxekaerszamervenyes: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 120.944960000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxekaerszamervenyes')
        end
        object frxtetszam: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 517.795610000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxtetszam')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 582.047620000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.889763780000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#225's oka')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 1.889763780000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'VTSZ-sz'#225'm')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 158.519790000000000000
          Top = 1.889763780000000000
          Width = 143.622140000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #193'ru kereskedelmi megnevez'#233'se')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 1.889763780000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cikksz'#225'm')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 1.889763780000000000
          Width = 79.370130000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Brutt'#243' t'#246'meg (kg)')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 1.889763780000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #201'rt'#233'k (Ft)')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 1.889763779527560000
          Width = 113.385900000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A term'#233'k '#225'fam'#233'rt'#233'ke 5%?')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 1.889763780000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vesz'#233'lyes '#225'ru: UN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 13.228346456692900000
        Top = 665.197280000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDBejel
        DataSetName = 'frxDBDBejel'
        RowCount = 0
        Stretched = True
        object frxDBDBejelTradeReasonText: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 2.559060000000000000
          Width = 86.929190000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDBejel
          DataSetName = 'frxDBDBejel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[IIF(<frxDBDBejel."TradeReason">='#39'S'#39', '#39'Term'#233'k'#233'rt'#233'kes'#237't'#233's'#39','
            'IIF(<frxDBDBejel."TradeReason">='#39'W'#39', '#39'B'#233'rmunka'#39','
            'IIF(<frxDBDBejel."TradeReason">='#39'O'#39', '#39'Egy'#233'b'#39','#39#39')))]')
          ParentFont = False
        end
        object frxDBDBejelproductVtsz: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 56.692950000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DataField = 'productVtsz'
          DataSet = frxDBDBejel
          DataSetName = 'frxDBDBejel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBejel."productVtsz"]')
          ParentFont = False
        end
        object frxDBDBejelproductName: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 143.622140000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DataField = 'productName'
          DataSet = frxDBDBejel
          DataSetName = 'frxDBDBejel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBejel."productName"]')
          ParentFont = False
        end
        object frxDBDBejelweight: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 368.834880000000000000
          Width = 79.370130000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          DataField = 'weight'
          DataSet = frxDBDBejel
          DataSetName = 'frxDBDBejel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBejel."weight"]')
          ParentFont = False
        end
        object frxDBDBejelvalue: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 79.370130000000000000
          Height = 11.338582677165400000
          StretchMode = smMaxHeight
          DataField = 'value'
          DataSet = frxDBDBejel
          DataSetName = 'frxDBDBejel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBejel."value"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Width = 94.488250000000000000
          Height = 11.338582680000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[IIF(<frxDBDbejel."vatRateAssuranceExemption">=0,'#39'Nem'#39','#39'Igen'#39')]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDBejel: TfrxDBDataset
    UserName = 'frxDBDBejel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'deliveryPlan_id=deliveryPlan_id'
      'id=id'
      'itemExternalId=itemExternalId'
      'itemOperation=itemOperation'
      'tradeReason=tradeReason'
      'TradeReasonText=TradeReasonText'
      'productVtsz=productVtsz'
      'productName=productName'
      'adrNumber=adrNumber'
      'transportLicence=transportLicence'
      'netto_weight=netto_weight'
      'weight=weight'
      'value=value'
      'valueModReasontext=valueModReasontext'
      'weightModReasonText=weightModReasonText'
      'factoryItemNumber=factoryItemNumber'
      'importerItemNumber=importerItemNumber'
      'expirationDate=expirationDate'
      'batchNumber=batchNumber'
      'statusModReasonText=statusModReasonText'
      'productModReasonText=productModReasonText'
      'vatRateAssuranceExemption=vatRateAssuranceExemption'
      'insUser=insUser'
      'insDate=insDate'
      'modUser=modUser'
      'modDate=modDate')
    DataSource = memtetDs
    BCDToCurrency = False
    Left = 40
    Top = 304
  end
  object memhibak: TJvMemoryData
    FieldDefs = <>
    Left = 504
    Top = 304
    object memhibakfuncCode: TStringField
      FieldName = 'funcCode'
    end
    object memhibakreasoncode: TStringField
      FieldName = 'reasoncode'
      Size = 100
    end
    object memhibakmsg: TStringField
      FieldName = 'msg'
      Size = 200
    end
  end
  object memhibakDs: TDataSource
    DataSet = memhibak
    Left = 504
    Top = 360
  end
  object arfoly_ekaerQ: TFDQuery
    Connection = EKAERKapcs
    SQL.Strings = (
      'SELECT * FROM eaker_arfolyamok')
    Left = 136
    Top = 256
  end
  object arfoly_ekaerQDs: TDataSource
    DataSet = arfoly_ekaerQ
    Left = 136
    Top = 304
  end
  object inupQ: TFDQuery
    Connection = EKAERKapcs
    Left = 232
    Top = 256
  end
end
