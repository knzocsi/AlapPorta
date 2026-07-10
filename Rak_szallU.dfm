object Rak_szallF: TRak_szallF
  Left = 0
  Top = 0
  Caption = 'Rakt'#225'rk'#246'zi sz'#225'll'#237't'#243'lev'#233'l'
  ClientHeight = 443
  ClientWidth = 813
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
    Width = 813
    Height = 66
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 312
      Top = 16
      Width = 69
      Height = 13
      Caption = 'P'#233'ld'#225'ny sz'#225'm:'
      Visible = False
    end
    object Label2: TLabel
      Left = 400
      Top = 16
      Width = 35
      Height = 13
      Caption = 'D'#225'tum:'
    end
    object btnkilepes: TButton
      Left = 16
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object btnmentes: TButton
      Left = 112
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Ment'#233's'
      TabOrder = 1
      OnClick = btnmentesClick
    end
    object btnnyomtatas: TButton
      Left = 208
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Nyomtat'#225's'
      TabOrder = 2
      OnClick = btnnyomtatasClick
    end
    object sppsz: TJvSpinEdit
      Left = 312
      Top = 32
      Width = 68
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object Datuma: TDateTimePicker
      Left = 400
      Top = 32
      Width = 113
      Height = 21
      Date = 44400.000000000000000000
      Time = 0.345127754626446400
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 813
    Height = 151
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 20
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Kiad'#243' partner:'
    end
    object Label4: TLabel
      Left = 519
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Kiad'#243' t'#225'rol'#243':'
    end
    object Label5: TLabel
      Left = 20
      Top = 54
      Width = 79
      Height = 13
      Caption = 'Fogad'#243' partner:'
    end
    object Label6: TLabel
      Left = 519
      Top = 54
      Width = 71
      Height = 13
      Caption = 'Fogad'#243' t'#225'rol'#243':'
    end
    object Label7: TLabel
      Left = 670
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Kiad'#243' k'#233'szlete'
    end
    object Label8: TLabel
      Left = 670
      Top = 56
      Width = 82
      Height = 13
      Caption = 'Fogad'#243' k'#233'szlete:'
    end
    object Label9: TLabel
      Left = 519
      Top = 102
      Width = 55
      Height = 13
      Caption = 'Mennyis'#233'g:'
    end
    object Label10: TLabel
      Left = 20
      Top = 104
      Width = 39
      Height = 13
      Caption = 'Term'#233'k:'
    end
    object k_partnerlookup: TJvDBLookupCombo
      Left = 20
      Top = 27
      Width = 493
      Height = 21
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'combo'
      LookupSource = k_partnerQDs
      TabOrder = 0
      OnChange = k_partnerlookupChange
    end
    object k_tarololookup: TJvDBLookupCombo
      Left = 519
      Top = 27
      Width = 145
      Height = 21
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = k_taroloQDs
      TabOrder = 1
      OnChange = k_partnerlookupChange
    end
    object f_partnerlookup: TJvDBLookupCombo
      Left = 20
      Top = 73
      Width = 491
      Height = 21
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'combo'
      LookupSource = f_partnerQDs
      TabOrder = 2
      OnChange = k_partnerlookupChange
    end
    object f_tarololookup: TJvDBLookupCombo
      Left = 519
      Top = 73
      Width = 145
      Height = 21
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = f_taroloQDs
      TabOrder = 3
      OnChange = k_partnerlookupChange
    end
    object termeklookup: TJvDBLookupCombo
      Left = 20
      Top = 120
      Width = 405
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'kod;nev;'
      LookupSource = TermekekQDs
      TabOrder = 4
      OnChange = k_partnerlookupChange
    end
    object chktort: TCheckBox
      Left = 439
      Top = 121
      Width = 74
      Height = 17
      Caption = 'T'#246'rt szem'
      TabOrder = 5
      OnClick = k_partnerlookupChange
    end
    object sp_k_keszlet: TJvSpinEdit
      Left = 670
      Top = 27
      Width = 121
      Height = 21
      TabStop = False
      ValueType = vtFloat
      ReadOnly = True
      TabOrder = 8
    end
    object sp_f_keszlet: TJvSpinEdit
      Left = 670
      Top = 75
      Width = 121
      Height = 21
      TabStop = False
      ValueType = vtFloat
      ReadOnly = True
      TabOrder = 9
    end
    object btnfelvesz: TButton
      Left = 670
      Top = 116
      Width = 121
      Height = 25
      Caption = 'Felvesz'
      TabOrder = 7
      OnClick = btnfelveszClick
    end
    object spmenny: TJvSpinEdit
      Left = 519
      Top = 118
      Width = 121
      Height = 21
      CheckOptions = [coCheckOnExit]
      ValueType = vtFloat
      TabOrder = 6
      OnKeyPress = spmennyKeyPress
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 217
    Width = 813
    Height = 185
    Align = alClient
    DataSource = AF.rktetmDs
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
        FieldName = 'termek_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'termek_kod'
        Title.Caption = 'Term'#233'k k'#243'd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'Term'#233'k n'#233'v'
        Width = 476
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menny'
        Title.Caption = 'Mennyis'#233'g'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tort'
        Title.Caption = 'T'#246'rt szem'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 402
    Width = 813
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button2: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'T'#233'tel t'#246'rl'#233'se'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object k_partnerQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from partner_combo order by nev ASC')
    Left = 72
    Top = 74
  end
  object f_partnerQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from partner_combo order by nev ASC')
    Left = 64
    Top = 130
  end
  object k_partnerQDs: TDataSource
    DataSet = k_partnerQ
    Left = 136
    Top = 74
  end
  object f_partnerQDs: TDataSource
    DataSet = f_partnerQ
    Left = 128
    Top = 130
  end
  object k_taroloQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from tarolok order by nev ASC')
    Left = 528
    Top = 90
  end
  object f_taroloQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from tarolok order by nev ASC')
    Left = 528
    Top = 130
  end
  object f_taroloQDs: TDataSource
    DataSet = f_taroloQ
    Left = 600
    Top = 90
  end
  object k_taroloQDs: TDataSource
    DataSet = k_taroloQ
    Left = 600
    Top = 138
  end
  object TermekekQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select id,kod,nev from termek order by nev ASC')
    Left = 192
    Top = 178
  end
  object TermekekQDs: TDataSource
    DataSet = TermekekQ
    Left = 248
    Top = 178
  end
  object siLangLinked_Rak_szallF: TsiLangLinked
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
    Left = 400
    Top = 224
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A005400520061006B005F0073007A0061006C006C0046000100
      520061006B007400E10072006B00F6007A006900200073007A00E1006C006C00
      ED007400F3006C0065007600E9006C00010049006E007400650072002D007700
      61007200650068006F007500730065002000640065006C006900760065007200
      790020006E006F007400650001004100760069007A0020006400650020007400
      720061006E0073006600650072002000EE006E00740072006500200064006500
      70006F007A0069007400650001000D000A00620074006E00660065006C007600
      650073007A000100460065006C007600650073007A0001004100640064000100
      4100640003017500670061007200650001000D000A00620074006E006B006900
      6C00650070006500730001004B0069006C00E9007000E9007300010045007800
      69007400010049006500190269007200650001000D000A00620074006E006D00
      65006E0074006500730001004D0065006E007400E90073000100530061007600
      65000100530061006C00760061007200650001000D000A00620074006E006E00
      79006F006D007400610074006100730001004E0079006F006D00740061007400
      E100730001005000720069006E00740001005400690070000301720069007200
      650001000D000A0042007500740074006F006E00320001005400E90074006500
      6C0020007400F60072006C00E900730065000100440065006C00650074006500
      20006900740065006D0001001802740065007200670065007200650020006100
      72007400690063006F006C0001000D000A00630068006B0074006F0072007400
      01005400F60072007400200073007A0065006D000100420072006F006B006500
      6E0020006B00650072006E0065006C007300010042006F006100620065002000
      73007000610072007400650001000D000A004C006100620065006C0031000100
      5000E9006C006400E1006E007900200073007A00E1006D003A00010043006F00
      70006900650073003A0001004E0072002E002000640065002000650078006500
      6D0070006C006100720065003A0001000D000A004C006100620065006C003100
      300001005400650072006D00E9006B003A000100500072006F00640075006300
      74003A000100500072006F006400750073003A0001000D000A004C0061006200
      65006C00320001004400E100740075006D003A00010044006100740065003A00
      010044006100740061003A0001000D000A004C006100620065006C0033000100
      4B00690061006400F300200070006100720074006E00650072003A0001004900
      73007300750069006E006700200070006100720074006E00650072003A000100
      500061007200740065006E006500720020006500780070006500640069007400
      6F0072003A0001000D000A004C006100620065006C00340001004B0069006100
      6400F30020007400E10072006F006C00F3003A00010049007300730075006900
      6E0067002000730074006F0072006100670065003A0001004400650070006F00
      7A0069007400200065007800700065006400690074006F0072003A0001000D00
      0A004C006100620065006C003500010046006F00670061006400F30020007000
      6100720074006E00650072003A00010052006500630065006900760069006E00
      6700200070006100720074006E00650072003A00010050006100720074006500
      6E00650072002000640065007300740069006E0061007400610072003A000100
      0D000A004C006100620065006C003600010046006F00670061006400F3002000
      7400E10072006F006C00F3003A00010052006500630065006900760069006E00
      67002000730074006F0072006100670065003A0001004400650070006F007A00
      690074002000640065007300740069006E0061007400610072003A0001000D00
      0A004C006100620065006C00370001004B00690061006400F30020006B00E900
      73007A006C006500740065000100490073007300750065007200270073002000
      730074006F0063006B000100530074006F00630075006C002000650078007000
      65006400690074006F00720075006C007500690001000D000A004C0061006200
      65006C003800010046006F00670061006400F30020006B00E90073007A006C00
      6500740065003A00010052006500630065006900760065007200270073002000
      730074006F0063006B003A000100530074006F00630075006C00200064006500
      7300740069006E00610074006100720075006C00750069003A0001000D000A00
      4C006100620065006C00390001004D0065006E006E00790069007300E9006700
      3A0001005100750061006E0074006900740079003A000100430061006E007400
      690074006100740065003A0001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A00730074004400690073007000
      6C00610079004C006100620065006C0073005F0055006E00690063006F006400
      65000D000A007300740046006F006E00740073005F0055006E00690063006F00
      640065000D000A005400520061006B005F0073007A0061006C006C0046000100
      5400610068006F006D00610001005400610068006F006D006100010054006100
      68006F006D00610001000D000A00730074004D0075006C00740069004C006900
      6E00650073005F0055006E00690063006F00640065000D000A00730074005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      730074004F00740068006500720053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A007300740043006F006C006C0065006300
      740069006F006E0073005F0055006E00690063006F00640065000D000A004A00
      76004400420055006C00740069006D00470072006900640031002E0043006F00
      6C0075006D006E0073005B0030005D002E005400690074006C0065002E004300
      61007000740069006F006E0001007400650072006D0065006B005F0069006400
      01007400650072006D0065006B005F006900640001007400650072006D006500
      6B005F006900640001000D000A004A0076004400420055006C00740069006D00
      470072006900640031002E0043006F006C0075006D006E0073005B0031005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005400
      650072006D00E9006B0020006B00F30064000100500072006F00640075006300
      7400200063006F0064006500010043006F0064002000700072006F0064007500
      730001000D000A004A0076004400420055006C00740069006D00470072006900
      640031002E0043006F006C0075006D006E0073005B0032005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001005400650072006D00
      E9006B0020006E00E90076000100500072006F00640075006300740020006E00
      61006D00650001004E0075006D0065002000700072006F006400750073000100
      0D000A004A0076004400420055006C00740069006D0047007200690064003100
      2E0043006F006C0075006D006E0073005B0033005D002E005400690074006C00
      65002E00430061007000740069006F006E0001004D0065006E006E0079006900
      7300E900670001005100750061006E0074006900740079000100430061006E00
      74006900740061007400650001000D000A004A0076004400420055006C007400
      69006D00470072006900640031002E0043006F006C0075006D006E0073005B00
      34005D002E005400690074006C0065002E00430061007000740069006F006E00
      01005400F60072007400200073007A0065006D000100420072006F006B006500
      6E0020006B00650072006E0065006C007300010042006F006100620065002000
      73007000610072007400650001000D000A007300740043006800610072005300
      6500740073005F0055006E00690063006F00640065000D000A00540052006100
      6B005F0073007A0061006C006C0046000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00}
  end
end
