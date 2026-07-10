object LibreExcelF: TLibreExcelF
  Left = 0
  Top = 0
  Caption = 'Adatok export'#225'l'#225'sa'
  ClientHeight = 481
  ClientWidth = 595
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 72
      Width = 73
      Height = 13
      Caption = 'El'#233'rhet'#337' mez'#243'k'
    end
    object kilepbtn: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = kilepbtnClick
    end
    object RadioGroup1: TRadioGroup
      Left = 104
      Top = 6
      Width = 193
      Height = 35
      Caption = 'T'#237'pus'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Libre Calc'
        'Microsoft Excel ')
      TabOrder = 1
    end
    object Exportbtn: TButton
      Left = 448
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = ExportbtnClick
    end
    object chkftp: TCheckBox
      Left = 320
      Top = 20
      Width = 97
      Height = 17
      Caption = 'Felt'#246'lt'#233's FTP-re'
      TabOrder = 3
    end
    object chkosszes: TCheckBox
      Left = 320
      Top = 66
      Width = 73
      Height = 17
      Caption = #214'sszesre'
      TabOrder = 4
      OnClick = chkosszesClick
    end
    object btnbeall_ment: TButton
      Left = 448
      Top = 58
      Width = 129
      Height = 25
      Caption = 'Be'#225'll'#237't'#225'sok ment'#233'se'
      TabOrder = 5
      OnClick = btnbeall_mentClick
    end
  end
  object leszgrid: TJvDBUltimGrid
    Left = 0
    Top = 89
    Width = 595
    Height = 392
    Align = alClient
    DataSource = JvMlehetDs
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
    Columns = <
      item
        Expanded = False
        FieldName = 'caption'
        Title.Caption = 'Mez'#337' neve'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kell'
        Title.Caption = 'Kell?'
        Visible = True
      end>
  end
  object JvMlehet: TJvMemoryData
    FieldDefs = <>
    Left = 248
    Top = 16
    object JvMlehetindex: TIntegerField
      FieldName = 'index'
    end
    object JvMlehetcaption: TStringField
      FieldName = 'caption'
      Size = 50
    end
    object JvMlehetfieldname: TStringField
      FieldName = 'fieldname'
      Size = 50
    end
    object JvMlehetkell: TBooleanField
      FieldName = 'kell'
    end
  end
  object JvMlehetDs: TDataSource
    DataSet = JvMlehet
    Left = 240
    Top = 72
  end
  object SaveDialog: TSaveDialog
    Left = 519
    Top = 8
  end
  object cfg_exportT: TFDTable
    Connection = AF.Kapcs
    TableName = 'cfg_export'
    Left = 440
    Top = 96
  end
  object cfg_export_mezokT: TFDTable
    Connection = AF.Kapcs
    TableName = 'cfg_export_mezok'
    Left = 440
    Top = 160
  end
  object TQ: TFDQuery
    Connection = AF.Kapcs
    Left = 432
    Top = 232
  end
  object siLangLinked_LibreExcelF: TsiLangLinked
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
    Left = 288
    Top = 248
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
