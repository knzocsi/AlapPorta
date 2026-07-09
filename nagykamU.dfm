object NagykamF: TNagykamF
  Left = 0
  Top = 0
  Caption = #201'l'#337' kamera k'#233'p'
  ClientHeight = 730
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleElements = [seFont, seBorder]
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object campagc: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 730
    ActivePage = cam7
    Align = alClient
    TabOrder = 0
    object cam6: TTabSheet
      Tag = 6
      Caption = 'Kamera 1'
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam7: TTabSheet
      Tag = 7
      Caption = 'Kamera 2'
      ImageIndex = 1
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam8: TTabSheet
      Tag = 8
      Caption = 'Kamera 3'
      ImageIndex = 2
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam9: TTabSheet
      Tag = 9
      Caption = 'Kamera 4'
      ImageIndex = 3
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam10: TTabSheet
      Tag = 10
      Caption = 'Kamera 5'
      ImageIndex = 4
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam11: TTabSheet
      Tag = 11
      Caption = 'Kamera 6'
      ImageIndex = 5
      OnHide = cam6Hide
      OnShow = cam6Show
    end
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'ipcamlivesc.ini'
    DefaultSection = 'General'
    SubStorages = <
      item
      end
      item
      end>
    Left = 200
    Top = 87
  end
  object JvFormStorage2: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = 'Test\'
    StoredValues = <
      item
        Name = 'Name'
      end
      item
        Name = 'TestBoolean'
        Value = False
      end>
    Left = 200
    Top = 40
  end
  object siLangLinked_NagykamF: TsiLangLinked
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
    Left = 496
    Top = 368
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
