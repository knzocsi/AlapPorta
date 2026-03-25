object rak_szall_listF: Trak_szall_listF
  Left = 0
  Top = 0
  Caption = 'List of inter-warehouse '#13#10#13#10'delivery note'
  ClientHeight = 473
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 164
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 120
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Date from:'
    end
    object Label2: TLabel
      Left = 280
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Date to:'
    end
    object Label3: TLabel
      Left = 28
      Top = 43
      Width = 69
      Height = 13
      Caption = 'Sender partner:'
    end
    object Label4: TLabel
      Left = 560
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Sender storage:'
    end
    object Label5: TLabel
      Left = 28
      Top = 81
      Width = 79
      Height = 13
      Caption = 'Receiver partner:'
    end
    object Label6: TLabel
      Left = 560
      Top = 81
      Width = 71
      Height = 13
      Caption = 'Receiver storage:'
    end
    object Label10: TLabel
      Left = 28
      Top = 123
      Width = 39
      Height = 13
      Caption = 'Product:'
    end
    object btnkilepes: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object piKezdoDatum: TDateTimePicker
      Left = 120
      Top = 22
      Width = 113
      Height = 21
      Date = 43587
      Time = 0.773554583327496000
      TabOrder = 1
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 280
      Top = 22
      Width = 105
      Height = 21
      Date = 43587
      Time = 0.774182199071220000
      TabOrder = 2
      OnChange = piKezdoDatumChange
    end
    object Button2: TButton
      Left = 408
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Print list'
      TabOrder = 3
      OnClick = Button2Click
    end
    object btnnzomtatas: TButton
      Left = 560
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Print again'
      TabOrder = 4
      OnClick = btnnzomtatasClick
    end
    object btnstorno: TButton
      Left = 704
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Storno'
      TabOrder = 5
      OnClick = btnstornoClick
    end
    object k_partnerlookup: TJvDBLookupCombo
      Left = 28
      Top = 57
      Width = 501
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'combo'
      LookupSource = k_partnerQDs
      TabOrder = 6
      OnChange = piKezdoDatumChange
    end
    object k_tarololookup: TJvDBLookupCombo
      Left = 560
      Top = 57
      Width = 145
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = k_taroloQDs
      TabOrder = 7
      OnChange = piKezdoDatumChange
    end
    object f_partnerlookup: TJvDBLookupCombo
      Left = 28
      Top = 96
      Width = 501
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'combo'
      LookupSource = f_partnerQDs
      TabOrder = 8
      OnChange = piKezdoDatumChange
    end
    object f_tarololookup: TJvDBLookupCombo
      Left = 560
      Top = 96
      Width = 145
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = f_taroloQDs
      TabOrder = 9
      OnChange = piKezdoDatumChange
    end
    object termeklookup: TJvDBLookupCombo
      Left = 28
      Top = 136
      Width = 501
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'kod;nev;'
      LookupSource = TermekekQDs
      TabOrder = 10
      OnChange = piKezdoDatumChange
    end
    object chktort: TCheckBox
      Left = 560
      Top = 140
      Width = 74
      Height = 17
      Caption = 'Broken seed'
      TabOrder = 11
      OnClick = piKezdoDatumChange
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 164
    Width = 860
    Height = 268
    Align = alClient
    DataSource = rakszallQDs
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'Sorszam'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datum'
        Title.Caption = 'D'#225'tum'
        Width = 14
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Storno'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K_Kod'
        Title.Caption = 'Sender Partner code'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K_Nev'
        Title.Caption = 'Sender Parner name'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'k_tarolo_nev'
        Title.Caption = 'Sender storage'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V_Kod'
        Title.Caption = 'Receiver partner code'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V_Nev'
        Title.Caption = 'Receiver partner name'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v_tarolo_nev'
        Title.Caption = 'Receiver storage'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_kod'
        Title.Caption = 'Prod.code'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'Prod. name'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mennyiseg'
        Title.Caption = 'Quantity'
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tort'
        Title.Caption = 'Broken seed'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Felhasznalo'
        Title.Caption = 'User'
        Width = 79
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 432
    Width = 860
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object rakszallQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from  rak_szall_lista_nezet')
    Left = 752
    Top = 256
    object rakszallQID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object rakszallQSorszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Sorszam'
      Origin = 'Sorszam'
    end
    object rakszallQEv_ssz: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Ev_ssz'
      Origin = 'Ev_ssz'
    end
    object rakszallQEazon: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Eazon'
      Origin = 'Eazon'
      Size = 30
    end
    object rakszallQStorno: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Storno'
      Origin = 'Storno'
      Size = 15
    end
    object rakszallQK_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'K_ID'
      Origin = 'K_ID'
    end
    object rakszallQK_Kod: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'K_Kod'
      Origin = 'K_Kod'
      Size = 15
    end
    object rakszallQK_Nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'K_Nev'
      Origin = 'K_Nev'
      Size = 80
    end
    object rakszallQK_Cim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'K_Cim'
      Origin = 'K_Cim'
      Size = 100
    end
    object rakszallQk_tarolo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'k_tarolo_id'
      Origin = 'k_tarolo_id'
    end
    object rakszallQk_tarolo_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'k_tarolo_nev'
      Origin = 'k_tarolo_nev'
      Size = 50
    end
    object rakszallQV_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'V_ID'
      Origin = 'V_ID'
    end
    object rakszallQV_Kod: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'V_Kod'
      Origin = 'V_Kod'
      Size = 15
    end
    object rakszallQV_Nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'V_Nev'
      Origin = 'V_Nev'
      Size = 80
    end
    object rakszallQV_Cim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'V_Cim'
      Origin = 'V_Cim'
      Size = 100
    end
    object rakszallQv_tarolo_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'v_tarolo_id'
      Origin = 'v_tarolo_id'
    end
    object rakszallQv_tarolo_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'v_tarolo_nev'
      Origin = 'v_tarolo_nev'
      Size = 50
    end
    object rakszallQdatum: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datum'
      Origin = 'datum'
    end
    object rakszallQFelhasznalo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Felhasznalo'
      Origin = 'Felhasznalo'
      Size = 50
    end
    object rakszallQmegjegyzes: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'megjegyzes'
      Origin = 'megjegyzes'
      Size = 200
    end
    object rakszallQrt_id: TFDAutoIncField
      FieldName = 'rt_id'
      Origin = 'rt_id'
      ReadOnly = True
    end
    object rakszallQtermek_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'termek_id'
      Origin = 'termek_id'
    end
    object rakszallQtermek_kod: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'termek_kod'
      Origin = 'termek_kod'
      Size = 30
    end
    object rakszallQtermek_nev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'termek_nev'
      Origin = 'termek_nev'
      Size = 100
    end
    object rakszallQmennyiseg: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'mennyiseg'
      Origin = 'mennyiseg'
      Precision = 12
      Size = 2
    end
    object rakszallQtort: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'tort'
      Origin = 'tort'
    end
  end
  object rakszallQDs: TDataSource
    DataSet = rakszallQ
    Left = 752
    Top = 304
  end
  object k_partnerQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from partner_combo order by nev ASC')
    Left = 48
    Top = 50
  end
  object k_partnerQDs: TDataSource
    DataSet = k_partnerQ
    Left = 104
    Top = 50
  end
  object k_taroloQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from tarolok order by nev ASC')
    Left = 576
    Top = 50
  end
  object f_taroloQDs: TDataSource
    DataSet = f_taroloQ
    Left = 624
    Top = 50
  end
  object k_taroloQDs: TDataSource
    DataSet = k_taroloQ
    Left = 632
    Top = 90
  end
  object f_taroloQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from tarolok order by nev ASC')
    Left = 576
    Top = 90
  end
  object f_partnerQDs: TDataSource
    DataSet = f_partnerQ
    Left = 104
    Top = 90
  end
  object f_partnerQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from partner_combo order by nev ASC')
    Left = 48
    Top = 90
  end
  object TermekekQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select id,kod,nev from termek order by nev ASC')
    Left = 160
    Top = 130
    object TermekekQid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TermekekQkod: TWideStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'kod'
      Origin = 'Kod'
      Size = 30
    end
    object TermekekQnev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nev'
      Origin = 'Nev'
      Size = 100
    end
  end
  object TermekekQDs: TDataSource
    DataSet = TermekekQ
    Left = 200
    Top = 130
  end
  object frxDBDRakszall: TfrxDBDataset
    UserName = 'frxDBDRakszall'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'Sorszam=Sorszam'
      '-Ev_ssz=Ev_ssz'
      '-Eazon=Eazon'
      'Storno=Storno'
      '-K_ID=K_ID'
      'K_Kod=K_Kod'
      'K_Nev=K_Nev'
      'K_Cim=K_Cim'
      '-k_tarolo_id=k_tarolo_id'
      'k_tarolo_nev=k_tarolo_nev'
      '-V_ID=V_ID'
      'V_Kod=V_Kod'
      'V_Nev=V_Nev'
      'V_Cim=V_Cim'
      '-v_tarolo_id=v_tarolo_id'
      'v_tarolo_nev=v_tarolo_nev'
      'datum=datum'
      'Felhasznalo=Felhasznalo'
      '-megjegyzes=megjegyzes'
      '-rt_id=rt_id'
      'termek_id=termek_id'
      'termek_kod=termek_kod'
      'termek_nev=termek_nev'
      'mennyiseg=mennyiseg'
      'tort=tort')
    DataSource = rakszallQDs
    BCDToCurrency = False
    Left = 744
    Top = 48
  end
  object frxrakszall_lista: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = NezetF.frxNezet
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44405.526625810200000000
    ReportOptions.LastChange = 44405.634502615700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 744
    Top = 96
    Datasets = <
      item
        DataSet = frxDBDRakszall
        DataSetName = 'frxDBDRakszall'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000
      Width = 1000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297
      PaperHeight = 210
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 18.897650000000000000
          Width = 343.937230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rakt'#225'rk'#246'zi sz'#225'll'#237't'#243'levelek list'#225'ja')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897650000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 102.047310000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 106.960629920000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sender code')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 106.960629920000000000
          Top = 20.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sender name')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 1.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Receiver code')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 20.787401570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Receiver name')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 106.826840000000000000
          Top = 42.133890000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sender storage')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 41.952755910000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Receiver storage')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 1.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Product code')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 20.787401570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Product name')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Top = 1.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantity')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 937.323440000000000000
          Top = 20.787401570000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Broken seed')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 63.031540000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 230.551330000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDRakszall
        DataSetName = 'frxDBDRakszall'
        RowCount = 0
        object frxDBDRakszallSorszam: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.535433070000000000
          Top = 1.889763780000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Sorszam'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."Sorszam"]')
        end
        object frxDBDRakszalldatum: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'datum'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."datum"]')
        end
        object frxDBDRakszallK_Kod: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 1.889763779527560000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'K_Kod'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."K_Kod"]')
        end
        object frxDBDRakszallK_Nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 20.787401574803200000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'K_Nev'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."K_Nev"]')
        end
        object frxDBDRakszallk_tarolo_nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 109.606370000000000000
          Top = 41.952755910000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'k_tarolo_nev'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."k_tarolo_nev"]')
        end
        object frxDBDRakszallV_Kod: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 1.889763779527560000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'V_Kod'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."V_Kod"]')
        end
        object frxDBDRakszallV_Nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 20.787401570000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataField = 'V_Nev'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."V_Nev"]')
        end
        object frxDBDRakszallv_tarolo_nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 41.952755910000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          DataField = 'v_tarolo_nev'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."v_tarolo_nev"]')
        end
        object frxDBDRakszalltermek_kod: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 1.889763780000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'termek_kod'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."termek_kod"]')
        end
        object frxDBDRakszalltermek_nev: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 718.110700000000000000
          Top = 20.787401570000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'termek_nev'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRakszall."termek_nev"]')
        end
        object frxDBDRakszallmennyiseg: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 1.889763779527560000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'mennyiseg'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDRakszall."mennyiseg"]')
        end
        object CheckBox1: TfrxCheckBoxView
          AllowVectorExport = True
          Left = 969.559680000000000000
          Top = 19.456710000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'tort'
          DataSet = frxDBDRakszall
          DataSetName = 'frxDBDRakszall'
          Frame.Typ = []
          UncheckStyle = usMinus
        end
      end
    end
  end
end
