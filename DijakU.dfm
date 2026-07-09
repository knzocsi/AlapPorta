object DijakF: TDijakF
  Left = 0
  Top = 0
  Caption = 'Dijak'
  ClientHeight = 327
  ClientWidth = 462
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
    Width = 462
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 144
      Top = 8
      Width = 43
      Height = 13
      Caption = 'D'#237'j neve:'
    end
    object Label2: TLabel
      Left = 304
      Top = 8
      Width = 15
      Height = 13
      Caption = #193'r:'
    end
    object btnkilepes: TButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 23
      Width = 121
      Height = 21
      DataField = 'tulajdonsag'
      DataSource = AF.CfgTDs
      TabOrder = 1
    end
    object JvDBSpinEdit1: TJvDBSpinEdit
      Left = 304
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
      DataField = 'ertek'
      DataSource = AF.CfgTDs
    end
    object DBNavigator1: TDBNavigator
      Left = 160
      Top = 50
      Width = 222
      Height = 25
      DataSource = AF.CfgTDs
      VisibleButtons = [nbPost, nbCancel]
      TabOrder = 3
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 89
    Width = 462
    Height = 238
    Align = alClient
    DataSource = AF.CfgTDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'tulajdonsag'
        Title.Caption = 'D'#237'j neve'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ertek'
        Title.Caption = #193'r'
        Width = 80
        Visible = True
      end>
  end
  object siLangLinked_DijakF: TsiLangLinked
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
    Left = 224
    Top = 168
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
