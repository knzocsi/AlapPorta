object AF: TAF
  OldCreateOrder = True
  OnCreate = DataModuleCreate
  Height = 514
  Width = 912
  object ForgalomDS: TDataSource
    DataSet = ForgalomQ
    Left = 189
    Top = 95
  end
  object ForgalomQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'SELECT *'
      'FROM forgalom'
      'ORDER BY Datum desc, Ido desc')
    Left = 184
    Top = 40
  end
  object Forgalom_Timer: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = Forgalom_TimerTimer
    Left = 272
    Top = 40
  end
  object ForgTimT: TFDTable
    Connection = Kapcs
    UpdateOptions.UpdateTableName = 'stadler.forgalom'
    TableName = 'stadler.forgalom'
    Left = 272
    Top = 96
  end
  object ForgTimQ: TFDQuery
    Connection = Kapcs
    Left = 272
    Top = 160
  end
  object ParositottT: TFDTable
    Connection = Kapcs
    UpdateOptions.UpdateTableName = 'stadler.parositott'
    TableName = 'stadler.parositott'
    Left = 352
    Top = 40
  end
  object ParositottQ: TFDQuery
    Connection = Kapcs
    Left = 352
    Top = 96
  end
  object ParositottDS: TDataSource
    DataSet = ParositottQ
    Left = 352
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
    Left = 64
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
    Left = 64
    Top = 96
  end
  object FelhaszQDs: TDataSource
    DataSet = FelhaszQ
    Left = 64
    Top = 144
  end
  object Q1: TFDQuery
    Connection = Kapcs
    Left = 120
    Top = 40
  end
  object felhasznalok_jogaiDs: TDataSource
    DataSet = felhasznalok_jogai
    Left = 64
    Top = 256
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
    ReportOptions.LastChange = 44466.488320995370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnAfterPrint = frxmerlegAfterPrint
    Left = 640
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
            'Merlegjegy')
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
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'r'#233'st v'#233'gz'#337':')
          ParentFont = False
        end
        object memtulaj: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 60.472480000000000000
          Width = 302.362400000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
          Left = 419.527830000000000000
          Top = 59.897650000000000000
          Width = 294.803340000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 277.535560000000000000
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
          Top = 277.535560000000000000
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
          Top = 277.535560000000000000
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
          Top = 277.535560000000000000
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
          Top = 299.787570000000000000
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
          Left = 163.519790000000000000
          Top = 299.787570000000000000
          Width = 181.417440000000000000
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
          Top = 366.126160000000000000
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
          Top = 366.023810000000000000
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
          Top = 366.126160000000000000
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
          Top = 366.126160000000000000
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
          Top = 366.126160000000000000
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
          Top = 366.126160000000000000
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
          Left = 359.055350000000000000
          Top = 298.874150000000000000
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
          Top = 298.874150000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 255.535560000000000000
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
          Top = 255.535560000000000000
          Width = 608.504330000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 322.700990000000000000
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
          Top = 322.622047240000000000
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
          Top = 322.622047240000000000
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
          Top = 322.622047240000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 233.653680000000000000
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
          Top = 233.653680000000000000
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
          Top = 233.330860000000000000
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
          Top = 233.330860000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
        end
        object Memo21: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 343.937230000000000000
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
        object Memo22: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 185.196970000000000000
          Top = 343.937230000000000000
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
        object Memo23: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 343.937230000000000000
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
        object Memo24: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 343.937230000000000000
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
          Top = 343.937230000000000000
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
          Top = 343.937230000000000000
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
          Top = 343.937230000000000000
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
          Top = 343.937230000000000000
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
        object Memo25: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 390.071120000000000000
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
        object Memo26: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 412.748300000000000000
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
        object Memo27: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 286.464750000000000000
          Top = 390.071120000000000000
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
        object Memo28: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 390.071120000000000000
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
          Top = 389.291590000000000000
          Width = 94.488250000000000000
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
          Left = 400.630180000000000000
          Top = 389.291590000000000000
          Width = 94.488250000000000000
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
          Left = 619.842920000000000000
          Top = 389.291590000000000000
          Width = 94.488250000000000000
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
          Top = 321.260050000000000000
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
          Top = 321.260050000000000000
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 57.354360000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#233'r'#233'st v'#233'gz'#337':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 57.354360000000000000
          Width = 302.362400000000000000
          Height = 37.795300000000000000
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
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307360000000000000
          Top = 56.779530000000000000
          Width = 294.803340000000000000
          Height = 37.795300000000000000
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
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 274.417440000000000000
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
          Top = 274.417440000000000000
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
          Top = 274.417440000000000000
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
          Top = 274.417440000000000000
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
          Top = 296.669450000000000000
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
          Left = 167.299320000000000000
          Top = 296.669450000000000000
          Width = 181.417440000000000000
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
          Top = 363.008040000000000000
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
          Top = 362.905690000000000000
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
          Top = 363.008040000000000000
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
          Top = 363.008040000000000000
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
          Top = 363.008040000000000000
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
          Top = 363.008040000000000000
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
          Left = 362.834880000000000000
          Top = 295.756030000000000000
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
          Top = 295.756030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memirany.text]')
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 252.417440000000000000
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
          Top = 252.417440000000000000
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
          Top = 319.582870000000000000
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
          Top = 319.503927240000000000
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
          Top = 319.503927240000000000
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
          Top = 319.503927240000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memtermnev.text]')
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Top = 230.535560000000000000
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
          Top = 230.535560000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[memszallev.text]')
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 27.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxpsz.text]')
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 13.118120000000000000
          Top = 230.212740000000000000
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
          Top = 230.212740000000000000
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
          Top = 340.819110000000000000
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
        object Memo66: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 340.819110000000000000
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
        object Memo67: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 340.819110000000000000
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
        object Memo68: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 340.819110000000000000
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
        object Memo69: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 340.819110000000000000
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
          Top = 340.819110000000000000
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
          Top = 340.819110000000000000
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
          Top = 340.819110000000000000
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
        object Memo73: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 386.953000000000000000
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
        object Memo74: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 409.630180000000000000
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
        object Memo75: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 290.244280000000000000
          Top = 386.953000000000000000
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
        object Memo76: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 386.953000000000000000
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
        object Memo78: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 386.173470000000000000
          Width = 94.488250000000000000
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
        object Memo80: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 404.409710000000000000
          Top = 386.173470000000000000
          Width = 94.488250000000000000
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
        object Memo81: TfrxMemoView
          Tag = 1
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 386.173470000000000000
          Width = 94.488250000000000000
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
          Top = 318.141930000000000000
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
          Top = 318.141930000000000000
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
      end
    end
  end
  object SszQ: TFDQuery
    Connection = Kapcs
    Left = 504
    Top = 40
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
    ReportOptions.LastChange = 44454.729961631940000000
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
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Height = 18.897650000000000000
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
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Partner')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 948.662030000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 166.299320000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 109.606370000000000000
        Top = 268.346630000000000000
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
      'Storno=Storno'
      'rendszam=rendszam'
      'rendszam2=rendszam2'
      'P_id=P_id'
      'p_kod=p_kod'
      'p_nev=p_nev'
      'p_cim=p_cim'
      'termek_id=termek_id'
      'termek_kod=termek_kod'
      'termek_nev=termek_nev'
      'szallitolev=szallitolev'
      'megjegyzes=megjegyzes'
      'tomegbe=tomegbe'
      'tomegki=tomegki'
      'brutto=brutto'
      'tara=tara'
      'netto=netto'
      'sznetto=sznetto'
      'erkdatum=erkdatum'
      'erkido=erkido'
      'tavdatum=tavdatum'
      'tavido=tavido'
      'felhasznalo=felhasznalo'
      'irany=irany')
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
    Left = 640
    Top = 184
  end
  object merlegkezQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from merlegelok ORDER BY nev ASC;')
    Left = 128
    Top = 96
  end
  object merlegkezQDs: TDataSource
    DataSet = merlegkezQ
    Left = 128
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
    Left = 624
    Top = 48
  end
  object ModScriptDialog: TFDGUIxScriptDialog
    Provider = 'Forms'
    Options = [ssCallstack, ssConsole]
    Left = 624
    Top = 96
  end
  object KeszletQDs: TDataSource
    DataSet = KeszletQ
    Left = 184
    Top = 248
  end
  object KeszletQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'select * from keszlet_nezet')
    Left = 184
    Top = 200
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
    Top = 240
    ParamData = <
      item
        Name = 'R'
        ParamType = ptInput
      end>
  end
  object Automentes: TTimer
    Enabled = False
    OnTimer = AutomentesTimer
    Left = 376
    Top = 352
  end
  object FoglaltQ: TFDQuery
    Connection = Kapcs
    Left = 504
    Top = 88
  end
  object KeszletezesProc: TFDStoredProc
    Connection = Kapcs
    StoredProcName = 'keszletezes'
    Left = 349
    Top = 239
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
    Top = 296
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
    Left = 504
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
    Left = 568
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
    Left = 736
    Top = 96
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
    Left = 736
    Top = 40
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
    Left = 53
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
end
