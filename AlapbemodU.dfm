object AlapbemodF: TAlapbemodF
  Left = 0
  Top = 0
  Caption = 'Alapbe'#225'll'#237't'#225'si '#233'rt'#233'k m'#243'dos'#237't'#225'sa'
  ClientHeight = 267
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Csoport'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 62
    Height = 13
    Caption = 'Tulajdons'#225'g:'
  end
  object Label4: TLabel
    Left = 32
    Top = 121
    Width = 25
    Height = 13
    Caption = #201'rt'#233'k'
  end
  object Label5: TLabel
    Left = 32
    Top = 169
    Width = 61
    Height = 13
    Caption = 'Magyar'#225'zat:'
  end
  object cbxcsoport: TComboBox
    Left = 32
    Top = 24
    Width = 257
    Height = 21
    MaxLength = 50
    TabOrder = 0
    Text = 'cbxcsoport'
  end
  object rgtipus: TRadioGroup
    Left = 369
    Top = 8
    Width = 100
    Height = 81
    Caption = 'T'#237'pus'
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Integer'
      'String'
      'Boolean')
    TabOrder = 1
    OnClick = rgtipusClick
  end
  object chkigaz: TCheckBox
    Left = 32
    Top = 140
    Width = 97
    Height = 17
    Caption = #201'rt'#233'ke'
    TabOrder = 2
  end
  object edmagyarazat: TEdit
    Left = 32
    Top = 188
    Width = 437
    Height = 21
    TabOrder = 3
    Text = 'ed'
  end
  object edertek: TEdit
    Left = 32
    Top = 140
    Width = 437
    Height = 21
    MaxLength = 200
    TabOrder = 4
    Text = 'ed'
  end
  object edtulajdonsag: TEdit
    Left = 32
    Top = 80
    Width = 257
    Height = 21
    MaxLength = 50
    TabOrder = 5
    Text = 'edtulajdonsag'
  end
  object btnok: TButton
    Left = 32
    Top = 224
    Width = 75
    Height = 25
    Caption = 'M'#243'dos'#237't'
    TabOrder = 6
    OnClick = btnokClick
  end
  object Button2: TButton
    Left = 369
    Top = 224
    Width = 75
    Height = 25
    Caption = 'M'#233'gsem'
    TabOrder = 7
  end
  object siLangLinked_AlapbemodF: TsiLangLinked
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
    Left = 232
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
