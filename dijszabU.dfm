object dijszabF: TdijszabF
  Left = 0
  Top = 0
  Caption = 'D'#237'jszab'#225'si kateg'#243'ri'#225'k'
  ClientHeight = 412
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnkilep: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepClick
    end
    object btndijsza_termek: TButton
      Left = 448
      Top = 8
      Width = 233
      Height = 25
      Caption = 'Kateg'#243'ri'#225'hoz tartoz'#243' term'#233'kek d'#237'jszab'#225'sai'
      TabOrder = 1
      OnClick = btndijsza_termekClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 336
    Width = 699
    Height = 76
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 54
      Height = 13
      Caption = 'Katerg'#243'ria:'
    end
    object Label2: TLabel
      Left = 144
      Top = 32
      Width = 55
      Height = 13
      Caption = 'T'#225'rol'#225'si d'#237'j:'
    end
    object Label3: TLabel
      Left = 233
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Bet'#225'rol'#225'si d'#237'j:'
    end
    object Label4: TLabel
      Left = 328
      Top = 32
      Width = 61
      Height = 13
      Caption = 'Kit'#225'rol'#225'si d'#237'j:'
    end
    object Label5: TLabel
      Left = 424
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Sz'#225'r'#237't'#225'si d'#237'j:'
    end
    object Label6: TLabel
      Left = 513
      Top = 32
      Width = 59
      Height = 13
      Caption = 'Tiszt'#237't'#225'si d'#237'j:'
    end
    object Label7: TLabel
      Left = 608
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Sz'#225'll'#237't'#225'si d'#237'j:'
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 697
      Height = 25
      DataSource = dijkatDs
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 0
    end
    object DBEnev: TDBEdit
      Left = 16
      Top = 46
      Width = 121
      Height = 21
      DataField = 'nev'
      DataSource = dijkatDs
      MaxLength = 20
      TabOrder = 1
    end
    object DBEtarolasi: TDBEdit
      Left = 143
      Top = 46
      Width = 80
      Height = 21
      DataField = 'tarolasi'
      DataSource = dijkatDs
      TabOrder = 2
    end
    object DBEbetarolasi: TDBEdit
      Left = 233
      Top = 46
      Width = 80
      Height = 21
      DataField = 'betarolasi'
      DataSource = dijkatDs
      TabOrder = 3
    end
    object DBEkitarolasi: TDBEdit
      Left = 328
      Top = 46
      Width = 80
      Height = 21
      DataField = 'kitarolasi'
      DataSource = dijkatDs
      TabOrder = 4
    end
    object DBEszaritasi: TDBEdit
      Left = 423
      Top = 46
      Width = 80
      Height = 21
      DataField = 'szaritasi'
      DataSource = dijkatDs
      TabOrder = 5
    end
    object DBEtisztitasi: TDBEdit
      Left = 513
      Top = 46
      Width = 80
      Height = 21
      DataField = 'tisztitasi'
      DataSource = dijkatDs
      TabOrder = 6
    end
    object DBEszallitasi: TDBEdit
      Left = 608
      Top = 46
      Width = 80
      Height = 21
      DataField = 'szallitasi'
      DataSource = dijkatDs
      TabOrder = 7
    end
  end
  object dijakgrid: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 699
    Height = 295
    Align = alClient
    DataSource = dijkatDs
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        Title.Caption = 'Sorsz.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'Kateg'#243'ria'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tarolasi'
        Title.Caption = 'T'#225'rol'#225'si d'#237'j'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'betarolasi'
        Title.Caption = 'Bet'#225'rol'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kitarolasi'
        Title.Caption = 'Kit'#225'rol'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szaritasi'
        Title.Caption = 'Sz'#225'r'#237't'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tisztitasi'
        Title.Caption = 'Tiszt'#237't'#225'si d'#237'j'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitasi'
        Title.Caption = 'Sz'#225'll'#237't'#225'si d'#237'j'
        Width = 70
        Visible = True
      end>
  end
  object dijkatT: TFDTable
    BeforePost = dijkatTBeforePost
    Connection = AF.Kapcs
    TableName = 'dijaszab_kategoriak'
    Left = 160
    Top = 16
  end
  object dijkatDs: TDataSource
    DataSet = dijkatT
    Left = 208
    Top = 16
  end
  object siLangLinked_dijszabF: TsiLangLinked
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
    Left = 344
    Top = 208
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
