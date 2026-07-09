object ImportF: TImportF
  Left = 0
  Top = 0
  Caption = 'ImportF'
  ClientHeight = 468
  ClientWidth = 1073
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 10
      Width = 30
      Height = 13
      Caption = 'T'#225'bla:'
    end
    object Label2: TLabel
      Left = 456
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Mez'#337':'
    end
    object lblFilename: TLabel
      Left = 144
      Top = 56
      Width = 52
      Height = 13
      Caption = 'lblFilename'
    end
    object Label3: TLabel
      Left = 616
      Top = 10
      Width = 36
      Height = 13
      Caption = 'Oszlop:'
    end
    object btnKilepes: TButton
      Left = 32
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object cbTabla: TComboBox
      Left = 264
      Top = 26
      Width = 161
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbTablaChange
      Items.Strings = (
        'Termek'
        'Partner'
        'Keszlet')
    end
    object cbMezo: TComboBox
      Left = 456
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = cbMezoChange
    end
    object btnBetoltes: TButton
      Left = 136
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Bet'#246'lt'#233's'
      TabOrder = 3
      OnClick = btnBetoltesClick
    end
    object btnOszlopbeallitasa: TButton
      Left = 784
      Top = 24
      Width = 137
      Height = 25
      Caption = 'Oszlop be'#225'll'#237't'#225'sa'
      TabOrder = 4
      OnClick = btnOszlopbeallitasaClick
    end
    object cbOszlop: TComboBox
      Left = 616
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      OnChange = cbOszlopChange
    end
    object btnImport: TButton
      Left = 944
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Import'
      TabOrder = 6
      OnClick = btnImportClick
    end
    object chkCimbontas: TCheckBox
      Left = 456
      Top = 52
      Width = 241
      Height = 17
      Caption = 'C'#237'm bont'#225'sa (Irsz, Telep'#252'l'#233's, K'#246'zter'#252'let)'
      TabOrder = 7
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 81
    Width = 1073
    Height = 387
    Align = alClient
    DataSource = ImportDS
    TabOrder = 1
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
  end
  object ImportT: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 600
    Top = 192
  end
  object TablaQ: TFDQuery
    Connection = Kapcs
    Left = 656
    Top = 192
  end
  object OpenDialog1: TOpenDialog
    Left = 816
    Top = 192
  end
  object ImportDS: TDataSource
    DataSet = ImportT
    Left = 600
    Top = 264
  end
  object Q1: TFDQuery
    Connection = Kapcs
    Left = 712
    Top = 192
  end
  object Kapcs: TFDConnection
    ConnectionName = 'Kapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=MaTt2019'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=knz'
      'Port=3307')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    UpdateOptions.AssignedValues = [uvLockMode, uvLockWait]
    UpdateOptions.LockMode = lmOptimistic
    LoginPrompt = False
    Left = 528
    Top = 192
  end
  object siLangLinked_ImportF: TsiLangLinked
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
    Left = 528
    Top = 240
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
