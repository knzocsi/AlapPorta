object SoforF: TSoforF
  Left = 0
  Top = 0
  Caption = 'Sof'#337'r'#246'k'
  ClientHeight = 398
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 438
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 421
    object Button1: TButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 224
      Top = 16
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 336
      Top = 16
      Width = 75
      Height = 25
      Caption = 'T'#246'rl'#233's'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 438
    Height = 341
    Align = alClient
    DataSource = AF.SoforokQDS
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Sofor'
        Title.Caption = 'Sof'#337'r'
        Width = 152
        Visible = True
      end>
  end
  object siLangLinked1: TsiLangLinked
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
    Left = 192
    Top = 120
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540053006F0066006F0072004600010053006F0066005101
      7200F6006B0001004400720069007600650072007300010018026F0066006500
      720001000D000A0042007500740074006F006E00310001004B0069006C00E900
      7000E9007300010043006C006F00730065000100490065001902690072006500
      01000D000A0042007500740074006F006E0032000100DA006A0001004E006500
      770001004E006F00750001000D000A0042007500740074006F006E0033000100
      5400F60072006C00E90073000100440065006C00650074006500010018027400
      65007200670065007200650001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A00540053006F0066006F007200460001005400610068006F00
      6D00610001005300650067006F0065002000550049000D000A00730074004D00
      75006C00740069004C0069006E00650073005F0055006E00690063006F006400
      65000D000A007300740053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004F007400680065007200530074007200
      69006E00670073005F0055006E00690063006F00640065000D000A0073007400
      43006F006C006C0065006300740069006F006E0073005F0055006E0069006300
      6F00640065000D000A0044004200470072006900640031002E0043006F006C00
      75006D006E0073005B0030005D002E005400690074006C0065002E0043006100
      7000740069006F006E00010053006F0066005101720001000D000A0073007400
      430068006100720053006500740073005F0055006E00690063006F0064006500
      0D000A00540053006F0066006F00720046000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000D000A00}
  end
end
