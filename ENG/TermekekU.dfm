object TermekekF: TTermekekF
  Left = 0
  Top = 0
  Caption = 'Producs'
  ClientHeight = 455
  ClientWidth = 862
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object btnImport: TButton
      Left = 672
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Import'
      TabOrder = 1
      Visible = False
      OnClick = btnImportClick
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 862
    Height = 414
    ActivePage = tbReszlet
    Align = alClient
    TabOrder = 1
    OnChange = pcListaReszletChange
    object tbLista: TTabSheet
      Caption = 'List'
      object termekgrid: TDBGrid
        Left = 0
        Top = 57
        Width = 854
        Height = 329
        Align = alClient
        DataSource = TermekDS
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnMouseUp = termekgridMouseUp
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Kod'
            Title.Caption = 'Code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nev'
            Title.Caption = 'Name'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itj'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'me'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ar'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'afa'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'egysegtomeg'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'alapnedv'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'kerekites'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'kukorica'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_nedv'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_feherje'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_eses'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_tisztasag'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_tort'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_olaj'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_buzaminoseg'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'b_hekto'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tipus_id'
            Visible = False
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          Left = 12
          Top = 2
          Width = 39
          Height = 13
          Caption = 'Filtering: '
        end
        object lblmire: TLabel
          Left = 52
          Top = 2
          Width = 18
          Height = 13
          Caption = 'Code'
        end
        object edszures: TEdit
          Left = 12
          Top = 18
          Width = 242
          Height = 21
          TabOrder = 0
          OnChange = edszuresChange
        end
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'Details'
      ImageIndex = 1
      object lbl1: TLabel
        Left = 5
        Top = 48
        Width = 22
        Height = 13
        Caption = 'Code:'
        FocusControl = dedKod
        OnDblClick = lbl1DblClick
      end
      object lbl2: TLabel
        Left = 204
        Top = 48
        Width = 19
        Height = 13
        Caption = 'Nev'
        FocusControl = dedNev
      end
      object Label1: TLabel
        Left = 5
        Top = 97
        Width = 43
        Height = 13
        Caption = 'Itj/VTSZ:'
      end
      object Label2: TLabel
        Left = 144
        Top = 96
        Width = 22
        Height = 13
        Caption = 'Unit of mea.'
      end
      object Label3: TLabel
        Left = 204
        Top = 96
        Width = 15
        Height = 13
        Caption = 'Price:'
      end
      object Label4: TLabel
        Left = 336
        Top = 96
        Width = 21
        Height = 13
        Caption = 'VAT:'
      end
      object Label5: TLabel
        Left = 432
        Top = 97
        Width = 72
        Height = 13
        Caption = 'Unit mass:'
      end
      object lblalapnedv: TLabel
        Left = 568
        Top = 96
        Width = 77
        Height = 13
        Caption = 'Base moisure:'
      end
      object Label6: TLabel
        Left = 712
        Top = 96
        Width = 51
        Height = 13
        Caption = 'EWC/HAK:'
      end
      object Label8: TLabel
        Left = 3
        Top = 3
        Width = 29
        Height = 13
        Caption = 'Type:'
      end
      object DBNavigator1: TDBNavigator
        Left = 409
        Top = 0
        Width = 215
        Height = 25
        DataSource = TermekDS
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object dedKod: TDBEdit
        Left = 5
        Top = 64
        Width = 192
        Height = 21
        DataField = 'Kod'
        DataSource = TermekDS
        TabOrder = 1
      end
      object dedNev: TDBEdit
        Left = 204
        Top = 64
        Width = 643
        Height = 21
        DataField = 'Nev'
        DataSource = TermekDS
        TabOrder = 2
      end
      object DBEditj: TDBEdit
        Left = 5
        Top = 112
        Width = 121
        Height = 21
        DataField = 'itj'
        DataSource = TermekDS
        TabOrder = 3
      end
      object DBEdMe: TDBEdit
        Left = 144
        Top = 112
        Width = 53
        Height = 21
        DataField = 'me'
        DataSource = TermekDS
        TabOrder = 4
      end
      object JvDBSpinAr: TJvDBSpinEdit
        Left = 203
        Top = 112
        Width = 121
        Height = 21
        ValueType = vtFloat
        TabOrder = 5
        DataField = 'ar'
        DataSource = TermekDS
      end
      object JvDBSpinAfa: TJvDBSpinEdit
        Left = 336
        Top = 112
        Width = 73
        Height = 21
        ValueType = vtFloat
        TabOrder = 6
        DataField = 'afa'
        DataSource = TermekDS
      end
      object JvDBSpegystomeg: TJvDBSpinEdit
        Left = 432
        Top = 112
        Width = 121
        Height = 21
        TabOrder = 7
        DataField = 'egysegtomeg'
        DataSource = TermekDS
      end
      object JvDBSpinAlapnedv: TJvDBSpinEdit
        Left = 568
        Top = 112
        Width = 121
        Height = 21
        ValueType = vtFloat
        TabOrder = 8
        DataField = 'alapnedv'
        DataSource = TermekDS
      end
      object dbchkkerekites: TDBCheckBox
        Left = 3
        Top = 160
        Width = 97
        Height = 17
        Caption = 'Rounding'
        DataField = 'kerekites'
        DataSource = TermekDS
        TabOrder = 9
      end
      object DBChkKukorica: TDBCheckBox
        Left = 106
        Top = 160
        Width = 113
        Height = 17
        Hint = 'Sznetto=nett'#243'*(1-Tisztas'#225'g)*(1-Nedvess'#233'g)/(1-Alapnedvess'#233'g)'
        Caption = 'Corn calculate'
        DataField = 'kukorica'
        DataSource = TermekDS
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object DBChknedv: TDBCheckBox
        Left = 240
        Top = 160
        Width = 97
        Height = 17
        Caption = 'Moisure'
        DataField = 'b_nedv'
        DataSource = TermekDS
        TabOrder = 11
      end
      object DBChkfeherje: TDBCheckBox
        Left = 361
        Top = 160
        Width = 97
        Height = 17
        Caption = 'Protein'
        DataField = 'b_feherje'
        DataSource = TermekDS
        TabOrder = 12
      end
      object DBCheckBox5: TDBCheckBox
        Left = 480
        Top = 160
        Width = 97
        Height = 17
        Caption = 'Num of falls'
        DataField = 'b_eses'
        DataSource = TermekDS
        TabOrder = 13
      end
      object DBChktisztasag: TDBCheckBox
        Left = 592
        Top = 160
        Width = 97
        Height = 17
        Caption = 'Clean'
        DataField = 'b_tisztasag'
        DataSource = TermekDS
        TabOrder = 14
      end
      object DBChktort: TDBCheckBox
        Left = 3
        Top = 208
        Width = 97
        Height = 17
        Caption = 'Broken seed'
        DataField = 'b_tort'
        DataSource = TermekDS
        TabOrder = 15
      end
      object DBChkolaj: TDBCheckBox
        Left = 106
        Top = 208
        Width = 97
        Height = 17
        Caption = 'Oil'
        DataField = 'b_olaj'
        DataSource = TermekDS
        TabOrder = 16
      end
      object DBCheckBox3: TDBCheckBox
        Left = 240
        Top = 208
        Width = 97
        Height = 17
        Caption = 'Wheat quality'
        DataField = 'b_buzaminoseg'
        DataSource = TermekDS
        TabOrder = 17
      end
      object DBChkhekto: TDBCheckBox
        Left = 361
        Top = 208
        Width = 97
        Height = 17
        Caption = 'Hecto'
        DataField = 'b_hekto'
        DataSource = TermekDS
        TabOrder = 18
      end
      object dedewc: TDBEdit
        Left = 712
        Top = 112
        Width = 121
        Height = 21
        DataField = 'ewc'
        DataSource = TermekDS
        TabOrder = 19
      end
      object lucTipus: TJvDBLookupCombo
        Left = 3
        Top = 21
        Width = 195
        Height = 21
        DropDownWidth = 1024
        DisplayAllFields = True
        DisplayEmpty = '---Not selected---'
        EmptyValue = '!'
        ListStyle = lsDelimited
        LookupField = 'ID'
        LookupDisplay = 'nev'
        TabOrder = 20
        OnChange = lucTipusChange
      end
      object edTipus_id: TDBEdit
        Left = 204
        Top = 21
        Width = 45
        Height = 21
        DataField = 'tipus_id'
        DataSource = TermekDS
        TabOrder = 21
      end
      object DBChksiker: TDBCheckBox
        Left = 480
        Top = 208
        Width = 49
        Height = 17
        Caption = 'Gluten'
        DataField = 'b_siker'
        DataSource = TermekDS
        TabOrder = 22
      end
    end
  end
  object TermekT: TFDTable
    BeforeInsert = TermekTBeforeInsert
    AfterInsert = TermekTAfterInsert
    BeforePost = TermekTBeforePost
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    UpdateOptions.UpdateTableName = 'termek'
    TableName = 'termek'
    Left = 296
    Top = 72
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
    object TermekTb_siker: TBooleanField
      FieldName = 'b_siker'
    end
  end
  object TermekDS: TDataSource
    DataSet = TermekT
    Left = 344
    Top = 72
  end
  object excelO: TOpenDialog
    Filter = '*.XLS;*.XLSX;'
    Left = 592
    Top = 8
  end
end
