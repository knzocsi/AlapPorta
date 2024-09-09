object MjegyekF: TMjegyekF
  Left = 0
  Top = 0
  Caption = 'List of weighning tickets'
  ClientHeight = 581
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Date from:'
    end
    object Label2: TLabel
      Left = 312
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Date to:'
    end
    object Label3: TLabel
      Left = 15
      Top = 53
      Width = 39
      Height = 13
      Caption = 'Product:'
    end
    object Label5: TLabel
      Left = 440
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Partner:'
    end
    object Label7: TLabel
      Left = 1174
      Top = 47
      Width = 30
      Height = 13
      Caption = 'Direction:'
    end
    object Label8: TLabel
      Left = 1175
      Top = 7
      Width = 64
      Height = 13
      Caption = 'License plates:'
    end
    object lblbizki: TLabel
      Left = 16
      Top = 96
      Width = 98
      Height = 13
      Caption = 'Certificate issuer:'
    end
    object Label9: TLabel
      Left = 440
      Top = 96
      Width = 49
      Height = 13
      Caption = 'Partner 2:'
    end
    object Label27: TLabel
      Left = 1175
      Top = 95
      Width = 34
      Height = 13
      Caption = 'Storage:'
    end
    object Label16: TLabel
      Left = 872
      Top = 96
      Width = 140
      Height = 13
      Caption = 'Filtering a part of note:'
    end
    object piKezdoDatum: TDateTimePicker
      Left = 152
      Top = 22
      Width = 113
      Height = 21
      Date = 43587
      Time = 0.773554583327496100
      TabOrder = 0
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 312
      Top = 22
      Width = 105
      Height = 21
      Date = 43587
      Time = 0.774182199071220000
      TabOrder = 1
      OnChange = piBefejezoDatumChange
    end
    object btnKilepes: TButton
      Left = 16
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 2
      OnClick = btnKilepesClick
    end
    object btnUjranyomtatas: TButton
      Left = 543
      Top = 21
      Width = 98
      Height = 25
      Caption = 'Print again'
      TabOrder = 3
      OnClick = btnUjranyomtatasClick
    end
    object btnListanyomtatas: TButton
      Left = 440
      Top = 21
      Width = 97
      Height = 25
      Caption = 'Print list'
      TabOrder = 4
      OnClick = btnListanyomtatasClick
    end
    object btnStorno: TButton
      Left = 728
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Storno'
      TabOrder = 5
      OnClick = btnStornoClick
    end
    object termeklookup: TJvDBLookupCombo
      Left = 16
      Top = 67
      Width = 401
      Height = 21
      DropDownCount = 20
      DisplayAllFields = True
      DisplayEmpty = 'Certificate issuer'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'Nev;Kod;'
      LookupSource = termeklistDs
      TabOrder = 6
      OnChange = cbxrendszChange
    end
    object partnerlookup: TJvDBLookupCombo
      Left = 440
      Top = 67
      Width = 417
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'ID'
      LookupDisplay = 'Nev;Kod;'
      LookupSource = PartnelistDs
      TabOrder = 7
      OnChange = cbxrendszChange
    end
    object cbxirany: TComboBox
      Left = 1173
      Top = 61
      Width = 97
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 8
      Text = '*Not filtered*'
      OnChange = cbxrendszChange
      Items.Strings = (
        '*Not filtered*'
        'In'
        'Out')
    end
    object cbxrendsz: TComboBox
      Left = 1174
      Top = 23
      Width = 96
      Height = 21
      TabOrder = 9
      Text = 'cbxrendsz'
      OnChange = cbxrendszChange
    end
    object tulajlookup: TJvDBLookupCombo
      Left = 16
      Top = 110
      Width = 401
      Height = 21
      DeleteKeyClear = False
      EmptyValue = '0'
      LookupField = 'Id'
      LookupDisplay = 'Nev'
      LookupSource = tulajDs
      TabOrder = 10
      OnChange = piKezdoDatumChange
    end
    object chkstorno: TCheckBox
      Left = 809
      Top = 25
      Width = 97
      Height = 17
      Caption = 'Show storno'
      TabOrder = 11
      OnClick = piKezdoDatumChange
    end
    object btnModositas: TButton
      Left = 647
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Modify'
      TabOrder = 12
      OnClick = btnModositasClick
    end
    object taroloklookup: TJvDBLookupCombo
      Left = 1174
      Top = 109
      Width = 96
      Height = 21
      DisplayEmpty = '**Not filtered**'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = TarolokDs
      TabOrder = 13
      OnChange = cbxrendszChange
    end
    object edmegjegy: TEdit
      Left = 872
      Top = 110
      Width = 296
      Height = 21
      TabOrder = 14
      OnChange = cbxrendszChange
    end
    object chkKepek: TCheckBox
      Left = 952
      Top = 24
      Width = 126
      Height = 17
      Caption = 'Show pictures'
      TabOrder = 15
      OnClick = chkKepekClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 540
    Width = 1284
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 8
      Width = 16
      Height = 13
      Caption = 'In:'
    end
    object Label6: TLabel
      Left = 176
      Top = 8
      Width = 12
      Height = 13
      Caption = 'Out:'
    end
    object spinbe: TSpinEdit
      Left = 46
      Top = 6
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object spinki: TSpinEdit
      Left = 194
      Top = 6
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object Button4: TButton
      Left = 904
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = Button4Click
    end
    object btnelozmenyek: TButton
      Left = 736
      Top = 8
      Width = 160
      Height = 25
      Caption = 'Weighning ticket antecedents'
      TabOrder = 3
      OnClick = btnelozmenyekClick
    end
    object btntermenyszaritas: TButton
      Left = 536
      Top = 8
      Width = 186
      Height = 25
      Caption = 'Accounting for crop drying'
      TabOrder = 4
      OnClick = btntermenyszaritasClick
    end
  end
  object partnerlookup2: TJvDBLookupCombo
    Left = 440
    Top = 110
    Width = 417
    Height = 21
    DropDownWidth = 1024
    DisplayAllFields = True
    DisplayEmpty = '----Not selected----'
    EmptyValue = '!'
    LookupField = 'ID'
    LookupDisplay = 'Nev;Kod;'
    LookupSource = Partnelist2Ds
    TabOrder = 2
    OnChange = cbxrendszChange
  end
  object termenyszaritasroll: TJvRollOut
    Left = 0
    Top = 328
    Width = 1284
    Height = 212
    Align = alBottom
    Caption = 'Accounting for crop drying'
    TabOrder = 3
    FAWidth = 145
    FAHeight = 212
    FCWidth = 22
    FCHeight = 22
    object Panel3: TPanel
      Left = 1000
      Top = 21
      Width = 283
      Height = 190
      Align = alRight
      TabOrder = 0
      object Label10: TLabel
        Left = 24
        Top = 3
        Width = 59
        Height = 13
        Caption = 'Cleaning fee:'
      end
      object Label11: TLabel
        Left = 152
        Top = 3
        Width = 58
        Height = 13
        Caption = 'Drying fee:'
      end
      object Label12: TLabel
        Left = 24
        Top = 40
        Width = 55
        Height = 13
        Caption = 'Storage fee:'
      end
      object Label13: TLabel
        Left = 152
        Top = 40
        Width = 65
        Height = 13
        Caption = 'Storage in fee:'
      end
      object Label14: TLabel
        Left = 152
        Top = 80
        Width = 58
        Height = 13
        Caption = 'Delivery fee:'
      end
      object Label15: TLabel
        Left = 24
        Top = 82
        Width = 61
        Height = 13
        Caption = 'Storage out fee:'
      end
      object Button1: TButton
        Left = 14
        Top = 134
        Width = 147
        Height = 25
        Caption = 'Prep. of settlement'
        TabOrder = 0
        WordWrap = True
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 174
        Top = 134
        Width = 97
        Height = 25
        Caption = 'Cancel'
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button6: TButton
        Left = 4
        Top = 166
        Width = 179
        Height = 17
        Caption = 'Delete weighning ticket from set.'
        TabOrder = 2
        OnClick = Button6Click
      end
      object spTisztitasi_dij: TJvSpinEdit
        Left = 24
        Top = 16
        Width = 97
        Height = 21
        ValueType = vtFloat
        TabOrder = 3
      end
      object spSzaritasi_dij: TJvSpinEdit
        Left = 152
        Top = 16
        Width = 97
        Height = 21
        ValueType = vtFloat
        TabOrder = 4
      end
      object spTarolasi_dij: TJvSpinEdit
        Left = 24
        Top = 56
        Width = 97
        Height = 21
        ValueType = vtFloat
        TabOrder = 5
      end
      object spBetarolasi_dij: TJvSpinEdit
        Left = 152
        Top = 53
        Width = 97
        Height = 21
        ValueType = vtFloat
        TabOrder = 6
      end
      object spKitarolasi_dij: TJvSpinEdit
        Left = 24
        Top = 93
        Width = 97
        Height = 21
        ValueType = vtFloat
        TabOrder = 7
      end
      object spSzallitasi_dij: TJvSpinEdit
        Left = 152
        Top = 93
        Width = 97
        Height = 21
        ValueType = vtFloat
        TabOrder = 8
      end
    end
    object JvDBUltimGrid1: TJvDBUltimGrid
      Left = 1
      Top = 21
      Width = 999
      Height = 190
      Align = alClient
      DataSource = memszamolDs
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'sorsz'
          ReadOnly = True
          Title.Caption = 'ID'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_nev'
          ReadOnly = True
          Title.Caption = 'Partner'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_cim'
          ReadOnly = True
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'termek_nev'
          ReadOnly = True
          Title.Caption = 'Product'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Netto'
          ReadOnly = True
          Title.Caption = 'Raw prod. quant.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'szar_hofok'
          Title.Caption = 'Drying deg.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'szall_km'
          Title.Caption = 'Deliv. km'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tisztasag'
          ReadOnly = True
          Title.Caption = 'Trash %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tisztasaglevon'
          ReadOnly = True
          Title.Caption = 'Trash kg'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'szaritasra_kiad'
          ReadOnly = True
          Title.Caption = 'Dried issued quant.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nedv'
          ReadOnly = True
          Title.Caption = 'Raw moisture %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alapnedv'
          ReadOnly = True
          Title.Caption = 'Dried moisture %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'szNetto'
          ReadOnly = True
          Title.Caption = 'Dried quantity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nedvlevon'
          ReadOnly = True
          Title.Caption = 'Mois.deduction'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tortszaz'
          ReadOnly = True
          Title.Caption = 'Broken %'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tortlevon'
          ReadOnly = True
          Title.Caption = 'Brok.deduc.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tavdat'
          ReadOnly = True
          Title.Caption = 'Date'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 137
    Width = 1284
    Height = 191
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 4
    object pnlKepek: TPanel
      Left = 840
      Top = 1
      Width = 443
      Height = 189
      Align = alRight
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 441
        Height = 187
        ActivePage = tabKep1
        Align = alClient
        TabOrder = 0
        object tabKep1: TTabSheet
          Caption = 'Pic.1'
          DesignSize = (
            433
            159)
          object Kep1: TImage
            Left = 0
            Top = 0
            Width = 433
            Height = 159
            Align = alClient
            Stretch = True
            ExplicitLeft = 1
          end
          object lblKep1: TLabel
            Left = 3
            Top = 409
            Width = 45
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'No pic.'
            ExplicitTop = 392
          end
        end
        object tabKep2: TTabSheet
          Caption = 'Pic 2'
          ImageIndex = 1
          DesignSize = (
            433
            159)
          object Kep2: TImage
            Left = 0
            Top = 0
            Width = 433
            Height = 159
            Align = alClient
            Stretch = True
            ExplicitLeft = 1
            ExplicitTop = -1
            ExplicitWidth = 338
            ExplicitHeight = 161
          end
          object lblKep2: TLabel
            Left = 1
            Top = 412
            Width = 45
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'No pic.'
            ExplicitTop = 388
          end
        end
        object tabKep3: TTabSheet
          Caption = 'Pic 3'
          ImageIndex = 2
          object Kep3: TImage
            Left = 0
            Top = 0
            Width = 433
            Height = 159
            Align = alClient
            Stretch = True
            ExplicitLeft = 1
          end
        end
        object tabKep4: TTabSheet
          Caption = 'Pic 4'
          ImageIndex = 3
          object Kep4: TImage
            Left = 0
            Top = 0
            Width = 433
            Height = 159
            Align = alClient
            Stretch = True
            ExplicitLeft = 1
          end
        end
      end
    end
    object JvxSplitter1: TJvxSplitter
      Left = 1
      Top = 1
      Width = 3
      Height = 189
      ControlFirst = pnlKepek
      Align = alLeft
    end
    object mlistaGrid: TJvDBUltimGrid
      Left = 4
      Top = 1
      Width = 836
      Height = 189
      Hint = 'For sorting klikk to the title with right mouse'
      Align = alClient
      DataSource = mjegyekQDs
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = mlistaGridCellClick
      OnDblClick = mlistaGridDblClick
      OnMouseUp = mlistaGridMouseUp
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
    end
  end
  object mjegyekQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      '')
    Left = 640
    Top = 224
  end
  object mjegyekQDs: TDataSource
    DataSet = mjegyekQ
    Left = 736
    Top = 224
  end
  object termeklist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 272
    Top = 226
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 336
    Top = 226
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 448
    Top = 224
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 507
    Top = 224
  end
  object Partnelist2: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 448
    Top = 280
  end
  object Partnelist2Ds: TDataSource
    DataSet = Partnelist2
    Left = 507
    Top = 280
  end
  object tulajT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'tulajok'
    Left = 192
    Top = 184
    object tulajTID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tulajTNev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nev'
      Origin = 'Nev'
      Size = 80
    end
    object tulajTCim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cim'
      Origin = 'Cim'
      Size = 200
    end
    object tulajTAdoszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Adoszam'
      Origin = 'Adoszam'
    end
    object tulajTkuj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kuj'
      Origin = 'kuj'
    end
    object tulajTktj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ktj'
      Origin = 'ktj'
    end
    object tulajTElotag: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Elotag'
      Origin = 'Elotag'
      Size = 2
    end
    object tulajTIrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Irsz'
      Origin = 'Irsz'
      Size = 10
    end
    object tulajTTelepules: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telepules'
      Origin = 'Telepules'
      Size = 30
    end
    object tulajTKerulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kerulet'
      Origin = 'Kerulet'
      Size = 5
    end
    object tulajTKozterulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kozterulet'
      Origin = 'Kozterulet'
      Size = 30
    end
    object tulajTKozt_Jelleg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kozt_Jelleg'
      Origin = 'Kozt_Jelleg'
      Size = 10
    end
    object tulajTHazszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Hazszam'
      Origin = 'Hazszam'
      Size = 5
    end
    object tulajTEpulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Epulet'
      Origin = 'Epulet'
      Size = 5
    end
    object tulajTLepcsohaz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lepcsohaz'
      Origin = 'Lepcsohaz'
      Size = 5
    end
    object tulajTEmelet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emelet'
      Origin = 'Emelet'
      Size = 5
    end
    object tulajTHrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Hrsz'
      Origin = 'Hrsz'
      Size = 5
    end
    object tulajTEmail: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Email'
      Origin = 'Email'
    end
    object tulajTTelefon: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon'
      Origin = 'Telefon'
    end
    object tulajTAjto: TWideStringField
      FieldName = 'Ajto'
      Size = 5
    end
    object tulajTcjsz: TWideStringField
      FieldName = 'cjsz'
    end
  end
  object tulajDs: TDataSource
    DataSet = tulajT
    Left = 184
    Top = 240
  end
  object TarolokT: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok ORDER BY nev ASC')
    Left = 1174
    Top = 41
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 1232
    Top = 40
  end
  object memszamol: TJvMemoryData
    FieldDefs = <>
    Left = 648
    Top = 272
    object memszamolsorsz: TStringField
      FieldName = 'sorsz'
    end
    object memszamolp_nev: TStringField
      FieldName = 'p_nev'
      Size = 80
    end
    object memszamolp_cim: TStringField
      FieldName = 'p_cim'
      Size = 100
    end
    object memszamoltermek_nev: TStringField
      FieldName = 'termek_nev'
      Size = 100
    end
    object memszamolNetto: TFloatField
      FieldName = 'Netto'
    end
    object memszamolalapnedv: TFloatField
      FieldName = 'alapnedv'
    end
    object memszamolnedv: TFloatField
      FieldName = 'nedv'
    end
    object memszamolnedvlevon: TFloatField
      FieldName = 'nedvlevon'
    end
    object memszamoltisztasag: TFloatField
      FieldName = 'tisztasag'
    end
    object memszamoltisztasaglevon: TFloatField
      FieldName = 'tisztasaglevon'
    end
    object memszamoltortszaz: TFloatField
      FieldName = 'tortszaz'
    end
    object memszamolszNetto: TFloatField
      FieldName = 'szNetto'
    end
    object memszamolszart_tort: TFloatField
      FieldName = 'szart_tort'
    end
    object memszamoltavdat: TStringField
      FieldName = 'tavdat'
    end
    object memszamolszaritasra_kiad: TFloatField
      FieldName = 'szaritasra_kiad'
    end
    object memszamolszar_hofok: TFloatField
      FieldName = 'szar_hofok'
    end
    object memszamolszall_km: TFloatField
      FieldName = 'szall_km'
    end
  end
  object memszamolDs: TDataSource
    DataSet = memszamol
    Left = 592
    Top = 362
  end
  object frxTerm_szaritas: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44882.601868958300000000
    ReportOptions.LastChange = 44882.796821111100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 696
    Top = 352
    Datasets = <>
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
        Height = 1028.032160000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'K'#233'sz'#252'lt:')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[DATE][TIME]')
        end
        object Memo2: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 200.315090000000000000
          Top = 26.456710000000000000
          Width = 317.480520000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Term'#233'nysz'#225'r'#237't'#225's elsz'#225'mol'#225'sa')
          ParentFont = False
        end
        object frxtulajdonos: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxtulajdonos')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 71.811070000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A szolg'#225'ltat'#225'st ig'#233'nyl'#337' neve:')
          ParentFont = False
        end
        object frxpartnerneve: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 71.811023620000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxpartnerneve')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'C'#237'me:')
          ParentFont = False
        end
        object frxpartnercime: TfrxMemoView
          AllowVectorExport = True
          Left = 180.637910000000000000
          Top = 94.488250000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxpartnercime')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A term'#233'ny:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 143.622140000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'A besz'#225'll'#237't'#225's id'#337'pontja:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 166.299320000000000000
          Width = 147.401670000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Az elsz'#225'mol'#225's alapj'#225'ul szolg'#225'l'#243' m'#233'rlegjegyek:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 219.212740000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            #193'tvett nyers term'#233'ny mennyis'#233'ge:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 241.889920000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Szem'#233't, porl'#225's, ocsu:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 264.567100000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'r'#237't'#225'sra kiadott mennyis'#233'g:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 287.244280000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nyers term'#233'ny v'#237'ztartalma:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 309.921460000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'r'#237'tott term'#233'ny v'#237'ztartalma:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 343.937230000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'raz term'#233'ny mennyis'#233'ge:')
          ParentFont = False
        end
        object frxtisztaxnyerszaraz: TfrxMemoView
          AllowVectorExport = True
          Left = 207.874150000000000000
          Top = 336.378170000000000000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'nyers term'#233'ny kg * nyers term'#233'ny sz'#225'razanyagtartalma %')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 355.275820000000000000
          Width = 385.512060000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 355.275820000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'sz'#225'raz term'#233'ny sz'#225'razanyagtartalma %')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 389.291590000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '=')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 397.630180000000000000
          Width = 185.196969999999000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 389.291590000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '=')
          ParentFont = False
        end
        object frxnettoxnettoszaraz: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 377.953000000000000000
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
            'frxnettoxnettoszaraz')
          ParentFont = False
        end
        object frxszarazszaraz: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 400.630180000000000000
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
            'frxszarazszaraz')
          ParentFont = False
        end
        object frxsznetto: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 389.291590000000000000
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
            'frxsznetto')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 434.645950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'V'#237'zelvon'#225's:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 461.102660000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kiadhat'#243' t'#246'rtszem a sz'#225'raz term'#233'nyb'#337'l:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 487.559370000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Kiadhat'#243' sz'#225'raz term'#233'ny:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 548.031850000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'El'#337'rost'#225'l'#225's, nyers term'#233'ny:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 574.488560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'r'#237't'#225'si d'#237'j:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bet'#225'rol'#225's:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 627.401980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kit'#225'rol'#225's:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 653.858690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Sz'#225'll'#237't'#225's:')
          ParentFont = False
        end
        object frxnetto1: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 548.031850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnetto1')
        end
        object frxtiszt_to: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxtiszt_to')
        end
        object frxtiszt_ar: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxtiszt_ar')
          ParentFont = False
        end
        object frxszar_fok: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 574.488560000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszar_fok')
        end
        object frxnetto2: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 574.488560000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnetto2')
        end
        object frxszar_to: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 574.488560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszar_to')
        end
        object frxszar_ar: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 574.488560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxszar_ar')
          ParentFont = False
        end
        object frxnetto3: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnetto3')
        end
        object frxbetar_to: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxbetar_to')
        end
        object frxbetar_ar: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 600.945270000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxbetar_ar')
          ParentFont = False
        end
        object frxnetto4: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 627.401980000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnetto4')
        end
        object frxkitar_to: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 627.401980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxkitar_to')
        end
        object frxkitar_ar: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 627.401980000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxkitar_ar')
          ParentFont = False
        end
        object frxkm: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 653.858690000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxkm')
        end
        object frxnetto5: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 653.858690000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnetto5')
        end
        object frxszall_to: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 653.858690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszall_to')
        end
        object frxszall_ar: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 653.858690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxszall_ar')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 699.213050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            #214'SSZESEN:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 725.669760000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '27% '#225'fa:')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 748.346940000000000000
          Width = 158.740260000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 771.024120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'FIZETEND'#336':')
          ParentFont = False
        end
        object frxosszesen: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 699.213050000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxosszesen')
          ParentFont = False
        end
        object frxafaosszege: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 721.890230000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxafaosszege')
          ParentFont = False
        end
        object frxfizetendo: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 771.024120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'frxfizetendo')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 30.236240000000000000
          Top = 978.898270000000000000
          Width = 158.740260000000000000
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
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 963.780150000000000000
          Width = 257.008040000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = []
          Diagonal = True
        end
        object frxtermeny: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 120.944960000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxtermeny')
          ParentFont = False
        end
        object frxidopontok: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 143.622140000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxidopontok')
          ParentFont = False
        end
        object frxsorszok: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 170.078850000000000000
          Width = 529.134200000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxsorszok')
          ParentFont = False
        end
        object frxnetto: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 219.212740000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnetto')
          ParentFont = False
        end
        object frxszemet_szaz: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 245.669450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszemet_szaz')
          ParentFont = False
        end
        object frxszemet_levon: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 245.669450000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszemet_levon')
          ParentFont = False
        end
        object frxszar_kiad: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 268.346630000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxszar_kiad')
          ParentFont = False
        end
        object frxnedv: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 287.244280000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxnedv')
          ParentFont = False
        end
        object frxalapnedv: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 309.921460000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'frxalapnedv')
          ParentFont = False
        end
        object frxnedvelvon: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 434.645950000000000000
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
            'frxnedvelvon')
          ParentFont = False
        end
        object frxossz_tort_szaz: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 461.102660000000000000
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
            'frxossz_tort_szaz')
          ParentFont = False
        end
        object frxossz_tort: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 461.102660000000000000
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
            'frxossz_tort')
          ParentFont = False
        end
        object frxossz_szar_kiad: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 483.779840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'frxossz_szar_kiad')
          ParentFont = False
        end
      end
    end
  end
end
