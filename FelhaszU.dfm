object FelhaszF: TFelhaszF
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Felhaszn'#225'l'#243'k'
  ClientHeight = 561
  ClientWidth = 635
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
    Width = 635
    Height = 65
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
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
      Left = 160
      Top = 21
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 264
      Top = 21
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 520
      Top = 21
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 376
      Top = 21
      Width = 113
      Height = 25
      Caption = 'Jelsz'#243' m'#243'dos'#237't'#225'sa'
      TabOrder = 4
      OnClick = Button5Click
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 65
    Width = 304
    Height = 496
    Align = alClient
    DataSource = AF.FelhaszQDs
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
        FieldName = 'nev'
        Title.Caption = 'Felhaszn'#225'l'#243
        Visible = True
      end>
  end
  object JvDBUltimGrid2: TJvDBUltimGrid
    Left = 304
    Top = 65
    Width = 331
    Height = 496
    Align = alRight
    DataSource = AF.felhasznalok_jogaiDs
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = JvDBUltimGrid2KeyDown
    OnMouseDown = JvDBUltimGrid2MouseDown
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'jog_neve'
        ReadOnly = True
        Title.Caption = 'Jogosults'#225'g'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jog'
        Title.Caption = 'Enged'#233'lyezve'
        Visible = True
      end>
  end
  object ajogQ: TFDQuery
    Connection = AF.Kapcs
    Left = 400
    Top = 80
  end
  object siLangLinked_FelhaszF: TsiLangLinked
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
    Left = 312
    Top = 288
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
