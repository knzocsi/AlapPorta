object GongyoloegekF: TGongyoloegekF
  Left = 0
  Top = 0
  Caption = 'G'#246'ngy'#246'legek'
  ClientHeight = 336
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 65
    Align = alTop
    TabOrder = 0
    DesignSize = (
      628
      65)
    object Button1: TButton
      Left = 16
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 323
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #218'j'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 427
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'M'#243'dos'#237't'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 533
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'T'#246'r'#246'l'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 65
    Width = 628
    Height = 189
    Align = alClient
    DataSource = AF.gongyQDs
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnKeyUp = JvDBUltimGrid1KeyUp
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
        Title.Caption = 'Sorsz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v_kod'
        Title.Caption = 'Vonalk'#243'd'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'G'#246'ngy'#246'leg'
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomeg'
        Title.Caption = 'T'#246'meg'
        Visible = True
      end>
  end
  object reszletekroll: TJvRollOut
    Left = 0
    Top = 254
    Width = 628
    Height = 82
    Align = alBottom
    Caption = 'R'#233'szletek'
    TabOrder = 2
    DesignSize = (
      628
      82)
    FAWidth = 145
    FAHeight = 82
    FCWidth = 22
    FCHeight = 22
    object Label1: TLabel
      Left = 140
      Top = 31
      Width = 82
      Height = 13
      Caption = 'G'#246'ngy'#246'leg neve:'
    end
    object Label2: TLabel
      Left = 428
      Top = 31
      Width = 56
      Height = 13
      Caption = 'T'#246'meg(Kg):'
    end
    object Label3: TLabel
      Left = 8
      Top = 31
      Width = 47
      Height = 13
      Caption = 'Vonalk'#243'd:'
      Visible = False
    end
    object edszovege: TEdit
      Left = 140
      Top = 47
      Width = 265
      Height = 21
      MaxLength = 30
      TabOrder = 1
      Text = 'edszovege'
    end
    object btnfelvesz: TButton
      Left = 533
      Top = 43
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btnfelvesz'
      TabOrder = 3
      OnClick = btnfelveszClick
    end
    object sptomeg: TJvSpinEdit
      Left = 428
      Top = 47
      Width = 73
      Height = 21
      ValueType = vtFloat
      TabOrder = 2
      OnKeyPress = sptomegKeyPress
    end
    object edvkod: TEdit
      Left = 8
      Top = 47
      Width = 121
      Height = 21
      MaxLength = 13
      TabOrder = 0
      Text = 'edvkod'
      Visible = False
    end
  end
  object EllenQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select vkod from termek')
    Left = 560
    Top = 8
  end
  object siLangLinked_GongyoloegekF: TsiLangLinked
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
    Left = 312
    Top = 176
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
