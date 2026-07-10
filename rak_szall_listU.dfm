object rak_szall_listF: Trak_szall_listF
  Left = 0
  Top = 0
  Caption = 'Rakt'#225'rk'#246'zi sz'#225'll'#237't'#243'levelek list'#225'ja'
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
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object Label2: TLabel
      Left = 280
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Befejez'#337' d'#225'tum:'
    end
    object Label3: TLabel
      Left = 28
      Top = 43
      Width = 69
      Height = 13
      Caption = 'Kiad'#243' partner:'
    end
    object Label4: TLabel
      Left = 560
      Top = 43
      Width = 61
      Height = 13
      Caption = 'Kiad'#243' t'#225'rol'#243':'
    end
    object Label5: TLabel
      Left = 28
      Top = 81
      Width = 79
      Height = 13
      Caption = 'Fogad'#243' partner:'
    end
    object Label6: TLabel
      Left = 560
      Top = 81
      Width = 71
      Height = 13
      Caption = 'Fogad'#243' t'#225'rol'#243':'
    end
    object Label10: TLabel
      Left = 28
      Top = 123
      Width = 39
      Height = 13
      Caption = 'Term'#233'k:'
    end
    object btnkilepes: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object piKezdoDatum: TDateTimePicker
      Left = 120
      Top = 22
      Width = 113
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.773554583327495500
      TabOrder = 1
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 280
      Top = 22
      Width = 105
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.774182199071219700
      TabOrder = 2
      OnChange = piKezdoDatumChange
    end
    object Button2: TButton
      Left = 408
      Top = 16
      Width = 121
      Height = 25
      Caption = 'Lista nyomtat'#225's'
      TabOrder = 3
      OnClick = Button2Click
    end
    object btnnzomtatas: TButton
      Left = 560
      Top = 16
      Width = 121
      Height = 25
      Caption = #218'jranyomtat'#225's'
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
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
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
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
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
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
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
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
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
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
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
      Caption = 'T'#246'rt szem'
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
        Title.Caption = 'K.Partner k'#243'd'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'K_Nev'
        Title.Caption = 'K.Partner n'#233'v'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'k_tarolo_nev'
        Title.Caption = 'K.T'#225'rol'#243
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V_Kod'
        Title.Caption = 'F.Partner k'#243'd'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V_Nev'
        Title.Caption = 'F.Partner n'#233'v'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v_tarolo_nev'
        Title.Caption = 'F.T'#225'rol'#243
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_kod'
        Title.Caption = 'Term.k'#243'd'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'Term.n'#233'v'
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mennyiseg'
        Title.Caption = 'Menny'
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tort'
        Title.Caption = 'T'#246'rt szem'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Felhasznalo'
        Title.Caption = 'Felhaszn'#225'l'#243
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
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44405.526625810180000000
    ReportOptions.LastChange = 44405.634502615740000000
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
            'Sorsz'#225'm')
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
            'Kiad'#243' k'#243'd')
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
            'Kiad'#243' n'#233'v')
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
            'Fogad'#243' k'#243'd')
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
            'Fogad'#243' n'#233'v')
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
            'D'#225'tum')
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
            'Kiad'#243' t'#225'rol'#243)
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
            'Fogad'#243' t'#225'rol'#243)
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
            'Term'#233'k k'#243'd')
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
            'Term'#233'k n'#233'v')
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
            'Mennyis'#233'g')
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
            'T'#246'rt szem')
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
          Top = 1.889763779527559000
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
          Top = 20.787401574803150000
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
          Top = 1.889763779527559000
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
          Top = 1.889763779527559000
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
  object siLangLinked_rak_szall_listF: TsiLangLinked
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
    Left = 424
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400720061006B005F0073007A0061006C006C005F006C00
      69007300740046000100520061006B007400E10072006B00F6007A0069002000
      73007A00E1006C006C00ED007400F3006C006500760065006C0065006B002000
      6C00690073007400E1006A00610001004C0069007300740020006F0066002000
      69006E007400650072002D00770061007200650068006F007500730065002000
      640065006C006900760065007200790020006E006F0074006500730001004C00
      690073007400610020006100760069007A0065006C006F007200200064006500
      20007400720061006E0073006600650072002000EE006E007400720065002000
      6400650070006F007A0069007400650001000D000A00620074006E006B006900
      6C00650070006500730001004B0069006C00E9007000E9007300010045007800
      69007400010049006500190269007200650001000D000A00620074006E006E00
      7A006F006D00740061007400610073000100DA006A00720061006E0079006F00
      6D00740061007400E10073000100520065007000720069006E00740001005200
      65007400690070000301720069007200650001000D000A00620074006E007300
      74006F0072006E006F000100530074006F0072006E006F000100530074006F00
      72006E006F000100530074006F0072006E006F0001000D000A00420075007400
      74006F006E00320001004C00690073007400610020006E0079006F006D007400
      61007400E100730001005000720069006E00740020006C006900730074000100
      5400690070000301720069007200650020006C00690073007400030101000D00
      0A00630068006B0074006F007200740001005400F60072007400200073007A00
      65006D000100420072006F006B0065006E0020006B00650072006E0065006C00
      7300010042006F00610062006500200073007000610072007400650001000D00
      0A004C006100620065006C00310001004B0065007A006400510120006400E100
      740075006D003A00010053007400610072007400200064006100740065003A00
      010044006100740061002000640065002000EE006E0063006500700075007400
      3A0001000D000A004C006100620065006C003100300001005400650072006D00
      E9006B003A000100500072006F0064007500630074003A000100500072006F00
      6400750073003A0001000D000A004C006100620065006C003200010042006500
      660065006A0065007A00510120006400E100740075006D003A00010045006E00
      6400200064006100740065003A00010044006100740061002000640065002000
      73006600E20072001902690074003A0001000D000A004C006100620065006C00
      330001004B00690061006400F300200070006100720074006E00650072003A00
      0100490073007300750069006E006700200070006100720074006E0065007200
      3A000100500061007200740065006E0065007200200065007800700065006400
      690074006F0072003A0001000D000A004C006100620065006C00340001004B00
      690061006400F30020007400E10072006F006C00F3003A000100490073007300
      750069006E0067002000730074006F0072006100670065003A00010044006500
      70006F007A0069007400200065007800700065006400690074006F0072003A00
      01000D000A004C006100620065006C003500010046006F00670061006400F300
      200070006100720074006E00650072003A000100520065006300650069007600
      69006E006700200070006100720074006E00650072003A000100500061007200
      740065006E00650072002000640065007300740069006E006100740061007200
      3A0001000D000A004C006100620065006C003600010046006F00670061006400
      F30020007400E10072006F006C00F3003A000100520065006300650069007600
      69006E0067002000730074006F0072006100670065003A000100440065007000
      6F007A00690074002000640065007300740069006E0061007400610072003A00
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00720061006B00
      73007A0061006C006C00510064006100740075006D0001006400610074007500
      6D00010064006100740075006D00010064006100740075006D0001000D000A00
      720061006B0073007A0061006C006C005100450061007A006F006E0001004500
      61007A006F006E000100450061007A006F006E000100450061007A006F006E00
      01000D000A00720061006B0073007A0061006C006C005100450076005F007300
      73007A000100450076005F00730073007A000100450076005F00730073007A00
      0100450076005F00730073007A0001000D000A00720061006B0073007A006100
      6C006C005100460065006C006800610073007A006E0061006C006F0001004600
      65006C006800610073007A006E0061006C006F000100460065006C0068006100
      73007A006E0061006C006F000100460065006C006800610073007A006E006100
      6C006F0001000D000A00720061006B0073007A0061006C006C00510049004400
      01004900440001004900440001004900440001000D000A00720061006B007300
      7A0061006C006C0051004B005F00430069006D0001004B005F00430069006D00
      01004B005F00430069006D0001004B005F00430069006D0001000D000A007200
      61006B0073007A0061006C006C0051004B005F004900440001004B005F004900
      440001004B005F004900440001004B005F004900440001000D000A0072006100
      6B0073007A0061006C006C0051004B005F004B006F00640001004B005F004B00
      6F00640001004B005F004B006F00640001004B005F004B006F00640001000D00
      0A00720061006B0073007A0061006C006C0051004B005F004E00650076000100
      4B005F004E006500760001004B005F004E006500760001004B005F004E006500
      760001000D000A00720061006B0073007A0061006C006C0051006B005F007400
      610072006F006C006F005F006900640001006B005F007400610072006F006C00
      6F005F006900640001006B005F007400610072006F006C006F005F0069006400
      01006B005F007400610072006F006C006F005F006900640001000D000A007200
      61006B0073007A0061006C006C0051006B005F007400610072006F006C006F00
      5F006E006500760001006B005F007400610072006F006C006F005F006E006500
      760001006B005F007400610072006F006C006F005F006E006500760001006B00
      5F007400610072006F006C006F005F006E006500760001000D000A0072006100
      6B0073007A0061006C006C0051006D00650067006A006500670079007A006500
      730001006D00650067006A006500670079007A006500730001006D0065006700
      6A006500670079007A006500730001006D00650067006A006500670079007A00
      6500730001000D000A00720061006B0073007A0061006C006C0051006D006500
      6E006E007900690073006500670001006D0065006E006E007900690073006500
      670001006D0065006E006E007900690073006500670001006D0065006E006E00
      7900690073006500670001000D000A00720061006B0073007A0061006C006C00
      5100720074005F00690064000100720074005F00690064000100720074005F00
      690064000100720074005F006900640001000D000A00720061006B0073007A00
      61006C006C00510053006F00720073007A0061006D00010053006F0072007300
      7A0061006D00010053006F00720073007A0061006D00010053006F0072007300
      7A0061006D0001000D000A00720061006B0073007A0061006C006C0051005300
      74006F0072006E006F000100530074006F0072006E006F000100530074006F00
      72006E006F000100530074006F0072006E006F0001000D000A00720061006B00
      73007A0061006C006C0051007400650072006D0065006B005F00690064000100
      7400650072006D0065006B005F006900640001007400650072006D0065006B00
      5F006900640001007400650072006D0065006B005F006900640001000D000A00
      720061006B0073007A0061006C006C0051007400650072006D0065006B005F00
      6B006F00640001007400650072006D0065006B005F006B006F00640001007400
      650072006D0065006B005F006B006F00640001007400650072006D0065006B00
      5F006B006F00640001000D000A00720061006B0073007A0061006C006C005100
      7400650072006D0065006B005F006E006500760001007400650072006D006500
      6B005F006E006500760001007400650072006D0065006B005F006E0065007600
      01007400650072006D0065006B005F006E006500760001000D000A0072006100
      6B0073007A0061006C006C00510074006F0072007400010074006F0072007400
      010074006F0072007400010074006F007200740001000D000A00720061006B00
      73007A0061006C006C00510056005F00430069006D00010056005F0043006900
      6D00010056005F00430069006D00010056005F00430069006D0001000D000A00
      720061006B0073007A0061006C006C00510056005F0049004400010056005F00
      49004400010056005F0049004400010056005F004900440001000D000A007200
      61006B0073007A0061006C006C00510056005F004B006F006400010056005F00
      4B006F006400010056005F004B006F006400010056005F004B006F0064000100
      0D000A00720061006B0073007A0061006C006C00510056005F004E0065007600
      010056005F004E0065007600010056005F004E0065007600010056005F004E00
      6500760001000D000A00720061006B0073007A0061006C006C00510076005F00
      7400610072006F006C006F005F0069006400010076005F007400610072006F00
      6C006F005F0069006400010076005F007400610072006F006C006F005F006900
      6400010076005F007400610072006F006C006F005F006900640001000D000A00
      720061006B0073007A0061006C006C00510076005F007400610072006F006C00
      6F005F006E0065007600010076005F007400610072006F006C006F005F006E00
      65007600010076005F007400610072006F006C006F005F006E00650076000100
      76005F007400610072006F006C006F005F006E006500760001000D000A005400
      650072006D0065006B0065006B00510069006400010069006400010069006400
      01006900640001000D000A005400650072006D0065006B0065006B0051006B00
      6F00640001006B006F00640001006B006F00640001006B006F00640001000D00
      0A005400650072006D0065006B0065006B0051006E006500760001006E006500
      760001006E006500760001006E006500760001000D000A007300740046006F00
      6E00740073005F0055006E00690063006F00640065000D000A00540072006100
      6B005F0073007A0061006C006C005F006C006900730074004600010054006100
      68006F006D00610001005400610068006F006D00610001005400610068006F00
      6D00610001000D000A00730074004D0075006C00740069004C0069006E006500
      73005F0055006E00690063006F00640065000D000A0066007200780044004200
      4400520061006B0073007A0061006C006C002E004600690065006C0064004100
      6C00690061007300650073000100490044003D00490044002C0053006F007200
      73007A0061006D003D0053006F00720073007A0061006D002C002D0045007600
      5F00730073007A003D00450076005F00730073007A002C002D00450061007A00
      6F006E003D00450061007A006F006E002C00530074006F0072006E006F003D00
      530074006F0072006E006F002C002D004B005F00490044003D004B005F004900
      44002C004B005F004B006F0064003D004B005F004B006F0064002C004B005F00
      4E00650076003D004B005F004E00650076002C004B005F00430069006D003D00
      4B005F00430069006D002C002D006B005F007400610072006F006C006F005F00
      690064003D006B005F007400610072006F006C006F005F00690064002C006B00
      5F007400610072006F006C006F005F006E00650076003D006B005F0074006100
      72006F006C006F005F006E00650076002C002D0056005F00490044003D005600
      5F00490044002C0056005F004B006F0064003D0056005F004B006F0064002C00
      56005F004E00650076003D0056005F004E00650076002C0056005F0043006900
      6D003D0056005F00430069006D002C002D0076005F007400610072006F006C00
      6F005F00690064003D0076005F007400610072006F006C006F005F0069006400
      2C0076005F007400610072006F006C006F005F006E00650076003D0076005F00
      7400610072006F006C006F005F006E00650076002C0064006100740075006D00
      3D0064006100740075006D002C00460065006C006800610073007A006E006100
      6C006F003D00460065006C006800610073007A006E0061006C006F002C002D00
      6D00650067006A006500670079007A00650073003D006D00650067006A006500
      670079007A00650073002C002D00720074005F00690064003D00720074005F00
      690064002C007400650072006D0065006B005F00690064003D00740065007200
      6D0065006B005F00690064002C007400650072006D0065006B005F006B006F00
      64003D007400650072006D0065006B005F006B006F0064002C00740065007200
      6D0065006B005F006E00650076003D007400650072006D0065006B005F006E00
      650076002C006D0065006E006E00790069007300650067003D006D0065006E00
      6E00790069007300650067002C0074006F00720074003D0074006F0072007400
      0100490044003D00490044002C0053006F00720073007A0061006D003D005300
      6F00720073007A0061006D002C002D00450076005F00730073007A003D004500
      76005F00730073007A002C002D00450061007A006F006E003D00450061007A00
      6F006E002C00530074006F0072006E006F003D00530074006F0072006E006F00
      2C002D004B005F00490044003D004B005F00490044002C004B005F004B006F00
      64003D004B005F004B006F0064002C004B005F004E00650076003D004B005F00
      4E00650076002C004B005F00430069006D003D004B005F00430069006D002C00
      2D006B005F007400610072006F006C006F005F00690064003D006B005F007400
      610072006F006C006F005F00690064002C006B005F007400610072006F006C00
      6F005F006E00650076003D006B005F007400610072006F006C006F005F006E00
      650076002C002D0056005F00490044003D0056005F00490044002C0056005F00
      4B006F0064003D0056005F004B006F0064002C0056005F004E00650076003D00
      56005F004E00650076002C0056005F00430069006D003D0056005F0043006900
      6D002C002D0076005F007400610072006F006C006F005F00690064003D007600
      5F007400610072006F006C006F005F00690064002C0076005F00740061007200
      6F006C006F005F006E00650076003D0076005F007400610072006F006C006F00
      5F006E00650076002C0064006100740075006D003D0064006100740075006D00
      2C00460065006C006800610073007A006E0061006C006F003D00460065006C00
      6800610073007A006E0061006C006F002C002D006D00650067006A0065006700
      79007A00650073003D006D00650067006A006500670079007A00650073002C00
      2D00720074005F00690064003D00720074005F00690064002C00740065007200
      6D0065006B005F00690064003D007400650072006D0065006B005F0069006400
      2C007400650072006D0065006B005F006B006F0064003D007400650072006D00
      65006B005F006B006F0064002C007400650072006D0065006B005F006E006500
      76003D007400650072006D0065006B005F006E00650076002C006D0065006E00
      6E00790069007300650067003D006D0065006E006E0079006900730065006700
      2C0074006F00720074003D0074006F00720074000100490044003D0049004400
      2C0053006F00720073007A0061006D003D0053006F00720073007A0061006D00
      2C002D00450076005F00730073007A003D00450076005F00730073007A002C00
      2D00450061007A006F006E003D00450061007A006F006E002C00530074006F00
      72006E006F003D00530074006F0072006E006F002C002D004B005F0049004400
      3D004B005F00490044002C004B005F004B006F0064003D004B005F004B006F00
      64002C004B005F004E00650076003D004B005F004E00650076002C004B005F00
      430069006D003D004B005F00430069006D002C002D006B005F00740061007200
      6F006C006F005F00690064003D006B005F007400610072006F006C006F005F00
      690064002C006B005F007400610072006F006C006F005F006E00650076003D00
      6B005F007400610072006F006C006F005F006E00650076002C002D0056005F00
      490044003D0056005F00490044002C0056005F004B006F0064003D0056005F00
      4B006F0064002C0056005F004E00650076003D0056005F004E00650076002C00
      56005F00430069006D003D0056005F00430069006D002C002D0076005F007400
      610072006F006C006F005F00690064003D0076005F007400610072006F006C00
      6F005F00690064002C0076005F007400610072006F006C006F005F006E006500
      76003D0076005F007400610072006F006C006F005F006E00650076002C006400
      6100740075006D003D0064006100740075006D002C00460065006C0068006100
      73007A006E0061006C006F003D00460065006C006800610073007A006E006100
      6C006F002C002D006D00650067006A006500670079007A00650073003D006D00
      650067006A006500670079007A00650073002C002D00720074005F0069006400
      3D00720074005F00690064002C007400650072006D0065006B005F0069006400
      3D007400650072006D0065006B005F00690064002C007400650072006D006500
      6B005F006B006F0064003D007400650072006D0065006B005F006B006F006400
      2C007400650072006D0065006B005F006E00650076003D007400650072006D00
      65006B005F006E00650076002C006D0065006E006E0079006900730065006700
      3D006D0065006E006E00790069007300650067002C0074006F00720074003D00
      74006F007200740001000D000A00660072007800720061006B0073007A006100
      6C006C005F006C0069007300740061002E005300630072006900700074005400
      650078007400010062006500670069006E002C002C0065006E0064002E000100
      62006500670069006E002C002C0065006E0064002E0001006200650067006900
      6E002C002C0065006E0064002E0001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A007300740043006F006C006C0065006300740069006F00
      6E0073005F0055006E00690063006F00640065000D000A004A00760044004200
      55006C00740069006D00470072006900640031002E0043006F006C0075006D00
      6E0073005B0030005D002E005400690074006C0065002E004300610070007400
      69006F006E00010053006F00720073007A0061006D0001005300650072006900
      61006C0020006E0075006D0062006500720001004E0072002E00200064006500
      20006F007200640069006E00650001000D000A004A0076004400420055006C00
      740069006D00470072006900640031002E0043006F006C0075006D006E007300
      5B0031005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004400E100740075006D00010044006100740065000100440061007400
      610001000D000A004A0076004400420055006C00740069006D00470072006900
      640031002E0043006F006C0075006D006E0073005B00310030005D002E005400
      690074006C0065002E00430061007000740069006F006E000100540065007200
      6D002E006E00E90076000100500072006F0064002E0020006E0061006D006500
      01004E0075006D0065002000700072006F0064002E0001000D000A004A007600
      4400420055006C00740069006D00470072006900640031002E0043006F006C00
      75006D006E0073005B00310031005D002E005400690074006C0065002E004300
      61007000740069006F006E0001004D0065006E006E0079000100510074007900
      0100430061006E0074002E0001000D000A004A0076004400420055006C007400
      69006D00470072006900640031002E0043006F006C0075006D006E0073005B00
      310032005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001005400F60072007400200073007A0065006D000100420072006F006B00
      65006E0020006B00650072006E0065006C007300010042006F00610062006500
      200073007000610072007400650001000D000A004A0076004400420055006C00
      740069006D00470072006900640031002E0043006F006C0075006D006E007300
      5B00310033005D002E005400690074006C0065002E0043006100700074006900
      6F006E000100460065006C006800610073007A006E00E1006C00F30001005500
      73006500720001005500740069006C0069007A00610074006F00720001000D00
      0A004A0076004400420055006C00740069006D00470072006900640031002E00
      43006F006C0075006D006E0073005B0032005D002E005400690074006C006500
      2E00430061007000740069006F006E000100530074006F0072006E006F000100
      530074006F0072006E006F000100530074006F0072006E006F0001000D000A00
      4A0076004400420055006C00740069006D00470072006900640031002E004300
      6F006C0075006D006E0073005B0033005D002E005400690074006C0065002E00
      430061007000740069006F006E0001004B002E0050006100720074006E006500
      720020006B00F300640001004900730073002E00200070006100720074006E00
      65007200200063006F0064006500010043006F00640020007000610072007400
      65006E006500720020006500780070002E0001000D000A004A00760044004200
      55006C00740069006D00470072006900640031002E0043006F006C0075006D00
      6E0073005B0034005D002E005400690074006C0065002E004300610070007400
      69006F006E0001004B002E0050006100720074006E006500720020006E00E900
      760001004900730073002E00200070006100720074006E006500720020006E00
      61006D00650001004E0075006D0065002000700061007200740065006E006500
      720020006500780070002E0001000D000A004A0076004400420055006C007400
      69006D00470072006900640031002E0043006F006C0075006D006E0073005B00
      35005D002E005400690074006C0065002E00430061007000740069006F006E00
      01004B002E005400E10072006F006C00F30001004900730073002E0020007300
      74006F00720061006700650001004400650070006F007A006900740020006500
      780070002E0001000D000A004A0076004400420055006C00740069006D004700
      72006900640031002E0043006F006C0075006D006E0073005B0036005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010046002E00
      50006100720074006E006500720020006B00F300640001005200650063002E00
      200070006100720074006E0065007200200063006F0064006500010043006F00
      64002000700061007200740065006E0065007200200064006500730074002E00
      01000D000A004A0076004400420055006C00740069006D004700720069006400
      31002E0043006F006C0075006D006E0073005B0037005D002E00540069007400
      6C0065002E00430061007000740069006F006E00010046002E00500061007200
      74006E006500720020006E00E900760001005200650063002E00200070006100
      720074006E006500720020006E0061006D00650001004E0075006D0065002000
      700061007200740065006E0065007200200064006500730074002E0001000D00
      0A004A0076004400420055006C00740069006D00470072006900640031002E00
      43006F006C0075006D006E0073005B0038005D002E005400690074006C006500
      2E00430061007000740069006F006E00010046002E005400E10072006F006C00
      F30001005200650063002E002000730074006F00720061006700650001004400
      650070006F007A0069007400200064006500730074002E0001000D000A004A00
      76004400420055006C00740069006D00470072006900640031002E0043006F00
      6C0075006D006E0073005B0039005D002E005400690074006C0065002E004300
      61007000740069006F006E0001005400650072006D002E006B00F30064000100
      500072006F0064002E00200063006F0064006500010043006F00640020007000
      72006F0064002E0001000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A005400720061006B005F00
      73007A0061006C006C005F006C00690073007400460001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A00}
  end
end
