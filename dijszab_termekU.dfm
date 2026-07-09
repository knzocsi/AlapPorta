object dijszab_termekF: Tdijszab_termekF
  Left = 0
  Top = 0
  Caption = 'Kateg'#243'ri'#225'hoz tartoz'#243' term'#233'k d'#237'jszab'#225'sok'
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
      Caption = 'Kil'#233'p'#233's'
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
        Title.Caption = 'Sorsz.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 't_nev'
        Title.Caption = 'Megnevez'#233's'
        Width = 413
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tarolasi'
        Title.Caption = 'T'#225'rol'#225'si d'#237'j'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'betarolasi'
        Title.Caption = 'Bet'#225'rol'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kitarolasi'
        Title.Caption = 'Kit'#225'rol'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szaritasi'
        Title.Caption = 'Sz'#225'r'#237't'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tisztitasi'
        Title.Caption = 'Tiszt'#237't'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitasi'
        Title.Caption = 'Sz'#225'll'#237't'#225'si d'#237'j'
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
      Caption = 'Megnevez'#233's:'
    end
    object Label2: TLabel
      Left = 296
      Top = 32
      Width = 55
      Height = 13
      Caption = 'T'#225'rol'#225'si d'#237'j:'
    end
    object Label3: TLabel
      Left = 385
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Bet'#225'rol'#225'si d'#237'j:'
    end
    object Label4: TLabel
      Left = 480
      Top = 32
      Width = 61
      Height = 13
      Caption = 'Kit'#225'rol'#225'si d'#237'j:'
    end
    object Label5: TLabel
      Left = 576
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Sz'#225'r'#237't'#225'si d'#237'j:'
    end
    object Label6: TLabel
      Left = 665
      Top = 32
      Width = 59
      Height = 13
      Caption = 'Tiszt'#237't'#225'si d'#237'j:'
    end
    object Label7: TLabel
      Left = 760
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Sz'#225'll'#237't'#225'si d'#237'j:'
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
  object siLangLinked_dijszab_termekF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
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
    Left = 448
    Top = 240
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
