object Meres_MerlegjegyenF: TMeres_MerlegjegyenF
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233's a m'#233'rlegjegyen'
  ClientHeight = 234
  ClientWidth = 430
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
  object Label2: TLabel
    Left = 11
    Top = 8
    Width = 74
    Height = 16
    Caption = 'Els'#337' m'#233'r'#233's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblelsodat: TLabel
    Left = 91
    Top = 8
    Width = 61
    Height = 16
    Caption = 'lblElsodat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblelsoido: TLabel
    Left = 91
    Top = 24
    Width = 58
    Height = 16
    Caption = 'lblElsoido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 227
    Top = 8
    Width = 101
    Height = 16
    Caption = 'M'#225'sodik m'#233'r'#233's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblmasdat: TLabel
    Left = 334
    Top = 7
    Width = 62
    Height = 16
    Caption = 'lblMasdat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblmasido: TLabel
    Left = 334
    Top = 29
    Width = 59
    Height = 16
    Caption = 'lblMasido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTomeg1: TLabel
    Left = 88
    Top = 49
    Width = 12
    Height = 23
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTomeg2: TLabel
    Left = 334
    Top = 49
    Width = 12
    Height = 23
    Alignment = taRightJustify
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 106
    Top = 57
    Width = 11
    Height = 13
    Caption = 'kg'
  end
  object Label5: TLabel
    Left = 352
    Top = 57
    Width = 11
    Height = 13
    Caption = 'kg'
  end
  object Label6: TLabel
    Left = 258
    Top = 69
    Width = 36
    Height = 13
    Caption = 'T'#246'meg:'
  end
  object rgMeresszama: TRadioGroup
    Left = 11
    Top = 88
    Width = 89
    Height = 49
    Caption = 'M'#233'r'#233's sz'#225'ma'
    Items.Strings = (
      '1. m'#233'r'#233's'
      '2. m'#233'r'#233's')
    TabOrder = 0
  end
  object chkelso_kezi: TCheckBox
    Left = 36
    Top = 26
    Width = 49
    Height = 17
    Caption = 'K'#233'zi'
    Enabled = False
    TabOrder = 1
  end
  object chkmasodik_kezi: TCheckBox
    Left = 227
    Top = 25
    Width = 49
    Height = 17
    Caption = 'K'#233'zi'
    Enabled = False
    TabOrder = 2
  end
  object rgMerlegszama: TRadioGroup
    Left = 128
    Top = 91
    Width = 108
    Height = 63
    Caption = 'M'#233'rleg sz'#225'ma'
    Items.Strings = (
      '1. m'#233'rleg'
      '2. m'#233'rleg'
      '3. m'#233'rleg')
    TabOrder = 3
  end
  object btnMeres: TButton
    Left = 258
    Top = 137
    Width = 88
    Height = 25
    Caption = 'M'#233'r'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btnMeresClick
  end
  object spTomeg: TSpinEdit
    Left = 258
    Top = 88
    Width = 151
    Height = 43
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 5
    Value = 0
  end
  object btnKilepes: TButton
    Left = 258
    Top = 201
    Width = 88
    Height = 25
    Hint = 'Close'
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 6
    OnClick = btnKilepesClick
  end
  object chkKezimeres: TCheckBox
    Left = 128
    Top = 162
    Width = 97
    Height = 17
    Caption = 'K'#233'zi m'#233'r'#233's'
    TabOrder = 7
    OnClick = chkKezimeresClick
  end
  object btnelfogadas: TButton
    Left = 91
    Top = 201
    Width = 75
    Height = 25
    Caption = 'Elfogad'#225's'
    TabOrder = 8
    OnClick = btnelfogadasClick
  end
  object siLangLinked_Meres_MerlegjegyenF: TsiLangLinked
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
    Left = 208
    Top = 120
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
