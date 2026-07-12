object PartnerekF: TPartnerekF
  Left = 0
  Top = 0
  Caption = 'Partnerek'
  ClientHeight = 369
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 41
    Align = alTop
    TabOrder = 0
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
      Left = 152
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Lez'#225'r'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ellen'#337'rz'#233's'
      TabOrder = 2
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Felold'
      TabOrder = 3
      Visible = False
      OnClick = Button3Click
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 824
    Height = 328
    ActivePage = tbReszlet
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'Lista'
      object PartnerGrid: TDBGrid
        Left = 0
        Top = 57
        Width = 816
        Height = 243
        Align = alClient
        DataSource = PartnerDS
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = PartnerGridCellClick
        OnMouseUp = PartnerGridMouseUp
        Columns = <
          item
            Expanded = False
            FieldName = 'kod'
            Title.Caption = 'K'#243'd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nev'
            Title.Caption = 'N'#233'v'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'irsz'
            Title.Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telepules'
            Title.Caption = 'Telep'#252'l'#233's'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kozterulet'
            Title.Caption = 'K'#246'zter'#252'let neve'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kozt_jelleg'
            Title.Caption = 'K'#246'zt.jellege'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hazszam'
            Title.Caption = 'H'#225'zsz'#225'm'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'epulet'
            Title.Caption = #201'p'#252'let'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lepcsohaz'
            Title.Caption = 'Lph.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emelet'
            Title.Caption = 'Em.'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ajto'
            Title.Caption = 'Ajt'#243
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hrsz'
            Title.Caption = 'H.R.SZ.'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefon'
            Title.Caption = 'Telefon'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ado_azon'
            Title.Caption = 'Ad'#243'.azon'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ado_kod'
            Title.Caption = 'Ad'#243' k'#243'd'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ado_megye_kod'
            Title.Caption = 'Ad'#243'.M.k'#243'd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kuj'
            Title.Caption = 'K'#220'J'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ktj'
            Title.Caption = 'KTJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Adoszam'
            Title.Caption = 'EU adoszam'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          Left = 12
          Top = 2
          Width = 39
          Height = 13
          Caption = 'Sz'#369'r'#233's: '
        end
        object lblmire: TLabel
          Left = 52
          Top = 2
          Width = 18
          Height = 13
          Caption = 'K'#243'd'
        end
        object edszures: TEdit
          Left = 12
          Top = 18
          Width = 242
          Height = 21
          TabOrder = 0
          OnChange = edszuresChange
        end
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'R'#233'szletek'
      ImageIndex = 1
      object lbl1: TLabel
        Left = 32
        Top = 19
        Width = 22
        Height = 13
        Caption = 'K'#243'd:'
        FocusControl = dbedtKod
      end
      object lbl2: TLabel
        Left = 32
        Top = 67
        Width = 23
        Height = 13
        Caption = 'N'#233'v:'
        FocusControl = dbedtNev
      end
      object lbl3: TLabel
        Left = 32
        Top = 115
        Width = 66
        Height = 13
        Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm:'
        FocusControl = dbedtIrsz
      end
      object lbl4: TLabel
        Left = 184
        Top = 115
        Width = 49
        Height = 13
        Caption = 'Telep'#252'l'#233's:'
        FocusControl = dbedtTelepules
      end
      object lbl5: TLabel
        Left = 32
        Top = 163
        Width = 38
        Height = 13
        Caption = 'Ker'#252'let:'
        FocusControl = dbedtKerulet
      end
      object lbl6: TLabel
        Left = 120
        Top = 163
        Width = 80
        Height = 13
        Caption = 'K'#246'zter'#252'let neve:'
        FocusControl = dbedtKozterulet
      end
      object lbl7: TLabel
        Left = 272
        Top = 163
        Width = 87
        Height = 13
        Caption = 'K'#246'zter'#252'let jellege:'
        FocusControl = dbedtKozt_Jelleg
      end
      object lbl8: TLabel
        Left = 423
        Top = 163
        Width = 46
        Height = 13
        Caption = 'H'#225'zsz'#225'm:'
        FocusControl = dbedtHazszam
      end
      object lbl9: TLabel
        Left = 573
        Top = 163
        Width = 54
        Height = 13
        Caption = 'L'#233'pcs'#337'h'#225'z:'
        FocusControl = dbedtLepcsohaz
      end
      object lbl10: TLabel
        Left = 656
        Top = 163
        Width = 36
        Height = 13
        Caption = 'Emelet:'
        FocusControl = dbedtEmelet
      end
      object lbl11: TLabel
        Left = 32
        Top = 211
        Width = 24
        Height = 13
        Caption = 'Ajt'#243':'
        FocusControl = dbedtAjto
      end
      object lbl12: TLabel
        Left = 272
        Top = 211
        Width = 62
        Height = 13
        Caption = 'EU ad'#243'sz'#225'm:'
        FocusControl = dbedtAdoszam
      end
      object Label1: TLabel
        Left = 423
        Top = 211
        Width = 22
        Height = 13
        Caption = 'K'#220'J:'
      end
      object Label2: TLabel
        Left = 575
        Top = 211
        Width = 21
        Height = 13
        Caption = 'KTJ:'
      end
      object Label3: TLabel
        Left = 504
        Top = 163
        Width = 34
        Height = 13
        Caption = #201'p'#252'let:'
      end
      object Label4: TLabel
        Left = 273
        Top = 250
        Width = 32
        Height = 13
        Caption = 'E-mail:'
      end
      object Label5: TLabel
        Left = 423
        Top = 250
        Width = 40
        Height = 13
        Caption = 'Telefon:'
      end
      object Label6: TLabel
        Left = 120
        Top = 211
        Width = 72
        Height = 13
        Caption = 'Helyrajzi sz'#225'm:'
      end
      object Label8: TLabel
        Left = 32
        Top = 251
        Width = 65
        Height = 13
        Caption = 'Ad'#243'.azon.jel:'
      end
      object Label9: TLabel
        Left = 136
        Top = 251
        Width = 43
        Height = 13
        Caption = 'Ad'#243' k'#243'd:'
      end
      object Label10: TLabel
        Left = 193
        Top = 251
        Width = 56
        Height = 13
        Caption = 'Ad'#243'.m.k'#243'd:'
      end
      object lbldijszab: TLabel
        Left = 576
        Top = 250
        Width = 97
        Height = 13
        Caption = 'D'#237'jszab'#225's kateg'#243'ria:'
      end
      object DBNavigator1: TDBNavigator
        Left = 409
        Top = 0
        Width = 215
        Height = 25
        DataSource = PartnerDS
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object dbedtKod: TDBEdit
        Left = 32
        Top = 35
        Width = 199
        Height = 21
        DataField = 'Kod'
        DataSource = PartnerDS
        TabOrder = 1
      end
      object dbedtNev: TDBEdit
        Left = 32
        Top = 83
        Width = 441
        Height = 21
        DataField = 'Nev'
        DataSource = PartnerDS
        TabOrder = 2
      end
      object dbedtIrsz: TDBEdit
        Left = 32
        Top = 128
        Width = 134
        Height = 21
        DataField = 'Irsz'
        DataSource = PartnerDS
        TabOrder = 3
        OnChange = dbedtIrszChange
      end
      object dbedtTelepules: TDBEdit
        Left = 184
        Top = 128
        Width = 394
        Height = 21
        DataField = 'Telepules'
        DataSource = PartnerDS
        TabOrder = 4
      end
      object dbedtKerulet: TDBEdit
        Left = 32
        Top = 176
        Width = 43
        Height = 21
        DataField = 'Kerulet'
        DataSource = PartnerDS
        TabOrder = 5
      end
      object dbedtKozterulet: TDBEdit
        Left = 120
        Top = 176
        Width = 129
        Height = 21
        DataField = 'Kozterulet'
        DataSource = PartnerDS
        TabOrder = 6
      end
      object dbedtKozt_Jelleg: TDBEdit
        Left = 272
        Top = 176
        Width = 134
        Height = 21
        DataField = 'Kozt_Jelleg'
        DataSource = PartnerDS
        TabOrder = 7
      end
      object dbedtHazszam: TDBEdit
        Left = 423
        Top = 176
        Width = 69
        Height = 21
        DataField = 'Hazszam'
        DataSource = PartnerDS
        TabOrder = 8
      end
      object dbedtLepcsohaz: TDBEdit
        Left = 573
        Top = 176
        Width = 69
        Height = 21
        DataField = 'Lepcsohaz'
        DataSource = PartnerDS
        TabOrder = 9
      end
      object dbedtEmelet: TDBEdit
        Left = 656
        Top = 176
        Width = 69
        Height = 21
        DataField = 'Emelet'
        DataSource = PartnerDS
        TabOrder = 10
      end
      object dbedtAjto: TDBEdit
        Left = 32
        Top = 224
        Width = 69
        Height = 21
        DataField = 'Ajto'
        DataSource = PartnerDS
        TabOrder = 11
      end
      object dbedtAdoszam: TDBEdit
        Left = 272
        Top = 224
        Width = 134
        Height = 21
        DataField = 'Adoszam'
        DataSource = PartnerDS
        TabOrder = 12
      end
      object DBEdtkuj: TDBEdit
        Left = 423
        Top = 224
        Width = 121
        Height = 21
        DataField = 'kuj'
        DataSource = PartnerDS
        MaxLength = 30
        TabOrder = 13
      end
      object DBEdtktj: TDBEdit
        Left = 574
        Top = 224
        Width = 121
        Height = 21
        DataField = 'ktj'
        DataSource = PartnerDS
        MaxLength = 30
        TabOrder = 14
      end
      object DBEdepulet: TDBEdit
        Left = 505
        Top = 176
        Width = 56
        Height = 21
        DataField = 'epulet'
        DataSource = PartnerDS
        TabOrder = 15
      end
      object dbedtemail: TDBEdit
        Left = 273
        Top = 263
        Width = 130
        Height = 21
        DataField = 'email'
        DataSource = PartnerDS
        MaxLength = 20
        TabOrder = 16
      end
      object dbedttelefon: TDBEdit
        Left = 423
        Top = 263
        Width = 121
        Height = 21
        DataField = 'telefon'
        DataSource = PartnerDS
        MaxLength = 20
        TabOrder = 17
      end
      object dbedthrsz: TDBEdit
        Left = 120
        Top = 225
        Width = 129
        Height = 21
        DataField = 'hrsz'
        DataSource = PartnerDS
        TabOrder = 18
      end
      object Edit1: TEdit
        Left = 408
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 19
      end
      object Edit2: TEdit
        Left = 574
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 20
      end
      object bdchkMagansz: TDBCheckBox
        Left = 612
        Top = 130
        Width = 97
        Height = 17
        Caption = 'Mag'#225'nszem'#233'ly'
        DataField = 'magansz'
        DataSource = PartnerDS
        TabOrder = 21
      end
      object dbeadoazon: TDBEdit
        Left = 32
        Top = 264
        Width = 81
        Height = 21
        DataField = 'ado_azon'
        DataSource = PartnerDS
        MaxLength = 8
        TabOrder = 22
      end
      object dbeado_kod: TDBEdit
        Left = 136
        Top = 264
        Width = 43
        Height = 21
        DataField = 'ado_kod'
        DataSource = PartnerDS
        MaxLength = 1
        TabOrder = 23
      end
      object dbeado_megye_kod: TDBEdit
        Left = 193
        Top = 263
        Width = 56
        Height = 21
        DataField = 'ado_megye_kod'
        DataSource = PartnerDS
        MaxLength = 2
        TabOrder = 24
      end
      object cbdijkat: TJvDBLookupCombo
        Left = 573
        Top = 264
        Width = 145
        Height = 21
        DataField = 'd_id'
        DataSource = PartnerDS
        DisplayEmpty = '---Nincs kiv'#225'lasztva---'
        EmptyValue = '0'
        LookupField = 'id'
        LookupDisplay = 'nev'
        LookupSource = dijkatDs
        TabOrder = 25
      end
      object btndijszab: TButton
        Left = 728
        Top = 264
        Width = 75
        Height = 33
        Caption = 'Dijszab'#225's kateg'#243'ri'#225'k'
        TabOrder = 26
        WordWrap = True
        OnClick = btndijszabClick
      end
    end
  end
  object PartnerT: TFDTable
    BeforeInsert = PartnerTBeforeInsert
    AfterInsert = PartnerTAfterInsert
    BeforePost = PartnerTBeforePost
    BeforeDelete = PartnerTBeforeDelete
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    UpdateOptions.UpdateTableName = 'partner'
    TableName = 'partner'
    Left = 296
    Top = 72
  end
  object PartnerDS: TDataSource
    DataSet = PartnerT
    Left = 344
    Top = 72
  end
  object dijkatT: TFDTable
    Connection = AF.Kapcs
    TableName = 'dijaszab_kategoriak'
    Left = 648
    Top = 160
  end
  object dijkatDs: TDataSource
    DataSet = dijkatT
    Left = 696
    Top = 160
  end
  object siLangLinked_PartnerekF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    DefaultLanguage = 2
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
    Left = 408
    Top = 192
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540050006100720074006E006500720065006B0046000100
      50006100720074006E006500720065006B00010050006100720074006E006500
      720073000100500061007200740065006E0065007200690001000D000A006200
      6400630068006B004D006100670061006E0073007A0001004D0061006700E100
      6E0073007A0065006D00E9006C00790001005000720069007600610074006500
      200069006E0064006900760069006400750061006C0001005000650072007300
      6F0061006E0003012000660069007A0069006300030101000D000A0062007400
      6E00640069006A0073007A00610062000100440069006A0073007A0061006200
      E100730020006B006100740065006700F30072006900E1006B00010050007200
      6900630069006E0067002000630061007400650067006F007200690065007300
      0100430061007400650067006F00720069006900200064006500200074006100
      72006900660061007200650001000D000A00620074006E004B0069006C006500
      70006500730001004B0069006C00E9007000E900730001004500780069007400
      010049006500190269007200650001000D000A0042007500740074006F006E00
      310001004C0065007A00E100720001004C006F0063006B00010042006C006F00
      630061007200650001000D000A0042007500740074006F006E00320001004500
      6C006C0065006E00510172007A00E9007300010043006800650063006B000100
      560065007200690066006900630061007200650001000D000A00420075007400
      74006F006E0033000100460065006C006F006C006400010055006E006C006F00
      63006B0001004400650062006C006F00630061007200650001000D000A004C00
      6100620065006C00310001004B00DC004A003A0001004B00DC004A003A000100
      4B00DC004A003A0001000D000A004C006100620065006C003100300001004100
      6400F3002E006D002E006B00F30064003A000100540061007800200063006F00
      75006E0074007900200063006F00640065003A00010043006F00640020006A00
      7500640065001B022000660069007300630061006C003A0001000D000A004C00
      6100620065006C00320001004B0054004A003A0001004B0054004A003A000100
      4B0054004A003A0001000D000A004C006100620065006C0033000100C9007000
      FC006C00650074003A0001004200750069006C00640069006E0067003A000100
      43006C00030164006900720065003A0001000D000A004C006100620065006C00
      3400010045002D006D00610069006C003A00010045002D006D00610069006C00
      3A00010045002D006D00610069006C003A0001000D000A004C00610062006500
      6C0035000100540065006C00650066006F006E003A000100500068006F006E00
      65003A000100540065006C00650066006F006E003A0001000D000A004C006100
      620065006C0036000100480065006C007900720061006A007A00690020007300
      7A00E1006D003A0001004C006F00740020006E0075006D006200650072003A00
      01004E0072002E00200074006F0070006F006700720061006600690063003A00
      01000D000A004C006100620065006C003700010053007A0071017200E9007300
      3A0020000100460069006C007400650072003A0020000100460069006C007400
      72006100720065003A00200001000D000A004C006100620065006C0038000100
      41006400F3002E0061007A006F006E002E006A0065006C003A00010054006100
      78002000490044003A00010043006F0064002000660069007300630061006C00
      200070006500720073006F006E0061006C003A0001000D000A004C0061006200
      65006C003900010041006400F30020006B00F30064003A000100560041005400
      200063006F00640065003A00010043006F00640020005400560041003A000100
      0D000A006C0062006C00310001004B00F30064003A00010043006F0064006500
      3A00010043006F0064003A0001000D000A006C0062006C003100300001004500
      6D0065006C00650074003A00010046006C006F006F0072003A00010045007400
      61006A003A0001000D000A006C0062006C0031003100010041006A007400F300
      3A00010044006F006F0072003A0001005500190203013A0001000D000A006C00
      62006C0031003200010045005500200061006400F30073007A00E1006D003A00
      010045005500200056004100540020006E0075006D006200650072003A000100
      43006F00640020005400560041002000550045003A0001000D000A006C006200
      6C00320001004E00E90076003A0001004E0061006D0065003A0001004E007500
      6D0065003A0001000D000A006C0062006C003300010049007200E1006E007900
      ED007400F30073007A00E1006D003A00010050006F007300740061006C002000
      63006F00640065003A00010043006F006400200070006F001902740061006C00
      3A0001000D000A006C0062006C0034000100540065006C0065007000FC006C00
      E90073003A00010043006900740079003A0001004C006F00630061006C006900
      74006100740065003A0001000D000A006C0062006C00350001004B0065007200
      FC006C00650074003A000100440069007300740072006900630074003A000100
      440069007300740072006900630074003A0001000D000A006C0062006C003600
      01004B00F6007A00740065007200FC006C006500740020006E00650076006500
      3A00010053007400720065006500740020006E0061006D0065003A0001004E00
      75006D00650020007300740072006100640003013A0001000D000A006C006200
      6C00370001004B00F6007A00740065007200FC006C006500740020006A006500
      6C006C006500670065003A000100530074007200650065007400200074007900
      700065003A00010054006900700020007300740072006100640003013A000100
      0D000A006C0062006C00380001004800E1007A0073007A00E1006D003A000100
      48006F0075007300650020006E0075006D006200650072003A0001004E007500
      6D0003017200200063006100730003013A0001000D000A006C0062006C003900
      01004C00E90070006300730051016800E1007A003A0001005300740061006900
      720063006100730065003A000100530063006100720003013A0001000D000A00
      6C0062006C00640069006A0073007A006100620001004400ED006A0073007A00
      61006200E100730020006B006100740065006700F3007200690061003A000100
      500072006900630069006E0067002000630061007400650067006F0072007900
      3A000100430061007400650067006F0072006900650020006400650020007400
      61007200690066006100720065003A0001000D000A006C0062006C006D006900
      7200650001004B00F3006400010043006F0064006500010043006F0064000100
      0D000A00740062004C00690073007400610001004C0069007300740061000100
      4C0069007300740001004C00690073007400030101000D000A00740062005200
      650073007A006C006500740001005200E90073007A006C006500740065006B00
      0100440065007400610069006C007300010044006500740061006C0069006900
      01000D000A0073007400480069006E00740073005F0055006E00690063006F00
      640065000D000A007300740044006900730070006C00610079004C0061006200
      65006C0073005F0055006E00690063006F00640065000D000A00730074004600
      6F006E00740073005F0055006E00690063006F00640065000D000A0054005000
      6100720074006E006500720065006B00460001005400610068006F006D006100
      01005400610068006F006D00610001005400610068006F006D00610001000D00
      0A00730074004D0075006C00740069004C0069006E00650073005F0055006E00
      690063006F00640065000D000A00440042004E00610076006900670061007400
      6F00720031002E00480069006E00740073000100220046006900720073007400
      20007200650063006F007200640022002C0022005000720069006F0072002000
      7200650063006F007200640022002C0022004E00650078007400200072006500
      63006F007200640022002C0022004C0061007300740020007200650063006F00
      7200640022002C00220049006E00730065007200740020007200650063006F00
      7200640022002C002200440065006C0065007400650020007200650063006F00
      7200640022002C002200450064006900740020007200650063006F0072006400
      22002C00220050006F00730074002000650064006900740022002C0022004300
      61006E00630065006C002000650064006900740022002C002200520065006600
      72006500730068002000640061007400610022002C0022004100700070006C00
      79002000750070006400610074006500730022002C002200430061006E006300
      65006C002000750070006400610074006500730022000100010001000D000A00
      7300740053007400720069006E00670073005F0055006E00690063006F006400
      65000D000A00730074004F00740068006500720053007400720069006E006700
      73005F0055006E00690063006F00640065000D000A0062006400630068006B00
      4D006100670061006E0073007A002E00560061006C0075006500430068006500
      63006B0065006400010054007200750065000100010001000D000A0062006400
      630068006B004D006100670061006E0073007A002E00560061006C0075006500
      55006E0063006800650063006B00650064000100460061006C00730065000100
      010001000D000A0063006200640069006A006B00610074002E00440069007300
      70006C006100790045006D0070007400790001002D002D002D004E0069006E00
      6300730020006B0069007600E1006C00610073007A007400760061002D002D00
      2D000100010001000D000A0063006200640069006A006B00610074002E004C00
      6F006F006B007500700044006900730070006C006100790001006E0065007600
      0100010001000D000A0063006200640069006A006B00610074002E004C006F00
      6F006B00750070004600690065006C0064000100690064000100010001000D00
      0A0050006100720074006E006500720054002E0043006F006E006E0065006300
      740069006F006E004E0061006D00650001004B00610070006300730001000100
      01000D000A0050006100720074006E006500720054002E0049006E0064006500
      78004600690065006C0064004E0061006D006500730001004900440001000100
      01000D000A00640069006A006B006100740054002E0043006F006E006E006500
      6300740069006F006E004E0061006D00650001004B0061007000630073000100
      010001000D000A007300740043006F006C006C0065006300740069006F006E00
      73005F0055006E00690063006F00640065000D000A0050006100720074006E00
      6500720047007200690064002E0043006F006C0075006D006E0073005B003000
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      4B00F3006400010043006F0064006500010043006F00640001000D000A005000
      6100720074006E006500720047007200690064002E0043006F006C0075006D00
      6E0073005B0031005D002E005400690074006C0065002E004300610070007400
      69006F006E0001004E00E900760001004E0061006D00650001004E0075006D00
      650001000D000A0050006100720074006E006500720047007200690064002E00
      43006F006C0075006D006E0073005B00310030005D002E005400690074006C00
      65002E00430061007000740069006F006E00010041006A007400F30001004400
      6F006F007200010055001902030101000D000A0050006100720074006E006500
      720047007200690064002E0043006F006C0075006D006E0073005B0031003100
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      48002E0052002E0053005A002E0001004C006F00740020006E006F002E000100
      4E0072002E00200074006F0070002E0001000D000A0050006100720074006E00
      6500720047007200690064002E0043006F006C0075006D006E0073005B003100
      32005D002E005400690074006C0065002E00430061007000740069006F006E00
      0100540065006C00650066006F006E000100500068006F006E00650001005400
      65006C00650066006F006E0001000D000A0050006100720074006E0065007200
      47007200690064002E0043006F006C0075006D006E0073005B00310033005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001004500
      2D006D00610069006C00010045002D006D00610069006C00010045002D006D00
      610069006C0001000D000A0050006100720074006E0065007200470072006900
      64002E0043006F006C0075006D006E0073005B00310034005D002E0054006900
      74006C0065002E00430061007000740069006F006E00010041006400F3002E00
      61007A006F006E000100540061007800200049004400010043006F0064002000
      660069007300630061006C0001000D000A0050006100720074006E0065007200
      47007200690064002E0043006F006C0075006D006E0073005B00310035005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001004100
      6400F30020006B00F30064000100560041005400200063006F00640065000100
      43006F006400200054005600410001000D000A0050006100720074006E006500
      720047007200690064002E0043006F006C0075006D006E0073005B0031003600
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      41006400F3002E004D002E006B00F30064000100540061007800200063006F00
      75006E0074007900200063006F0064006500010043006F00640020006A007500
      640065001B022000660069007300630061006C0001000D000A00500061007200
      74006E006500720047007200690064002E0043006F006C0075006D006E007300
      5B00310037005D002E005400690074006C0065002E0043006100700074006900
      6F006E0001004B00DC004A0001004B00DC004A0001004B00DC004A0001000D00
      0A0050006100720074006E006500720047007200690064002E0043006F006C00
      75006D006E0073005B00310038005D002E005400690074006C0065002E004300
      61007000740069006F006E0001004B0054004A0001004B0054004A0001004B00
      54004A0001000D000A0050006100720074006E00650072004700720069006400
      2E0043006F006C0075006D006E0073005B00310039005D002E00540069007400
      6C0065002E00430061007000740069006F006E00010045005500200061006400
      6F0073007A0061006D00010045005500200056004100540020006E006F002E00
      010043006F006400200054005600410020005500450001000D000A0050006100
      720074006E006500720047007200690064002E0043006F006C0075006D006E00
      73005B0032005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010049007200E1006E007900ED007400F30073007A00E1006D000100
      50006F007300740061006C00200063006F0064006500010043006F0064002000
      70006F001902740061006C0001000D000A0050006100720074006E0065007200
      47007200690064002E0043006F006C0075006D006E0073005B0033005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010054006500
      6C0065007000FC006C00E90073000100430069007400790001004C006F006300
      61006C006900740061007400650001000D000A0050006100720074006E006500
      720047007200690064002E0043006F006C0075006D006E0073005B0034005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001004B00
      F6007A00740065007200FC006C006500740020006E0065007600650001005300
      7400720065006500740020006E0061006D00650001004E0075006D0065002000
      73007400720061006400030101000D000A0050006100720074006E0065007200
      47007200690064002E0043006F006C0075006D006E0073005B0035005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001004B00F600
      7A0074002E006A0065006C006C00650067006500010053007400720065006500
      7400200074007900700065000100540069007000200073007400720061006400
      030101000D000A0050006100720074006E006500720047007200690064002E00
      43006F006C0075006D006E0073005B0036005D002E005400690074006C006500
      2E00430061007000740069006F006E0001004800E1007A0073007A00E1006D00
      010048006F0075007300650020006E0075006D0062006500720001004E007500
      6D00030172002000630061007300030101000D000A0050006100720074006E00
      6500720047007200690064002E0043006F006C0075006D006E0073005B003700
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      C9007000FC006C006500740001004200750069006C00640069006E0067000100
      43006C000301640069007200650001000D000A0050006100720074006E006500
      720047007200690064002E0043006F006C0075006D006E0073005B0038005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001004C00
      700068002E0001005300740061006900720063002E000100530063002E000100
      0D000A0050006100720074006E006500720047007200690064002E0043006F00
      6C0075006D006E0073005B0039005D002E005400690074006C0065002E004300
      61007000740069006F006E00010045006D002E00010046006C002E0001004500
      74002E0001000D000A0073007400430068006100720053006500740073005F00
      55006E00690063006F00640065000D000A00540050006100720074006E006500
      720065006B0046000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      52005300450054000100440045004600410055004C0054005F00430048004100
      520053004500540001000D000A00}
  end
end
