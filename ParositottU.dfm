object ParositottF: TParositottF
  Left = 0
  Top = 0
  Caption = 'P'#225'ros'#237'tott'
  ClientHeight = 374
  ClientWidth = 800
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object Label2: TLabel
      Left = 312
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Befejez'#337' d'#225'tum:'
    end
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object piKezdoDatum: TDateTimePicker
      Left = 152
      Top = 22
      Width = 113
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.773554583327495500
      TabOrder = 1
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 312
      Top = 22
      Width = 105
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.774182199071219700
      TabOrder = 2
      OnChange = piKezdoDatumChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 329
    Height = 325
    Align = alLeft
    DataSource = AF.ParositottDS
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pnl1: TPanel
    Left = 329
    Top = 49
    Width = 471
    Height = 325
    Align = alClient
    TabOrder = 2
    object img1: TImage
      Left = 1
      Top = 1
      Width = 469
      Height = 282
      Align = alClient
      Stretch = True
      ExplicitLeft = 0
      ExplicitWidth = 261
    end
    object pnl2: TPanel
      Left = 1
      Top = 283
      Width = 469
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        469
        41)
      object dbnvgr1: TDBNavigator
        Left = 77
        Top = 6
        Width = 308
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
      end
    end
  end
  object siLangLinked_ParositottF: TsiLangLinked
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
    Left = 392
    Top = 192
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
