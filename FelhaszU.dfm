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
    DefaultLanguage = 2
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
    Top = 288
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400460065006C006800610073007A004600010046006500
      6C006800610073007A006E00E1006C00F3006B00010055007300650072007300
      01005500740069006C0069007A00610074006F007200690001000D000A004200
      7500740074006F006E00310001004B0069006C00E9007000E900730001004500
      780069007400010049006500190269007200650001000D000A00420075007400
      74006F006E0032000100DA006A0001004E006500770001004E006F0075000100
      0D000A0042007500740074006F006E00330001004D00F30064006F007300ED00
      740001004D006F00640069006600790001004D006F0064006900660069006300
      61007200650001000D000A0042007500740074006F006E00340001005400F600
      7200F6006C000100440065006C00650074006500010018027400650072006700
      65007200650001000D000A0042007500740074006F006E00350001004A006500
      6C0073007A00F30020006D00F30064006F007300ED007400E100730061000100
      4300680061006E00670065002000700061007300730077006F00720064000100
      53006300680069006D00620061007200650020007000610072006F006C000301
      01000D000A00500061006E0065006C0031000100500061006E0065006C003100
      0100500061006E0065006C0031000100500061006E0065006C00310001000D00
      0A0073007400480069006E00740073005F0055006E00690063006F0064006500
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A005400460065006C00
      6800610073007A00460001005400610068006F006D0061000100540061006800
      6F006D00610001005400610068006F006D00610001000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0061006A00
      6F00670051002E0043006F006E006E0065006300740069006F006E004E006100
      6D00650001004B0061007000630073000100010001000D000A00730074004300
      6F006C006C0065006300740069006F006E0073005F0055006E00690063006F00
      640065000D000A004A0076004400420055006C00740069006D00470072006900
      640031002E0043006F006C0075006D006E0073005B0030005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100460065006C006800
      610073007A006E00E1006C00F300010055007300650072000100550074006900
      6C0069007A00610074006F00720001000D000A004A0076004400420055006C00
      740069006D00470072006900640032002E0043006F006C0075006D006E007300
      5B0030005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004A006F0067006F00730075006C0074007300E1006700010050006500
      72006D0069007300730069006F006E0001004400720065007000740020006400
      650020006100630063006500730001000D000A004A0076004400420055006C00
      740069006D00470072006900640032002E0043006F006C0075006D006E007300
      5B0031005D002E005400690074006C0065002E00430061007000740069006F00
      6E00010045006E00670065006400E9006C00790065007A007600650001004500
      6E00610062006C00650064000100410063007400690076006100740001000D00
      0A0073007400430068006100720053006500740073005F0055006E0069006300
      6F00640065000D000A005400460065006C006800610073007A00460001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001004400
      45004600410055004C0054005F00430048004100520053004500540001000D00
      0A00}
  end
end
