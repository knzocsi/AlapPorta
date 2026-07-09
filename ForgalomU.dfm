object ForgalomF: TForgalomF
  Left = 0
  Top = 0
  Caption = 'Forgalom'
  ClientHeight = 537
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1042
      49)
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
    object Button1: TButton
      Left = 896
      Top = 18
      Width = 137
      Height = 25
      Anchors = [akRight]
      Caption = 'M'#233'rlegjegy k'#233'sz'#237't'#233's'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 586
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = Button2Click
    end
    object piBefejezoDatum: TJvDateEdit
      Left = 312
      Top = 23
      Width = 88
      Height = 21
      DateFormat = 'YYYY.MM.DD.'
      DefaultToday = True
      DialogTitle = 'V'#225'lasszon d'#225'tumot'
      ShowNullDate = False
      TabOrder = 3
      OnChange = piKezdoDatumChange
    end
    object piKezdoDatum: TJvDateEdit
      Left = 152
      Top = 23
      Width = 88
      Height = 21
      DateFormat = 'YYYY.MM.DD.'
      DefaultToday = True
      DialogTitle = 'V'#225'lasszon d'#225'tumot'
      ShowNullDate = False
      TabOrder = 4
      OnChange = piKezdoDatumChange
    end
  end
  object Panel2: TPanel
    Left = 585
    Top = 49
    Width = 457
    Height = 488
    Align = alRight
    TabOrder = 1
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 455
      Height = 445
      Align = alClient
      Stretch = True
      ExplicitLeft = 0
      ExplicitWidth = 261
      ExplicitHeight = 282
    end
    object Panel3: TPanel
      Left = 1
      Top = 446
      Width = 455
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        455
        41)
      object DBNavigator1: TDBNavigator
        Left = 77
        Top = 6
        Width = 292
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        OnClick = DBNavigator1Click
      end
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 49
    Width = 585
    Height = 488
    Align = alClient
    DataSource = AF.ForgalomDS
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    OnGesture = DBGrid1Gesture
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parositott'
        Title.Caption = 'P'#225'rja'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'irany'
        Title.Caption = 'Ir'#225'ny'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mjegy'
        Title.Caption = 'M'#233'rlegjegy'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Datum'
        Title.Caption = 'D'#225'tum'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ido'
        Title.Caption = 'Id'#337
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomeg'
        Title.Caption = 'T'#246'meg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rendszam'
        Title.Caption = 'Rendsz'#225'm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam2'
        Title.Caption = 'Rendsz'#225'm 2'
        Visible = True
      end>
  end
  object siLangLinked_ForgalomF: TsiLangLinked
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
    Left = 512
    Top = 272
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
