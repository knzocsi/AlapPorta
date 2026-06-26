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
    Left = 448
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
    Left = 392
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
    ReportOptions.LastChange = 46077.730010914350000000
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
        Height = 559.984540000000000000
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
          Width = 84.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            #201'rt'#233'kes'#237't'#337':')
          ParentFont = False
        end
        object mempartnerneve: TfrxMemoView
          AllowVectorExport = True
          Left = 104.031540000000000000
          Top = 111.047310000000000000
          Width = 304.157700000000000000
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
          Top = 342.535560000000000000
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
          Top = 342.535560000000000000
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
          Top = 342.535560000000000000
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
          Top = 342.535560000000000000
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
          Left = 555.590910000000000000
          Top = 3.118120000000000000
          Width = 154.960730000000000000
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
          Top = 364.787570000000000000
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
          Top = 364.787570000000000000
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
          Left = 7.559060000000000000
          Top = 430.228510000000000000
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
          Top = 430.126160000000000000
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
          Top = 430.228510000000000000
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
          Top = 430.228510000000000000
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
          Top = 430.228510000000000000
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
          Top = 430.228510000000000000
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
          Top = 533.307360000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 453.543600000000000000
          Top = 533.307360000000000000
          Width = 226.771800000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object memmerlegkezelo: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 537.086890000000000000
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
          Top = 537.866420000000000000
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
            'Fuvaroz'#243)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 363.874150000000000000
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
          Top = 363.874150000000000000
          Width = 138.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 320.535560000000000000
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
          Top = 320.535560000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
        end
        object memtermkodlbl: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 387.700990000000000000
          Width = 50.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VTSZ:')
          ParentFont = False
        end
        object memtermkod: TfrxMemoView
          AllowVectorExport = True
          Left = 62.047310000000000000
          Top = 387.622047240000000000
          Width = 112.472480000000000000
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
          Top = 387.622047240000000000
          Width = 91.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Megnevez'#233's:')
          ParentFont = False
        end
        object memtermnev: TfrxMemoView
          AllowVectorExport = True
          Left = 281.102660000000000000
          Top = 387.622047240000000000
          Width = 397.669450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 414.803340000000000000
          Top = 271.653680000000000000
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
          Left = 505.071120000000000000
          Top = 271.653680000000000000
          Width = 205.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
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
          Left = 8.338590000000000000
          Top = 271.330860000000000000
          Width = 58.929190000000000000
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
          Left = 70.047310000000000000
          Top = 271.330860000000000000
          Width = 137.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Top = 471.748300000000000000
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
        object memsznetto: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 471.748300000000000000
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
          Width = 76.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vev'#337':')
          ParentFont = False
        end
        object mempartnerneve2: TfrxMemoView
          AllowVectorExport = True
          Left = 104.031540000000000000
          Top = 162.519790000000000000
          Width = 304.157700000000000000
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
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 411.189240000000000000
          Top = 85.149660000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'K'#220'J/KTJ:')
          ParentFont = False
        end
        object memmerlegtipusa: TfrxMemoView
          AllowVectorExport = True
          Left = 475.441250000000000000
          Top = 85.149660000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'memmerlegtipusa')
          ParentFont = False
        end
        object mempartner3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 216.000000000000000000
          Width = 68.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#243':')
          ParentFont = False
        end
        object mempartnerneve3: TfrxMemoView
          AllowVectorExport = True
          Left = 104.031540000000000000
          Top = 216.000000000000000000
          Width = 304.157700000000000000
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
        object mempartnercime3: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 216.000000000000000000
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
        object Line7: TfrxLineView
          AllowVectorExport = True
          Top = 265.133890000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object memszarhelylbl: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 295.000000000000000000
          Width = 114.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'rmaz'#225'si hely:')
          ParentFont = False
        end
        object memszarhely: TfrxMemoView
          AllowVectorExport = True
          Left = 128.000000000000000000
          Top = 295.000000000000000000
          Width = 377.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object ce_kep: TfrxPictureView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000006A40000
            06A4080600000092D07A38000000017352474200AECE1CE90000FFFF49444154
            78DAECDD7990DFF55DF8F1B7C7A875A63A1E333ADE3376BC1DB55AC7D17F6CA7
            6E8691966AAB28D07294D57600A50502CA11286751EE64A81B12298550420A24
            06E84AB824011A3625982621E420076473907349369B637F3FDF9F9A18208424
            9FFDECFBF5FD7E1F8F99EF7C93F49F17F39AD97EF6F3FC1CDF93000000000000
            A041DF537A00000000000000DA9B2005000000000040A304290000000000001A
            2548010000000000D028410A000000000080460952000000000000344A900200
            00000000A05182140000000000008D12A4000000000000689420050000000000
            40A304290000000000001A2548010000000000D028410A000000000080460952
            000000000000344A90020000000000A05182140000000000008D12A400000000
            000068942005000000000040A304290000000000001A2548010000000000D028
            410A000000000080460952000000000000344A90020000000000A05182140000
            000000008D12A400000000000068942005000000000040A30429000000000000
            1A2548010000000000D028410A000000000080460952000000000000344A9002
            0000000000A05182140000000000008D12A40000000000006894200500000000
            0040A304290000000000001A2548010000000000D028410A0000000000804609
            52000000000000344A90020000000000A05182140000000000008D12A4000000
            00000068942005000000000040A304290000000000001A2548010000000000D0
            28410A000000000080460952000000000000344A90020000000000A051821400
            00000000008D12A400000000000068942005000000000040A304290000000000
            001A2548010000000000D028410A000000000080460952000000000000344A90
            020000000000A05182140000000000008D12A400000000000068942005000000
            000040A304290000000000001A2548010000000000D028410A00000000008046
            0952000000000000344A90020000000000A05182140000000000008D12A40000
            0000000068942005000000000040A304290000000000001A2548010000000000
            D028410A000000000080460952000000000000344A90020000000000A0518214
            0000000000008D12A400000000000068942005000000000040A3042900000000
            00001A2548010000000000D028410A000000000080460952000000000000344A
            90020000000000A05182140000000000008D12A4000000000000689420050000
            00000040A304290000000000001A2548010000000000D028410A000000000080
            460952000000000000344A90020000000000A05182140000000000008D12A400
            000000000068942005000000000040A304290000000000001A25480100000000
            00D028410A000000000080460952000000000000344A90020000000000A05182
            140000000000008D12A400000000000068942005000000000040A30429000000
            0000001A254805F3FFFE47E9190000000000A0D57DCFFF283D03FFC7328211A4
            0000000000A03E412A16CB084690020000000080FA04A9582C2318410A000000
            0000EA13A462B18C6004290000000000A84F908AC5328211A40000000000A03E
            412A16CB084690020000000080FA04A9582C2318410A0000000000EA13A462B1
            8C6004290000000000A84F908AC5328211A40000000000A03E412A16CB084690
            020000000080FA04A9582C2318410A0000000000EA13A462B18C600429000000
            0000A84F908AC5328211A40000000000A03E412A16CB084690020000000080FA
            04A9582C2318410A0000000000EA13A462B18C6004290000000000A84F908AC5
            328211A40000000000A03E412A16CB084690020000000080FA04A9582C231841
            0A0000000000EA13A462B18C6004290000000000A84F908AC5328211A4000000
            0000A03E412A16CB084690020000000080FA04A9582C2318410A0000000000EA
            13A462B18C6004290000000000A84F908AC5328211A40000000000A03E412A16
            CB084690020000000080FA04A9582C2318410A0000000000EA13A462B18C6004
            290000000000A84F908AC5328211A40000000000A03E412A16CB084690020000
            000080FA04A9582C2318410A0000000000EA13A462B18C6004290000000000A8
            4F908AC5328211A40000000000A03E412A16CB084690020000000080FA04A958
            2C2318410A0000000000EA13A462B18C6004290000000000A84F908AC5328211
            A40000000000A03E412A16CB084690020000000080FA04A9582C2318410A0000
            000000EA13A462B18C6004290000000000A84F908AC5328211A40000000000A0
            3E412A16CB084690020000000080FA04A9582C2318410A0000000000EA13A462
            B18C6004290000000000A84F908AC5328211A40000000000A03E412A16CB0846
            90020000000080FA04A9582C2318410A0000000000EA13A462B18C6004290000
            000000A84F908AC5328211A40000000000A03E412A16CB084690020000000080
            FA04A9582C2318410A0000000000EA13A462B18C6004290000000000A84F908A
            C5328211A40000000000A03E412A16CB084690020000000080FA04A9582C2318
            410A0000000000EA13A462B18C6004290000000000A84F908AC5328211A40000
            000000A03E412A16CB084690020000000080FA04A9582C2318410A0000000000
            EA13A462B18C6004290000000000A84F908AC5328211A40000000000A03E412A
            16CB084690020000000080FA04A9582C2318410A0000000000EA13A462B18C60
            04290000000000A84F908AC5328211A40000000000A03E412A16CB0846900200
            00000080FA04A9582C2318410A0000000000EA13A462B18C6004290000000000
            A84F908AC5328211A40000000000A03E412A16CB084690020000000080FA04A9
            582C2318410A0000000000EA13A462B18C6004290000000000A84F908AC53282
            11A40000000000A03E412A16CB084690020000000080FA04A9582C2318410A00
            00000000EA13A462B18C6004290000000000A84F908AC5328211A40000000000
            A03E412A16CB084690020000000080FA04A9582C2318410A0000000000EA13A4
            62B18C6004290000000000A84F908AC5328211A40000000000A03E412A16CB08
            4690020000000080FA04A9582C2318410A0000000000EA13A462B18C60042900
            00000000A84F908AC5328211A40000000000A03E412A16CB0846900200000000
            80FA04A9582C2318410A0000000000EA13A462B18C6004290000000000A84F90
            8AC5328211A40000000000A03E412A16CB084690020000000080FA04A9582C23
            18410A0000000000EA13A462B18C6004290000000000A84F908AC5328211A400
            00000000A03E412A16CB084690020000000080FA04A9582C2318410A00000000
            00EA13A462B18C6004290000000000A84F908AC5328211A40000000000A03E41
            2A16CB084690020000000080FA04A9582C2318410A0000000000EA13A462B18C
            6004290000000000A84F908AC5328211A40000000000A03E412A16CB08469002
            0000000080FA04A9582C2318410A0000000000EA13A462B18C60042900000000
            00A84F908AC5328211A40000000000A03E412A16CB084690020000000080FA04
            A9582C2318410A0000000000EA13A462B18C6004290000000000A84F908AC532
            8211A40000000000A03E412A16CB084690020000000080FA04A9582C2318410A
            0000000000EA13A462B18C6004290000000000A84F908AC5328211A400000000
            00A03E412A16CB084690020000000080FA04A9582C2318410A0000000000EA13
            A462B18C6004290000000000A84F908AC5328211A40000000000A03E412A16CB
            084690020000000080FA04A9582C2318410A0000000000EA13A462B18C600429
            0000000000A84F908AC5328211A40000000000A03E412A16CB08469002000000
            0080FA04A9582C2318410A0000000000EA13A462B18C6004290000000000A84F
            908AC5328211A40000000000A03E412A16CB084690020000000080FA04A9582C
            2318410A0000000000EA13A462B18C6004290000000000A84F908AC5328211A4
            0000000000A03E412A16CB084690020000000080FA04A9582C2318410A000000
            0000EA13A462B18C6004290000000000A84F908AC5328211A40000000000A03E
            412A16CB084690020000000080FA04A9582C2318410A0000000000EA13A462B1
            8C6004290000000000A84F908AC5328211A40000000000A03E412A16CB084690
            020000000080FA04A9582C2318410A0000000000EA13A462B18C600429000000
            0000A84F908AC5328211A40000000000A03E412A16CB084690020000000080FA
            04A9582C2318410A0000000000EA13A462B18C6004290000000000A84F908AC5
            328211A40000000000A03E412A16CB084690020000000080FA04A9582C231841
            0A0000000000EA13A462B18C6004290000000000A84F908AC5328211A4000000
            0000A03E412A16CB084690020000000080FA04A9582C2318410A0000000000EA
            13A462B18C6004290000000000A84F908AC5328211A40000000000A03E412A16
            CB084690020000000080FA04A9582C2318410A0000000000EA13A462B18C6004
            290000000000A84F908AC5328211A40000000000A03E412A16CB084690020000
            000080FA04A9582C2318410A0000000000EA13A462B18C6004290000000000A8
            4F908AC5328211A40000000000A03E412A16CB084690020000000080FA04A958
            2C2318410A0000000000EA13A462B18C6004290000000000A84F908AC5328211
            A40000000000A03E412A16CB084690020000000080FA04A9582C2318410A0000
            000000EA13A462B18C6004290000000000A84F908AC5328211A40000000000A0
            3E412A16CB084690020000000080FA04A9582C2318410A0000000000EA13A462
            B18C6004290000000000A84F908AC5328211A40000000000A03E412A16CB0846
            90020000000080FA04A9582C2318410A0000000000EA13A462B18C6004290000
            000000A84F908AC5328211A40000000000A03E412A16CB084690020000000080
            FA04A9582C2318410A0000000000EA13A462B18C6004290000000000A84F908A
            C5328211A40000000000A03E412A16CB084690020000000080FA04A9582C2318
            410A0000000000EA13A462B18C6004290000000000A84F908AC5328211A40000
            000000A03E412A16CB084690020000000080FA04A9582C2318410A0000000000
            EA13A462B18C6004290000000000A84F908AC5328211A40000000000A03E412A
            16CB084690020000000080FA04A9582C2318410A0000000000EA13A462B18C60
            04290000000000A84F908AC5328211A40000000000A03E412A16CB0846900200
            886DDBB66D697070F01D9FBD7BF7A6A1A1A1B467CF9EEACF6FFF3ED4BFE5EF7D
            FBF695FE4F6A191FFFF8C7D3073FF8C1D26300001CB137DF7CF390C78EF9B871
            F7EEDDEF7A8C78B8E3478ECC073EF08174CA29A7941E83C204A9582C2318410A
            006064E45FFEB76FDF5E7D0606060EF9BD73E7CEB465CB9677FCDBA14E1AECD8
            B1A3F47F52C7EBE9E949DDDDDDA5C70000DAD0AE5DBB0E7BDC983FF9F8325F9C
            74F0BFE563C7431D3FE6FF8DB2BABABA526F6F6FE931284C908AC5328211A400
            000E6D787838AD5FBFFEC067C3860DEFFAF78D1B37565790D25EFEEDDFFE2DFD
            DDDFFD5DE931008016B179F3E6F73C6EDCFFF71C95682F7FF6677F96FEF33FFF
            B3F418142648C56219C108520040A75AB3664D5AB972657AF5D557D3AA55ABAA
            EFD5AB57A7B56BD7562709366DDA547A440A73871400B05F3E36CCC78EFB3FF9
            D8317FE763C71C99F2379DCD1D526482542C96118C200500B4A37C88934F0A1C
            7CB2E0E04F0E4F9E87CF7B71871400748EFC58E5B71F331E7C1C991F9B0787E3
            0E2932412A16CB08469002005A553E8C79FDF5D7D3D2A54BDFF159BE7C79F5E2
            66A843900280F692DFB3F4F2CB2F1F38665CB66CD9813FE72005750852648254
            2C96118C2005004497EF747AFB0983FD7FCF2F7086A6085200D07ADE7CF3CDB4
            64C992435EB4E491CC3449902213A462B18C6004290020827C48921F89B278F1
            E2B468D1A2039FFC778F47A114410A00E2DABC7973FACE77BEF39663C7FCE9EF
            EF2F3D1A1D4A902213A462B18C600429006034EDDBB7AF7A9CDEDB4F1CE4AB58
            77EEDC597A3C780B410A00CA5BB76EDD3B8E1DF367E3C68DA54783B710A4C804
            A9582C2318410A00684ABE3AF5A5975E4AFFFDDFFF9DE6CF9F5F9D38C87F8756
            D1D3D393BABBBB4B8F01001D213F8A391F33E6E3C57CDC386FDEBCB470E1C2B4
            6DDBB6D2A3C111E9EAEA4ABDBDBDA5C7A030412A16CB0846900200EACA773DED
            8F4D077F366CD8507A34A8C51D5200D08CD5AB57BFE3D831DF453F3C3C5C7A34
            3866EE902213A462B18C60042900E068E49744F7F5F5A56F7FFBDBD58983FCDC
            FEFC676847EE900280FA5E7CF1C503C78EF9CEF9FC67EF08A51DB9438A4C908A
            C5328211A40080C379E59557D273CF3D577D9E7FFEF92A40E53BA2A013B8430A
            008ECEA64D9B0E1C3BE6CFDCB973D38E1D3B4A8F05A3C21D526482542C96118C
            200500EC97EF7ECA270D0E0E50F9A402742A410A00DE5DBE4869C182056F0950
            CB962D2B3D16142348910952B158463082140074AE975F7EB98A4EF9E4C1B7BE
            F5ADEA312AC0FFF1C83E00F83FDBB66D4BFFF55FFF75203EE5E3C7C1C1C1D263
            41181ED9472648C56219C1085200D039162E5C589D44D8FF59BB766DE9912034
            774801D0C9F29DF24F3CF1C48163C77C3794D348F0EEDC21452648C56219C108
            5200D09E868787D3FCF9F30F9C4078E69967D21B6FBC517A2C68298214009D24
            5FAC7470805AB26449E991A0A508526482542C96118C200500ED61EFDEBDE985
            175E38700261F6ECD969FBF6EDA5C78296264801D0CE962E5D5A1D373EFDF4D3
            D5F7AA55AB4A8F042D4D902213A462B18C60042900684DF9FFC2F33B9F1E7FFC
            F1346BD6ACEA0EA81D3B76941E0BDA8A2005403B59B76E5D75B23C1F3FE6CFEB
            AFBF5E7A24682B82149920158B650423480140EB58BD7A75F592DC7C02213F4E
            65E3C68DA54782B6264801D0CA060606AA63C67CF1523E7E5CBC7871E991A0AD
            09526482542C96118C200500716DDEBCB93A81B0FF24C28A152B4A8F041D4590
            02A095ECDEBD3BCD9933E7C01DF47D7D7D69DFBE7DA5C7828E2148910952B158
            4630821400C4F2D4534FA5471F7DB4BA132A3F920F2847900220BA575F7D354D
            9B362D3DF6D863D5239C77EDDA557A24E85882149920158B65042348014059F9
            BD4F8F3CF2489A316346F59DEF8A026210A40088667878383DFBECB3D5B163FE
            2C59B2A4F448C0FF12A4C804A9582C2318410A00465F7F7F7F7AF0C107AB9308
            4F3EF964F57815201E410A800876EEDC59DD3D9F8F1D67CE9C99DE78E38DD223
            01872048910952B15846308214008C8E6F7FFBDB07AE647DF1C5174B8F031C01
            410A8052D6AF5F9F1E7AE8A1EAD8F189279EF0283E680182149920158B650423
            48014073F2CBA4F34984FBEFBF3FAD5BB7AEF438C05112A400184D4B972E4D53
            A74EADEEA49F376F5EE97180A32448910952B15846308214008C9CBD7BF75611
            2ABF583A5FD1BA69D3A6D2230135085200346DC18205D5B163FE2C5AB4A8F438
            400D82149920158B6504234801403DF9FD4FF999FEF92442BE1B6AEBD6ADA547
            02468820054013F2A39CBFF18D6F54C78FAFBCF24AE97180112248910952B158
            46308214001CBDFC0CFF471E79A43A91905F2CBD7DFBF6D223010D10A4001829
            73E7CEAD02543E7E5CB16245E971800608526482542C96118C20050047667070
            303DFCF0C3E9BEFBEEABBEF3DF81F6D6D3D393BABBBB4B8F01408B7AEEB9E7AA
            77423DF0C00369F5EAD5A5C7011AD6D5D5553D3D83CE2648C56219C1085200F0
            EEF23BA1F2156E53A64C49D3A74F4F6FBEF966E9918051E40E29008ED6E2C58B
            D3D7BEF6B574EFBDF7A6952B57961E071845EE902213A462B18C6004290078AB
            FC7F8DB367CFAE22547EACCA1B6FBC517A24A010410A8023B166CD9A74F7DD77
            57116AC18205A5C7010A11A4C804A9582C2318410A00BE6BFEFCF9D54984AF7F
            FDEB1EA90254042900DE4DBE68293FCA395FC4941FCDE7F40A2048910952B158
            46308214009DECD5575F4DF7DC734F15A2162D5A547A1C2018410A8083E5C737
            E7F741E563C759B366558F7706D84F902213A462B18C600429003ACDB66DDBAA
            E7FAEFBF9A15E0DDF4F4F4A4EEEEEED2630050D8A38F3E9AEEBAEBAEEA4E7A80
            77D3D5D5957A7B7B4B8F416182542C96118C20054027181E1EAE7E31B8F3CE3B
            D3F4E9D3D3D0D050E9918016E00E2980CEB56CD9B23471E2C4EADD506BD7AE2D
            3D0ED002DC21452648C56219C1085200B4B3575E79254D9A34A9BA23AABFBFBF
            F438408B11A4003A4BBE933EDF459F2F629A3B776EE97180162348910952B158
            4630821400ED269F48C8EF85CA27125E78E185D2E3002D4C9002687FF94EFA6F
            7EF39BD5B1E38C1933DC490F1C33418A4C908AC5328211A40068074E24004D10
            A400DA57BE93FE8E3BEEA81EC9E74E7A602408526482542C96118C2005402BDB
            B0614375C2387F5E7FFDF5D2E3006D469002682F7BF6EC49D3A64D4B13264C48
            73E6CC293D0ED066042932412A16CB08469002A015CD9E3DBB3A91F08D6F7CA3
            3AB100D004410AA03DAC5DBB36DD7EFBED69E2C48969FDFAF5A5C701DA942045
            2648C56219C1085200B48AC1C1C1EA912A3944BDF4D24BA5C7013A802005D0DA
            9E7CF2C9347EFCF8EA91CE7BF7EE2D3D0ED0E6042932412A16CB0846900220BA
            152B56A4DB6EBBAD7A3FD4D6AD5B4B8F037410410AA0F50C0C0CA4BBEEBAABBA
            8869F1E2C5A5C7013A8820452648C56219C108520044343C3C9C66CE9C599D48
            78ECB1C792FFBB024A10A4005AC792254BD2ADB7DE9ABEF6B5AF55510A60B409
            526482542C96118C20054024DBB76F4F3D3D3DD5A35556AD5A557A1CA0C3E59F
            47DDDDDDA5C700E030A64F9F5E85A8279E78A2F4284087EBEAEA4ABDBDBDA5C7
            A030412A16CB0846900220821C9F6EBCF1C6F4EFFFFEEFAE6805C2708714404C
            F9DDA293274F4EB7DC724B5ABA7469E971002AEE902213A462B18C600429004A
            9A3D7B76BAE9A69BD2430F3D543DA60F2012410A209675EBD655112ADFC1BA79
            F3E6D2E300BC8520452648C56219C10852008CB67DFBF6A5A953A75621EA8517
            5E283D0EC0BB12A4006278F1C517D30D37DC501D43EED9B3A7F4380087244891
            0952B1584630821400A325BF1F2A9FDCBDEDB6DBD29A356B4A8F03F09E042980
            72F2E98A1933665417313DFDF4D3A5C701784F82149920158B6504234801D0B4
            952B575657B4E6F743EDD8B1A3F43800472C3F12AABBBBBBF418001D65E7CE9D
            E9CE3BEFACDE2FBA7CF9F2D2E3001CB1AEAEAED4DBDB5B7A0C0A13A462B18C60
            0429009AD2D7D797AEBBEEBAF4E0830F7A3F14D092DC2105307AF2FBA16EBDF5
            D6EA67AFF74301ADC81D526482542C96118C2005C048CAE1E981071EA8AE687D
            EEB9E74A8F03508B2005D0BC458B16A5EBAFBF3EDD7BEFBD69F7EEDDA5C70138
            6682149920158B65042348013012F2A355264D9A946EBEF9E6B462C58AD2E300
            8C08410AA039F9B156F92226276F81762148910952B158463082140075E447AB
            DC72CB2DD549DB2D5BB6941E076044095200236BCF9E3DE99E7BEEA942D48205
            0B4A8F0330A2042932412A16CB08469002E058E447AB7CF9CB5F4E5FFFFAD73D
            5A05685B8214C0C8D8B66D5B9A3061421A3F7E7CEAEFEF2F3D0E402304293241
            2A16CB08469002E068F4F5F5A54B2FBD347DF39BDF2C3D0A40E37A7A7A527777
            77E931005AD6C68D1BD335D75C5305FEC1C1C1D2E30034AAABABAB7A1C299D4D
            908AC5328211A4003812CF3FFF7C15A266CD9A557A148051E30E298063B37EFD
            FA74EDB5D7563F4777EDDA557A1C8051E10E2932412A16CB08469002E0707288
            BAE4924BD2E38F3F5E7A1480512748011C9D1CA2AEBEFAEA3471E244210AE838
            82149920158B650423480170283944FDF33FFF737AF2C9274B8F02508C200570
            647288BAEAAAABAA10353434547A1C8022042932412A16CB08469002E0604F3D
            F554BAE28A2BAA6F804E2748011C5E7F7F7F7547D41D77DC2144011D4F902213
            A462B18C60042900B27C27540E514F3FFD74E95100C210A4000E2D87A82BAFBC
            324D9E3C598802F85F82149920158B650423480174B6BEBEBE74C10517B8230A
            E0107A7A7A52777777E93100C2D8B46953BAFCF2CBD3F8F1E34B8F02104E5757
            57EAEDED2D3D06850952B1584630821440675ABE7C79BAE8A28BD2B469D34A8F
            0210963BA400BE6B707030DD70C30DE9FAEBAF4F030303A5C70108C91D526482
            542C96118C2005D059F65FD59A4FB2EED9B3A7F43800A1095240A71B1E1EAE1E
            CB376EDCB8B476EDDAD2E300842648910952B15846308214406770552BC0D113
            A4804E3673E6CCEA8EFA850B17961E05A02508526482542C96118C2005D0DEF2
            55AD93264DAAEE8A72552BC0D111A4804E347FFEFC74F6D967A73973E6941E05
            A0A508526482542C96118C2005D0BEFEE33FFEA3BAAA75D1A245A54701684982
            14D04956AE5C591D3B4E9D3A3539550070F4042932412A16CB08469002683F7D
            7D7DE90B5FF8429A3D7B76E951005A5A4F4F4FEAEEEE2E3D0640A3366FDE9CAE
            B8E28A74EBADB7961E05A0A5757575A5DEDEDED263509820158B6504234801B4
            8F356BD6A4B163C7A6FBEEBBCF55AD0023C01D52403BDBBD7B77BAE5965BD235
            D75C93B66EDD5A7A1C8096E70E2932412A16CB08469002687DDBB76F4F575E79
            65BAEDB6DBD2D0D050E97100DA862005B4A37C1AE0DE7BEF4D175F7C71F5983E
            00468620452648C56219C1085200AD6BCF9E3D69C28409558CCA8F5A01606409
            5240BBF9D6B7BE953EF7B9CFA5F9F3E7971E05A0ED08526482542C96118C2005
            D09AA64D9B56BD747AF9F2E5A54701685B8214D02EF231E379E79D97A64F9F5E
            7A1480B62548910952B15846308214406BE9EBEB4B9FFFFCE7AB6F009A254801
            AD6ED3A64DE9B2CB2E4B3D3D3D69EFDEBDA5C701686B82149920158B65042348
            01B486FC7CFF0B2EB8A0BA330A80D1214801AD6AD7AE5DE9A69B6E4AD75D775D
            F5BE51009A2748910952B15846308214406C030303E9F2CB2F4F37DE7863E951
            003A4EBEA3A0BBBBBBF4180047E59E7BEEA91EEDFCDA6BAF951E05A0A3747575
            A5DEDEDED263509820158B6504234801C4947F3CDF79E79DE99FFEE99FD2FAF5
            EB4B8F03D091DC2105B492850B17A6BFFFFBBF4F73E6CC293D0A404772871499
            20158B6504234801C4336FDEBCEA6442FE06A01C410A68059B376F4E175F7C71
            9A387162DAB76F5FE971003A9620452648C56219C1085200716CD8B0218D1D3B
            36DD75D75DC98F6780F2042920B21C9F6EBFFDF674D96597A52D5BB6941E07A0
            E309526482542C96118C200550DE9E3D7BD2CD37DF9CAEBCF2CAEA9D5100C420
            480151E5C7F29D79E699E9E5975F2E3D0A00FF4B902213A462B18C60042980B2
            1E7FFCF1EA64E78A152B4A8F02C0DB08524034AFBDF65AFAC217BE90A64D9B56
            7A1400DE46902213A462B18C60042980327280FA877FF887F4F0C30F971E0580
            7721480151ECDAB52B5D77DD75E9FAEBAF4F838383A5C701E010042932412A16
            CB08469002185DF9F17CD75E7B6DBAE69A6BD2D0D050E97100380C410A88E0C9
            279F4CA79F7E7A5AB56A55E95100380C418A4C908AC5328211A400464F5F5F5F
            FACC673E93162F5E5C7A14008E80200594B465CB9674EEB9E7A6BBEEBAABF428
            001C01418A4C908AC5328211A4009A373030902EBAE8A2F495AF7C250D0F0F97
            1E078023244801A5DC7DF7DDE98B5FFC62DAB87163E95100384282149920158B
            6504234801342BBF23AABBBB3BF5F7F7971E0580A3244801A32D3F962FFFDC71
            4213A0F508526482542C96118C2005D08C0D1B36A4B3CE3A2B4D9B36ADF42800
            1C23410A182DF92EFA9B6FBE395D76D96569C78E1DA5C701E01808526482542C
            96118C200530F2264E9C98C68E1D9BB66EDD5A7A14006A10A480D1B060C182EA
            3DA3F3E7CF2F3D0A003508526482542C96118C2005307256AC58914E3BEDB4F4
            CC33CF941E0580112048014D1A1A1A4AE3C68D4B37DC7043DABB776FE97100A8
            49902213A462B18C600429809171F5D557A74B2EB9A4F418008CA09E9E9EEA3D
            800023EDE9A79F4E9FFDEC67D3F2E5CB4B8F02C008E9EAEA4ABDBDBDA5C7A030
            412A16CB08469002A8273F62E5E4934FAEBE01682FEE900246DAC0C0403AFFFC
            F3AB473CFB751CA0BDB8438A4C908AC5328211A4008E8D47AC00B43F410A1849
            0F3FFC7075D7657F7F7FE95100688020452648C56219C108520047EFF9E79FAF
            EE8ACAEF8C02A07D0952C04878E38D37D2D9679F9DEEBBEFBED2A300D020418A
            4C908AC5328211A4008E5C7EC4CA85175E98BEF295AF78C40A400710A480BAEE
            BEFBEE74EEB9E7A64D9B36951E05808609526482542C96118C20057064F241E5
            69A79DE6112B001D4490028ED56BAFBD963EFBD9CF3A3109D041042932412A16
            CB0846900238BC2D5BB6548F589932654AE951001865821470B4F2AFD8B7DF7E
            7BBAE8A28BAABBEB01E81C82149920158B6504234801BCBBFBEFBF3F7DFEF39F
            F78815800E2548014763E5CA95E9D39FFE749A3D7B76E951002840902213A462
            B18C6004298077DABA756BFADCE73EE7C5D3001D4E90028ED4840913D2D8B163
            D3CE9D3B4B8F02402182149920158B6504234801BCD5AC59B3D229A79C92D6AF
            5F5F7A14000A13A480F7B276EDDA74F2C927A7A79E7AAAF42800142648910952
            B15846308214C077EDD8B123FDE33FFE639A346952E95100084290020EE7AB5F
            FD6A75FCB86DDBB6D2A300108020452648C56219C108520029CD993327FDEDDF
            FE6D5AB3664DE95100084490020E65E3C68DE9D4534F4D8F3EFA68E951000844
            902213A462B18C600429A093EDDAB52B5D78E185E9B6DB6E4B7E1C02F0768214
            F0763366CC48A79F7E7ADABC7973E951000846902213A462B18C600429A053CD
            9B372FFDCDDFFC4D5AB66C59E95100084A9002F6DBBA756B3AEBACB3D2942953
            4A8F02405082149920158B65042348019D66CF9E3DE9F2CB2F4F5FFEF297D3BE
            7DFB4A8F034060821490CD9A352B9D72CA2969FDFAF5A547012030418A4C908A
            C5328211A4804EB272E5CAF4894F7C22BDF4D24BA54701A0050852D0D9F2854C
            E79F7F7EBAF5D65B4B8F02400B10A4C804A9582C2318410AE8140F3DF450FAF4
            A73F9DDE7CF3CDD2A300D0220429E85C2E6402E06809526482542C96118C2005
            B4BB5DBB76A573CE3927DD71C71DA54701A0C50852D0995CC804C0B110A4C804
            A9582C2318410A68674B962C49279C7042F50D00474B9082CE323434545DC834
            71E2C4D2A300D082042932412A16CB08469002DAD5E4C993AB130A3B77EE2C3D
            0A002D4A9082CE912F60FAE4273F99162E5C587A14005A9420452648C56219C1
            085240BBC901EAF4D34F4F53A74E2D3D0A002D4E9082CEE04226004682204526
            48C56219C10852403BC957B4E647F42D5FBEBCF42800B401410ADA9B0B990018
            4982149920158B6504234801ED62C28409E9BCF3CEAB9EFD0F0023419082F6E5
            422600469A20452648C56219C1085240ABDBB163473AEDB4D3D2B469D34A8F02
            409B11A4A03D4D9932259D71C6192E6402604409526482542C96118C2005B4B2
            A54B97A63FFFF33FAFBE0160A40952D05E72803AEBACB3D2A449934A8F02401B
            12A4C804A9582C2318410A68553366CC48279D74527587140034419082F6B17A
            F5EA74FCF1C7A7050B16941E0580362548910952B15846308214D06AF6EDDB97
            C68E1D9B6EBCF1C6D2A300D0E60429680FB366CD4A9FFAD4A7D2B66DDB4A8F02
            401B13A4C804A9582C2318410A68251B376E4C9FF8C427D2B3CF3E5B7A14003A
            802005AD2DFFBA7BC51557A42BAFBC320D0F0F971E0780362748910952B15846
            308214D02AE6CE9D9B4E38E184B46EDDBAD2A300D0210429685DF96EA87C5754
            BE3B0A00468320452648C56219C10852402BB8E9A69BAAC7F4EDDDBBB7F42800
            7410410A5A537E4F547E5F547E6F14008C16418A4C908AC5328211A480C876EC
            D8914E3AE9A43463C68CD2A300D0810429683D53A64C49679C71461A1A1A2A3D
            0A001D46902213A462B18C60042920AAE5CB97A78F7FFCE369D1A245A54701A0
            43F5F4F4A4EEEEEED2630047E8CC33CF4C93264D2A3D06001DAAABAB2BF5F6F6
            961E83C204A9582C2318410A8868E6CC99E9E4934F4EDBB76F2F3D0A001DCC1D
            52D01AFAFBFBD3C73EF6B1346FDEBCD2A300D0C1DC21452648C56219C1085240
            24F947D2B871E3D255575D95FC7802A034410AE27BE69967D2273FF9C9B471E3
            C6D2A300D0E1042932412A16CB08469002A2C87743FDF55FFFB5DBDB01084390
            82D86EBEF9E674C10517A4BD7BF7961E050004292A82542C96118C200544B070
            E1C274C2092754EF8D028028042988696868289D7AEAA9E9BEFBEE2B3D0A001C
            2048910952B1584630821450DA030F3C904E39E594343838587A1400780B410A
            E259B56A557521D34B2FBD547A1400780B418A4C908AC5328211A48052868787
            D385175E98FEF55FFFB5F4280070488214C4F2C4134F54EF8BDABA756BE95100
            E01D042932412A16CB084690024AD8B46953F5BEA87C520100A212A4208E6BAF
            BD365D72C925D5454D00109120452648C56219C10852C0689B3F7F7E3AFEF8E3
            D3EBAFBF5E7A1400382C410ACADBB97367F578E7071F7CB0F428007058821499
            20158B6504234801A369FAF4E9E9A4934EAA4E2C004074821494B576EDDA3466
            CC98F49DEF7CA7F42800F09E042932412A16CB0846900246CBD5575F9D2EBDF4
            D2E4C70E00AD429082725E78E185EAAEFA0D1B36941E05008E8820452648C562
            19C1085240D376EFDE5D3D66E5FEFBEF2F3D0A001C15410ACAC8C78DF9F8311F
            470240AB10A4C804A9582C2318410A6852BEA2355FD99AAF700580562348C1E8
            CABF9E5E7CF1C5E9DA6BAF2D3D0A001C35418A4C908AC5328211A480A6E467FD
            E767FEE767FF03402B12A460F4E4778CFED55FFD557AE491474A8F0200C74490
            2213A462B18C600429A009D3A74F4F279D7452756201005A952005A3235FC094
            2F64CA17340140AB12A4C804A9582C2318410A1869575D7555BAECB2CB921F2F
            00B43A410A9A971FED9C1FF19C1FF50C00AD4C902213A462B18C60042960A4E4
            974EE7974FE7975003403B10A4A059F9B8311F3FE6E34800687582149920158B
            65042348012361DBB66DE9B8E38E4BCF3DF75CE9510060C40852D09C7C57FDA5
            975E5A7A0C00183182149920158B650423480175AD5BB72EFDE99FFE695AB264
            49E951006044095230F2F2AFA0679E79669A3C7972E95100604409526482542C
            96118C2005D49123D4473FFAD1F4DA6BAF951E0500469C2005236B6868289D78
            E28969FAF4E9A5470180112748910952B1584630821470ACFAFAFAAA18951FD7
            0700ED4890829133303090C68C19E311CF00B42D418A4C908AC5328211A48063
            F1E8A38FA6BFFCCBBF4CBB76ED2A3D0A003446908291911FF19C2F645AB87061
            E95100A03182149920158B650423480147EB9E7BEE499FF9CC67D2F0F070E951
            00A0518214D4B77CF9F2EA7DA31EF10C40BB13A4C804A9582C2318410A381A5F
            FAD297D2B871E34A8F0100A34290827AF2239EF363FA366FDE5C7A1400689C20
            452648C56219C10852C091C83F2ACE3CF3CC3479F2E4D2A300C0A811A4E0D8CD
            9A352B7DEC631FF38867003A8620452648C56219C10852C07B191A1A4A279E78
            629A3E7D7AE9510060540952706CF2239E4F3DF5D4B46FDFBED2A300C0A811A4
            C804A9582C2318410A389C81818174DC71C7A53973E6941E0500469D2005476F
            FCF8F1E99C73CE293D06008C3A418A4C908AC5328211A48077B369D3A6F4E10F
            7F382D58B0A0F42800508420054767ECD8B1E95FFEE55F4A8F01004508526482
            542C96118C20051CCA9A356BD2473EF291B46CD9B2D2A300403182141C99E1E1
            E174C61967A4AF7EF5ABA547018062042932412A16CB08469002DEEEE5975FAE
            62547F7F7FE95100A028410ADE5B7EDFE8A73EF5A93473E6CCD2A30040518214
            9920158B6504234801079B3B776E1A33664CDABA756BE95100A038410A0E6FC7
            8E1DD5B1A3F78D028020C5770952B15846308214B0DF638F3D96FEE22FFEA23A
            B100406BFAA11FFAA1F4833FF883E9077EE0070EFBE1C89C7FFEF9E9F8E38F2F
            3D068494DF379A4FBCBDF8E28BA54701A0A6F7BFFFFDD531E4A13EF9F89223F3
            A10F7DC8BB1411A482B18C600429209B3A756A3AF1C4134B8F01D0517EEAA77E
            2AFDC44FFC44F5F9F11FFFF1B77CEFFF73FE1C2A30BDFDDFDEF7BEF795FECF01
            3A487EDF688E514B962C293D0A40C7F9C99FFCC903C7893FF6633FF6AEDF3FFA
            A33F7AE098F150A1E9477EE4474AFFA7405B12A462B18C60042960E2C4891E47
            045053FEC5FF031FF8C081130439281D7CB2E0EDE1295F850AD08AF2FB463FFC
            E10FA775EBD6951E05A02DFCFCCFFF7CFA855FF885F4333FF333E9977EE9970E
            1C331E2A328948109F20158B650423484167FBD297BE94C68D1B577A0C80D0F2
            EF13F96EA65FFCC55FAC3EF944C1C1DFBFFCCBBFEC51264047C88FE7FBC8473E
            E27DA30047E0FBBFFFFBABC8F4733FF7735574CADF07FF397FFFF44FFF74FADE
            EFFDDED2A3022348908AC5328211A4A0739D77DE79E9C61B6F2C3D064018F9AA
            D35FF9955FA93EBFF66BBF56DDF1B4FFCF8213D0E99E7DF6D9D4D5D5E57DA300
            07C97736E563C5DFFAADDF7A4774FAD99FFDD9D2E301050852B1584630821474
            26310AE854392CE5D0F4ABBFFAAB6F894EF9931FB107C03BCD9933278D193346
            8C023AD20FFFF00F1FB848E9D77FFDD70FFCF9777FF7774B8F06042448C56219
            C10852D079CE39E79C347EFCF8D2630034263FF6243F4A2F9F2CC8E1697F70CA
            9F7C15ABDF0F008E5CBE33EAA31FFD681A1C1C2C3D0A40A3F29D4D3934EDBF70
            69FF77BEDB09E0480952B1584630821474962F7EF18BE9A69B6E2A3D06C088FA
            8DDFF88DF4FBBFFFFBD5E70FFEE00FD2073FF8C1F4BEF7BDAFF458002DEF9967
            9E49C71D779C3BA380B6F3877FF887D527DFE5F4DBBFFDDBD5C7F123301204A9
            582C2318410A3A873BA3805697EF7CCA57AAE6E8B43F3EFDDEEFFD5EF5181500
            46963BA38076901FD7FC3BBFF33B6FB978E9377FF337D3F77DDFF7951E0D6853
            82542C96118C20059D418C025AD1FBDFFFFEF4477FF447E98FFFF88FD39FFCC9
            9F547FCEFF0640B3C428A015894F400482542C96118C2005EDEFDC73CF4DB7DC
            724BE93100DE537EEF530E4FFB03941745038CBED9B367A73163C6A49D3B7796
            1E05E0B07270FAD0873E54C5A7FCC8E67CE73C406982542C96118C2005EDEDEC
            B3CF4E13264C283D06F0FFD9BBCF20ABCAACEDE3AB9A2687264A9226D364049A
            9C934409428BA220599204C9B1112429208801240DA2245B40914194681A0405
            15704492A02228C38082CC8050EFDCFB791E5F1D091DCF5AE7ECFFAFCAEAAF57
            D5A2ED73F6B5EF75E386DC43843A75EA78E593FB2F4F9E3CDA9100C0D776EEDC
            292D5AB4A08C026052C99225A5499326D2A0410369D8B0A1444444684702803F
            A190B285611843210584AEDEBD7BCBC2850BB5630080276BD6AC52A3468DDFCA
            27B77ECFAD550100D8B063C70EAF8C624D1F002B0A1428208D1A35F2FE736B44
            7979094030A090B285611843210584264E4601D0E6DE58756FB0BA87076E055F
            B972E5B42301006E62FBF6EDDE690300D0943D7B76EFFF45AE80723F4B9428A1
            1D0900128C42CA1686610C8514107AFAF5EB272FBCF082760C003EE33E73BBBD
            FDCD9B379766CD9A79A7A1B8401A00ECE3CE28005A3266CC2875EBD6FDED1454
            850A1584E7B800821D85942D0CC3180A2920B40C1D3A5466CF9EAD1D03804F64
            CB964DEEBEFB6E6FC5932BA272E5CAA51D090090001F7CF08157465DBA74493B
            0A009F2853A68CDC73CF3DDEE74777972800841A0A295B188631145240E81833
            668C4C9B364D3B06801057A95225AF7C6AD9B2A5770A0A00109C76EDDAE5AD56
            BD78F1A276140021CE9D9E779F1D5BB76E2D919191DA710020455148D9C2308C
            A1900242436C6CAC4C9A34493B068010F47FA7A05C09E5DE64E514140004BFBD
            7BF74ABD7AF528A300A4883BEFBCD3FBDCD8AA552BEF3ED1F4E9D36B47028080
            A190B285611843210504BFE9D3A7CBE8D1A3B563000811EEB3F35D77DDF55B01
            E54E4185858569C7020024135746356CD8502E5CB8A01D054088709F15AB56AD
            EA9D82722594FB2C09007E4521650BC33086420A086E73E6CC9121438668C700
            10E4C2C3C3BD37E5DBB56BE7FD972F5F3EED48008014B07FFF7EEFCE16CA2800
            49151111E19DA2772594FB2F67CE9CDA9100C0040A295B188631145240F09A3D
            7BB60C1D3A543B068020952E5D3AEF21C2BDF7DEEBEDF377ABF90000A1CB9551
            0D1A34907FFCE31FDA510004A9AC59B3CA7DF7DD27313131DE2A3E00C09F5148
            D9C2308CA1900282D30B2FBC20FDFAF5D38E0120C8B887086E8D8A3B05E52E97
            CE90218376240040007CF9E59752B76E5DF9F1C71FB5A300083299326592366D
            DAC8FDF7DF2F4D9B3695D4A9536B470200D328A46C6118C6504801C167C99225
            D2A3470FED180082845BC7E7EE827AF8E187E59E7BEEE1210200F8CC912347A4
            66CD9A945100E22D6DDAB4DEE7C7071E78C0FBFCE84ED60300E28742CA168661
            0C8514105C56AE5C290F3EF8A0F0AB0BE0762A54A8E09550EEBFECD9B36BC701
            0028F8E69B6FA47AF5EA72EAD429ED28008C732F31356AD4C82BA1DC4AE7CC99
            336B470280A04421650BC33086420A081E6FBEF9A6B46DDB56AE5DBBA61D0580
            51B972E5F24A6B5742DD75D75DDA7100008A7EF8E107A951A3861C3B764C3B0A
            00A3DC33D3DAB56B7B2594BB172A67CE9CDA910020E85148D9C2308CA1900282
            C3B66DDBBCB7D500E046DC5BAC5DBA74F1F6FB030070FEFC79EFCEA8FDFBF76B
            47016050A54A95BC12AA53A74E922F5F3EED3800105228A46C6118C6504801F6
            EDD9B347EAD7AF2FBFFCF28B76140086942F5F5EBA75EB260F3DF4106FB30200
            7EE33E33BACF8EEE332400FC9F6CD9B249E7CE9DA55FBF7E121515A51D070042
            1685942D0CC3180A29C0B683070F7A2B14DC5BAE009023470EEF4DD6AE5DBB7A
            6FB60200F07BBFFEFAAB3469D24476ECD8A11D058011EEFB64EFDEBDE5BEFBEE
            93B469D36AC70180904721650BC33086420AB0CBEDFB777BFFDDFE7F00FE952A
            552A69D6AC995742B9957CA953A7D68E040030E8FAF5EBDE03E7D75E7B4D3B0A
            0065D9B367F74E430D1830408A152BA61D07007C8542CA1686610C851460932B
            A1A2A3A3E59B6FBED18E024049FEFCF9A567CF9EDE1BADECF60700DC8E5BE3FA
            97BFFC453B06004575EAD4F9ED34549A3469B4E300802F5148D9C2308CA19002
            EC71EBF9DC5A05B7AE0F80BFB8CFAD8D1B37963E7DFA78A7A1DCE92800006E67
            F0E0C13277EE5CED180014B8D3505DBA7491FEFDFB731A0A000CA090B2856118
            432105D8C225D4803FB9BBA1DC4A3E77C974912245B4E3000082C894295364DC
            B871DA31000458DDBA75BDD3503131319C8602004328A46C6118C6504801B6B8
            93115BB76ED58E012040AA55AB267DFBF695871F7E583B0A0020082D58B0C03B
            550BC01F3267CEECADE77CF4D147390D0500465148D9C2308CA190026C70BF8A
            6DDBB69537DE78433B0A801496214306E9D4A9930C1C3850CA952BA71D070010
            A4DCE7C676EDDAC9F5EBD7B5A3004861EE04BD2BA1DCFDA2993265D28E0300B8
            050A295B1886311452800DC3860D9359B36669C7009082A2A2A2BCD350EEADD6
            2C59B268C7010004B1DDBB774B9D3A75E4CA952BDA5100A420B796CFDD11E7EE
            160D0B0BD38E030088070A295B188631145280BEE79E7B4E060C18A01D03400A
            080F0F97D6AD5B7B45945BC9090040521D3D7A54A2A3A3E5FCF9F3DA5100A400
            771FD47DF7DD278F3DF69854AC58513B0E00208128A46C6118C6504801BAD6AE
            5D2BEDDBB7D78E012099454444784573BF7EFD245FBE7CDA71000021E2CC9933
            52BD7A75F9FAEBAFB5A3004866D9B367F7EE8473ABF9F2E4C9A31D0700904814
            52B6300C6328A4003DAC5A01428F7B783064C810E9DFBFBF64CC98513B0E0020
            845CBA74C92BA30E1C38A01D0540322A53A68C0C1A3448BA74E92269D3A6D58E
            030048220A295B1886311452808E43870E790F1458B502848642850AC9F0E1C3
            A5478F1E3C48000024BB6BD7AEC9DD77DF2DDBB66DD38E022019B86795CD9A35
            F3EE8772BFDB0080D04121650BC33086420A083CB76AA56AD5AA72F2E449ED28
            0092A84489123276EC58EF8D56000052CA430F3D24AFBCF28A760C00C9E09147
            1EF14ED447454569470100A4000A295B188631145240605DBC78516AD6AC29FB
            F7EFD78E022009DC05D313264C90B66DDB6A4701008438F7F766F2E4C9DA3100
            2451B76EDD243636560A162CA81D0500908228A46C6118C650480181F3EBAFBF
            4AD3A64D59B50204B10A152AC8E38F3F2E6DDAB4D18E0200F081975F7E593A77
            EEAC1D034022A54E9DDA2BA2C68F1F2F77DE79A7761C0040005048D9C2308CA1
            900202C7ADF45ABE7CB9760C008950BA7469993871A2C4C4C468470100F8C4C6
            8D1BA555AB56DA310024922BA2DCE7C7C8C848ED28008000A290B28561184321
            0504865BCD3069D224ED180012C8DD11E57E7FEFBFFF7E090B0BD38E0300F009
            B7DEB95AB56A72F9F265ED280012204D9A345E11356EDC384E4401804F5148D9
            C2308CA1900252DEEAD5ABBD87D9008247912245BCD52A6E4D52AA54A9B4E300
            007CE4BBEFBE93CA952BCB993367B4A3008827574475EFDEDDBBF32D6FDEBCDA
            7100008A28A46C6118C6504801296BC78E1DD2A04103ED1800E2295FBE7CDE6A
            955EBD7A69470100F8D0A54B97A47AF5EA72E0C001ED2800E2A97FFFFE326AD4
            284E4401003C1452B6300C6328A4809473E4C811EFEDD69F7EFA493B0A80DBC8
            9D3BB78C1E3D5AFAF6EDEBBDE10A0040A05DBB764D9A356B265BB66CD18E02E0
            36D2A64DEB9D887227EA39110500F83D0A295B188631145240CA387BF6AC54AD
            5A558E1F3FAE1D05C02D4444447845D4C08103257DFAF4DA7100003ED6B3674F
            59BC78B1760C00B7E17E57DD89FAFCF9F36B470100184421650BC33086420A48
            7E57AE5C911A356AC8DEBD7BB5A300B889CC9933CB90214364E8D0A192254B16
            ED3800009F9B316386B7F20B805DB56AD592F9F3E74BD9B265B5A300000CA390
            B285611843210524BF0E1D3AC86BAFBDA61D03C04D0C1E3C58C68D1B273972E4
            D08E020080C4C5C5494C4C8C760C003751A2440979EAA9A7A475EBD6DA510000
            418042CA1686610C851490BC468C18E17D5901608BFB3CF8D0430FC9F4E9D325
            5FBE7CDA710000F0B813F5EE64BD3B610FC016F7F2526C6CAC77C7687878B876
            1C004090A090B2856118432105249F65CB9649D7AE5DB56300F82FAC57010058
            74E2C409898E8EF6EE1E056047DAB469E5D1471F95F1E3C7B3DA190090601452
            B6300C6328A480E4B179F36669D6AC99760C00BF53B2644999356B96B468D142
            3B0A00007F70FEFC79A95AB5AA1C3E7C583B0A80DF69D7AE9DCC9E3D5B0A152A
            A41D050010A428A46C6118C65048014977ECD831A954A9925CB870413B0A80FF
            B8E38E3B64E2C489D2BB776F49952A95761C0000FEE0FAF5EB72F7DD77CBD6AD
            5BB5A300F85FEEB4E20B2FBCE0FD0400202928A46C6118C65048014973F1E245
            EFEDD6BFFFFDEFDA5100FCC7A851A364DCB87192316346ED280000DCD0E8D1A3
            BD3B0D01E8BBF3CE3B65EAD4A9D2B97367ED280080104121650BC33086420A48
            9A7BEFBD57D6AD5BA71D03F03DB732F3B9E79E9322458A68470100E0A6E2E2E2
            242626463B06E07B99336796091326C8B061C3B4A30000420C85942D0CC3180A
            2920F1DC9B7463C78ED58E01F85AD1A24565EEDCB9D2B2654BED280000DCD2A1
            4387A462C58A72F9F265ED2880AF75ECD851E6CC992379F2E4D18E0200084114
            52B6300C6328A480C4713BFF9B346922FC0A013A3264C82063C68CF1DE6A4D9B
            36AD761C00006EC9DD35EAEE1C75778F02D0E15E647AF1C517A561C386DA5100
            00218C42CA1686610C85149070EE41827BA0E01E2C00083CB7EA68F6ECD9DECE
            7F0000ACBB7EFDBADC7DF7DDDE0B4D00022F7DFAF4DE8B4C23468C903469D268
            C7010084380A295B188631145240C2B8152BD1D1D1F2C5175F6847017CA758B1
            62B260C102DE6A05000415B7E2D9AD7A061078CD9B3797E79F7F5E0A152AA41D
            0500E0131452B6300C6328A4808469D7AE9DAC5FBF5E3B06E02BEE4D56F746EB
            F8F1E379AB15001054DCE746F7F91140604546467AF744F1FB070008340A295B
            188631145240FC4D9B36CD5BF5002070AA57AF2E4B962C9152A54A6947010020
            410E1D3A24152B56F44ED803088CD4A953CB902143243636D6BB7314008040A3
            90B2856118432105C48FDBF9DFA44913E15706088C888808AF04EED3A78FF059
            0E00106CDC5DA3EECE5177F72880C0A859B3A6F72253545494761400808F5148
            D9C2308CA190026EEFF8F1E3DE0385F3E7CF6B47017C212626469E79E619C993
            278F7614000012A5458B16B269D326ED18802FE4CC99539E7EFA6979E8A187B4
            A300004021650CC33086420AB8B57FFDEB5F52AD5A35F9FCF3CFB5A300212F7F
            FEFCB260C10269D9B2A57614000012ED89279EF0EE3D0490F27AF5EA254F3EF9
            A464CD9A553B0A00001E0A295B1886311452C0AD3DF8E083B262C50AED184048
            739FD5FAF6ED2BD3A74F97CC99336BC7010020D1DE7DF75DA95FBF3E6B9E8114
            56A0400159B972A5D4AA554B3B0A00007F4021650BC33086420AB8B9458B1679
            6FDC014839C58B1797975E7A49AA57AFAE1D050080243975EA94942B574ECE9D
            3BA71D0508693D7BF6943973E648C68C19B5A30000F0271452B6300C6328A480
            1BDBBF7FBF54AE5C59AE5EBDAA1D050849A953A7969123477A2B8DD2A449A31D
            07008024719F19DDCB157BF7EED58E0284ACDCB973CBCB2FBF2C8D1B37D68E02
            00C04D5148D9C2308CA19002FEECC2850B52BE7C793979F2A476142024454747
            7BA7A24A952AA51D05008064E156CFCE9F3F5F3B0610B23A75EA24CF3DF71C77
            450100CCA390B2856118432105FC91FB95B8FBEEBB65CB962DDA518090E3D6AA
            B88BDE070D1A247C3E0300840A77DFA8BB771440F2CB9E3DBB2C5DBA545AB76E
            AD1D05008078A190B2856118432105FCD1A44993243636563B0610722A56AC28
            71717152A44811ED280000249B2FBFFC52EEBAEB2EF9F7BFFFAD1D050839CD9B
            379765CB9649AE5CB9B4A30000106F1452B6300C6328A480FFCF9D8A72A7A3F8
            B500924F5858987757942B7BC3C3C3B5E30000906C2E5EBCE89551478F1ED58E
            028414B7966FEEDCB9D2A54B17ED280000241885942D0CC3180A29E07F9C3A75
            4A4A972EEDDD1F052079E4CF9F5FD6AC5923356BD6D48E020040B26BD5AA956C
            DCB8513B0610521A376E2C2FBFFCB2E4CE9D5B3B0A0000894221650BC3308642
            0AF81F6E9DD8A79F7EAA1D030819EDDAB593254B9670F134002024CD98314346
            8D1AA51D0308199932659259B36649EFDEBDB5A3000090241452B6300C6328A4
            009161C386795F7E00245DFAF4E965DEBC79D2A3470FED280000A488DDBB774B
            B56AD5B4630021C39DA65FB56A95142850403B0A0000494621650BC33086420A
            7EE7EE8D6AD2A489760C2024B87B34E2E2E2A468D1A2DA5100004811EEDEA8F2
            E5CBCBF1E3C7B5A3002161CC98313265CA14ED180000241B0A295B1886311452
            F0B3B367CF4AA952A5BC9F0012CF7DD67AECB1C764DAB469923A756AED380000
            A4982E5DBAC8F2E5CBB5630041CFDD11B572E54A69D0A0817614000092158594
            2D0CC3180A29F8993B19E54E480148BC9C3973CA2BAFBC2277DF7DB776140000
            52D46BAFBD261D3A74D08E01043D5742AD59B3C6FB1C090040A8A190B2856118
            432105BF7AF6D967E5D1471FD58E010435F730C1BDD9EADE70050020947DF3CD
            3752A64C19F9F9E79FB5A300412B3C3C5C264D9A24A3468D129ED50100421585
            942D0CC3180A29F8D1575F7D25152A54907FFDEB5FDA5180A0E4D6F23DF1C413
            327CF8701E26000042DEF5EBD7A566CD9AF2D1471F6947018256810205BC5351
            D5AB57D78E0200408AA290B2856118432105BFB972E58A54AE5C590E1C38A01D
            05084A850A1592B8B838EFF70800003F888D8DF54E7500489C962D5B7A2B9E23
            2222B4A3000090E228A46C6118C65048C16F060E1C28F3E6CDD38E0104A5FBEF
            BF5F162E5C28993265D28E020040407CF0C10752BB766DED1840D072DFBD060C
            18A01D03008080A190B28561184321053FD9B2658B3469D2443B061074D2A74F
            2F73E6CC91DEBD7B6B4701002060DC7D51EEDE28777F148084295AB4A8BCF6DA
            6BDEAA740000FC8442CA1686610C8514FCE2ECD9B352AA5429EF2780F88B8A8A
            92D75F7FDDFB0900809F74E8D0C17BA00E2061EEBBEF3E59BA74A964C890413B
            0A0000014721650BC33086420A7ED1AC5933D9BC79B3760C20A874E9D2459E7F
            FE79C99831A376140000026AF9F2E5DEDF4100F1E70A28F7D9F1E1871FD68E02
            00801A0A295B1886311452F083679F7D561E7DF451ED1840D0700F13DC5BADEE
            ED560000FCC6ADE87327EB2F5DBAA41D05081A050B16948D1B377A6B2E0100F0
            330A295B18863114520875C78E1DF3BE14FDEB5FFFD28E020405F7FBE256F4B9
            BDFF0000F88DFB7A54B3664DD9B56B9776142068346CD8D05B6F99356B56ED28
            0000A8A390B28561184321855057A54A15F9F8E38FB5630041A173E7CEF2D24B
            2F69C7000040CDCC993365F8F0E1DA3180A03172E448993E7DBA760C0000CCA0
            90B285611843218550161B1B2B93264DD28E0198171616E63D48E0011C00C0CF
            0E1D3A24E5CB97972B57AE684701CC4B9F3EBDBCFCF2CB72EFBDF76A470100C0
            140A295B188631145208557BF7EEF54E475DBF7E5D3B0A605AA64C9964DDBA75
            D2B87163ED280000A87125547474B4ECDFBF5F3B0A601EF745010070731452B6
            300C6328A4108ADC7D51EECB91BB3F0AC0CD152A5448366DDA24254B96D48E02
            0080AA112346C8534F3DA51D03308FFBA20000B8350A295B18863114520845FD
            FBF797E79F7F5E3B06605ABD7AF5BC9351D9B265D38E020080AA5DBB7649CD9A
            3585AF46C0AD0D1B364C66CC98E1AD7B060000374621650BC33086420AA166E7
            CE9D52BF7E7DED18806903060C903973E648AA54A9B4A30000A0EAD2A54B52AA
            5429F9E69B6FB4A30066715F140000F14721650BC33086420AA1E49FFFFCA7B7
            AAEFFBEFBFD78E0298B570E142E9D9B3A7760C00004CE8DEBDBB2C5DBA543B06
            60566464A4BCF1C61B52A14205ED28000004050A295B18863114520825AD5BB7
            960D1B3668C7004C72ABF9DE7CF34D6F2511000010EF73A3FBFC08E0C6B82F0A
            008084A390B285611843218550B162C50A79F0C107B563002695285142366FDE
            2C850A15D28E020080093FFEF8A3F7F7F1FCF9F3DA5100931E7BEC3199356B96
            760C0000820E85942D0CC3180A2984821F7EF8418A172F2E3FFDF4937614C09C
            7AF5EA796B56B264C9A21D050000335AB468219B366DD28E019813161626F3E7
            CF975EBD7A6947010020285148D9C2308CA1904228E081027063DDBA75F3EE8C
            4A952A9576140000CCE0643D706319326490B56BD74AD3A64DB5A3000010B428
            A46C6118C6504821D82D5BB64CBA76EDAA1D0330C515504F3DF5940C1932443B
            0A0000A6B893F5A54A959273E7CE6947014CC99D3BB7BCFDF6DB52BE7C79ED28
            000004350A295B18863114520866A74F9F96A8A82856F501BF9329532679F5D5
            57A559B366DA51000030A775EBD6B261C306ED18802965CA94F1364E14285040
            3B0A0000418F42CA1686610C85148259A3468D64DBB66DDA31003372E5CAE5BD
            D97AD75D7769470100C09C975F7E593A77EEAC1D0330A5418306DE7DA3EEA526
            000090741452B6300C6328A410AC962C59223D7AF4D08E019851B46851D9BA75
            AB142C58503B0A0000E6B8557DC58B17E7643DF03B5DBA74F1BE5771DF280000
            C98742CA1686610C851482D1A953A7A444891272E9D225ED288009D1D1D1B279
            F366C99E3DBB761400004C6AD1A285B7920CC0FF983469928C1F3F5E3B060000
            218742CA1686610C85148211ABFA80FFAF79F3E6B276ED5A49972E9D76140000
            4C5AB66C9974EDDA553B066042EAD4A9E5A5975E92FBEFBF5F3B0A0000218942
            CA1686610C851482CDC2850BA577EFDEDA310013BA77EFEEFD4E848585694701
            00C02477B2BE54A952ACEA03FE23222242DE7CF34DA95DBBB676140000421685
            942D0CC3180A29041356F501FFDFC48913253636563B060000A671B21EF81F91
            9191F2CE3BEF78DFA7000040CAA190B285611843218560D2B87163D9BA75AB76
            0C40DDE2C58BBDD3510000E0E6962E5DCADF4BE03F2A57AEECDDA1962B572EED
            280000843C0A295B188631145208166ECFF9C30F3FAC1D035095366D5A59B76E
            9D776F140000B8B97FFCE31F52AC5831397FFEBC76144055F5EAD565CB962D92
            316346ED280000F80285942D0CC3180A290403F720C13D50700F1600BFCA9C39
            B36CDEBC596AD4A8A11D050000F3BA74E922CB972FD78E01A8722B2B376CD820
            E9D3A7D78E0200806F5048D9C2308CA1904230E8DDBBB72C5CB8503B06A0C6AD
            57D9BE7DBB942953463B0A0000E6EDD8B1431A3468A01D0350E54ED4BFFEFAEB
            923A756AED280000F80A85942D0CC3180A2958F7B7BFFD4D6AD6ACA91D035053
            B06041D9B973A7F7130000DCDAAFBFFE2A254A9490E3C78F6B4701D4B469D346
            E2E2E2243C3C5C3B0A0000BE4321650BC33086420A965DBB76CD3B1172E8D021
            ED28800AF7EFDF9D8CE2026A0000E267F2E4C93261C204ED18809A98981859B5
            6A9584858569470100C09728A46C6118C65048C1B2993367CAF0E1C3B563002A
            6AD5AA259B366DF2EE8E020000B7E74E45152952443B06A0A667CF9EAC3A0700
            401985942D0CC3180A2958F5EDB7DF7AEB562E5FBEAC1D0508387701F5C68D1B
            256DDAB4DA510000081AEEDE28777F14E0477DFBF695E79F7F5E3B060000BE47
            21650BC33086420A56356BD64C366FDEAC1D0308382EA0060020E1DC8AB2071E
            78403B06A062F0E0C1F2F4D34F6BC70000004221650DC33086420A16AD5FBF5E
            DAB56BA71D0308382EA0060020E12E5EBC28C58B1797D3A74F6B4701026EE2C4
            89121B1BAB1D030000FC2F0A295B1886311452B0C6ADE873ABFADCCA3EC04FB8
            801A0080C4193060803CF7DC73DA31808073A7A2DCE9280000600785942D0CC3
            180A2958336CD83099356B96760C20A01E7CF04159BE7CB9F09905008084F9E4
            934FA44A952AC2D71AF889FBCCB868D122E9DEBDBB76140000F05F28A46C6118
            C65048C19203070E48B972E5B4630001F5C8238FC8FCF9F3B56300001094A2A3
            A3BD520AF093C58B1753460100601485942D0CC3180A295852BB766DF9E0830F
            B4630001D3AF5F3F560C010090480B162C903E7DFA68C70002CA9D8CEAD1A387
            760C000070131452B6300C6328A460C58A152BBCB565805FB8B75ADDDBAD0000
            20E1CE9F3F2F850B17F67E027E316FDE3CEFCE340000601785942D0CC3180A29
            5870F9F2652952A4889C3E7D5A3B0A1010DC19050040D2B89351EE8414E01793
            274F9671E3C669C7000000B74121650BC33086420A160C1F3E5C66CE9CA91D03
            08880E1D3AC8EAD5AB252C2C4C3B0A00004169FFFEFD52A14205E1AB0CFC62D8
            B061F2D4534F69C7000000F14021650BC33086420ADA8E1D3B26254B9694AB57
            AF6A4701529C2BA356AD5A25A952A5D28E020040D0AA52A58A7CFCF1C7DA3180
            80E8D5AB97BCF8E28BDA310000403C5148D9C2308CA19082B6860D1BCAF6EDDB
            B5630029AE75EBD6B276ED5ACA2800009260E9D2A5DE3D8C801F74EEDC59962D
            5BC69A670000820885942D0CC3180A29688A8B8B93989818ED18408A6BD6AC99
            6CD8B041C2C3C3B5A3000010B47EFEF967EFDED1B367CF6A4701525CC78E1D65
            C58A15AC79060020C85048D9C2308CA1908296CB972F4B891225E4DB6FBFD58E
            02A4A8468D1AC9962D5BB463000010F4060E1C28F3E6CDD38E01A43877B2FEF5
            D75FD78E010000128142CA1686610C8514B48C1B374EA64C99A21D034851EEC2
            F50F3FFC503264C8A01D050080A076E8D0212953A68C5CBB764D3B0A90A21A37
            6E2C1B376E943469D26847010000894021650BC33086420A1A8E1D3B26254B96
            94AB57AF6A4701528C3B01E8CAA81C39726847010020E8D5AA55CBFBBB0A84B2
            EAD5AB7BF7EBA64B974E3B0A000048240A295B1886311452D0D0AA552BEFAD3F
            2054E5CF9F5F76EDDA2577DE79A77614000082DECA952BA553A74EDA31801455
            B97265D9B1638764CA94493B0A000048020A295B188631145208B49D3B774AFD
            FAF5B5630029266BD6ACF2D1471F7927A4000040D2FCFBDFFF9622458AC8A953
            A7B4A30029A67CF9F2F2EEBBEF4A4444847614000090441452B6300C6328A410
            68E5CA959303070E68C7005244FAF4E9BDD2B54A952ADA510000080953A74E95
            B163C76AC700524CB162C5BC7594B972E5D28E020000920185942D0CC3180A29
            04D2A2458BA457AF5EDA318014111E1E2EEFBCF30E2700010048263FFEF8A314
            2A54487EF9E517ED28408A70778DEEDDBB57222323B5A3000080644221650BC3
            3086420A81E21E24B8070AEEC102108A56AD5A251D3B76D48E010040C8E8D3A7
            8F2C58B0403B0690223266CC281F7CF08154A850413B0A000048461452B6300C
            6328A4102813264C90C993276BC70052C4B3CF3E2BFDFBF7D78E010040C8F8E2
            8B2FA46CD9B2C2D715842277B27EF3E6CDD2B06143ED28000020995148D9C230
            8CA1904220B84BA8DD65D4EE526A20D40C1D3A5466CE9CA91D03008090D2BC79
            7379EBADB7B463002962CD9A35121313A31D030000A4000A295B188631145208
            84AE5DBBCAB265CBB46300C9CE3D4858BD7AB5F059030080E4B373E74EEE6444
            C89A3163868C1831423B06000048211452B6300C6328A490D2DCBA953265CA68
            C700925DEDDAB565FBF6EDDECA150000903CDCD713B7AACF7D8604428D5BF1EC
            563D030080D04521650BC33086420A29CDBDDDEADE720542897B50F6E1871F4A
            E6CC99B5A300001052162D5A24BD7AF5D28E0124BBD6AD5BCBFAF5EB39590F00
            4088A390B285611843218594B461C306EF8B17104AF2E5CB277BF7EE95DCB973
            6B47010020A4FCF2CB2F52A85021F9F1C71FB5A300C9CA9DACDFBA75ABA44993
            463B0A000048611452B6300C6328A49052AE5DBB26254B969423478E68470192
            4DD6AC5965D7AE5D121515A51D050080903361C204993C79B2760C205971B21E
            00007FA190B285611843218594F2C20B2F48BF7EFDB46300C9CAAD9FAC5BB7AE
            760C000042CEF7DF7FEF9D420642496464A4ECDEBD9B93F50000F80885942D0C
            C3180A29A4844B972E795FBECE9D3BA71D054836AFBCF28A74EAD4493B060000
            21A977EFDEB270E142ED1840B2E1643D0000FE4421650BC33086420A2961D2A4
            49121B1BAB1D034836C3870F97279F7C523B06000021E9ABAFBE92D2A54B7B2B
            9F8150902E5D3AEF647DD5AA55B5A300008000A390B2856118432185E4E64E45
            B9D351EE9414100A9A3469229B376F163E4F00009032DAB76F2F6BD7AED58E01
            249B75EBD649DBB66DB563000000051452B6300C6328A490DC060F1E2C73E7CE
            D58E01248B52A54AC99E3D7B2463C68CDA51000008497BF7EE95CA952B6BC700
            92CDC8912365FAF4E9DA31000080120A295B1886311452484EDF7DF79D142E5C
            58AE5EBDAA1D0548B29C3973CABE7DFBE4CE3BEFD48E020040C8AA55AB967CF8
            E187DA318064D1A8512379FBEDB7252C2C4C3B0A0000504221650BC33086420A
            C9A94B972EB27CF972ED184092A54D9B56DE7FFF7D898E8ED68E020040C87AEB
            ADB7A479F3E6DA31806451A44811EFC45F44448476140000A08842CA1686610C
            851492CB810307A45CB972DA318064B16AD52AE9D8B1A3760C0000425AF9F2E5
            65FFFEFDDA31802473EB9DDD9A67B7EE190000F81B85942D0CC3180A29249796
            2D5BCA5FFFFA57ED1840928D1A354AA64D9BA61D03008090F6CA2BAFC8430F3D
            A41D034816EE7B10A7FD0000804321650BC33086420AC9C1EDFD77FBFF8160D7
            B46953D9B46993F0D901008094E3EE1B2D51A2847CFDF5D7DA5180249B306182
            3CFEF8E3DA31000080111452B6300C6328A4901C2A57AEECED4B0782997B30F6
            C9279F48A64C99B4A3000010D2E6CD9B2703070ED48E0124993B15B571E3465E
            66020000BFA190B2856118432185A45ABF7EBDB46BD74E3B06902459B264914F
            3FFD540A172EAC1D0500809076E9D225898C8C9473E7CE69470192242A2A4A3E
            FEF8635E660200007F4021650BC33086420A4955B66C593978F0A0760C2049DE
            79E71D69DCB8B1760C000042DE134F3C21E3C78FD78E0124897B99C99551C58B
            17D78E0200008CA190B2856118432185A4888B8B93989818ED184092CC9E3D5B
            860C19A21D0300809077F1E2452950A0809C3F7F5E3B0A9068EE19937B99A951
            A346DA51000080411452B6300C6328A49058EE9F8E3B1DF5C5175F68470112CD
            15AA6BD6ACD18E0100802F4C9F3E5D468F1EAD1D0348922953A6C8983163B463
            000000A328A46C6118C6504821B1B83B0AC1AE5CB972B267CF1E499B36AD7614
            000042DEE5CB97BDBBA3CE9E3DAB1D0548B4B66DDBCABA75EBB463000000C328
            A46C6118C6504821B12A55AA24FBF6EDD38E01248ADBFBFFE9A79F4AE1C285B5
            A30000E00BB366CD9261C38669C70012AD74E9D2DEBD51E9D3A7D78E0200000C
            A390B2856118432185C4D8B871A3B46AD54A3B0690686EEF7FE3C68DB5630000
            E00B9C8E42B0CB9021837CF6D96752AC5831ED280000C0380A295B1886311452
            480C4E4721988D18314266CC98A11D030000DF983B77AE0C1E3C583B069068AB
            57AF96FBEEBB4F3B06000008021452B6300C6328A490509B376F9666CD9A69C7
            0012A57AF5EAF2C1071F48585898761400007CE1CA952B52A85021F9FEFBEFB5
            A30089D2AD5B3759B26489760C0000102428A46C6118C6504821A16AD4A821BB
            76EDD28E0124D81D77DC21FBF7EFF77E020080C078FEF9E7A57FFFFEDA318044
            71F7467DF2C927922E5D3AED28000020485048D9C2308CA19042426CDBB64D1A
            356AA41D0348307722CA9D8C7227A400004060FCFAEBAFDEDD519C8E4230E2DE
            28000090181452B6300C6328A490100D1A34901D3B7668C700126CDAB469326A
            D428ED180000F8CAC2850BA577EFDEDA31804459BE7CB93CF4D043DA31000040
            90A190B2856118432185F8726BFADCBA3E20D8B82275EBD6ADC2E701000002C7
            9D8E2A5AB4A89C3C79523B0A9060DC1B050000128B42CA1686610C8514E2AB49
            9326B265CB16ED184082E4CD9BD7BB372A478E1CDA510000F095A54B974AF7EE
            DDB5630009C6BD510000202928A46C6118C65048213EF6EEDD2B952B57D68E01
            2488BB37EADD77DF955AB56A69470100C057AE5FBF2E254B9694C3870F6B4701
            12847BA3000040525148D9C2308CA190427CB46BD74ED6AF5FAF1D0348908913
            274A6C6CAC760C00007CE7D5575F95FBEEBB4F3B069060AB57AFE6DF2E000048
            120A295B1886311452B81DF7666B545494F04F05C1C49D8A72A7A3DC29290000
            105865CB969583070F6AC70012847BA300004072A090B2856118432185DBE9DC
            B9B3BCFCF2CBDA31807873F745B98760B973E7D68E020080EF6CDAB4495AB468
            A11D034810EE8D020000C98542CA1686610C85146EE5C4891352A44811EF1E00
            2018B8BFF95BB76E95060D1A68470100C097DC29E50F3FFC503B06106FDC1B05
            0000921385942D0CC3180A29DC4ADFBE7D65FEFCF9DA3180781B3972A44C9F3E
            5D3B060000BEF4FEFBEF4B9D3A75B4630009B278F162E9DEBDBB760C00001022
            28A46C6118C65048E166CE9E3D2BF9F3E7972B57AE684701E2A564C992DEDBAD
            69D2A4D18E0200802F356FDE5CDE7AEB2DED1840BC356DDA947FB30000205951
            48D9C2308CA190C2CD0C1F3E5C66CE9CA91D038897F0F0706FEF7FF9F2E5B5A3
            0000E04BEEFEC6B265CB6AC700E22D5BB66C72E8D021C9952B97761400001042
            28A46C6118C65048E146CE9F3F2FF9F2E593CB972F6B4701E225363656264E9C
            A81D030000DF8A898991B8B838ED1840BCAD5FBF5EDAB469A31D03000084180A
            295B1886311452B891C71F7F9C87FB081AEE54943B1DE54E49010080C03B7CF8
            B0444545095F2D102C1E78E00159B16285760C0000108228A46C6118C65048E1
            BFB95351EE74943B250558E74AA8FDFBF77BF7470100001DDDBA7593BFFCE52F
            DA318078712BFA8E1C392259B264D18E020000421085942D0CC3180A29FCB7A7
            9F7E5A1E7BEC31ED1840BC4C9D3A55468F1EAD1D030000DFFAF6DB6FA5408102
            DA318078DBB46993346BD64C3B06000008511452B6300C6328A4F07BD7AF5F97
            82050B7A0F1600EB2A57AE2CBB77EF96B0B030ED280000F8D6A851A364C68C19
            DA318078E9D5AB97BCF8E28BDA3100004008A390B2856118432185DF5BBB76AD
            B46FDF5E3B06705BE9D2A593CF3EFB4C4A9428A11D050000DF62D5338249A142
            85E4C0810392316346ED28000020845148D9C2308CA190C2EFD5AB574FDE7DF7
            5DED18C06DCD9C3953860E1DAA1D0300005F5BB06081F4E9D3473B06705BEEB9
            D0FBEFBF2F356BD6D48E020000421C85942D0CC3180A29FC9F4F3FFD542A56AC
            A81D03B8AD2A55AAC8471F7D24FC7D07004057E9D2A5E5EF7FFFBB760CE0B6DC
            1DB9B366CDD28E0100007C8042CA1686610C8514FE4FD7AE5D65D9B265DA3180
            5B72ABFADCAA95A2458B6A470100C0D7DE7EFB6D69DAB4A9760CE0B64A962CE9
            AD7A4E93268D76140000E0031452B6300C6328A4E09C3B774E72E7CE2DBFFEFA
            AB7614E096E6CC992383060DD28E010080EFB56CD952FEFAD7BF6AC7006E292C
            2C4CF6EDDB27E5CB97D78E0200007C8242CA1686610C85149CC71F7F5C264E9C
            A81D03B8A55AB56AC97BEFBDC7AA3E0000941D3B764C8A152B267C9580751326
            4CF0BEEB000000040A85942D0CC3180A293879F2E4913367CE68C7006EC93DFC
            2A5CB8B0760C00007C6FC08001F2DC73CF69C7006EC99D8A72ABFA0000000289
            42CA1686610C8514962F5F2E5DBA74D18E01DCD2B3CF3E2BFDFBF7D78E010080
            EFFDFCF3CFDECB4CBFFCF28B7614E0A6DC73A03D7BF648E5CA95B5A30000009F
            A190B2856118432105F7256DEFDEBDDA31809BAA5FBFBE6CDFBE5D3B060000F8
            8FD9B367CBD0A143B56300B7E45E64722F34010000041A85942D0CC3180A297F
            7BFFFDF7A54E9D3ADA31809B4A93268D1C3A74480A152AA41D050000DFBB7EFD
            BA142C5850BEFDF65BED28C04DB9137C870F1F964C993269470100003E442165
            0BC3308642CADF626262242E2E4E3B06705353A64C913163C668C7000000FFB1
            6EDD3AB9F7DE7BB56300B7B46AD52AE9D8B1A3760C0000E0531452B6300C6328
            A4FCEBCC9933922F5F3EEF4D57C0A2E2C58BCB175F7C21E1E1E1DA510000C07F
            346CD89035BA308D55CF0000401B85942D0CC3180A29FF8A8D8D9549932669C7
            006E6AD7AE5D52AD5A35ED180000E03F8E1E3D2AC58A15D38E01DC54DAB469E5
            EF7FFFBB142E5C583B0A0000F0310A295B1886311452FEE44E45B9D351EE9414
            60519F3E7DE485175ED08E010000FED7E0C18365EEDCB9DA31809B7AE2892764
            ECD8B1DA31000080CF5148D9C2308CA190F227776F94BB3F0AB02877EEDC72E4
            C8112EA20600C0887FFFFBDF72C71D77C84F3FFDA41D05B8A1A8A8283970E000
            AB9E0100803A0A295B1886311452FED4A85123D9B66D9B760CE086D6AC594361
            0A0080218B172F969E3D7B6AC7006EEAC30F3F941A356A68C7000000A0903286
            61184321E53FECFF87654D9A3491B7DF7E5B3B060000F89D4A952AC9BE7DFBB4
            630037D4B56B5759BA74A9760C0000000F85942D0CC3180A29FF19326488CC99
            33473B06F027EE22EAC3870F4B810205B4A3000080FFB567CF1EA95AB5AA760C
            E086B266CDEAAD7ACE91238776140000000F85942D0CC3180A297F61FF3F2C1B
            3F7EBC4C9A34493B060000F89D6EDDBAC95FFEF217ED18C00DB97592DDBB77D7
            8E010000F01B0A295B1886311452FEB264C912E9D1A387760CE04FF2E6CD2BC7
            8F1FF74E490100001BDC4B4CEE6526F75213608DBB33CADD1D05000060098594
            2D0CC3180A297F61FF3FAC5AB3668DC4C4C468C7000000BFF3F4D34FCB638F3D
            A61D03F893F0F0703970E0804445456947010000F8030A295B1886311452FEF1
            C9279F487474B4760CE04FEAD7AF2FDBB76FD78E010000FE4BF1E2C5BDFB7900
            6B468C18213366CCD08E010000F0271452B6300C6328A4FCC3ED565FBA74A976
            0CE00F52A54AE5BDDD5AB26449ED280000E077B66CD9224D9A34D18E01FC49AE
            5CB9E4E8D1A392397366ED280000007F4221650BC3308642CA1F2E5CB82059B3
            66D58E01FCC9A0418364CE9C39DA310000C07F71AB74E3E2E2B463007FB260C1
            02E9DDBBB7760C0000801BA290B28561184321E50FF3E7CF97BE7DFB6AC700FE
            2067CE9C72ECD831DE6E0500C018F732933B8572F5EA55ED28C01F942E5DDA3B
            5DCF731E0000601585942D0CC3180A297FA856AD9AECDEBD5B3B06F0070B172E
            949E3D7B6AC7000000FF65EEDCB93278F060ED18C09F6CDBB64D1A3468A01D03
            0000E0A628A46C6118C6504885BEAFBEFA4AA2A2A2B463007FC0DBAD0000D8E5
            3E3BBACF908025AD5AB5920D1B3668C7000000B8250A295B1886311452A16FD8
            B061326BD62CED18C01FECDCB953EAD6ADAB1D030000FC97BD7BF74AE5CA95B5
            63007F902A552AF9F2CB2FA558B162DA510000006E8942CA1686610C855468BB
            7EFDBAE4CE9D5BCE9E3DAB1D05F8CD3DF7DC236FBCF186760C000070038F3EFA
            A83CFBECB3DA31803F18346890CC9933473B060000C06D5148D9C2308CA1900A
            6DAFBFFEBAB46DDB563B06F01BDE6E0500C0AEAB57AF4AAE5CB9E4C2850BDA51
            80DF64CB964D4E9C3821993367D68E020000705B1452B6300C6328A4429B2BA3
            5C2905583170E040EFA274000060CF9A356BA463C78EDA31803F78E69967BC93
            7B000000C18042CA1686610C8554E8726BFADCBA3EB7B60FB0C0BDD5EADE6E75
            6FB90200007B9A376F2E6FBDF596760CE037EE54BD3B5DEF4ED903000004030A
            295B1886311452A16BF6ECD93274E850ED18C06F9E7EFA69193C78B0760C0000
            7003DF7FFFBDE4CF9F5FF87A004BDE7CF34D69D9B2A5760C00008078A390B285
            6118432115BAA2A2A2E4ABAFBED28E0178222323E5C89123923A756AED280000
            E006A64E9D2A63C78ED58E01FCA66EDDBAB273E74EED18000000094221650BC3
            3086422A34EDD9B347AA56ADAA1D03F88DBB93222626463B060000B88942850A
            79AB75010BDC8ABECF3FFF5C4A972EAD1D050000204128A46C6118C6504885A6
            7EFDFAC90B2FBCA01D03F0942B57CE7BA00000006C7AFFFDF7A54E9D3ADA3180
            DFF4E9D387EF33000020285148D9C2308CA1900A4DD9B367977FFEF39FDA3100
            8FBB1CBD69D3A6DA310000C04DF4EAD54B162D5AA41D03F8CD0F3FFC20B972E5
            D28E01000090601452B6300C6328A442CFBA75EBE4DE7BEFD58E01786AD7AE2D
            EFBDF79E760C0000701357AF5EF55E66BA78F1A27614C0336AD42899366D9A76
            0C00008044A190B28561184321157A3A74E820AFBDF69A760CC0E3EE338B8E8E
            D68E0100006E62EDDAB5D2BE7D7BED18802763C68CF2DD77DF49444484761400
            008044A190B28561184321155ADC9BADEE0D57F7A62BA0AD458B16B271E346ED
            180000E0165C19E54A29C08271E3C6C9E4C993B563000000241A85942D0CC318
            0AA9D0B264C912E9D1A387760CC0F3F9E79F4BB972E5B4630000809BE0652658
            C2E9280000100A28A46C6118C650488596468D1AC9B66DDBB46300D2B1634759
            B56A95760C0000700B8B172F969E3D7B6AC7003C13274E94D8D858ED18000000
            494221650BC33086422A749C3A754AF2E7CFAF1D03F07CF5D55752BC7871ED18
            0000E0161A366C28DBB76FD78E0178A7A2BEF9E61BC99C39B3761400008024A1
            90B28561184321153A66CD9A25C3860DD38E0148D7AE5D65E9D2A5DA310000C0
            2DFCF0C30F92274F1EE1EB002C78E2892764ECD8B1DA31000000928C42CA1686
            610C8554E8A854A992ECDBB74F3B067C2E55AA5472FCF8712950A08076140000
            700B3367CE94E1C3876BC700BCD351EEEE28778714000040B0A390B285611843
            21151A8E1D3B26458B16D58E0148B76EDD64C99225DA310000C06D54AC58513E
            FDF453ED18804C9F3E5D468E1CA91D03000020595048D9C2308CA1900A0DE3C6
            8D932953A668C780CF713A0A0080E0C0CB4CB022478E1CF2EDB7DF4ABA74E9B4
            A3000000240B0A295B1886311452A1C11500EE8B1CA089D351000004077757CF
            D4A953B56300DEEAC8A143876AC700000048361452B6300C6328A482DF871F7E
            28B56AD5D28E019FE374140000C183979960419E3C79BCCF8F9C8E020000A184
            42CA1686610C8554F01B3468903CF3CC33DA31E073DDBB7797C58B176BC70000
            00B7F1D1471F49F5EAD5B563003277EE5C193870A0760C000080644521650BC3
            3086422AF8E5CD9B574E9F3EAD1D033EC6E928000082C7881123E4A9A79ED28E
            019F73A7A34E9C382169D2A4D18E02000090AC28A46C6118C6504805B7DDBB77
            4BB56AD5B463C0E77AF4E8218B162DD28E010000E2A1489122DE8B2480A6E79F
            7F5EFAF6EDAB1D03000020D95148D9C2308CA1900A6EC3870FF72E0206B4B8BF
            B15F7EF9A5942851423B0A0000B88D7DFBF649A54A95B463C0E7B265CBE66D78
            E07414000008451452B6300C6328A4825BC18205E5E4C993DA31E063EDDAB593
            B56BD76AC7000000F1306EDC389932658A760CF8DCC48913253636563B060000
            408AA090B2856118432115BCF6EEDD2B952B57D68E019FDBB3678F4447476BC7
            000000F1E04E341F3E7C583B067CCC9D8A72A7A3DC2929000080504421650BC3
            3086422A788D1D3B56A64E9DAA1D033E56B76E5DD9B973A7760C0000100F070F
            1E94B265CB6AC780CF3DF2C823327FFE7CED18000000298642CA1686610C8554
            F0E20D5768DBB871A3B468D1423B0600008887499326B1260DAADCB399A3478F
            4AE1C285B5A3000000A4180A295B1886311452C1E9C0810352AE5C39ED18F031
            57881E3A74483B06000088A7F2E5CBCBFEFDFBB563C0C7DAB46923EBD7AFD78E
            01000090A228A46C6118C6504805A7C71F7FDCBB0C18D0F2D24B2F49E7CE9DB5
            63000080783879F2A4142C58503B067CEEBDF7DE93DAB56B6BC7000000485114
            52B6300C6328A482933B1DE54E49011AF2E5CB27274E9C90F0F070ED28000020
            1EA64D9B2663C68CD18E011FAB52A58AECDEBD5B3B060000408AA390B2856118
            4321157CDCDEF562C58A69C7808F3DFDF4D33278F060ED180000209E5C19F0F1
            C71F6BC7808FAD59B346626262B463000000A4380A295B1886311452C187375C
            A12973E6CC72E6CC19499F3EBD76140000100FACEB83B6C2850BCB912347242C
            2C4C3B0A0000408AA390B28561184321157CAA56AD2A7BF6ECD18E019F1A3264
            88CC9E3D5B3B06000088A73973E6787FBF012DCF3CF38C3CFAE8A3DA31000000
            028242CA1686610C855470F9C73FFE213973E6D48E019F726FB5BAB7ACF3E7CF
            AF1D050000C453A3468D64DBB66DDA31E0539CAE0700007E4321650BC3308642
            2AB82C5AB4487AF5EAA51D033ED5BE7D7B898B8BD38E010000E2E9A79F7E92EC
            D9B3CBB56BD7B4A3C0A7468F1E2D53A74ED58E01000010301452B6300C6328A4
            824B9B366DE48D37DED08E019F7AFFFDF7A556AD5ADA310000403CAD5EBD5AEE
            BFFF7EED18F0A9F0F070F9EEBBEFE48E3BEED08E02000010301452B6300C6328
            A482C7952B57BC9517EE271068E5CB9797CF3EFB4C3B0600004880071F7C5056
            AC58A11D033ED5AD5B3759B26489760C00008080A290B28561184321153C366E
            DC28AD5AB5D28E019F720FB31E78E001ED1800002001B265CB26E7CF9FD78E01
            9F3A78F0A0942E5D5A3B06000040405148D9C2308CA1900A1E8F3CF288BCF8E2
            8BDA31E0436ECD8A5BB7E2D6AE000080E0B073E74EA95FBFBE760CF854BD7AF5
            64C78E1DDA31000000028E42CA1686610C8554F0C8972F9F7CFFFDF7DA31E043
            EE226A7721350000081EC3860D9359B36669C7804FAD5CB992FBCB0000802F51
            48D9C2308CA1900A0E9F7CF2894447476BC7800FB95351A74F9F961C39726847
            0100000950B87061F9FAEBAFB563C087DCE746F7F991D3F50000C08F28A46C61
            18C650480587D8D85899346992760CF850C78E1D65D5AA55DA31000040021C3A
            74484A962CA91D033E357CF87079F2C927B563000000A8A090B2856118432115
            1C2A55AA24FBF6EDD38E011FDABE7D3BF74F0000106466CE9CE9950240A0B9E7
            2FEE645E6464A47614000000151452B6300C6328A4EC73F746B9FBA380402B56
            AC981C3E7C583B06000048A07AF5EAC9BBEFBEAB1D033ED4B8716379E79D77B4
            63000000A8A190B2856118432165DFFCF9F3A56FDFBEDA31E043B367CF962143
            8668C700000009F0D34F3F49D6AC59858FF9D0F0EAABAF4A870E1DB463000000
            A8A190B28561184321655FEBD6AD65C3860DDA31E03369D3A6951F7EF841B264
            C9A21D0500002480BBFBF181071ED08E011FCA9123879C3E7D5AC2C3C3B5A300
            0000A8A190B2856118432165DBB56BD7242222422E5DBAA41D053ED3A54B1759
            B66C99760C000090403D7AF490254B9668C7800F8D193346A64C99A21D030000
            401585942D0CC3180A29DBDE7BEF3DA95BB7AE760CF8D0071F7C20356BD6D48E
            01000012E88E3BEE901F7FFC513B067CC63D77F9FAEBAF253232523B0A000080
            2A0A295B1886311452B64D983041264F9EAC1D033E53B66C59D9BF7FBF760C00
            009040870E1D9292254B6AC7800F356FDE5CFEFAD7BF6AC7000000504721650B
            C3308642CAB61A356AC8AE5DBBB463C067E6CE9D2B03070ED48E0100001268DE
            BC79FC0D878AF5EBD74B9B366DB463000000A8A390B2856118432165D7850B17
            245BB66CC2881048A953A7F6D6FCB8BBCB00004070B9E79E7BE4CD37DFD48E01
            9FC993278F7CF7DD77121616A61D050000401D85942D0CC3180A29BBD6AE5D2B
            EDDBB7D78E019FE9D0A183BCFAEAABDA31000040025DBB76CD7BA1E4D2A54BDA
            51E033B1B1B13271E244ED18000000265048D9C2308CA190B2AB4F9F3EB260C1
            02ED18F019B7FBDFDD0100000082CBBBEFBE2BF5EAD5D38E019F71A7A2DCE928
            774A0A0000001452D6300C6328A4EC2A50A0807CFBEDB7DA31E02379F3E6F5FE
            CDB16E050080E0337EFC7879E28927B463C0675AB76E2DAFBFFEBA760C000000
            3328A46C6118C65048D974F4E8512956AC98760CF8CCE8D1A365EAD4A9DA3100
            00402254AB564D76EFDEAD1D033EB36EDD3A69DBB6AD760C0000003328A46C61
            18C65048D9347FFE7CE9DBB7AF760CF8CCD75F7F2D050B16D48E01000012E8C2
            850B922D5B36E1A33D02C9FD9B3B73E68CA44E9D5A3B0A000080191452B6300C
            6328A46CBAF7DE7BBDB70D8140A953A78E77F7040000083E717171121313A31D
            033ED3AB572F79F1C517B563000000984221650BC3308642CA1E3792CC9933CB
            A54B97B4A3C047962C5922DDBA75D38E01000012E191471EA11840C0EDD8B143
            EAD5ABA71D030000C0140A295B1886311452F6ECD9B347AA56ADAA1D033EF3F3
            CF3F4BA64C99B4630000804470778FBA3B488140898C8C9413274E68C7000000
            308742CA1686610C85943D4F3DF5948C1831423B067CE481071E90152B5668C7
            0000008970FAF469C99B37AF760CF8CCC8912365FAF4E9DA31000000CCA190B2
            856118432165CF3DF7DC236FBEF9A6760CF888FBF7D6B2654BED180000201156
            AE5C299D3A75D28E019FF9FCF3CFA55CB972DA31000000CCA190B28561184321
            65CBF5EBD7252222422E5EBCA81D053E912D5B36F9F1C71F2555AA54DA510000
            4022F4EDDB57E6CF9FAF1D033E52BA74693978F0A0760C0000009328A46C6118
            C65048D9F2D9679FC95D77DDA51D033E3260C00099376F9E760C0000904865CA
            94912FBEF8423B067CC4ADEA732BFB000000F0671452B6300C6328A46C79E699
            6764D0A041DA31E0237FFBDBDFA47AF5EADA31000040229C3B774E72E4C8A11D
            033EE29EAF9C3C7952EEBCF34EED28000000265148D9C2308CA190B2A543870E
            F2DA6BAF69C7804F142952448E1E3DAA1D03000024D2DAB56BA57DFBF6DA31E0
            2375EBD6959D3B776AC7000000308B42CA1686610C85942DEE0D57F7A62B1008
            B1B1B13271E244ED1800002091060F1E2C73E7CED58E011F59B06081F4EEDD5B
            3B06000080591452B6300C6328A4ECF8F2CB2FA554A952DA31E023EE74943B25
            0500008253A54A9564DFBE7DDA31E013A953A7963367CE48B66CD9B4A3000000
            984521650BC3308642CA8E850B17F2B62102A64A952AB27BF76EED1800002091
            7EFAE927898888D08E011F69D7AE9DB72612000000374721650BC3308642CA8E
            071F7C5056AC58A11D033E316DDA3419356A94760C000090481B376E9456AD5A
            69C7808FBCFAEAABDE9DB7000000B8390A295B188631145276E4CD9B574E9F3E
            AD1D033E71E2C409898C8CD48E0100001269E4C891F2E4934F6AC7804F64CA94
            C9BBEBD6ADED030000C0CD5148D9C2308CA190B2E1F8F1E3DCE58380295FBEBC
            7CF6D967DA3100004012D4A8514376EDDAA51D033ED1B56B5759BA74A9760C00
            0000F328A46C6118C65048D9F0D24B2FC9C30F3FAC1D033E3169D224193F7EBC
            760C00009048972F5F960C193268C7808FAC5FBF5EDAB469A31D030000C03C0A
            295B1886311452363CF2C823F2E28B2F6AC7804F1C3C78504A972EAD1D030000
            24D2CE9D3BA57EFDFADA31E01369D2A491F3E7CF4BFAF4E9B5A3000000984721
            650BC3308642CA860A152AC8E79F7FAE1D033E50BC7871F9EAABAFB463000080
            24983163868C1A354A3B067CA2458B16B271E346ED18000000418142CA168661
            0C85943EB772C55D127CFDFA75ED28F08171E3C6C9E4C993B5630000802468D7
            AE9DB7420D0884F9F3E77B1B1D000000707B1452B6300C6328A4F46DDFBE5D1A
            366CA81D033EB16FDF3EB9EBAEBBB46300008024C8952B979C3D7B563B067CE2
            D4A95392376F5EED18000000418142CA1686610C8594BEE9D3A7CBE8D1A3B563
            C0078A142922478F1ED58E01000092E0E4C99352B06041ED18F089E8E868D9B3
            678F760C000080A04121650BC33086424A5F9B366DE48D37DED08E011F183264
            88CC9E3D5B3B0600004882D5AB57CBFDF7DFAF1D033EF1F8E38FCB840913B463
            000000040D0A295B1886311452FA58B98240D9B66D9B3468D0403B0600004802
            F782C99C3973B463C027F6EEDD2B152B56D48E010000103428A46C6118C65048
            E93A7EFCB8B7460D486959B2649173E7CE49AA54A9B4A300008024A851A386EC
            DAB54B3B067CC0DD1BE5EE8F02000040FC5148D9C2308CA190D2B572E54AE9D4
            A993760CF8805BEDE3FEBD010080E075F5EA55C99831A3F7134869FDFAF593E7
            9E7B4E3B0600004050A190B28561184321A56BD0A041F2CC33CF68C7800FBCF2
            CA2B949F000004B98F3EFA48AA57AFAE1D033EB169D32669D6ECFFB177E7615F
            CEF9FFFF5F47912263CDBE26D45862B22443648B98418CB26F99C94E31962921
            86A16C89195B96C848C64896D1686C9525115196EC3E51B69446387EC7FBFAFE
            F53D7EC7F73343E7FB7ABEAEF3BCDDFEE9DFFB31CF46753DDEEFF3EC1E9D0100
            D0A418A4F2E218993148C5DA76DB6DD3B3CF3E1B9D41C9D51ED3577B5C5FEDB1
            7D0040D375D55557A5534F3D353A830A68D5AA55FAE28B2F528B162DA2530000
            9A1483545E1C233306A9381EB94263E9DAB56B9A306142740600B0987AF7EE9D
            468D1A159D4105F4ECD9338D1E3D3A3A0300A0C93148E5C5313263908A3371E2
            C4D4A54B97E80C2AE0F2CB2F4FFDFAF58BCE000016D3FAEBAF9FDE79E79DE80C
            2A60C48811E988238E88CE000068720C5279718CCC18A4E278E40A8DE5EDB7DF
            6EF8011600D074CD993327B569D3263A838A983B776E5A71C515A33300009A1C
            83545E1C233306A938471E7964BAF5D65BA33328B98D36DA28CD9831233A0300
            584C8F3CF248EADEBD7B740615F0CB5FFE323DF9E493D11900004D92412A2F8E
            911983549CCD37DF3C4D9B362D3A83923BFEF8E3D3B5D75E1B9D01002CA64B2E
            B9249D7DF6D9D11954C0A5975E9ACE3CF3CCE80C008026C9209517C7C88C412A
            C6A2458B52CB962DD30F3FFC109D42C98D193326EDB7DF7ED11900C0623AF0C0
            03D3E8D1A3A333A880E79F7F3E75EAD4293A0300A0493248E5C5313263908A31
            79F2E4D4B973E7E80C4AAEF6E7DFBC79F3D232CB2C139D02002CA60D36D8A0E1
            BD90504FCB2FBF7CFAECB3CF929FA30000FC3406A9BC3846660C5231AEBFFEFA
            D4B76FDFE80C4AAE367A4E9C38313A0300584CDF7CF34D5A7AE9A5A333A880FD
            F7DF3FDD7BEFBDD11900004D96412A2F8E911983548CE38E3B2EDD70C30DD119
            94DC800103D205175C109D01002CA6091326A49D77DE393A830A18366C583AE1
            8413A23300009A2C83545E1C233306A9185B6DB5557AE18517A23328B9279E78
            22EDB0C30ED11900C0621A3A7468EAD7AF5F740615F0DA6BAFA5F6EDDB476700
            00345906A9BC3846660C528DEF871F7E482D5BB64C8B162D8A4EA1C46AEF8DFA
            F2CB2F53F3E6CDA3530080C574E8A187A691234746675072ABACB24A9A3D7B76
            74060040936690CA8B6364C620D5F85E7AE9A5B4C5165B446750727BEFBD777A
            E08107A2330080026CB2C92669FAF4E9D11994DC61871D966EBBEDB6E80C0080
            26CD209517C7C88C41AAF1DD72CB2DE9E8A38F8ECEA0E4AEBAEAAA74F2C92747
            6700008BE99B6FBE49AD5BB76EF8963DD4D3881123D211471C119D0100D0A419
            A4F2E21899314835BE934E3AA9E165C1504FD3A64D4B9B6EBA69740600B09826
            4E9C98BA74E9129D4105D41ED7577B6C1F00003F9D412A2F8E91198354E3DB7E
            FBEDD333CF3C139D4189ADB8E28A69EEDCB9D119004001AEBDF6DA74E2892746
            6750721B6EB8619A39736674060040936790CA8B6364C620D5F85AB56A95162E
            5C189D4189EDBFFFFEE9DE7BEF8DCE00000AD0A74F9F74E38D37466750727DFB
            F64DC3870F8FCE000068F20C5279718CCC18A41AD75B6FBD95DAB56B179D41C9
            5D71C515E9D4534F8DCE00000AB0EDB6DBA6679F7D363A8392BBE79E7BD20107
            1C109D0100D0E419A4F2E21899314835AE071E7820FDEA57BF8ACEA0E4A64C99
            92B6DC72CBE80C00A000AD5BB74EF3E7CF8FCEA0E43EFFFCF3B4FCF2CB476700
            00347906A9BC3846660C528DEB924B2E49679F7D7674062556FBA1D5975F7E99
            9A356B169D02002CA6F7DE7B2FADBBEEBAD119945CED834CB50F340100B0F80C
            5279718CCC18A41AD7E1871F9E6EBFFDF6E80C4AAC478F1E69ECD8B1D1190040
            011E7EF8E1B4E79E7B46675072FDFAF54B975F7E79740600402918A4F2E21899
            314835AE4E9D3AF9F42175F5A73FFD299D71C619D119004001860C1992FAF7EF
            1F9D41C98D1B37CEF00900501083545E1C233306A9C6B5F4D24BA76FBEF9263A
            83129B3C7972DA669B6DA2330080021C73CC31E9E69B6F8ECEA0E4BEFEFAEBB4
            CC32CB446700009482412A2F8E91198354E399356B566ADBB66D740625D6AA55
            ABB460C182E80C00A0209D3B776EF8B009D4CB669B6D965E7EF9E5E80C0080D2
            3048E5C5313263906A3CB5F7FAECB3CF3ED1199458B76EDDD2F8F1E3A3330080
            82B46EDD3ACD9F3F3F3A83123BE28823D2881123A23300004AC3209517C7C88C
            41AAF15C7AE9A5E9ACB3CE8ACEA0C4CE39E79C74D14517456700000578FFFDF7
            D33AEBAC139D41C95D75D555E9E4934F8ECE0000280D83545E1C233306A9C653
            FBF4E16DB7DD169D41893DF0C00369EFBDF78ECE00000AF0C8238FA4EEDDBB47
            6750724F3DF554DA7EFBEDA33300004AC3209517C7C88C41AAF16CB5D556E985
            175E88CEA0C4E6CC9993565A69A5E80C00A00043870E4DFDFAF58BCEA0C49A35
            6B96BEFEFAEB86F7900200500C83545E1C233306A9C6B3D4524BA56FBFFD363A
            83926AD7AE5D7AE38D37A2330080821C7BECB1E9A69B6E8ACEA0C47EFEF39FA7
            575F7D353A0300A0540C5279718CCC18A41AC7AC59B352DBB66DA33328B1C30E
            3BCC232101A044B6DB6EBB3469D2A4E80C4AECD0430F4DB7DF7E7B74060040A9
            18A4F2E218993148358E71E3C6A51E3D7A44675062D75E7B6D3AFEF8E3A33300
            80822CBBECB20D8F53837AB9F2CA2BD329A79C129D0100502A06A9BC3846660C
            528DE3AAABAE4AA79E7A6A7406253665CA94B4E5965B4667000005F8F4D34FD3
            2AABAC129D41C93DF1C41369871D7688CE0000281583545E1C233306A9C671E2
            8927367C8305EAA165CB9669FEFCF90D2FA606009ABE679E79266DBFFDF6D119
            94DC82050B52AB56ADA23300004AC5209517C7C88C41AA71ECB9E79EE9E1871F
            8ECEA0A476DC71C7F4AF7FFD2B3A03002848EDBD3E871F7E78740625D6BE7DFB
            F4DA6BAF45670000948E412A2F8E91198354E368D7AE5D7AEBADB7A23328A9DA
            E320AFB8E28AE80C00A02003070E4C175E786174062576F0C107A79123474667
            0000948E412A2F8E91198354FD7DFFFDF769A9A5966AF815EAE1D65B6FF5296A
            002891DEBD7BA751A3464567506243860C49A79F7E7A74060040E918A4F2E218
            993148D5DF1B6FBC9136DA68A3E80C4A6CDAB46969D34D378DCE00000AB2F5D6
            5BA7E79F7F3E3A83129B306142EADAB56B74060040E918A4F2E218993148D5DF
            B871E3528F1E3DA23328A925975C322D5CB830356BD62C3A050028C8B2CB2E9B
            BEFEFAEBE80C4A6CC18205A955AB56D1190000A56390CA8B6364C620557F575F
            7D753AE59453A23328A9DA27A89F7DF6D9E80C00A02073E6CC496DDAB489CEA0
            C436DC70C33473E6CCE80C0080523248E5C531326390AABF934F3E395D73CD35
            D11994D471C71D97FEFCE73F476700000599346952DA6EBBEDA23328B15EBD7A
            A5BBEEBA2B3A0300A0940C5279718CCC18A4EA6FCF3DF74C0F3FFC7074062575
            DD75D7A5DFFDEE77D1190040416EBFFDF674F8E18747670040256CBEF9E6E9A5
            975E8ACE004AC4209517C7C88C41AAFE6A8FC478F3CD37A33328A9C99327A76D
            B6D9263A030028C879E79D972EB8E082E80C00A8048314503483545E1C233306
            A9FAFAFEFBEFD3524B2DD5F02B14AD59B36669E1C28569C925978C4E01000A72
            C82187A43BEFBC333A03002AC1200514CD209517C7C88C41AABEDE7AEBADD4AE
            5DBBE80C4A6A934D3649AFBCF24A74060050A06DB7DD363DFBECB3D119005009
            1D3B764C53A74E8DCE004AC4209517C7C88C41AABEFEF18F7FA4DD77DF3D3A83
            923AE8A083D2A851A3A233008002ADBCF2CA69EEDCB9D1190050090629A06806
            A9BC3846660C52F575E38D37A63E7DFA44675052E79F7F7E1A38706074060050
            906FBEF9262DBDF4D2D1190050191ED90714CD209517C7C88C41AABEBC949A7A
            BAE79E7BD201071C109D01001464C68C19A97DFBF6D1190050190629A06806A9
            BC3846660C52F575D45147A511234644675052D3A74F4F1D3A7488CE00000AE2
            71CF00D0B80C5240D10C5279718CCC18A4EA6BD75D774DE3C78F8FCEA0849A35
            6B96162D5AD4F02B00500E37DF7C733AE69863A23300A0320C5240D10C527971
            8CCC18A4EA6BE38D374E3367CE8CCEA08436DD74D3346DDAB4E80C00A040B5F7
            430E1A34283A03002AC3200514CD209517C7C88C41AABE965C72C9F4DD77DF45
            675042071D74501A356A5474060050A0DAB7A36ADF9202001A87410A289A412A
            2F8E91198354FDCC993327B569D3263A8392AA7D827AE0C081D1190040816AEF
            8FAABD470A00681C0629A06806A9BC3846660C52F53365CA94D4A953A7E80C4A
            6AF4E8D1A967CF9ED119004081DAB76F9F66CC98119D0100956190028A6690CA
            8B6364C620553FF7DF7F7FDA77DF7DA33328A9D75E7BADE187560040792CBDF4
            D2E99B6FBE89CE0080CAE8D8B1639A3A756A7406502206A9BC3846660C52F573
            CD35D7A4934F3E393A8392AABD9BAC79F3E6D119004041E6CE9D9B565E79E5E8
            0C00A814DF90028A6690CA8B6364C620553F679E7966BAECB2CBA23328A1F5D6
            5B2FCD9A352B3A03002850EDD3D95B6EB965740600548A410A289A412A2F8E91
            198354FDF4EEDD3B8D1A352A3A8312DA75D75DBDF01C004AE681071E48BFFAD5
            AFA23300A0520C5240D10C5279718CCC18A4EA67FBEDB74FCF3CF34C740625D4
            B76FDF347CF8F0E80C00A040D75E7B6D3AF1C413A33300A0520C5240D10C5279
            718CCC18A4EA67FDF5D74FEFBCF34E7406253474E8D074DA69A745670000053A
            E79C73D21FFFF8C7E80C00A8948E1D3B363C3617A02806A9BC3846660C52F5D3
            A2458BB468D1A2E80C4AE8FEFBEFF7481F002899A38F3E3ADD72CB2DD1190050
            29BE210514CD209517C7C88C41AA3EBEFCF2CBB4FCF2CB47675052D3A74F4F1D
            3A7488CE00000AD4A3478F346EDCB8E80C00A8148314503483545E1C233306A9
            FA98397366DA78E38DA33328A9EFBEFB2E356FDE3C3A030028D0565B6D955E78
            E185E80C00A8148314503483545E1C233306A9FA78F2C927D38E3BEE189D4109
            ADBBEEBADE4D060025B4F6DA6BA70F3EF8203A03002AC5200514CD209517C7C8
            8C41AA3E468F1E9D0E3CF0C0E80C4A68975D76498F3DF6587406005030FF6E05
            80C6D7B163C73475EAD4E80CA0440C5279718CCC18A4EA63D8B061E9A4934E8A
            CEA0848E3CF2482F3C078092F9ECB3CFD24A2BAD149D010095E31B5240D10C52
            79718CCC18A4EA63C0800169F0E0C1D11994D0C08103D3F9E79F1F9D010014E8
            B5D75E4B3FFFF9CFA33300A0720C5240D10C5279718CCC18A4EAE3B8E38E4B37
            DC704374062554FB7D75ECB1C746670000059A306142DA79E79DA33300A0720C
            5240D10C5279718CCC18A4EAE3D7BFFE75FAFBDFFF1E9D41093DFCF0C3698F3D
            F688CE00000A74F7DD77A75EBD7A45670040E518A480A219A4F2E218993148D5
            47E7CE9DD3E4C993A33328A1575F7DD5237D00A064AEBEFAEA74CA29A7446700
            40E518A480A219A4F2E218993148D5C7FAEBAF9FDE79E79DE80C4A68C18205A9
            55AB56D119004081CE3DF7DC74F1C51747670040E518A480A219A4F2E2189931
            48D5478B162DD2A2458BA2332899E5975F3E7DFEF9E7D1190040C16AEF87BCE9
            A69BA23300A0720C5240D10C5279718CCC18A48AF7D5575FA5E5965B2E3A8312
            DA6CB3CDD2CB2FBF1C9D0100146CEFBDF74E0F3EF860740600548E410A289A41
            2A2F8E91198354F1DE7EFBEDB4C1061B446750423D7AF44863C78E8DCE00000A
            B6DD76DBA549932645670040E574ECD8314D9D3A353A03281183545E1C233306
            A9E24D99322575EAD4293A8312EADBB76F1A3E7C7874060050B00E1D3AA4D75F
            7F3D3A03002AC7200514CD209517C7C88C41AA788F3DF658DA6DB7DDA23328A1
            418306A5F3CE3B2F3A030028D82AABAC923EFDF4D3E80C00A81C8FEC038A6690
            CA8B6364C62055BCD1A347A7030F3C303A8312BAEEBAEBD2EF7EF7BBE80C00A0
            60CD9A354BFE5A0E008DCF200514CD209517C7C88C41AA7837DE7863EAD3A74F
            7406253466CC98B4DF7EFB45670000055AB060415A669965A23300A0920C5240
            D10C5279718CCC18A48A77F9E597A733CE38233A83127AFAE9A753972E5DA233
            0080027DF4D14769CD35D78CCE00804A324801453348E5C5313263902ADEB9E7
            9E9B2EBEF8E2E80C4AE8CD37DF4C1B6CB04174060050A0575F7D356DBAE9A6D1
            190050490629A06806A9BC3846660C52C53BE18413D2F0E1C3A33328A179F3E6
            A5D6AD5B4767000005AA7D03FA97BFFC657406005492410A289A412A2F8E9119
            8354F10E39E49074E79D77466750324B2EB964FAF6DB6FA3330080823DF8E083
            69EFBDF78ECE00804A324801453348E5C5313263902ADE5E7BED951E7AE8A1E8
            0C4A66FDF5D74F6FBFFD7674060050B03BEEB8231D76D861D1190050490629A0
            6806A9BC3846660C52C5EBD2A54B9A387162740625D3B97367BFAF00A084860D
            1B964E3AE9A4E80C00A8248314503483545E1C233306A9E2FDFCE73F4FAFBDF6
            5A740625B3EFBEFBA6FBEEBB2F3A030028D8E0C183D3800103A23300A0920C52
            40D10C5279718CCC18A48AB7C61A6BA48F3FFE383A839239E69863D28D37DE18
            9D010014AC7FFFFE69C89021D1190050490629A06806A9BC3846660C52C56BD5
            AA555AB8706174062553FB61D565975D169D010014ACF6A1939B6FBE393A0300
            2AC9200514CD209517C7C88C41AA78FE9B433D5C74D145E99C73CE89CE00000A
            76E08107A6D1A347476700402575ECD8314D9D3A353A03281183545E1C233306
            A9627DFEF9E769C515578CCEA0846A2F3C3FE18413A233008082EDB9E79EE9E1
            871F8ECE00804AF20D29A06806A9BC3846660C52C5FAF0C30FD35A6BAD159D41
            098D1C39321D7CF0C1D1190040C1BA76ED9A9E78E289E80C00A8248314503483
            545E1C233306A962BDF9E69B69C30D378CCEA0841E7CF0C1B4D75E7B45670000
            05DB669B6DD273CF3D179D0100956490028A6690CA8B6364C62055AC975F7EB9
            E1F9C350B4679E79266DB7DD76D1190040C136DD74D3F4EAABAF466700402519
            A480A219A4F2E218993148156BD2A4494603EA62FAF4E9A943870ED1190040C1
            DAB66D9B66CD9A159D0100956490028A6690CA8B6364C62055AC7FFEF39F6997
            5D7689CEA0843EFAE8A3B4FAEAAB47670000055B6DB5D5D2ECD9B3A33300A092
            0C5240D10C5279718CCC18A48A3576ECD8B4CF3EFB44675042DF7CF34D6AD9B2
            6574060050B09FFDEC6769DEBC79D1190050490629A06806A9BC3846660C52C5
            BAE79E7BD26F7EF39BE80C4AC8FF5501A09CFC7B1500E2D4DE033E75EAD4E80C
            A0440C5279718CCC18A48A75EBADB7A6238F3C323A8392596EB9E5D2175F7C11
            9D0100146CD1A245A9458B16D119005059BE210514CD209517C7C88C41AA58D7
            5D775D3AFEF8E3A3332899DABBA36AEF900200CAE5CB2FBF4CCB2FBF7C740600
            5496410A289A412A2F8E91198354B1860C1992FAF7EF1F9D41C96CB0C106E9CD
            37DF8CCE00000AF6F1C71FA735D658233A03002ACB200514CD209517C7C88C41
            AA58175E78611A387060740625B3D9669BA5975F7E393A030028D85B6FBD95DA
            B56B179D0100956590028A6690CA8B6364C62055ACB3CF3E3B5D72C925D11994
            CCB6DB6E9B264D9A149D0100146CDAB4690D3F0803006218A480A219A4F2E218
            99314815EBB4D34E4B575E7965740625D3AD5BB7347EFCF8E80C00A060CF3DF7
            5CDA669B6DA23300A0B23A76EC98A64E9D1A9D019488412A2F8E91198354B14E
            3FFDF474C51557446750323D7AF44863C78E8DCE00000AF6FCF3CFA7ADB7DE3A
            3A03002ACB37A480A219A4F2E21899314815CB23FBA887030F3C30FDF5AF7F8D
            CE00000AE6917D0010CB200514CD209517C7C88C41AA5883060D4AE79F7F7E74
            062573C41147A411234644670000059B397366DA78E38DA33300A0B20C5240D1
            0C5279718CCC18A48A75E9A597A6B3CE3A2B3A8392E9DBB76F1A3E7C78740600
            50B077DF7D37ADB7DE7AD119005059DE210514CD209517C7C88C41AA5843870E
            4DFDFAF58BCEA0648E3DF6D874C30D374467000005FBF8E38FD31A6BAC119D01
            0095E51B5240D10C5279718CCC18A48A75EDB5D7A6134F3C313A839239F8E083
            D3C89123A3330080827DF6D96769A595568ACE0080CA324801453348E5C53132
            63902AD68D37DE98FAF4E9139D41C9ECBBEFBEE9BEFBEE8BCE00000A367FFEFC
            D4BA75EBE80C00A82C8314503483545E1C233306A962DD7EFBEDE9F0C30F8FCE
            A06476DF7DF7F4C8238F44670000055BB468516AD1A2457406005496410A289A
            412A2F8E91198354B1FEFAD7BFA6830E3A283A8392D961871DD2134F3C119D01
            00D4817FAF02401C8314503483545E1C233306A962DD7FFFFD0D8F57832275EA
            D4293DFFFCF3D11900401DB46AD52A2D5CB8303A03002AC9200514CD209517C7
            C88C41AA58B5C7AA75EFDE3D3A8392E9D0A1439A3E7D7A7406005007CB2DB75C
            FAEAABAFA23300A0920C5240D10C5279718CCC18A48A3561C284B4F3CE3B4767
            5032EBAEBB6E7AE79D77A23300803A58659555D2A79F7E1A9D0100956490028A
            6690CA8B6364C62055AC891327A62E5DBA44675032B51F54CD9E3D3B3A0300A8
            83B5D75E3B7DF0C107D1190050490629A06806A9BC3846660C52C59A32654AC3
            FB7EA048AD5BB74EF3E6CD8BCE0000EAA05DBB76E9ADB7DE8ACE00804A324801
            453348E5C5313263902A56ED3D3F9B6CB249740625B3E4924BA66FBFFD363A03
            00A883DADF1DBD2B12006218A480A219A4F2E218993148156BC68C19A97DFBF6
            D119944CB366CDD2F7DF7F1F9D0100D441ED0761D3A64D8BCE00804A32480145
            3348E5C5313263902AD69B6FBE9936DC70C3E80C4AC8FF5501A09CB6DC72CB34
            75EAD4E80C00A8248314503483545E1C233306A962CD9A352BB56DDB363A8312
            FAEEBBEF52F3E6CDA3330080826DB5D556E985175E88CE00804A324801453348
            E5C5313263902AD67BEFBD97D65D77DDE80C4AE8DFFFFE776AD1A24574060050
            B06DB7DD363DFBECB3D1190050490629A06806A9BC3846660C52C5FAF0C30FD3
            5A6BAD159D41092D58B020B56AD52A3A03002858972E5DD2C48913A33300A092
            0C5240D10C5279718CCC18A48A357BF6ECB4DA6AAB45675042F3E6CD4BAD5BB7
            8ECE00000AB6E38E3BA6279F7C323A03002AC9200514CD209517C7C88C41AA58
            73E6CC496DDAB489CEA084BEF8E28BB4DC72CB4567000005DB79E79DD3840913
            A23300A0920C5240D10C5279718CCC18A48AF5F9E79FA715575C313A83129A3B
            77AEDF5B005042BBEEBA6B1A3F7E7C7406005492410A289A412A2F8E91198354
            B1BEFAEA2BDF62A12E3EF9E413DFBE038012DA638F3DD2A38F3E1A9D01009564
            90028A6690CA8B6364C62055ACF9F3E77BCF0F75F1D1471FA5D5575F3D3A0300
            28588F1E3DD2B871E3A23300A0923A76EC98A64E9D1A9D019488412A2F8E9119
            8354B1162E5C985AB56A159D4109BDF5D65BA96DDBB6D1190040C1F6D9679F34
            76ECD8E80C00A824DF90028A6690CA8B6364C62055AC458B16A5162D5A446750
            42D3A64D4B9B6EBA6974060050B07DF7DD37DD7FFFFDD1190050490629A06806
            A9BC3846660C52C5FAE1871F52F3E6CDA33328A1C99327A76DB6D9263A030028
            58CF9E3DD3983163A23300A0920C5240D10C5279718CCC18A48AE7BF39D4C384
            091352D7AE5DA333008082F5EEDD3B8D1A352A3A03002AC93BA480A219A4F2E2
            1899314815AF75EBD669FEFCF9D119944CED65E77BEEB96774060050B0A38E3A
            2A8D1831223A03002AC937A480A219A4F2E218993148156F955556499F7EFA69
            740625337AF4E88647FA0000E572C20927A4E1C387476700402519A480A219A4
            F2E218993148156FDD75D74DEFBDF75E74062573DB6DB7A5C30E3B2C3A030028
            58FFFEFDD3902143A23300A0920C5240D10C5279718CCC18A48AD7A14387F4FA
            EBAF47675032D75F7F7DFAED6F7F1B9D0100146CE0C081E9C20B2F8CCE00804A
            324801453348E5C5313263902A5EA74E9DD2942953A23328992BAEB8229D7AEA
            A9D1190040C12EB9E49274F6D967476700402519A480A219A4F2E21899314815
            6F871D76484F3DF55474062573F1C517FB61150094D035D75C934E3EF9E4E80C
            00A8A48E1D3BA6A953A7466700256290CA8B6364C62055BCDD77DF3DFDE31FFF
            88CEA0647EFFFBDF377C821A0028971B6EB8211D77DC71D119005049BE210514
            CD209517C7C88C41AA78BFFEF5AFD3DFFFFEF7E80C4AA6F6FEA8DA7BA4008072
            B9E38E3BD261871D169D0100956490028A6690CA8B6364C62055BCDEBD7BA751
            A34645675032BD7AF54A77DD755774060050B03163C6A49E3D7B466700402519
            A480A219A4F2E21899314815EFE8A38F4EB7DC724B740625D3BD7BF7F4D0430F
            4567000005ABFDF9BED75E7B456700402519A480A219A4F2E21899314815EFC4
            134F4CD75E7B6D740625D3B973E73471E2C4E80C00A060FFFAD7BFD24E3BED14
            9D0100956490028A6690CA8B6364C62055BC33CE38235D7EF9E5D119944C870E
            1DD2F4E9D3A3330080823DFBECB369DB6DB78DCE00804A324801453348E5C531
            3263902ADE79E79D972EB8E082E80C4A66F5D5574F1F7DF45174060050B0575E
            79256DB6D966D1190050490629A06806A9BC3846660C52C5BBF4D24BD359679D
            159D41C92CBDF4D269FEFCF9D1190040C166CD9A95DAB66D1B9D010095D4B163
            C73475EAD4E80CA0440C5279718CCC18A48A77FDF5D7A7BE7DFB46675042DF7F
            FF7D6AD6AC5974060050A0B973E7A695575E393A03002AC937A480A219A4F2E2
            18993148156FD4A851A977EFDED11994D0279F7C92DAB469139D010014E8871F
            7E48CD9B378FCE00804A324801453348E5C5313263902ADE238F3C92BA77EF1E
            9D4109CD9C39336DB8E186D1190040C17EF6B39FA579F3E645670040E578641F
            503483545E1C233306A9E24D9A34296DB7DD76D11994D0134F3C9176D86187E8
            0C00A0606BAFBD76FAE0830FA23300A0727C430A289A412A2F8E91198354F15E
            7FFDF5D4A14387E80C4A68F4E8D1A967CF9ED1190040C136DB6CB3F4CA2BAF44
            670040E518A480A219A4F2E21899314815EF7FFEE77FD2EAABAF1E9D41095D7B
            EDB5E9F8E38F8FCE00000A56FB06F4534F3D159D0100956390028A6690CA8B63
            64C62055BC850B17A656AD5A4567504203070E4CE79F7F7E74060050B07DF6D9
            278D1D3B363A03002AC7200514CD209517C7C88C41AA3E9A376F9E7EF8E187E8
            0C4AE677BFFB5DBAEEBAEBA2330080821D76D861E98E3BEE88CE0080CA314801
            453348E5C531326390AA8FD5565B2DCD9E3D3B3A8392D96FBFFDD2983163A233
            0080829D74D24969D8B061D1190050390629A06806A9BC3846660C52F5D1BE7D
            FB3463C68CE80C4AA64B972EE9E9A79F8ECE00000A3660C0803478F0E0E80C00
            A81C8314503483545E1C233306A9FAE8DCB9739A3C7972740625D3AE5DBBF4C6
            1B6F44670000051B326448EADFBF7F740600548E410A289A412A2F8E91198354
            7D74EFDE3D3DF2C823D11994CCB2CB2E9BBEFAEAABE80C00A06037DD74533AF6
            D863A33300A0720C5240D10C5279718CCC18A4EAA357AF5EE9EEBBEF8ECEA084
            162C58905AB56A159D010014A8F68EC89E3D7B46670040E574ECD8314D9D3A35
            3A03281183545E1C233306A9FAE8DBB76FBAFEFAEBA33328A1993367A60D37DC
            303A030028D03FFFF9CFB4CB2EBB44670040E518A480A219A4F2E218993148D5
            C7C08103D385175E189D4109FDE31FFF48BBEEBA6B74060050A069D3A6353C32
            0800685C1ED90714CD209517C7C88C41AA3E860D1B964E3AE9A4E80C4AE8E69B
            6F4E471D755474060050A0D9B367A7D5565B2D3A03002AC7200514CD209517C7
            C88C41AA3EEEB9E79EF49BDFFC263A83121A3468503AEFBCF3A233008002D5FE
            4ADEBC79F3E4AFE600D0B80C5240D10C5279718CCC18A4EAE389279E485DBB76
            8DCEA0848E39E69874E38D3746670000055B75D555D3279F7C129D0100956290
            028A6690CA8B6364C620551F3366CC48EDDBB78FCEA08476DB6DB7F4E8A38F46
            67000005ABFD40ACF62E2900A0F118A480A219A4F2E218993148D5C7175F7C91
            56586185E80C4A68E38D374EAFBFFE7A74060050B0DA874E1E7BECB1E80C00A8
            148314503483545E1C233306A9FA596AA9A5D2B7DF7E1B9D41C92CBDF4D269FE
            FCF9D1190040C10E3DF4D03472E4C8E80C00A8148314503483545E1C233306A9
            FA59679D75D2FBEFBF1F9D4109CD993327ADB4D24AD119004081FAF5EB97860E
            1D1A9D0100956290028A6690CA8B6364C620553F5B6FBD757AFEF9E7A33328A1
            175F7C316DB1C516D119004081FEF4A73FA5DFFFFEF7D1190050291D3B764C53
            A74E8DCE004AC4209517C7C88C41AA7E7AF4E891C68D1B179D4109DD73CF3DE9
            80030E88CE00000A3462C48874D4514745670040A5F88614503483545E1C2333
            06A9FA39FAE8A3D32DB7DC129D41095D72C9253E410D0025F3D0430FA5BDF6DA
            2B3A03002AC5200514CD209517C7C88C41AA7ECE3EFBEC86E1008AD6A74F9FF4
            97BFFC253A030028D094295352A74E9DA23300A0520C5240D10C5279718CCC18
            A4EAE7CA2BAF4CA79D765A740625D4AD5BB7347EFCF8E80C00A0401F7EF8615A
            6BADB5A23300A0520C5240D10C5279718CCC18A4EA67D4A851A977EFDED11994
            D07AEBAD9766CD9A159D010014CCBF5D01A07175ECD8314D9D3A353A03281183
            545E1C233306A9FA79E2892752D7AE5DA33328A1DA9F6BDF7EFB6D5A628925A2
            53008002ADBAEAAAE9934F3E89CE0080CAF00D29A06806A9BC3846660C52F553
            FB064BDBB66DA33328A9193366A48D36DA283A030028D0565B6D955E78E185E8
            0C00A80C8314503483545E1C233306A9FAF9EEBBEF528B162D92FF89A98771E3
            C6A53DF7DC333A030028D0FEFBEF9FEEBBEFBEE80C00A80C8314503483545E1C
            233306A9FA5A638D35D2C71F7F1C9D41095D73CD35E9C4134F8CCE00000A74CA
            29A7A4ABAFBE3A3A03002AC3200514CD209517C7C88C41AABE3A77EE9C264F9E
            1C9D41099D7AEAA9E98A2BAE88CE00000A3464C890D4BF7FFFE80C00A88C8E1D
            3BA6A953A7466700256290CA8B6364C620555F071C7040BAF7DE7BA33328A13D
            F6D8233DFCF0C3D119004081EEBEFBEED4AB57AFE80C00A80CDF90028A6690CA
            8B6364C620555FA79D765ABAF2CA2BA33328A1B5D65A2BBDFFFEFBD119004081
            9E79E699B4FDF6DB476700406518A480A219A4F2E218993148D5D7D0A14353BF
            7EFDA23328A979F3E6A5D6AD5B4767000005A97DD8649D75D689CE0080CA3048
            01453348E5C531326390AAAF7BEEB927FDE637BF89CEA0A4264D9A94B6DD76DB
            E80C00A020B5BF9A376FDE3CF92B3A00340E8314503483545E1C233306A9FA9A
            3C7972EADCB97374062575D34D37A5A38F3E3A3A03002850ED1B521ECB0B008D
            C3200514CD209517C7C88C41AABE3EFAE8A3B4E69A6B46675052B5C7415E7EF9
            E5D1190040816AEF90AABD4B0A00A83F8314503483545E1C233306A9FAAAFDCF
            DBA2458BF4DD77DF45A75042DDBB774F0F3DF45074060050A05EBD7AA5BBEFBE
            3B3A03002AC1200514CD209517C7C88C41AAFED65B6FBDF4EEBBEF46675042B5
            47FAF8BD0500E572C61967F806340034128314503483545E1C233306A9FAEBDA
            B56B7AE28927A23328A9AFBFFE3A2DB3CC32D119004041AEB9E69A74F2C92747
            6700402574ECD8314D9D3A353A03281183545E1C233306A9FA3BEAA8A3D28811
            23A23328A9679F7D366DBDF5D6D1190040411E7CF0C1B4F7DE7B476700402518
            A480A219A4F2E218993148D5DF85175E98060E1C189D4149FDF9CF7F4EC71D77
            5C7406005090D75F7F3D75E8D0213A03002AC123FB80A219A4F2E218993148D5
            DFA851A352EFDEBDA33328A9DFFEF6B7E9FAEBAF8FCE00000AF2FDF7DFA72596
            58223A03002AC1200514CD209517C7C88C41AAFE9E7FFE798F54A36E6ABFB76A
            8FED0300CA63FDF5D74FEFBCF34E740600949E410A289A412A2F8E91198354FD
            7DF5D55769B9E5968BCEA0A4965C72C9B470E1C2D4AC59B3E81400A020BBEDB6
            5B7AECB1C7A23328A9DFFCE637E9EEBBEF8ECE0000282583545E1C233306A9C6
            B1F2CA2BA7B973E746675052B54F73D53ED505009443DFBE7D3D9297BA596FBD
            F5D2AC59B3A23300004AC9209517C7C88C41AA7174EEDC394D9E3C393A8392BA
            E5965BD291471E199D01001464C89021A97FFFFED11994D8ECD9B3D32AABAC12
            9D0100503A06A9BC3846660C528DE3D0430F4D23478E8CCEA0A44E3AE9A474F5
            D5574767000005B9FFFEFBD3BEFBEE1B9D41898D1D3B36F5E8D1233A0300A074
            0C5279718CCC18A41AC7A04183D2F9E79F1F9D41496DBFFDF6E9A9A79E8ACE00
            000AF2EAABAFA64D37DD343A83121B3870A07F9F0000D481412A2F8E91198354
            E3B8E38E3BD261871D169D41492DBDF4D269FEFCF9D119004041FEFDEF7FA796
            2D5B46675062DDBB774F0F3DF45074060040E918A4F2E218993148358EDAFBA3
            6AEF91827A993E7D7AEAD0A1437406005090B5D75E3B7DF0C107D11994D40A2B
            AC903EFBECB3E80C0080D23148E5C5313263906A1C73E6CC496DDAB489CEA0C4
            468C18918E38E288E80C00A0203BEFBC739A306142740625F6E69B6FA60D36D8
            203A0300A0540C5279718CCC18A41ACF72CB2D97BEFAEAABE80C4AAA6FDFBE69
            F8F0E1D119004041FAF4E9936EBCF1C6E80C4AECCE3BEF4CBD7BF78ECE000028
            1583545E1C233306A9C6B3CD36DBA4E79E7B2E3A8392EAD4A9537AFEF9E7A333
            008082FCE94F7F4ABFFFFDEFA33328B1D34E3B2D0D1D3A343A0300A0540C5279
            718CCC18A41A4FED716AB7DD765B740625D5AC59B3B470E1C2B4E4924B46A700
            0005183B766CDA679F7DA23328B12E5DBAA4A79F7E3A3A0300A0540C5279718C
            CC18A41ACFA5975E9ACE3AEBACE80C4AACF60385DA0F160080A6EFEDB7DFF67E
            1FEAAAF641A6DA079A6A1F6C0200A01806A9BC3846660C528DE781071E48BFFA
            D5AFA23328B1DA23576A8F5E0100CAA165CB96E9DFFFFE777406253665CA94B4
            E5965B466700009486412A2F8E91198354E379EBADB752BB76EDA23328B1830E
            3A288D1A352A3A030028C82F7EF18BF4E28B2F46675062D75F7F7DFAED6F7F1B
            9D0100501A06A9BC3846660C528DCBA75CA9A7F5D65B2FCD9A352B3A030028C8
            A1871E9A468E1C199D41891D7DF4D1E9A69B6E8ACE0000280D83545E1C233306
            A9C6557B1CC6D4A953A33328B1D9B367A7555659253A030028C0C5175F9CCE3D
            F7DCE80C4A6CD34D374DD3A64D8BCE0000280D83545E1C233306A9C6E553AED4
            DBDFFFFEF7B4CF3EFB4467000005B8FFFEFBD3BEFBEE1B9D41C97DFDF5D76999
            659689CE0000280583545E1C233306A9C6E553AED4DB19679C91FEF4A73F4567
            00000578E38D37D2461B6D149D41C94D98302175EDDA353A0300A0140C527971
            8CCC18A41AD7DFFEF6B7B4DF7EFB45675062DB6CB34D9A3C79727406005080EF
            BFFFBEE19B2BDE414A3D9D77DE7969D0A041D1190000A56090CA8B6364C620D5
            B866CE9C9936DE78E3E80C4AAC59B36669FEFCF9A965CB96D1290040013A76EC
            985E7EF9E5E80C4A6C871D76484F3CF144740600402918A4F2E218993148352E
            9F72A5313CF2C82369F7DD778FCE00000AD0BB77EF346AD4A8E80C4A6C892596
            48F3E6CDF3812600800218A4F2E21899314835BECD37DF3C4D9B362D3A8312AB
            BDA76CF0E0C1D1190040012EBCF0C23470E0C0E80C4AEED1471F4DBBEDB65B74
            060040936790CA8B6364C620D5F87CCA957AF3D81500288F3163C6A49E3D7B46
            675072679D7556FAE31FFF189D0100D0E419A4F2E21899314835BE8B2FBEB8E1
            1B2C504FDF7CF38DC7AE0040097807298D61DB6DB74D93264D8ACE000068F20C
            5279718CCC18A41ADFB871E3528F1E3DA23328B9091326A4AE5DBB4667000005
            A8BD8374C18205D1199458B366CDD2975F7E995AB76E1D9D0200D0A419A4F2E2
            1899314835BEFFF99FFF49ABAFBE7A74062577C10517A40103064467000005A8
            3D8EF7A9A79E8ACEA0E4C68E1DEB837300008BC9209517C7C88C412AC66AABAD
            9666CF9E1D9D418975EBD62D8D1F3F3E3A030028C0C9279F9CAEB9E69AE80C4A
            AE5FBF7EE9F2CB2F8FCE000068D20C5279718CCC18A462D43E79587B741FD4CB
            124B2C91BEFEFAEBB4D4524B45A700008B69C48811E9A8A38E8ACEA0E4B6D862
            8BF4E28B2F46670000346906A9BC3846660C5231FEF0873FA48B2EBA283A8392
            7BF0C107D35E7BED159D01002CA6975E7AA9612C807AAABD47EAD34F3F4D2BAE
            B862740A0040936590CA8B6364C6201563CC9831A967CF9ED119945CEDF13E57
            5D7555740600B0987EF8E187D4B265CBB468D1A2E8144AEEDE7BEF4DFBEFBF7F
            74060040936590CA8B6364C6201563D6AC59A96DDBB6D119945CFBF6EDD36BAF
            BD169D01001460ABADB64A2FBCF04274062577C20927A461C386456700003459
            06A9BC3846660C527156586185F4C5175F44675072EFBEFB6E5A679D75A23300
            80C574DC71C7A51B6EB8213A8392FBF9CF7F9E5E7DF5D5E80C008026CB209517
            C7C88C412A4EB76EDDD2E38F3F1E9D41C9D57E7075ECB1C7466700008BE9BAEB
            AE4BC71F7F7C740615F0F1C71FA7D5565B2D3A0300A0493248E5C5313263908A
            D3AF5FBF3474E8D0E80C4AEEC0030F4C7FFDEB5FA3330080C53469D2A4B4DD76
            DB4567500177DD7557EAD5AB5774060040936490CA8B6364C62015E7CE3BEF4C
            871C7248740625577B34E4679F7D169D01002CA6850B17A656AD5A456750017D
            FAF4497FF9CB5FA23300009A2483545E1C233306A938AFBDF65AC333DAA1DE26
            4F9E9CB6D9669BE80C0060316DB6D966E995575E89CEA0E4D65C73CDF4C1071F
            44670000344906A9BC3846660C52B16A9F72AD7DDA15EAE9BCF3CE4B83060D8A
            CE000016D3E1871F9E6EBFFDF6E80C2AE0F9E79F4F9D3A758ACE000068720C52
            79718CCC18A462EDB8E38EE9C9279F8CCEA0E4B6DA6AABF4DC73CF456700008B
            E99A6BAE49279F7C727406153060C08074C1051744670000343906A9BC384666
            0C52B1CE3CF3CC74D96597456750019F7CF2496AD3A64D740600B0186A1F30F1
            185E1AC3E69B6F9E5E7AE9A5E80C008026C7209517C7C88C412AD6BDF7DE9B0E
            38E080E80C2AE0965B6E49471E7964740600B018162D5A9496596699865FA1DE
            3EFCF0C3B4C61A6B44670000342906A9BC3846660C52B16ADF5A5975D555A333
            A880DAF079CF3DF7446700008BA94B972E69E2C489D11954C055575DE5119100
            003F92412A2F8E91198354BCB5D75E3B7DF0C107D119945CEDD3D45F7EF9656A
            DEBC79740A00B0184E3FFDF474C5155744675001DDBA754BE3C78F8FCE000068
            520C5279718CCC18A4E21D78E08169F4E8D1D11954C0E38F3F9E76DA69A7E80C
            006031FCF5AF7F4D071D745074061550FB20D3DCB973D372CB2D179D0200D064
            18A4F2E218993148C5BBFCF2CBD319679C119D4105F4EFDF3F5D76D965D11900
            C06278F7DD77D37AEBAD179D41458C1C39321D7CF0C1D11900004D86412A2F8E
            91198354BCA79E7A2AEDB0C30ED1195440870E1DD2F4E9D3A3330080C5547B07
            69ED5DA4506FB56FE38D1A352A3A0300A0C93048E5C5313263908AF7CD37DFA4
            A5975E3A3A838A78FBEDB7D3FAEBAF1F9D01002C86FDF7DF3FDD77DF7DD11954
            C0CF7EF6B386F7900200F0DF3148E5C531326390CA43A74E9DD2942953A233A8
            80DA2322FBF5EB179D01002C864B2EB9249D7DF6D9D11954C4238F3C9276DF7D
            F7E80C008026C1209517C7C88C412A0F279C70421A3E7C78740615B0DD76DBA5
            679E79263A0300580C13264C483BEFBC7374061551FBB7CAB061C3A23300009A
            0483545E1C233306A93CDC7EFBEDE9F0C30F8FCEA0223EFAE8A3B4FAEAAB4767
            00003F51ED91CFAD5BB74E3FFCF043740A15B0C61A6BA40F3FFC303A0300A049
            3048E5C531326390CAC3CC9933D3C61B6F1C9D41455C73CD35E9C4134F8CCE00
            001643C78E1DD3CB2FBF1C9D4145D41E2FBEE5965B4667000064CF209517C7C8
            8C412A1F6DDAB44973E6CC89CEA00276DA69A7F4F8E38F476700008BE1F8E38F
            4FD75D775D74061571FEF9E7A78103074667000064CF209517C7C88C412A1FFB
            EFBF7FBAEFBEFBA233A8884F3FFD34ADBCF2CAD11900C04F74D75D77A5830F3E
            383A838AD8628B2DD28B2FBE189D0100903D83545E1C233306A97C5C79E595E9
            B4D34E8BCEA022FEF297BFA43E7DFA446700003F51ED9D906BAEB966740615F2
            C61B6FA476EDDA4567000064CD209517C7C88C412A1FB5E7B277EAD4293A838A
            D8638F3DD2C30F3F1C9D01002C860D36D820BDFDF6DBD11954C4B9E79E9B060F
            1E1C9D0100903583545E1C233306A97CFCF0C30F69F9E5974FF3E6CD8B4EA102
            9A376F9E3EFBECB3F4B39FFD2C3A0500F8898E3CF2C874EBADB7466750116BAF
            BD767AEFBDF7A2330000B26690CA8B6364C62095973DF7DCD3B756683437DD74
            533AFAE8A3A33300809FE8E69B6F4EC71C734C740615F2F4D34FA72E5DBA4467
            000064CB209517C7C88C412A2F7FFCE31FD339E79C139D414574EBD62D8D1F3F
            3E3A0300F889DE7CF3CDB4E1861B46675021C71F7F7CBAF6DA6BA3330000B265
            90CA8B6364C6209597DA270E7FF9CB5F46675011B53F1F3FFEF8E3B4EAAAAB46
            A700003FD19A6BAE993EFAE8A3E80C2A62851556489F7EFA69C3E39F0100F8FF
            3348E5C531326390CACB77DF7D97965D76D9B470E1C2E8142AE2B2CB2E4BFDFB
            F78FCE00007EA25EBD7AA5BBEFBE3B3A830A193B766CEAD1A34774060040960C
            5279718CCC18A4F2B3F3CE3BA7091326446750115B6CB1457AF1C517A3330080
            9F68F8F0E1E984134E88CEA0427AF7EE9DEEBCF3CEE80C00802C19A4F2E21899
            3148E5E7BCF3CE4B175C7041740615F2CA2BAFA44D36D9243A0300F8096A7F8E
            6FB6D966D1195448AB56ADD2DCB9731B7E0500E0FF6690CA8B6364C620959FF1
            E3C7A75D77DD353A830A39E79C73D245175D149D0100FC442BAFBC72C340008D
            E58E3BEE48871C724874060040760C5279718CCC18A4F2537B7F54ED3D52B5F7
            494163587BEDB5D37BEFBD179D0100FC44FBEEBB6FBAFFFEFBA333A8903DF7DC
            338D1B372E3A0300203B06A9BC3846660C5279DA7EFBEDD333CF3C139D41853C
            F5D4530DBFEF0080A6E78A2BAE48A79F7E7A740615F3C9279FA4366DDA446700
            0064C5209517C7C88C412A4F03060C4883070F8ECEA0427EFBDBDFA6EBAFBF3E
            3A0300F8095E7AE9A5B4C5165B44675031C3860D4B279C704274060040560C52
            79718CCC18A4F2F4AF7FFD2BEDB4D34ED11954C832CB2C93E6CC99935AB66C19
            9D0200FC04ABAEBA6AC33756A0B174EEDC394D9C38313A0300202B06A9BC3846
            660C5279AABD3F6AF9E5974FF3E7CF8F4EA142BC9C1A009AAEDA9FE177DE7967
            740615537B0F69ED7DA40000FC1F06A9BC3846660C52F9EAD1A3871705D3A876
            D96597F4D8638F456700003FC1881123D251471D159D41C55C70C1050D8F1B07
            00E0FF3048E5C531326390CAD755575D954E3DF5D4E80C2AA4F6E7E5071F7C90
            D658638DE81400E047AA3DAEAFF6D83E684CEBAEBB6E9A356B56F273170080FF
            C3209517C7C88C412A5FD3A74F4F9B6CB2497406153368D0A074DE79E7456700
            003F41EDEF8EB5BF4342637AF4D147D36EBBED169D0100900583545E1C233306
            A9BC7939358DADF6EDA8DAB7A4FCD909004D4FEDDBF5B56FD94363EAD9B3671A
            3D7A7474060040160C5279718CCC18A4F276E49147A65B6FBD353A838A193F7E
            7CEAD6AD5B740600F0233DF8E08369EFBDF78ECEA0629A356B9666CF9E9D565E
            79E5E81400807006A9BC3846660C52791B3972643AF4D043A333A898DAEFB9DB
            6FBF3D3A0300F891E6CF9F9F965F7EF9F4DD77DF45A75031175D74513AE79C73
            A2330000C219A4F2E218993148E56DCE9C39A94D9B36D11954D0175F7C91965B
            6EB9E80C00E047DA69A79DD2BFFEF5AFE80C2A66EDB5D74EEFBDF75E74060040
            3883545E1C233306A9FC75ECD831BDFCF2CBD11954CCB061C3D209279C109D01
            00FC4883070F4E03060C88CEA082C68D1B97F6DC73CFE80C00805006A9BC3846
            660C52F9EBDFBF7F1A326448740615B3D9669B194201A0099A3C7972EADCB973
            740615F4EB5FFF3AFDED6F7F8BCE0000086590CA8B6364C62095BF471F7D34ED
            B1C71ED11954D0D34F3F9DBA74E9129D0100FC08B5BFDEAFB8E28A0D8FDF85C6
            D4AC59B3F4C1071FA4D5575F3D3A0500208C412A2F8E91198354FEBEFDF6DBB4
            C20A2BA4050B1644A75031871D7658BAEDB6DBA23300801FA957AF5EE9EEBBEF
            8ECEA082CE3FFFFC3470E0C0E80C00803006A9BC3846660C524DC3BEFBEE9BEE
            BFFFFEE80C2A66A9A5964AB367CF4ECB2DB75C740A00F0238C1C39321D7AE8A1
            D1195450EDDB51B56F49D5BE2D0500504506A9BC3846660C524DC38D37DE98FA
            F4E9139D41055D71C515E9D4534F8DCE00007E842FBFFCB2E11BF6FEAA4F8407
            1E7820EDBDF7DED1190000210C5279718CCC18A49A863973E6A4366DDA446750
            411B6DB4519A316346740600F023EDB8E38EE9C9279F8CCEA0827AF4E891C68E
            1D1B9D010010C2209517C7C88C41AAE9D8669B6DD273CF3D179D41054D983021
            75EDDA353A0300F8112EBBECB274E6996746675041B5C7F5D51EDB577B7C1F00
            40D518A4F2E218993148351D83070F4E03060C88CEA0827AF7EE9DEEBCF3CEE8
            0C00E047A87DC3B97DFBF6D11954D4C08103D3F9E79F1F9D0100D0E80C527971
            8CCC18A49A8EA953A7A62DB7DC323A830A5A6289251A3EE5BAEAAAAB46A70000
            3F42DBB66DD3AC59B3A233A8A0DAB7A36A7F7FAC7D5B0A00A04A0C5279718CCC
            18A49A96B5D75EBBE11F76D0D8FEF0873FA40B2FBC303A0300F811FAF5EB9786
            0E1D1A9D41458D1E3D3AF5ECD9333A0300A05119A4F2E218993148352DC71F7F
            7CBAEEBAEBA233A8A015575C317DF4D14769A9A5968A4E0100FE4B8F3FFE78EA
            D6AD5B740615B5EDB6DBA649932645670000342A83545E1C233306A9A6E5A187
            1E4A7BEDB557740615F5E73FFF391D77DC71D11900C07FE9FBEFBF4F2BADB452
            FAF2CB2FA353A8A8A79F7E3A75E9D2253A0300A0D118A4F2E218993148352DDF
            7EFB6D5A618515D282050BA253A8A00E1D3AA4E9D3A7476700003F42EFDEBDD3
            A851A3A233A8A8FDF6DB2F8D1933263A0300A0D118A4F2E218993148353DB57F
            D4FDED6F7F8BCEA0A21E7EF8E1B4C71E7B44670000FFA53BEFBC331D72C821D1
            195454B366CDD21B6FBC91DAB66D1B9D0200D0280C5279718CCC18A49A9E9B6F
            BE391D73CC31D1195454F7EEDD1B1E1D0900340DB5C7F5D51EDB577B7C1F44A8
            BD07F7DA6BAF8DCE0000681406A9BC3846660C524DCFDCB973539B366D92D311
            A1F667EAABAFBEDAF0F83E00A069D865975DD23FFFF9CFE80C2A6AE9A5974EEF
            BFFF7E5A71C515A3530000EACE209517C7C88C41AA69EAD6AD5B7AFCF1C7A333
            A8A8DFFDEE77E9BAEBAE8BCE0000FE4BB53FB76BDF52812883070F4EE79E7B6E
            74060040DD19A4F2E218993148354DC3860D4B279D7452740615D5A2458BF4C1
            071F347C530F00C8DFC71F7F9CD65C734DDFB027CCAAABAE9ADE7DF7DDB4D452
            4B45A70000D495412A2F8E91198354D354FBA1C21A6BAC119D41859D79E699E9
            D24B2F8DCE0000FE4BBFFCE52FD3D34F3F1D9D4185DD78E38DDE850B00949E41
            2A2F8E91198354D3D5A54B973471E2C4E80C2A6AD965974D1F7EF861C3AF0040
            FEAEB8E28A74FAE9A747675061B57790D6DE45EA673400409919A4F2E2189931
            48355D43860C49FDFBF78FCEA0C22EBCF0C2F4873FFC213A0300F82FF8863D39
            78F0C107D35E7BED159D0100503706A9BC3846660C524DD73BEFBC93D65F7FFD
            E80C2A6C85155668F89654AB56ADA2530080FFC2D65B6F9D9E7FFEF9E80C2AAC
            5BB76E69FCF8F1D1190000756390CA8B6364C620D5B475EAD4294D9932253A83
            0ABBF2CA2BD329A79C129D0100FC172EB9E49274F6D967476750712FBEF862DA
            628B2DA2330000EAC2209517C7C88C41AA69BBF8E28BD3B9E79E1B9D4185D51E
            FDF3EEBBEFA6259658223A0500F80F7CC39E1C1C72C821E98E3BEE88CE0000A8
            0B83545E1C233306A9A66DC68C19A97DFBF6D11954DC4D37DD948E3EFAE8E80C
            00E0BFB0F9E69BA769D3A645675061B50F32CD9A352BADB5D65AD12900008533
            48E5C5313263906AFAFC5081681B6EB8619A397366740600F05FB8E0820BD279
            E79D179D41C59D76DA6969E8D0A1D1190000853348E5C5313263906AFA060D1A
            94CE3FFFFCE80C2AEEAEBBEE4ABD7AF58ACE0000FE83575F7D356DBAE9A6D119
            545C8B162D1A1E21B9FAEAAB47A7000014CA209517C7C88C41AAE9AB7D3BAAF6
            2D2988B4C9269B34FC5EF4672E00E4AFF6C8E7DAA39F21D249279D94AEBEFAEA
            E80C00804219A4F2E2189931489543ED91696FBEF9667406153766CC98B4DF7E
            FB45670000FFC1C08103D385175E189D41C5F9961400504606A9BC3846660C52
            E53078F0E03460C080E80C2AAEF62DA9575E79253A0300F80F6A1F64AA7DA009
            A2F5EDDB370D1F3E3C3A0300A03006A9BC3846660C52E5F0FEFBEFA775D65927
            3A03D2830F3E98F6DA6BAFE80C00E03FD86AABADD20B2FBC109D41C5D5BE25F5
            C61B6FF8B70C00501A06A9BC3846660C52E5B1DD76DBA549932645675071BFF8
            C52FFC700B009A80A14387A67EFDFA456740EAD3A74FFACB5FFE129D01005008
            83545E1C233306A9F218366C58C38B8121DA638F3D9676D96597E80C00E07F31
            7BF6EC8677F7F8E700D196586289F4D65B6FF9961400500A06A9BC3846660C52
            E5F1F9E79FA7366DDAA4EFBFFF3E3A858AEBDAB56B9A306142740600F01FECBA
            EBAE69FCF8F1D119908E3EFAE874D34D37456700002C3683545E1C233306A972
            A9BDBBE7A1871E8ACE80F4D4534FA5EDB7DF3E3A0300F85FDC72CB2D0D4300E4
            E0EDB7DF4EEBAFBF7E740600C0623148E5C5313263902A973BEEB8231D76D861
            D119D0F0A2F4E79E7B2E3A0300F85FCC9B372FADB4D24A69D1A245D129900E3F
            FCF074EBADB7466700002C1683545E1C233306A972F9E69B6F1A7EA850FB15A2
            DD77DF7D69DF7DF78DCE0000FE17071C7040BAF7DE7BA33320356BD62CCD9831
            23B56BD72E3A0500E0273348E5C5313263902A9FDEBD7BA751A346456740DA78
            E38DD3F4E9D31B7EB80000E469CC9831A967CF9ED119D0E090430E6978EA0300
            40536590CA8B6364C620553E63C78E4DFBECB34F740634B8E1861BD2B1C71E1B
            9D0100FC3FD41ED757FB867DEDF17D10CDB7A40080A6CE209517C7C88C41AA7C
            BEFFFEFBD4A64D9BF4F9E79F47A7405A75D555D33BEFBC935AB66C199D0200FC
            3FD43E3C72D34D3745674083830E3AC8131FF8FFD8BBF3709BCBF58FE3F7659B
            671942654C6448C61C33ED64B6C92CB409A70CC994593264A834E06438A22212
            0D44A4534E1D642A51A6D0802619B6F9B05DBFF37CCFE1974C7B586BDDF75ADF
            F7EBBAF6B59CFEFA9CEB367CD7F3F93ECF030040D8A290B2856118432115991E
            7DF451F9DBDFFEA61D03F08C1F3F5E060C18A01D0300005CC3C71F7F2CB56BD7
            D68E015CB275EB562959B2A4760C00008044A390B2856118432115993EFFFC73
            A954A992760CC093254B16F9FEFBEFBD4F0000608FFB4A70EBADB7CAC18307B5
            A3009E3A75EAC88A152BB463000000241A85942D0CC3180AA9C875E79D77CA8E
            1D3BB463009E7EFDFAC9C48913B5630000806B183162843CF5D453DA31804B96
            2F5F2E75EBD6D58E01000090281452B6300C6328A422975BFCE7983458912A55
            2AD9BD7BB7E4CF9F5F3B0A0000B88A7DFBF649A14285B4630097DC7EFBEDDE0B
            76515151DA51000000128C42CA1686610C8554E4FAEDB7DF2477EEDC72E1C205
            ED2880870BAA0100B0AD56AD5AF2C9279F68C7002E9932658A773F2E000040B8
            A090B2856118432115D91A356A244B972ED58E015CB276ED5AEE370300C0A857
            5F7D553A76ECA81D03B8245BB66CF2DD77DF49E6CC99B5A3000000240885942D
            0CC3180AA9C8B668D12269DEBCB9760CE0923265CAC8E6CD9BB563000080AB38
            73E68CE4C891434E9E3CA91D05B8A46FDFBEF2CC33CF68C700000048100A295B
            188631145291EDDCB973922B572E397AF4A87614E09237DE78435AB76EAD1D03
            00005C45E7CE9D65D6AC59DA31804BB88B14000084130A295B188631145291EF
            B1C71E93175F7C513B067049DEBC7965EFDEBD92264D1AED280000E04F3EFBEC
            33A956AD9A760CE032313131F2F6DB6F6BC7000000B8210A295B188631145291
            6FCB962D72F7DD776BC7002EF3F4D34FCBC08103B563000080AB2854A890ECDB
            B74F3B0670994F3EF9446AD4A8A11D030000E0BA28A46C6118C65048F983BBB7
            E7CB2FBFD48E015C923E7D7AEF82EA9C39736A470100007F3276EC5819326488
            760CE032C58B17976DDBB6096B3C0000C0320A295B1886311452FEE08EEC7347
            F7019674EDDA55A64D9BA61D030000FCC9C18307E5965B6ED18E015CC1DD6F16
            1B1BAB1D030000E09A28A46C6118C65048F9C3D1A3472557AE5C72EEDC39ED28
            C025EEDFE7CD9B3773A424000006D5AD5B5756AC58A11D03B88CDB5DEF76D9BB
            DDF6000000165148D9C2308CA190F28F162D5AC85B6FBDA51D03B84CE5CA95E5
            5FFFFA97760C0000F0270B172E94962D5B6AC700AEE08E931C3D7AB4760C0000
            80ABA290B28561184321E51F1F7DF4914447476BC700AE3077EE5C69DBB6AD76
            0C0000F007E7CF9F97DCB973CBEFBFFFAE1D05B84C9A346964EFDEBD92376F5E
            ED2800000057A090B28561184321E52F458B16955DBB7669C7002EE316BBF6EC
            D9C3D12B0000183374E8501933668C760CE00A6DDAB49179F3E669C7000000B8
            0285942D0CC3180A297F99346992F4E9D3473B067085810307CAD34F3FAD1D03
            0000FCC10F3FFC20050A1410BE32C0A27FFCE31F52AB562DED1800000097A190
            B28561184321E52F717171922B572E397BF6AC7614E032A952A5926FBEF9466E
            BFFD76ED280000E00F1A356A244B972ED58E015CA150A142B263C70EEF391200
            00C00A0A295B1886311452FE131B1B2BB367CFD68E015CA161C386B264C912ED
            180000E00F962D5B260D1A34D08E015CD5C8912365F8F0E1DA310000002EA190
            B28561184321E53FEBD7AF977BEEB9473B0670552B57AE94FBEEBB4F3B060000
            F81FF775C11DDBE78EEF03AC4993268DB7CBDEED96020000B08042CA1686610C
            85943F952C5952BEFEFA6BED18C0150A162C28DBB76FF716170000800DE3C68D
            9341830669C700AECADD23E5EE93020000B08042CA1686610C85943FCD9C3953
            BA74E9A21D03B8AAC18307CB983163B463000080FFF9FDF7DF2577EEDC72FEFC
            79ED28C055CD9B374FDAB469A31D0300008042CA1886610C85943F9D3A754AF2
            E4C923717171DA51802BA44C9952B66DDB26458B16D58E020000FEA76DDBB6F2
            C61B6F68C700AE2A478E1CB277EF5EC994299376140000E0731452B6300C6328
            A4FCAB57AF5EF2D24B2F69C700AEEA2F7FF98BAC59B3463B060000F89F4F3FFD
            54AA57AFAE1D03B8A6471E7944A64E9DAA1D030000F81C85942D0CC3180A29FF
            FAF6DB6FA5489122DA31806B9A366D9A74EDDA553B060000F81FF7ECE89E2101
            8BDCDACFFAF5EBA57CF9F2DA510000808F5148D9C2308CA190F2B79A356BCAEA
            D5ABB563005795356B566FD12B7BF6ECDA510000C07F4C9932457AF4E8A11D03
            B8A652A54AC9175F7C21515151DA510000804F5148D9C2308CA190F2B7B7DE7A
            4B5AB468A11D03B8A6D6AD5B735F05000046B87B4873E6CCE97D02563DF7DC73
            F2F8E38F6BC70000003E4521650BC3308642CADF2E5CB820050A14901F7FFC51
            3B0A704D1F7CF081DC7FFFFDDA310000C07FF4EEDD5B5E78E105ED18C035A54B
            974EF6EEDD2BB973E7D68E0200007C8842CA1686610C8514264C98204F3CF184
            760CE09AF2E7CF2FDBB76FF71617000080AE7DFBF649A14285B46300D7F5C003
            0F78A741000000841A85942D0CC3180A29C4C5C549AE5CB9E4ECD9B3DA51806B
            7AECB1C7E4F9E79FD78E010000FEA371E3C6B264C912ED18C0752D5BB64CEAD5
            ABA71D030000F80C85942D0CC3180A29387FFDEB5F65DAB469DA3180EBFAFCF3
            CFA562C58ADA310000F0BD8F3EFA48A2A3A3B56300D7952F5F3EF9E69B6F2443
            860CDA510000808F5048D9C2308CA19082E3BEA8952851423B06705D458A1491
            6DDBB649EAD4A9B5A30000E07BEED9D13D43029675EDDA9517EF000040485148
            D9C2308CA190C24575EAD4910F3FFC503B06705D43870E9551A34669C70000C0
            F766CC98E12DF603D6B91D7DB56BD7D68E0100007C8242CA1686610C85142E7A
            FFFDF7A561C386DA3180EB4A9932A57CF9E597ECE803004099BB7F346FDEBC72
            F8F061ED28C075B9DFA7DBB76F97CC99336B470100003E4021650BC33086420A
            17B9DF0AEE48B43D7BF6684701AEAB4C9932B261C306898A8AD28E020080AF0D
            1A3448C68D1BA71D03B8A1B66DDBCADCB973B5630000001FA090B28561184321
            853F7AE9A597A457AF5EDA31801B1A3F7EBC0C1830403B060000BEF6E38F3F4A
            810205E4C2850BDA51801B7AFBEDB7252626463B06000088701452B6300C6328
            A4F047A74E9D923C79F2485C5C9C7614E08676EDDAE5EDEA0300007A5AB76E2D
            0B162CD08E01DC50B66CD964C78E1D922B572EED28000020825148D9C2308CA1
            90C29F3DFEF8E3F2FCF3CF6BC7006EA85CB972B27EFD7A49912285761400007C
            6BCD9A3552A54A15ED184082D4AB574F962D5BA61D03000044300A295B188631
            1452F8B3BD7BF74AE1C285B5630009F2E4934FCA881123B4630000E06BE5CB97
            974D9B3669C7001264CE9C39D2A14307ED18000020425148D9C2308CA190C2D5
            B84B7FDF78E30DED18C00DB9DD516E9794DB2D05000074B8BB799A356BA61D03
            4890CC9933CBF6EDDB256FDEBCDA5100004004A290B2856118432185ABD9B66D
            9B942A554A3B0690206E479FFB3D9B366D5AED280000F892FB4A51AC5831EF7E
            47201CD4AE5D5B3EFAE823ED18000020025148D9C2308CA190C2B5346AD44896
            2E5DAA1D034890471E7944A64E9DAA1D030000DF7AF5D557A563C78EDA318004
            9B3C79B274EFDE5D3B06000088301452B6300C6328A4702D1B376E940A152A68
            C70012EC830F3E90FBEFBF5F3B060000BE74FEFC79C99F3FBF1C3C78503B0A90
            206E77BDDB65CFFDB90000209028A46C6118C65048E17A6AD6AC29AB57AFD68E
            012448CE9C3965E7CE9D922D5B36ED280000F8D2942953A4478F1EDA31800473
            2FE07DFEF9E7C2BA11000008140A295B1886311452B89E0F3FFC50EAD4A9A31D
            03483077A1FAA2458BB4630000E05BB973E7965F7EF9453B069060E3C78F9701
            030668C7000000118242CA1686610C85146EA454A952DE511640B8983973A674
            EEDC593B060000BEE416F7070E1CA81D0348B0942953CA860D1BE4EEBBEFD68E
            020000220085942D0CC3180A29DC88DB6DD2BC7973ED18408265C89041BEFAEA
            2B2954A890761400007CE7F8F1E372CB2DB7789F40B82850A080F7FC98295326
            ED28000020CC5148D9C2308CA190C28DB8DF22C58A15935DBB7669470112AC6C
            D9B2DE7D00EE8D570000105A43870E953163C668C70012A569D3A6B278F162ED
            18000020CC5148D9C2308CA1904242CC9933471E7AE821ED1840A2F4EFDF5F26
            4C98A01D030000DF3972E488B74BEAF4E9D3DA518044993163863CFCF0C3DA31
            00004018A390B285611843218584387FFEBCE4CF9F5F0E1E3CA81D054830F7EF
            FFC71F7F2C356AD4D08E020080EF3CF6D863F2E28B2F6AC70012256DDAB4DED1
            7D458A14D18E020000C21485942D0CC3180A2924D4942953A4478F1EDA318044
            C99B37AF6CDBB64DB265CBA61D0500005F3970E080DC7AEBADDA3180442B5EBC
            B86CDAB4C92BA7000000128B42CA1686610C851412EADFFFFEB777F4CAA14387
            B4A30089D2A8512379EFBDF7B4630000E03B5DBB76F58E4003C28DFBBD3B6DDA
            34ED180000200C5148D9C2308CA19042624C9A3449FAF4E9A31D034834B7C3EF
            D1471FD58E010080AF7CF7DD7752B06041ED1840922C5AB4489A356BA61D0300
            0084190A295B1886311452480C773175BE7CF9D82585B0932A552A59B76E9D94
            2D5B563B0A0000BE121B1B2BB367CFD68E01245AA64C99BCFBA40A1428A01D05
            000084110A295B188631145248ACF1E3C7CBC08103B5630089E6EE93FAE28B2F
            2457AE5CDA510000F08DDDBB774BB162C5E4C2850BDA518044BBFBEEBB65C386
            0D9232654AED280000204C5048D9C2308CA19042629D3871426EBBED36397AF4
            A8761420D12A55AA249F7DF69944454569470100C0371E7CF041993B77AE760C
            2049FAF7EF2F13264CD08E010000C20485942D0CC3180A2924C5E8D1A365D8B0
            61DA31802479ECB1C7E4F9E79FD78E0100806FB85D52458B1615BE7A205CAD5A
            B54AEEBDF75EED180000200C5048D9C2308CA1904252B85D5279F2E4F13E8170
            E4DED26EDBB6AD760C00007CA355AB56F2E69B6F6AC7009224478E1CB275EB56
            C99D3BB776140000601C85942D0CC3180A2924D5934F3E2923478ED48E012449
            BA74E9BCFB004A9428A11D0500005FD8B66D9B942A554A3B069064B56BD7968F
            3EFA483B060000308E42CA1686610C851492CADD21E5EE92629714C255BE7CF9
            E4ABAFBE922C59B268470100C0179A366D2AEFBCF38E760C20C9FAF5EB271327
            4ED48E0100000CA390B2856118432185E4183C78B03CFDF4D3DA3180248B8E8E
            96952B570ACF0A000004DFE6CD9BA55CB972DA318064993F7FBE7704250000C0
            D55048D9C2308CA19042721C3A74C8DB6572FAF469ED2840920D1D3A54468D1A
            A51D0300005F68D8B0A1BCFFFEFBDA3180244B93268DFCF39FFF948A152B6A47
            010000065148D9C2308CA19042723DF1C4133261C204ED1840B2BCF7DE7BD2A8
            5123ED18000044BC8D1B374A850A15B46300C9923B776E6FC75F9E3C79B4A300
            00006328A46C6118C6504821B90E1F3EECED923A79F2A4761420C93266CC285F
            7EF9A5142E5C583B0A0000112F262646DE7DF75DED1840B294295346D6AE5DEB
            ED98020000B88842CA1686610C851402C11D77367CF870ED1840B2142B564C36
            6DDA24E9D3A7D78E02004044DBB973A7142F5E5C2E5CB8A01D054816779794BB
            530A0000E0220A295B18863114520804B73BCAED2CF9E5975FB4A300C9D2AC59
            3359B46891760C0000225E6C6CACCC9E3D5B3B06906CE3C78F9701030668C700
            0000465048D9C2308CA19042A04C9932457AF4E8A11D0348B68913274ABF7EFD
            B463000010D1F6EFDF2F850A159273E7CE6947019225458A14B274E952A957AF
            9E76140000600085942D0CC3180A290452810205E4FBEFBFD78E0124DBC71F7F
            2C356BD6D48E01004044732F803CFBECB3DA318064CB9C39B36CD8B041EEB8E3
            0EED280000401985942D0CC3180A2904D21B6FBC216DDBB6D58E01245BB66CD9
            BCFBA40A162CA81D0500808875F8F061C9972F9F77FC3310EEDC8EBFCD9B374B
            962C59B4A3000000451452B6300C6328A4106877DD75976CDDBA553B06906CEE
            0D57F7A6AB7BE315000004C798316364E8D0A1DA318080B8F7DE7B65E5CA95DE
            317E0000C09F28A46C6118C6504821D03EF8E003CE4F47C4A855AB967CF8E187
            121515A51D0500808874E6CC19EFD8E75F7EF9453B0A1010BD7BF79649932669
            C70000004A28A46C6118C650482118AA55AB269F7DF699760C2020BA77EF2E93
            274FD68E010040C49A3A75AAF7EF2D102966CF9E2D1D3B76D48E010000145048
            D9C2308CA19042306CDCB8512A54A8A01D030898193366C8C30F3FAC1D030080
            88141F1F2F458A14917DFBF6694701022255AA54B26AD52AA95EBDBA76140000
            10621452B6300C6328A4102C0F3CF0802C5EBC583B061010EEC83E77749F3BC2
            0F000004DEFCF9F3A54D9B36DA31808071F7907EFEF9E752AC5831ED28000020
            8428A46C6118C65048215876EDDA25458B16D58E01044CA64C99BCDD7F77DC71
            87761400002252B972E564F3E6CDDA318080C9972F9FAC5FBF5E6EBEF966ED28
            0000204428A46C6118C6504821987AF4E82153A64CD18E01044CE1C28565DDBA
            759223470EED280000449CD5AB574BCD9A35B563000155BA7469F9D7BFFE2519
            3264D08E020000428042CA1686610C851482E9F0E1C3DE5B81274F9ED48E0204
            4CD9B265E5B3CF3E9374E9D26947010020E2346EDC58962C59A21D0308A8E8E8
            68F9E0830FBC63A001004064A390B2856118432185601B376E9C0C1A34483B06
            1050F5EBD797F7DE7B8F4505000002CC1DFB5CBC7871898F8FD78E020454C78E
            1D65F6ECD9DA31000040905148D9C2308CA19042B09D3973466EBFFD763970E0
            80761420A0585400002038BA77EF2E53A74ED58E0104DCC8912365F8F0E1DA31
            000040105148D9C2308CA1904228CC9D3B571E7CF041ED1840C08D1831429E7C
            F249ED180000441477EC73C18205252E2E4E3B0A1070F3E7CF9756AD5A69C700
            0000414221650BC33086420AA152AE5C39D9BC79B3760C20E0DC2E29B75B0A00
            0004CEF8F1E365E0C081DA3180804B952A952C5BB6CCBB570A0000441E0A295B
            18863114520895356BD648952A55B4630001E7EE9172F749B97BA50000406070
            EC332259860C1964EDDAB552AA5429ED28000020C028A46C6118C6504821949A
            356B266FBFFDB6760C20E0D2A64D2B9F7CF289DC73CF3DDA5100008818F3E6CD
            9376EDDA69C700822257AE5CB269D326B9F5D65BB5A300008000A290B2856118
            43218550DAB56B97142F5E5CE2E3E3B5A3000197356B56F9ECB3CFA4448912DA
            51000088181CFB8C4856AC5831F9FCF3CF2573E6CCDA51000040805048D9C230
            8CA19042A8F5EAD54B5E7AE925ED184050B8375D3FFDF453B9E38E3BB4A30000
            101138F61991AE7AF5EAB26AD52AEF6E29000010FE28A46C6118C6504821D40E
            1F3E2C050B1694B8B838ED284050E4CD9B57D6AD5B27B7DD769B761400002202
            C73E23D2C5C4C4C85B6FBDE5DD4D0A0000C21B85942D0CC3180A296898346992
            F4E9D3473B061034EE12F67FFDEB5FDE8E290000903C7BF7EE95C2850B6BC700
            82AA55AB56327FFE7CED180000209928A46C6118C650484183BB43AA64C992B2
            63C70EED2840D0B8BBA456AF5E2DD9B367D78E020040D81B3264888C1D3B563B
            061054EDDBB7973973E608EB580000842F0A295B1886311452D0E2768F54AD5A
            553B061054A54B97F6EE94CA94299376140000C2DAA953A7BC1DC83FFDF49376
            1420A8BA74E922D3A64DA3940200204C5148D9C2308CA19082A6962D5BCAC285
            0BB5630041E58AD7152B5648FAF4E9B5A3000010D6DC1D3B2D5AB4D08E0104DD
            238F3C2253A74ED58E010000928042CA1686610C851434B9375CDD9BAEEE8D57
            209255AF5EDD2BA5D2A64DAB1D050080B0E65EF4703BED8148D7A3470F79E9A5
            97B46300008044A290B28561184321056DEE2E0077270010E9A2A3A3E5FDF7DF
            97D4A9536B470100206CB93B48DD5DA4EE4E5220D2F5EBD74F264E9CA81D0300
            00240285942D0CC3180A29683B77EE9C142B564CF6EEDDAB1D0508BAFAF5EBCB
            BBEFBE2B2953A6D48E020040D8EADBB7AF3CF7DC73DA318090183E7CB88C1C39
            523B06000048200A295B1886311452B0E0A38F3EF2768F007E101313E3DD8111
            1515A51D050080B074FCF8712954A8901C3A74483B0A10126E9794DB2D050000
            ECA390B28561184321052B1A376E2C4B962CD18E018444AB56AD64DEBC799222
            450AED28000084A5D75E7B4D3A74E8A01D0308194A290000C20385942D0CC318
            0A2958F1E38F3F4A912245E4ECD9B3DA51809068DFBEBDCC993347784E010020
            692A56AC281B366CD08E0184CC4B2FBD243D7AF4D08E010000AE8342CA168661
            0C85142C71E7A38F1A354A3B0610329D3B77969933676AC70000202C7DF5D557
            52BA7469ED184048CD9831431E7EF861ED180000E01A28A46C6118C65048C192
            3367CEC81D77DCE1ED9602FC2236365666CD9AA51D030080B0D4B3674F993C79
            B2760C20A4A64D9B265DBB76D58E010000AE8242CA1686610C8514AC59BE7CB9
            D4AF5F5F3B061052AD5BB796D75F7F5DA2A2A2B4A3000010568E1E3DEA1DFB7C
            E8D021ED284048717C1F0000365148D9C2308CA1908245313131F2EEBBEF6AC7
            0042AA69D3A6F2E69B6F4ACA9429B5A300001056E6CE9D2B0F3EF8A0760C20E4
            264E9C28FDFAF5D38E010000FE8042CA1686610C85142C7247F6152D5A544E9F
            3EAD1D0508A9060D1AC8DB6FBF2DA952A5D28E02004058A95DBBB67CFCF1C7DA
            31809073F7F08E1C39523B060000F81F0A295B1886311452B0EA99679E91FEFD
            FB6BC70042EEBEFBEE93254B96489A3469B4A300001036F6EEDD2BC58A159373
            E7CE69470142CEED9272BBA50000803E0A295B1886311452B02A3E3E5ECA9429
            235BB76ED58E02845CCD9A3565D9B265922E5D3AED280000848D112346C8534F
            3DA51D0350D1A54B1799366D9AB0060600802E0A295B1886311452B06CDDBA75
            F297BFFC453B06A0A27AF5EA5E2995214306ED280000848DC2850B7BBBA5003F
            EADCB9B3CC9C39533B060000BE4621650BC33086420AD675EDDA5566CC98A11D
            035051AE5C3959B56A9564CD9A553B0A000061C1DD23E5EE9302FCAA75EBD6F2
            FAEBAF4B545494761400007C8942CA1686610C8514AC3B7AF4A8142952440E1D
            3AA41D055051BC78716F712D57AE5CDA510000080B6DDAB491F9F3E76BC700D4
            346DDA54DE7CF34D499932A5761400007C8742CA1686610C8514C2C1ABAFBE2A
            1D3B76D48E01A82958B0A07CF6D96792376F5EED28000098F7F3CF3FCB1D77DC
            21C78F1FD78E02A869D0A0812C5AB448D2A449A31D0500005FA190B285611843
            21857051A54A1559B3668D760C404DBE7CF9E4934F3EF1CA290000707D93274F
            969E3D7B6AC70054D5AC59D3BB93345DBA74DA510000F00D0A295B1886311452
            08173B77EE9452A54AC9B973E7B4A3006ADCB17DEEF83E778C1F0000B836F735
            A762C58AB271E346ED2880AACA952BCB8A152B2463C68CDA510000F0050A295B
            188631145208274F3EF9A48C1C39523B06A02A5BB66CF2E1871F4AB972E5B4A3
            000060DA575F7D25A54B97D68E01A82B5FBEBCB7532A67CE9CDA510000887814
            52B6300C6328A4104ECE9F3FEF2D2A7CF3CD37DA510055E9D3A7F716156AD4A8
            A11D050000D3468C18214F3DF594760C405DFEFCF9BD9D52458B16D58E020040
            44A390B285611843218570F3E5975F4A850A15BC720AF0B354A952C9DCB973A5
            458B16DA510000308B179A80FF97254B1679F7DD7779A909008020A290B28561
            1843218570C4D17DC07FB9679C8913274ADFBE7DB5A3000060162F3401FF8F97
            9A0000082E0A295B188631145208476E31C12D2AB8C50500228F3CF2884C9932
            4578E60100E0EADCCB4CEEA52600FF7DA969F4E8D13278F060ED280000441C0A
            295B18863114520857EED81577FC0A6FBA02FFD5A4491359B870A1F7D62B0000
            B81C2F340157EAD4A9934C9F3E5DA2A2A2B4A30000103128A46C6118C6504821
            9CB90BAADD45D500FECBDD07B064C912C994299376140000CCE18526E04AD1D1
            D1B278F1629E1F010008100A295B1886311452087777DF7DB76CD9B2453B0660
            46A952A5E4830F3E90BC79F36A470100C09C51A346C9F0E1C3B56300A6B8E7C7
            65CB96C9ADB7DEAA1D050080B04721650BC33086420AE18E375D812BE5CA95CB
            2BA5CA9429A31D0500005338BA0FB8BADCB973CBF2E5CBBD17FE000040D25148
            D9C2308CA19042247017F20E1B364C3B06604ADAB46965FEFCF9DEDD520000E0
            FFF142137075E9D3A797B7DE7A4BEAD5ABA71D050080B04521650BC33086420A
            91203E3E5ECA972FCF9BAEC09FB8672077D7DAD0A143B5A30000600A2F340157
            9722450A9931638674EAD4493B0A0000618942CA1686610C851422C5F6EDDBA5
            78F1E2DA310093DAB66D2B73E7CED58E01008029152B56940D1B3668C7004CEA
            D3A78F3CFBECB3DA310000083B1452B6300C6328A41049DC17A67EFDFA69C700
            4C72F765B87B01B267CFAE1D05000013F6ECD923254B96943367CE6847014CAA
            5DBBB62C5AB448B266CDAA1D050080B04121650BC33086420A91A666CD9AB27A
            F56AED188049B7DD769B2C5BB6CC5B7C0300002253A64C911E3D7A68C700CC2A
            58B0A02C59B2444A9428A11D050080B04021650BC33086420A91E6871F7EF08E
            EE3B79F2A47614C0A474E9D2C9EBAFBF2ECD9A35D38E02008009B56AD5924F3E
            F9443B066016CF8F0000241C85942D0CC3180A2944A2D9B3674B6C6CAC760CC0
            B4FEFDFBCBB871E3BC8BAB0100F0B39F7EFA498A152B26717171DA5100D3060F
            1E2CA3468DE2F9110080EBA090B28561184321854815131323EFBEFBAE760CC0
            34772FC09B6FBEC9BD520000DF9B376F9EB46BD74E3B06601EF74A0100707D14
            52B6300C6328A410A98E1C3922458B1695DF7EFB4D3B0A60DAADB7DE2A4B972E
            95D2A54B6B47010040152F340109933F7F7E79FFFDF7B9570A0080ABA090B285
            611843218548B662C50AA95BB7AE760CC0BC3469D2C88C1933A47DFBF6DA5100
            0050E35E68720BECEE083F00D7E7EE95723BED1B366CA81D0500005328A46C61
            18C6504821D275EDDAD55B68077063DDBB7797C993276BC7000040CDCA952BE5
            FEFBEFD78E01848D214386C8E8D1A3B5630000600685942D0CC3180A2944BA93
            274F4AF1E2C5E5871F7ED08E0284858A152B7AC715E5CE9D5B3B0A00002ADC0B
            1A53A74ED58E01840D57E2BADD52993367D68E0200803A0A295B1886311452F0
            83356BD648D5AA5585DFEE40C2E4CC9953162E5C28356AD4D08E020040C89D39
            73464A962C297BF6ECD18E02848DC2850B7BF74AB97B7C0100F0330A295B1886
            311452F00B7794C4D8B163B5630061C5FD9919346890760C0000426EC3860DDE
            AE61000997316346EFB8F4D6AD5B6B470100400D85942D0CC3180A29F8C5F9F3
            E7E59E7BEE91CD9B376B4701C24ABD7AF564C1820592295326ED28000084947B
            31C3BDD40420713A77EEECDD4B9A366D5AED280000841C85942D0CC3180A29F8
            C9DEBD7BE5AEBBEEF2EE95029070050B16F48E60B9F3CE3BB5A300001032EEAB
            52AD5AB564F5EAD5DA5180B0E38EEE73F79272841F00C06F28A46C6118C65048
            C16F66CF9E2DB1B1B1DA3180B0933E7D7A993973A6B469D3463B0A000021B37F
            FF7E2955AA941C3D7A543B0A10965E7EF965E9D6AD9B760C0000428642CA1686
            610C8514FCA865CB96B270E142ED1840587285AE3B82C515540000F8817B6E74
            CF8F0092262626465E7BED35EF8E290000221D85942D0CC3180A29F8515C5C9C
            942C59527EFCF147ED2840582A5CB8B02C5AB4484A972EAD1D050080907077E2
            CC9A354B3B0610B60A142820EFBCF30ECF8F0080884721650BC33086420A7EB5
            6EDD3AA952A58A5CB870413B0A1096D2A4492313274E949E3D7B6A47010020E8
            DC1DA4EE2E5277272980A4499D3AB58C1F3F5E7AF7EEAD1D050080A0A190B285
            61184321053F1B3A74A88C1933463B0610D61A3468E01DC1922D5B36ED280000
            04D5E6CD9BE59E7BEE91F3E7CF6B4701C25A9D3A7564FEFCF93C3F0200221285
            942D0CC3180A29F8995B4C708B0A6E710140D2E5C99347DE7CF34DA95AB5AA76
            14000082CAEDEE183870A0760C20ECB9E7C7C58B174BA54A95B4A30000105014
            52B6300C6328A4E077FBF6EDF3EE933A75EA94761420EC0D193244468F1EAD1D
            030080A0AA51A386FCF39FFFD48E014484A79E7A4A860D1BA61D03008080A190
            B285611843210588BCFAEAABD2B16347ED1840442853A68CCC9D3B57EEBCF34E
            ED28000004C5810307BC179A8E1E3DAA1D058808B56BD7F68E80CE9B37AF7614
            0000928D42CA1686610C8514F05FEDDBB797D75F7F5D3B061031264E9C28FDFA
            F5D38E010040502C5BB6CCBB4711406064C992455E78E1055E140400843D0A29
            5B1886311452C07FB923FBCA972F2FDBB76FD78E02448CCA952BCBBC79F3247F
            FEFCDA5100000838779794BB530A40E0D4AB574FE6CC99233973E6D48E020040
            925048D9C2308CA19002FEDFB7DF7EEB1D3776E2C409ED2840C4C89831A34C9A
            34491E7EF861ED28000004D4850B17E4DE7BEF954F3EF9443B0A10516EBAE926
            79E59557A471E3C6DA51000048340A295B1886311452C0E5962C59C2171F2008
            EAD6ADEB2D2CE4CE9D5B3B0A000001F3FBEFBF4B891225E4975F7ED18E02449C
            B66DDBCA942953246BD6ACDA51000048300A295B1886311452C095060C18E0DD
            7F0320B0B267CFEE2D2AB46AD54A3B0A000001B376ED5AA95EBDBA9C3F7F5E3B
            0A10716EBEF966EFAEDFE8E868ED280000240885942D0CC3180A29E04AEEF895
            AA55AB7A8B0B0002CFED4274BBA5DC712C00004482175E78417AF7EEAD1D0388
            585DBA74F18E81CE90218376140000AE8B42CA1686610C85147075EED895D2A5
            4B73FC0A1024EEA2EA993367724426002062B468D142DE7AEB2DED1840C4BAED
            B6DBE48D37DE902A55AA68470100E09A28A46C6118C6504801D7C6F12B40F071
            37000020529C3A75CA7BA1E9DB6FBFD58E02442CB7C6D7AB572F19376E9CA44D
            9B563B0E000057A090B28561184321055CDF73CF3D277DFBF6D58E0144347737
            803BC2AF5EBD7ADA5100004896EDDBB74BF9F2E5BD720A40F0DC7EFBED327FFE
            7C2957AE9C761400002E4321650BC33086420AB8B1E6CD9BCBA2458BB4630011
            AF7DFBF6DEDD00D9B367D78E02004092B963FBDCF17D0082AF4F9F3E326AD428
            499F3EBD761400003C1452B6300C6328A4801B3B71E284942D5B5676EFDEAD1D
            058878D9B26593A79F7E5ABA75EBA61D050080247BFCF1C7E5F9E79FD78E01F8
            C22DB7DC2293274F96989818ED280000504819C3308CA190021266C78E1D52A1
            4205AF9C02107CAE049E316386F7090040B8898F8F97AA55ABCABA75EBB4A300
            BE51BB766DF9FBDFFF2E050A14D08E0200F0310A295B188631145240C2BDFFFE
            FBD2B06143ED18806FA4489142BA74E9E25D5A9D356B56ED38000024CAAFBFFE
            2A65CA949183070F6A47017C236DDAB43278F06079E289272475EAD4DA710000
            3E4421650BC33086420A489C61C386C9E8D1A3B56300BE9223470EAF94EAD4A9
            93F05C070008279B376F964A952AC9B973E7B4A300BE52B87061993E7DBAB76B
            0A008050A290B2856118432105245EFDFAF565F9F2E5DA3100DF710B7AD3A64D
            93BBEEBA4B3B0A000009367BF66C898D8DD58E01F852EBD6AD65D2A449923B77
            6EED2800009FA090B285611843210524DEB163C7A45CB972B267CF1EED2880EF
            B863FCBA75EB2663C78EE5183F0040D8E8DEBDBB4C9D3A553B06E04B99326592
            A79E7A4A7AF6EC29515151DA710000118E42CA1686610C851490343B76ECF04A
            A953A74E6947017C297BF6EC5E29E5EE98E2590F00605D7C7CBC54AD5A55D6AD
            5BA71D05F0ADE2C58BCB2BAFBC22152B56D48E020088601452B6300C6328A480
            A45BBC78B13CF0C003DA31005F2B5BB6ACFCED6F7F6361010060DEAFBFFE2A65
            CA949183070F6A47017CCBAD11BA7B49C78F1FEFBDE0040040A05148D9C2308C
            A190029267E8D0A13266CC18ED1880EF3DF4D0433261C204C99933A776140000
            AE69FDFAF572CF3DF768C7007CEFA69B6E9211234648AF5EBDB4A30000220C85
            942D0CC3180A2920F9EEBFFF7E59B972A5760CC0F7DCFD006E61A16FDFBEDA51
            0000B8A659B36649E7CE9DB56300F88F42850AC933CF3C234D9B36D58E020088
            101452B6300C6328A480E43B76EC98779FD49E3D7BB4A300F88FC2850B7BC7B0
            70A42600C0AA6EDDBAC9F4E9D3B56300F89F2A55AAC8CB2FBF2C254B96D48E02
            0008731452B6300C6328A480C0F8E69B6FA452A54A72FCF871ED2800FEC72D2C
            3CFFFCF352BE7C79ED2800005CA1468D1AF2CF7FFE533B06803F888D8D95A79F
            7E5A6EBEF966ED280080304521650BC33086420A089CD5AB57CBBDF7DE2BF1F1
            F1DA5100FC41CB962DBD1D53050A14D08E0200C025478E1CF1EE93DABD7BB776
            14007F9021430619306080F4EFDF5FD2A54BA71D0700106628A46C6118C65048
            0181F5CA2BAF48A74E9DB46300F893D4A9534BCF9E3D65F8F0E192397366ED38
            000078BEFBEE3B295BB6AC574E01B0E5965B6E913163C648870E1D84B5450040
            425148D9C2308CA19002026FD0A041326EDC38ED1800AEE2A69B6E9221438648
            9F3E7DB4A30000E059BB76AD54AE5C593B06806B285DBAB4770C74CD9A35B5A3
            0000C20085942D0CC3180A2920F0DC1FAB162D5AC8A2458BB4A300B88682050B
            7AF703B8E3FC785604006873CF8DCD9B37D78E01E03A1A376E2CCF3DF79C142E
            5C583B0A00C0300A295B188631145240709C397346AA55AB261B376ED48E02E0
            3ACA952B27CF3EFBAC77B13C00009AC68E1DEBEDE20560DBA38F3E2A23478E94
            1C397268470100184421650BC33086420A089E43870E49850A15BCBB0100D8D6
            B0614399306182DC79E79DDA5100003ED6AE5D3B99376F9E760C003790214306
            E9DEBDBBF4EFDF9F620A0070190A295B18863114524070EDDEBD5BCA972F2F71
            7171DA5100DC4054549474EAD449468D1A2537DF7CB3761C00800F9D3B774EEE
            BBEF3E59BD7AB57614000940310500F8330A295B188631145240F0B90505B7B0
            E0161800D8972E5D3AE9D2A58B0C1C3850F2E4C9A31D0700E033EE45A64A952A
            C9F6EDDBB5A3004820574CB9A3FC060C18403105003E4721650BC33086420A08
            0D77F48A3B820540F8489D3AB574ECD851860E1D2AF9F2E5D38E0300F091FDFB
            F74B993265BC23A001840F8A29000085942D0CC3180A292074DCC5B74F3EF9A4
            760C0049D0BE7D7BEFA2F9A2458B6A470100F8C4A64D9BA46AD5AA72E6CC19ED
            280012C9EDB87747F93DF1C413145300E0331452B6300C6328A480D07AE8A187
            64CE9C39DA310024418A1429A459B366327CF8702955AA94761C00800F2C5BB6
            4C1A376E2CF1F1F1DA51002441FAF4E9BD1D53EE8EA95CB97269C70100840085
            942D0CC3180A2920F4EAD7AF2FCB972FD78E0120191A366CE8ED9872777C0000
            104CB366CD92CE9D3B6BC700900C69D3A6F58A29B7638A620A00221B85942D0C
            C3180A2920F44E9E3C29D5AA55932FBEF8423B0A8064AA5EBDBA0C1A3448EAD6
            ADAB1D050010C1860D1B26A3478FD68E0120995C31F5D7BFFED5DB3195376F5E
            ED38008020A090B2856118432105E8701754972F5F5EBEFFFE7BED280002C0FD
            791E3C78B0C4C4C408CF9E00806068DDBAB52C58B0403B06800048952A95F767
            7AE0C08152BC7871ED38008000A290B2856118432105E8F9F6DB6FA562C58A72
            E4C811ED280002C42D28B88585B66DDB4A545494761C0040043977EE9C77F4F3
            AA55ABB4A30008A03A75EA783BA6A2A3A3B5A30000028042CA1686610C8514A0
            6BCD9A3552A54A15ED180002ECB6DB6EF31616DC9D1FEE326B000002C11DFDEC
            9E1DB76CD9A21D054080952C5952060C1820EDDBB7D78E020048060A295B1886
            31145280BEB7DF7E5B9A376F2E172E5CD08E0220C0B265CB26DDBA75939E3D7B
            724F000020207EF9E5172957AE9C1C3870403B0A8020C8972F9FF4EEDD5BBA74
            E922193366D48E030048240A295B1886311452800DD3A74FF716AD014426774F
            40CB962DA56FDFBE52A64C19ED38008030B763C70EA95CB932473F03112C6BD6
            ACDE7744574EE5CE9D5B3B0E00208128A46C6118C650480176B8E319264E9CA8
            1D03409055AB564DFAF4E9234D9A34119E53010049B56EDD3AA951A386FCFBDF
            FFD68E02208852A74E2DEDDAB593279E78428A162DAA1D070070031452B6300C
            6328A4005B3A74E820AFBDF69A760C002150A85021E9D5AB9774ECD8D17B0316
            0080C472473F376BD64C3B06801069D0A081B7632A3A3A5A3B0A00E01A28A46C
            6118C6504801B6C4C7C74B4C4C8C2C5DBA543B0A8010499F3EBDB46EDD5A1E79
            E411295FBEBC761C004098993D7BB6C4C6C66AC7001042EEC5A64E9D3AC9430F
            3D24B7DC728B761C00C01F5048D9C2308CA19002EC71C7AED4AA554BD6AC59A3
            1D054088B942CA15536DDAB49174E9D269C701008489175E78C1DB3501C05F52
            A4482175EAD491CE9D3B7BC741BB7B4B0100BA28A46C6118C6504801361D3F7E
            DCBB6766CB962DDA5100287047F8B9A3FC5C39C55D01008084183264888C1D3B
            563B060025D9B36797F6EDDB4B972E5DA478F1E2DA7100C0B728A46C6118C650
            480176FDFEFBEF52A54A15D9B973A77614008A6AD6ACE91DC5D4A2450B764D01
            00AECBBDC8F0F2CB2F6BC700A0AC42850ADECB4D0F3EF8A064C992453B0E00F8
            0A85942D0CC3180A29C0B683070F4AA54A95E4C71F7FD48E024059A64C99A455
            AB565E3955B97265ED38000083DCD73BF702C3A2458BB4A30030C0BDCCD4AC59
            33EF483FF792136BA400107C1452B6300C6328A400FBF6EEDD2B152B56F4764C
            018073C71D7778975877E8D0818BAC010097397FFEBC3468D04056AE5CA91D05
            8021050B16944E9D3A792F37F1FC0800C14321650BC33086420A080F5F7DF595
            54AF5E5D8E1D3BA61D058031F7DF7FBFB7B8D0B87163499B36AD761C008001A7
            4F9F967BEFBD57D6AE5DAB1D058041B56AD592D6AD5B4BF3E6CDE5A69B6ED28E
            0300118542CA1686610C8514103ED6AC59E32D2C9C3973463B0A0083DC917E31
            3131D2A64D1BB9EFBEFB2465CA94DA9100008A8E1F3F2ED5AA55932D5BB66847
            016054AA54A9BCE746F7FCE89E233366CCA81D0900C21E85942D0CC3180A2920
            BCB8A357DC112CEE281600B896ECD9B37B6FBCBAC505B7BB92E76100F02777E4
            B3BB7770D7AE5DDA510018E7EE9B72DF35DDF3A3FB4C93268D762400084B1452
            B6300C6328A480F0F3CE3BEF780BCDF1F1F1DA51008401774740AB56ADBCC585
            F2E5CB6BC7010084D84F3FFD2455AA54917DFBF669470110263267CE2C4D9B36
            F59E1FDD291DECBC078084A390B285611843210584A7050B1648BB76ED28A500
            248ABBCCDA2D2E346BD6CC7B639EE76400F0871F7FFCD12BA5DC270024468E1C
            39A4458B165E3955B56A559E1F01E00628A46C6118C6504801E16BDEBC795E29
            0500499133674E69D4A891B7E3B25EBD7ADA71000041F6DD77DF79774AEDDFBF
            5F3B0A80307571E77DCB962DE59E7BEED18E0300265148D9C2308CA19002C2DB
            6BAFBD261D3B7614FE2803480E772C8BBB2BC0ED9C72E554860C19B423010082
            C01DDBE7764AB963FC0020395C39D5B87163898989915AB56A49AA54A9B42301
            80091452B6300C6328A480F03763C60CE9D6AD1BA5148080489B36AD4447477B
            8B0B4D9A34F18E690100448EDDBB777BA5D46FBFFDA61D054084702F37B9979A
            DCF363C3860D2563C68CDA9100400D85942D0CC3180A292032B852AA6BD7AEDA
            31004498142952788B966E71C1ED9E2A50A08076240040006CDFBE5D6AD4A841
            290520E0DC4E29B763EAE2F3E3CD37DFAC1D0900428A42CA1686610C85141039
            264F9E2C3D7BF6D48E012082DD75D75DDEE242D3A64DE5EEBBEFD68E03004806
            574A55AD5A550E1F3EAC1D054084726BB2E5CA95F39E1FDD4F891225B4230140
            D05148D9C2308CA1900222CB33CF3C23FDFBF7D78E01C007F2E6CD2BB56BD7F6
            7EEEBDF75EC9972F9F76240040227DF5D55752BD7A753976EC987614003E50B8
            7061EF4868574EB95DF86E373E00441A0A295B188631145240E4A19402A0A150
            A1425E3175B1A0CA9933A776240040026CDAB4C9FB7B9B520A402865CD9A55AA
            55ABE61D1F5AB3664D2953A60C051580884021650BC33086420A884C4F3FFDB4
            0C1E3C583B06001F7347B2B8054E778780FBC992258B762400C035AC5FBF5EEE
            BBEF3E898B8BD38E02C0A73265CAE41D23EACA29B773B352A54ADA9100204928
            A46C6118C6504801916BDCB8713268D020ED1800E0BDEDEADE7ABD78C49F7B1B
            3643860CDAB100007FB079F366EFEF68764A01B02063C68CDEB17E6E0795FBA9
            58B1A2A44C99523B1600DC1085942D0CC3180A2920B2514A01B0C82D26B84505
            B773CA2D7E56AE5C59D2A64DAB1D0B007C8F520A8055E9D3A7F79E192F16546E
            0755AA54A9B46301C01528A46C6118C6504801918F520A4038285FBEBC54A850
            C1DB49E57EED3E0100A1B771E346EFC8558EEF03609D2BA6DCF363D9B265BDE7
            C722458A684702000A29631886311452803F504A0108376EC754E9D2A52F1555
            EEF3CE3BEFE4B26B000801764A010847EECE52574E952B57CE7B76749F850B17
            16D68601841285942D0CC3180A29C03F28A500843B77EFD4DD77DFED2D305C5C
            642856AC188B0C00100494520022C1C592EAE2B3A3FBB9FDF6DBB56301886014
            52B6300C6328A4007F993871A20C1830403B0600048CBB4FC02D305C5C687047
            FD152F5E5C3B16004404574AB9E3FB8E1E3DAA1D0500022653A64C978EFA73F7
            9ABA67C712254A68C702102128A46C6118C6504801FEF3FCF3CFCBE38F3FAE1D
            0300822663C68CDEA242A952A52EFDB8E3FF6EBAE926ED68001076D82905C00F
            A2A2A2A460C182DEEE7BF753B468D14BBFCE912387763C00618442CA1686610C
            8514E04FCF3CF38CF4EFDF5F3B06008454AE5CB9BC72AA64C992DEA77B1BB640
            810292274F1EED6800601A3BA500F859E6CC99BD67C722458A7805957B967477
            53B95F03C09F5148D9C2308CA19002FCEBB9E79E93BE7DFB6AC7000013DC0283
            2BA72EFEE4CF9FFFD2AF6FB9E516ED7800A0CE9552B56AD592B8B838ED280060
            86DB49E57EDCEEFC3F3E3FBAFF06C09F28A46C6118C6504801FE3663C60CE9D6
            AD9BF05701005C5BEAD4A9255FBE7C971619FEFC79EBADB74A8A1429B4630240
            D06DDDBA55A2A3A3E5D75F7FD58E0200A6B9F5E8DCB9735FF6C2D39F5F7E4A93
            268D764C00414021650BC33086420AC01B6FBC216DDBB6D58E010061ED6239E5
            161EF2E6CDEB1D03F8E79F6CD9B269C7048064DBB76F9F77A7D477DF7DA71D05
            00C29A7B6E74F756FD716795FB717756B9BB4FDDB363D6AC59B5630248240A29
            5B1886311452009C952B574AD3A64DE5D4A953DA510020A25DBCB32A4B962C92
            316346C99429D3659F37FA6FEE277DFAF4DAFF3700F8DCCF3FFF2CF7DD779F6C
            DBB64D3B0A0044BCECD9B37BE5D4C592EA6A9F177FDCFF763FEE0529003A28A4
            6C6118C6504801B868EDDAB552AF5E3D3976EC98761400C00DB8CBB5FF5C5421
            F0FAF5EB270D1B36D48E019874F4E851A95FBFBEF70C0900B02D43860C121515
            252953A6F43EFFF8EBEBFD37F7E97E9030152A54908913276AC780320A295B18
            8631145200FE68C78E1D52A3460DEE050000E03FA64D9B265DBB76D58E019875
            FAF469898989F176DB0300E0776EF730FF268242CA1686610C8514803F73F701
            D4AA558B7B010000BE472105DCD8F9F3E7A555AB56B278F162ED280000A8A290
            824321650BC33086420AC0D5B81D52D1D1D1B275EB56ED280000A8A1900212C6
            7DADECD6AD9BCC9831433B0A00006A28A4E05048D9C2308CA19002702DC78F1F
            F74AA9F5EBD76B47010040058514903823478E94279F7C523B0600002A28A4E0
            5048D9C2308CA19002703DDC0B0000F0330A2920F1DC2E29B75B8AAF9A0000BF
            A190824321650BC33086420AC08DC4C7C74BC78E1D65EEDCB9DA51000008290A
            292069162E5C28EDDBB797B367CF6A470100206428A4E05048D9C2308CA19002
            90504F3DF5948C1831423B0600002143210524DDDAB56BA55EBD7A72ECD831ED
            280000840485141C0A295B18863114520012C3ED9272BBA5DCAE290000221D85
            14903C3B77EE94FBEFBF5FBEFFFE7BED280000041D85141C0A295B1886311452
            00126BD5AA55D2AC5933397EFCB876140000828A420A48BEDF7EFB4DEAD4A923
            5F7EF9A576140000828A420A0E85942D0CC3180A290049F1F5D75F4B7474B4FC
            FCF3CFDA510000081A0A2920304E9D3A25CD9B3797E5CB976B470100206828A4
            E05048D9C2308CA190029054FBF7EF97BA75EB7AE51400009188420A089C0B17
            2E48972E5D64D6AC59DA510000080A0A29381452B6300C6328A40024873BB6AF
            51A346B27AF56AED280000041C85141078E3C78F97418306095F450100918642
            0A0E85942D0CC3180A2900C975EEDC39898D8D95B973E76A47010020A028A480
            E058B870A1B46BD7CE7B8E040020525048C1A190B28561184321052050860C19
            2263C78ED58E010040C04C9F3EDD3B620C40E0B91DF64D9A349163C78E694701
            002020EAD4A9232B56ACD08E01651452B6300C6328A40004D2ABAFBE2A9D3A75
            92F8F878ED280000241B3BA480E0DAB56B97F736F90F3FFCA01D050080646387
            141C0A295B18863114520002EDE38F3F96A64D9BF2B62B0020EC514801C177E8
            D021A95BB7AE6CDAB4493B0A0000C94221058742CA1686610C85148060E06D57
            004024A0900242E3CC9933DE9D528B172FD68E020040925148C1A190B2856118
            432105205878DB150010EE28A480D01A3870A08C1F3F5E3B0600004942210587
            42CA1686610C85148060726FBBB668D142962E5DAA1D05008044A39002428F3B
            490100E18A420A0E85942D0CC3180A2900C1E6FE9A193468106FBB0200C20E85
            14A0C3DD49DAB871633971E28476140000128C420A0E85942D0CC3180A2900A1
            C2DBAE008070432105E8F9E69B6FA45EBD7ADC490A00081B14527028A46C6118
            C65048010825DE76050084130A29401777920200C20985141C0A295B18863114
            520042EDEBAFBF96FAF5EBF3B62B00C03C0A29409FBB93B45DBB76B278F162ED
            2800005C1785141C0A295B188631145200341C3D7A541E78E001F9C73FFEA11D
            0500806BA29002EC98306182772FE9850B17B4A30000705514527028A46C6118
            C6504801D0E21613860D1B2663C78ED58E0200C055514801B6B89799DC4B4DEE
            E5260000ACA190824321650BC33086420A80B6A54B974AEBD6ADE5E4C993DA51
            0000B80C851460CFF7DF7F2F4D9A34912D5BB668470100E03214527028A46C61
            18C6504801B060E7CE9DD2A04103D9B3678F761400002EA190026C3A7BF6AC74
            ECD851162C58A01D0500804B28A4E05048D9C2308CA1900260455C5C9C7761B5
            DB31050080051452806D2FBCF082F4EBD74FCE9F3FAF1D0500000A297828A46C
            6118C6504801B066D4A8513262C408E1AF270080360A29C0BE4F3FFD549A366D
            2ABFFFFEBB76140080CF5148C1A190B2856118432105C0A2152B5648CB962DBD
            5D53000068A19002C2C3FEFDFB25262646366DDAA41D0500E06314527028A46C
            6118C6504801B0CADD27D5B06143D9B16387761400804F4D9F3E5DBA74E9A21D
            0340023DFCF0C3F2F7BFFF5D3B0600C0A7EAD4A9E3BD600B7FA390B285611843
            2105C0B2D3A74F4B870E1DE4ADB7DED28E0200F021764801E167E6CC99D2A347
            0F397BF6AC76140080CFB0430A0E85942D0CC3180A2900E1E0C5175FF42EAC3E
            77EE9C761400808F504801E1E98B2FBE90468D1AC9810307B4A300007C84420A
            0E85942D0CC3180A2900E162FDFAF5D2A44913F9F9E79FB5A300007C82420A08
            5F870F1F9656AD5AC9AA55ABB4A300007C82420A0E85942D0CC3180A2900E1E4
            B7DF7EF32EAC5EB3668D761400800F504801E1CD7DDD1D3162848C1E3D5AF8EA
            0B0008360A29381452B6300C6328A400849BF8F878193870A03CF3CC33DA5100
            00118E420A880C6E9754F3E6CDE5D8B163DA510000118C420A0E85942D0CC318
            0A2900E1EABDF7DE93B66DDBCAC99327B5A300002214851410397EF8E10769D8
            B0A16CDDBA553B0A0020425148C1A190B2856118432105209CEDDEBD5B1A3468
            E07D0200106814524064397BF6AC74EAD449E6CD9BA71D0500108128A4E05048
            D9C2308CA1900210EEDC0E29B753CAED980200209028A480C8E4FE6C3FF6D863
            5E41050040A05048C1A190B285611843210520524C993245FAF6EDCBC2020020
            6028A480C8B565CB1689898991EFBEFB4E3B0A0020425048C1A190B285611843
            21052092B88585071E7840F6ECD9A31D0500100128A480C876E2C40969DFBEBD
            BCF3CE3BDA5100001180420A0E85942D0CC3180A290091E6D4A953121B1B2B6F
            BEF9A67614004098A39002FC61FAF4E9D2BB776F397DFAB47614004018A39082
            4321650BC33086420A40A4FAFBDFFF2E3D7BF66461010090641452807F7CFDF5
            D7D2A4491376DA0300928C420A0E85942D0CC3180A2900916CE7CE9DDEC282FB
            040020B128A4007F713BED1F7DF4519933678E7614004018A290824321650BC3
            3086420A40A43B73E68C74EFDE5D66CD9AA51D0500106628A4007F72473FBB23
            A05D41050040425148C1A190B2856118432105C02F5858000024168514E05FEE
            E83EB7D3DE1DE5070040425048C1A190B2856118432105C04F58580000240685
            14E06F67CF9E95DEBD7BCBCB2FBFAC1D0500100628A4E05048D9C2308CA19002
            E037FFFEF7BF65F8F0E13271E244B970E182761C0080611452009C254B96C8C3
            0F3F2CBFFEFAAB761400806114527028A46C6118C6504801F0AB356BD648FBF6
            ED65EFDEBDDA51000046514801B8E8F7DF7FF7FE3E58BC78B176140080511452
            7028A46C6118C6504801F033779FD480010364EAD4A9C25F8700803FA39002F0
            67F3E6CD931E3D7AC8912347B4A300008CA190824321650BC33086420A00443E
            FAE823E9D8B1A31C3870403B0A00C0100A290057F3F3CF3FCB830F3EE83D4302
            00701185141C0A295B188631145200F05F717171D2B3674F79F5D557B5A30000
            8CA09002703DD3A74F97BE7DFBCA891327B4A300000CA090824321650BC33086
            420A002EC7A5D500808B28A400DC88BB8FD4DD4BEAEE270500F81B85141C0A29
            5B18863114520070257769756C6CAC574E0100FC8B420A40425CB87041264D9A
            2443860C91B367CF6AC7010028A190824321650BC33086420A00AEEDB5D75E93
            5EBD7AC9D1A347B5A3000014504801488CEDDBB77BF7926ED8B0413B0A004001
            85141C0A295B188631145200707D870E1D92471F7D54162E5CA81D0500106214
            520012EBE26EA961C386C9E9D3A7B5E300004288420A0E85942D0CC3180A2900
            4898F7DF7F5F3A75EAC4DD5200E02314520092CADD2DF5D0430FC9A79F7EAA1D
            0500102214527028A46C6118C650480140C21D3B764CFAF4E923B366CDD28E02
            0008010A2900C93563C60CE9DFBFBFF71C0900886C14527028A46C6118C65048
            0140E27DFCF1C7121B1B2BDF7FFFBD761400401051480108849F7EFAC9DB2DC5
            22250044360A29381452B6300C6328A4002069DC9D0083070F96175F7CD1BB2B
            0000107928A40004D282050BA467CF9EF2DB6FBF69470100040185141C0A295B
            188631145200903C1B376E94B66DDBCAEEDDBBB5A30000028C420A40A01D3972
            C42BA5E6CE9DAB1D0500106014527028A46C6118C650480140600C1F3E5C468D
            1AA51D03001040D3A74F972E5DBA68C7001081962F5FEEFDFD72E0C001ED2800
            8000A953A78EAC58B1423B06945148D9C2308CA1900280C0D9BE7DBB74E8D0C1
            DB350500087FEC9002104C274F9E94810307CAD4A95339021A0022003BA4E050
            48D9C2308CA1900280C0727FAD4E9E3CD9BB5FEAC48913DA710000C940210520
            14DCCB4CEEA526F7721300207C5148C1A190B285611843210500C1B17FFF7EE9
            DCB9330FA30010C628A40084CAB973E764DCB8713266CC18397BF6AC761C0040
            125048C1A190B285611843210500C1B560C102E9D5AB97FCFAEBAFDA51000089
            44210520D476EFDEEDED965AB76E9D76140040225148C1A190B2856118432105
            00C177E4C811E9DBB7AFBCF27FEDDDD98E5DD5A1B6E17131B9827D1175982BC8
            41A4A4A444E284848408A523812848A1094D900A24BAE098BE319094C098A251
            426FC0808D0D01F714366ECAA6CA4D59BFC6FC6384E96267787A7C55EB79A425
            A3BD4F46F4497832DF35E7BAEDB6DE4701E01C0852400FF53FD3676666CAA597
            5E5A0E1D3AD4FB38009C25418A4A90CA628C308214C085F3DC73CF95EF7FFFFB
            E5830F3EE87D1400CE822005F4B467CF9E323D3D5D1E7FFCF1DE4701E02C0852
            54825416638411A4002EACFA9B00BFF9CD6FCAD5575F5D4E9E3CD9FB38007C0B
            410A48F0E0830F968B2EBA68085400E412A4A804A92CC608234801F4B179F3E6
            F2A31FFDA8CCCDCDF53E0A00DF409002522C2C2C94CB2FBFBC5C7FFDF5E5C489
            13BD8F03C0D710A4A804A92CC608234801F4F5C0030F0CBF2FF5D1471FF53E0A
            005F22480169B66EDD5A7EFCE31F97F5EBD7F73E0A005F2248510952598C1146
            9002E86F6969A95C75D555C3677171B1F77100F80F410A48B56EDDBA72F1C517
            97F7DF7FBFF75100F80F418A4A90CA628C308214408E9D3B770E3716EEBFFFFE
            DE4701A0085240B6FADBA4D75C734DB9F2CA2BCBD1A3477B1F0760E209525482
            5416638411A400F2BCF0C20BE5873FFCE1F03B5300F42348012BC19E3D7BCA25
            975C52D6AC59D3FB2800134D90A212A4B218238C200590697979B9DC7CF3CDE5
            D7BFFE753970E040EFE3004C24410A58495E7CF1C5F2831FFCA0BCFDF6DBBD8F
            02309104292A412A8B31C2085200D9F6EFDF5F7EF18B5F945B6FBDB5F7510026
            CECCCC4C999E9EEE7D0C807372CB2DB794CB2EBBACECDBB7AFF7510026CAD4D4
            54999D9DED7D0C3A13A4B218238C2005B032BCFBEEBBE5A73FFD69F9FBDFFFDE
            FB280013C31352C04AB5B0B050FEF0873F94EBAEBBAE2C2D2DF53E0EC044F084
            14952095C5186104298095656E6EAE5C74D14565D3A64DBD8F02B0EA0952C04A
            B77BF7EE72E9A59796BBEFBEBBF8CF7F8071095254825416638411A400569EFA
            AFEE3BEEB8A3FCF297BF2CBB76EDEA7D1C80554B9002568B8D1B370E5F6A7AE1
            85177A1F0560D512A4A804A92CC608234801AC5C8B8B8BE5EAABAF2E575D7555
            3972E448EFE300AC3A8214B0DAAC5BB7AEFCFCE73F2F9B376FEE7D1480554790
            A212A4B218238C2005B0F27DF2C927E557BFFA55B9F5D65BCBF2F272EFE300AC
            1A8214B01AD5EBC5999999F2DBDFFEB6CCCFCFF73E0EC0AA2148510952598C11
            469002583DDE7BEFBDF2939FFCA43CFEF8E3BD8F02B02A0852C06AB6B0B050FE
            F8C73F966BAFBD7678F21E80368214952095C51861042980D567C3860DE5E28B
            2F2E6FBCF146EFA300AC68F50982E9E9E9DEC70018D5CE9D3B87A7ED6FBFFDF6
            DE470158D1A6A6A6CAECEC6CEF63D0992095C51861042980D5A9FEEB7DEDDAB5
            E5B2CB2E2B1F7EF861EFE300AC489E900226C9A64D9BCA25975CE2662AC0FFC8
            135254825416638411A40056B7E3C78F971B6FBCB15C71C515E5C08103BD8F03
            B0A20852C0249A9B9B2B175D74D110A800387B8214952095C51861042980C970
            F8F0E1214A5D7FFDF5E5D8B163BD8F03B0220852C0A4AAB70AD6AC59333C6DBF
            7DFBF6DEC701581104292A412A8B31C20852009365C78E1DC38D85BBEFBEBBF8
            2B00E0DB0952C0A4AB4FDBD72F345D79E595E5E0C183BD8F03104D90A212A4B2
            18238C20053099EA2B58EAAB58EA2B5900F87A8214C0FF575FFD5CA3547D15B4
            A7ED01BE9E2045254865314618410A60B2D58BE59FFDEC67E5CD37DFEC7D1480
            38333333657A7ABAF73100627CF8E187E5D24B2F2DF7DE7B6FEFA300C4999A9A
            2AB3B3B3BD8F4167825416638411A400A87F153CFCF0C3E5F2CB2F2F6FBCF146
            EFE300C4F08414C0D7DBB265CB70ED78CF3DF79453A74EF53E0E40044F485109
            52598C11469002E0B4FA57C2238F3C32DC5CD8B87163EFE300742748017CBB1A
            A67EF7BBDF95B56BD70A53C0C413A4A804A92CC608234801F065F5AF86471F7D
            740853AFBFFE7AEFE300742348019C9D1AA67EFFFBDF97BFFDED6FC21430B1A9
            4381D400001B034944415404292A412A8B31C20852007C9BD361EAB5D75EEB7D
            14800B4E90023837354C5D71C51543985A5E5EEE7D1C800B4A90A212A4B21823
            8C2005C0D958B76EDD10A65E7DF5D5DE4701B860042980FFCDB66DDB8657F9AD
            59B346980226862045254865314618410A807351C354BDB9F0CA2BAFF43E0AC0
            E8666666CAF4F474EF6300AC585BB76E1D5EE577D75D77F53E0AC0E8A6A6A6CA
            ECEC6CEF63D0992095C51861042900FE17CF3EFB6CB9FAEAAB8740E5AF1260B5
            F28414C0F9B17BF7EE72EDB5D7965B6EB9A51C3A74A8F7710046E109292A412A
            8B31C2085200B4A8AF63F9D39FFE54EEBCF3CEB2B8B8D8FB3800E7952005707E
            1D3972648852D75D775DD9BE7D7BEFE3009C578214952095C51861042900CE87
            FDFBF7979B6EBA69F8CCCFCFF73E0EC0792148018CA3FEAED47DF7DD373C71EF
            55D0C06A2148510952598C11469002E07C3A76ECD8F0B4547D25CBBBEFBEDBFB
            38004D042980F1D55741D727EE1F7BEC31AF82065634418A4A90CA628C308214
            0063A87FBD3CF1C413C3B75E376CD8D0FB3800FF13410AE0C2F12A6860A513A4
            A804A92CC60823480130B6D75F7FBD5C73CD35E5AF7FFD6BEFA3009C93999999
            323D3DDDFB18001365DFBE7DE52F7FF94BB9E1861B867F065829A6A6A6CAECEC
            6CEF63D0992095C518610429002E94DDBB770F3716EA1307070E1CE87D1C80FF
            CA135200FD1C3F7EBCDC7DF7DDC3ABA0DF7AEBADDEC701F8AF3C214525486531
            4618410A800BEDB3CF3E2BB7DD765BF9F39FFF5CB66EDDDAFB3800DF489002C8
            F0E4934F0E4FDCD7270FDCC60052095254825416638411A400E8A5FE15B46EDD
            BAE1E6C2DCDC5CEFE3007C8520059065CB962DC36F94DE75D75D656969A9F771
            00CE2048510952598C114690022041FD9DA97A73E1DE7BEF2D274E9CE87D1C80
            8120059069FFFEFDE5A69B6E1A7E6BEAE38F3FEE7D1C80812045254865314618
            410A8024F577A6EA1353B7DE7A6B3974E850EFE300136E6666A64C4F4FF73E06
            00DFA2BE0ADAEF4C0109A6A6A686578B32D904A92CC60823480190A8BE8265ED
            DAB5E5C61B6F2CAFBEFA6AEFE30013CA1352002BC7F3CF3F3F5C3B3EF8E0839E
            B807BAF08414952095C51861042900D2BDF4D24BC3CD85FA3ABF63C78EF53E0E
            30410429809567EFDEBDC313AEF5DFE1F5E97B800B4590A212A4B218238C2005
            C04AB16FDFBEE1557E37DF7C73D9BE7D7BEFE3001340900258B94E9E3C591E7A
            E8A1E1B7A6E6E6E67A1F0798008214952095C51861042900569A53A74E9575EB
            D60D4F4DAD5FBFBEF8AB0C188B2005B03ABCF3CE3BE5861B6E2877DD7557397A
            F468EFE300AB942045254865314618410A80956CEBD6AD4398BAFDF6DBCBE1C3
            877B1F075865042980D565616161B86EAC4F4D6DD9B2A5F77180554690A212A4
            B218238C2005C06AF0D9679F0D3F607DDB6DB7950D1B36786A0A382F042980D5
            EBF9E79F1FAE1DEFBBEFBE215401B412A4A804A92CC608234801B0DAECD8B1A3
            DC71C71DC3B75FDF7FFFFDDEC7015630410A60F5F3C526E07C11A4A804A92CC6
            08234801B09AD56FBED63075EFBDF7FAE62B70CE042980C9E28B4D400B418A4A
            90CA628C3082140093E0F4375FEBCD85A79F7EDA375F81B32248014C2E5F6C02
            CE952045254865314618410A8049B37DFBF6E19BAF77DE7967D9B66D5BEFE300
            C1666666CAF4F474EF6300D0D1175FE957BFD804F04DA6A6A6CAECEC6CEF63D0
            992095C5186104290026D92BAFBC52D6AC5953D6AE5D5BF6ECD9D3FB3840184F
            4801F0457BF7EE1DAE1BEBF5E3CB2FBFDCFB3840184F48510952598C11469002
            80524E9D3A559E79E699E1E6C2030F3C500E1E3CD8FB484000410A806F529FB4
            AFD78EF5B365CB96DEC70102085254825416638411A400E04CC78F1F2F4F3CF1
            C47073E1B1C71E2B8B8B8BBD8F047422480170365E7BEDB5CF9FBADFB56B57EF
            E3009D085254825416638411A400E09B1D397264F8CD807A8361FDFAF5E5E4C9
            93BD8F045C40821400E7A2DE62999B9B1BAE1DEFBFFFFE72E0C081DE47022E20
            418A4A90CA628C308214009C9D7DFBF60DAFF3BBE79E7BCA860D1B7A1F07B800
            666666CAF4F474EF6300B042AD5BB7AE3CF4D043C335E4E1C3877B1F0718D9D4
            D454999D9DED7D0C3A13A4B218238C200500E7EED34F3F1D6E2CD46FBE3EFDF4
            D39E9C8255CA1352009C0FF55AF1C9279F1CAE1D1F79E491B27FFFFEDE470246
            E009292A412A8B31C2085200D0E6D0A143C36BFDEA0D86A79E7A6AF80D2A6075
            10A40038DF969797872F34D56BC7871F7EB8CCCFCFF73E12709E085254825416
            638411A400E0FCA9AF62A9DF7AAD3718EA7F882C2D2DF53E12D0409002604CA7
            4E9D1A7E73AA5E3BD657FBEDD9B3A7F79180068214952095C5186104290018C7
            D1A3478727A7EA6F07FCE31FFF280B0B0BBD8F049C23410A800BE9D9679F1D9E
            9ABAEFBEFBCACE9D3B7B1F0738478214952095C5186104290018DF891327CA33
            CF3C333C3DF5E8A38F961D3B76F43E1270160429007A79FBEDB73FBF767CE9A5
            978ADB37904F90A212A4B218238C20050017DEC68D1B879B0BF526C36BAFBDD6
            FB38C03710A40048F0C9279F0CD78DF5B37EFDFAB2B8B8D8FB48C0D710A4A804
            A92CC608234801405FF5B702EAAB596AA0AA3F707DFCF8F1DE4702FE43900220
            4D8D51F58677BD767CECB1C7CAFCFC7CEF2301FF2148510952598C1146900280
            1CF577A79E78E289323B3B3BFCEED4AE5DBB7A1F09269A200540BA175E78A13C
            FEF8E3C34DF0575F7DB5F77160A2095254825416638411A40020D7D6AD5BCB53
            4F3D35BC9A65C3860DE5D34F3FED7D2498288214002BC9C183078727EEEBF563
            FDD46B49E0C211A4A804A92CC608234801C0CA70EAD4A9E1F7A66A9CAA37189E
            7FFEF9B2B4B4D4FB58B0AA095200AC643B77EE2C4F3EF9E470ED5843D5DEBD7B
            7B1F095635418A4A90CA628C30821400AC4CC78E1D1B5ED172FA1BB0F5152D35
            5A01E78F2005C06AB269D3A6CF9FBE9F9B9B2B0B0B0BBD8F04AB8A2045254865
            314618410A0056877A43E1D9679FFDFC5303D58913277A1F0B5634410A80D56A
            797979B85EACD78D354ED5A7EFEB2BFF80FF9D2045254865314618410A0056A7
            C5C5C5E109AAD381EAC5175FF48A3F384782140093A2DE1E7AF3CD373F0F54CF
            3DF75C999F9FEF7D2C585104292A412A8B31C208520030198E1F3F3E44A9D337
            19FEF9CF7F9623478EF43E164413A40098649B376F1EAE1B4F7FC1A9FE2615F0
            CD04292A412A8B31C208520030B96A94AA9F7FFDEB5FC39F6E32C099666666CA
            F4F474EF63004084F7DE7B6FB86EAC5F72AA4FE2BFF1C61BBD8F0451A6A6A6CA
            ECEC6CEF63D0992095C51861042900E0B4DDBB777F1EA9EAA7FEAEC0B163C77A
            1F0BBAF18414007CB3CF3EFBACBCF4D24B675C3FEEDBB7AFF7B1A01B4F485109
            52598C1146900200BE497DCDDFEBAFBF7EC64D861D3B76F43E165C308214009C
            9B6DDBB69D71EDF8D65B6F95E5E5E5DEC7820B4290A212A4B218238C2005009C
            8BFA14D52BAFBC323C3D555FD3523F1F7EF861EF63C128BCB20F00DA9C7E8AAA
            5E3BD63855AF1D376EDCD8FB58300AAFECA312A4B218238C200500B43A72E4C8
            7063E174A0AA9F7AC3617171B1F7D1A08927A400E0FCAB4F4CBDFBEEBB5FB97E
            9C9F9FEF7D3468E209292A412A8B31C2085200C058366FDE5CDE79E79DF2F2CB
            2F9737DF7CB36CDAB4A96CDFBEBDF7B1E0AC79420A002E9C3D7BF60C5F6AAAAF
            8CAE81EAEDB7DF1EAE2161A5F08414952095C51861042900E042AAAF6DA991EA
            CB9F7FFFFBDFE5D4A953BD8F0767F0841400F4559FA67AFFFDF7BF72ED58BFF8
            E4697CD278428A4A90CA628C3082140090E0D8B163C3AB5BBE7CB3A1DE803879
            F264EFE331A1042900C8546F67D52F347DF9DAB15E4FD6D749430F8214952095
            C5186104290020598D511F7CF041D9BA75EB199FF7DE7BAFECD8B1C353558C4A
            9002809567F7EEDD5FB976AC9F6DDBB695A5A5A5DEC7631513A4A804A92CC608
            234801002BD5F1E3C78727A84E07AA2FDE70D8B56B577199432B410A00568F7A
            6DB873E7CEAF8D55F59AB25E5B420B418A4A90CA628C30821400B01AD51B0A35
            4AD59B0EA7FFFCE23FD73FEB0F677B1D20DF46900280C9506F8F7DFCF1C75FB9
            5EFCF23564FD3D54F8268214952095C518610429006092D59B0B5FBCE9506F44
            D4D7BCD43F4F7FEAFF8FC9244801005F74E0C081332255BD6EAC5F729A9F9F3F
            E3FA716161A1F751E94090A212A4B218238C200500F0DF1D3C7870B8B9506F36
            ECDDBBF72B371DF6EDDB377C3EFDF4D3F2C9279FF43E2EE7C9CCCC4C999E9EEE
            7D0C006005FAE8A38FCEB85E3C7D2D79FACFD3D78EF5B3B8B8D8FBB89C075353
            53657676B6F731E84C90CA628C30821400C0F977F8F0E1CF6F30D46FD2EEDFBF
            7FF89CFEBF9DFE1C3A74A81C3D7A74B809F1C54F0D60F427480100174A7DDAEA
            8BD7895F77ED58AF2B8F1C39F2956BC7FAF13AC1FE04292A412A8B31C2085200
            00B9EA8D85AFBBE1B0B4B434FC4E56FD0DACFA3971E2C459FFF3F2F272EFFF59
            2BC677BFFBDDF27FFFF77FBD8F010070D6EA179BBEEEFAF1F4B5E3D75D1FFEB7
            EB47CECE77BEF39DF2BDEF7DAFF731E84C90CA628C3082140000000000B413A4
            B218238C20050000000000ED04A92CC60823480100000000403B412A8B31C208
            520000000000D04E90CA628C3082140000000000B413A4B218238C2005000000
            0000ED04A92CC60823480100000000403B412A8B31C208520000000000D04E90
            CA628C3082140000000000B413A4B218238C20050000000000ED04A92CC60823
            480100000000403B412A8B31C208520000000000D04E90CA628C308214000000
            0000B413A4B218238C20050000000000ED04A92CC60823480100000000403B41
            2A8B31C208520000000000D04E90CA628C3082140000000000B413A4B218238C
            20050000000000ED04A92CC60823480100000000403B412A8B31C20852000000
            0000D04E90CA628C3082140000000000B413A4B218238C20050000000000ED04
            A92CC60823480100000000403B412A8B31C208520000000000D04E90CA628C30
            82140000000000B413A4B218238C20050000000000ED04A92CC6082348010000
            0000403B412A8B31C208520000000000D04E90CA628C3082140000000000B413
            A4B218238C20050000000000ED04A92CC60823480100000000403B412A8B31C2
            08520000000000D04E90CA628C3082140000000000B413A4B218238C20050000
            000000ED04A92CC60823480100000000403B412A8B31C208520000000000D04E
            90CA628C3082140000000000B413A4B218238C20050000000000ED04A92CC608
            23480100000000403B412A8B31C208520000000000D04E90CA628C3082140000
            000000B413A4B218238C20050000000000ED04A92CC60823480100000000403B
            412A8B31C208520000000000D04E90CA628C3082140000000000B413A4B21823
            8C20050000000000ED04A92CC60823480100000000403B412A8B31C208520000
            000000D04E90CA628C3082140000000000B413A4B218238C20050000000000ED
            04A92CC60823480100000000403B412A8B31C208520000000000D04E90CA628C
            3082140000000000B413A4B218238C20050000000000ED04A92CC60823480100
            000000403B412A8B31C208520000000000D04E90CA628C3082140000000000B4
            13A4B218238C20050000000000ED04A92CC60823480100000000403B412A8B31
            C208520000000000D04E90CA628C3082140000000000B413A4B218238C200500
            00000000ED04A92CC60823480100000000403B412A8B31C208520000000000D0
            4E90CA628C3082140000000000B413A4B218238C20050000000000ED04A92CC6
            0823480100000000403B412A8B31C208520000000000D04E90CA628C30821400
            00000000B413A4B218238C20050000000000ED04A92CC6082348010000000040
            3B412A8B31C208520000000000D04E90CA628C3082140000000000B413A4B218
            238C20050000000000ED04A92CC60823480100000000403B412A8B31C2085200
            00000000D04E90CA628C3082140000000000B413A4B218238C20050000000000
            ED04A92CC60823480100000000403B412A8B31C208520000000000D04E90CA62
            8C3082140000000000B413A4B218238C20050000000000ED04A92CC608234801
            00000000403B412A8B31C208520000000000D04E90CA628C3082140000000000
            B413A4B218238C20050000000000ED04A92CC60823480100000000403B412A8B
            31C208520000000000D04E90CA628C3082140000000000B413A4B218238C2005
            0000000000ED04A92CC60823480100000000403B412A8B31C208520000000000
            D04E90CA628C3082140000000000B413A4B218238C20050000000000ED04A92C
            C60823480100000000403B412A8B31C208520000000000D04E90CA628C308214
            0000000000B413A4B218238C20050000000000ED04A92CC60823480100000000
            403B412A8B31C208520000000000D04E90CA628C3082140000000000B413A4B2
            18238C20050000000000ED04A92CC60823480100000000403B412A8B31C20852
            0000000000D04E90CA628C3082140000000000B413A4B218238C200500000000
            00ED04A92CC60823480100000000403B412A8B31C208520000000000D04E90CA
            628C3082140000000000B413A4B218238C20050000000000ED04A92CC6082348
            0100000000403B412A8B31C208520000000000D04E90CA628C30821400000000
            00B413A4B218238C20050000000000ED04A92CC60823480100000000403B412A
            8B31C208520000000000D04E90CA628C3082140000000000B413A4B218238C20
            050000000000ED04A92CC60823480100000000403B412A8B31C2085200000000
            00D04E90CA628C3082140000000000B413A4B218238C20050000000000ED04A9
            2CC60823480100000000403B412A8B31C208520000000000D04E90CA628C3082
            140000000000B413A4B218238C20050000000000ED04A92CC608234801000000
            00403B412A8B31C208520000000000D04E90CA628C3082140000000000B413A4
            B218238C20050000000000ED04A92CC60823480100000000403B412A8B31C208
            520000000000D04E90CA628C3082140000000000B413A4B218238C2005000000
            0000ED04A92CC60823480100000000403B412A8B31C208520000000000D04E90
            CA628C3082140000000000B413A4B218238C20050000000000ED04A92CC60823
            480100000000403B412A8B31C208520000000000D04E90CA628C308214000000
            0000B413A4B218238C20050000000000ED04A92CC60823480100000000403B41
            2A8B31C208520000000000D04E90CA628C3082140000000000B413A4B218238C
            20050000000000ED04A92CC60823480100000000403B412A8B31C20852000000
            0000D04E90CA628C3082140000000000B413A4B218238C20050000000000ED04
            A92CC60823480100000000403B412A8B31C208520000000000D04E90CA628C30
            82140000000000B413A4B218238C20050000000000ED04A92CC6082348010000
            0000403B412A8B31C208520000000000D04E90CA628C3082140000000000B413
            A4B218238C20050000000000ED04A92CC60823480100000000403B412A8B31C2
            08520000000000D04E90CA628C3082140000000000B413A4B218238C20050000
            000000ED04A92CC60823480100000000403B412A8B31C208520000000000D04E
            90CA628C3082140000000000B413A4B218238C20050000000000ED04A92CC608
            23480100000000403B412A8B31C208520000000000D04E90CA628C3082140000
            000000B413A4B218238C20050000000000ED04A92CC60823480100000000403B
            412A8B31C208520000000000D04E90CA628C3082140000000000B413A4B21823
            8C20050000000000ED04A92CC60823480100000000403B412A8B31C208520000
            000000D04E90CA628C3082140000000000B413A4B218238C20050000000000ED
            04A92CC60823480100000000403B412A8B31C208520000000000D04E90CA628C
            3082140000000000B413A4B218238C20050000000000ED04A92CC60823480100
            000000403B412A8B31C208520000000000D04E90CA628C3082140000000000B4
            13A4B218238C20050000000000ED04A92CC60823480100000000403B412A8B31
            C208520000000000D04E90CA628C3082140000000000B413A4B218238C200500
            00000000ED04A92CC60823480100000000403B412A8B31C208520000000000D0
            4E90CA628C3082140000000000B413A4B218238C20050000000000ED04A92CC6
            00000000000060548214000000000000A312A400000000000018952005000000
            0000C0A80429000000000000462548010000000000302A410A00000000008051
            09520000000000008C4A9002000000000060548214000000000000A312A40000
            00000000189520050000000000C0A80429000000000000462548010000000000
            302A410A0000000000805109520000000000008C4A9002000000000060548214
            000000000000A312A4000000000000189520050000000000C0A8042900000000
            0000462548010000000000302A410A0000000000805109520000000000008C4A
            9002000000000060548214000000000000A312A4000000000000189520050000
            000000C0A80429000000000000462548010000000000302A410A000000000080
            5109520000000000008C4A9002000000000060548214000000000000A312A400
            0000000000189520050000000000C0A804290000000000004625480100000000
            00302A410A0000000000805109520000000000008C4A90020000000000605482
            14000000000000A312A4000000000000189520050000000000C0A80429000000
            000000462548010000000000302A410A0000000000805109520000000000008C
            4A9002000000000060548214000000000000A312A40000000000001895200500
            00000000C0A80429000000000000462548010000000000302A410A0000000000
            805109520000000000008C4A9002000000000060548214000000000000A312A4
            000000000000189520050000000000C0A8042900000000000046254801000000
            0000302A410A0000000000805109520000000000008C4A900200000000006054
            8214000000000000A312A4000000000000189520050000000000C0A804290000
            00000000462548010000000000302A410A000000000080510952000000000000
            8C4A9002000000000060548214000000000000A312A400000000000018952005
            0000000000C0A80429000000000000462548010000000000302A410A00000000
            00805109520000000000008C4A9002000000000060548214000000000000A312
            A4000000000000189520050000000000C0A80429000000000000462548010000
            000000302A410A0000000000805109520000000000008C4A9002000000000060
            548214000000000000A312A4000000000000189520050000000000C0A8042900
            0000000000462548010000000000302A410A0000000000805109520000000000
            008C4A9002000000000060548214000000000000A312A4000000000000189520
            050000000000C0A8FE1FC7172E36BB63EE080000000049454E44AE426082}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object qr_kep: TfrxPictureView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 1.779527560000000000
          Width = 64.252010000000000000
          Height = 49.133890000000000000
          Frame.Typ = []
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D49484452000000B50000
            00B40806000000D20F6D0C000000017352474200AECE1CE90000000467414D41
            0000B18F0BFC61050000000970485973000012740000127401DE661F7800002E
            EA4944415478DAEDDD05983655F93FF007BB0B2C40C5C02E0C30B0BB15155B4C
            1495B050510C14130B11B10B135BEC6E451105C116ECC2C68EDFDFCF83F3FECF
            DECF39CFCED999D97D76DFF95ED77B2DCCCE4E9CF9CE99737FEFDAE2FFFE8BC9
            88111B085B8CA41EB1D130927AC486C348EA111B0E23A9476C38CC90FA5FFFFA
            D7E4873FFCE1E44F7FFAD3E4B4A73DED5A5F5F16FFFEF7BF275B6DB5D5649B6D
            B6996CB1C5164B7EF7DBDFFE76F2A31FFD68C9B5BBA7ADB7DE7A72FEF39FBFD3
            790DD54F7FFAD3C9C9279FDCFBD8FCE73FFF999CF18C679C5CF4A2179DFE4CF1
            F7BFFF7DFA4CFEF297BF6C3AAF3138CB59CE32B9E4252F39D838FFF297BF9CDE
            EBA2CE7BC6EC4C673AD3E44217BAD0E4CC673EF3A6ED33A476137BEEB9E7E4CB
            5FFEF2E434A739CD5A5F77161EE85DEF7AD7C9939FFCE4C9E94F7FFA25BF3BE2
            8823268F7DEC639790CEFEFBECB3CFF4BEBAE01FFFF8C764FFFDF79FBCFDED6F
            EF7D6C3CA00B5CE00293C30F3F7CB2DD76DB2DF9DD89279E38D9638F3D26DFFB
            DEF7369DD7FE5E80F7BDEF7D93339CE10C838CF30B5EF082C92B5EF18AC93FFF
            F9CF418EDF15A8BBEDB6DB4E0E3EF8E0C9E52F7FF94DDB6748FDF39FFF7C72BB
            DBDD6E4AEA45C6BDEF7DEFC9CB5FFEF299077AD861874D0910B1DF7EFB4D0E3C
            F0C04EE73463DEF7BEF79DBCE94D6F1AE49ECE75AE734DBEF8C52F4E2E75A94B
            2DD9FECD6F7E73728B5BDC623A5BA7F040BFF5AD6F4DCE7AD6B30E723D8F79CC
            6326CF7EF6B30739765F38DFF9CE3779EF7BDF3BD971C71D376D9B21F52F7EF1
            8BC99DEF7CE7C9673FFBD9B5BEDEB978C0031E3079F18B5F3C436A33CB031FF8
            C099FD9FF4A4274D67F62E40EA073DE84193D7BEF6B583DCD3052F78C1C9273F
            F9C99925C5B7BFFDEDE944E3678A4B5CE21293AF7FFDEBD365C81078C2139E30
            79CE739E33FD422D2A2E72918B4CDEF6B6B74DAE76B5AB6DDA3692BA021EEEEE
            BBEF3E927A813092BA23A9E1FEF7BFFFE455AF7AD520F73492BA1EAD48CDE245
            EACF7CE6334BFE984166DD728E739C636AA4AC06187BAEE7E8A38F9EF95D89D4
            AF7CE52BA7BF8B4068C48E607C7DE73BDF59D6F0F37BCB0F46C9473FFAD141EE
            B7446AD777DBDBDE364BEA638F3D7689E53F0F7FFCE31F279FFFFCE7A70656A3
            1A31A2A9070CAD3806255233502F7DE94B4F79B01ACA886B75AEE38E3B6E3AE9
            A6E834539FFBDCE79E0EF8652F7BD9C16F22C5873FFCE1C9AD6E75AB99ED7DCD
            D4B6D518900677A8977AE899FA739FFBDCE4FAD7BFFECC764A12A39B3C96A244
            EA873EF4A193A73CE52953A9743526382F9B6BA05EBDFBDDEF5EF2BBCEA4FEC2
            17BE3063990F0DB3E24D6E729399ED7D91DA83EBAA8AF485A149EDEB7BDDEB5E
            7766FBAEBBEE3AB513DA92FA718F7BDCE4E94F7FFAAA8FCF3DEE718FC91BDFF8
            C625DB3A93DAB6D59EA93FF4A10F4D6E7EF39BCF6CEF8BD44F7CE213274F7DEA
            5357F59E4A189AD49EDF75AE739D99ED77BBDBDDA676425B5293FA9EF9CC67AE
            EAD8D0CAC9B86F7EF39B976C1F493D927A24758AF54EEA673CE319534F6384CF
            E8E31FFFF855BDA7123851BEF295AF4C8DB014279C70C2E4C637BEF1D4319682
            E3E1073FF8416BE78B17E60637B8C1CC762F0C87523438375B528B8578DDEB5E
            D7CB8593CB3CA814B5A42EA91F77BAD39DA6F7058DF5EF27B73AB777C4D5AF7E
            F5E98CC918B21F63C57F23DD49279DD4E93E2949D6B6DCE28D0BDA398CB1AF89
            193B0532F3ECFDE4273F59E22617CF72D04107CD840A944045E1E64FD50FC731
            7BF3C2C6E3D492FA57BFFAD574FCBB820D9592145695D49FFAD4A7B216F54A80
            3057BDEA55976CEB6BA646865C1012492B67C1BFEC652F9B9E0391A703F55F12
            FCED6F7F9B3CE4210F99BCFEF5AFEF749FE73CE739A7AEDD9D77DE79D3F11BA2
            9DEE74A79B09D2824669687ED7BC68F6AF017244523B466E6C6A494D7A8D645C
            099EF5AC674DF6DD77DF99EB5E3552D33DAF7DED6B77BE11F8DAD7BE36B9D295
            AEB4645B5FA4AEC56B5EF39AC96EBBEDB6649B17C0B15FFDEA57773A3652932A
            D3788545442DA9ADEFAF7CE52B773E2F5F400C3E1B49DD03A97D46EF77BFFB2D
            D9D657EC07527FE0031F985CF39AD7EC65DC86C248EA1EB048A4A60688C84BD1
            57EC07527FF0831F9C5CE31AD7E865DC86C248EA1ED007A95FFAD2974E1EFCE0
            0777BE16C4358811B6F5B1A6E654EA63FD39244652F7803E48FDB18F7D6C1ADC
            9E5AF28CA0E38F3F7E1A97DC165CC162983DD0C6B0B2A6FED297BE34551196CB
            7C696245ECFFEB5FFF7AC9EFE8CA54882B5CE10AD37D80C1663B55E46C673B5B
            AB6B3CE59453A6F7CB884C0D3F0AD24E3BED349341538B91D43DA00F5297402A
            13AFD005CE4515890664097FF8C31F26BBECB2CBE4E31FFF78ABFD497CD4A4B6
            295A82B1BC18549914D7BBDEF5266F79CB5B3AA7AF8DA4EE0143921AA1BB869E
            92BE1890B965490EF23CEF70873B4C67D33640C24F7FFAD355A4BEDCE52E3743
            3AB3FD5BDFFAD691D40D362AA9FB98A97DCEADD9DBCED4BFFFFDEF2777BCE31D
            5BCFD425377909487DC52B5E71F2D7BFFE75C9767E030F7F24F5FF3092BA8C91
            D4A7622475058624B58713BD54B5A82535D0A225D3B6412DA9958310E0AF7442
            8A91D41B8CD4B2E0DFF9CE77CEEC2F963897A226CE2017E4F38E77BC63EAB64F
            318FD43C905491084142D195CDB0B3BFFA24294AA4A69E901195AF48F1BBDFFD
            6EAACB37AEF60623A93718A90F39E490AAFA1ECF7DEE73278F78C42366B693F4
            0E3DF4D025DBE691DA18188B08DB729E43C65C4C992B915A941EA24669B08491
            D41B8CD4B51EC5030E3860AA1947E4126CE791FA96B7BCE5D4F59D421D0F037E
            A31BDD68C9766B6D1A785C96D4C6539730927A24F548EA024652F7803E482D81
            547C465B504464BF4488FBB0EE4DC14BE9A5C9E9D49283DFFFFEF72FD986D4D6
            E671CD2EABFBA637BDE9D4DB98A2A45323F36D6E739BC977BFFBDD56F73492BA
            23A94BC99C2BC157BFFAD5C90E3BECB064DBD0337589D422F46288E93C8F6269
            A6968070C31BDE70C9769EC69BDDEC6633A42E7914915A89849C219AC35A91FA
            98638E995CE52A57E9744EC8D939AB4A6AB36B5B0FDB72908512B3D56B49AD0E
            8600FCE5B2419ADB96F571AD6B5D6BE6F708EA254B8FE36FFEFCE73F2F714B8B
            B910E7C18327B52A85E5CAED6F7FFB699D0C71230DEC7FF6B39F7DC9B1FD5EA0
            937205E739CF79961C877467C69759D228294D4D140488490E6B456A2F5F935D
            D405D2EEEE7EF7BB2FD9B659E7280E09E4B12CE99ABE2670E9139FF844E72401
            05232F7399CB2C8CF365488CA41E087DC553AB72E5BEBAC6537FFFFBDF9F0634
            8DA41E49BD622C5AE6CBA2B9C987C448EA813092FA54AC45852634BDE73DEFD9
            6F8526C6CB37BEF18D99F4FDA141CBCD3DFC91D46B476ACA0452A7C6EF90608C
            BB06CF1C81537422354B5EC07BB4CC8786F8086A464489D474F3F83603C9CDBF
            88238F3C729A2F18A16E5B24DD3C522B9D10BF62C846378F525C89D4F46B593B
            548E1432599C379214A9E9FAB980264902B1860A75E679CF7BDECCB52384FB6D
            5BF743190B326E53136568507A2C3F3EF2918FCC68F59B457DEA52ECC7A31FFD
            E86CAB87473DEA5153592CC2B11135C53C52AB289A93062D9D2CA1529448AD30
            109D3EC6782027B524BE34B533B56344CD1C6E7DEB5B4F25C9B6159A16099B05
            A9FBAAA5575B22813791EB3B45299EBA446A95981032CEECB47B256CA3865F4B
            EABE6AE92D1246528FA4DE7C496DEDAC16F52203E15EF29297B48EFD10B42478
            2962D1488D74F4E714DB6FBFFDB4B59C9F29B4A293A3D896D4A59086BBDCE52E
            D33897486A85332DD962BCF6224192046FEBB2A45684DB5B9DABE9B60870C966
            6AEBE75C814833757AEDF63753E7DA632C1AA9AD79B99BD3EB170B22F1218D09
            F17B461343316693CF9BA9659AC7B13453BBDF486AE3C27075FC45E04253D4B3
            812F8872C66F78C31B96C40CCD909A256DC055D85CD48EB7660E9F5D0F285EA3
            807A75EAD26C1396B348C29C5B7A91486DECCD3A623DD2FE2BAEFFC73FFEF192
            6580FB930943E9890A4489D45E9A46126B48EAD8667BE1B1712CDD936B77DE45
            6C14EBBADCA3E764C66EB0D9F7265F245297408A93761603A64AE84BA75EAF18
            49BD0E48CD70144FBDDAA1A7EB1523A9D701A9D72AF365BD62B327350B3F17C7
            90AB7A2AF494819AAB4F6D1D1FBB8889BD46C658A109A979C7742B68036A0807
            893EE46D404161586EB9E5966B3AB66B851952FB5F12515A74B0A95A2F0EB8AD
            C180000C9FB4FAFD5AC135F096E5E2449EF6B4A74D499D1A96EEFD852F7CE1D4
            75DCC437349D04F6DE7BEFAC1B5E868B94AEC698334E4A18388614AD14424F19
            848CD7A63D46098C3764963C105DC4CD3349C7D7F52235B9932772A57D0E3D73
            6EF3B68D47C1BD47A5C4F5B8C6DCD8DBD7DFAC941F0D2F5D636AE4CE909AE52D
            C54977D1F46432353C6862771BD05045738963580452DFE73EF7C9A66131BE38
            3122A9C58308E04A49EDBF2D0162432120ADA53D5C9A8696C611B95338975C3E
            33691B52ABC927A327C6786CB3CD36D3F4B2548A738D942B33B5C9A90BA92922
            354D9EBCECB1E78BF32B37A1E74E3C3E3EBDE73DEFE9C40F2F0CA976AE4EED81
            9971E49BC5C195BAA5DD6F1B48C2B4B6B3AE5C044811D2A1AB2DBC045DA3F186
            06DD3AB7CEE638D3CD2BBE04B5908A962B0C5442A9B49B2FA1092E05B2B359FA
            18638EA934586DB0786AB39C13D157170125377909B912098B86521F45651678
            0963B45F2D3865724BAD124C1AFBEDB7DFCCF65C226D33831F76D8619DAED10A
            82F62E3BBFC148EA0246526F26A496D21FE30F4A60DCA877E1788B00C139359D
            6D732512160D17BEF085A7DD1186223523F7F0C30F6FBD7F89D4D6CE7BEDB5D7
            CCF6873DEC61D3A0B42EE8446A352C68ABB11B6B0E0EC9518018D6E8CBA9860C
            050613092CEECBA8A216A4060F238CE59C5B33B2B2B597880692BCBA5CC7DBE6
            38A9AAE36FAD01956C68AEA7893BB06F2E6ACD399DBB39AFFDFDB77B8A01417E
            677FEAC24A0D39B8D8C52E367D4E51A12891DA582241F38C9AB1A4BFBBAF38F6
            3476518F291A3523A78A94484D61322BA770DF62D9731387E3337ED3B16CCA53
            44C3BA15A9D59240EA58BC90A188D05A062FF720FC9E2F5E90FD565B6DB56CDA
            8F874BF6329BB2F453D07245DE354D2D0179104E13C94818BAB065469A95E1FC
            AE875A10A18C18F92BCDFA702E2FA488B654CDF0F0193D0C9308813F82919AE0
            22E3C548F632C5EAA9086DF662B1373D5F6AD1F488914D1E81D42440CF320585
            A621693336C823ACD5572CBEACB29C2E7EF18B2FD99FA242ABDF679F7D66CE2B
            19371A84D08C7DDA68D5F16435E5BE268C4D91A24DF46133F6123D62114E131E
            52A73E82C1E2A9C5FE1A5C32571B7050907DA25A227324563E02A192BC7BF141
            083B45D4B630B3E4541133080524A2B4D6E64CA138A4F0505456D2892BC5D0DD
            B94A3335FD3A6AE620EB85DC19A3FD4AB094F052469466EA5AE893EEA58C102A
            20FD2E45A7E5472D487F5CC769F4D43CD085192691D42E36A6438119C7272D92
            1AE9E227731ED6839BBC16255273F6E49E2B63D0B8B52535A32F9702D717A9D5
            E296399EC273D63F27D62B1C499DC148EACD80D40C3BEB99B62D1D4AB0FC100F
            C1426F03172B3981319082572B7EBEC1F24013D0AEA42EC57E58C75B3BA6582F
            A4660FB12DA2275345A85C4693E027246A5BF2E0E10F7F78362BBD2F52E71AB3
            7ACE961F3895824DC04194D6869921B5B75B208F373A751DDB4D0A7FBC710691
            B7C5CFD43033534BD3CF1967395853CB58E1A66FFCF80C0B5E49B5EBD2F332EA
            AC6B190ED11A4644846C0B0FC2BFD450445EEB7292568A4523B531F14CD2F81A
            63C79812A3222BBD5175EC2B49225638B2FFBBDEF5AEA981C706582EB6C7781B
            03E44DA9E3FC3467E95FFE3BBD1ED79833881B15A5398E9FFE71FDC74293488D
            E8BEE80D3FDCB7B134C1A5E5926748EDA2C9711E481A24E2C2CC8C623A52585E
            3CFFF9CF9F6CBBEDB64B488DE8D492B6C5669C4F0C469A65E13882789034555C
            5C972F8A6B893254ED4CCD39C40A4FEFD518F8D2C4BA198B466A311E66D83488
            C8D891FA108052D58CA5F1535052EDE714EE9B2A62E9E7BF978BC330D1F812A8
            C51249EDABDAB8ABD3EBC18FF832F9BD49C9AA202535F08550CD52B87EBC4CB3
            826C3319091730A69B8EDD36F4D483567B98A7308587CFA28E04E80BA55A1525
            D492BA068B466A0F39669883E3FA4CC776D09A3CE552DACC8A1490B6B0F478E4
            231F39B3BD54638F7F80FC9A0231D92D3985A92B5A93DA1B4212920398C25BE5
            9360761802A55A7A256C4EA41EBA4442098C448E938852D018C3D26C9D02A979
            137DFDFBC648EA0A8CA43E151B86D4BFF9CD6FA6DEBDB8A6B6962621359EA7BE
            8110B111D03C205DD72099796088C69861A821B59003DB622B905AB00772EA12
            E98ED7335D6702CF662EDBA696D425CF6169F9617B2CF9B610A4D6A78497C7EC
            9062BBEDB69B0E485B3DDA6CC7C0699B45E641E4BA67315C59F7F138D6873989
            8ECBB7A6B82515C8395230625D8BAC95881A5233A2BD1891D4D4266A512CD4C8
            9E611847F9F2673FFBD9648F3DF698D96EF6463A2F4F8AA38F3E3AEBA9AB25B5
            6BCF9197241B53E0C0F388311EF348CDBD1FC32518962AEEC6E0AD1CAA72144B
            311F3535219054BD8EB6423F2331E77C31B0A2BCE2034DE5A414424F730D8B4A
            28E52236B253440DA94B63E6A1D937363262100AD88F0901424FF5A589C1459A
            21912363EC07E49EA1FE2AB962362594C6C06C9CCB94C9ED3F8FD4941B056A52
            50D14C26718C7358F5C45B16B8EAA06D4B59095489823B985972B35409A5B263
            25E45ACECD432DA973A0205192A2A2218C97E3217E253548127AAACC720AC720
            955932B641ED4C5D428DF3651EA9BD90318EDBFE52BF64652D875527B5999AB1
            D276A6AE759397307492401FA4AE6D0EDA5792C0A291FA5EF7BAD74C1CB7999A
            E73057633C6224750123A9EB3192BA25A9B93F73A410F462DD3B14A96B136F73
            A1A7AE4DBD0EBF6B036A85989B988851227529F1D631ACC1736BEA1C2C55AC61
            BB92DAF22E57843307A43631E50C4B6B7CE1A711B9DA2A397426358D94975120
            52EABE64E18BFF88EBBD12A9A58BE90918B341E8E0B1B4019540BC82C0FCE54A
            0C3440E8DC80731D2B93108B233A7E0CEE2F0EE27F0D53B34B3AC31A0BEA89B5
            3C632E857309EEA7C634D7EF9EADA9C529472589A1282E3B12985262864DE327
            8C0DBB45A07D0C68F2D2346DB29BFDD936FC0034E6AEFD73BC18E4D4D450774C
            EB7E4A4D0AE323D140E45D342445DDA95C10C7CC5A3B1D6363E6F8F26653A5A7
            33A9E9D66422E4686EC6C99CC84D6EBDF5D64BF62F91DA8C2C03C5C5A5972438
            27A6021990534E39652AFBB4BDFCD24CCD62E74C886A847DCD8E6D4189D12263
            D3C0FEAF4E882548FC9A78E119425CD6CD0BEC3E3C38444F03C9A03453DB5F8C
            444AA226D5CD79A3D2E17CB25C52B846312208DFB53E8B89CD8B9C1EC735CA68
            12A414216BC5B9E3333CF0C0036796195E7E4E9C3474D6DF194B337E5AA2B833
            A9CD220819DF4433AC90D1E81C2891DA7A5495A3284F89DE8B9FF595A044EADA
            CC9712F41ACFA9343978718D8D86406D505B4BAF8452E6CBD0D877DF7DA71D09
            DAC26418DB3843AE7F8E2F3B55646EE8692D44D179A0D1D3584A122891DA31AC
            A32C4352D4BAC94BE8A33DC63C9859726967390C5D20B2845292C0D0C8B9C9E7
            A1F724815A8CA43E1523A9CBD830A4E6AA15361A5DD302A27C76DB92DA4DB411
            DC974389D4B9B04860F08823690B56792E432707EB4CB2DBCE3BEFDC6A7F8696
            F1E95A1848763C6FE36A43A60CA3BE2D4AA436B9E1540AEB77712EA99C3A436A
            D6F049279D349356E541D045A3EC5322B57DE99031520CA9C9383113A2446A86
            62EC6708BC65FA0E7635140F3DF4D0AC11635FB2580AE712B722623182B1A988
            631B887336368D12B11C3C0F4A819F6DC08866B847AFADA294392FA931F7458D
            862263D37122CE7BDEF3CE08004017CF15CF6414C7B5B0B1F4FC725ECF1CA919
            8A5E8EF8A5A1D11BFBF4ABD7BA3B9769DE36FD415294485D8B12A94BA87593D7
            EAD439781169E3B9AA45C26FDDC32240668A72136D9D2F029168F271C262B045
            7281172CB79CA05A503A227265C780AA655289C891BA065952F382C5A221D681
            B6C55A7A9B1BA9E5511AF4086BE43ED6FE7D80C2215AB12DA94B2DE74AA42E25
            DE8AC6CB05349548ED0B4CC68D1884D4350522D78AD443BBC973A84D12582BF4
            E526B76C88C9C7505B22A1B640E448EA91D43318499DA9FB419E8A6E4A9E2ADB
            62EDB6B52235E7488DE456CACAA8C17A2135D954CC49DBD80F72A1F4AFAEA4AE
            2DBA5E2235271CBB6EA598213537A7B756F39CB4E70B77260321D6C6436A6BC9
            B63DFE4A700CA48ED91AD406F543788E9AEB61D5536764BE34D7370F5CC11E72
            57D2D592DAFEB6532DA2EB3BC23D711BB367E21888E1205B997963564C8431E2
            E5B5468ED923148BA64D455ACE82FB9C072F1EBB96D402B762BB0BC777CEB42E
            07CC23B5389A9D76DA69939BDF4FE3E719B669CF32984E5D0BA4368871A6E67A
            CEA90A540896F3720F19DC621F7D675692786BC689DA6A09260C3A722EF45440
            53DB3E8A25E49C2FF3C6A696D439948E5F5B74DD731664B62AA1A7432F3F4865
            B91956BCB32A4AABD96A7A25A4A675B77578D466BED482B32796689E873E485D
            422DA95735F365685297DCE4666A0E8CAEE19235E8AB444209B54902B5A87593
            2F12A957354900A9B988739EA71AF0DDAB1214D3FAE72D3F689CCBAD55FBC43C
            52E7746AF6897885B6A4B6FC3053C71624B56D9C4BA8257549A75E0B523731F4
            AB32531B68753918745D20BCD49B184B6589A7C8653B0C59B4A68479A4CE6565
            6839612D1C3BDE9620365A5F9D581888D1EEC5F6B30B6A49CD73CA688B28395F
            6AB0924646EAF7311697C30CA93D0856ACF8E854FD10E7EC131897072CF217BD
            E845537D7BA5EB5B16B2E3B26CD3CC17FF2D36C08B93162FA41488295148C7F6
            E5DA75383E6BBA6BE5FE79A49624E0F84DB524330BF5C1BA3F2E1B7C4A7D462D
            379A6B778D2435B374DAEFC4FD79269677149FE5C6D8DAD304633288959B6AD7
            D4326814E74CCB4EF00BC8B8112B522A9510C75E54A600B714F348AD2C8694B6
            A6D26D93E1229FB14D1FCFAC4E8DBC6E280552DB16633FFA828760568B0FC20D
            E6663AB2A3D9BA2DB86F35D4E98279A4AE01C9CE3D29B89942A09408C618B8A4
            1482FDFD6C03E10C5497A853F7157A5A2A1059822848890229E6919A66CE79B4
            52643D8A74C53435093C08DBDAF651AC0583D08DA80495A254F7C3D243EC40DB
            1C4571D339C7400DFA2235BB81AAA3087A0A632F3C34F6206738FAF44603B204
            6A8B20A5B69D046A51AAA557C241071D34F312CC23B5654FCE406D8BC19A83D6
            A2AFF618250CED26AF412949C0575271C7681092F8E416E6CAF6E650DB1EA316
            B5A45E7337F948EA3246529F8A75476A034B3639E6986396ECC8F0F159541072
            089448CDA0CAF52D243789FD684BEA5299D91AF4456AC69CF88C5820926169D2
            884A12C38CF1AE84441B94EC13EBF5B6651FE6412C752E94B484DAD88FDE496D
            6089EEACEDB4C501C83268FCF0603D4B85302BC4780571197467C64FB33F0252
            38C844D18A371B2375AC55218386261D3BDE92BE7898620F1AD9241E68DA1CD4
            DF5A9B77CD4A9F476A6B58845CAE488F6B775DC6D2CF666CDC87DF359D67D3D2
            093C8DC64CC6491B88C3E1C8F22C9B67D89CA7C9D66FB6BB2706ABC9236AFEB2
            94C8AC51FD704D4DB3D636EA87E71153D75695D42530E018365CB62968AA6691
            A8AD2A70435B8DA5130C20833346849566EA5AD43632AAC13C52D764BE70CA78
            C98E3AEAA825DB4D1096075EE4214015B10489A84D1218DAF9B2B0A43EEEB8E3
            A61EB691D4B33083FA6A8CA45E6352D7B6C73053FBA4C50C680E0A0E80A148BD
            48ED314A708FF68DBD2A4BB11F7DA1B63DC65AC57EAC1AA93D0875A5A5EBA7D0
            16838E5C436A33750C44720C33465752331E73ED2BFA409FA436ABE7666AB11F
            4391DA6442078F50364ED2C56ACED420C7745574EA127C321132CA4DD410D676
            ECF95222B59E23B2D2A3A1E818A4C4AEA4562A2CD701A00FF4496A6BEAA84488
            FD309BB695EE6A512275299B7CC8D80FE0F6164610D13BA9C5171C79E4915359
            A9513D9A6287744F3251AA66C8A6F0A0B7DC72CB25072E915ACCC09E7BEE399D
            A91B0BDFF1ECEFB3136528B5F8907DB9F80EB7E11A59D91E52844F7D9321BF5C
            C280E39035A384D617A9DDA35A232688A62A2CB546E11F9FE4A8725084E8D427
            9F7CF2A6C9C0351A73AD24DAC6DC50B4545585E6D9526B7C81CDD651FD50AD55
            B7E1747F63E0BCFE2DF74C4A30FEFED6CBDD1494F4AF5153BCDCFC22CBC9B5F6
            357E312326AB539360E22CE28F8F3FFEF8D65DB84AA4AE05A2C452532B41A910
            64096690DD77DF7DC9B6B5CA51B4E46374EBCC9B827E2D584AAADD6AA236F6A3
            84DC1843A93E750E5E682104732B34F515FBD117A94B1EC55A9492424BC8D5D2
            5B2B5297D2B94C30AA42B5E958D5276A3D8A399899A5E3B5ED245082506589BA
            736BE9F5E5261F49DD1F6ADB630C8D3E485DDB1EA38456052247529F8A91D465
            2CD24CDD89D48C18753FDA3601ED8BD4A5D88F5AF4456A037EC41147CCEC2FDE
            59ECF71060B40B7E8A3121DCE75CE2ABBDA6AE8DFD284125D4BDF7DE7B66BBBC
            CE5C03D612F023CD5D9C21B5C072A48E1912B250C841DE8C141C0622E06275D3
            12A9CD2E025C62690301540C10153B537870ACF308921823235AECA4419FB508
            153F735546192462542272A466B17BB1A3C1D69C5715CF3630B38AEF8ED21D35
            4081C5781CF540A4CCF9990299BD4851FD30F666D3288FFACA2AE2D81634F35C
            2148C7C9B583AE81995A364C2EF14167DEB693A1E7AF6E099E6C3A76DB99BA04
            07634046D76E89D45CEDB1A22A3886E4D218D054022F18D76E74E220B4D4AA88
            52E869A954566DD175E46A5BDF0310267AF79059245DCC58A17208E0F2B30DBC
            6024C95C7B67CB95B630BEB9EE59A5AAA78B82CEA45E2B3779A9440217B9CAA4
            11EBA193C0A2C5530FE9261F1223A9475217B1D9925A9C82CF5D342045F3896F
            88EBCFBE482D70A9C9744E818C081F61AD9A23AF845C6BFC08013EB94F6F093E
            F76D9D44D6D4962AD68229780C7944A3CA514B6AE3AB3254EC7820A33E0651CD
            4389D4948F9A6E5BAB8DCEA4E60010AC6FC1DF1C0AD1781F157289167B2DA9E9
            9969F3CB06026DF4408C062729486C420A061E52E70A82233A52C73E8ADCC9B9
            B667D941FCEFFD22514C10B6DD97241A720C3E452FD3920DF63553F31CC6C4DB
            12A98D0937771C1BF68917DB4B928E0183BB6D0D1228917AAFBDF69A56905DE5
            66C953AF769B9080D6EA47093C3A1A337A5069AD0AB304634826470A0FD20B13
            3BE196325F940EB64410EB905EAA8A508C9E187F20C08AD291425C856DB99A11
            E2BE79E5E2605139DAF45841462F849937F63BA14E78C1186869868EAC11C672
            3A933ABFB81BD59C62B5D212A94D404A142376FAC5123B629CD331767E15A0A8
            286D5122B5EB1017DF26F3A50F3887C9CB17223EDBEC33E93A53D7A276A62EC5
            7E94EA7E5832F85D57384EAEE94F0D38AC7CC5622A13BDDBAC19DB3B975022B5
            193D17A66AED4CBB8D25DC6A5122F55AC15852C896C3C293BA369BBCAF2401C7
            E9FA728897E1ED8AB3632949A08412A95541F51588918D8C4D0561A2EFA0168B
            44EA4E05224752FFFFE38CA41E49DD0A9C0B0C99B8A6466A31BDB1425389D454
            0E159AD62BA919841C2A6D80CC3EBD71A9A160243B2166B023354334F5B2AD04
            BCAD6D8DE5A181D4AA9EB689AF5975527B088CB3080692071DCB887940394F1D
            9503F1862275292BA30625523386DD57DB66A29215282B0A62A6E0818CDB80FE
            6DFF5841B616E22FC4612C0290DAC417DB6CE4D059FD28810A21CE2066717869
            CC00B11B2BE78D0C863883CBD6408C080F94161ED58FDA6C72117772F1224892
            31139E054ECDC8D50F2117C6A29A2552BB774662FC2A21BBE0FB28835251C4AD
            C4C025C767D0C6F8170E2F337B549E6AE159E526A05AC84524EFA6403BD57265
            59B50185C918C88A49D1C4D1A4C536079BA95D804285D102978D9EAB9C6AE6E2
            C489D21AEF589BB7B341ED4CAD1A675B4782174ECA99F189101A8A48294AA42E
            0109D91C31B9B904125DAE6DB2B5BA5894B8D65E2B083145EC0831244D7A5917
            2C1BA5D717A92D334871D1D3284D4C204F5C07D6B6C728A196D42537790E486D
            49B2DB6EBBCDFC2EE726AF2575C94D5E42299EBAB68FE2D0A8ADA557834EF1D4
            B518493D92BAC19A93BA5474BD16069C4B5636780AB52EC42044789872CD2423
            A4F062B4E9F3D1A0D6F9524B6AE517488F119C02717D3834A94D183CAB31FE85
            BAE42593A9BD085873522BEC482AEB4A6A32148F9C2482142C7E5F025EB5062E
            C1C33CF8E08367D6E05CEDB24D962B6BD0FCDEC3E44E6DDB371149AD935383D3
            BADE2C17131658E0E2442426A7C3E65CEA8D982153F4456A062A792E2D2BC170
            32B65EE0D4B8765D666F593EA4C3E63AED6F8DED4B1CC10055F2A0295E598B66
            AC19BEB97878C91FB9789C12A9198378D088094D4905DC8C76422B528B1130B8
            8C969536D47448CE153541A2658ECCACFB9444F6273F317C6260919B60CDB721
            B5BFB50450B97EB9AE5D4DD34A2F8C7FA91AE3DACD2C5175B13F72897389A4A6
            C644B5A196D40887D4314A4FB098876FA268244CF7675C4C4069EC87FBA00428
            5D8CA84DCC8917832ECE1710417512A024702C56916D83E699E996960B499550
            C0284C318FD49E9FE5534360C7C71BF71A7B527A16C6386D22D5B93BD7A2A114
            7A5AC201071C30D97FFFFD67B64B15EB5A68B2AF995A531FCBB098FA64E9214A
            321291CDC251119772481D5B7200AFA1A2357142A985A849015611B5CB0FB655
            EEE5CB2DF15ACDD4EB1DA52481124AA41ED2A358426D9240AD9BBCB640642D4A
            A9717D7412F085A275C7E0B691D4198CA41E49BDF0E88BD452B9BA169AAC25B5
            A07ECA90B207292C31489BB1E45B5FCB8FA1495D2A85500A45E0E55523300552
            5B7EC4440C46B27B4D65DF195233340CAA00F6AE6BACA1C02862D408F089398A
            A535356B3A6DE161A6707F666432604A0C46959E8B3C8469535243A559A960FE
            362891DAB99B629BCD18FBC9BAF7F091B5D9EEBAACA5A92E420F9AEB745D52E5
            5C7B7A1CCF4FF902399969114786254F23E52642D092718BA4769FAEA919F3E6
            7AF812A23F01189BB1B70BC83A5214B4F9A2340547913D6DBFD15C2B2F6374AB
            23B54242A9D7D9313C57066AFA059A213559C6625F7780AE6FEE1068BA9FD2C1
            C50E50585294666A6513A421417ACBE23E44B44549CFFE623C9A87E9270B9CAE
            ED41B44189D4F4632F9E5A27E9F1110531D27B72AD625068E97EA6921EB5E890
            430E59F262DB5FD2B3869C9E652AE9516772F5344A33B5C28BB110A4E39908A8
            2B11A5995AFC8F7F4DB05A4362AEF35CD41DA932D69769C681CC9A4E325E56FB
            A70EA819529BA1599E48BDC8505085CF3F760B2B91DACC9BCB512C395F2C3D68
            CF11C8D8B6A8FBBC283DB11952C6E2FEB6A56569415A99F897985E26422F4752
            CE17648969612594484D11C9794FBDF026948812A94B28553DED8A2CA92DD2DB
            A6FBAF05CCA4DCF08CA74880214B24D4B69CAB4D1228B5C7A8ADA557EB26EFAB
            3D460DA9E71588EC8A75496A9F1C917E23A94752E7B0D993DADAD0FA3362AD96
            1F481AE3652C3BC8740CC814A5E5879745C98658BEAC84CD76F9C11851CBCD02
            7E3554C0C618703DF4DB549DE893D4E24DCC18A91BDE2C424345BC540162819B
            D949486D30CF50748D489D1A8AF6A77298B15363888124E1C2CFB4B60A43D1F5
            A786A2EDA43BB116949A3628919AF7AE31149BEB61A8FA82D51A8AC20BD25004
            C7334B8BCE4CC7DEFD31946331CC1AB426B5D9C3009A31DCD8D0C44626374B9D
            2013A51167F3485D92F4101AB1239A209C94BC243D4B12C78F929EF1E94BD213
            B311253DD2574ED243183F5349CF7EBE26A9A4E75AFD3F42B78DE328497AD492
            92A4173B1C4349D2E307C8497A6242A48C45490FCFA2A45783D6A4966EE56D56
            B8663581D43E776996799F337509EBD9F9528BF5E07CA9416B529B251066A8C2
            E22558D71990D526F57A7693D7623DB8C96B3092BA8091D4F51849DD129B13A9
            DDA384E558299683499988E8681297DEB65DC93C88276FFA257641A9170CA524
            57089F3CAA9F64042931975DD4161B8ED4B5866209395233CE902E8DC1689213
            78F1A284562275532092B19826339871D5B688A513C437E4DA63F0181A83586E
            2287269B27977BAAED09D2090E5A49C3CFC6D0D30B27D780487C4ACC7602D2A3
            3217B9EB49EB9DA3A8EB178CD5A6404F675293A5BA2CEA531894F8895DA499DA
            43176CC32111335F76D9659799D08212A991D6FEA4B75475F1C0E469C602F62A
            3121869F299A16DA82BB96836BD4F197841641ED716F2B4DE76A40F28CC46DC6
            CDD2267D619C8B7C996B132D46C73834704D644BC903698869F15EBB92BAD4EF
            7A2550E065871D7658B26DD148ED4B90F3B249898A5DC4E67914054B69D89342
            6E1EA2E7488D8C3952AB7CBA5CEA5A8352E8E95AC17ADA1224C2F85A824408B0
            32CECBA133A9BDFD4AC7F601B37EECA0B568A4EEA344C2D06EF2124A49026B81
            DAE6A09D0A448EA43E1523A987C548EA1E484D6ECAB9764B10EB1BE5A6DAB263
            3C6FC631D63931E4966CD1681386A0D80FF7778A5273D052D9B1122C77D2961C
            6B09A4E6DCCAD963B90965247586D4EEA946FBE4C28D25841954AE255720922B
            38D64A51F641D6476CE9C0CD2EB63B5AFED2AFD4F58BFD12B9F1DD6BACA9E14B
            60566BBBA656C621D708D58B21B1202A1FBE1C74F0080156F1AB013892EB6CE0
            3E633016C395E2922B54640C626F9A91D415398AEB01E26E18E4317A4F8053DB
            86A16096CE15294216F11FB1149C593417662BDB462C478460AF5CABEC522464
            0D46526F30529BFD58FE6D8BAE9750EAA3482A13EB128FC3019253214A4E16E4
            B5CC8BE04DECDA217724F50623755F6EF212A911D73A7624F5FF30927A788CA4
            DECC494DB1C815F85ECF708F9E873619294A2DE74A28919AA293532176DD75D7
            69A67D8478E75C28E9D0A456C8A64D1CCD8623B5C01F95EB9753049AA077ED1F
            58FE11643884893D68DAA2296A88446DD3AAB8923D34B11E8D12E1A7B42D3363
            AC20EBB8B139A8FB66407A2E71E6D5CF31D7F644DC8AC0A234690118A11A4FA5
            6866CC5C4B110902B996D8B270C4547781FBF272B89E26EEC6D89059DD572A83
            6E38520BEE1183D0B662AB0C97DCEC62C6E764E9120BE19AA90AB1C46F091E0C
            1971FBEDB7DFB4CDF911CDC38BF794B6714ED3C2540625F535592B0D4A333592
            18B3F438C07114DDD8AEC5BEB9977DC8991ABC509E7DF34CFC14E4658994CEE0
            1B8ED4B52041E53C8D6A6BE73C8735A04773CAB4ED072E37CF4C1A633F6A81B8
            BA6AC56CF212A94B508FAF2604746852E7E0EB2667340DD4DAEC495D5322A116
            AE19B9B4D36B83929BBC16A51209B5A4AE6D0EBA16A46E55207224F5A970AFB9
            DEE735902CAC5441AE0F640E7D91DAF243CD3C398F29F443B77E6E8BDA99DAFA
            5EF26DC490A416F72279B7D7995AFB8ABE9271C526A4FDF060AD48ADE07A4DF1
            F61CD47D53A9B3ED9ABA2F527B26E2B5638904F12326A1B6A07CE48A9F97A07D
            5FCE733824A9C592335C7B25B518809A0226F340FF8C294B7D91DA836EC8D564
            6A406358A6FD1B195F66A8F882CD83594D8C43731C0615EB9C41E51CCDF6A684
            012F9E588C14B5A4F6ACA816A9616C6C9A73A6E7650C8A5DF10FE619C08EE5EF
            C4B7E71AB352869ACFBDE334C732B9A56D2A1AE4D40FE7507E5785D646E969EE
            C11A393625753D02C98C4DB3BF7BD2AFC68B9766DA6FB874AE12C84DB94F63A9
            3E752D24CCC67E24AED37A3A867B229BFDE352A096D41274A343064A6D9CC57D
            ECB8E38E9DEFB5B4762E2137537BE9D92DB92A58B9F2149DDA386F5452533872
            C1367D917AC878EA12FAEA24508B522DBD79FBE748BDB0F1D4436324751923A9
            F3A822B5CF454D9FF03E3092BA8C79A466E4C5CC6BCB1DDEB7AE580B52B305AC
            B57B253587801801B2D06AC2C311CB9106C8AF84D40A2C0AD88FA8CD88296191
            48ED7C66B5588D5F560DC3AC2B4AD2DDBCFDB5A34B318FD4624E541688905944
            4D5A0EAD492D1E816C1203D587C6F1C71F3F35B6D2D4FB79A446142F9F7D1A6B
            9AE54CCA8A240246950CEB34EB83FAA12441AEDD74096B456ABA7E6C4A2A56C4
            F1198A693B0DE96039B2D4822AD45410582E8CA03196B50249318FD40C42CFBD
            516E9A3618081DD5B11C365C7D6A12572EEDBE16B53AF522CDD4EB0163D1F580
            79A446C63E0A79D77A144752D7612475C06A2409D4C67E8CA4AEC3AA939A372D
            36615C3420B54AF7718DB5563335EF58CC3E67A8894B88D9E748CD3E39EAA8A3
            966CA75688D2AB21B571E0515C8F10F73E44424796D4BC3C669DB631C9AB0DF2
            8E9673EAAD45C3753D939AAECC9D5F436A89B7B9FA75EB01AB466A03E41378E2
            89276E8A1348B1165D9F634F1056B14FBB3883E80A3EF6D863A7D24FAA7ED482
            FAA13D43AEE645095485134E3861538D67AE7071098E139748C658FD0D632CF8
            BFD9DF3D492AC87593CD81CCC99DEC788BDA9D3887A6DBB0173BD644E9031BAE
            37F9881123A9476C38FC3F1A2136E2F68D09D10000000049454E44AE426082}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
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
    ReportOptions.CreateDate = 44089.754742951400000000
    ReportOptions.LastChange = 46199.500575219910000000
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
          Left = 398.740415000000000000
          Top = 7.559060000000000000
          Width = 249.448980000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'List of weighing tickets')
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
            'No.')
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
            '1. measure')
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
            '2. measure')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'License plates')
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
            'Gross')
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
            'Tare')
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
            'Calc.Net')
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
            'Pcode')
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
            'Product')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 733.228820000000000000
          Width = 117.165430000000000000
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
            'Direction')
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
            'Note')
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
          Top = 18.897650000000000000
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
            'IN:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 5.559060000000000000
          Top = 37.795300000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'OUT:')
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
    Left = 832
    Top = 48
  end
  object ModScriptDialog: TFDGUIxScriptDialog
    Provider = 'Forms'
    Options = [ssCallstack, ssConsole]
    Left = 832
    Top = 104
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
  end
  object frxKeszlet: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44224.592448159710000000
    ReportOptions.LastChange = 45507.360635949100000000
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
        Top = 16.000000000000000000
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
        Top = 76.000000000000000000
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
          Left = 634.488560000000000000
          Top = 0.755905510000000000
          Width = 74.488250000000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 296.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Partner n'#233'v')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 504.000000000000000000
          Top = 2.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'T'#225'rol'#243)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 160.000000000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDKeszlet
        DataSetName = 'frxDBDKeszlet'
        RowCount = 0
        Stretched = True
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
          Width = 160.630180000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'Term_nev'
          DataSet = frxDBDKeszlet
          DataSetName = 'frxDBDKeszlet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKeszlet."Term_nev"]')
        end
        object frxDBDKeszletmenny: TfrxMemoView
          AllowVectorExport = True
          Left = 634.709030000000000000
          Top = 2.000000000000000000
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
        object frxDBDKeszletPartner_nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 292.000000000000000000
          Top = 2.000000000000000000
          Width = 188.000000000000000000
          Height = 16.000000000000000000
          StretchMode = smMaxHeight
          DataField = 'Partner_nev'
          DataSet = frxDBDKeszlet
          DataSetName = 'frxDBDKeszlet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKeszlet."Partner_nev"]')
        end
        object frxDBDKeszletTarolo_nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 504.000000000000000000
          Top = 2.000000000000000000
          Width = 80.000000000000000000
          Height = 16.000000000000000000
          DataField = 'Tarolo_nev'
          DataSet = frxDBDKeszlet
          DataSetName = 'frxDBDKeszlet'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKeszlet."Tarolo_nev"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 36.000000000000000000
        Top = 252.000000000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 637.000000000000000000
          Top = 8.000000000000000000
          Width = 76.000000000000000000
          Height = 20.000000000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #214'SSZESEN: [SUM(<frxDBDKeszlet."menny">,MasterData1)]')
          ParentFont = False
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
    Left = 616
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
    Top = 288
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
    ReportOptions.LastChange = 45454.392347500000000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 664
    Top = 240
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
    Left = 760
    Top = 48
  end
  object HardverDS: TDataSource
    DataSet = HardverQ
    Left = 765
    Top = 103
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
  object dijkatQ: TFDQuery
    Connection = Kapcs
    Left = 824
    Top = 480
  end
  object CsatGongyQ: TFDQuery
    Connection = Kapcs
    Left = 1008
    Top = 504
  end
  object mtPLC_Feladat: TJvMemoryData
    FieldDefs = <
      item
        Name = 'tort'
        DataType = ftBoolean
      end>
    Left = 920
    Top = 48
    object mtPLC_FeladatSorszam: TAutoIncField
      FieldName = 'Sorszam'
    end
    object mtPLC_FeladatIPCim: TStringField
      FieldName = 'IPCim'
      Size = 15
    end
    object mtPLC_FeladatPort: TIntegerField
      FieldName = 'Port'
    end
    object mtPLC_FeladatIO: TIntegerField
      FieldName = 'IO'
    end
    object mtPLC_FeladatTipus: TStringField
      FieldName = 'Tipus'
      Size = 1
    end
    object mtPLC_FeladatMuvelet: TStringField
      FieldName = 'Muvelet'
      Size = 1
    end
    object mtPLC_FeladatErtek: TSmallintField
      FieldName = 'Ertek'
    end
  end
  object mtRD_Feladat: TJvMemoryData
    FieldDefs = <
      item
        Name = 'tort'
        DataType = ftBoolean
      end>
    Left = 920
    Top = 104
    object AutoIncField1: TAutoIncField
      FieldName = 'Sorszam'
    end
    object StringField1: TStringField
      FieldName = 'IPCim'
      Size = 15
    end
    object IntegerField1: TIntegerField
      FieldName = 'Port'
    end
    object IntegerField2: TIntegerField
      FieldName = 'IO'
    end
    object StringField2: TStringField
      FieldName = 'Tipus'
      Size = 1
    end
    object StringField3: TStringField
      FieldName = 'Muvelet'
      Size = 1
    end
    object SmallintField1: TSmallintField
      FieldName = 'Ertek'
    end
  end
  object gongyQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from gongyoleg ORDER BY nev ASC')
    Left = 920
    Top = 408
  end
  object gongyQDs: TDataSource
    DataSet = gongyQ
    Left = 920
    Top = 464
  end
  object mem_csatgongy: TJvMemoryData
    FieldDefs = <>
    OnCalcFields = mem_csatgongyCalcFields
    Left = 920
    Top = 512
    object mem_csatgongyg_id: TIntegerField
      FieldName = 'g_id'
    end
    object mem_csatgongyg_nev: TStringField
      FieldName = 'g_nev'
      Size = 50
    end
    object mem_csatgongyg_tomeg: TFloatField
      FieldName = 'g_tomeg'
    end
    object mem_csatgongyg_menny: TFloatField
      FieldName = 'g_menny'
    end
    object mem_csatgongyelso: TBooleanField
      FieldName = 'elso'
    end
    object mem_csatgongyossztomeg: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ossztomeg'
      Calculated = True
    end
  end
  object mem_csatgongyDs: TDataSource
    DataSet = mem_csatgongy
    Left = 920
    Top = 560
  end
  object mam_csovon: TJvMemoryData
    FieldDefs = <>
    OnCalcFields = mem_csatgongyCalcFields
    Left = 832
    Top = 536
    object IntegerField3: TIntegerField
      FieldName = 'g_id'
    end
    object StringField4: TStringField
      FieldName = 'g_nev'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'g_tomeg'
    end
    object mam_csovong_menny_1: TFloatField
      FieldName = 'g_menny_1'
    end
    object mam_csovonossztomeg_1: TFloatField
      FieldName = 'ossztomeg_1'
    end
    object mam_csovong_menny_2: TFloatField
      FieldName = 'g_menny_2'
    end
    object mam_csovonossztomeg_2: TFloatField
      FieldName = 'ossztomeg_2'
    end
  end
  object frxDBmam_csovon: TfrxDBDataset
    UserName = 'frxDBmam_csovon'
    CloseDataSource = False
    DataSet = mam_csovon
    BCDToCurrency = False
    Left = 640
    Top = 408
  end
end
