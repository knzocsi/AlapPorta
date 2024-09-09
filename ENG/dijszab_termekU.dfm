object dijszab_termekF: Tdijszab_termekF
  Left = 0
  Top = 0
  Caption = 'Product fees in catergory'
  ClientHeight = 476
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      913
      41)
    object DBTKategoria: TDBText
      Left = 816
      Top = 11
      Width = 87
      Height = 16
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = True
      DataField = 'nev'
      DataSource = dijszabF.dijkatDs
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnkilep: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepClick
    end
  end
  object dijakgrid: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 913
    Height = 359
    Align = alClient
    DataSource = dijak_termekDs
    ReadOnly = True
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
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 't_nev'
        Title.Caption = 'Name'
        Width = 413
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tarolasi'
        Title.Caption = 'Storage fee'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'betarolasi'
        Title.Caption = 'Storage in in fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kitarolasi'
        Title.Caption = 'Storage out fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szaritasi'
        Title.Caption = 'Drying fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tisztitasi'
        Title.Caption = 'Cleaning fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitasi'
        Title.Caption = 'Delivery fee'
        Width = 70
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 913
    Height = 76
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 64
      Height = 13
      Caption = 'Name:'
    end
    object Label2: TLabel
      Left = 296
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Storage fee:'
    end
    object Label3: TLabel
      Left = 385
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Storage in fee:'
    end
    object Label4: TLabel
      Left = 480
      Top = 32
      Width = 61
      Height = 13
      Caption = 'Storage out fee:'
    end
    object Label5: TLabel
      Left = 576
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Drying fee:'
    end
    object Label6: TLabel
      Left = 665
      Top = 32
      Width = 59
      Height = 13
      Caption = 'Clearing fee:'
    end
    object Label7: TLabel
      Left = 760
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Delivery fee:'
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 911
      Height = 25
      DataSource = dijak_termekDs
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 0
    end
    object DBEtarolasi: TDBEdit
      Left = 295
      Top = 46
      Width = 80
      Height = 21
      DataField = 'tarolasi'
      DataSource = dijak_termekDs
      TabOrder = 1
    end
    object DBEbetarolasi: TDBEdit
      Left = 385
      Top = 46
      Width = 80
      Height = 21
      DataField = 'betarolasi'
      DataSource = dijak_termekDs
      TabOrder = 2
    end
    object DBEkitarolasi: TDBEdit
      Left = 480
      Top = 46
      Width = 80
      Height = 21
      DataField = 'kitarolasi'
      DataSource = dijak_termekDs
      TabOrder = 3
    end
    object DBEszaritasi: TDBEdit
      Left = 575
      Top = 46
      Width = 80
      Height = 21
      DataField = 'szaritasi'
      DataSource = dijak_termekDs
      TabOrder = 4
    end
    object DBEtisztitasi: TDBEdit
      Left = 665
      Top = 46
      Width = 80
      Height = 21
      DataField = 'tisztitasi'
      DataSource = dijak_termekDs
      TabOrder = 5
    end
    object DBEszallitasi: TDBEdit
      Left = 760
      Top = 46
      Width = 80
      Height = 21
      DataField = 'szallitasi'
      DataSource = dijak_termekDs
      TabOrder = 6
    end
    object DBLCTermek: TDBLookupComboBox
      Left = 16
      Top = 46
      Width = 273
      Height = 21
      DataField = 't_id'
      DataSource = dijak_termekDs
      KeyField = 'id'
      ListField = 'nev'
      ListSource = TermekDS
      TabOrder = 7
    end
  end
  object dijak_termekT: TFDTable
    BeforePost = dijak_termekTBeforePost
    IndexFieldNames = 'd_id'
    MasterSource = dijszabF.dijkatDs
    MasterFields = 'id'
    Connection = AF.Kapcs
    TableName = 'dijaszab_kategoriak_termek'
    Left = 472
    Top = 144
  end
  object dijak_termekDs: TDataSource
    DataSet = dijak_termekT
    Left = 480
    Top = 200
  end
  object TermekT: TFDTable
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
  end
  object TermekDS: TDataSource
    DataSet = TermekT
    Left = 344
    Top = 72
  end
  object EllenQ: TFDQuery
    Connection = AF.Kapcs
    Left = 440
    Top = 88
  end
end
