object AF: TAF
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 639
  Width = 1142
  object ForgalomDS: TDataSource
    DataSet = ForgalomQ
    Left = 389
    Top = 103
  end
  object ForgalomQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'SELECT *'
      'FROM forgalom'
      'ORDER BY Datum desc, Ido desc')
    Left = 384
    Top = 48
  end
  object Forgalom_Timer: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Forgalom_TimerTimer
    Left = 456
    Top = 48
  end
  object ForgTimT: TFDTable
    Connection = Kapcs
    TableName = 'forgalom'
    Left = 456
    Top = 104
  end
  object ForgTimQ: TFDQuery
    Connection = Kapcs
    Left = 408
    Top = 160
  end
  object ParositottT: TFDTable
    Connection = Kapcs
    TableName = 'parositott'
    Left = 536
    Top = 48
  end
  object ParositottQ: TFDQuery
    Connection = Kapcs
    Left = 536
    Top = 104
  end
  object ParositottDS: TDataSource
    DataSet = ParositottQ
    Left = 488
    Top = 160
  end
  object DB_Create: TFDScript
    SQLScripts = <
      item
        Name = 'Dbc'
      end>
    Connection = Kapcs
    ScriptOptions.CommandSeparator = ';'
    ScriptOptions.DriverID = 'MySQL'
    ScriptOptions.CharacterSet = 'Utf8mb4'
    ScriptDialog = fdgxscrptdlg1
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 16
    Top = 40
  end
  object felhasznalok_jogai: TJvMemoryData
    FieldDefs = <
      item
        Name = 'f_id'
        DataType = ftInteger
      end
      item
        Name = 'jog_neve'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'j1'
        DataType = ftBoolean
      end
      item
        Name = 'j2'
        DataType = ftBoolean
      end
      item
        Name = 'j3'
        DataType = ftBoolean
      end
      item
        Name = 'j4'
        DataType = ftBoolean
      end
      item
        Name = 'j5'
        DataType = ftBoolean
      end
      item
        Name = 'j6'
        DataType = ftBoolean
      end
      item
        Name = 'j7'
        DataType = ftBoolean
      end
      item
        Name = 'j8'
        DataType = ftBoolean
      end
      item
        Name = 'j9'
        DataType = ftBoolean
      end
      item
        Name = 'j10'
        DataType = ftBoolean
      end
      item
        Name = 'j11'
        DataType = ftBoolean
      end
      item
        Name = 'j12'
        DataType = ftBoolean
      end
      item
        Name = 'j13'
        DataType = ftBoolean
      end
      item
        Name = 'j14'
        DataType = ftBoolean
      end
      item
        Name = 'j15'
        DataType = ftBoolean
      end
      item
        Name = 'j16'
        DataType = ftBoolean
      end
      item
        Name = 'j17'
        DataType = ftBoolean
      end
      item
        Name = 'j18'
        DataType = ftBoolean
      end
      item
        Name = 'j19'
        DataType = ftBoolean
      end
      item
        Name = 'j20'
        DataType = ftBoolean
      end>
    Left = 96
    Top = 208
    object felhasznalok_jogaiID: TIntegerField
      FieldName = 'ID'
    end
    object felhasznalok_jogaif_id: TIntegerField
      FieldName = 'f_id'
    end
    object felhasznalok_jogaijszam: TStringField
      FieldName = 'jszam'
      Size = 3
    end
    object felhasznalok_jogaijog_neve: TStringField
      FieldName = 'jog_neve'
      Size = 30
    end
    object felhasznalok_jogaijog: TBooleanField
      FieldName = 'jog'
      OnChange = felhasznalok_jogaijogChange
    end
  end
  object FelhaszQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from felhasz where aktiv=1 ORDER BY nev ASC;')
    Left = 80
    Top = 96
  end
  object FelhaszQDs: TDataSource
    DataSet = FelhaszQ
    Left = 88
    Top = 144
  end
  object Q1: TFDQuery
    Connection = Kapcs
    Left = 808
    Top = 184
  end
  object felhasznalok_jogaiDs: TDataSource
    DataSet = felhasznalok_jogai
    Left = 96
    Top = 264
  end
  object Kapcs: TFDConnection
    ConnectionName = 'Kapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=MaTt2019'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=knz'
      'Port=3307'
      'Database=alap')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    UpdateOptions.AssignedValues = [uvLockMode, uvLockWait]
    UpdateOptions.LockMode = lmOptimistic
    LoginPrompt = False
    OnLost = KapcsLost
    BeforeCommit = KapcsBeforeCommit
    Left = 64
    Top = 40
  end
  object frxmerleg: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44089.561261585700000000
    ReportOptions.LastChange = 45435.615291377310000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrint = frxmerlegAfterPrint
    Left = 608
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      MirrorMargins = True
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 155.984540000000000000
        ParentFont = False
        Top = 16.000000000000000000
        Width = 718.110700000000000000
        object memcim: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 236.220625000000000000
          Top = 15.118120000000000000
          Width = 245.669450000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'rlegjegy')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 4.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 27.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 67.535560000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Els'#337' m'#233'r'#233's id'#337'pontja:')
          ParentFont = False
        end
        object memelsoido: TfrxMemoView
          AllowVectorExport = True
          Left = 158.519790000000000000
          Top = 67.535560000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 355.055350000000000000
          Top = 67.535560000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#225'sodik m'#233'r'#233's id'#337'pontja:')
          ParentFont = False
        end
        object memmasodikido: TfrxMemoView
          AllowVectorExport = True
          Left = 536.472790000000000000
          Top = 67.535560000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object membizszam: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.118120000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 98.787570000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rendsz'#225'mok:')
          ParentFont = False
        end
        object memrendszamok: TfrxMemoView
          AllowVectorExport = True
          Left = 100.826840000000000000
          Top = 98.787570000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'ASDTRTZUIOP'#201'LREERTEE')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 128.228510000000000000
          Width = 85.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Els'#337' m'#233'r'#233's:')
          ParentFont = False
        end
        object membrutto: TfrxMemoView
          AllowVectorExport = True
          Left = 92.472480000000000000
          Top = 128.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 209.346630000000000000
          Top = 128.228510000000000000
          Width = 113.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#225'sodik m'#233'r'#233's:')
          ParentFont = False
        end
        object memtara: TfrxMemoView
          AllowVectorExport = True
          Left = 326.921460000000000000
          Top = 128.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 528.913730000000000000
          Top = 128.228510000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nett'#243':')
          ParentFont = False
        end
        object memnetto: TfrxMemoView
          AllowVectorExport = True
          Left = 581.827150000000000000
          Top = 128.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 414.425480000000000000
          Top = 97.874150000000000000
          Width = 114.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forgalom t'#237'pusa:')
          ParentFont = False
        end
        object memirany: TfrxMemoView
          AllowVectorExport = True
          Left = 536.472790000000000000
          Top = 97.874150000000000000
          Width = 138.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object frxpsz: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
        end
      end
    end
  end
  object SszQ: TFDQuery
    Connection = Kapcs
    Left = 688
    Top = 48
  end
  object FrxmjegyList: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44089.754742951390000000
    ReportOptions.LastChange = 45029.411294386580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 640
    Top = 296
    Datasets = <
      item
        DataSet = DBFrxmjegyList
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 421.417595000000000000
          Top = 7.559060000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'rlegjegyek list'#225'ja')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = [ftBottom]
        Height = 37.795300000000000000
        Top = 83.149660000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sorsz'#225'm')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 88.929190000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Els'#337' m'#233'r'#233's')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#225'sodik m'#233'r.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rendszamok')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Brutt'#243)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#225'ra')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz.nett'#243)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'T_k'#243'd')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'T_n'#233'v')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Partner/Partner2')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 948.662030000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ir'#225'ny')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 349.716760000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Megjegyz'#233's')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 181.417440000000000000
        Width = 1046.929810000000000000
        DataSet = DBFrxmjegyList
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1Sorszam: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Sorszam'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Sorszam"]')
          ParentFont = False
        end
        object frxDBDataset1erkdatum: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."erkdatum"]')
          ParentFont = False
        end
        object frxDBDataset1erkido: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 19.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'erkido'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."erkido"]')
          ParentFont = False
        end
        object frxDBDataset1tavdatum: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tavdatum'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."tavdatum"]')
          ParentFont = False
        end
        object frxDBDataset1tavido: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tavido'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."tavido"]')
          ParentFont = False
        end
        object frxDBDataset1rendszam: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'rendszam'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."rendszam"]')
          ParentFont = False
        end
        object frxDBDataset1rendszam2: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 18.897650000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'rendszam2'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."rendszam2"]')
          ParentFont = False
        end
        object frxDBDataset1brutto: TfrxMemoView
          AllowVectorExport = True
          Left = 347.716760000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'brutto'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."brutto"]')
        end
        object frxDBDataset1tara: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tara'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."tara"]')
        end
        object frxDBDataset1sznetto: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'sznetto'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."sznetto"]')
        end
        object frxDBDataset1termek_kod: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'termek_kod'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."termek_kod"]')
        end
        object frxDBDataset1termek_nev: TfrxMemoView
          AllowVectorExport = True
          Left = 624.842920000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'termek_nev'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."termek_nev"]')
        end
        object frxDBDataset1p_nev: TfrxMemoView
          AllowVectorExport = True
          Left = 733.669760000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'p_nev'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."p_nev"]')
        end
        object frxDBDataset1irany: TfrxMemoView
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'irany'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."irany"]')
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 38.795300000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1megjegyzes: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 347.716760000000000000
          Top = 18.897650000000000000
          Width = 699.213050000000000000
          Height = 18.897650000000000000
          DataField = 'megjegyzes'
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."megjegyzes"]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Top = 22.677180000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DBFrxmjegyList
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."p2_nev"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 283.464750000000000000
        Width = 1046.929810000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 26.236240000000000000
          Top = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Be:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 37.795300000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ki:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 7.559060000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."tomegbe">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."tomegki">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object DBFrxmjegyList: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Sorszam=Sorszam'
      'Ev_ssz=Ev_ssz'
      'Eazon=Eazon'
      'Storno=Storno'
      'Rendszam=rendszam'
      'Rendszam2=rendszam2'
      'P_ID=P_id'
      'P_Kod=p_kod'
      'P_Nev=p_nev'
      'P_Cim=p_cim'
      'Termek_ID=termek_id'
      'Termek_Kod=termek_kod'
      'Termek_Nev=termek_nev'
      'Termek_afa=Termek_afa'
      'termek_ar=termek_ar'
      'Szallitolev=szallitolev'
      'Megjegyzes=megjegyzes'
      'Tomegbe=tomegbe'
      'Tomegki=tomegki'
      'Erkdatum=erkdatum'
      'Erkido=erkido'
      'Tavdatum=tavdatum'
      'Tavido=tavido'
      'Felhasznalo=felhasznalo'
      'irany=irany'
      'Brutto=brutto'
      'Tara=tara'
      'Netto=netto'
      'SzNetto=sznetto'
      'merlegelo=merlegelo'
      'kuj=kuj'
      'ktj=ktj'
      'ekaer=ekaer'
      'psz=psz'
      'alapnedv=alapnedv'
      'nedv=nedv'
      'tisztasag=tisztasag'
      'tortszaz=tortszaz'
      'feherje=feherje'
      'olaj=olaj'
      'esesszam=esesszam'
      'hekto=hekto'
      'egysegtomeg=egysegtomeg'
      'kerekites=kerekites'
      'kukorica=kukorica'
      'buzaminoseg=buzaminoseg'
      'mennyiseg=mennyiseg'
      'tarolasi_dij=tarolasi_dij'
      'szaritasi_dij=szaritasi_dij'
      'tisztitasi_dij=tisztitasi_dij'
      'tarolo_id=tarolo_id'
      'tarolo=tarolo'
      'elso_kezi=elso_kezi'
      'masodik_kezi=masodik_kezi'
      'tul_id=tul_id'
      'tul_nev=tul_nev'
      'tul_cim=tul_cim'
      'tul_adoszam=tul_adoszam'
      'tul_kuj=tul_kuj'
      'tul_ktj=tul_ktj'
      'tul_elotag=tul_elotag'
      'P2_ID=P2_ID'
      'P2_Kod=P2_Kod'
      'P2_Nev=P2_Nev'
      'P2_Cim=P2_Cim'
      'P2_kuj=P2_kuj'
      'P2_ktj=P2_ktj'
      'levon_szoveg=levon_szoveg'
      'levon_tomeg=levon_tomeg'
      'ewc=ewc'
      'tul_cjsz=tul_cjsz'
      'szaraz_tort_szemek=szaraz_tort_szemek')
    DataSource = MjegyekF.mjegyekQDs
    BCDToCurrency = False
    Left = 640
    Top = 352
  end
  object PDFExportmjegy: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = True
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 472
    Top = 248
  end
  object merlegkezQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from merlegelok ORDER BY nev ASC;')
    Left = 144
    Top = 96
  end
  object merlegkezQDs: TDataSource
    DataSet = merlegkezQ
    Left = 144
    Top = 144
  end
  object ModScript: TFDScript
    SQLScripts = <
      item
        Name = 'dbm'
        SQL.Strings = (
          '')
      end>
    Connection = Kapcs
    ScriptOptions.CommandSeparator = ';'
    ScriptOptions.DriverID = 'MySQL'
    ScriptOptions.CharacterSet = 'Utf8mb4'
    ScriptDialog = ModScriptDialog
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 856
    Top = 64
  end
  object ModScriptDialog: TFDGUIxScriptDialog
    Provider = 'Forms'
    Options = [ssCallstack, ssConsole]
    Left = 856
    Top = 112
  end
  object KeszletQDs: TDataSource
    DataSet = KeszletQ
    Left = 184
    Top = 272
  end
  object KeszletQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from keszlet_nezet')
    Left = 184
    Top = 208
    object KeszletQTerm_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'Term_id'
      Origin = 'Term_id'
    end
    object KeszletQTerm_kod: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Term_kod'
      Origin = 'Term_kod'
      Size = 30
    end
    object KeszletQTerm_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Term_nev'
      Origin = 'Term_nev'
      Size = 100
    end
    object KeszletQTarolo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Tarolo_id'
      Origin = 'Tarolo_id'
    end
    object KeszletQTarolo_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tarolo_nev'
      Origin = 'Tarolo_nev'
      Size = 50
    end
    object KeszletQpartner_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'partner_id'
      Origin = 'partner_id'
    end
    object KeszletQPartner_kod: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Partner_kod'
      Origin = 'Partner_kod'
      Size = 15
    end
    object KeszletQPartner_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Partner_nev'
      Origin = 'Partner_nev'
      Size = 80
    end
    object KeszletQfelhasznalo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'felhasznalo_id'
      Origin = 'felhasznalo_id'
    end
    object KeszletQFelhasznalo_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Felhasznalo_nev'
      Origin = 'Felhasznalo_nev'
      Size = 50
    end
    object KeszletQmenny: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'menny'
      Origin = 'menny'
      Precision = 12
      Size = 2
    end
    object KeszletQmodositva: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'modositva'
      Origin = 'modositva'
    end
    object KeszletQtort: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'tort'
      Origin = 'tort'
    end
  end
  object frxKeszlet: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44224.592448159720000000
    ReportOptions.LastChange = 44418.327764421290000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 552
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDKeszlet
        DataSetName = 'frxDBDKeszlet'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 11.338590000000000000
          Width = 204.094620000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'K'#233'szlet lista')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 0.755905510000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term.k'#243'd')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 0.755905510000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term.n'#233'v')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 0.755905510000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Menny.')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 19.897650000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDKeszlet
        DataSetName = 'frxDBDKeszlet'
        RowCount = 0
        object frxDBDKeszlettkod: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 2.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'Term_kod'
          DataSet = frxDBDKeszlet
          DataSetName = 'frxDBDKeszlet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKeszlet."Term_kod"]')
        end
        object frxDBDKeszlettnev: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 2.000000000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'Term_nev'
          DataSet = frxDBDKeszlet
          DataSetName = 'frxDBDKeszlet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKeszlet."Term_nev"]')
        end
        object frxDBDKeszletmenny: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 0.220470000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'menny'
          DataSet = frxDBDKeszlet
          DataSetName = 'frxDBDKeszlet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKeszlet."menny"]')
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxDBDKeszlet: TfrxDBDataset
    UserName = 'frxDBDKeszlet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Term_id=Term_id'
      'Term_kod=Term_kod'
      'Term_nev=Term_nev'
      'Tarolo_id=Tarolo_id'
      'Tarolo_nev=Tarolo_nev'
      'partner_id=partner_id'
      'Partner_kod=Partner_kod'
      'Partner_nev=Partner_nev'
      'felhasznalo_id=felhasznalo_id'
      'Felhasznalo_nev=Felhasznalo_nev'
      'menny=menny'
      'modositva=modositva'
      'tort=tort')
    DataSource = KeszletQDs
    BCDToCurrency = False
    Left = 552
    Top = 288
  end
  object fdgxscrptdlg1: TFDGUIxScriptDialog
    Provider = 'Forms'
    Options = [ssCallstack, ssConsole]
    Left = 16
    Top = 96
  end
  object taraQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      
        'SELECT IF ((SELECT tara FROM rendszam WHERE rendszam=:r) IS NULL' +
        ', 0, (SELECT tara FROM rendszam WHERE rendszam=:r)) AS tara')
    Left = 272
    Top = 336
    ParamData = <
      item
        Name = 'R'
        ParamType = ptInput
      end>
  end
  object Automentes: TTimer
    Enabled = False
    OnTimer = AutomentesTimer
    Left = 528
    Top = 384
  end
  object FoglaltQ: TFDQuery
    Connection = Kapcs
    Left = 688
    Top = 96
  end
  object KeszletezesProc: TFDStoredProc
    Connection = Kapcs
    StoredProcName = 'keszletezes'
    Left = 349
    Top = 335
    ParamData = <
      item
        Position = 1
        Name = 'p_id_p'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 't_id_p'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'tar_id_p'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'tort_p'
        DataType = ftShortint
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'f_id_p'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'menny_p'
        DataType = ftBCD
        ParamType = ptInput
      end>
  end
  object Partner_keszleteQ: TFDQuery
    Connection = Kapcs
    Left = 344
    Top = 392
  end
  object rktetm: TJvMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'termek_id'
        DataType = ftInteger
      end
      item
        Name = 'termek_kod'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'termek_nev'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'menny'
        DataType = ftFloat
      end
      item
        Name = 'tort'
        DataType = ftBoolean
      end>
    Left = 640
    Top = 160
    object rktetmtermek_id: TIntegerField
      FieldName = 'termek_id'
    end
    object rktetmtermek_kod: TStringField
      FieldName = 'termek_kod'
      Size = 30
    end
    object rktetmtermek_nev: TStringField
      FieldName = 'termek_nev'
      Size = 100
    end
    object rktetmmenny: TFloatField
      FieldName = 'menny'
    end
    object rktetmtort: TBooleanField
      FieldName = 'tort'
    end
  end
  object rktetmDs: TDataSource
    DataSet = rktetm
    Left = 704
    Top = 160
  end
  object frxDBDrakszall: TfrxDBDataset
    UserName = 'frxDBDrakszall'
    CloseDataSource = False
    FieldAliases.Strings = (
      'termek_id=termek_id'
      'termek_kod=termek_kod'
      'termek_nev=termek_nev'
      'menny=menny'
      'tort=tort')
    DataSource = rktetmDs
    BCDToCurrency = False
    Left = 720
    Top = 192
  end
  object frxrakszall: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44403.594122963000000000
    ReportOptions.LastChange = 44403.684652152800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 720
    Top = 240
    Datasets = <
      item
        DataSet = frxDBDrakszall
        DataSetName = 'frxDBDrakszall'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 124.724490000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object frxcim: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 18.897650000000000000
          Width = 385.512060000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rakt'#225'rk'#246'zi sz'#225'll'#237't'#243'lev'#233'l')
          ParentFont = False
        end
        object frxbizszam: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 20.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'frxbizszam')
          ParentFont = False
        end
        object frxdatum: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 20.456710000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'frxdatum')
          ParentFont = False
        end
        object frxk_partner: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 60.692950000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxk_partner')
        end
        object frxk_tarolo: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 60.692950000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxk_tarolo')
        end
        object frxf_partner: TfrxMemoView
          AllowVectorExport = True
          Left = 112.606370000000000000
          Top = 94.488250000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxf_partner')
        end
        object frxf_tarolo: TfrxMemoView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 94.488250000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxf_tarolo')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kiad'#243':')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 94.488250000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fogad'#243':')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 120.944960000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term.k'#243'd')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term.n'#233'v')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Menny.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 661.417750000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'T'#246'rt.sz.')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 20.456710000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDrakszall
        DataSetName = 'frxDBDrakszall'
        RowCount = 0
        Stretched = True
        object frxDBDrakszalltermek_kod: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'termek_kod'
          DataSet = frxDBDrakszall
          DataSetName = 'frxDBDrakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDrakszall."termek_kod"]')
        end
        object frxDBDrakszalltermek_nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 1.889763780000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'termek_nev'
          DataSet = frxDBDrakszall
          DataSetName = 'frxDBDrakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDrakszall."termek_nev"]')
        end
        object frxDBDrakszallmenny: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 1.889763780000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'menny'
          DataSet = frxDBDrakszall
          DataSetName = 'frxDBDrakszall'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDrakszall."menny"]')
        end
        object CheckBox1: TfrxCheckBoxView
          AllowVectorExport = True
          Left = 680.315400000000000000
          Top = 1.889763780000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'tort'
          DataSet = frxDBDrakszall
          DataSetName = 'frxDBDrakszall'
          Frame.Typ = []
        end
      end
    end
  end
  object Q2: TFDQuery
    Connection = Kapcs
    Left = 128
    Top = 320
  end
  object rszQ: TFDQuery
    Connection = Kapcs
    Left = 61
    Top = 325
  end
  object Sample_Kapcs: TFDConnection
    ConnectionName = 'Sample_Kapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=adminKNZ1234'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=wregknz'
      'Port=3306'
      'Database=samplereg')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvAutoReconnect]
    ResourceOptions.AutoConnect = False
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    OnLost = KapcsLost
    BeforeCommit = KapcsBeforeCommit
    Left = 40
    Top = 392
  end
  object SampleQ1: TFDQuery
    ConnectionName = 'Sample_Kapcs'
    Left = 120
    Top = 392
  end
  object ZarolQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'LOCK TABLE :tabla READ NOWAIT')
    Left = 824
    Top = 344
    ParamData = <
      item
        Name = 'TABLA'
        ParamType = ptInput
      end>
  end
  object ZarolvaQ: TFDQuery
    Connection = Kapcs
    Left = 824
    Top = 400
  end
  object frxtesztrep: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44089.561261585700000000
    ReportOptions.LastChange = 44624.389487534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 664
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      MirrorMargins = True
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 499.984540000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memcim: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 236.220625000000000000
          Top = 15.118120000000000000
          Width = 245.669450000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'rlegjegy')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 4.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 6.338590000000000000
          Top = 27.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'rlegel'#233's helye:')
          ParentFont = False
        end
        object memtulaj: TfrxMemoView
          AllowVectorExport = True
          Left = 114.165430000000000000
          Top = 60.472480000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'memtulaj')
          ParentFont = False
        end
        object mempartner: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 111.047310000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Partner1:')
          ParentFont = False
        end
        object mempartnerneve: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 111.047310000000000000
          Width = 340.157700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Neve')
          ParentFont = False
        end
        object mempartnercime: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 111.047310000000000000
          Width = 291.023810000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object memtulajcime: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 59.897650000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memtulajcime')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 259.535560000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Els'#337' m'#233'r'#233's id'#337'pontja:')
          ParentFont = False
        end
        object memelsoido: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 259.535560000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 259.535560000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#225'sodik m'#233'r'#233's id'#337'pontja:')
          ParentFont = False
        end
        object memmasodikido: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 259.535560000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object membizszam: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.118120000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.779530000000000000
          Top = 281.787570000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rendsz'#225'mok:')
          ParentFont = False
        end
        object memrendszamok: TfrxMemoView
          AllowVectorExport = True
          Left = 104.826840000000000000
          Top = 281.787570000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 347.228510000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Brutt'#243':')
          ParentFont = False
        end
        object membrutto: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 347.126160000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 285.346630000000000000
          Top = 347.228510000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#225'ra:')
          ParentFont = False
        end
        object memtara: TfrxMemoView
          AllowVectorExport = True
          Left = 326.921460000000000000
          Top = 347.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 347.228510000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nett'#243':')
          ParentFont = False
        end
        object memnetto: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 347.228510000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 477.307360000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 477.307360000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object memmerlegkezelo: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 481.086890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'rlegkezel'#337)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 520.913730000000000000
          Top = 481.866420000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#243)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 280.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'r'#233's ir'#225'nya:')
          ParentFont = False
        end
        object memirany: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 280.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 237.535560000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Megjegyz'#233's:')
          ParentFont = False
        end
        object memmegjegy: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 237.535560000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 304.700990000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term'#233'k k'#243'd:')
          ParentFont = False
        end
        object memtermkod: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 304.622047240000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 185.055350000000000000
          Top = 304.622047240000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term'#233'k n'#233'v:')
          ParentFont = False
        end
        object memtermnev: TfrxMemoView
          AllowVectorExport = True
          Left = 281.102660000000000000
          Top = 304.622047240000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 215.653680000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#243'lev'#233'l:')
          ParentFont = False
        end
        object memszallev: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 215.653680000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object frxpsz: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
        end
        object frxekaerlbl: TfrxMemoView
          AllowVectorExport = True
          Left = 9.338590000000000000
          Top = 215.330860000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EK'#193'ER:')
          ParentFont = False
        end
        object frxekaer: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 215.330860000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object memalapnedvlbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 325.937230000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Alap nedv.:')
          ParentFont = False
        end
        object memnedvlbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 325.937230000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nedv.:')
          ParentFont = False
        end
        object memtisztasaglbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 325.937230000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Tisztas'#225'g:')
          ParentFont = False
        end
        object memtortlbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 325.937230000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#246'rt szemek:')
          ParentFont = False
        end
        object memalapnedv: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 325.937230000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memalapnedv')
          ParentFont = False
        end
        object memnedv: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 238.110390000000000000
          Top = 325.937230000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memnedv')
          ParentFont = False
        end
        object memtisztasag: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 325.937230000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memtisztasag')
          ParentFont = False
        end
        object memtort: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 325.937230000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memtort')
          ParentFont = False
        end
        object memnedvlevonlbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 393.071120000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nedvess'#233'glevon'#225's:')
          ParentFont = False
        end
        object memnedvesztlbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 415.748300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nedvess'#233'gveszt'#233's:')
          ParentFont = False
        end
        object memszemetlevonlbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 204.448980000000000000
          Top = 393.071120000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Szem'#233'tlevon'#225's:')
          ParentFont = False
        end
        object memtorttomeglbl: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 377.086890000000000000
          Top = 393.071120000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#246'rt szemek:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 415.748300000000000000
          Width = 219.212740000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'm'#237'tott nett'#243' t'#246'meg: ')
          ParentFont = False
        end
        object memnedvlevon: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 392.291590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memnedvlevon')
          ParentFont = False
        end
        object memnedveszt: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 415.748300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memnedveszt')
          ParentFont = False
        end
        object memszemetlevon: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 311.834880000000000000
          Top = 392.291590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memszemetlevon')
          ParentFont = False
        end
        object memtorttomeg: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 466.795610000000000000
          Top = 392.291590000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memtorttomeg')
          ParentFont = False
        end
        object memsznetto: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 415.748300000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'memsznetto')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 533.031850000000000000
          Top = 303.260050000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Egys.'#225'r:')
          ParentFont = False
        end
        object memegysar: TfrxMemoView
          AllowVectorExport = True
          Left = 602.063390000000000000
          Top = 303.260050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memegysar')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 108.267780000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = -3.779530000000000000
          Top = 158.740260000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object mempartner2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 162.519790000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Partner2:')
          ParentFont = False
        end
        object mempartnerneve2: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 162.519790000000000000
          Width = 340.157700000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Neve')
          ParentFont = False
        end
        object mempartnercime2: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 162.519790000000000000
          Width = 291.023810000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Top = 211.653680000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object memtomlevonlbl: TfrxMemoView
          Tag = 2
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 370.393940000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#246'meg levon'#225's:')
          ParentFont = False
        end
        object memtomlevon: TfrxMemoView
          Tag = 2
          Align = baLeft
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 370.393940000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memtomlevon')
          ParentFont = False
        end
        object memtomlevon_szoveg: TfrxMemoView
          Tag = 2
          Align = baLeft
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 370.393940000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            'memtomlevon_szoveg')
        end
        object memewclbl: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 283.464750000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EWC:')
          ParentFont = False
        end
        object memewc: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 283.464750000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'memewc')
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 1.606370000000000000
          Top = 85.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ad'#243'sz'#225'm:')
          ParentFont = False
        end
        object memtuladosz: TfrxMemoView
          AllowVectorExport = True
          Left = 73.417440000000000000
          Top = 85.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'memtuladosz')
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 175.464750000000000000
          Top = 85.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#233'gjegyz'#233'ksz'#225'm:')
          ParentFont = False
        end
        object memtulcjsz: TfrxMemoView
          AllowVectorExport = True
          Left = 296.409710000000000000
          Top = 85.149660000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'memtulcjsz')
        end
        object memTelefon: TfrxMemoView
          AllowVectorExport = True
          Left = 411.189240000000000000
          Top = 85.149660000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memTelefon')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 506.457020000000000000
        Top = 578.268090000000000000
        Width = 718.110700000000000000
        PrintAtBottom = True
        object Memo30: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 236.220625000000000000
          Top = 12.000000000000000000
          Width = 245.669450000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[memcim.text]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 10.118120000000000000
          Top = 1.440940000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 10.118120000000000000
          Top = 24.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TIME]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 49.795300000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 107.929190000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[mempartner.text]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 107.929190000000000000
          Width = 340.157700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[mempartnerneve.text]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 107.929190000000000000
          Width = 291.023810000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[mempartnercime.text]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 255.417440000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Els'#337' m'#233'r'#233's id'#337'pontja:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 255.417440000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memelsoido.text]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 255.417440000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#225'sodik m'#233'r'#233's id'#337'pontja:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 255.417440000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memmasodikido.text]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[membizszam.text]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 11.559060000000000000
          Top = 277.669450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rendsz'#225'mok:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 106.826840000000000000
          Top = 277.669450000000000000
          Width = 117.165354330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memrendszamok.text]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 344.008040000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Brutt'#243':')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 343.905690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[membrutto.text]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 289.126160000000000000
          Top = 344.008040000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#225'ra:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 330.700990000000000000
          Top = 344.008040000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtara.text]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 344.008040000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nett'#243':')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 589.606680000000000000
          Top = 344.008040000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnetto.text]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 474.189240000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 474.189240000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 477.968770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'rlegkezel'#337)
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 524.693260000000000000
          Top = 478.748300000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#243)
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 276.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'r'#233's ir'#225'nya:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 276.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memirany.text]')
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 233.417440000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Megjegyz'#233's:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 233.417440000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[memmegjegy.text]')
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 300.582870000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term'#233'k k'#243'd:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 300.503927240000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtermkod.text]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 188.834880000000000000
          Top = 300.503927240000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Term'#233'k n'#233'v:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 284.882190000000000000
          Top = 300.503927240000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtermnev.text]')
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 211.535560000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#243'lev'#233'l:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 211.535560000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memszallev.text]')
        end
        object frxpsz2: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 27.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxpsz2')
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 13.118120000000000000
          Top = 211.212740000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxekaerlbl.text]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 211.212740000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxekaer.text]')
        end
        object Memo65: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 321.819110000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memalapnedvlbl.text]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 321.819110000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnedvlbl.text]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 321.819110000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtisztasaglbl.text]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 321.819110000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtortlbl.text]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 321.819110000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memalapnedv.text]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 321.819110000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnedv.text]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 321.819110000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtisztasag.text]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 321.819110000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtort.text]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 412.630180000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnedvesztlbl.text]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 412.630180000000000000
          Width = 219.212740000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'm'#237'tott nett'#243' t'#246'meg: ')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 412.630180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnedveszt.text]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 412.630180000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memsznetto.text]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 536.811380000000000000
          Top = 299.141930000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Egys.'#225'r:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 605.842920000000000000
          Top = 299.141930000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memegysar.text]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 105.149660000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Top = 155.622140000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 159.401670000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[mempartner2.text]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 159.401670000000000000
          Width = 340.157700000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[mempartnerneve2.text]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 159.401670000000000000
          Width = 291.023810000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[mempartnercime2.text]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 208.535560000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo75: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 389.291590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnedvlevonlbl.text]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 208.228510000000000000
          Top = 389.291590000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memszemetlevonlbl.text]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 380.866420000000000000
          Top = 389.291590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtorttomeglbl.text]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 388.512060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memnedvlevon.text]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 315.614410000000000000
          Top = 388.512060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memszemetlevon.text]')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 470.575140000000000000
          Top = 388.512060000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtorttomeg.text]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Tag = 2
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 366.614410000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#246'meg levon'#225's:')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Tag = 2
          Align = baLeft
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 366.614410000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtomlevon.text]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Tag = 2
          Align = baLeft
          AllowVectorExport = True
          Left = 124.724490000000000000
          Top = 366.614410000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtomlevon_szoveg.text]')
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 277.905690000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memewclbl.text]')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 279.685220000000000000
          Top = 277.905690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memewc.text]')
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 53.488250000000000000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'M'#233'rlegel'#233's helye:')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 121.724490000000000000
          Top = 53.488250000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtulaj.text]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 52.913420000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtulajcime.text]')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 9.165430000000000000
          Top = 78.165430000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Ad'#243'sz'#225'm:')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 80.976500000000000000
          Top = 78.165430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtuladosz.text]')
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 183.023810000000000000
          Top = 78.165430000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#233'gjegyz'#233'ksz'#225'm:')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 303.968770000000000000
          Top = 78.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtulcjsz.text]')
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memTelefon.text]')
        end
      end
    end
  end
  object TermekT: TFDTable
    IndexFieldNames = 'ID'
    Connection = Kapcs
    UpdateOptions.UpdateTableName = 'termek'
    TableName = 'termek'
    Left = 240
    Top = 480
    object TermekTID: TFDAutoIncField
      Tag = 17
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TermekTKod: TWideStringField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'Kod'
      Origin = 'Kod'
      Size = 30
    end
    object TermekTNev: TWideStringField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'Nev'
      Origin = 'Nev'
      Size = 100
    end
    object TermekTitj: TWideStringField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'itj'
      Origin = 'itj'
    end
    object TermekTme: TWideStringField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'me'
      Origin = 'me'
    end
    object TermekTar: TBCDField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'ar'
      Origin = 'ar'
      Precision = 12
      Size = 2
    end
    object TermekTafa: TBCDField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'afa'
      Origin = 'afa'
      Precision = 12
      Size = 2
    end
    object TermekTegysegtomeg: TBCDField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'egysegtomeg'
      Origin = 'egysegtomeg'
      Precision = 12
      Size = 2
    end
    object TermekTalapnedv: TBCDField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'alapnedv'
      Origin = 'alapnedv'
      Precision = 12
      Size = 2
    end
    object TermekTkerekites: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'kerekites'
      Origin = 'kerekites'
    end
    object TermekTkukorica: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'kukorica'
      Origin = 'kukorica'
    end
    object TermekTb_nedv: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_nedv'
      Origin = 'b_nedv'
    end
    object TermekTb_feherje: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_feherje'
      Origin = 'b_feherje'
    end
    object TermekTb_eses: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_eses'
      Origin = 'b_eses'
    end
    object TermekTb_tisztasag: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_tisztasag'
      Origin = 'b_tisztasag'
    end
    object TermekTb_tort: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_tort'
      Origin = 'b_tort'
    end
    object TermekTb_olaj: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_olaj'
      Origin = 'b_olaj'
    end
    object TermekTb_buzaminoseg: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_buzaminoseg'
      Origin = 'b_buzaminoseg'
    end
    object TermekTb_hekto: TBooleanField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'b_hekto'
      Origin = 'b_hekto'
    end
    object TermekTtipus_id: TIntegerField
      Tag = 17
      AutoGenerateValue = arDefault
      FieldName = 'tipus_id'
      Origin = 'tipus_id'
    end
    object TermekTewc: TWideStringField
      FieldName = 'ewc'
    end
  end
  object TermekDS: TDataSource
    DataSet = TermekT
    Left = 288
    Top = 480
  end
  object PartnerT: TFDTable
    Connection = Kapcs
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'partner'
    TableName = 'partner'
    Left = 240
    Top = 536
  end
  object PartnerDS: TDataSource
    DataSet = PartnerT
    Left = 288
    Top = 536
  end
  object autotorzs: TTimer
    Enabled = False
    Interval = 1800000
    OnTimer = autotorzsTimer
    Left = 528
    Top = 456
  end
  object CfgT: TFDTable
    IndexFieldNames = 'csoport:A'
    Connection = Kapcs
    TableName = 'cfg'
    Left = 16
    Top = 160
  end
  object CfgTDs: TDataSource
    DataSet = CfgT
    Left = 16
    Top = 208
  end
  object IrszScript: TFDScript
    SQLScripts = <
      item
        Name = 'irszek'
        SQL.Strings = (
          'INSERT INTO irsz  (irsz, varos, megye)'
          'VALUES'
          '(2000,'#39'Szentendre'#39','#39'Pest'#39'),'
          '(2009,'#39'Pilisszentl'#225'szl'#243#39','#39'Pest'#39'),'
          '(2011,'#39'Budakal'#225'sz'#39','#39'Pest'#39'),'
          '(2013,'#39'Pom'#225'z'#39','#39'Pest'#39'),'
          '(2014,'#39'Csob'#225'nka'#39','#39'Pest'#39'),'
          '(2015,'#39'Szigetmonostor'#39','#39'Pest'#39'),'
          '(2016,'#39'Le'#225'nyfalu'#39','#39'Pest'#39'),'
          '(2017,'#39'P'#243'csmegyer'#39','#39'Pest'#39'),'
          '(2021,'#39'Tahit'#243'tfalu'#39','#39'Pest'#39'),'
          '(2022,'#39'Tahit'#243'tfalu(Tahi)'#39','#39'Pest'#39'),'
          '(2023,'#39'Dunabogd'#225'ny'#39','#39'Pest'#39'),'
          '(2024,'#39'Kisoroszi'#39','#39'Pest'#39'),'
          '(2025,'#39'Visegr'#225'd'#39','#39'Pest'#39'),'
          '(2026,'#39'Visegr'#225'd(Gizellatelep)'#39','#39'Pest'#39'),'
          '(2027,'#39'D'#246'm'#246's'#39','#39'Kom'#225'rom-E.'#39'),'
          '(2028,'#39'Pilismar'#243't'#39','#39'Kom'#225'rom-E.'#39'),'
          '(2030,'#39#201'rd'#39','#39'Pest'#39'),'
          '(2035,'#39#201'rd(Parkv'#225'ros)'#39','#39'Pest'#39'),'
          '(2036,'#39#201'rd('#201'rdliget)'#39','#39'Pest'#39'),'
          '(2038,'#39'S'#243'sk'#250't'#39','#39'Pest'#39'),'
          '(2039,'#39'Pusztaz'#225'mor'#39','#39'Pest'#39'),'
          '(2040,'#39'Buda'#246'rs'#39','#39'Pest'#39'),'
          '(2045,'#39'T'#246'r'#246'kb'#225'lint'#39','#39'Pest'#39'),'
          '(2049,'#39'Di'#243'sd'#39','#39'Pest'#39'),'
          '(2051,'#39'Biatorb'#225'gy'#39','#39'Pest'#39'),'
          '(2053,'#39'Herceghalom'#39','#39'Pest'#39'),'
          '(2060,'#39'Bicske'#39','#39'Fej'#233'r'#39'),'
          '(2063,'#39'Bicske('#211'barok)'#39','#39'Fej'#233'r'#39'),'
          '(2064,'#39'Csabdi'#39','#39'Fej'#233'r'#39'),'
          '(2065,'#39'M'#225'ny'#39','#39'Fej'#233'r'#39'),'
          '(2066,'#39'Sz'#225'r'#39','#39'Fej'#233'r'#39'),'
          '(2066,'#39#218'jbarok'#39','#39'Fej'#233'r'#39'),'
          '(2067,'#39'Sz'#225'rliget'#39','#39'Fej'#233'r'#39'),'
          '(2071,'#39'P'#225'ty'#39','#39'Pest'#39'),'
          '(2072,'#39'Zs'#225'mb'#233'k'#39','#39'Pest'#39'),'
          '(2073,'#39'T'#246'k'#39','#39'Pest'#39'),'
          '(2074,'#39'Perb'#225'l'#39','#39'Pest'#39'),'
          '(2080,'#39'Pilisj'#225'szfalu'#39','#39'Pest'#39'),'
          '(2081,'#39'Piliscsaba'#39','#39'Pest'#39'),'
          '(2083,'#39'Solym'#225'r'#39','#39'Pest'#39'),'
          '(2084,'#39'Pilisszentiv'#225'n'#39','#39'Pest'#39'),'
          '(2085,'#39'Pilisv'#246'r'#246'sv'#225'r'#39','#39'Pest'#39'),'
          '(2086,'#39'Tinnye'#39','#39'Pest'#39'),'
          '(2089,'#39'Telki'#39','#39'Pest'#39'),'
          '(2091,'#39'Etyek'#39','#39'Fej'#233'r'#39'),'
          '(2092,'#39'Budakeszi'#39','#39'Pest'#39'),'
          '(2093,'#39'Budajen'#337#39','#39'Pest'#39'),'
          '(2094,'#39'Nagykov'#225'csi'#39','#39'Pest'#39'),'
          '(2095,'#39'Pilissz'#225'nt'#243#39','#39'Pest'#39'),'
          '(2096,'#39#220'r'#246'm'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2097,'#39'Pilisborosjen'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2098,'#39'Pilisszentkereszt'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2100,'#39'G'#246'd'#246'll'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2111,'#39'Szada'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2112,'#39'Veresegyh'#225'z'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2113,'#39'Erd'#337'kertes'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2114,'#39'Valk'#243#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2115,'#39'V'#225'cszentl'#225'szl'#243#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2116,'#39'Zs'#225'mbok'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2117,'#39'Isaszeg'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2118,'#39'D'#225'ny'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2119,'#39'P'#233'cel'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2120,'#39'Dunakeszi'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2131,'#39'G'#246'd(Als'#243'g'#246'd)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2132,'#39'G'#246'd(Fels'#337'g'#246'd)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2133,'#39'Sz'#337'dliget'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2134,'#39'Sz'#337'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2141,'#39'Cs'#246'm'#246'r'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2142,'#39'Nagytarcsa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2143,'#39'Kistarcsa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2144,'#39'Kerepes'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2145,'#39'Kerepes(Szilasliget)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2146,'#39'Mogyor'#243'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2151,'#39'F'#243't'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2161,'#39'Csom'#225'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2162,'#39#336'rbotty'#225'n'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2163,'#39'V'#225'cr'#225't'#243't'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2164,'#39'V'#225'charty'#225'n'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2165,'#39'Kisn'#233'medi'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2166,'#39'P'#252'sp'#246'kszil'#225'gy'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2167,'#39'V'#225'cduka'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2170,'#39'Asz'#243'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2173,'#39'Kartal'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2174,'#39'Verseg'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2175,'#39'K'#225'll'#243#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2176,'#39'Erd'#337'k'#252'rt'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2177,'#39'Erd'#337'tarcsa'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2181,'#39'Iklad'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2182,'#39'Domony'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2183,'#39'Galgam'#225'csa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2184,'#39'V'#225'cegres'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2185,'#39'V'#225'ckis'#250'jfalu'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2191,'#39'Bag'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2192,'#39'H'#233'v'#237'zgy'#246'rk'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2193,'#39'Galgah'#233'v'#237'z'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2194,'#39'Tura'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2200,'#39'Monor'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2209,'#39'P'#233'teri'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2211,'#39'Vasad'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2212,'#39'Cs'#233'vharaszt'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2214,'#39'P'#225'nd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2215,'#39'K'#225'va'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2216,'#39'B'#233'nye'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2217,'#39'Gomba'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2220,'#39'Vecs'#233's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2225,'#39#220'll'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2230,'#39'Gy'#246'mr'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2233,'#39'Ecser'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2234,'#39'Magl'#243'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2235,'#39'Mende'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2241,'#39'S'#252'lys'#225'p(T'#225'pi'#243's'#252'ly)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2242,'#39'S'#252'lys'#225'p(T'#225'pi'#243's'#225'p)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2243,'#39'K'#243'ka'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2244,'#39#218'ri'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2251,'#39'T'#225'pi'#243'szecs'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2252,'#39'T'#243'alm'#225's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2253,'#39'T'#225'pi'#243's'#225'g'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2254,'#39'Szentm'#225'rtonk'#225'ta'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2255,'#39'Szentl'#337'rinck'#225'ta'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2300,'#39'R'#225'ckeve'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2309,'#39'L'#243'r'#233'v'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2310,'#39'Szigetszentmikl'#243's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2314,'#39'Hal'#225'sztelek'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2315,'#39'Szigethalom'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2316,'#39'T'#246'k'#246'l'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2317,'#39'Szigetcs'#233'p'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2318,'#39'Szigetszentm'#225'rton'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2319,'#39'Sziget'#250'jfalu'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2321,'#39'Szigetbecse'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2322,'#39'Mak'#225'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2330,'#39'Dunaharaszti'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2335,'#39'Taksony'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2336,'#39'Dunavars'#225'ny'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2337,'#39'D'#233'legyh'#225'za'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2338,'#39#193'porka'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2339,'#39'Majosh'#225'za'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2340,'#39'Kiskunlach'#225'za'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2344,'#39'D'#246'ms'#246'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2345,'#39'Apaj'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2347,'#39'Bugyi'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2351,'#39'Als'#243'n'#233'medi'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2360,'#39'Gy'#225'l'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2363,'#39'Fels'#337'pakony'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2364,'#39#211'csa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2365,'#39'In'#225'rcs'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2366,'#39'Kakucs'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2367,'#39#218'jharty'#225'n'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2370,'#39'Dabas'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2371,'#39'Dabas(S'#225'ri)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2373,'#39'Dabas(Gy'#243'n)'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2375,'#39'Tat'#225'rszentgy'#246'rgy'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2376,'#39'Hern'#225'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2377,'#39#214'rk'#233'ny'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2378,'#39'Pusztavacs'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2381,'#39'T'#225'borfalva'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2400,'#39'Duna'#250'jv'#225'ros'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2407,'#39'Duna'#250'jv'#225'ros(P'#225'lhalma)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2421,'#39'Nagyvenyim'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2422,'#39'Mez'#337'falva'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2423,'#39'El'#337'sz'#225'll'#225's(Kisszentmikl'#243'stelep)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2424,'#39'El'#337'sz'#225'll'#225's'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2425,'#39'Nagykar'#225'csony'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2426,'#39'Baracs'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2427,'#39'Baracs(Ap'#225'tsz'#225'll'#225's)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2428,'#39'Kisapostag'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2431,'#39'Perk'#225'ta'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2432,'#39'Szabadegyh'#225'za'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2433,'#39'S'#225'rosd'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2434,'#39'Hantos'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2435,'#39'Nagyl'#243'k'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2440,'#39'Sz'#225'zhalombatta'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2451,'#39'Ercsi'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2452,'#39'Ercsi(Cukorgy'#225'r)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2453,'#39'Ercsi(Sinatelep)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2454,'#39'Iv'#225'ncsa'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2455,'#39'Beloiannisz'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2456,'#39'Besny'#337#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2457,'#39'Adony'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2458,'#39'Kulcs'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2459,'#39'R'#225'calm'#225's'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2461,'#39'T'#225'rnok'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2462,'#39'Martonv'#225's'#225'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2463,'#39'Tordas'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2464,'#39'Gy'#250'r'#243#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2465,'#39'R'#225'ckereszt'#250'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2471,'#39'Baracska'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2472,'#39'Kaj'#225'sz'#243#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2473,'#39'V'#225'l'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2475,'#39'K'#225'poln'#225'sny'#233'k'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2476,'#39'P'#225'zm'#225'nd'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2477,'#39'Vereb'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2481,'#39'Velence'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2483,'#39'G'#225'rdony'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2484,'#39'G'#225'rdony(Ag'#225'rd)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2485,'#39'G'#225'rdony(Dinny'#233's)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2490,'#39'Pusztaszabolcs'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(2500,'#39'Esztergom'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2510,'#39'Dorog'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2517,'#39'Keszt'#246'lc'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2518,'#39'Le'#225'nyv'#225'r'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2519,'#39'Piliscs'#233'v'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2521,'#39'Csolnok'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2522,'#39'D'#225'g'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2523,'#39'S'#225'ris'#225'p'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2524,'#39'Nagys'#225'p'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2525,'#39'Bajna'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2526,'#39'Ep'#246'l'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2527,'#39'M'#225'riahalom'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2528,'#39#218'ny'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2529,'#39'Annav'#246'lgy'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2531,'#39'Tokod'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2532,'#39'Tokodalt'#225'r'#243#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2533,'#39'Baj'#243't'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2534,'#39'T'#225't'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2535,'#39'Mogyor'#243'sb'#225'nya'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2536,'#39'Nyerges'#250'jfalu'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2537,'#39'Nyerges'#250'jfalu(Viscosa)'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2541,'#39'L'#225'batlan'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2543,'#39'S'#252'tt'#337#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2544,'#39'Neszm'#233'ly'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2545,'#39'Dunaalm'#225's'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2600,'#39'V'#225'c'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2610,'#39'N'#337'tincs'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2611,'#39'Fels'#337'pet'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2612,'#39'Kosd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2613,'#39'R'#225'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2614,'#39'Penc'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2615,'#39'Cs'#337'v'#225'r'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2616,'#39'Keszeg'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2616,'#39#336'sag'#225'rd'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2617,'#39'Als'#243'pet'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2618,'#39'N'#233'zsa'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2619,'#39'Leg'#233'nd'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2621,'#39'Ver'#337'ce'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2623,'#39'Kismaros'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2624,'#39'Szokolya'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2625,'#39'K'#243'spallag'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2626,'#39'Nagymaros'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2627,'#39'Zebeg'#233'ny'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2628,'#39'Szob'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2629,'#39'M'#225'rianosztra'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2631,'#39'Ipolydam'#225'sd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2632,'#39'Letk'#233's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2633,'#39'Ipolyt'#246'lgyes'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2634,'#39'Nagyb'#246'rzs'#246'ny'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2635,'#39'T'#233'sa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2635,'#39'V'#225'mosmikola'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2637,'#39'Per'#337'cs'#233'ny'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2638,'#39'Kemence'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2639,'#39'Bernecebar'#225'ti'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2640,'#39'Szendehely'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2641,'#39'Berkenye'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2642,'#39'N'#243'gr'#225'd'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2643,'#39'Di'#243'sjen'#337#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2644,'#39'Borsosber'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2645,'#39'Nagyoroszi'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2646,'#39'Dr'#233'gelypal'#225'nk'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2647,'#39'Hont'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2648,'#39'Patak'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2649,'#39'Dejt'#225'r'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2651,'#39'R'#233'ts'#225'g'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2652,'#39'Tereske'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2653,'#39'B'#225'nk'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2654,'#39'Romh'#225'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2655,'#39'K'#233'tbodony'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2655,'#39'Kisecset'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2655,'#39'Szente'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2656,'#39'Sz'#225'tok'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2657,'#39'Tolm'#225'cs'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2658,'#39'Horp'#225'cs'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2658,'#39'Pusztaberki'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2659,'#39#201'rsekvadkert'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2660,'#39'Balassagyarmat'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2668,'#39'Patvarc'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2669,'#39'Ipolyvece'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2671,'#39#336'rhalom'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2672,'#39'Hugyag'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2673,'#39'Csit'#225'r'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2675,'#39'Iliny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2675,'#39'N'#243'gr'#225'dmarcal'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2676,'#39'Cserh'#225'tsur'#225'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2677,'#39'Herencs'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2678,'#39'Csesztve'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2681,'#39'Galgagy'#246'rk'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2682,'#39'P'#252'sp'#246'khatvan'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2683,'#39'Acsa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2685,'#39'N'#243'gr'#225'ds'#225'p'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2686,'#39'Galgaguta'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2687,'#39'Bercel'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2688,'#39'Vanyarc'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2691,'#39'N'#243'gr'#225'dk'#246'vesd'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2692,'#39'Sz'#233'cs'#233'nke'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2693,'#39'Becske'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2694,'#39'Cserh'#225'thal'#225'p'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2694,'#39'Debercs'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2694,'#39'Magyarn'#225'ndor'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2696,'#39'Ter'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2697,'#39'Szanda'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2698,'#39'Mohora'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2699,'#39'Sz'#252'gy'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(2700,'#39'Cegl'#233'd'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2711,'#39'T'#225'pi'#243'szentm'#225'rton'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2712,'#39'Ny'#225'rsap'#225't'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2713,'#39'Csem'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2721,'#39'Pilis'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2723,'#39'Ny'#225'regyh'#225'za'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2724,'#39#218'jlengyel'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2730,'#39'Albertirsa'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2735,'#39'D'#225'nszentmikl'#243's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2736,'#39'Mikebuda'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2737,'#39'Cegl'#233'dbercel'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2740,'#39'Abony'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2745,'#39'K'#337'r'#246'stet'#233'tlen'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2746,'#39'J'#225'szkarajen'#337#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2747,'#39'T'#246'rtel'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2750,'#39'Nagyk'#337'r'#246's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2755,'#39'Kocs'#233'r'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2760,'#39'Nagyk'#225'ta'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2764,'#39'T'#225'pi'#243'bicske'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2765,'#39'Farmos'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2766,'#39'T'#225'pi'#243'szele'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2767,'#39'T'#225'pi'#243'gy'#246'rgye'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2768,'#39#218'jszilv'#225's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2769,'#39'T'#225'pi'#243'sz'#337'l'#337's'#39','#39'Pest'#39'),'
          ''
          ''
          ''
          '(2800,'#39'Tatab'#225'nya'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2821,'#39'Gyermely'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2822,'#39'Szomor'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2823,'#39'V'#233'rtessoml'#243#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2824,'#39'V'#225'rgesztes'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2831,'#39'Tarj'#225'n'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2832,'#39'H'#233'reg'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2833,'#39'V'#233'rtestolna'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2834,'#39'Tardos'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2835,'#39'Tata(Agosty'#225'n)'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2836,'#39'Baj'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2837,'#39'V'#233'rtessz'#337'l'#337's'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2840,'#39'Oroszl'#225'ny'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2851,'#39'K'#246'rnye'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2852,'#39'Kecsk'#233'd'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2853,'#39'K'#246'ml'#337'd'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2854,'#39'Dad'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2855,'#39'Bokod'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2856,'#39'Sz'#225'kszend'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2858,'#39'Cs'#225'sz'#225'r'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2859,'#39'V'#233'rteskethely'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2861,'#39'Bakonys'#225'rk'#225'ny'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2862,'#39'Aka'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2870,'#39'Kisb'#233'r'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2879,'#39'Kisb'#233'r(H'#225'nta)'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2881,'#39'Kisb'#233'r('#193'sz'#225'r)'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2882,'#39'Ker'#233'kteleki'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2883,'#39'B'#225'rsonyos'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2884,'#39'Bakonyszombathely'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2885,'#39'Bakonyb'#225'nk'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2886,'#39'R'#233'de'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2887,'#39#193'cstesz'#233'r'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2888,'#39'Csatka'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2889,'#39'S'#250'r'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2890,'#39'Tata'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2896,'#39'Szom'#243'd'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2897,'#39'Dunaszentmikl'#243's'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2898,'#39'Kocs'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2899,'#39'Nasz'#225'ly'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2900,'#39'Kom'#225'rom'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2903,'#39'Kom'#225'rom(Kopp'#225'nymonostor)'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2911,'#39'Mocsa'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2921,'#39'Kom'#225'rom(Sz'#337'ny)'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2931,'#39'Alm'#225'sf'#252'zit'#337#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2941,'#39#193'cs'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2942,'#39'Nagyigm'#225'nd'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2943,'#39'B'#225'bolna'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2944,'#39'Bana'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2945,'#39'T'#225'rk'#225'ny'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2946,'#39'Cs'#233'p'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2947,'#39'Ete'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2948,'#39'Kisigm'#225'nd'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(2949,'#39'Cs'#233'm'#39','#39'Kom'#225'rom-E.'#39'),'
          ''
          ''
          ''
          '(3000,'#39'Hatvan'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3009,'#39'Hatvan(Kerekharaszt)'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3011,'#39'Her'#233'd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3012,'#39'Nagyk'#246'k'#233'nyes'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3013,'#39'Ecs'#233'd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3014,'#39'Hort'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3015,'#39'Cs'#225'ny'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3016,'#39'Boldog'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3021,'#39'L'#337'rinci'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3022,'#39'L'#337'rinci(M'#225'travid'#233'kier'#337'm'#369')'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3023,'#39'Pet'#337'fib'#225'nya'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3024,'#39'L'#337'rinci(Selyp)'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3031,'#39'Zagyvasz'#225'nt'#243#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3032,'#39'Apc'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3033,'#39'R'#243'zsaszentm'#225'rton'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3034,'#39'Sz'#252'csi'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3035,'#39'Gy'#246'ngy'#246'spata'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3036,'#39'Gy'#246'ngy'#246'starj'#225'n'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3041,'#39'H'#233'halom'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3042,'#39'Palot'#225's'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3043,'#39'Egyh'#225'zasdengeleg'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3044,'#39'Szir'#225'k'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3045,'#39'B'#233'r'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3046,'#39'Kisb'#225'gyon'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3047,'#39'Buj'#225'k'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3051,'#39'Szarvasgede'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3052,'#39'Cs'#233'cse'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3053,'#39'Ecseg'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3053,'#39'Koz'#225'rd'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3060,'#39'P'#225'szt'#243#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3063,'#39'Jobb'#225'gyi'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3064,'#39'Szurdokp'#252'sp'#246'ki'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3065,'#39'P'#225'szt'#243'(Hasznos)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3066,'#39'Bokor'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3066,'#39'Cserh'#225'tszentiv'#225'n'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3066,'#39'Kutas'#243#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3067,'#39'Fels'#337'told'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3067,'#39'Gar'#225'b'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3068,'#39'M'#225'trasz'#337'l'#337's'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3069,'#39'Als'#243'told'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3070,'#39'B'#225'tonyterenye'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3071,'#39'B'#225'tonyterenye(Nagyb'#225'tony)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3073,'#39'Tar'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3074,'#39'S'#225'msonh'#225'za'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3075,'#39'Kisb'#225'rk'#225'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3075,'#39'M'#225'rkh'#225'za'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3075,'#39'Nagyb'#225'rk'#225'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3077,'#39'M'#225'travereb'#233'ly'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3078,'#39'B'#225'tonyterenye(Kisterenye)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3082,'#39'P'#225'szt'#243'(M'#225'trakeresztes)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3100,'#39'Salg'#243'tarj'#225'n'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3102,'#39'Salg'#243'tarj'#225'n(Baglyasalja)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3104,'#39'Salg'#243'tarj'#225'n(Zagyvap'#225'lfalva)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3109,'#39'Salg'#243'tarj'#225'n(Salg'#243'b'#225'nya)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3121,'#39'Salg'#243'tarj'#225'n(Somosk'#337#250'jfalu)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3123,'#39'Cered'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3124,'#39'Zabar'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3125,'#39'Szilaspogony'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3126,'#39'B'#225'rna'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3127,'#39'Kaz'#225'r'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3128,'#39'Vizsl'#225's'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3129,'#39'Lucfalva'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3131,'#39'S'#243'sharty'#225'n'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3132,'#39'N'#243'gr'#225'dmegyer'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3133,'#39'Magyarg'#233'c'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3134,'#39'Piliny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3135,'#39'Sz'#233'cs'#233'nyfelfalu'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3136,'#39'Etes'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3137,'#39'Karancsber'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3138,'#39'Ipolytarn'#243'c'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3141,'#39'Salg'#243'tarj'#225'n(Zagyvar'#243'na)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3142,'#39'M'#225'traszele'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3143,'#39'M'#225'tranov'#225'k'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3145,'#39'M'#225'traterenye(Homokterenye)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3146,'#39'M'#225'traterenye(N'#225'd'#250'jfalu)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3147,'#39'Kaz'#225'r(Mizserfa)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3151,'#39'B'#225'tonyterenye(R'#225'k'#243'czitelep)'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3152,'#39'Nemti'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3153,'#39'Dorogh'#225'za'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3154,'#39'Szuha'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3155,'#39'M'#225'tramindszent'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3161,'#39'Kisharty'#225'n'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3162,'#39'S'#225'g'#250'jfalu'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3163,'#39'Karancss'#225'g'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3163,'#39'Szalmatercs'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3165,'#39'Endrefalva'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3170,'#39'Sz'#233'cs'#233'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3175,'#39'Nagyl'#243'c'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3176,'#39'Holl'#243'k'#337#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3177,'#39'Rim'#243'c'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3178,'#39'Vars'#225'ny'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3179,'#39'N'#243'gr'#225'dsipek'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3181,'#39'Karancsalja'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3182,'#39'Karancslapujt'#337#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3183,'#39'Karancskeszi'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3184,'#39'Mih'#225'lygerge'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3185,'#39'Egyh'#225'zasgerge'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3186,'#39'Litke'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3187,'#39'N'#243'gr'#225'dszak'#225'l'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3188,'#39'Lud'#225'nyhal'#225'szi'#39','#39'N'#243'gr'#225'd'#39'),'
          ''
          ''
          ''
          '(3200,'#39'Gy'#246'ngy'#246's'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3211,'#39'Gy'#246'ngy'#246'soroszi'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3212,'#39'Gy'#246'ngy'#246'shal'#225'sz'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3213,'#39'Atk'#225'r'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3214,'#39'Nagyr'#233'de'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3221,'#39'Gy'#246'ngy'#246's(K'#233'kestet'#337')'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3231,'#39'Gy'#246'ngy'#246'ssolymos'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3232,'#39'Gy'#246'ngy'#246's(M'#225'traf'#252'red)'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3233,'#39'Gy'#246'ngy'#246's(M'#225'trah'#225'za)'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3234,'#39'M'#225'traszentimre(Galyatet'#337')'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3235,'#39'M'#225'traszentimre'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3240,'#39'Par'#225'd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3242,'#39'Par'#225'dsasv'#225'r'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3243,'#39'Bodony'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3244,'#39'Par'#225'd(Par'#225'df'#252'rd'#337')'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3245,'#39'Recsk'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3246,'#39'M'#225'traderecske'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3247,'#39'M'#225'traballa'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3248,'#39'Iv'#225'd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3250,'#39'P'#233'terv'#225's'#225'ra'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3252,'#39'Erd'#337'k'#246'vesd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3253,'#39'Istenmezeje'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3254,'#39'V'#225'rasz'#243#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3255,'#39'Fed'#233'mes'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3256,'#39'Kisf'#252'zes'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3257,'#39'B'#252'kkszenterzs'#233'bet'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3258,'#39'Tarnalelesz'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3259,'#39'Szentdomonkos'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3261,'#39'Abas'#225'r'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3262,'#39'Markaz'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3263,'#39'Domoszl'#243#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3264,'#39'Kisn'#225'na'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3265,'#39'V'#233'cs'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3271,'#39'Visonta'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3272,'#39'Visonta(M'#225'traiEr'#337'm'#369')'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3273,'#39'Halmajugra'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3274,'#39'Ludas'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3275,'#39'Detk'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3281,'#39'Kar'#225'csond'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3282,'#39'Nagyf'#252'ged'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3283,'#39'Tarnazsad'#225'ny'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3284,'#39'Tarnam'#233'ra'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3291,'#39'V'#225'mosgy'#246'rk'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3292,'#39'Ad'#225'cs'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3293,'#39'Visznek'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3294,'#39'Tarna'#246'rs'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3295,'#39'Erk'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3296,'#39'Zar'#225'nk'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3300,'#39'Eger'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3304,'#39'Eger(Feln'#233'met)'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3321,'#39'Egerbakta'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3322,'#39'Hevesaranyos'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3323,'#39'Eger(Szarvask'#337')'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3324,'#39'Fels'#337't'#225'rk'#225'ny'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3325,'#39'Noszvaj'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3326,'#39'Ostoros'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3327,'#39'Novaj'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3328,'#39'Egersz'#243'l'#225't'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3331,'#39'Tarnaszentm'#225'ria'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3332,'#39'Sirok'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3334,'#39'Szajla'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3334,'#39'Terpes'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3335,'#39'B'#252'kksz'#233'k'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3336,'#39'B'#225'tor'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3337,'#39'Egerbocs'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3341,'#39'Egercsehi'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3341,'#39'Sz'#250'cs'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3343,'#39'Bek'#246'lce'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3344,'#39'Mik'#243'falva'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3345,'#39'M'#243'nosb'#233'l'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3346,'#39'B'#233'lap'#225'tfalva'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3346,'#39'B'#252'kkszentm'#225'rton'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3347,'#39'Balaton'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3348,'#39'Szilv'#225'sv'#225'rad'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3349,'#39'Nagyvisny'#243#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3350,'#39'K'#225'l'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3351,'#39'Verpel'#233't'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3352,'#39'Feldebr'#337#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3353,'#39'Aldebr'#337#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3354,'#39'T'#243'falu'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3355,'#39'K'#225'polna'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3356,'#39'Kompolt'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3357,'#39'Nagy'#250't'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3358,'#39'Erd'#337'telek'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3359,'#39'Tenk'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3360,'#39'Heves'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3368,'#39'Bocon'#225'd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3369,'#39'Tarnabod'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3371,'#39#193't'#225'ny'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3372,'#39'K'#246'ml'#337#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3373,'#39'Beseny'#337'telek'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3374,'#39'Dorm'#225'nd'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3375,'#39'Mez'#337't'#225'rk'#225'ny'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3377,'#39'Szihalom'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3378,'#39'Mez'#337'szemere'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3379,'#39'Egerfarmos'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3381,'#39'P'#233'ly'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3382,'#39'Tarnaszentmikl'#243's'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3383,'#39'Hevesvezek'#233'ny'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3384,'#39'Kisk'#246're'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3385,'#39'Tiszan'#225'na'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3386,'#39'Sarud'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3387,'#39#218'jl'#337'rincfalva'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3388,'#39'Poroszl'#243#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3390,'#39'F'#252'zesabony'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3394,'#39'Egerszal'#243'k'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3395,'#39'Demj'#233'n'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3396,'#39'Kerecsend'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3397,'#39'Makl'#225'r'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3398,'#39'Nagyt'#225'lya'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3399,'#39'Andornakt'#225'lya'#39','#39'Heves'#39'),'
          ''
          ''
          ''
          '(3400,'#39'Mez'#337'k'#246'vesd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3411,'#39'Szomolya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3412,'#39'Bog'#225'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3413,'#39'Cser'#233'pfalu'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3414,'#39'B'#252'kkzs'#233'rc'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3416,'#39'Tard'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3417,'#39'Cser'#233'pv'#225'ralja'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3418,'#39'Szentistv'#225'n'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3421,'#39'Mez'#337'ny'#225'r'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3422,'#39'B'#252'kk'#225'br'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3423,'#39'Tibolddar'#243'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3424,'#39'K'#225'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3425,'#39'S'#225'ly'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3426,'#39'Borsodgeszt'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3431,'#39'Vatta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3432,'#39'Em'#337'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3433,'#39'Ny'#233'kl'#225'dh'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3434,'#39'M'#225'lyi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3441,'#39'Mez'#337'keresztes'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3442,'#39'Csincse'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3443,'#39'Mez'#337'nagymih'#225'ly'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3444,'#39'Gelej'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3450,'#39'Mez'#337'cs'#225't'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3458,'#39'Tiszakeszi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3459,'#39'Igrici'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3461,'#39'Egerl'#246'v'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3462,'#39'Borsodiv'#225'nka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3463,'#39'N'#233'gyes'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3464,'#39'Tiszavalk'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3465,'#39'Tiszab'#225'bolna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3466,'#39'Tiszadorogma'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3467,'#39#193'rokt'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3500,'#39'Miskolc'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3508,'#39'Miskolc(Hej'#337'csaba)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3510,'#39'Miskolc(B'#252'kkszentl'#225'szl'#243')'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3515,'#39'Miskolc(Egyetemv'#225'ros)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3516,'#39'Miskolc(G'#246'r'#246'mb'#246'ly)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3517,'#39'Miskolc(Lillaf'#252'red)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3518,'#39'Miskolc(Pereces)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3519,'#39'Miskolc(Tapolcaf'#252'rd'#337')'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3521,'#39'Miskolc(Szirma)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3551,'#39#211'nod'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3552,'#39'Muhi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3553,'#39'Kistokaj'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3554,'#39'B'#252'kkaranyos'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3555,'#39'Hars'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3556,'#39'Kisgy'#337'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3557,'#39'B'#252'kkszentkereszt'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3559,'#39'R'#233'p'#225'shuta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3561,'#39'Fels'#337'zsolca'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3562,'#39'Onga'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3563,'#39'Hern'#225'dkak'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3564,'#39'Hern'#225'dn'#233'meti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3565,'#39'Tiszal'#250'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3571,'#39'Als'#243'zsolca'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3572,'#39'Saj'#243'l'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3573,'#39'Saj'#243'petri'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3574,'#39'B'#337'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3575,'#39'Berz'#233'k'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3576,'#39'Saj'#243'hidv'#233'g'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3577,'#39'K'#246'r'#246'm'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3578,'#39'Girincs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3578,'#39'Kiscs'#233'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3579,'#39'Keszny'#233'ten'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3580,'#39'Tisza'#250'jv'#225'ros'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3586,'#39'Saj'#243#246'r'#246's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3587,'#39'Tiszapalkonya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3588,'#39'Hej'#337'k'#252'rt'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3589,'#39'Tiszatarj'#225'n'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3591,'#39'Oszl'#225'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3592,'#39'Nemesbikk'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3593,'#39'Hej'#337'b'#225'ba'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3594,'#39'Hej'#337'papi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3595,'#39'Hej'#337'szalonta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3596,'#39'Szak'#225'ld'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3597,'#39'Hej'#337'kereszt'#250'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3598,'#39'Nagycs'#233'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3599,'#39'Saj'#243'sz'#246'ged'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3600,'#39#211'zd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3603,'#39#211'zd(Saj'#243'v'#225'rkony)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3604,'#39#211'zd(B'#225'nsz'#225'll'#225's)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3608,'#39#211'zd(Farkaslyuk-b'#225'nyatelep)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3621,'#39#211'zd(Uraj)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3622,'#39'Uppony'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3623,'#39'Borsodszentgy'#246'rgy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3625,'#39#211'zd(Szentsimon)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3626,'#39'Hangony'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3627,'#39'Domah'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3627,'#39'Kissik'#225'tor'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3630,'#39'Putnok'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3635,'#39'Dubics'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3636,'#39'Saj'#243'galg'#243'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3636,'#39'Vadna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3641,'#39'Nagybarca'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3642,'#39'B'#225'nhorv'#225'ti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3643,'#39'D'#233'destapolcs'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3644,'#39'Tardona'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3645,'#39'M'#225'lyinka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3646,'#39'Nek'#233'zseny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3647,'#39'Csokvaom'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3648,'#39'B'#252'kkmogyor'#243'sd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3648,'#39'Csernely'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3648,'#39'L'#233'n'#225'rddar'#243'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3651,'#39#211'zd(Center)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3652,'#39'Saj'#243'n'#233'meti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3653,'#39'Saj'#243'p'#252'sp'#246'ki'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3654,'#39'B'#225'nr'#233've'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3655,'#39'H'#233't'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3656,'#39'Saj'#243'mercse'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3656,'#39'Saj'#243'velezd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3657,'#39'Kir'#225'ld'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3658,'#39'Borsodb'#243'ta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3659,'#39'S'#225'ta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3661,'#39#211'zd(H'#243'doscs'#233'p'#225'ny)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3662,'#39#211'zd(Soms'#225'lyb'#225'nya)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3663,'#39'Arl'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3664,'#39'J'#225'rd'#225'nh'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3671,'#39'Borsodn'#225'dasd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3672,'#39'Borsodn'#225'dasd(Lemezgy'#225'r)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3700,'#39'Kazincbarcika'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3704,'#39'Kazincbarcika(Berente)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3711,'#39'Szirmabeseny'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3712,'#39'Saj'#243'senye'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3712,'#39'Saj'#243'v'#225'mos'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3713,'#39'Arn'#243't'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3714,'#39'Saj'#243'p'#225'lfala'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3715,'#39'Gesztely'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3716,'#39'S'#243'st'#243'falva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3716,'#39#218'jcsan'#225'los'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3717,'#39'Als'#243'dobsza'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3718,'#39'Megyasz'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3720,'#39'Saj'#243'iv'#225'nka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3720,'#39'Saj'#243'kaza'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3721,'#39'D'#246'v'#233'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3721,'#39'Fels'#337'ny'#225'r'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3721,'#39'J'#225'kfalva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3722,'#39'Fels'#337'kelecs'#233'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3723,'#39'Zubogy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3724,'#39'Imola'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3724,'#39'Rag'#225'ly'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3724,'#39'Trizs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3726,'#39'Als'#243'szuha'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3726,'#39'Szuhaf'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3726,'#39'Z'#225'dorfalva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3728,'#39'G'#246'm'#246'rsz'#337'l'#337's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3728,'#39'Kelem'#233'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3729,'#39'Ser'#233'nyfalva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3731,'#39'Szuhak'#225'll'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3732,'#39'Kurity'#225'n'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3733,'#39'Rudab'#225'nya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3734,'#39'Szuhogy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3735,'#39'Als'#243'telekes'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3735,'#39'Fels'#337'telekes'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3735,'#39'K'#225'n'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3741,'#39'Izs'#243'falva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3742,'#39'Rudolftelep'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3743,'#39'Ormosb'#225'nya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3744,'#39'M'#250'csony'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3751,'#39'Szendr'#337'l'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3752,'#39'Galv'#225'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3752,'#39'Szendr'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3753,'#39'Abod'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3754,'#39'Meszes'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3754,'#39'Szalonna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3755,'#39'Martonyi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3756,'#39'Perkupa'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3756,'#39'Varb'#243'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3757,'#39#201'gersz'#246'g'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3757,'#39'Sz'#337'l'#337'sard'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3757,'#39'Teresztenye'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3758,'#39'J'#243'svaf'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3759,'#39'Aggtelek'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3761,'#39'Szin'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3761,'#39'Szinpetri'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3761,'#39'Tornak'#225'polna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3762,'#39'Sz'#246'gliget'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3763,'#39'B'#243'dvaszilas'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3764,'#39'B'#243'dvar'#225'k'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3765,'#39'Komj'#225'ti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3765,'#39'Tornabarakony'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3765,'#39'Tornaszentandr'#225's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3767,'#39'Tornan'#225'daska'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3768,'#39'Becskeh'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3768,'#39'B'#243'dvalenke'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3768,'#39'Hidv'#233'gard'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3769,'#39'Tornaszentjakab'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3770,'#39'Saj'#243'szentp'#233'ter'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3773,'#39'Saj'#243'k'#225'polna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3773,'#39'Saj'#243'l'#225'szl'#243'falva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3775,'#39'Kond'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3776,'#39'Radosty'#225'n'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3777,'#39'Parasznya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3778,'#39'Varb'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3779,'#39'Alacska'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3780,'#39'Balajt'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3780,'#39'Damak'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3780,'#39'Edel'#233'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3780,'#39'L'#225'dbeseny'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3783,'#39'Edel'#233'ny(Finke)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3786,'#39'Hegymeg'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3786,'#39'Irota'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3786,'#39'Lak'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3786,'#39'Szak'#225'csi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3787,'#39'Tomor'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3791,'#39'Saj'#243'kereszt'#250'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3792,'#39'Saj'#243'b'#225'bony'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3793,'#39'Saj'#243'ecseg'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3794,'#39'Boldva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3794,'#39'Ziliz'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3795,'#39'Hang'#225'cs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3795,'#39'Nyom'#225'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3796,'#39'Borsodszir'#225'k'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3800,'#39'Sziksz'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3809,'#39'Aba'#250'jszolnok'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3809,'#39'Ny'#233'sta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3809,'#39'Selyeb'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3811,'#39'Als'#243'vad'#225'sz'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3812,'#39'Homrogd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3812,'#39'Monaj'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3813,'#39'Kupa'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3814,'#39'Fels'#337'vad'#225'sz'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3815,'#39'Aba'#250'jlak'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3815,'#39'Gadna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3816,'#39'Gagyvend'#233'gi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3817,'#39'Gagyb'#225'tor'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'B'#252'tt'#246's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'K'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'Kereszt'#233'te'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'Krasznokvajda'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'Paml'#233'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'Perecse'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3821,'#39'Sz'#225'szfa'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3825,'#39'Debr'#233'te'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3825,'#39'Rakaca'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3825,'#39'Viszl'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3826,'#39'Rakacaszend'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3831,'#39'K'#225'zsm'#225'rk'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3832,'#39'L'#233'h'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3833,'#39'R'#225'sonys'#225'pberencs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3834,'#39'Beret'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3834,'#39'Detek'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3836,'#39'Baktak'#233'k'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3837,'#39'Als'#243'gagy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3837,'#39'Cseny'#233'te'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3837,'#39'Fels'#337'gagy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3837,'#39'Gagyap'#225'ti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3841,'#39'Aszal'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3842,'#39'Halmaj'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3843,'#39'Kiskinizs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3844,'#39'Nagykinizs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3844,'#39'Szentistv'#225'nbaksa'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3846,'#39'Hern'#225'dk'#233'rcs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3847,'#39'Fels'#337'dobsza'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3848,'#39'Csob'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3849,'#39'Forr'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3851,'#39'In'#225'ncs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3852,'#39'Hern'#225'dszentandr'#225's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3853,'#39'Hern'#225'db'#252'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3853,'#39'Pere'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3854,'#39'Encs(Gib'#225'rt)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3855,'#39'Fancsal'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3860,'#39'Encs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3863,'#39'Szalaszend'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3864,'#39'Ful'#243'k'#233'rcs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3865,'#39'F'#225'j'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3866,'#39'Litka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3866,'#39'Szemere'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3871,'#39'M'#233'ra'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3872,'#39'Novajidr'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3873,'#39'Garadna'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3874,'#39'Hern'#225'dpetri'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3874,'#39'Hern'#225'dv'#233'cse'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3874,'#39'Pusztaradv'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3875,'#39'Hern'#225'dszurdok'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3876,'#39'Hidasn'#233'meti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3877,'#39'Tornyosn'#233'meti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3881,'#39'Aba'#250'jsz'#225'nt'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3881,'#39'Bask'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3881,'#39'Sima'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3882,'#39'Aba'#250'jalp'#225'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3882,'#39'Aba'#250'jk'#233'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3884,'#39'Boldogk'#337#250'jfalu'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3885,'#39'Arka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3885,'#39'Boldogk'#337'v'#225'ralja'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3886,'#39'Korl'#225't'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3887,'#39'Hern'#225'dc'#233'ce'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3888,'#39'Vizsoly'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3891,'#39'Vilm'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3892,'#39'Hejce'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3893,'#39'Fony'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3893,'#39'Mogyor'#243'ska'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3893,'#39'Reg'#233'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3894,'#39'G'#246'ncruszka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3895,'#39'G'#246'nc'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3896,'#39'Telkib'#225'nya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3897,'#39'Zsujta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3898,'#39'Aba'#250'jv'#225'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3898,'#39'P'#225'nyok'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3899,'#39'K'#233'ked'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3900,'#39'Szerencs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3903,'#39'Bekecs'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3904,'#39'Legyesb'#233'nye'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3905,'#39'Monok'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3906,'#39'Golop'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3907,'#39'T'#225'llya'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3908,'#39'R'#225'tka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3909,'#39'M'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3910,'#39'Tokaj'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3915,'#39'Tarcal'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3916,'#39'Bodrogkereszt'#250'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3917,'#39'Bodrogkisfalud'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3918,'#39'Szegi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3918,'#39'Szegilong'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3921,'#39'Taktaszada'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3922,'#39'Taktahark'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3923,'#39'Gesztely('#218'jharangod)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3924,'#39'Taktaken'#233'z'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3925,'#39'Pr'#252'gy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3926,'#39'Taktab'#225'j'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3927,'#39'Csobaj'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3928,'#39'Tiszatardos'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3929,'#39'Tiszalad'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3931,'#39'Mez'#337'zombor'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3932,'#39'Erd'#337'b'#233'nye'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3933,'#39'Olaszliszka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3934,'#39'Tolcsva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3935,'#39'Erd'#337'horv'#225'ti'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3936,'#39'H'#225'romhuta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3937,'#39'Koml'#243'ska'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3941,'#39'V'#225'mos'#250'jfalu'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3942,'#39'S'#225'razsad'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3943,'#39'Bodrogolaszi'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3944,'#39'S'#225'toralja'#250'jhely(K'#225'rolyfalva)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3945,'#39'S'#225'toralja'#250'jhely(Rudab'#225'ny'#225'cska)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3950,'#39'S'#225'rospatak'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3952,'#39'S'#225'rospatak(V'#233'gard'#243')'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3954,'#39'Gy'#246'rgytarl'#243#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3955,'#39'Ken'#233'zl'#337#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3956,'#39'Viss'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3957,'#39'Zalkod'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3958,'#39'Hercegk'#250't'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3959,'#39'Makkoshotyka'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3961,'#39'Vajd'#225'cska'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3962,'#39'Karos'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3963,'#39'Karcsa'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3964,'#39'P'#225'cin'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3965,'#39'Kisrozv'#225'gy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3965,'#39'Nagyrozv'#225'gy'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3967,'#39'L'#225'cacs'#233'ke'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3971,'#39'Tiszakar'#225'd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3972,'#39'Tiszacsermely'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3973,'#39'Cig'#225'nd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3974,'#39'Ricse'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3974,'#39'Semj'#233'n'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3976,'#39'R'#233'vle'#225'nyv'#225'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3977,'#39'Zempl'#233'nag'#225'rd'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3978,'#39'D'#225'm'#243'c'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3980,'#39'S'#225'toralja'#250'jhely'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3985,'#39'Als'#243'berecki'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3985,'#39'Fels'#337'berecki'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3987,'#39'Bodroghalom'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3988,'#39'S'#225'toralja'#250'jhely(Sz'#233'phalom)'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3989,'#39'Als'#243'regmec'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3989,'#39'Fels'#337'regmec'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3989,'#39'Mik'#243'h'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3991,'#39'Vilyvit'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3992,'#39'Kov'#225'csv'#225'g'#225's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3992,'#39'V'#225'g'#225'shuta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3993,'#39'F'#252'z'#233'rradv'#225'ny'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3994,'#39'B'#243'zsva'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3994,'#39'Filkeh'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3994,'#39'F'#252'z'#233'rkajata'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3994,'#39'Kishuta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3994,'#39'Nagyhuta'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3994,'#39'P'#225'lh'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3995,'#39'Pusztafalu'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3996,'#39'F'#252'z'#233'r'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3997,'#39'F'#252'z'#233'rkoml'#243's'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3998,'#39'Ny'#237'ri'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(3999,'#39'Holl'#243'h'#225'za'#39','#39'Borsod-A.-Z.'#39'),'
          ''
          ''
          ''
          '(4000,'#39'Debrecen'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4060,'#39'Balmaz'#250'jv'#225'ros'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4063,'#39'Debrecen(Nagymacs)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4064,'#39'Nagyhegyes'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4065,'#39#218'jszentmargita'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4066,'#39'Tiszacsege'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4067,'#39'Egyek(Telekh'#225'za)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4069,'#39'Egyek'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4071,'#39'Hortob'#225'gy'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4074,'#39'Hajd'#250'b'#246'sz'#246'rm'#233'ny(Nagypr'#243'd)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4075,'#39'G'#246'rbeh'#225'za'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4078,'#39'Debrecen(Hal'#225'p)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4079,'#39'Debrecen(B'#225'nk)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4080,'#39'Hajd'#250'n'#225'n'#225's'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4085,'#39'Hajd'#250'n'#225'n'#225's(Tedej)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4086,'#39'Hajd'#250'b'#246'sz'#246'rm'#233'ny(Hajd'#250'vid)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4087,'#39'Hajd'#250'dorog'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4090,'#39'Foly'#225's'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4090,'#39'Polg'#225'r'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4096,'#39#218'jtikos'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4097,'#39'Tiszagyulah'#225'za'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4100,'#39'Beretty'#243#250'jfalu'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4103,'#39'Beretty'#243#250'jfalu(Beretty'#243'szentm'#225'rton)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4110,'#39'Biharkeresztes'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4114,'#39'Bojt'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4115,'#39#193'rt'#225'nd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4116,'#39'Berekb'#246'sz'#246'rm'#233'ny'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4117,'#39'Told'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4118,'#39'Mez'#337'peterd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4119,'#39'V'#225'ncsod'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4121,'#39'Szentp'#233'terszeg'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4122,'#39'G'#225'borj'#225'n'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4123,'#39'Hencida'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4124,'#39'Eszt'#225'r'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4125,'#39'Pocsaj'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4126,'#39'Kismarja'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4127,'#39'Nagykereki'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4128,'#39'Bed'#337#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4130,'#39'Derecske'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4132,'#39'T'#233'pe'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4133,'#39'Kony'#225'r'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4134,'#39'Mez'#337'sas'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4135,'#39'K'#246'r'#246'sszegap'#225'ti'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4136,'#39'K'#246'r'#246'sszak'#225'l'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4137,'#39'Magyarhomorog'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4138,'#39'Kom'#225'di'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4141,'#39'Furta'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4142,'#39'Zs'#225'ka'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4143,'#39'Vekerd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4144,'#39'Darvas'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4145,'#39'Cs'#246'km'#337#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4146,'#39#218'jir'#225'z'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4150,'#39'P'#252'sp'#246'klad'#225'ny'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4161,'#39'B'#225'r'#225'nd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4162,'#39'Szerep(Hossz'#250'h'#225't)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4163,'#39'Szerep'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4164,'#39'Bakonszeg'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4171,'#39'S'#225'rr'#233'tudvari'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4172,'#39'Biharnagybajom'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4173,'#39'Nagyr'#225'b'#233#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4174,'#39'Bihartorda'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4175,'#39'Bihardancsh'#225'za'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4176,'#39'S'#225'p'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4177,'#39'F'#246'ldes'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4181,'#39'N'#225'dudvar'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4183,'#39'Kaba'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4184,'#39'Tet'#233'tlen'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4200,'#39'Hajd'#250'szoboszl'#243#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4211,'#39'Ebes'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4212,'#39'Hajd'#250'szov'#225't'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4220,'#39'Hajd'#250'b'#246'sz'#246'rm'#233'ny'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4224,'#39'Hajd'#250'b'#246'sz'#246'rm'#233'ny(Bodasz'#337'l'#337')'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4225,'#39'Debrecen(J'#243'zsa)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4231,'#39'B'#246'k'#246'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4232,'#39'Geszter'#233'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4233,'#39'Balk'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4234,'#39'Szakoly'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4235,'#39'Biri'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4241,'#39'Bocskaikert'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4242,'#39'Hajd'#250'hadh'#225'z'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4243,'#39'T'#233'gl'#225's'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4244,'#39#218'jfeh'#233'rt'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4245,'#39#201'rpatak'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4246,'#39'Ny'#237'regyh'#225'za(Butykatelep)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4251,'#39'Hajd'#250's'#225'mson'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4252,'#39'Ny'#237'radony(Tam'#225'sipuszta)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4253,'#39'Ny'#237'radony(Aradv'#225'nypuszta)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4254,'#39'Ny'#237'radony'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4262,'#39'Ny'#237'racs'#225'd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4263,'#39'Ny'#237'rm'#225'rtonfalva'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4264,'#39'Ny'#237'r'#225'br'#225'ny'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4266,'#39'F'#252'l'#246'p'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4267,'#39'Pen'#233'szlek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4271,'#39'Mikep'#233'rcs'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4272,'#39'S'#225'r'#225'nd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4273,'#39'Hajd'#250'bagos'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4274,'#39'Hossz'#250'p'#225'lyi'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4275,'#39'Monostorp'#225'lyi'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4281,'#39'L'#233'tav'#233'rtes(Nagyl'#233'ta)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4283,'#39'L'#233'tav'#233'rtes(V'#233'rtes)'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4284,'#39'Kokad'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4285,'#39#193'lmosd'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4286,'#39'Bagam'#233'r'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4287,'#39'V'#225'mosp'#233'rcs'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4288,'#39#218'jl'#233'ta'#39','#39'Hajd'#250'-B.'#39'),'
          ''
          ''
          ''
          '(4300,'#39'Ny'#237'rb'#225'tor'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4311,'#39'Ny'#237'rgyulaj'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4320,'#39'Nagyk'#225'll'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4324,'#39'K'#225'll'#243'semj'#233'n'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4325,'#39'Kisl'#233'ta'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4326,'#39'M'#225'riap'#243'cs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4327,'#39'P'#243'cspetri'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4331,'#39'Ny'#237'rcs'#225'sz'#225'ri'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4332,'#39'Ny'#237'rderzs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4333,'#39'Ny'#237'rk'#225'ta'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4334,'#39'Hod'#225'sz'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4335,'#39'K'#225'ntorj'#225'nosi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4336,'#39#336'r'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4337,'#39'J'#225'rmi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4338,'#39'Papos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4341,'#39'Ny'#237'rvasv'#225'ri'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4342,'#39'Terem'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4343,'#39'B'#225'torliget'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4351,'#39'V'#225'llaj'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4352,'#39'M'#233'rk'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4353,'#39'Tiborsz'#225'll'#225's'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4354,'#39'F'#225'bi'#225'nh'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4355,'#39'Nagyecsed'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4356,'#39'Ny'#237'rcsaholy'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4361,'#39'Ny'#237'rbog'#225't'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4362,'#39'Ny'#237'rgelse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4363,'#39'Ny'#237'rmih'#225'lydi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4371,'#39'Ny'#237'rlugos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4372,'#39'Ny'#237'rb'#233'ltek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4373,'#39#214'mb'#246'ly'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4374,'#39'Encsencs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4375,'#39'Piricse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4376,'#39'Ny'#237'rpilis'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4400,'#39'Ny'#237'regyh'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4405,'#39'Ny'#237'regyh'#225'za(Borb'#225'nya)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4431,'#39'Ny'#237'regyh'#225'za(S'#243'st'#243'f'#252'rd'#337')'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4432,'#39'Ny'#237'regyh'#225'za(Ny'#237'rsz'#337'l'#337's)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4433,'#39'Ny'#237'regyh'#225'za(Fels'#337'sima)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4434,'#39'K'#225'lm'#225'nh'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4440,'#39'Tiszavasv'#225'ri'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4445,'#39'Nagycserkesz'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4446,'#39'Tiszaeszl'#225'r(Bashalom)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4447,'#39'Tiszal'#246'k(Kisf'#225'stanya)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4450,'#39'Tiszal'#246'k'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4455,'#39'Tiszadada'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4456,'#39'Tiszadob'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4461,'#39'Ny'#237'rtelek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4463,'#39'Tiszanagyfalu'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4464,'#39'Tiszaeszl'#225'r'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4465,'#39'Rakamaz'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4466,'#39'Tim'#225'r'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4467,'#39'Szabolcs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4468,'#39'Balsa'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4471,'#39'G'#225'vavencsell'#337'(G'#225'va)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4472,'#39'G'#225'vavencsell'#337'(Vencsell'#337')'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4474,'#39'Tiszabercel'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4475,'#39'Paszab'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4481,'#39'Ny'#237'regyh'#225'za(S'#243'st'#243'hegy)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4482,'#39'K'#243'taj'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4483,'#39'Buj'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4484,'#39'Ibr'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4485,'#39'Nagyhal'#225'sz'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4486,'#39'Tiszatelek(K'#233't'#233'rk'#246'z)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4487,'#39'Tiszatelek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4488,'#39'Beszterec'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4491,'#39#218'jdombr'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4492,'#39'Dombr'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4493,'#39'Tiszakany'#225'r'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4494,'#39'K'#233'kcse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4495,'#39'D'#246'ge'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4496,'#39'Szabolcsveresmart'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4501,'#39'Kemecse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4502,'#39'Vasmegyer'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4503,'#39'Tiszar'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4511,'#39'Ny'#237'rbogd'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4515,'#39'K'#233'k'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4516,'#39'Demecser'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4517,'#39'G'#233'g'#233'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4521,'#39'Berkesz'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4522,'#39'Ny'#237'rtass'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4523,'#39'P'#225'troha'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4524,'#39'Ajak'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4525,'#39'R'#233'tk'#246'zberencs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4531,'#39'Ny'#237'rpazony'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4532,'#39'Ny'#237'rtura'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4533,'#39'S'#233'ny'#337#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4534,'#39'Sz'#233'kely'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4535,'#39'Ny'#237'ribrony'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4536,'#39'Ramocsah'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4537,'#39'Ny'#237'rk'#233'rcs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4541,'#39'Ny'#237'rj'#225'k'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4542,'#39'Petneh'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4543,'#39'Laskod'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4544,'#39'Ny'#237'rkar'#225'sz'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4545,'#39'Gyulah'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4546,'#39'Anarcs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4547,'#39'Szabolcsb'#225'ka'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4551,'#39'Ny'#237'regyh'#225'za(Oros)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4552,'#39'Napkor'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4553,'#39'Apagy'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4554,'#39'Ny'#237'rt'#233't'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4555,'#39'Levelek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4556,'#39'Magy'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4557,'#39'Beseny'#337'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4558,'#39#211'feh'#233'rt'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4561,'#39'Baktal'#243'r'#225'nth'#225'za'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4562,'#39'Vaja'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4563,'#39'Rohod'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4564,'#39'Ny'#237'rmada'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4565,'#39'Pusztadobos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4566,'#39'Ilk'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4567,'#39'Gemzse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4600,'#39'Kisv'#225'rda'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4611,'#39'J'#233'ke'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4621,'#39'F'#233'nyeslitke'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4622,'#39'Komor'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4623,'#39'Tuzs'#233'r'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4624,'#39'Tiszabezd'#233'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4625,'#39'Gy'#337'r'#246'cske'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4625,'#39'Z'#225'hony'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4627,'#39'Zsurk'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4628,'#39'Tiszaszentm'#225'rton'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4631,'#39'Pap'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4632,'#39'Ny'#237'rl'#246'v'#337#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4633,'#39'L'#246'v'#337'petri'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4634,'#39'Aranyosap'#225'ti'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4635,'#39#218'jken'#233'z'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4641,'#39'Mez'#337'lad'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4642,'#39'Tornyosp'#225'lca'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4643,'#39'Benk'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4644,'#39'M'#225'ndok'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4645,'#39'Tiszamogyor'#243's'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4646,'#39'Eperjeske'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4700,'#39'M'#225't'#233'szalka'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4721,'#39'Szamosk'#233'r'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4722,'#39'Ny'#237'rmeggyes'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4731,'#39'Tunyogmatolcs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4732,'#39'C'#233'g'#233'nyd'#225'ny'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4733,'#39'Gy'#252'gye'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4734,'#39'Szamos'#250'jlak'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4735,'#39'Herm'#225'nszeg'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4735,'#39'Szamoss'#225'lyi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4737,'#39'Darn'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4737,'#39'Kisnam'#233'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4741,'#39'J'#225'nkmajtis'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4742,'#39'Cseg'#246'ld'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4743,'#39'Csengersima'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4745,'#39'Szamosbecs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4746,'#39'Szamostat'#225'rfalva'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4751,'#39'Kocsord'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4752,'#39'Gy'#337'rtelek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4754,'#39'F'#252'lp'#246'sdar'#243'c'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4754,'#39'G'#233'berj'#233'n'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4755,'#39#214'k'#246'rit'#243'f'#252'lp'#246's'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4756,'#39'R'#225'polt'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4761,'#39'Porcsalma'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4762,'#39'Tyukod'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4763,'#39'Ura'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4764,'#39'Csenger'#250'jfalu'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4765,'#39'Csenger'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4765,'#39'Koml'#243'dt'#243'tfalu'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4766,'#39'P'#225'tyod'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4767,'#39'Szamosangyalos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4800,'#39'V'#225's'#225'rosnam'#233'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4803,'#39'V'#225's'#225'rosnam'#233'ny(Gergelyiugornya)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4804,'#39'V'#225's'#225'rosnam'#233'ny(Vitka)'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4811,'#39'Kisvars'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4812,'#39'Nagyvars'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4813,'#39'Gy'#252're'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4821,'#39#211'p'#225'lyi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4822,'#39'Ny'#237'rparasznya'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4823,'#39'Nagydobos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4824,'#39'Szamosszeg'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4826,'#39'Olcsva'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4831,'#39'Tiszaszalka'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4832,'#39'Tiszavid'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4833,'#39'Tiszaadony'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4834,'#39'Tiszakerecseny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4835,'#39'M'#225'tyus'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4836,'#39'L'#243'nya'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4841,'#39'J'#225'nd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4842,'#39'Gul'#225'cs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4843,'#39'Hetefej'#233'rcse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4844,'#39'Csaroda'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4845,'#39'T'#225'kos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4900,'#39'Feh'#233'rgyarmat'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4911,'#39'N'#225'br'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4912,'#39'K'#233'rsemj'#233'n'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4913,'#39'Panyola'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4914,'#39'Olcsvaap'#225'ti'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4921,'#39'Kisar'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4921,'#39'Tivadar'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4922,'#39'Nagyar'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4931,'#39'Tarpa'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4932,'#39'M'#225'rokpapi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4933,'#39'Beregsur'#225'ny'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4934,'#39'Beregdar'#243'c'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4935,'#39'Gel'#233'nes'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4936,'#39'V'#225'mosatya'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4937,'#39'Barab'#225's'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4941,'#39'Penyige'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4942,'#39'M'#225'nd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4942,'#39'Nemesborzova'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4943,'#39'K'#246'm'#246'r'#337#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4944,'#39'T'#250'ristv'#225'ndi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4945,'#39'Szatm'#225'rcseke'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4946,'#39'Tiszak'#243'r'#243'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4947,'#39'Tiszacs'#233'cse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4948,'#39'Milota'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4951,'#39'Tiszabecs'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4952,'#39'Uszka'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4953,'#39'Magosliget'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4954,'#39'Sonk'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4955,'#39'Botpal'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4956,'#39'Kispal'#225'd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4961,'#39'Zsaroly'#225'n'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4962,'#39'Nagyszekeres'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4963,'#39'Kisszekeres'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4964,'#39'F'#252'lesd'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4965,'#39'K'#246'lcse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4966,'#39'V'#225'mosoroszi'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4967,'#39'Csaholc'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4968,'#39'T'#250'rricse'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4969,'#39'Tisztaberek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4971,'#39'Rozs'#225'ly'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4972,'#39'Gacs'#225'ly'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4973,'#39'Cs'#225'szl'#243#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4974,'#39'Zajta'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4975,'#39'M'#233'htelek'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4976,'#39'Garbolc'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4977,'#39'Kish'#243'dos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(4977,'#39'Nagyh'#243'dos'#39','#39'Szabolcs.-Sz.-B.'#39'),'
          ''
          ''
          ''
          '(5000,'#39'Szolnok'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5008,'#39'Szolnok(Szandasz'#337'l'#337's)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5051,'#39'Zagyvar'#233'kas'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5052,'#39#218'jsz'#225'sz'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5053,'#39'Sz'#225'szberek'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5054,'#39'J'#225'szals'#243'szentgy'#246'rgy'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5055,'#39'J'#225'szlad'#225'ny'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5061,'#39'Tiszas'#252'ly'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5062,'#39'K'#337'telek'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5063,'#39'Hunyadfalva'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5064,'#39'Csatasz'#246'g'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5065,'#39'Nagyk'#246'r'#369#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5071,'#39'Besenysz'#246'g'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5081,'#39'Szajol'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5082,'#39'Tiszateny'#337#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5083,'#39'Kengyel'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5084,'#39'R'#225'k'#243'czi'#250'jfalu'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5085,'#39'R'#225'k'#243'czifalva'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5091,'#39'T'#243'szeg'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5092,'#39'Tiszav'#225'rkony'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5093,'#39'Vezseny'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5094,'#39'Tiszajen'#337#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5100,'#39'J'#225'szber'#233'ny'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5111,'#39'J'#225'szfels'#337'szentgy'#246'rgy'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5121,'#39'J'#225'szj'#225'k'#243'halma'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5122,'#39'J'#225'szd'#243'zsa'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5123,'#39'J'#225'sz'#225'roksz'#225'll'#225's'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5124,'#39'J'#225'sz'#225'g'#243#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5125,'#39'Pusztamonostor'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5126,'#39'J'#225'szf'#233'nyszaru'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5130,'#39'J'#225'szap'#225'ti'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5135,'#39'J'#225'sziv'#225'ny'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5136,'#39'J'#225'szszentandr'#225's'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5137,'#39'J'#225'szkis'#233'r'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5141,'#39'J'#225'sztelek'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5142,'#39'Alatty'#225'n'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5143,'#39'J'#225'noshida'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5144,'#39'J'#225'szboldogh'#225'za'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5152,'#39'J'#225'szber'#233'ny(Portelek)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5200,'#39'T'#246'r'#246'kszentmikl'#243's'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5211,'#39'Tiszap'#252'sp'#246'ki'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5212,'#39'T'#246'r'#246'kszentmikl'#243's(Surj'#225'ny)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5213,'#39'Fegyvernek(Szap'#225'rfalu)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5222,'#39#214'rm'#233'nyes'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5231,'#39'Fegyvernek'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5232,'#39'Tiszab'#337#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5233,'#39'Tiszagyenda'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5234,'#39'Tiszaroff'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5235,'#39'Tiszabura'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5241,'#39'Ab'#225'dszal'#243'k'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5243,'#39'Tiszaderzs'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5244,'#39'Tiszaf'#252'red(Tiszasz'#337'l'#337's)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5300,'#39'Karcag'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5309,'#39'Berekf'#252'rd'#337#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5310,'#39'Kis'#250'jsz'#225'll'#225's'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5321,'#39'Kunmadaras'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5322,'#39'Tiszaszentimre'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5323,'#39'Tiszaszentimre('#218'jszentgy'#246'rgy)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5324,'#39'Tomajmonostora'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5331,'#39'Kenderes'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5340,'#39'Kunhegyes'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5349,'#39'Kenderes(B'#225'nhalma)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5350,'#39'Tiszaf'#252'red'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5358,'#39'Tiszaf'#252'red(Tisza'#246'rv'#233'ny)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5359,'#39'Tiszaf'#252'red(K'#243'cs'#250'jfalu)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5361,'#39'Tiszaigar'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5362,'#39'Tisza'#246'rs'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5363,'#39'Nagyiv'#225'n'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5400,'#39'Mez'#337't'#250'r'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5411,'#39'K'#233'tp'#243#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5412,'#39'Kuncsorba'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5420,'#39'T'#250'rkeve'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5430,'#39'Tiszaf'#246'ldv'#225'r'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5435,'#39'Martf'#369#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5440,'#39'Kunszentm'#225'rton'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5449,'#39'Kunszentm'#225'rton(Kungyalu)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5451,'#39#214'cs'#246'd'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5452,'#39'Mestersz'#225'll'#225's'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5453,'#39'Mez'#337'h'#233'k'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5461,'#39'Tiszaf'#246'ldv'#225'r(Homok)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5462,'#39'Cibakh'#225'za'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5463,'#39'Nagyr'#233'v'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5464,'#39'Tiszainoka'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5465,'#39'Cserkesz'#337'l'#337#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5471,'#39'Tiszak'#252'rt'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5472,'#39'Tiszak'#252'rt(Bogaras)'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5473,'#39'Tiszaug'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5474,'#39'Tiszasas'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5475,'#39'Cs'#233'pa'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5476,'#39'Szelev'#233'ny'#39','#39'J'#225'sz-N.-Sz.'#39'),'
          ''
          ''
          ''
          '(5500,'#39'Gyomaendr'#337'd(Gyoma)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5502,'#39'Gyomaendr'#337'd(Endr'#337'd)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5510,'#39'D'#233'vav'#225'nya'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5515,'#39'Ecsegfalva'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5516,'#39'K'#246'r'#246'slad'#225'ny'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5520,'#39'Szeghalom'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5525,'#39'F'#252'zesgyarmat'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5526,'#39'Kert'#233'szsziget'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5527,'#39'Bucsa'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5530,'#39'V'#233'szt'#337#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5534,'#39'Ok'#225'ny'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5536,'#39'K'#246'r'#246's'#250'jfalu'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5537,'#39'Zsad'#225'ny'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5538,'#39'Biharugra'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5539,'#39'K'#246'r'#246'snagyhars'#225'ny'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5540,'#39'Szarvas'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5551,'#39'Csabacs'#369'd'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5552,'#39'Kardos'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5553,'#39'Kondoros'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5555,'#39'Hunya'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5556,'#39#214'rm'#233'nyk'#250't'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5561,'#39'B'#233'k'#233'sszentandr'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5600,'#39'B'#233'k'#233'scsaba'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5609,'#39'Csabaszabadi'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5621,'#39'Cs'#225'rdasz'#225'll'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5622,'#39'K'#246'r'#246'starcsa'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5623,'#39'B'#233'k'#233'scsaba(Gerla)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5624,'#39'Doboz'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5630,'#39'B'#233'k'#233's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5641,'#39'Tarhos'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5643,'#39'B'#233'lmegyer'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5650,'#39'Mez'#337'ber'#233'ny'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5661,'#39#218'jk'#237'gy'#243's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5662,'#39'Csan'#225'dap'#225'ca'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5663,'#39'Medgyesbodz'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5664,'#39'Medgyesbodz'#225's(G'#225'bortelep)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5665,'#39'Pusztaottlaka'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5666,'#39'Medgyesegyh'#225'za1'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5667,'#39'Magyarb'#225'nhegyes'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5668,'#39'Nagyb'#225'nhegyes'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5671,'#39'B'#233'k'#233'scsaba(Mez'#337'megyer)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5672,'#39'Murony'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5673,'#39'Kamut'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5674,'#39'K'#233'tsoprony'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5675,'#39'Telekgerend'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5700,'#39'Gyula'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5703,'#39'Gyula(J'#243'zsefAttilaSzanat'#243'rium)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5711,'#39'Gyula(Gyulav'#225'ri)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5712,'#39'Szabadk'#237'gy'#243's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5720,'#39'Sarkad'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5725,'#39'K'#246'tegy'#225'n'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5726,'#39'M'#233'hker'#233'k'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5727,'#39#218'jszalonta'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5731,'#39'Sarkadkereszt'#250'r'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5732,'#39'Mez'#337'gy'#225'n'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5734,'#39'Geszt'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5741,'#39'K'#233'tegyh'#225'za'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5742,'#39'Elek'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5743,'#39'L'#246'k'#246'sh'#225'za'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5744,'#39'Kevermes'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5745,'#39'Dombiratos'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5746,'#39'Kun'#225'gota'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5747,'#39'Alm'#225'skamar'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5751,'#39'Nagykamar'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5752,'#39'Medgyesegyh'#225'za(B'#225'nk'#250't)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5800,'#39'Mez'#337'kov'#225'csh'#225'za'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5811,'#39'V'#233'gegyh'#225'za'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5820,'#39'Mez'#337'hegyes'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5830,'#39'Battonya'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5836,'#39'Dombegyh'#225'z'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5837,'#39'Kisdombegyh'#225'z'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5838,'#39'Magyardombegyh'#225'z'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5900,'#39'Orosh'#225'za'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5903,'#39'Orosh'#225'za(R'#225'k'#243'czitelep)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5904,'#39'Orosh'#225'za(Gyop'#225'rosf'#252'rd'#337')'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5905,'#39'Orosh'#225'za(Szentetornya)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5919,'#39'Pusztaf'#246'ldv'#225'r'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5920,'#39'Csorv'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5925,'#39'Gerend'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5931,'#39'Nagysz'#233'n'#225's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5932,'#39'G'#225'doros'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5940,'#39'T'#243'tkoml'#243's'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5945,'#39'Kardosk'#250't'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5946,'#39'B'#233'k'#233'ss'#225'mson'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5948,'#39'Kaszaper'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(5949,'#39'T'#243'tkoml'#243's(Pusztasz'#337'l'#337's)'#39','#39'B'#233'k'#233's'#39'),'
          ''
          ''
          ''
          '(6000,'#39'Kecskem'#233't'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6008,'#39'Kecskem'#233't(M'#233'ntelek)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6031,'#39'Szentkir'#225'ly'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6032,'#39'Ny'#225'rl'#337'rinc'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6033,'#39'V'#225'rosf'#246'ld'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6034,'#39'Helv'#233'cia'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6035,'#39'Ball'#243'sz'#246'g'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6041,'#39'Kerekegyh'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6042,'#39'F'#252'l'#246'ph'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6043,'#39'Kunbaracs'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6044,'#39'Kecskem'#233't(Het'#233'nyegyh'#225'za)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6045,'#39'Lad'#225'nybene'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6050,'#39'Lajosmizse'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6055,'#39'Fels'#337'lajos'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6060,'#39'Tiszak'#233'cske'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6062,'#39'Tiszak'#233'cske(Tiszab'#246'g)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6065,'#39'Lakitelek'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6066,'#39'Tiszaalp'#225'r(Alp'#225'r)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6067,'#39'Tiszaalp'#225'r(Tisza'#250'jfalu)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6070,'#39'Izs'#225'k'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6075,'#39'P'#225'hi'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6076,'#39#193'gasegyh'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6077,'#39'Orgov'#225'ny'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6078,'#39'Jakabsz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6080,'#39'Szabadsz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6085,'#39'F'#252'l'#246'psz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6086,'#39'Szalkszentm'#225'rton'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6087,'#39'Dunavecse'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6088,'#39'Apostag'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6090,'#39'Kunszentmikl'#243's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6096,'#39'Kunpesz'#233'r'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6097,'#39'Kunadacs'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6098,'#39'Tass'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6100,'#39'Kiskunf'#233'legyh'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6111,'#39'G'#225't'#233'r'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6112,'#39'P'#225'lmonostora'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6113,'#39'Pet'#337'fisz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6114,'#39'Bugac'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6114,'#39'Bugacpusztah'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6115,'#39'Kunsz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6116,'#39'F'#252'l'#246'pjakab'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6120,'#39'Kiskunmajsa'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6131,'#39'Szank'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6132,'#39'M'#243'ricg'#225't'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6133,'#39'J'#225'szszentl'#225'szl'#243#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6134,'#39'K'#246'mp'#246'c'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6135,'#39'Cs'#243'lyosp'#225'los'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6136,'#39'Harkak'#246't'#246'ny'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6137,'#39'Kiskunmajsa(Bodogl'#225'r)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6200,'#39'Kisk'#337'r'#246's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6211,'#39'Kaskanty'#250#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6221,'#39'Akaszt'#243#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6222,'#39'Cseng'#337'd'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6223,'#39'Soltszentimre'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6224,'#39'Tabdi'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6230,'#39'Soltvadkert'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6235,'#39'B'#243'csa'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6236,'#39'T'#225'zl'#225'r'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6237,'#39'Kecel'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6238,'#39'Imrehegy'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6239,'#39'Cs'#225'sz'#225'rt'#246'lt'#233's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6300,'#39'Kalocsa'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6311,'#39#214'regcsert'#337#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6320,'#39'Solt'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6320,'#39#218'jsolt'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6323,'#39'Dunaegyh'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6325,'#39'Dunatet'#233'tlen'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6326,'#39'Harta'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6327,'#39'Harta('#193'llampuszta)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6328,'#39'Dunapataj'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6329,'#39'Dunapataj(Szelidit'#243')'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6331,'#39'Fokt'#337#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6332,'#39'Usz'#243'd'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6333,'#39'Dunaszentbenedek'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6334,'#39'G'#233'derlak'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6335,'#39'Ordas'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6336,'#39'Szakm'#225'r'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6337,'#39#218'jtelek'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6341,'#39'Homokm'#233'gy'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6342,'#39'Dr'#225'gsz'#233'l'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6343,'#39'Miske'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6344,'#39'Haj'#243's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6345,'#39'Nemesn'#225'dudvar'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6346,'#39'S'#252'k'#246'sd'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6347,'#39#201'rsekcsan'#225'd'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6348,'#39#201'rsekhalma'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6351,'#39'B'#225'tya'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6352,'#39'Fajsz'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6353,'#39'Dusnok'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6400,'#39'Kiskunhalas'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6411,'#39'Zsana'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6412,'#39'Balotasz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6413,'#39'Kunfeh'#233'rt'#243#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6414,'#39'Pirt'#243#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6421,'#39'Kissz'#225'll'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6422,'#39'Tompa'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6423,'#39'Kelebia'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6424,'#39'Csik'#233'ria'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6425,'#39'B'#225'cssz'#337'l'#337's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6430,'#39'B'#225'csalm'#225's'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6435,'#39'Kunbaja'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6440,'#39'J'#225'noshalma'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6444,'#39'K'#233'leshalom'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6445,'#39'Borota'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6446,'#39'R'#233'm'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6447,'#39'Fels'#337'szentiv'#225'n'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6448,'#39'Cs'#225'voly'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6449,'#39'M'#233'lyk'#250't'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6451,'#39'Tatah'#225'za'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6452,'#39'M'#225't'#233'telke'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6453,'#39'B'#225'csbokod'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6454,'#39'B'#225'csbors'#243'd'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6455,'#39'Katym'#225'r'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6456,'#39'Madaras'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6500,'#39'Baja'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6503,'#39'Baja(Bajaszentistv'#225'n)'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6511,'#39'B'#225'csszentgy'#246'rgy'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6512,'#39'Szeremle'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6521,'#39'Vask'#250't'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6522,'#39'Gara'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6523,'#39'Cs'#225'talja'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6524,'#39'D'#225'vod'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6525,'#39'Hercegsz'#225'nt'#243#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6527,'#39'Nagybaracska'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6528,'#39'B'#225'tmonostor'#39','#39'B'#225'cs-K.'#39'),'
          ''
          ''
          ''
          '(6600,'#39'Szentes'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6612,'#39'Nagyt'#337'ke'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6621,'#39'Derekegyh'#225'z'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6622,'#39'Nagym'#225'gocs'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6623,'#39#193'rp'#225'dhalom'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6624,'#39'Eperjes'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6625,'#39'F'#225'bi'#225'nsebesty'#233'n'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6630,'#39'Mindszent'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6635,'#39'Szegv'#225'r'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6636,'#39'M'#225'rt'#233'ly'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6640,'#39'Csongr'#225'd'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6645,'#39'Felgy'#337#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6646,'#39'T'#246'm'#246'rk'#233'ny'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6647,'#39'Csanytelek'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6648,'#39'Csongr'#225'd(Bokros)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6700,'#39'Szeged'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6710,'#39'Szeged(Szentmih'#225'ly)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6750,'#39'Algy'#337#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6753,'#39'Szeged(T'#225'p'#233')'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6754,'#39#218'jszentiv'#225'n'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6755,'#39'K'#252'bekh'#225'za'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6756,'#39'Tiszasziget'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6757,'#39'Szeged(Gy'#225'lar'#233't)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6758,'#39'R'#246'szke'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6760,'#39'Kistelek'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6762,'#39'S'#225'ndorfalva'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6763,'#39'Szatymaz'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6764,'#39'Bal'#225'stya'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6765,'#39'Csengele'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6766,'#39'D'#243'c'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6767,'#39#211'pusztaszer'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6768,'#39'Baks'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6769,'#39'Pusztaszer'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6771,'#39'Szeged(Sz'#337'reg)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6772,'#39'Deszk'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6773,'#39'Kl'#225'rafalva'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6774,'#39'Ferencsz'#225'll'#225's'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6775,'#39'Kiszombor'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6781,'#39'Domasz'#233'k'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6782,'#39'M'#243'rahalom'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6783,'#39#193'sotthalom'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6784,'#39#214'tt'#246'm'#246's'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6785,'#39'Pusztam'#233'rges'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6786,'#39'Ruzsa'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6787,'#39'Z'#225'k'#225'nysz'#233'k'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6791,'#39'Szeged(Kiskundorozsma)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6792,'#39'Zsomb'#243#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6793,'#39'Forr'#225'sk'#250't'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6794,'#39#220'll'#233's'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6795,'#39'Bord'#225'ny'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6800,'#39'H'#243'dmez'#337'v'#225's'#225'rhely'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6806,'#39'H'#243'dmez'#337'v'#225's'#225'rhely(Szik'#225'ncs)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6821,'#39'Sz'#233'kkutas'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6900,'#39'Mak'#243#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6903,'#39'Mak'#243'(R'#225'kos)'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6911,'#39'Kir'#225'lyhegyes'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6912,'#39'K'#246'vegy'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6913,'#39'Csan'#225'dpalota'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6914,'#39'Pitvaros'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6915,'#39'Csan'#225'dalberti'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6916,'#39'Ambr'#243'zfalva'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6917,'#39'Nagy'#233'r'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6921,'#39'Maroslele'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6922,'#39'F'#246'lde'#225'k'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6923,'#39#211'f'#246'lde'#225'k'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6931,'#39'Ap'#225'tfalva'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6932,'#39'Magyarcsan'#225'd'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(6933,'#39'Nagylak'#39','#39'Csongr'#225'd'#39'),'
          ''
          ''
          ''
          '(7000,'#39'S'#225'rbog'#225'rd'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7003,'#39'S'#225'rbog'#225'rd(S'#225'rszentmikl'#243's)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7011,'#39'Alap'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7012,'#39'Als'#243'szentiv'#225'n'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7013,'#39'Cece'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7014,'#39'S'#225'regres'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7015,'#39'Igar'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7016,'#39'Igar(V'#225'msz'#337'l'#337'hegy)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7017,'#39'Mez'#337'szilas'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7018,'#39'S'#225'rbog'#225'rd(Pusztaegres)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7019,'#39'S'#225'rbog'#225'rd(S'#225'rhatvan)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7020,'#39'Dunaf'#246'ldv'#225'r'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7025,'#39'B'#246'lcske'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7026,'#39'Madocsa'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7027,'#39'Paks(Dunak'#246'ml'#337'd)'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7030,'#39'Paks'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7038,'#39'Pusztahencse'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7039,'#39'N'#233'metk'#233'r'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7041,'#39'Vajta'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(7042,'#39'P'#225'lfa'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7043,'#39'Bik'#225'cs'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7044,'#39'Nagydorog'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7045,'#39'Gy'#246'rk'#246'ny'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7047,'#39'S'#225'rszentl'#337'rinc'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7051,'#39'Kajdacs'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7052,'#39'K'#246'lesd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7054,'#39'Tengelic'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7056,'#39'Szedres'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7057,'#39'Medina'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7061,'#39'Belecska'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7062,'#39'Kesz'#337'hidegk'#250't'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7063,'#39'Sz'#225'razd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7064,'#39'Gy'#246'nk'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7065,'#39'Miszla'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7066,'#39'Udvari'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7067,'#39'Vars'#225'd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7068,'#39'Kistorm'#225's'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7071,'#39'Szakad'#225't'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7072,'#39'Di'#243'sber'#233'ny'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7081,'#39'Simontornya'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7082,'#39'Kissz'#233'kely'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7083,'#39'Tolnan'#233'medi'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7084,'#39'Pincehely'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7085,'#39'Nagysz'#233'kely'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7086,'#39'Ozora'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7087,'#39'F'#252'rged'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7090,'#39'Tam'#225'si'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7091,'#39'Tam'#225'si(P'#225'ri)'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7092,'#39'Nagyk'#243'nyi'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7093,'#39#201'rt'#233'ny'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7094,'#39'Kopp'#225'nysz'#225'nt'#243#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7095,'#39'Iregszemcse'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7095,'#39#218'jireg'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7097,'#39'Nagyszokoly'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7098,'#39'Magyarkeszi'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7099,'#39'Fels'#337'ny'#233'k'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7100,'#39'Szeksz'#225'rd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7121,'#39'Sz'#225'lka'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7122,'#39'Kakasd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7130,'#39'Tolna'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7131,'#39'Tolna(M'#246'zs)'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7132,'#39'Bogyiszl'#243#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7133,'#39'Fadd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7134,'#39'Gerjen'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7135,'#39'Dunaszentgy'#246'rgy'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7136,'#39'F'#225'c'#225'nkert'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7140,'#39'B'#225'tasz'#233'k'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7142,'#39'P'#246'rb'#246'ly'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7143,'#39#336'cs'#233'ny'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7144,'#39'Decs'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7145,'#39'S'#225'rpilis'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7146,'#39'V'#225'rdomb'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7147,'#39'Als'#243'n'#225'na'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7148,'#39'Als'#243'ny'#233'k'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7149,'#39'B'#225'ta'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7150,'#39'Bonyh'#225'd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7158,'#39'Bonyh'#225'dvarasd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7159,'#39'Kisdorog'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7161,'#39'Cik'#243#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7162,'#39'Gr'#225'b'#243'c'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7163,'#39'M'#337'cs'#233'ny'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7164,'#39'B'#225'taap'#225'ti'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7165,'#39'M'#243'r'#225'gy'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7171,'#39'Si'#243'ag'#225'rd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7172,'#39'Harc'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7173,'#39'Zomba'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7174,'#39'K'#233'ty'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7175,'#39'Fels'#337'n'#225'na'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7176,'#39'Murga'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7181,'#39'Tevel'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7182,'#39'Z'#225'vod'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7183,'#39'Kisvejke'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7184,'#39'Sz'#225'r'#225'sz'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7184,'#39'Lengyel'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7185,'#39'Mucsfa'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7186,'#39'Aparhant'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7186,'#39'Nagyvejke'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7187,'#39'Bonyh'#225'd(Majos)'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7191,'#39'H'#337'gy'#233'sz'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7192,'#39'Szak'#225'ly'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7193,'#39'Reg'#246'ly'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7194,'#39'Kalazn'#243#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7195,'#39'Mucsi'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7200,'#39'Domb'#243'v'#225'r'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7211,'#39'Dalmand'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7212,'#39'Kocsola'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7213,'#39'Szakcs'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7214,'#39'L'#225'paf'#337#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7214,'#39'V'#225'rong'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7215,'#39'Nak'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7224,'#39'D'#250'zs'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7225,'#39'Csibr'#225'k'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7226,'#39'Kurd'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7227,'#39'Gyulaj'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7228,'#39'D'#246'br'#246'k'#246'z'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7251,'#39'Kapospula'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7252,'#39'Attala'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7253,'#39'Csoma'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7253,'#39'Szabadi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7255,'#39'Nagyberki'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7256,'#39'Kercseliget'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7257,'#39'Mosd'#243's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7258,'#39'Bat'#233#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7258,'#39'Kaposkereszt'#250'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7261,'#39'Kaposhomok'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7261,'#39'Tasz'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7271,'#39'Fon'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7272,'#39'G'#246'lle'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7273,'#39'B'#252'ss'#252#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7274,'#39'Kazsok'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7275,'#39'Igal'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7276,'#39'Gad'#225'cs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7276,'#39'Somogyszil'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7279,'#39'Kisgyal'#225'n'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7281,'#39'Bonnya'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7282,'#39'Fiad'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7282,'#39'Kisb'#225'rap'#225'ti'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7283,'#39'Somogyacsa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7284,'#39'Somogyd'#246'r'#246'cske'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7285,'#39'K'#225'ra'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7285,'#39'Szorosad'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7285,'#39'T'#246'r'#246'kkopp'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7286,'#39'Mikl'#243'si'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7300,'#39'Koml'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7300,'#39'Mecsekp'#246'l'#246'ske'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7304,'#39'M'#225'nfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7305,'#39'Koml'#243'(Mecsekj'#225'nosi)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7308,'#39'Koml'#243'(Geszteny'#233's)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7331,'#39'Liget'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7332,'#39'Magyaregregy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7333,'#39'K'#225'r'#225'sz'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7333,'#39'V'#233'k'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7334,'#39'K'#246'bl'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7334,'#39'Szalatnak'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7341,'#39'Csik'#243'st'#337'tt'#337's'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7342,'#39'M'#225'gocs'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7343,'#39'Nagyhajm'#225's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7344,'#39'Mek'#233'nyes'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7345,'#39'Als'#243'mocsol'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7346,'#39'Bikal'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7347,'#39'Egyh'#225'zaskoz'#225'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7348,'#39'Hegyh'#225'tmar'#243'c'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7348,'#39'T'#243'f'#369#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7349,'#39'Sz'#225'szv'#225'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7351,'#39'M'#225'za'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7352,'#39'Gy'#246're'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7353,'#39'Izm'#233'ny'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7354,'#39'V'#225'ralja'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7355,'#39'Nagym'#225'nyok'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7356,'#39'Kism'#225'nyok'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7361,'#39'Kaposszekcs'#337#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7362,'#39'Ger'#233'nyes'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7362,'#39'Tarr'#243's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7362,'#39'V'#225's'#225'rosdomb'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7362,'#39'J'#225'g'#243'nak'#39','#39'Tolna'#39'),'
          ''
          ''
          ''
          '(7370,'#39'Fels'#337'egerszeg'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7370,'#39'Mez'#337'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7370,'#39'Oroszl'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7370,'#39'Pal'#233#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7370,'#39'S'#225'sd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7370,'#39'Varga'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7370,'#39'V'#225'zsnok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7381,'#39#193'g'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7381,'#39'Kisvaszar'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7381,'#39'T'#233'kes'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7383,'#39'Baranyaszentgy'#246'rgy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7383,'#39'Sz'#225'gy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7383,'#39'Torm'#225's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7384,'#39'Baranyajen'#337#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7385,'#39'G'#246'dre(G'#246'dreszentm'#225'rton)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7386,'#39'G'#246'dre(G'#246'drekereszt'#250'r)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7391,'#39'Kisbeszterce'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7391,'#39'Kishajm'#225's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7391,'#39'Mindszentgodisa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7393,'#39'Bak'#243'ca'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7394,'#39'Bodolyab'#233'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7394,'#39'Magyarhertelend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7396,'#39'Magyarsz'#233'k'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7400,'#39'Kaposv'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7400,'#39'Orci'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7400,'#39'Zselickislak'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7409,'#39'Kaposv'#225'r(Kaposf'#252'red)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7431,'#39'Juta'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7432,'#39'Csomb'#225'rd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7432,'#39'Hetes'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7434,'#39'Mez'#337'csokonya'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7435,'#39'Somogys'#225'rd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7436,'#39#218'jv'#225'rfalva'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7439,'#39'Bodrog'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7441,'#39'Magyaregres'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7442,'#39'V'#225'rda'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7443,'#39'Als'#243'bog'#225't'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7443,'#39'Edde'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7443,'#39'Somogyj'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7444,'#39'Osztop'#225'n'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7452,'#39'Somogyaszal'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7453,'#39'Mernye'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7454,'#39'Somodor'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7455,'#39'Somogygeszti'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7456,'#39'Fels'#337'mocsol'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7457,'#39'Ecseny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7458,'#39'Pol'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7463,'#39'Magyarat'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7463,'#39'Patalom'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7464,'#39'R'#225'ksi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7465,'#39'Szentg'#225'losk'#233'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7471,'#39'Zim'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7472,'#39'Cser'#233'nfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7472,'#39'Szentbal'#225'zs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7473,'#39'G'#225'losfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7473,'#39'Hajm'#225's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7473,'#39'Kaposgyarmat'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7474,'#39'Simonfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7474,'#39'Zselicszentp'#225'l'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7475,'#39'B'#337'sz'#233'nfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7476,'#39'Kaposszerdahely'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7477,'#39'Patca'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7477,'#39'Szenna'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7477,'#39'Szilv'#225'sszentm'#225'rton'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7477,'#39'Zselickisfalud'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7478,'#39'B'#225'rdudvarnok'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7479,'#39'S'#225'ntos'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7500,'#39'Nagyat'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7511,'#39#214'tv'#246'sk'#246'nyi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7512,'#39'Mike'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7513,'#39'Rinyaszentkir'#225'ly'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7514,'#39'Tarany'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7515,'#39'Somogyudvarhely'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7516,'#39'Berzence'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7517,'#39'Bolh'#225's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7521,'#39'Kaposm'#233'r'#337#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7522,'#39'Kapos'#250'jlak'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7523,'#39'Kaposf'#337#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7523,'#39'Kisasszond'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7524,'#39'Kiskorp'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7525,'#39'J'#225'k'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7526,'#39'Cs'#246'k'#246'ly'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7527,'#39'Gige'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7527,'#39'Rinyakov'#225'csi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7530,'#39'Kadark'#250't'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7530,'#39'K'#337'k'#250't'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7532,'#39'Hencse'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7533,'#39'Hedrehely'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7533,'#39'Visnye'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7535,'#39'Lad'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7536,'#39'Patosfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7537,'#39'Homokszentgy'#246'rgy'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7538,'#39'K'#225'lm'#225'ncsa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7539,'#39'Szulok'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7541,'#39'Kutas'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7542,'#39'Kisbajom'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7543,'#39'Beleg'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7544,'#39'Szab'#225's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7545,'#39'Nagykorp'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7551,'#39'L'#225'bod'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7552,'#39'Rinyabeseny'#337#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7553,'#39'G'#246'rgeteg'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7555,'#39'Csokonyavisonta'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7556,'#39'Rinya'#250'jlak'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7557,'#39'Barcs(Somogytarn'#243'ca)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7561,'#39'Nagybajom'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7561,'#39'P'#225'lmajor'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7562,'#39'Segesd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7563,'#39'Somogyszob'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7564,'#39'Kasz'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7570,'#39'Barcs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7582,'#39'Koml'#243'sd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7582,'#39'P'#233'terhida'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7584,'#39'Bab'#243'csa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7584,'#39'Rinya'#250'jn'#233'p'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7584,'#39'Somogyaracs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7585,'#39'Bakh'#225'za'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7585,'#39'H'#225'romfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7586,'#39'Bolh'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7587,'#39'Heresznye'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7588,'#39'V'#237'zv'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7589,'#39'B'#233'lav'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7600,'#39'P'#233'cs'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7661,'#39'Erzs'#233'bet'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7661,'#39'K'#225'toly'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7661,'#39'K'#233'kesd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7661,'#39'Szell'#337#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7663,'#39'M'#225'riak'#233'm'#233'nd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7664,'#39'Berkesd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7664,'#39'Pereked'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7664,'#39'Szil'#225'gy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7666,'#39'Pog'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7668,'#39'Gy'#243'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7668,'#39'Kesz'#252#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7668,'#39'K'#246'k'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7671,'#39'Aranyosgad'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7671,'#39'Bics'#233'rd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7671,'#39'Z'#243'k'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7672,'#39'Boda'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7673,'#39'Cserk'#250't'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7673,'#39'K'#337'v'#225'g'#243'sz'#337'l'#337's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7675,'#39'Bakonya'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7675,'#39'K'#337'v'#225'g'#243't'#337'tt'#337's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7677,'#39'Orf'#369#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7678,'#39'Abaliget'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7678,'#39'Huszt'#243't'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7678,'#39'Kov'#225'cssz'#233'n'#225'ja'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7681,'#39'Hetvehely'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7681,'#39'Okorv'#246'lgy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7681,'#39'Szentkatalin'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7682,'#39'B'#252'kk'#246'sd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7683,'#39'Cserdi'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7683,'#39'Dinnyeberki'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7683,'#39'Helesfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7691,'#39'P'#233'cs(Vasas)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7693,'#39'P'#233'cs(Hird)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7694,'#39'Hossz'#250'het'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7695,'#39'Mecsekn'#225'dasd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7695,'#39#211'b'#225'nya'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7695,'#39#211'falu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7696,'#39'Hidas'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7700,'#39'Moh'#225'cs'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7711,'#39'B'#225'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7712,'#39'Dunaszekcs'#337#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7713,'#39'Dunafalva'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7714,'#39'Moh'#225'cs('#218'jmoh'#225'cs)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7715,'#39'Moh'#225'cs(S'#225'rh'#225't)'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7716,'#39'Homor'#250'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7717,'#39'K'#246'lked'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7718,'#39'Udvar'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7720,'#39'Ap'#225'tvarasd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7720,'#39'Lov'#225'szhet'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7720,'#39'Martonfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7720,'#39'P'#233'csv'#225'rad'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7720,'#39'Zeng'#337'v'#225'rkony'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7723,'#39'Erd'#337'smecske'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7724,'#39'Feked'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7725,'#39'Szeb'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7726,'#39'V'#233'm'#233'nd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7727,'#39'Palotabozsok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7728,'#39'G'#246'rcs'#246'nydoboka'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7728,'#39'Somberek'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7731,'#39'Nagypall'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7732,'#39'Fazekasboda'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7733,'#39'Geresdlak'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7733,'#39'Mar'#225'za'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7735,'#39'Erd'#337'sm'#225'rok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7735,'#39'H'#237'mesh'#225'za'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7735,'#39'Sz'#369'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7737,'#39'Sz'#233'kelyszabar'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7741,'#39'Bog'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7741,'#39'Nagykoz'#225'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7744,'#39'Ellend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7745,'#39'H'#225'ss'#225'gy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7745,'#39'Olasz'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7747,'#39'Belv'#225'rdgyula'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7747,'#39'Birj'#225'n'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7751,'#39'Monyor'#243'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7751,'#39'Szederk'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7752,'#39'Versend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7753,'#39'Szajk'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7754,'#39'B'#243'ly'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7755,'#39'T'#246'tt'#246's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7756,'#39'Borj'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7756,'#39'Kisbudm'#233'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7756,'#39'Nagybudm'#233'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7756,'#39'P'#243'csa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7757,'#39'Babarc'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7757,'#39'Lipt'#243'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7759,'#39'Kisny'#225'r'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7759,'#39'L'#225'nycs'#243'k'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7761,'#39'Koz'#225'rmisleny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7761,'#39'Loth'#225'rd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7761,'#39'Magyarsarl'#243's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7761,'#39'Romonya'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7762,'#39'P'#233'csudvard'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7763,'#39#193'ta'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7763,'#39'Eger'#225'g'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7763,'#39'Kisherend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7763,'#39'Szemely'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7763,'#39'Sz'#337'k'#233'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7766,'#39'Kiskassa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7766,'#39'Peterd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7766,'#39'P'#233'csdevecser'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7766,'#39#218'jpetre'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7768,'#39'Kist'#243'tfalu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7768,'#39'Vok'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7771,'#39'Palkonya'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7772,'#39'Iv'#225'nbatty'#225'n'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7772,'#39'Vill'#225'nyk'#246'vesd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7773,'#39'Kisjakabfalva'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7773,'#39'Vill'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7774,'#39'M'#225'rok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7775,'#39'Illocska'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7775,'#39'Kislipp'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7775,'#39'Lap'#225'ncsa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7775,'#39'Magyarb'#243'ly'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7781,'#39'Iv'#225'nd'#225'rda'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7781,'#39'Lipp'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7781,'#39'S'#225'rok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7782,'#39'Bezedek'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7783,'#39'Majs'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7784,'#39'Nagyny'#225'r'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7785,'#39'S'#225'torhely'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7800,'#39'Kishars'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7800,'#39'Nagyt'#243'tfalu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7800,'#39'Sikl'#243's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7811,'#39'Bisse'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7811,'#39'Bosta'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7811,'#39'Csarn'#243'ta'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7811,'#39'Szal'#225'nta'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7811,'#39'T'#250'rony'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7812,'#39'Gar'#233#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7813,'#39'Szava'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7814,'#39'Babarcsz'#337'l'#337's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7814,'#39'Kisd'#233'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7814,'#39#211'cs'#225'rd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7814,'#39'Sikl'#243'sbodony'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7815,'#39'Hark'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7817,'#39'Di'#243'sviszl'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7817,'#39'M'#225'rfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7822,'#39'Nagyhars'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7823,'#39'Kistapolca'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7823,'#39'Sikl'#243'snagyfalu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7824,'#39'Egyh'#225'zasharaszti'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7824,'#39'Old'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7826,'#39'Als'#243'szentm'#225'rton'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7827,'#39'Beremend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7827,'#39'K'#225's'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7831,'#39'Pell'#233'rd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7833,'#39'G'#246'rcs'#246'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7833,'#39'Regenye'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7833,'#39'Szilv'#225's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7833,'#39'Sz'#337'ke'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7834,'#39'Baksa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7834,'#39'Tengeri'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7834,'#39'T'#233'seny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7836,'#39'Bog'#225'dmindszent'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7836,'#39#211'zdfalu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7837,'#39'Hegyszentm'#225'rton'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7838,'#39'Hirics'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7838,'#39'L'#250'zsok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7838,'#39'P'#225'pr'#225'd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7838,'#39'Pisk'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7838,'#39'Vajszl'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7838,'#39'Vejti'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7839,'#39'Kemse'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7839,'#39'Zal'#225'ta'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7841,'#39'Adorj'#225's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7841,'#39'Baranyahidv'#233'g'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7841,'#39'Kisszentm'#225'rton'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7841,'#39'K'#243'r'#243's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7841,'#39'S'#225'mod'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7843,'#39'C'#250'n'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7843,'#39'Dr'#225'vapiski'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7843,'#39'K'#233'mes'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7843,'#39'Szaporca'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7843,'#39'T'#233'senfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7846,'#39'Dr'#225'vacsepely'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7846,'#39'R'#225'dfalva'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7847,'#39'Dr'#225'vaszerdahely'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7847,'#39'Ipacsfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7847,'#39'Kov'#225'cshida'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7851,'#39'Dr'#225'vacsehi'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7851,'#39'Dr'#225'vapalkonya'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7851,'#39'Dr'#225'vaszabolcs'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7853,'#39'Gordisa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7854,'#39'Matty'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7900,'#39'Botykapeterd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7900,'#39'Csert'#337#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7900,'#39'Szigetv'#225'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7912,'#39'Nagypeterd'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7912,'#39'Nyugotszenterzs'#233'bet'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7913,'#39'Szentd'#233'nes'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7914,'#39'B'#225'nfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7914,'#39'Kat'#225'dfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7914,'#39'R'#243'zsafa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7915,'#39'Dencsh'#225'za'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7915,'#39'Szenteg'#225't'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7918,'#39'Lak'#243'csa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7918,'#39'Szentborb'#225's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7918,'#39'T'#243't'#250'jfalu'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7921,'#39'Somogyhatvan'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7922,'#39'Basal'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7922,'#39'Patapoklosi'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7922,'#39'Somogyap'#225'ti'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7922,'#39'Somogyviszl'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7925,'#39'Magyarlukafa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7925,'#39'Somogyh'#225'rs'#225'gy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7926,'#39'V'#225's'#225'rosb'#233'c'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7932,'#39'Alm'#225'skereszt'#250'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7932,'#39'Mozsg'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7932,'#39'Szulim'#225'n'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7934,'#39'Almamell'#233'k'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7935,'#39'Cseb'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7935,'#39'Horv'#225'thertelend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7935,'#39'Ibafa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7936,'#39'Szentl'#225'szl'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7937,'#39'Boldogasszonyfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7940,'#39'Csonkamindszent'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7940,'#39'Kacs'#243'ta'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7940,'#39'Nagyv'#225'ty'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7940,'#39'Szentl'#337'rinc'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7951,'#39'Gerde'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7951,'#39'P'#233'csbagota'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7951,'#39'Szabadszentkir'#225'ly'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7951,'#39'Vel'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7953,'#39'Kir'#225'lyegyh'#225'za'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7954,'#39'Gilv'#225'nfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7954,'#39'Gy'#246'ngyfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7954,'#39'Kisasszonyfa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7954,'#39'Magyarmecske'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7954,'#39'Magyartelek'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7957,'#39'Okor'#225'g'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7958,'#39'K'#225'kics'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7960,'#39'Dr'#225'vaiv'#225'nyi'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7960,'#39'Dr'#225'vaszt'#225'ra'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7960,'#39'Mar'#243'csa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7960,'#39'Sellye'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7960,'#39'S'#243'svertike'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7960,'#39'Sumony'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7964,'#39'Besence'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7964,'#39'Cs'#225'nyoszr'#243#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7964,'#39'Nagycs'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7966,'#39'Bogd'#225'sa'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7967,'#39'Dr'#225'vafok'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7967,'#39'Dr'#225'vakereszt'#250'r'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7967,'#39'Mark'#243'c'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7968,'#39'Fels'#337'szentm'#225'rton'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7971,'#39'Hobol'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7972,'#39'Gy'#246'ngy'#246'smell'#233'k'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7972,'#39'Pettend'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7973,'#39'B'#252'r'#252's'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7973,'#39'Endr'#337'c'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7973,'#39'Teklafalu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7973,'#39'V'#225'rad'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7975,'#39'K'#233't'#250'jfalu'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7976,'#39'Sz'#246'r'#233'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7976,'#39'Z'#225'dor'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7977,'#39'Dr'#225'vag'#225'rdony'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7977,'#39'Kast'#233'lyosdomb'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7977,'#39'Potony'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7979,'#39'Dr'#225'vatam'#225'si'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7981,'#39'Kistam'#225'si'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7981,'#39'Merenye'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7981,'#39'Molv'#225'ny'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7981,'#39'Nemeske'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7981,'#39'T'#243'tszentgy'#246'rgy'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7985,'#39'Kisdobsza'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7985,'#39'Nagydobsza'#39','#39'Baranya'#39'),'
          ''
          ''
          ''
          '(7987,'#39'Istv'#225'ndi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(7988,'#39'Dar'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8000,'#39'Sz'#233'kesfeh'#233'rv'#225'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8019,'#39'Sz'#233'kesfeh'#233'rv'#225'r(B'#246'rg'#246'nd)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8041,'#39'Cs'#243'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8042,'#39'Moha'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8043,'#39'Iszkaszentgy'#246'rgy'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8044,'#39'Kincsesb'#225'nya'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8045,'#39'Bakonyk'#250'ti'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8045,'#39'Isztim'#233'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8051,'#39'S'#225'rkeresztes'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8052,'#39'Feh'#233'rv'#225'rcsurg'#243#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8053,'#39'Bodajk'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8054,'#39'Balinka(Esz'#233'ny)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8055,'#39'Balinka'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8056,'#39'Bakonycsernye'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8060,'#39'M'#243'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8065,'#39'Nagyveleg'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8066,'#39'Pusztav'#225'm'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8071,'#39'Magyaralm'#225's'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8072,'#39'S'#246'r'#233'd'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8073,'#39'Cs'#225'kber'#233'ny'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8074,'#39'Cs'#243'kak'#337#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8081,'#39'Z'#225'moly'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8082,'#39'G'#225'nt'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8083,'#39'Cs'#225'kv'#225'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8085,'#39'Bodm'#233'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8085,'#39'V'#233'rtesbogl'#225'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8086,'#39'Felcs'#250't'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8087,'#39'Alcs'#250'tdoboz'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8088,'#39'Tabajd'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8089,'#39'V'#233'rtesacsa'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8092,'#39'P'#225'tka'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8093,'#39'Lovasber'#233'ny'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8095,'#39'P'#225'kozd'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8096,'#39'Sukor'#243#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8097,'#39'Nadap'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8100,'#39'V'#225'rpalota'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8103,'#39'V'#225'rpalota(Inota)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8104,'#39'V'#225'rpalota(Inotaier'#337'm'#369')'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8105,'#39'P'#233'tf'#252'rd'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8109,'#39'T'#233's'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8111,'#39'Sereg'#233'lyes'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8112,'#39'G'#225'rdony(Zichy'#250'jfalu)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8113,'#39'Sereg'#233'lyes(Sz'#337'l'#337'hegy)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8121,'#39'T'#225'c'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8122,'#39'Cs'#337'sz'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8123,'#39'Soponya'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8124,'#39'K'#225'loz'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8125,'#39'S'#225'rkereszt'#250'r'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8126,'#39'S'#225'rszent'#225'gota'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8127,'#39'Aba'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8128,'#39'Aba(Bels'#337'b'#225'r'#225'nd)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8130,'#39'Enying'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8131,'#39'Enying(Balatonbozsok)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8132,'#39'Leps'#233'ny'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8133,'#39'Mez'#337'szentgy'#246'rgy'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8134,'#39'M'#225'ty'#225'sdomb'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8135,'#39'D'#233'g'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8136,'#39'Lajoskom'#225'rom'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8137,'#39'Mez'#337'kom'#225'rom'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8138,'#39'Szabadhidv'#233'g'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8139,'#39'Szabadhidv'#233'g(P'#233'lpuszta)'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8142,'#39#218'rhida'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8143,'#39'S'#225'rszentmih'#225'ly'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8144,'#39'S'#225'rkeszi'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8145,'#39'N'#225'dasdlad'#225'ny'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8146,'#39'Jen'#337#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8151,'#39'Szabadbatty'#225'n'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8152,'#39'K'#337'sz'#225'rhegy'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8154,'#39'Polg'#225'rdi'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8156,'#39'Kisl'#225'ng'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8157,'#39'F'#252'le'#39','#39'Fej'#233'r'#39'),'
          ''
          ''
          ''
          '(8161,'#39#336'si'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8162,'#39'K'#252'ng'#246's'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8163,'#39'Csaj'#225'g'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8164,'#39'Balatonf'#337'kaj'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8171,'#39'Balatonvil'#225'gos'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8172,'#39'Balatonkenese(Balatonakarattya)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8174,'#39'Balatonkenese'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8175,'#39'Balatonf'#369'zf'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8181,'#39'Berhida'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8182,'#39'Berhida(Peremartongy'#225'rtelep)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8183,'#39'Papkeszi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8184,'#39'Balatonf'#369'zf'#337'(F'#369'zf'#337'gy'#225'rtelep)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8191,'#39#214'sk'#252#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8192,'#39'Hajm'#225'sk'#233'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8193,'#39'S'#243'ly'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8194,'#39'Vilonya'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8195,'#39'Kir'#225'lyszentistv'#225'n'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8196,'#39'Lit'#233'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8200,'#39'Veszpr'#233'm'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8220,'#39'Balatonalm'#225'di'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8225,'#39'Szentkir'#225'lyszabadja'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8226,'#39'Als'#243#246'rs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8227,'#39'Fels'#337#246'rs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8228,'#39'Lovas'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8229,'#39'Csopak'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8229,'#39'Paloznak'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8230,'#39'Balatonf'#252'red'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8230,'#39'Balatonsz'#337'l'#337's'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8236,'#39'Balatonf'#252'red(Balatonar'#225'cs)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8237,'#39'Tihany'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8241,'#39'Asz'#243'f'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8242,'#39'Balatonudvari'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8242,'#39#214'rv'#233'nyes'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8243,'#39'Balatonakali'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8244,'#39'D'#246'rgicse'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8245,'#39'P'#233'csely'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8245,'#39'V'#225'szoly'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8246,'#39'T'#243'tv'#225'zsony'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8247,'#39'Hidegk'#250't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8248,'#39'Nemesv'#225'mos'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8248,'#39'Veszpr'#233'mfajsz'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8251,'#39'Z'#225'nka'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8252,'#39'Balatonszepezd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8253,'#39'R'#233'vf'#252'l'#246'p'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8254,'#39'K'#233'kk'#250't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8254,'#39'K'#337'v'#225'g'#243#246'rs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8255,'#39'Balatonrendes'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8256,'#39#193'brah'#225'mhegy'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8256,'#39'Salf'#246'ld'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8257,'#39'Badacsonytomaj(Badacsony'#246'rs)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8258,'#39'Badacsonytomaj'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8261,'#39'Badacsonytomaj(Badacsony)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8262,'#39'Badacsonyt'#246'rdemic(Badacsonyl'#225'bdihegy)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8263,'#39'Badacsonyt'#246'rdemic'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8264,'#39'Szigliget'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8265,'#39'Hegymagas'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8271,'#39'Mencshely'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8272,'#39'Balatoncsics'#243#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8272,'#39#211'budav'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8272,'#39'Szentantalfa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8272,'#39'Szentjakabfa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8272,'#39'Tagyon'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8273,'#39'Monoszl'#243#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8274,'#39'K'#246'vesk'#225'l'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8275,'#39'Balatonhenye'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8281,'#39'Szentb'#233'kk'#225'lla'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8282,'#39'Mindszentk'#225'lla'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8283,'#39'K'#225'ptalant'#243'ti'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8284,'#39'Kisap'#225'ti'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8284,'#39'Nemesgul'#225'cs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8286,'#39'Gyulakeszi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8291,'#39'Barnag'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8291,'#39'Nagyv'#225'zsony'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8291,'#39'Pula'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8291,'#39'V'#246'r'#246'st'#243#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8292,'#39#214'cs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8294,'#39'Kapolcs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8294,'#39'Vig'#225'ntpetend'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8295,'#39'Tali'#225'nd'#246'r'#246'gd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8296,'#39'Hegyesd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8296,'#39'Monostorap'#225'ti'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8297,'#39'Tapolca(Diszel)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8300,'#39'Raposka'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8300,'#39'Tapolca'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8308,'#39'S'#225'ska'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8308,'#39'Zalahal'#225'p'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8311,'#39'Nemesvita'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8312,'#39'Balatonederics'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8313,'#39'Balatongy'#246'r'#246'k'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8314,'#39'Vonyarcvashegy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8315,'#39'Gyenesdi'#225's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8316,'#39'V'#225'llus'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8316,'#39'V'#225'rv'#246'lgy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8318,'#39'Lesencefalu'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8318,'#39'Lesencetomaj'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8319,'#39'Lesenceistv'#225'nd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8321,'#39'Uzsa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8330,'#39'S'#252'meg'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8341,'#39'Kisv'#225's'#225'rhely'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8341,'#39'Mih'#225'lyfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8341,'#39'Szalapa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8342,'#39#211'h'#237'd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8344,'#39'Hetyef'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8344,'#39'Zalaerd'#337'd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8345,'#39'Dabronc'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8346,'#39'G'#243'g'#225'nfa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8347,'#39'Ukk'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8348,'#39'Megyer'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8348,'#39'Rig'#225'cs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8348,'#39'Zalameggyes'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8349,'#39'Zalagy'#246'm'#246'r'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8351,'#39'S'#252'megpr'#225'ga'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8352,'#39'Bazsi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8353,'#39'Vindornyalak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8353,'#39'Zalasz'#225'nt'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8354,'#39'Karmacs'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8354,'#39'Vindornyafok'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8354,'#39'Zalak'#246'vesk'#250't'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8355,'#39'Vindornyasz'#337'l'#337's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8356,'#39'Kisg'#246'rb'#337#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8356,'#39'Nagyg'#246'rb'#337#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8357,'#39'D'#246'br'#246'ce'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8357,'#39'S'#252'megcsehi'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8360,'#39'Keszthely'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8371,'#39'Nemesb'#252'k'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8372,'#39'Cserszegtomaj'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8373,'#39'Rezi'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8380,'#39'Fels'#337'p'#225'hok'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8380,'#39'H'#233'v'#237'z'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8391,'#39'S'#225'rmell'#233'k'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8392,'#39'Zalav'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8393,'#39'Szentgy'#246'rgyv'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8394,'#39'Als'#243'p'#225'hok'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8400,'#39'Ajka'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8409,'#39#218'rk'#250't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8411,'#39'Veszpr'#233'm(K'#225'd'#225'rta)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8412,'#39'Veszpr'#233'm(Gyulafir'#225't'#243't)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8413,'#39'Epl'#233'ny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8414,'#39'Olaszfalu'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8415,'#39'Nagyeszterg'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8416,'#39'Dudar'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8417,'#39'Cset'#233'ny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8418,'#39'Bakonyoszlop'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8419,'#39'Csesznek'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8420,'#39'Zirc'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8422,'#39'Bakonyn'#225'na'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8423,'#39'Sz'#225'p'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8424,'#39'J'#225'sd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8425,'#39'L'#243'k'#250't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8426,'#39'P'#233'nzesgy'#337'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8427,'#39'Bakonyb'#233'l'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8428,'#39'Borzav'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8429,'#39'Porva'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8430,'#39'Bakonyszentkir'#225'ly'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8431,'#39'Bakonyszentl'#225'szl'#243#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8432,'#39'Feny'#337'f'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8433,'#39'Bakonygyir'#243't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8434,'#39'Rom'#225'nd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8435,'#39'Gic'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8436,'#39'Bakonyp'#233'terd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8437,'#39'L'#225'zi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8438,'#39'Veszpr'#233'mvars'#225'ny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8439,'#39'Sik'#225'tor'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8440,'#39'Herend'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8441,'#39'M'#225'rk'#243#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8442,'#39'H'#225'rsk'#250't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8443,'#39'B'#225'nd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8444,'#39'Szentg'#225'l'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8445,'#39'Csehb'#225'nya'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8445,'#39'V'#225'rosl'#337'd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8446,'#39'Kisl'#337'd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8447,'#39'Ajka(Ajkarendek)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8448,'#39'Ajka(Bakonygyepes)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8449,'#39'Magyarpol'#225'ny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8451,'#39'Ajka(Padragk'#250't)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8452,'#39'Halimba'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8452,'#39'Sz'#337'c'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8454,'#39'Nyir'#225'd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8455,'#39'Pusztamiske'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8456,'#39'Noszlop'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8457,'#39'Bakonyp'#246'l'#246'ske'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8458,'#39'Oroszi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8460,'#39'Devecser'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8468,'#39'Kolont'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8469,'#39'Kamond'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8471,'#39'Bodorfa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8471,'#39'K'#225'ptalanfa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8471,'#39'Nemeshany'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8473,'#39'Gyep'#252'kaj'#225'n'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8474,'#39'Csabrendek'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8475,'#39'Hoszt'#243't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8475,'#39'Szentimrefalva'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8475,'#39'Veszpr'#233'mgalsa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8476,'#39'Zalaszegv'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8477,'#39'Ap'#225'catorna'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8477,'#39'Kisberzseny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8477,'#39'T'#252'skev'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8478,'#39'Soml'#243'jen'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8479,'#39'Borsz'#246'rcs'#246'k'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8481,'#39'Soml'#243'v'#225's'#225'rhely'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8482,'#39'Doba'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8483,'#39'Kissz'#337'l'#337's'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8483,'#39'Soml'#243'sz'#337'l'#337's'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8484,'#39'Nagyal'#225'sony'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8484,'#39'Soml'#243'vecse'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8484,'#39'Vid'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8485,'#39'Dabrony'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8491,'#39'Karak'#243'sz'#246'rcs'#246'k'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8492,'#39'Kerta'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8493,'#39'Iszk'#225'z'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8494,'#39'Kiscs'#337'sz'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8495,'#39'Cs'#246'gle'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8496,'#39'Kispirit'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8496,'#39'Nagypirit'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8497,'#39'Adorj'#225'nh'#225'za'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8497,'#39'Egeralja'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8500,'#39'P'#225'pa'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8511,'#39'P'#225'pa(Borsosgy'#337'r)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8512,'#39'Ny'#225'r'#225'd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8513,'#39'Mih'#225'lyh'#225'za'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8514,'#39'Mez'#337'lak'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8515,'#39'B'#233'k'#225's'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8516,'#39'Kemenesh'#337'gy'#233'sz'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8517,'#39'Magyargencs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8518,'#39'Kemenesszentp'#233'ter'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8521,'#39'Nagyacs'#225'd'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8522,'#39'Nemesg'#246'rzs'#246'ny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8523,'#39'Egyh'#225'zaskesz'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8523,'#39'V'#225'rkesz'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8531,'#39'Marcalt'#337'(Ih'#225'sz)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8532,'#39'Marcalt'#337#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8533,'#39'Malomsok'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8534,'#39'Csikv'#225'nd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(8541,'#39'Tak'#225'csi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8542,'#39'Vaszar'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8543,'#39'Gecse'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8544,'#39'Szerecseny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(8545,'#39'Gyarmat'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(8551,'#39'Nagygyim'#243't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8552,'#39'Vanyola'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8553,'#39'Lov'#225'szpatona'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8554,'#39'Nagyd'#233'm'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8555,'#39'Bakonytam'#225'si'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8556,'#39'P'#225'patesz'#233'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8557,'#39'Bakonys'#225'g'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8557,'#39'Bakonyszentiv'#225'n'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8558,'#39'Cs'#243't'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8561,'#39'Ad'#225'sztevel'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8562,'#39'Nagytevel'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8563,'#39'Homokb'#246'd'#246'ge'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8564,'#39'Ugod'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8565,'#39'B'#233'b'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8571,'#39'Bakonykopp'#225'ny'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8572,'#39'Bakonysz'#252'cs'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8581,'#39'Bakonyj'#225'k'#243#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8581,'#39'N'#233'metb'#225'nya'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8582,'#39'Farkasgyep'#369#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8591,'#39'N'#243'r'#225'p'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8591,'#39'P'#225'pa(K'#233'ttorny'#250'lak)'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8592,'#39'D'#225'ka'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8593,'#39'P'#225'padereske'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8594,'#39'P'#225'pasalamon'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8595,'#39'Kup'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8596,'#39'P'#225'pakov'#225'csi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8597,'#39'D'#246'br'#246'nte'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8597,'#39'Ganna'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8598,'#39'P'#225'pa(Tapolcaf'#337')'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(8600,'#39'Si'#243'fok'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8609,'#39'Si'#243'fok(Balatonsz'#233'plak)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8611,'#39'Si'#243'fok(Balatonkiliti)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8612,'#39'Nyim'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8613,'#39'Balatonendr'#233'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8614,'#39'B'#225'lv'#225'nyos'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8617,'#39'K'#337'r'#246'shegy'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8618,'#39'Kereki'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8619,'#39'Pusztaszemes'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8621,'#39'Zam'#225'rdi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8622,'#39'Sz'#225'nt'#243'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8623,'#39'Balatonf'#246'ldv'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8624,'#39'Balatonsz'#225'rsz'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8625,'#39'Sz'#243'l'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8626,'#39'Teleki'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8627,'#39'K'#246'tcse'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8628,'#39'Nagycsepely'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8630,'#39'Balatonbogl'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8635,'#39'Ordacsehi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8636,'#39'Balatonszemes'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8637,'#39'Balaton'#337'sz'#246'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8638,'#39'Balatonlelle'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8640,'#39'Fony'#243'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8644,'#39'Fony'#243'd(Als'#243'b'#233'latelep)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8646,'#39'Balatonfenyves'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8647,'#39'Balatonm'#225'riaf'#252'rd'#337#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8648,'#39'Balatonkereszt'#250'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8649,'#39'Balatonber'#233'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8651,'#39'Balatonszabadi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8652,'#39'Si'#243'jut'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8653,'#39#193'd'#225'nd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8654,'#39'S'#225'gv'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8655,'#39'Som'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8656,'#39'Nagyber'#233'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8658,'#39'B'#225'bonymegyer'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8660,'#39'Lulla'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8660,'#39'S'#233'rseksz'#337'l'#337's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8660,'#39'Somogyegres'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8660,'#39'Tab'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8660,'#39'Torvaj'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8660,'#39'Zala'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8666,'#39'Bedegk'#233'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8667,'#39'K'#225'nya'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8668,'#39'Teng'#337'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8671,'#39'Kapoly'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8672,'#39'Zics'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8673,'#39'Somogymeggyes'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8674,'#39'N'#225'gocs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8675,'#39'Andocs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8676,'#39'Kar'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8681,'#39'L'#225'tr'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8681,'#39'Visz'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8683,'#39'Somogyt'#250'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8684,'#39'Somogybabod'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8685,'#39'Gam'#225's'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8691,'#39'Balatonbogl'#225'r(Sz'#337'l'#337'skislak)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8692,'#39'Gyugy'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8692,'#39'Sz'#337'l'#337'sgy'#246'r'#246'k'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8693,'#39'Kisber'#233'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8693,'#39'Lengyelt'#243'ti'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8694,'#39'H'#225'cs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8695,'#39'Buzs'#225'k'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8696,'#39'T'#225'ska'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8697,'#39#214'reglak'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8698,'#39'Pamuk'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8698,'#39'Somogyv'#225'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8699,'#39'Somogyv'#225'mos'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8700,'#39'Cs'#246'mend'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8700,'#39'Marcali'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8705,'#39'Somogyszentp'#225'l'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8706,'#39'Nikla'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8707,'#39'Libickozma'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8707,'#39'Pusztakov'#225'csi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8708,'#39'Somogyfajsz'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8709,'#39'Marcali(Horv'#225'tk'#250't)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8710,'#39'Balatonszentgy'#246'rgy'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8711,'#39'V'#246'rs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8712,'#39'Balaton'#250'jlak'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8713,'#39'K'#233'thely'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8714,'#39'Kelev'#237'z'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8714,'#39'Marcali(Bize)'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8716,'#39'Gad'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8716,'#39'Hossz'#250'v'#237'z'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8716,'#39'Mesztegny'#337#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8717,'#39'Nemeskisfalud'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8717,'#39'Szeny'#233'r'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8718,'#39'Tapsony'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8719,'#39'B'#246'h'#246'nye'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8721,'#39'V'#233'se'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8722,'#39'Nemesd'#233'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8723,'#39'Var'#225'szl'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8724,'#39'Inke'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8725,'#39'Iharosber'#233'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8726,'#39'Iharos'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8726,'#39'Somogycsics'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8728,'#39'Pog'#225'nyszentp'#233'ter'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8731,'#39'Holl'#225'd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8731,'#39'Tikos'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8732,'#39'F'#337'nyed'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8732,'#39'S'#225'voly'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8732,'#39'Szegerd'#337#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8733,'#39'Somogys'#225'mson'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8734,'#39'Somogyzsitfa'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8735,'#39'Cs'#225'k'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8736,'#39'Sz'#337'kedencs'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8737,'#39'Somogysimonyi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8738,'#39'Nemesvid'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8739,'#39'Nagyszak'#225'csi'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8741,'#39'B'#243'kah'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8741,'#39'Zalaap'#225'ti'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8742,'#39'Eszterg'#225'lyhorv'#225'ti'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8743,'#39'Zalaszabar'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8744,'#39'Orosztony'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8745,'#39'Kerecseny'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8746,'#39'Nagyrada'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8747,'#39'Garabonc'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8747,'#39'Zalamerenye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8749,'#39'Zalakaros'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8751,'#39'Zalakom'#225'r(Kiskom'#225'rom)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8752,'#39'Zalakom'#225'r(Kom'#225'rv'#225'ros)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8753,'#39'Balatonmagyar'#243'd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8754,'#39'Galambok'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8756,'#39'Csapi'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8756,'#39'Kisr'#233'cse'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8756,'#39'Nagyr'#233'cse'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8756,'#39'Zalas'#225'rszeg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8761,'#39'Pacsa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8761,'#39'Zalaigrice'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8762,'#39'G'#233'tye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8762,'#39'Szentp'#233'ter'#250'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8764,'#39'Di'#243'sk'#225'l'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8764,'#39'Zalaszentm'#225'rton'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8765,'#39'Egeraracsa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8767,'#39'Als'#243'rajk'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8767,'#39'Fels'#337'rajk'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8767,'#39'P'#246'tr'#233'te'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8771,'#39'Hah'#243't'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8772,'#39'B'#246'rz'#246'nce'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8772,'#39'Zalaszentbal'#225'zs'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8773,'#39'Kacorlak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8773,'#39'P'#246'l'#246'skef'#337#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8774,'#39'Gelse'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8774,'#39'Gelsesziget'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8774,'#39'Kilim'#225'n'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8776,'#39'Bocska'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8776,'#39'Magyarszentmikl'#243's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8776,'#39'Magyarszerdahely'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8777,'#39'F'#369'zv'#246'lgy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8777,'#39'Homokkom'#225'rom'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8777,'#39'Hossz'#250'v'#246'lgy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8778,'#39#218'judvar'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8782,'#39'Ligetfalva'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8782,'#39'Tilaj'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8782,'#39'Zalacs'#225'ny'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8784,'#39'Kehidakust'#225'ny'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8785,'#39'Kall'#243'sd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8785,'#39'Zalaszentgr'#243't(Zalakopp'#225'ny)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8788,'#39'S'#233'nye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8788,'#39'Zalaszentl'#225'szl'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8789,'#39'Zalaszentgr'#243't(Zalaudvarnok)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8790,'#39'Zalaszentgr'#243't'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8792,'#39'Zalav'#233'g'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8793,'#39'Zalaszentgr'#243't(Tekenye)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8795,'#39'Zalaszentgr'#243't(Cs'#225'ford)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8796,'#39'T'#252'rje'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8797,'#39'Batyk'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8798,'#39'Zalab'#233'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8799,'#39'D'#246'tk'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8799,'#39'Pakod'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8800,'#39'Nagykanizsa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8808,'#39'Nagykanizsa(Palin)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8809,'#39'Nagykanizsa(S'#225'nc)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8821,'#39'Nagybak'#243'nak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8822,'#39'Zala'#250'jlak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8824,'#39'Sand'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8825,'#39'Mih'#225'ld'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8825,'#39'Pat'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8827,'#39'Zalaszentjakab'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8831,'#39'Lisz'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8831,'#39'Nagykanizsa(Mikl'#243'sfa)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8834,'#39'Murakereszt'#250'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8835,'#39'Fityeh'#225'z'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8840,'#39'Csurg'#243#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8840,'#39'Csurg'#243'nagymarton'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8849,'#39'Szenta'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8851,'#39'Gy'#233'k'#233'nyes'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8853,'#39'Z'#225'k'#225'ny'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8854,'#39#336'rtilos'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8855,'#39'Belezna'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8856,'#39'Nemesp'#225'tr'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8856,'#39'Surd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8858,'#39'Porrog'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8858,'#39'Porrogszentkir'#225'ly'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8858,'#39'Porrogszentp'#225'l'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8858,'#39'Somogyb'#252'kk'#246'sd'#39','#39'Somogy'#39'),'
          ''
          ''
          ''
          '(8861,'#39'Szepetnek'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8862,'#39'Semj'#233'nh'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8863,'#39'Moln'#225'ri'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8864,'#39'T'#243'tszerdahely'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8865,'#39'T'#243'tszentm'#225'rton'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8866,'#39'Becsehely'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8866,'#39'Petrivente'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8868,'#39'Kistolm'#225'cs'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8868,'#39'Letenye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8868,'#39'Murar'#225'tka'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8868,'#39'Zajk'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8872,'#39'Muraszemenye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8872,'#39'Szentmargitfalva'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8873,'#39'Cs'#246'rnyef'#246'ld'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8874,'#39'Dobri'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8874,'#39'Kerkaszentkir'#225'ly'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8876,'#39'Tormaf'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8877,'#39'Tornyiszentmikl'#243's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8878,'#39'Lov'#225'szi'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8879,'#39'Kerkatesk'#225'nd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8879,'#39'Sz'#233'csisziget'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8881,'#39'Sorm'#225's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8882,'#39'Eszteregnye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8883,'#39'Rigy'#225'c'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8885,'#39'Borsfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8885,'#39'Valkonya'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8886,'#39'Olt'#225'rc'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8887,'#39'B'#225'zakerettye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8887,'#39'Lasztonya'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8888,'#39'Kiscsehi'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8888,'#39'Lispeszentadorj'#225'n'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8888,'#39'Mar'#243'c'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8891,'#39'B'#225'nokszentgy'#246'rgy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8891,'#39'V'#225'rf'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8893,'#39'Bucsuta'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8893,'#39'Szentliszl'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8895,'#39'Pusztamagyar'#243'd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8896,'#39'Pusztaszentl'#225'szl'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8897,'#39'S'#246'jt'#246'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8900,'#39'Zalaegerszeg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8904,'#39'Zalaegerszeg(Andr'#225'shida)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8911,'#39'Kiskutas'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8911,'#39'Nagykutas'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8912,'#39'Kisp'#225'li'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8912,'#39'Nagyp'#225'li'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8913,'#39'Egerv'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8913,'#39'G'#337'sfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8913,'#39'Lakhegy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8914,'#39'Vasboldogasszony'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8915,'#39'Nemesr'#225'd'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8917,'#39'Dobronhegy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8917,'#39'Milejszeg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8917,'#39'P'#225'lfiszeg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8918,'#39'Csonkahegyh'#225't'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8918,'#39'N'#233'metfalu'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8919,'#39'Kust'#225'nszeg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8921,'#39'Alib'#225'nfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8921,'#39'Peth'#337'henye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8921,'#39'Zalaszentiv'#225'n'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8921,'#39'Zalaszentl'#337'rinc'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8923,'#39'Nemesap'#225'ti'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8924,'#39'Als'#243'nemesap'#225'ti'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8925,'#39'Bucsuszentl'#225'szl'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8925,'#39'Kisbucsa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8925,'#39'Nemeshet'#233's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8925,'#39'Nemess'#225'ndorh'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8925,'#39'Nemesszentandr'#225's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8929,'#39'P'#246'l'#246'ske'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8931,'#39'Kemendoll'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8931,'#39'V'#246'ck'#246'nd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8932,'#39'Gy'#369'r'#369's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8932,'#39'P'#243'kaszepetk'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8932,'#39'Zalaistv'#225'nd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8934,'#39'Bezer'#233'd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8935,'#39'Alm'#225'sh'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8935,'#39'Misefa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8935,'#39'Nagykapornak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8935,'#39'Orb'#225'nyosfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8935,'#39'Pad'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8936,'#39'Zalaszentmih'#225'ly'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8943,'#39'Bocf'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8943,'#39'Csat'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8944,'#39'S'#225'rhida'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8945,'#39'Bak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8946,'#39'Bakt'#252'tt'#246's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8946,'#39'Pusztaederics'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8946,'#39'T'#243'fej'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8947,'#39'Szentkozmadombja'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8947,'#39'Zalat'#225'rnok'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8948,'#39'Barlahida'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8948,'#39'Nova'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8949,'#39'Mikekar'#225'csonyfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8951,'#39'Csertalakos'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8951,'#39'Gutorf'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8953,'#39'Szentp'#233'terf'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8954,'#39'Kissziget'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8954,'#39'Ortah'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8956,'#39'K'#225'nyav'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8956,'#39'P'#225'ka'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8956,'#39'P'#246'rdef'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8957,'#39'Cs'#246'm'#246'd'#233'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8957,'#39'Herny'#233'k'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8957,'#39'Zebecke'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8958,'#39'Ikl'#243'db'#246'rd'#337'ce'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8960,'#39'Gosztola'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8960,'#39'Lenti'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8966,'#39'Lenti(Lentik'#225'polna)'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8969,'#39'B'#246'deh'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8969,'#39'G'#225'borj'#225'nh'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8969,'#39'Szij'#225'rt'#243'h'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8969,'#39'Zalaszombatfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8971,'#39'Kerkabarab'#225's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8971,'#39'Zalabaksa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Als'#243'szenterzs'#233'bet'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Csesztreg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Fels'#337'szenterzs'#233'bet'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Kerkafalva'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Kerkakutas'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Magyarf'#246'ld'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8973,'#39'Ramocsa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8975,'#39'Szentgy'#246'rgyv'#246'lgy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8976,'#39'M'#225'rokf'#246'ld'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8976,'#39'Nemesn'#233'p'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8977,'#39'Baglad'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8977,'#39'Lendvajakabfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8977,'#39'Resznek'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8978,'#39'Bels'#337's'#225'rd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8978,'#39'K'#252'ls'#337's'#225'rd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8978,'#39'Lendvadedes'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8978,'#39'R'#233'dics'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8981,'#39'Gell'#233'nh'#225'za'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8981,'#39'Lick'#243'vadamos'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8983,'#39'Babosd'#246'br'#233'te'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8983,'#39'Nagylengyel'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8983,'#39'Orm'#225'ndlak'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8984,'#39'Gombosszeg'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8984,'#39'Iborfia'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8984,'#39'Petrikereszt'#250'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8985,'#39'Becsv'#246'lgye'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8986,'#39'P'#243'rszombat'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8986,'#39'Pusztaap'#225'ti'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8986,'#39'Szilv'#225'gy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8988,'#39'K'#225'l'#243'cfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8988,'#39'Kozmadombja'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8991,'#39'B'#246'de'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8991,'#39'Cs'#246'de'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8991,'#39'Hott'#243#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8991,'#39'Tesk'#225'nd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8992,'#39'Bagod'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8992,'#39'Boncodf'#246'lde'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8992,'#39'Hagy'#225'rosb'#246'r'#246'nd'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8992,'#39'Zalaboldogfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8994,'#39'K'#225'v'#225's'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8994,'#39'Zalaszentgy'#246'rgy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8995,'#39'Kem'#233'nfa'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8995,'#39'Salomv'#225'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8996,'#39'Zalacs'#233'b'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8997,'#39'Zalah'#225'sh'#225'gy'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8998,'#39'Ozm'#225'nb'#252'k'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8998,'#39'Vasp'#246'r'#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(8999,'#39'Zalal'#246'v'#337#39','#39'Zala'#39'),'
          ''
          ''
          ''
          '(9000,'#39'Gy'#337'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9011,'#39'Gy'#337'r(Gy'#337'rszentiv'#225'n)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9012,'#39'Gy'#337'r(M'#233'nf'#337'csanak)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9019,'#39'Gy'#337'r(Gyirm'#243't)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9061,'#39'V'#225'mosszabadi'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9062,'#39'Kisbajcs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9062,'#39'V'#233'nek'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9063,'#39'Nagybajcs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9071,'#39'G'#246'ny'#369#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9072,'#39'Nagyszentj'#225'nos'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9073,'#39'B'#337'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9074,'#39'R'#233'talap'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9081,'#39'Gy'#337'r'#250'jbar'#225't'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9082,'#39'Ny'#250'l'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9083,'#39#201'cs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9084,'#39'Gy'#337'rs'#225'g'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9085,'#39'P'#225'zm'#225'ndfalu'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9086,'#39'T'#246'lt'#233'stava'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9090,'#39'Pannonhalma'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9091,'#39'Ravazd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9092,'#39'Tarj'#225'npuszta'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9093,'#39'Gy'#337'rasszonyfa'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9094,'#39'T'#225'pszentmikl'#243's'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9095,'#39'T'#225'p'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9096,'#39'Nyalka'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9097,'#39'Mez'#337#246'rs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9098,'#39'P'#233'r(Mindszentpuszta)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9099,'#39'P'#233'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9100,'#39'T'#233't'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9111,'#39'T'#233'ny'#337#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9112,'#39'Sokor'#243'p'#225'tka'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9113,'#39'Koronc'#243#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9121,'#39'Gy'#337'rszemere'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9122,'#39'Felp'#233'c'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9123,'#39'Kaj'#225'rp'#233'c'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9124,'#39'Gy'#246'm'#246're'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9131,'#39'M'#243'richida'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9132,'#39#193'rp'#225's'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9133,'#39'Kisbabot'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9133,'#39'R'#225'baszentmikl'#243's'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9134,'#39'Bodonhely'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9135,'#39'R'#225'baszentmih'#225'ly'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9136,'#39'M'#233'rges'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9136,'#39'R'#225'bacs'#233'cs'#233'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9141,'#39'Ikr'#233'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9142,'#39'R'#225'bapatona'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9143,'#39'Enese'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9144,'#39'K'#243'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9145,'#39'B'#225'gyogszov'#225't'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9146,'#39'R'#225'bapord'#225'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9147,'#39'D'#246'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9151,'#39'Abda'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9152,'#39'B'#246'rcs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9153,'#39#214'ttev'#233'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9154,'#39'Mosonszentmikl'#243's'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9155,'#39'L'#233'b'#233'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9161,'#39'Gy'#337'rs'#246'v'#233'nyh'#225'z'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9162,'#39'Bezi'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9163,'#39'Feh'#233'rt'#243#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9164,'#39'Markotab'#246'd'#246'ge'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9165,'#39'Cak'#243'h'#225'za'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9165,'#39'R'#225'bcakapi'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9165,'#39'T'#225'rnokr'#233'ti'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9167,'#39'B'#337's'#225'rk'#225'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9168,'#39'Acsalag'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9169,'#39'Barbacs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9169,'#39'Magl'#243'ca'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9171,'#39'Gy'#337'r'#250'jfalu'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9172,'#39'Gy'#337'rz'#225'moly'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9173,'#39'Gy'#337'rladam'#233'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9174,'#39'Dunaszeg'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9175,'#39'Dunaszentp'#225'l'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9176,'#39'Mecs'#233'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9177,'#39#193'sv'#225'nyr'#225'r'#243#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9178,'#39'H'#233'derv'#225'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9181,'#39'Kimle'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9183,'#39'Mosonszentmikl'#243's(Moson'#250'jhely)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9184,'#39'Kunsziget'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9200,'#39'Mosonmagyar'#243'v'#225'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9211,'#39'Feketeerd'#337#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9221,'#39'Lev'#233'l'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9222,'#39'Hegyeshalom'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9223,'#39'Bezenye'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9224,'#39'Rajka'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9225,'#39'Dunakiliti'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9226,'#39'Dunasziget'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9228,'#39'Hal'#225'szi'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9231,'#39'M'#225'riak'#225'lnok'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9232,'#39'Darn'#243'zseli'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9233,'#39'Lip'#243't'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9234,'#39'Kisbodak'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9235,'#39'Dunaremete'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9235,'#39'P'#252'ski'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9241,'#39'J'#225'nossomorja(Mosonszentj'#225'nos)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9242,'#39'J'#225'nossomorja(Pusztasomorja)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9243,'#39'V'#225'rbalog'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9244,'#39#218'jr'#243'naf'#337#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9245,'#39'Mosonszolnok'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9300,'#39'Csorna'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9311,'#39'P'#225'sztori'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9312,'#39'Szils'#225'rk'#225'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9313,'#39'R'#225'bacsanak'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9314,'#39'Egyed'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9315,'#39'Sobor'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9316,'#39'R'#225'baszentandr'#225's'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9317,'#39'Szany'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9321,'#39'Far'#225'd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9322,'#39'R'#225'batam'#225'si'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9323,'#39'Jobah'#225'za'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9324,'#39'Bogyoszl'#243#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9324,'#39'Potyond'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9325,'#39'Sopronn'#233'meti'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9326,'#39'Szil'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9327,'#39'R'#225'basebes'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9327,'#39'V'#225'g'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9330,'#39'Kapuv'#225'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9339,'#39'Kapuv'#225'r('#214'nt'#233'smajor)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9341,'#39'Kisfalud'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9342,'#39'Mih'#225'lyi'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9343,'#39'Beled'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9343,'#39'Edve'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9343,'#39'V'#225's'#225'rosfalu'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9344,'#39'R'#225'bakec'#246'l'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9345,'#39'P'#225'li'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9346,'#39'Magyarkereszt'#250'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9346,'#39'Vadosfa'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9346,'#39'Zsebeh'#225'za'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9351,'#39'Bab'#243't'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9352,'#39'Veszk'#233'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9353,'#39'Sz'#225'rf'#246'ld'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9354,'#39'Osli'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9361,'#39'H'#246'vej'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9362,'#39'Himod'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9363,'#39'Gy'#243'r'#243#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9364,'#39'Cir'#225'k'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9365,'#39'D'#233'nesfa'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9371,'#39'Vitny'#233'd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9372,'#39'Csapod'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9373,'#39'Pusztacsal'#225'd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9374,'#39'Iv'#225'n'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9375,'#39'Cs'#225'fordj'#225'nosfa'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9375,'#39'Cs'#233'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9375,'#39'R'#233'pceszemere'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9400,'#39'Sopron'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9407,'#39'Sopron(Sopronk'#337'hida)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9408,'#39'Sopron(Brennbergb'#225'nya)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9421,'#39'Fert'#337'r'#225'kos'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9422,'#39'Harka'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9423,'#39#193'gfalva'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9431,'#39'Fert'#337'd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9433,'#39'Fert'#337'd(T'#337'zeggy'#225'rmajor)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9434,'#39'Sarr'#243'd(Fert'#337#250'jlak)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9435,'#39'Sarr'#243'd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9436,'#39'Fert'#337'sz'#233'plak'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9437,'#39'Hegyk'#337#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9441,'#39'Agyagosszerg'#233'ny'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9442,'#39'Fert'#337'endr'#233'd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9443,'#39'Pet'#337'h'#225'za'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9444,'#39'Fert'#337'szentmikl'#243's'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9451,'#39'Eberg'#337'c'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9451,'#39'R'#246'jt'#246'kmuzsaj'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9461,'#39'L'#246'v'#337#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9462,'#39'V'#246'lcsej'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9463,'#39'Sopronhorp'#225'cs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9464,'#39'Und'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9471,'#39'Nemesk'#233'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9472,'#39#218'jk'#233'r'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9473,'#39'Egyh'#225'zasfalu'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9474,'#39'Gyal'#243'ka'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9474,'#39'Szakony'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9475,'#39'R'#233'pcevis'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9476,'#39'Zsira'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9481,'#39'Pinnye'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9482,'#39'Nagyl'#243'zs'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9483,'#39'Sopronk'#246'vesd'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9484,'#39'Pereszteg'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9485,'#39'Nagycenk'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9491,'#39'Hidegs'#233'g'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9492,'#39'Fert'#337'homok'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9493,'#39'Fert'#337'boz'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9494,'#39'Sopron(Balf)'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9495,'#39'K'#243'ph'#225'za'#39','#39'Gy'#337'r-M.-S.'#39'),'
          ''
          ''
          ''
          '(9500,'#39'Celld'#246'm'#246'lk'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9511,'#39'Kemenesmih'#225'lyfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9512,'#39'Ostffyasszonyfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9513,'#39'Cs'#246'nge'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9514,'#39'Kenyeri'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9515,'#39'P'#225'poc'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9516,'#39'V'#246'n'#246'ck'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9517,'#39'Kemeness'#246'mj'#233'n'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9521,'#39'Kemenesszentm'#225'rton'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9522,'#39'Kemenesmagasi'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9523,'#39'Szerg'#233'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9531,'#39'Mersev'#225't'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9532,'#39'K'#252'ls'#337'vat'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(9533,'#39'Nemesszal'#243'k'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(9534,'#39'Marcalgergelyi'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(9534,'#39'Vin'#225'r'#39','#39'Veszpr'#233'm'#39'),'
          ''
          ''
          ''
          '(9541,'#39'Celld'#246'm'#246'lk(Izs'#225'kfa)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9542,'#39'Boba'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9542,'#39'Nemeskocs'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9544,'#39'Kemenesp'#225'lfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9545,'#39'J'#225'nosh'#225'za'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9547,'#39'Karak'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9548,'#39'Nemeskereszt'#250'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9549,'#39'Kel'#233'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9551,'#39'Mesteri'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9552,'#39'V'#225's'#225'rosmiske'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9553,'#39'Kemenesk'#225'polna'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9553,'#39'K'#246'csk'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9554,'#39'Borg'#225'ta'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9554,'#39'Egyh'#225'zashetye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9555,'#39'Kissomly'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9556,'#39'Duka'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9561,'#39'Nagysimonyi'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9561,'#39'Tokorcs'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9600,'#39'S'#225'rv'#225'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9608,'#39'S'#225'rv'#225'r(R'#225'bas'#246'mj'#233'n)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9609,'#39'S'#225'rv'#225'r(L'#225'nkapuszta)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9611,'#39'Cs'#233'nye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9612,'#39'B'#246'g'#246't'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9612,'#39'Porp'#225'c'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9621,'#39#214'lb'#337#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9622,'#39'Szeleste'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9623,'#39'R'#233'pceszentgy'#246'rgy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9624,'#39'Chernelh'#225'zadamonya'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9625,'#39'B'#337#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9625,'#39'G'#243'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9631,'#39'Hegyfalu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9632,'#39'Sajtosk'#225'l'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9633,'#39'Simas'#225'g'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9634,'#39'Iklanber'#233'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9634,'#39'L'#243'cs'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9635,'#39'Zs'#233'deny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9636,'#39'P'#243'sfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9641,'#39'R'#225'bapaty'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9643,'#39'J'#225'kfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9651,'#39'Urai'#250'jfalu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9652,'#39'Nick'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9653,'#39'R'#233'pcelak'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9654,'#39'Cs'#225'nig'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9661,'#39'Vasegerszeg'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9662,'#39'Mesterh'#225'za'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9662,'#39'Tompal'#225'dony'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9663,'#39'Nemesl'#225'dony'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9664,'#39'Nagygeresd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9665,'#39'V'#225'moscsal'#225'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9671,'#39'Sitke'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9672,'#39'G'#233'rce'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9673,'#39'K'#225'ld'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9674,'#39'Vashossz'#250'falu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9675,'#39'B'#246'g'#246'te'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9676,'#39'Hossz'#250'pereszteg'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9681,'#39'S'#243'tony'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9682,'#39'Ny'#337'g'#233'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9683,'#39'Bejcgyerty'#225'nos'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9684,'#39'Egerv'#246'lgy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9685,'#39'Szemenye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9700,'#39'Szombathely'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9707,'#39'Szombathely(Her'#233'ny)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9719,'#39'Szombathely(Szentkir'#225'ly)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9721,'#39'Gencsap'#225'ti'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9722,'#39'Perenye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9723,'#39'Gy'#246'ngy'#246'sfalu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9724,'#39'Luk'#225'csh'#225'za'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9725,'#39'C'#225'k'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9725,'#39'K'#337'szegdoroszl'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9725,'#39'K'#337'szegszerdahely'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9726,'#39'Velem'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9727,'#39'Bozsok'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9730,'#39'K'#337'szeg'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9733,'#39'Horv'#225'tzsid'#225'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9733,'#39'Kiszsid'#225'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9733,'#39#211'lmod'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9734,'#39'Peresznye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9735,'#39'Csepreg'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9736,'#39'Torm'#225'sliget'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9737,'#39'B'#252'k'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9738,'#39'T'#246'm'#246'rd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9739,'#39'K'#337'szegpaty'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9739,'#39'Nemescs'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9739,'#39'Pusztacs'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9740,'#39'B'#252'k(B'#252'kf'#252'rd'#337')'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9741,'#39'Vassur'#225'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9742,'#39'Salk'#246'vesk'#250't'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9743,'#39'S'#246'pte'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9744,'#39'Vasasszonyfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9745,'#39'Meszlen'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9746,'#39'Acs'#225'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9747,'#39'Vasszilv'#225'gy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9748,'#39'V'#225't'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9749,'#39'Nemesb'#337'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9751,'#39'V'#233'p'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9752,'#39'Bozzai'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9752,'#39'Ken'#233'z'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9754,'#39'Megyeh'#237'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9754,'#39'Pec'#246'l'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9756,'#39'Ikerv'#225'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9757,'#39'Meggyeskov'#225'csi'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9761,'#39'T'#225'pl'#225'nszentkereszt'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9762,'#39'Tanakajd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9763,'#39'Vassz'#233'cs'#233'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9764,'#39'Csempeszkop'#225'cs'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9766,'#39'R'#225'bat'#246'tt'#246's'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9766,'#39'Rum'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9766,'#39'Zsennye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9771,'#39'Balogunyom'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9772,'#39'Kisunyom'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9773,'#39'Sorokpol'#225'ny'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9774,'#39'Gyan'#243'geregye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9774,'#39'Sorkifalud'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9774,'#39'Sorkik'#225'polna'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9775,'#39'Nemeskolta'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9776,'#39'P'#252'sp'#246'kmoln'#225'ri'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9777,'#39'R'#225'bahidv'#233'g'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9781,'#39'Egyh'#225'zasholl'#243's'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9782,'#39'Nemesrempeholl'#243's'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9783,'#39'Egyh'#225'zasr'#225'd'#243'c'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9784,'#39'Harasztifalu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9784,'#39'Nagyk'#246'lked'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9784,'#39'R'#225'dock'#246'lked'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9789,'#39'S'#233#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9791,'#39'Dozmat'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9791,'#39'Torony'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9792,'#39'Bucsu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9793,'#39'Narda'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9794,'#39'Fels'#337'csat'#225'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9795,'#39'Vaskeresztes'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9796,'#39'Horv'#225'tl'#246'v'#337#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9796,'#39'Porn'#243'ap'#225'ti'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9797,'#39'N'#225'rai'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9798,'#39'J'#225'k'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9799,'#39'Szentp'#233'terfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9800,'#39'Vasv'#225'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9811,'#39'Andr'#225'sfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9812,'#39'Telekes'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9813,'#39'Gersekar'#225't'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9813,'#39'S'#225'rfimizd'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9814,'#39'Halast'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9821,'#39'Gy'#337'rv'#225'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9821,'#39'Hegyh'#225'tszentp'#233'ter'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9823,'#39'P'#225'csony'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9824,'#39'Olaszfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9825,'#39'Oszk'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9826,'#39'Pet'#337'mih'#225'lyfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9831,'#39'B'#233'rbaltav'#225'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9832,'#39'Nagytilaj'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9833,'#39'Csehi'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9834,'#39'Csehimindszent'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9835,'#39'Mikossz'#233'plak'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9836,'#39'Csipkerek'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9841,'#39'K'#225'm'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9842,'#39'Als'#243#250'jlak'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9900,'#39'K'#246'rmend'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9909,'#39'K'#246'rmend(Horv'#225'tn'#225'dalja)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9909,'#39'Magyarn'#225'dalja'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9912,'#39'Magyarszecs'#337'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9912,'#39'Molnaszecs'#337'd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9913,'#39'D'#246'r'#246'ske'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9913,'#39'Nagymizd'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9913,'#39'Szarvaskend'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9914,'#39'D'#246'b'#246'rhegy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9915,'#39'Hegyh'#225'thod'#225'sz'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9915,'#39'Hegyh'#225'ts'#225'l'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9915,'#39'Katafa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9915,'#39'N'#225'dasd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9917,'#39'Daraboshegy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9917,'#39'Halogy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9918,'#39'Fels'#337'mar'#225'c'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9919,'#39'Cs'#225'k'#225'nydoroszl'#243#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9921,'#39'Vasalja'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9922,'#39'Pinkamindszent'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9923,'#39'Kemestar'#243'dfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9931,'#39'Hegyh'#225'tszentm'#225'rton'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9931,'#39'Iv'#225'nc'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9932,'#39'Visz'#225'k'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9933,'#39#336'rimagyar'#243'sd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9934,'#39'Fels'#337'j'#225'nosfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9934,'#39'Hegyh'#225'tszentjakab'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9934,'#39'Szakny'#233'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9935,'#39'Sz'#337'ce'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9936,'#39'Kisr'#225'kos'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9937,'#39'Pankasz'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9938,'#39'Nagyr'#225'kos'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9938,'#39'Szatta'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9941,'#39'Isp'#225'nk'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9941,'#39#336'riszentp'#233'ter'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9942,'#39'Szalaf'#337#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9943,'#39'Kondorfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9944,'#39'Baj'#225'nsenye'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9944,'#39'Kerk'#225'sk'#225'polna'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9945,'#39'Kercaszomor'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9946,'#39'Magyarszombatfa'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9946,'#39'Velem'#233'r'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9951,'#39'R'#225't'#243't'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9952,'#39'Gasztony'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9953,'#39'Nemesmedves'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9953,'#39'Vasszentmih'#225'ly'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9954,'#39'R'#246'n'#246'k'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9955,'#39'Szentgotth'#225'rd(R'#225'baf'#252'zes)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9961,'#39'R'#225'bagyarmat'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9962,'#39'Cs'#246'r'#246'tnek'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9962,'#39'Magyarlak'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9970,'#39'Szentgotth'#225'rd'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9981,'#39'Szentgotth'#225'rd(Farkasfa)'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9982,'#39'Ap'#225'tistv'#225'nfalva'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9982,'#39'K'#233'tv'#246'lgy'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9982,'#39'Orfalu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9983,'#39'Als'#243'sz'#246'ln'#246'k'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9983,'#39'Szakonyfalu'#39','#39'Vas'#39'),'
          ''
          ''
          ''
          '(9985,'#39'Fels'#337'sz'#246'ln'#246'k'#39','#39'Vas'#39');')
      end>
    Connection = Kapcs
    Params = <>
    Macros = <>
    Left = 8
    Top = 320
  end
  object irszQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'SELECT megye, varos from irsz where irsz=:p0;')
    Left = 272
    Top = 392
    ParamData = <
      item
        Name = 'P0'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object NyitbeQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'SELECT *'
      'FROM nyitbe'
      '!SZURES'
      'ORDER BY ErkDatum desc, ErkIdo desc'
      '')
    Left = 616
    Top = 56
    MacroData = <
      item
        Value = ''
        Name = 'SZURES'
      end>
  end
  object NyitbeDS: TDataSource
    DataSet = NyitbeQ
    Left = 613
    Top = 111
  end
  object tipusQDs: TDataSource
    DataSet = tipusQ
    Left = 340
    Top = 536
  end
  object tipusQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from tipus')
    Left = 340
    Top = 480
    object tipusQid: TAutoIncField
      FieldName = 'id'
    end
    object tipusQnev: TWideStringField
      FieldName = 'nev'
      Size = 50
    end
  end
  object HardverQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'Select *'
      'From hardver_beallitasok')
    Left = 704
    Top = 56
  end
  object HardverDS: TDataSource
    DataSet = HardverQ
    Left = 701
    Top = 111
  end
  object HWKapcs: TFDConnection
    ConnectionName = 'HWKapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=MaTt2019'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=knz'
      'Port=3307'
      'Database=alap')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    UpdateOptions.AssignedValues = [uvLockMode, uvLockWait]
    UpdateOptions.LockMode = lmOptimistic
    LoginPrompt = False
    OnLost = KapcsLost
    BeforeCommit = KapcsBeforeCommit
    Left = 128
    Top = 40
  end
  object MentesKapcs: TFDConnection
    ConnectionName = 'MentesKapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=MaTt2019'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=knz'
      'Port=3307'
      'Database=alap')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    UpdateOptions.AssignedValues = [uvLockMode, uvLockWait]
    UpdateOptions.LockMode = lmOptimistic
    LoginPrompt = False
    OnLost = KapcsLost
    BeforeCommit = KapcsBeforeCommit
    Left = 184
    Top = 40
  end
  object Auto_mjegy_kapcs: TFDConnection
    ConnectionName = 'Auto_mjegy_kapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=MaTt2019'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=knz'
      'Port=3307'
      'Database=alap')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    UpdateOptions.AssignedValues = [uvLockMode, uvLockWait]
    UpdateOptions.LockMode = lmOptimistic
    LoginPrompt = False
    Transaction = Auto_mjegy_Trans
    OnLost = KapcsLost
    BeforeCommit = KapcsBeforeCommit
    Left = 272
    Top = 40
  end
  object Auto_mjegy_Trans: TFDTransaction
    Connection = Auto_mjegy_kapcs
    Left = 272
    Top = 96
  end
  object Auto_mjegyQ: TFDQuery
    Connection = Auto_mjegy_kapcs
    Transaction = Auto_mjegy_Trans
    Left = 272
    Top = 160
  end
  object Auto_mjegyINUPQ: TFDQuery
    Connection = Auto_mjegy_kapcs
    Transaction = Auto_mjegy_Trans
    Left = 272
    Top = 224
  end
  object frxPDFTeszthez: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 272
    Top = 280
  end
end
