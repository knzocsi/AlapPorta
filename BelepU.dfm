object BelepF: TBelepF
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Bel'#233'p'#233's'
  ClientHeight = 305
  ClientWidth = 208
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 208
    Height = 280
    Align = alClient
    TabOrder = 0
    object edjelszo: TEdit
      Left = 1
      Top = 258
      Width = 206
      Height = 21
      Align = alBottom
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = edjelszoKeyPress
      OnKeyUp = edjelszoKeyUp
    end
    object DBLookupListBox1: TDBLookupListBox
      Left = 1
      Top = 1
      Width = 206
      Height = 251
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'id'
      ListField = 'nev'
      ListSource = AF.FelhaszQDs
      ParentFont = False
      TabOrder = 1
      OnClick = DBLookupListBox1Click
    end
  end
  object Button1: TButton
    Left = 0
    Top = 280
    Width = 208
    Height = 25
    Align = alBottom
    Caption = 'Kil'#233'p'#233's'
    TabOrder = 1
    OnClick = Button1Click
  end
  object siLangLinked_BelepF: TsiLangLinked
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
    Left = 96
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400420065006C006500700046000100420065006C00E900
      7000E900730001004C006F00670069006E00010041007500740065006E007400
      690066006900630061007200650001000D000A0042007500740074006F006E00
      310001004B0069006C00E9007000E90073000100450078006900740001004900
      6500190269007200650001000D000A0073007400480069006E00740073005F00
      55006E00690063006F00640065000D000A007300740044006900730070006C00
      610079004C006100620065006C0073005F0055006E00690063006F0064006500
      0D000A007300740046006F006E00740073005F0055006E00690063006F006400
      65000D000A005400420065006C0065007000460001005400610068006F006D00
      610001005400610068006F006D00610001005400610068006F006D0061000100
      0D000A00440042004C006F006F006B00750070004C0069007300740042006F00
      7800310001005400610068006F006D00610001005400610068006F006D006100
      01005400610068006F006D00610001000D000A00730074004D0075006C007400
      69004C0069006E00650073005F0055006E00690063006F00640065000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A007300740043006F006C00
      6C0065006300740069006F006E0073005F0055006E00690063006F0064006500
      0D000A0073007400430068006100720053006500740073005F0055006E006900
      63006F00640065000D000A005400420065006C00650070004600010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F004300480041005200530045005400010044004500
      4600410055004C0054005F00430048004100520053004500540001000D000A00
      440042004C006F006F006B00750070004C0069007300740042006F0078003100
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      0100440045004600410055004C0054005F004300480041005200530045005400
      01000D000A00}
  end
end
