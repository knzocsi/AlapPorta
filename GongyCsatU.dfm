object GongyCsatF: TGongyCsatF
  Left = 0
  Top = 0
  Caption = 'G'#246'ngy'#246'legek csatol'#225'sa m'#233'rlegjegyhez'
  ClientHeight = 299
  ClientWidth = 635
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
    Width = 635
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 3
      Width = 55
      Height = 13
      Caption = 'G'#246'ngy'#246'leg:'
    end
    object Label2: TLabel
      Left = 417
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Mennyis'#233'g:'
    end
    object Label3: TLabel
      Left = 327
      Top = 2
      Width = 61
      Height = 13
      Caption = 'Egys.t'#246'meg:'
    end
    object btnkilepes: TButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object cbgongy: TJvDBLookupCombo
      Left = 176
      Top = 16
      Width = 145
      Height = 21
      DisplayEmpty = '---V'#225'lasszon---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = AF.gongyQDs
      TabOrder = 1
      OnChange = cbgongyChange
    end
    object spmenny: TJvSpinEdit
      Left = 417
      Top = 15
      Width = 81
      Height = 21
      TabOrder = 2
      OnKeyPress = spmennyKeyPress
    end
    object btnfelvesz: TButton
      Left = 504
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Felvesz'
      TabOrder = 3
      OnClick = btnfelveszClick
    end
    object spegystomeg: TJvSpinEdit
      Left = 327
      Top = 15
      Width = 81
      Height = 21
      ValueType = vtFloat
      TabOrder = 4
    end
    object chkkezi: TCheckBox
      Left = 113
      Top = 17
      Width = 41
      Height = 17
      Caption = 'K'#233'zi'
      TabOrder = 5
      OnClick = chkkeziClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btntorol: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'T'#246'rl'#233's'
      TabOrder = 0
      OnClick = btntorolClick
    end
  end
  object gongygrid: TJvDBUltimGrid
    Left = 0
    Top = 49
    Width = 635
    Height = 209
    Align = alClient
    DataSource = AF.mem_csatgongyDs
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AutoAppend = False
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'g_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'g_nev'
        ReadOnly = True
        Title.Caption = 'G'#246'ngy'#246'leg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'g_tomeg'
        ReadOnly = True
        Title.Caption = 'Egy.t'#246'meg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'g_menny'
        Title.Caption = 'Menny'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ossztomeg'
        ReadOnly = True
        Title.Caption = #214'sszt'#246'meg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elso'
        ReadOnly = True
        Title.Caption = '1.'
        Visible = True
      end>
  end
  object siLangLinked_GongyCsatF: TsiLangLinked
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
    Left = 312
    Top = 152
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
