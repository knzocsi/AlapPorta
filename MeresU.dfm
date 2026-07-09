object MeresF: TMeresF
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233's'
  ClientHeight = 240
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 41
    Top = 24
    Width = 53
    Height = 13
    Caption = 'Rendsz'#225'm:'
  end
  object Label7: TLabel
    Left = 217
    Top = 24
    Width = 62
    Height = 13
    Caption = 'Rendsz'#225'm 2:'
  end
  object Label9: TLabel
    Left = 40
    Top = 87
    Width = 36
    Height = 13
    Caption = 'T'#246'meg:'
  end
  object cbxrendszam1: TComboBox
    Left = 41
    Top = 40
    Width = 145
    Height = 21
    CharCase = ecUpperCase
    Sorted = True
    TabOrder = 0
    Text = 'CBXRENDSZAM1'
  end
  object cbxrendszam2: TComboBox
    Left = 217
    Top = 40
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    Sorted = True
    TabOrder = 1
    Text = 'CBXRENDSZAM2'
  end
  object spTomeg: TSpinEdit
    Left = 41
    Top = 106
    Width = 100
    Height = 22
    MaxValue = 0
    MinValue = 0
    ReadOnly = True
    TabOrder = 2
    Value = 0
    OnEnter = spTomegEnter
  end
  object btnMentes: TButton
    Left = 41
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Ment'#233's'
    TabOrder = 3
    OnClick = btnMentesClick
  end
  object btnKilepes: TButton
    Left = 248
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 4
    OnClick = btnKilepesClick
  end
  object chkkezi: TCheckBox
    Left = 159
    Top = 111
    Width = 97
    Height = 17
    Caption = 'K'#233'zi m'#233'r'#233's'
    TabOrder = 5
    OnClick = chkkeziClick
  end
  object btnMeres1: TButton
    Left = 41
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 1. m'#233'rleg'
    TabOrder = 6
    OnClick = btnMeres1Click
  end
  object btnMeres2: TButton
    Left = 137
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 2. m'#233'rleg'
    TabOrder = 7
    Visible = False
    OnClick = btnMeres1Click
  end
  object btnMeres3: TButton
    Left = 233
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 3. m'#233'rleg'
    TabOrder = 8
    Visible = False
    OnClick = btnMeres1Click
  end
  object btnMeres4: TButton
    Left = 329
    Top = 134
    Width = 90
    Height = 25
    Caption = 'M'#233'r'#233's 4. m'#233'rleg'
    TabOrder = 9
    Visible = False
    OnClick = btnMeres1Click
  end
  object siLangLinked_MeresF: TsiLangLinked
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
    Left = 216
    Top = 128
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
