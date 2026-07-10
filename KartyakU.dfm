object KartyakF: TKartyakF
  Left = 0
  Top = 0
  Caption = 'K'#225'rty'#225'k'
  ClientHeight = 498
  ClientWidth = 912
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
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnkilepes: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 98
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Sorsz'#225'm:'
    end
    object Label2: TLabel
      Left = 112
      Top = 32
      Width = 60
      Height = 13
      Caption = 'K'#225'rtyasz'#225'm:'
    end
    object Label3: TLabel
      Left = 264
      Top = 32
      Width = 23
      Height = 13
      Caption = 'N'#233'v:'
    end
    object Label4: TLabel
      Left = 591
      Top = 32
      Width = 23
      Height = 13
      Caption = 'C'#233'g:'
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 910
      Height = 25
      DataSource = kartyakDs
      Align = alTop
      TabOrder = 0
    end
    object DBEd_id: TDBEdit
      Left = 16
      Top = 51
      Width = 73
      Height = 21
      DataField = 'id'
      DataSource = kartyakDs
      ReadOnly = True
      TabOrder = 1
    end
    object DBEd_kartyaszam: TDBEdit
      Left = 112
      Top = 51
      Width = 121
      Height = 21
      DataField = 'kartyaszam'
      DataSource = kartyakDs
      TabOrder = 2
    end
    object DBEd_leiras: TDBEdit
      Left = 264
      Top = 51
      Width = 305
      Height = 21
      DataField = 'nev'
      DataSource = kartyakDs
      MaxLength = 150
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 591
      Top = 51
      Width = 305
      Height = 21
      DataField = 'ceg_nev'
      DataSource = kartyakDs
      MaxLength = 150
      TabOrder = 4
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 359
    Align = alClient
    DataSource = kartyakDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kartyaszam'
        Title.Caption = 'K'#225'rtyasz'#225'm'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'N'#233'v'
        Width = 295
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ceg_nev'
        Title.Caption = 'C'#233'g'
        Width = 200
        Visible = True
      end>
  end
  object kartyakDs: TDataSource
    DataSet = KartyakT
    Left = 24
    Top = 232
  end
  object KartyakT: TFDTable
    BeforePost = kartyakTBeforePost
    Connection = AF.Kapcs
    TableName = 'kartyak'
    Left = 24
    Top = 176
  end
  object siLangLinked_KartyakF: TsiLangLinked
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
    Left = 448
    Top = 256
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
