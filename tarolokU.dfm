object TarolokF: TTarolokF
  Left = 0
  Top = 0
  Caption = 'T'#225'rol'#243'k'
  ClientHeight = 256
  ClientWidth = 554
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
    Width = 554
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 1
      Width = 34
      Height = 13
      Caption = 'T'#225'rol'#243':'
    end
    object btnkilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object dednev: TDBEdit
      Left = 128
      Top = 14
      Width = 121
      Height = 21
      DataField = 'nev'
      DataSource = TarolokDs
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 264
      Top = 10
      Width = 216
      Height = 25
      DataSource = TarolokDs
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 554
    Height = 207
    Align = alClient
    DataSource = TarolokDs
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'Sorsz.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'T'#225'rol'#243
        Visible = True
      end>
  end
  object TarolokT: TFDQuery
    BeforePost = TarolokTBeforePost
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok')
    Left = 434
    Top = 57
    object TarolokTid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TarolokTnev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nev'
      Origin = 'nev'
      Size = 50
    end
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 432
    Top = 104
  end
  object siLangLinked_TarolokF: TsiLangLinked
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
    Left = 272
    Top = 136
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
