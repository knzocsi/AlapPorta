object MozgasokTesztF: TMozgasokTesztF
  Left = 0
  Top = 0
  Caption = 'Mozg'#225'sok teszt'
  ClientHeight = 91
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 152
    Top = 8
    Width = 60
    Height = 13
    Caption = 'K'#225'rtyasz'#225'm:'
  end
  object rgirany: TRadioGroup
    Left = 8
    Top = 8
    Width = 105
    Height = 65
    Caption = 'Ir'#225'ny'
    Columns = 2
    Items.Strings = (
      'Be'
      'Ki')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 152
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 304
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ment'#233's'
    TabOrder = 2
    OnClick = Button1Click
  end
  object siLangLinked_MozgasokTesztF: TsiLangLinked
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
    Top = 48
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
