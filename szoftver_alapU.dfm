object szoftver_alapF: Tszoftver_alapF
  Left = 0
  Top = 0
  Caption = 'Szoftver alapbe'#225'll'#237't'#225'sai'
  ClientHeight = 502
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 320
      Top = 0
      Width = 42
      Height = 13
      Caption = 'Csoport:'
    end
    object Label2: TLabel
      Left = 480
      Top = 0
      Width = 62
      Height = 13
      Caption = 'Tulajdons'#225'g:'
    end
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 136
      Top = 8
      Width = 161
      Height = 25
      Caption = 'M'#243'dos'#237't'#225'sok alkalmaz'#225'sa'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 696
      Top = 10
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 2
      Visible = False
    end
    object Button4: TButton
      Left = 792
      Top = 10
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 888
      Top = 8
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 4
      Visible = False
    end
    object cbcsopszur: TJvDBLookupCombo
      Left = 320
      Top = 14
      Width = 145
      Height = 21
      DisplayEmpty = '--Nincs sz'#369'rve--'
      EmptyValue = '!'
      LookupField = 'csoport'
      LookupDisplay = 'csoport'
      LookupSource = csopQDs
      TabOrder = 5
      OnChange = cbcsopszurChange
    end
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 480
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 6
      Text = ''
      DataField = 'tulajdonsag'
      DataSource = AF.CfgTDs
    end
    object btncsoportok: TButton
      Left = 612
      Top = 8
      Width = 80
      Height = 25
      Caption = 'Csoportok...'
      TabOrder = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = btncsoportokClick
    end
    object btnnemhasznalt: TButton
      Left = 872
      Top = 8
      Width = 100
      Height = 25
      Caption = 'Nem haszn'#225'lt...'
      TabOrder = 8
      ParentShowHint = False
      ShowHint = True
      OnClick = btnnemhasznaltClick
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 978
    Height = 461
    DataSource = AF.CfgTDs
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
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'csoport'
        Title.Caption = 'Csoport'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tulajdonsag'
        Title.Caption = 'Tulajdons'#225'g'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipus'
        Title.Caption = 'T'#237'pus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ertek'
        Title.Caption = #201'rt'#233'k'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'magyarazat'
        Title.Caption = 'Magyar'#225'zat'
        Width = 300
        Visible = True
      end>
  end
  object csopQ: TFDQuery
    Connection = AF.Kapcs
    Left = 296
    Top = 8
  end
  object csopQDs: TDataSource
    DataSet = csopQ
    Left = 304
    Top = 64
  end
  object siLangLinked_szoftver_alapF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    DefaultLanguage = 2
    StoreAsUTF8 = True
    NumOfLanguages = 3
    LangDispatcher = FoF.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Hungarian'
      'English'
      'Romanian')
    Language = 'English'
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
    Left = 480
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
