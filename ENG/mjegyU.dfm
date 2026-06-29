object MjegyF: TMjegyF
  Left = 0
  Top = 0
  Caption = 'Create a weighning ticket'
  ClientHeight = 869
  ClientWidth = 1190
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
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAlso: TPanel
    Left = 0
    Top = 456
    Width = 1190
    Height = 413
    Align = alBottom
    TabOrder = 0
    OnClick = pnlAlsoClick
    object lblpartner: TLabel
      Left = 7
      Top = 71
      Width = 40
      Height = 13
      Caption = 'Partner:'
    end
    object Label3: TLabel
      Left = 11
      Top = 6
      Width = 30
      Height = 13
      Caption = 'Direction:'
    end
    object Label4: TLabel
      Left = 752
      Top = 33
      Width = 96
      Height = 13
      Caption = 'Bill of deli./Invoice'
    end
    object Label1: TLabel
      Left = 173
      Top = 180
      Width = 39
      Height = 13
      Caption = 'Product:'
    end
    object Label6: TLabel
      Left = 752
      Top = 120
      Width = 53
      Height = 13
      Caption = 'License plate:'
    end
    object Label7: TLabel
      Left = 936
      Top = 120
      Width = 62
      Height = 13
      Caption = 'License plate 2:'
    end
    object Label9: TLabel
      Left = 185
      Top = 319
      Width = 34
      Height = 13
      Caption = 'Gross:'
    end
    object Label10: TLabel
      Left = 293
      Top = 319
      Width = 26
      Height = 13
      Caption = 'Tara:'
    end
    object Label11: TLabel
      Left = 401
      Top = 319
      Width = 31
      Height = 13
      Caption = 'Net:'
    end
    object Label2: TLabel
      Left = 11
      Top = 34
      Width = 74
      Height = 16
      Caption = '1. measure:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblelsodat: TLabel
      Left = 91
      Top = 34
      Width = 61
      Height = 16
      Caption = 'lblElsodat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 227
      Top = 34
      Width = 101
      Height = 16
      Caption = '2. measure:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblmasdat: TLabel
      Left = 334
      Top = 33
      Width = 62
      Height = 16
      Caption = 'lblMasdat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblelsoido: TLabel
      Left = 91
      Top = 52
      Width = 58
      Height = 16
      Caption = 'lblElsoido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblmasido: TLabel
      Left = 334
      Top = 55
      Width = 59
      Height = 16
      Caption = 'lblMasido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 282
      Width = 61
      Height = 13
      Caption = 'Note:'
    end
    object Label13: TLabel
      Left = 752
      Top = 164
      Width = 62
      Height = 13
      Caption = 'Scale operator'
    end
    object lblekaer: TLabel
      Left = 8
      Top = 319
      Width = 39
      Height = 13
      Caption = 'EK'#193'ER: '
    end
    object Label27: TLabel
      Left = 752
      Top = 224
      Width = 34
      Height = 13
      Caption = 'Storage:'
    end
    object lblsznetto: TLabel
      Left = 618
      Top = 319
      Width = 46
      Height = 13
      Caption = 'Calc.net:'
    end
    object lblpartner2: TLabel
      Left = 7
      Top = 112
      Width = 49
      Height = 13
      Caption = 'Partner 2:'
    end
    object lbllevonszoveg: TLabel
      Left = 752
      Top = 282
      Width = 115
      Height = 13
      Caption = 'Mass deduction text:'
    end
    object lbl_tomeg_levon: TLabel
      Left = 510
      Top = 320
      Width = 76
      Height = 13
      Caption = 'Mass deduction:'
    end
    object lblTomeg1: TLabel
      Left = 155
      Top = 65
      Width = 12
      Height = 23
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 173
      Top = 73
      Width = 11
      Height = 13
      Caption = 'kg'
    end
    object lblTomeg2: TLabel
      Left = 411
      Top = 65
      Width = 12
      Height = 23
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 429
      Top = 73
      Width = 11
      Height = 13
      Caption = 'kg'
    end
    object Label5: TLabel
      Left = 8
      Top = 180
      Width = 29
      Height = 13
      Caption = 'Type:'
    end
    object lblSorszam: TLabel
      Left = 480
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Serial num.:'
    end
    object btnFolytatasos_mentes: TSpeedButton
      Left = 510
      Top = 362
      Width = 192
      Height = 36
      Caption = 'Continue weighn.ticket'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        CA130000424DCA13000000000000420000002800000032000000320000000100
        100003000000881300008905000089050000000000000000000000F80000E007
        00001F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0D630D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0D6348224922ED62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0D630822345655562822EC62FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0D6348223456F455D355555E2822ED62FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63482234563456ED3BB044955E2822
        0D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D6308223456F4554C33
        D044955E2822ED62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D632822
        355614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0D632822345614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0D632822345614564C33D044955E2822EC62FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63081A345614564C33D044955E2822EC62
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D6B2822345634564C33D044
        955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBEF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF7
        9EF79EF79EF79EF79EF79EF79EF79EF79EF79EF77EF79EF7BEF7AB5A4822F455
        14564C33B044755E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBEF709428729A729A729A729A729A729A729A729A729A729
        A729A729A729A729A729A729A729A729A729A729A729A729A7298729C731C831
        E5182E3C7556F4556C3B724D555628220D63FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9EF787295145B34D924D924D924D924D924D924D
        924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D
        924D924DB355F355F45514561456B355145655562822EC62FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF7A729B34D34561456145614561456
        1456145614561456145614561456145614561456145614561456145614561456
        145614561456145614561456F455F455F4551456B34D724D555E48220D63FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF7A729B34D345614561456
        1456145614561456145614561456145614561456145614561456145614561456
        14561456145614561456145614561456F455F455F4553456EE3BF044755E4822
        0D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF787295145B34D
        924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D
        924D924D924D924D924D924D924D924DB355F355F4551456D355524DF4553556
        2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEF70942
        8729A729A729A729A729A729A729A729A729A729A729A729A729A729A729A729
        A729A729A729A729A729A729A7298729C731C831E4182E445556D3556C33F14C
        755E28220D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBEF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF7
        9EF79EF79EF79EF79EF79EF79EF79EF77EF79EF7BEF7AB5A4822D3553456524D
        F14C755E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D6B282214565556
        F3553456555E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63081A3456
        F3559044145634562822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D630822
        345614564C33B044555E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63
        0822345614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0D632822355614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0D6308223456F4554C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0D63482234563456EE3BB044955E28220D63FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0D6348223456F455D355555E2822ED62FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D630822345655562822EC62FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D6348224922ED62FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D630D63FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = btnMentesClick
    end
    object lblfuvarozo: TLabel
      Left = 7
      Top = 147
      Width = 49
      Height = 13
      Caption = 'Carrier:'
    end
    object lblszar: TLabel
      Left = 752
      Top = 320
      Width = 85
      Height = 13
      Caption = 'Place of origin:'
    end
    object cbxIrany: TComboBox
      Left = 60
      Top = 6
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 10
      TabOrder = 0
      OnChange = cbxIranyChange
      Items.Strings = (
        '----Not selected----'
        'B_In'
        'K_Out'
        'Idegen m'#233'r'#233's'
        'T'#246'meg m'#233'r'#233's')
    end
    object btnMentes: TButton
      Left = 1032
      Top = 336
      Width = 137
      Height = 25
      Caption = 'Save and closure'
      TabOrder = 1
      OnClick = btnMentesClick
    end
    object partnerlookup: TJvDBLookupCombo
      Left = 11
      Top = 86
      Width = 665
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'nev;cim;'
      LookupSource = PartnelistDs
      TabOrder = 2
      OnChange = partnerlookupChange
    end
    object spBrutto: TSpinEdit
      Left = 185
      Top = 335
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 4
      Value = 0
    end
    object sptara: TSpinEdit
      Left = 293
      Top = 335
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 5
      Value = 0
    end
    object spnetto: TSpinEdit
      Left = 401
      Top = 335
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 6
      Value = 0
    end
    object edmegjegy: TEdit
      Left = 8
      Top = 297
      Width = 665
      Height = 21
      TabOrder = 7
      Text = 'edmegjegy'
    end
    object btnPartnerek_listaja: TButton
      Left = 536
      Top = 108
      Width = 139
      Height = 17
      Caption = 'List of partners'
      TabOrder = 8
      OnClick = btnPartnerek_listajaClick
    end
    object btn1: TButton
      Left = 551
      Top = 195
      Width = 122
      Height = 19
      Caption = 'List of products'
      TabOrder = 9
      OnClick = btn1Click
    end
    object kezelolookup: TJvDBLookupCombo
      Left = 752
      Top = 177
      Width = 305
      Height = 21
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'nev;'
      LookupSource = AF.merlegkezQDs
      TabOrder = 10
    end
    object btnMerlegkezelok_listaja: TButton
      Left = 920
      Top = 204
      Width = 137
      Height = 20
      Caption = 'List of scale op.'
      TabOrder = 11
      OnClick = btnMerlegkezelok_listajaClick
    end
    object cbxktip: TComboBox
      Left = 920
      Top = 240
      Width = 39
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 12
      Text = 'a'
      Visible = False
      Items.Strings = (
        'a'
        'b')
    end
    object chknincspot: TCheckBox
      Left = 230
      Top = 7
      Width = 97
      Height = 17
      Caption = 'No trailer'
      Checked = True
      State = cbChecked
      TabOrder = 13
    end
    object edekaer: TEdit
      Left = 8
      Top = 334
      Width = 161
      Height = 21
      TabOrder = 14
      Text = 'EdEkaer'
    end
    object cbxRendszam1: TComboBox
      Left = 752
      Top = 136
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      Sorted = True
      TabOrder = 15
      Text = 'CBXRENDSZAM1'
      OnChange = cbxRendszam1Change
    end
    object cbxRendszam2: TComboBox
      Left = 936
      Top = 139
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Sorted = True
      TabOrder = 16
      Text = 'CBXRENDSZAM2'
    end
    object chkRogzitett: TCheckBox
      Left = 353
      Top = 7
      Width = 97
      Height = 17
      Caption = 'Fix tara'
      TabOrder = 17
    end
    object btnTaramegadas: TButton
      Left = 816
      Top = 112
      Width = 81
      Height = 17
      Caption = 'Enter tara'
      TabOrder = 18
      OnClick = btnTaramegadasClick
    end
    object pnlmezgaz: TPanel
      Left = 8
      Top = 219
      Width = 729
      Height = 63
      TabOrder = 19
      object Label17: TLabel
        Tag = 11
        Left = 88
        Top = 26
        Width = 56
        Height = 13
        Caption = 'Base mois.:'
      end
      object Label18: TLabel
        Tag = 11
        Left = 160
        Top = 26
        Width = 33
        Height = 13
        Caption = 'Mois.:'
      end
      object Label19: TLabel
        Tag = 16
        Left = 232
        Top = 26
        Width = 23
        Height = 13
        Caption = 'Oil:'
      end
      object Label20: TLabel
        Tag = 14
        Left = 304
        Top = 26
        Width = 49
        Height = 13
        Caption = 'Clean:'
      end
      object Label21: TLabel
        Tag = 18
        Left = 377
        Top = 26
        Width = 38
        Height = 13
        Caption = 'Hectol.:'
      end
      object Label22: TLabel
        Tag = 12
        Left = 449
        Top = 26
        Width = 41
        Height = 13
        Caption = 'Protein:'
      end
      object Label23: TLabel
        Tag = 13
        Left = 523
        Top = 26
        Width = 50
        Height = 13
        Caption = 'num. of falls:'
      end
      object lblegysegtomeg: TLabel
        Left = 11
        Top = 26
        Width = 72
        Height = 13
        Caption = 'Unit mass: '
      end
      object Label24: TLabel
        Tag = 15
        Left = 592
        Top = 26
        Width = 62
        Height = 13
        Caption = 'Brok.seeds:'
      end
      object Label26: TLabel
        Tag = 17
        Left = 304
        Top = 8
        Width = 65
        Height = 13
        Caption = 'Wheat quality'
      end
      object lblMintaID: TLabel
        Left = 547
        Top = 7
        Width = 40
        Height = 13
        Caption = 'Sample ID'
      end
      object Label16: TLabel
        Tag = 21
        Left = 661
        Top = 27
        Width = 27
        Height = 13
        Caption = 'Gluten:'
      end
      object spalapnedv: TJvSpinEdit
        Tag = 11
        Left = 88
        Top = 38
        Width = 65
        Height = 21
        CheckOptions = [coCheckOnExit]
        ValueType = vtFloat
        ReadOnly = True
        TabOrder = 0
      end
      object spnedv: TJvSpinEdit
        Tag = 11
        Left = 161
        Top = 38
        Width = 65
        Height = 21
        CheckOptions = [coCheckOnExit]
        ValueType = vtFloat
        TabOrder = 1
        OnChange = spnedvChange
        OnExit = spnedvExit
      end
      object spolaj: TJvSpinEdit
        Tag = 16
        Left = 232
        Top = 38
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 2
      end
      object sptisztasag: TJvSpinEdit
        Tag = 14
        Left = 304
        Top = 39
        Width = 65
        Height = 21
        ValueType = vtFloat
        Value = 2
        TabOrder = 3
        OnChange = sptisztasagChange
        OnExit = spnedvExit
      end
      object sphekto: TJvSpinEdit
        Tag = 18
        Left = 377
        Top = 39
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 4
      end
      object spfeherje: TJvSpinEdit
        Tag = 12
        Left = 449
        Top = 39
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 5
      end
      object speses: TJvSpinEdit
        Tag = 13
        Left = 521
        Top = 39
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 6
      end
      object chkkerekites: TCheckBox
        Left = 8
        Top = 4
        Width = 75
        Height = 17
        Caption = 'Rounding'
        TabOrder = 7
      end
      object chkkuk: TCheckBox
        Left = 89
        Top = 4
        Width = 187
        Height = 17
        Hint = 'Sznetto=nett'#243'*(1-Tisztas'#225'g)*(1-Nedvess'#233'g)/(1-Alapnedvess'#233'g)'
        Caption = 'Use corn calculates'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object sptort: TJvSpinEdit
        Tag = 15
        Left = 592
        Top = 38
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 9
        OnChange = spnedvChange
        OnExit = spnedvExit
      end
      object spegysegtomeg: TJvSpinEdit
        Left = 11
        Top = 39
        Width = 65
        Height = 21
        ValueType = vtFloat
        ReadOnly = True
        TabOrder = 10
        OnChange = sptisztasagChange
      end
      object cbxbuzaminoseg: TComboBox
        Tag = 17
        Left = 377
        Top = 5
        Width = 137
        Height = 22
        Style = csOwnerDrawFixed
        TabOrder = 11
        Items.Strings = (
          'Forage'
          'Eur'#243
          'Mills')
      end
      object edSample: TEdit
        Left = 590
        Top = 6
        Width = 67
        Height = 21
        TabOrder = 12
        Text = 'edSample'
        OnChange = edSampleChange
      end
      object spsiker: TJvSpinEdit
        Tag = 21
        Left = 660
        Top = 38
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 13
        OnChange = spnedvChange
        OnExit = spnedvExit
      end
    end
    object taroloklookup: TJvDBLookupCombo
      Left = 752
      Top = 240
      Width = 145
      Height = 21
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = TarolokDs
      TabOrder = 20
    end
    object btnTarolok_listaja: TButton
      Left = 822
      Top = 263
      Width = 75
      Height = 19
      Caption = 'Storages'
      TabOrder = 21
      OnClick = btnTarolok_listajaClick
    end
    object termeklookup: TJvDBLookupCombo
      Left = 176
      Top = 194
      Width = 369
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'Nev;kod;'
      LookupSource = termeklistDs
      TabOrder = 3
      OnCloseUp = termeklookupCloseUp
    end
    object Spsznetto: TSpinEdit
      Left = 618
      Top = 333
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 22
      Value = 0
    end
    object btnNyomtatas: TButton
      Left = 1032
      Top = 370
      Width = 137
      Height = 36
      Caption = 'Print'
      TabOrder = 23
      OnClick = btnMentesClick
    end
    object chkelso_kezi: TCheckBox
      Left = 36
      Top = 52
      Width = 49
      Height = 17
      Caption = 'Manual'
      Enabled = False
      TabOrder = 24
    end
    object chkmasodik_kezi: TCheckBox
      Left = 227
      Top = 51
      Width = 49
      Height = 17
      Caption = 'Manual'
      Enabled = False
      TabOrder = 25
    end
    object partnerlookup2: TJvDBLookupCombo
      Left = 7
      Top = 126
      Width = 665
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'nev;cim;'
      LookupSource = Partnerlist2Ds
      TabOrder = 26
      OnChange = partnerlookup2Change
    end
    object chkpartnerekegy: TCheckBox
      Left = 72
      Top = 108
      Width = 162
      Height = 17
      Caption = 'The two partners are the same'
      TabOrder = 27
    end
    object btnekaer: TButton
      Left = 7
      Top = 361
      Width = 75
      Height = 25
      Caption = 'EK'#193'ER request'
      TabOrder = 28
      OnClick = btnekaerClick
    end
    object levonlookup: TJvDBLookupCombo
      Left = 752
      Top = 297
      Width = 305
      Height = 21
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'Szoveg'
      LookupSource = levon_szovegDs
      TabOrder = 29
      OnChange = levonlookupChange
    end
    object sp_tomeg_levon: TSpinEdit
      Left = 510
      Top = 334
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 30
      Value = 0
      OnChange = sp_tomeg_levonChange
      OnExit = sp_tomeg_levonExit
      OnKeyPress = sp_tomeg_levonKeyPress
    end
    object btnlevon_szoveg: TButton
      Left = 920
      Top = 270
      Width = 137
      Height = 21
      Caption = 'Deduction texts'
      TabOrder = 31
      OnClick = btnlevon_szovegClick
    end
    object tulajlookup: TJvDBLookupCombo
      Left = 723
      Top = 5
      Width = 382
      Height = 21
      DisplayEmpty = '---choose a certificate issuer---'
      EmptyValue = '!'
      LookupField = 'Id'
      LookupDisplay = 'Nev'
      LookupSource = tulajDs
      TabOrder = 32
    end
    object btnMeres: TButton
      Left = 263
      Top = 363
      Width = 177
      Height = 36
      Caption = 'Measure'
      TabOrder = 33
      OnClick = btnMeresClick
    end
    object lucTipus: TJvDBLookupCombo
      Left = 8
      Top = 194
      Width = 156
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'nev'
      LookupSource = AF.tipusQDs
      TabOrder = 34
      OnChange = lucTipusChange
    end
    object speSorszam: TJvSpinEdit
      Left = 480
      Top = 27
      Width = 95
      Height = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 35
    end
    object edszallev: TMemo
      Left = 752
      Top = 52
      Width = 305
      Height = 54
      Lines.Strings = (
        'edszallev')
      TabOrder = 36
    end
    object cbfuvarozo: TJvDBLookupCombo
      Left = 7
      Top = 161
      Width = 665
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '0'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'nev;cim;'
      LookupSource = Partnerlist3Ds
      TabOrder = 37
    end
    object cbxszar: TComboBox
      Left = 752
      Top = 333
      Width = 176
      Height = 21
      TabOrder = 38
      Text = 'cbxszar'
    end
    object chkidegen: TCheckBox
      Left = 598
      Top = 6
      Width = 97
      Height = 17
      Caption = 'IDEGEN M'#201'R'#201'S'
      TabOrder = 39
    end
    object btngongy: TButton
      Left = 600
      Top = 29
      Width = 75
      Height = 25
      Caption = 'G'#246'ngy'#246'legek'
      TabOrder = 40
      OnClick = btngongyClick
    end
  end
  object pnlFelso: TPanel
    Left = 0
    Top = 0
    Width = 1190
    Height = 456
    Align = alClient
    TabOrder = 1
    object pnlFelsoBal: TPanel
      Left = 1
      Top = 1
      Width = 521
      Height = 454
      Align = alLeft
      TabOrder = 0
      object JvDBUltimGrid1: TJvDBUltimGrid
        Left = 1
        Top = 1
        Width = 519
        Height = 452
        Align = alClient
        DataSource = jvmemparosDs
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = JvDBUltimGrid1CellClick
        OnExit = JvDBUltimGrid1Exit
        OnKeyUp = JvDBUltimGrid1KeyUp
        AutoSort = False
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
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datum'
            Title.Caption = 'Date'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ido'
            Title.Caption = 'Time'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tomeg'
            Title.Caption = 'Mass'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kezi'
            Title.Caption = 'Manual'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rendszam'
            Title.Caption = 'License plate'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rendszam2'
            Title.Caption = 'License plate 2'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'irany'
            Title.Caption = 'Dir.'
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'parosit'
            Title.Caption = 'Pairing'
            Width = 43
            Visible = True
          end>
      end
    end
    object pnlFelsoJobb: TPanel
      Left = 522
      Top = 1
      Width = 667
      Height = 454
      Align = alClient
      TabOrder = 1
      object pgKepek: TPageControl
        Left = 1
        Top = 1
        Width = 665
        Height = 452
        ActivePage = tsOsszeskep
        Align = alClient
        TabOrder = 0
        object tsOsszeskep: TTabSheet
          Caption = 'All pic.'
          ImageIndex = 2
          OnResize = tsOsszeskepResize
          object pnlKepBal: TPanel
            Left = 0
            Top = 0
            Width = 313
            Height = 424
            Align = alLeft
            TabOrder = 0
            object pnlKepBalFelso: TPanel
              Left = 1
              Top = 1
              Width = 311
              Height = 208
              Align = alTop
              TabOrder = 0
              object OKep1: TImage
                Left = -7
                Top = -1
                Width = 304
                Height = 194
                Stretch = True
                OnClick = kep1Click
              end
            end
            object pnlKepBalAlso: TPanel
              Left = 1
              Top = 209
              Width = 311
              Height = 214
              Align = alClient
              TabOrder = 1
              object OKep2: TImage
                Tag = 2
                Left = 0
                Top = 6
                Width = 307
                Height = 195
                Picture.Data = {
                  055449636F6E0000010006000000000001002000F70C01006600000080800000
                  01002000280801005D0D01004040000001002000284200008515020030300000
                  01002000A8250000AD5702002020000001002000A8100000557D020010100000
                  0100200068040000FD8D020089504E470D0A1A0A0000000D4948445200000100
                  0000010008060000005C72A866000080004944415478DAECFD69906D49921E86
                  7DEE117196BB64E65B6AAFAEAEEA6D7ABA67E36CCD190C668001B199818B2408
                  A40CA209220589A019095284489A288143C84C124702C045D4421A0840020403
                  0451203043902030C01063987DEFBDAA6B7F7BEE997739E744B8EB47449C73EE
                  CD7CAFAABA5E7555F5BC28BBF5326FDE7B9638E11EEE9FBB7F0E3C1A8FC6A3F1
                  683C1A8FC6A3F1683C1A8FC6A3F1683C1A8FC6A3F1683C1A8FC6A3F1683C1A8F
                  C6A3F1683C1A8FC6A3F14D36E8FDBE8047E3E18CBFF937FE63520D24125FC177
                  1444585408AA508054B5FF3C11291183D80A13818815C4C2300A320A40FF877F
                  E88FBFDFB7F568BCC7E39102F8908CBFF657FE5D0A21D0E1E13D5A2C4EE9FCFC
                  84CECE4EB1589C53DB3574F5CAE3663A9D99AAAAAC73968BA2B4D659CB4C8688
                  98404404C4474EAAAA22AAD279F12A1A4208A1ED7C589C2DFC6271D6791F8488
                  B52C6B4CEA29ED5DB9AAF3D90EAAAA96BDDD2BFA07FE7BFFDAFB3D258FC64318
                  F6FDBE8047E36D0F0650A417033088CFCF0070A72707AE599F15655596655994
                  755D5745E10A63B8304C8E8888998988451541447CE77DBB6EBAA5EF7CDBF9D0
                  76AD6F178BF51A4A2B62DB585B84D1B9054000D0A597BEE33B78343E70E39105
                  F00118FFF5DFFC8F00C0FAB0B6EBE6CC2E97A76EB13C2D4E4F0E274D735E5A2B
                  93E9D4EDCDE6F5137B7BD34FCDA7F533D3E9E4EA743A994D6793AA284BCB2002
                  C8409555615460548325023381414200010A0128BF02D878261680444122C241
                  153E7869BB2EB44DD3AD16CBF5F1E1D1E9AB67A767374F4FCFEE9E9D2D8E16CB
                  D599B1C5D25593B6AC266D554DDAAA98B6CE4D5A220EFFA33FFCA71E29880FC1
                  78A400BEC1E3AFFCE5FF1D00D8BB77EF98B65D3A675156254F77E7E595C2CA4E
                  519A2B4569F68AD25C290BBE5614D8B5167336B243245798F59AB1B46B982B36
                  ECAC35CC8689948840042500440426901254095050BF611340A404021129C00A
                  620511005605A908A90A5455BD08DA1074E5038E55F55444CF5471A6C0C22BCE
                  574D7BB25AB747EB7577D8B572D0AC657FB9684FCECFD7A7C7C7CB45E85C07A0
                  FBDFFE7B7FE9FD9EFA47E392F14801BC87E3577EE12F0200FDCA2FFF2CBDFAEA
                  57D83A2D76766793A79E7CE2FAD5BD9D27CAC2EE5ACBBBC6608F8D7F8C215788
                  B06B2CEF18CB3BCED19EB33465838A19159194402888511081015094674A9E3D
                  213E520651DCF0A10A68926F4D8F9B0849010030691510400401038AA8370085
                  52003828B805D803E854A955501B54576DE7CFDA2E9C041F8E55E85084EE8AE0
                  50958F003EEE5A3D5C2CDA5BFB07C727376EDC5DBEFCCA9BCD7FF27FFB87F27E
                  3F9B47238E470AE0218FBFF3B7FF235AAF8F69B53C32DE2F0DE05DF08BB2EBD6
                  3591EC16A57BE2EADE956FB9B2B7FBAD65E91E2F1C5F355677D9747B069882B4
                  2046610C596694CC3014A51B440AD500A2B49F4774BF570009E04B5A6174519A
                  FEA4DCBF1515000364809175201B5F241018440C22D31F1F14758F2AF920DA06
                  D156052D402B553A15A133113A53E5A3AED35BCB45F3C593D3C56BA767E737DB
                  B63B202A96EBB5766D07DF75148042FFA57FF9C71FB90CEFC37804023EFCE1D2
                  6BAAAABB5DB7BA6A8D7F6A36738F57153F33A9DDF357F6EC67F7F6F8E9A2C08C
                  2954AADEB1F1202854158AB863C7B05D925E45FA57A19477F2B8EBF7E29FDFDF
                  12625C789BA0BDCA106CE079B4B9276852140A190EA0949409590659363461CB
                  608E96872A3CB16999ED5A6116E7E7E69E2BF51557E88BA7A7EB97964B790DC0
                  2D008700CE00AC01F8F7FBC1FD561C8F2C8077397EEABFFD7FD0D1C10DE7FDF9
                  44B579D239FF51E6F629D5F64966FF4459D1B34F3E7EE5B99DDDC9B5C2F1AEAA
                  9FA87625339848A0316E0F369C841E8066391C0B76162E057824D14A23C1C7E8
                  F3F7510618B909E06D79876CAF084A5600CCE631944064A2C24AFA8363B01112
                  DF532203EB1C0023A2BC04D973C09DAE577E7FFFE0F4CDD3D3D52B8B45FB35EF
                  E995B6953756AB76DF776171BEE8DA7FE58FFF5F1F5904DF80F148017C1DE367
                  7FE62F120073E7F64BC5C9C9CD6BDE9F5FB7D63FB9B75B7DFBF56B936F290B7E
                  D239BA621DED1AA37B6569A7D6520152070DAC084C94775E812A40B083802309
                  7132D9A390BE1305104DF48B8387EF3D1405C0501DAE990920660806A5608C4D
                  8AA2C712BC08B5DEEB69103A10A17BC1EBEDA6ED5E3B3F5F7CE5F0F0E495BB77
                  8F6F2E177CD276D52900F9E3FFFAFFE59132788FC62305F036C7177FF32769B5
                  DC37CBE561717ABA5FED1FDCDED9DF7FE3EA479F7BEC1357AED41F9B4EEC478B
                  02DF5A1478D6199D5B4B95B55C4043C10C0629907C788580924F1F07036AFA1D
                  1578370A80B62C80F178B80A60E3F7FC1373F410FAFBE0E1F3C9920111548D07
                  9946955621E8C27BBDA3222F7BD15756ABF0EAD1E1FAF517BFFAE6574E4F56C7
                  805D4FA77BDDCEFC71FFCFFDF3FFF6FBBD14BEA9C62305F080F1855FFF2F707A
                  7A97D6EB052F978795F78BA948B327D23EE6FDFAD9F5FAE4F9679EB9F299C7AE
                  EF7C7267A77AD6DA705DC2BA020271F2ABC5FBE8A31B24135FA28FCF12E5210B
                  8532886CBF73F642ACC3CF71C77D9002C89FCB3F6F8F87A800008804109991C5
                  A120E61E93C84375382F114380A410385B110AE5A575F604648FD68DDC3A3A58
                  BE74E7CEC93F0A1EAFF9A077DBD61F1D1D1D9D6A28BB1010BA0EFA2FFFF1FFE0
                  FD5E221FFAF108047CF020C439AA57ABE38F9F9DDF7A3A84F317AA8A3EF5D413
                  D73EF9F4332F7CAA287085B99B128E0B09018601D2147D13C0390315828424F8
                  44609341BDE4EC67DF7F1CAB47FEFBF85246A0E0A5977ABF9DFFBD1941E3FD46
                  9C315927A2BDD2002802836C20417344124C39B240E93DA520611A5A992A754F
                  5A361F7DFCF1D9A79E79EAF17F6CB50E6F1C1C9E7CE9D6EDFDCF1F1E862F03B8
                  09E0148FB2111FCA7864015C326EBFF933EEE5977FA3FED2177F69E7E4F8E663
                  C634CF7DEA534FFFBEC71E9F7DB29E98A7AD95AB8664C71554A876ACA125910E
                  AA82C25918B650254848BE314CDA299136610510A049A0150C4D3BA926B47F6C
                  D6D328B61F2D80D14EAE63937F6C015C361EA605209014ADC8E0A52AC57B4DB8
                  4054780EC698E432A4F7137E908F9F87AAA6D0242B91515112059F00F6083077
                  A0E6CDD3D3F637EEDC3DFAA55BB7EE7DF5177FF1376EFFF89FFE3BEBF77BBD7C
                  98C7230590C62BAFFC149D9CDC325DBBAA7EF597FFFE33EDFADE538F3F36FBD8
                  E3D7679FDADD711F2F4BFE6C51986BCC3A2596C25A63453D413B1045735E44A0
                  AA48D575C8213806239AF93AB8007977A728C04AD937CEC8FF00E47D50150072
                  AE906A324C0C0CDB944814777C221BAD0070DEEDA18AA814925523921465BA2F
                  A51C4D2000E4016E95682D42E7BEC5AB02FB2551F3D272D97DE50B9FFFDA975E
                  7B6DFF2680F59FF837FFC2A304A377387ECB2B80175FF9297AE9A55F35FB775F
                  AF21EB9DD2E1294BE7DF6DCDFAE37BBBEE137BBBD50BB3897DCAB0EC11530155
                  562898636C5C11D22E18177390B80687F70083210147051BB1BE54A707CDAF0D
                  0B2081801F4805A0FD6B00FC92020006739FEDF09D5E0164D720BE271295A2E1
                  788E9CF290B31363DE025494822A9F1A53DD557537DA565F3C383CFFB59393F6
                  D797CBEEF5F3B3E6E4F060B9FE9FFFB11F0F7834DED6F82DAB007EF667FF1C00
                  F0CBAF7DA160EAE684E60946FBBCA1EEB35776CD0FCF67F4C2B4C66355A973CB
                  A10424EDCA11DE0B41E09C4D316F8552DAC108104D21BEE4D7332886C8280A1D
                  249BBB4840184148470A00FDB980AC00C620E00741014440738864509F31982D
                  022202B31D76FE7C2F3965995312932A820A4C0F9DC6A9633660A641D52800B6
                  60722D51712662EE350D5E3B3A6E7E7E71DEFCD26AD5BDB45E853BEB5577FACF
                  FCC17FE75162D1DB18BF95414003A03E39BEF78C35CB8F3FF9F8F4BBF7768AEF
                  290BFA745D87E7A63557963DAB365004300D0B97C06046CAA6CB02A7E93F4069
                  D81D291BFC44111D84A654DA516A2D0068C604F2C8D6EC90C99741C40F0AF2C5
                  A96E00C8FF8C5C96FE9A258605F39792F1A0C90352D28C83A63787398E519171
                  9233A030504501F5D798B03B99144F15C5FC23AB59F599E5D2FFEAE969FB2B37
                  6F1C7E01C01BEFF7FC7C18C66F390BE04B9FFF4977E7CE4B93A3A3D71F3B5FDC
                  7B81F9E8773DF1F8ECDBAE5D9B7C6C3E354FAAAEE786BD21122204002126CEE6
                  9D4E29EEE929641773E4536E3C69127E2026F8685F74131779DCD54919A406BD
                  12A05873A3185CD871EC3FEFD85930741CF67BBF2C001D14406FB2D325E7E6D1
                  77D2506CE21B59A99122DD5B9C2786BBF05DE9E7B3AF4B10662B803D54E15B4D
                  AB2F9F1CAD3FFF95AFBEFEB757CBEEB5F5CA1FFE913FFAE38F80C2FB8CDF120A
                  E0F6CD5FC06A754637DEFCEAE4E4E8F5C7CECF6F3D072C3E5596E13B9E7E66FA
                  833BF3E229E76417E84A95D63A9BB3DBA2293F2800E9773A828B79F21829807E
                  4633BA9F8C5E1AC7E6639C3C2A80012854048CC380830218BEF7C15200041E15
                  1729E54420DAB4647A05000C3508E34CC58C6D50CE24E8CFC1307DE151EF7600
                  8342CD3A202A8D4E855741F858827983A8FAB5DBB70F7FEE70FFF4CB4787CB37
                  96E772F487FFC53FD5BE4F4BF0033BBEE915C08D377E8A6FDF7CD9DDBBFB4675
                  7676F385C2AD3FED5CF799B20C9FA96B7CFAB1EBD547CB926AC09BE0DB084651
                  4C52897EA7A6145781C26328CE71C84234288071F82E2A0101B6144016A024D0
                  1B4F40B129C4F4A15100F94F0F52009BC23FCC1B88372A15C773912D2CBAA000
                  9252EEAB247309B3ED98CA33E2FAEEF9D9FA979A55F8CD662D5F3CDC3FFFF2D7
                  5EBDF92680F67FF23FFBF147D18234CCBB3FC407777CE937FF2A9F9FEF5777EF
                  BC7AF5DEDD573F52D8D58FD455F73B7677E807AF5E31DFB1B7679E73A6295557
                  ACD28248618C810401B101D4A49D8901032849B453FBE21C1E65F3257336ED68
                  1B09B2E3B060168FDE924E8BB8BFEA2CC4391CB825DC3D32BEFDD9B7A300B6BE
                  77C967F5520590137B800BD7B2F1D1F1B5A5E3A5F7C73B7B0452D3EE4E2609FF
                  F8B59908D5731B64A5C8F1085109089404A20111A8856146ED7D37ABCAF27A5D
                  554F16AEBCA20A29CAEAA4AAAAF6F7FDEECF85CF7DFFB7E1EFFED42FBE7F8BF3
                  0332BED941C0E9FEBDD79FB9F1E6173EFDFA6B5FFCFEDFFFBBBFEF775FBD523F
                  E70ABFA7DA14AA2D2474099C8BA833510C5B65412305824A24D04A9641BF4013
                  A0B569E0CA90F492583BA29F4CFD021EBE1C872A705F99DDB01AE8411FCC47C3
                  DBF8D0431F39943984071F7C858AEC348D71FFCD791994A860B01632903A3863
                  79FE8873B4254035540AFB1C1BBE369916CF4E674F7CFAEA7579FEB5D76EFEF4
                  BD7B275F037000A0F9864FD4076C7CD3B9006FBEF1D3D4B52B7BEBE697AFBDFC
                  B55FFC56C8D1F75CBF567CDF0BCF3FF6DDE28F3E5258B18685414AA202360C36
                  D110925E1237117AD58456735A7CAA29BB6FBC2BA267E419BF9FF7761D15E8E8
                  258A802FDB4D31B61CD09BFB97BB00FD37BF61C5409B1800C53A9F91F00F0444
                  34DCF388B568B02478746DFDB793508F2C831C22E59C6E9CDC014EC7CD29D860
                  A8308CAD001815A14E3C96CCD5CBA2F62BE78BF6E7DFBC71EF173EFF85AFBEF8
                  BFF8637F66FF3D58861F9AF14DA5005E7EF927CDD75EFCF5EAE8F0F695D39357
                  BFE3D967663F389BEA774D27F22DF3293DE34C531342CCC653443F3FA5E852DC
                  3A22742789FC82381BCA6907D77EE7CA4C39DB5399C579DBDCC696502A367FBF
                  5F4DFF075601009B0A207F76B8D48D7BE97FD74DE1EF41521D29C88D7BC99110
                  1E5FD2303F18274F252C469255C02EBA1831CC22C4EE1C7077BA80AF344DF8FC
                  6AEDBF70786FF13377EF1E1C7CF14B2FADFEADFFF57FFA5B2E81E89B0603F8B9
                  5FFC7FDAAF7EF9E766CBB31B4FB19E7CDBF5ABFCBBAE5CB53FB8BBC39FAE2B79
                  427551174564B6D684E6A7BC73007951C5E49668EFC7E30E2A004811EED1FFF3
                  F7377DF021B00D244E9DE8AF6E7D12FDCFF713E2B14B3DF2F72FC500B6BF7B99
                  02789818C0E587DE10F6D1F5D0C677B771844D346198EB511894067781FA6B4F
                  788266D76C006563A666AF77D30D6845A43533F69CE3C79C35D74AE7DAC9B4F4
                  BBBBF3EE132F5CEDFEFE4FFFE66F2980F0436F01FC973FF9E300C07565E6F76E
                  7EE11987D36F9BD5E1873FF6C2B51F25B37CDAD86EC6DC19D1350C032279178F
                  053ACCB64FE3550854056C925FAE23904AB796A932C06603F4D20BB2918B8146
                  A8FEB88E5EC74A83D3EEBB0D020EEF7DD02C005CF868A60F1BBF97BF3744382E
                  E312E00DE594A9C84CFF6CC6F730E40124812793CCFE9C4BC470CEC1CB20CB21
                  597DC618309B40645612CC41E8EC2F2F96DD4F1F1C9CFED2E73FFFD517EB7A7E
                  0820FCC17FEE7FF31056E7077F7C33808004E0F17B775EF9F8B4EA3EB73BB53F
                  787DCF7CDFA45A3E276800EAA0E4C114A3F8C4DCB3D9705A6022034907330661
                  4F75BD9A76F1CB80AA8DCBD02CD3290B30D365F5429CDFDF7607EE3F1E1EA437
                  B6CDF376FD368EDE1379BCDD719F63EAC528427F659A6323347C7FACF82E9BA5
                  E44AE4C2A14C6D484430C62084907239A2F2B596114410AB363B433033223BB3
                  0E93BDBDF2596BF73E1DC2277EE6D557EFFC0C6216E10725E1F23D1D1F5A0BE0
                  EEDDFF8EBEF0F99F2D57ABD3ABABD59DEF9B4EDADFBE3793EF9E4FC2A7AAA27D
                  9CB971E08C16A79D20F9FDD18B6770FA39E7EE13014C3979771C921A4C55F4FE
                  66AAE0DB30FDC726B466A03AA6118FA6BC27F2EC0B5D522110808B21BD4DE763
                  0C2CA6A35F62016C3F5ADA12408C2C8C4DF06DB000C6E71DE31D177DF5DEBC27
                  609B8EEC72CB21DDD70511A33172985C341A9FA4FF6EB6CE2859289A232D8845
                  461A133086CF33415520B9580B9C2C0C1714E68CE06E4BA0AFDEBD77F68FBEFA
                  D51BFFBFE5627DFBCE9D93C5BFFA6FFCE96F6A5CE0438901BCF2CADF322F7DF5
                  1766C787AF3EBD5EDEFA8EA79EE0DFB7B71BBE7F5AFB4F14AEB9C6A629C0DDA8
                  50258FC1DC1E43763D9ABC217823E14EBBE0B029655F7C74CC913F3DF2B0477E
                  F6364630808B5101A4EF6E9401736F825F861CF4A6FC7D94C6E66747C71D730D
                  6C290B1D0BDAA5C7BCCC05D8CC45D8F819173192FE58449B2F6CFD3EC215C6E7
                  1DA702E763296DB96097B853E35A0E205B808601B5209D10615E96C5ACAE2B71
                  CE7686B8FB9D3FFCB9F627FEF63FFCA655021F2A17E0CB5FFE7F03807DEDD55F
                  9AEFEFBFFA2C61F199E9C47F6E36353F34A9BB670CB573A0758A2CFCDB8B0FD8
                  5CBC23FEBD8DB12930FD8E37C6F62ED84E7DADDB25E332C1A50B9180077DF3C2
                  8E7EF945BCE5A0B769CEBFFD237FBD46E4C3B99F38C6EEC3907C34D0A961646D
                  0C2E60E66800C1AACA14802BABB2BC766DA773AE9856553DAB2793AFFC85FFEC
                  C7EE0268FEC81FFDB1AFF3FA3EB8E34363017CE90B7F1E4D73CECBD5C9FCF8E8
                  F5E757AB3BDF5B96ED8F5CBD6A7F6477AE9FB46635053516D401243DEA7E29F2
                  DC67EAD10513388ED1AEDA6FCDD85AB3D47FF6B29D151B1FBDCFCE3DBA42BDB0
                  DB0D66FF45BEFFCDE35D1E42C4D639F180CF5EB400A85782DB9FB95C998EAF71
                  F31EF8D2EF6DDC935EA2084716D6F6358EA30A31CB903742878335C697CC457E
                  9FC16C202AC9150401B086793E994E779D73578CB13684B05E37EDE9AA592C7F
                  EFEFF95EFC577FFBE7F0CD343E4C1680F3DD6AF7F5577EF9DB4277FB479F7E72
                  F6B92B7BD3CFD4B53C41B470415A100530E9286EFCA01DF6FEE0D6DBDD25DFCD
                  7847B05ACF11F06E4E382EDB7B075F237AC7DF79FFC65B5D67A41CA344AA9A1A
                  204244406C61D8401558AD164F1AEBAA2B57EBEB93E9931F23ABFFD56FFCC6E1
                  DF03B08F6FB2ECC10F8505F0E257FE527DFBD6979E3CB8F7E2B7A9BFF94F7FEC
                  F9DD1FDEDBE34F5765F7185363DBF68CAC2318A614CBD71E1CBA9F053028808B
                  8B66C32AC8BEE4D647E95D5A0084FBECBC975800178FFFF55A00FC0E2D00BAE0
                  7FBF2716C06582FB9616C0B8988AEE73FCCBEF37775C121138EBE27D27E5C8CC
                  08A18368708A501B433B57AEEE3CF691679F6D0AE7569FFAC453ABBFF7F77FF5
                  9BA6AAF003AF005E7FEDFF33F9DA4B3FF7ECE9E96BDF2961FF879F7EB2F8A1DD
                  1D7CDC99768FB02E808608D26B7520AF9BB75200B8B86E2E596CC301B1B1057F
                  3815C03B75013EC80AE0B2EB7B6B05D0DF671278937908FB880DC35A932E5CAD
                  9296D6F2DC5A670A57D0934F3EDEFE133FFAB9E55FFF2F7EEA9BC212F8C0BA00
                  BFF0F3FF2901285E7FED379EF6DDC1771676F903D6FA1FB8B2577CB270ED8E4A
                  63443C8815D6455F4EF5A2605D4AB5DDA7888DFE7E6958EAD1F8E61B638E0646
                  9030547522366E31544059A122268283648D35DF3BDFA9ACAABAC5628DBFF4E7
                  FFBD2F7BAFCBD54AF48FFDAB7FEAFDBEA9AF7B7C2015C08B5FFD2B383E3A344D
                  D35C3F39B9F59DCE2C7E475DEBE76653F771679B2B4C1E415B0012433986203E
                  F34CD196708FED76C5C55CD747E3B7D2C821C41C6E6DDB0ECC0686634D4834FF
                  25551612888855434DE49FAF2BEB822FCADD9D893B99D6CBAEF32F39279924E2
                  43393E900A00404DD43EF1C66B3FFF3BAFEC2DFFC92BBBF8EC6C8AA79DF133C8
                  BA0FF318722030D4A7ACBBDEDC1C0BFE3B7B363D59E7FB34365A837DE3CE3AFA
                  992EFE8936AF473FB4CB7D745B3153289AFBD0C8C8A41AD3C021480410E04C0C
                  039980C27393A99B3CFFC2138F3FF5D4134FFEEAAF7EF9AF2C97EB97113B1C7F
                  28C7070E03F8C217FEE2EC8DD77FEDF9837B2F7EAE2A4EFEFBD7AFE9774C27FE
                  89C2B6534643808F91A3BEAA8C531A2F6FFA9E5B893DE33CF83E0B6FA36867FC
                  DDED2ABFDE411FDE7D8F3080CD50E5C3C600F0169F455F67300A94267CE5B270
                  DAD78701DC3FACB871616F3B0CF84E3180A1ED3AFA7593B305632DC3506C94FF
                  8D2E260C331545E166D5A4DCD3A062D9ACFFC0EFFFEDCBBFF6FFFDBB2B7C08C7
                  074A017CF5C5BF3C7DF5955F7E61BDBCF93D4C27BFF3CA9E7EFF7C264F94B6AB
                  0DB586E063824FCEFE0212B5F4B06B8F17C6A50A60944576B902B84F26DD05E1
                  7F7B0AE072617C9002E04D61DA886BBF4B054017FBF6BDA502D8CEB8D3EDF36F
                  1F67F49D078087EF0C04E4AD3FBD7B10301E275510E679211E6A1F68B45124EF
                  321E960C1339A84E898D2D8B42ABAA5AFFFEDFFD83677FF5AFFFB71F3AF2D10F
                  840BF0E68DBF4100DC2BAFFCEAD3CBC5ADEF72E6FC87E653FFB99DB93E553A5F
                  31B544F088D9F2DCE77BD1A86C7773BC95F9FCC1C50188DEDE7BEFC7783F4CFF
                  319FA2EAA6ABF2EEDCA4F1C69015164675169B3852AF62544924142AB2379D94
                  DFEED8056B9CB66DDBFEA5BFF063BF0960F53FFE233FF6A17192F8DD1FE2DD8D
                  5BB7FE1B48081C42B77B7C74E3DB7C77F0C365B1FEC1271E731FADCA75CD58F7
                  C29FB57DDCF9153001600F90A4965BD273ECDD6F6719D90E978ECB0590BEA12A
                  63485FDDBC4E7D9712F86EEE616C363F9C13BEF5B1B69FC500E0BD3DE1BF9F45
                  46948B9BD22EAF0C4DAFDEED89D20EA4566ECCB9780C500111C83ACB4FCEE7F5
                  77EF5D99FD8EAB57777EBBB5F66922E2FFE43FFC5FBD8B99FEC68E0F8205502C
                  17677BB76E7EE11F3B3EF8CA3FFBCC53D5775FBBC2CF183A9D302D13F9631466
                  01252A0FE94DD94CEEA1E3229A0770E7F5AC5FEF421A72A2D1C3FEEC7B3D3E28
                  D742EFF001E4CEC90FE3DA077878DB02185FD388D62C3572654E8D5B058012AC
                  73F09D5841FB58599AEFFDC8471EDF0311FFDAAF7FE5AF01B80DE043E10EBCAF
                  18C0E9D9AFBB375EFDB5AB37DFFCE2275F7BF597FF07CF3EED3E77758F9EAACB
                  6E0AACC8D8D49167C43293D74E74CD12C3AE5E2CDBA50D7FF7ED8380171381E8
                  2D7CFB879F08B4ED4FD37DF187770A023E2813305957FD3C5FE663E3929F2FDE
                  E36635E0D78F016C66F90DE7D8C47736E77563DEC0178F9DDBB3A59D7F1B38CE
                  E78E6F65E661402420A24DB9EDB941244A0133B361E6C2BAA210E1C3B2AA973F
                  F2C3DFBFFA899FFC071FF8F664EF9B02385FBDC65FFAC23FDCBD75E3373FB13C
                  BFF5DB6693F53FF1D8557E6152FB9935AD61EA62EF79A41EF23D7017BFBF59EC
                  B34907757101A4978E16E56F4905F0E1CA047C900218AE71735E378F7F11F48C
                  DF1A7A13D0E8F96F28806471C465A20841127B540C0F4A262061228ABB8D2336
                  65594D7C5D4F1655559D7FF499C7163FFD33BFF281A6187BDF5C80BBB75EAA0F
                  F75F7DBA6D8EBE8379F1434F3D517F6C52ADE74CAD21743D338F6C75CCEBC11A
                  1D23FD9C1B6EDFC7EBDF1288CB2AC43E00B0CD6539089B02FA01B8C80FCAD0A1
                  57E2FD3FA3C07DFF1E851C0958BEC88EB4F573BF79C46F88C496F0B1F5BB3254
                  2A63CC533BBBB3CF11DB731F64F1FC0BCF9EFDD93FFD6F1F00D07FFDDFF83FBE
                  DF3376E978DF14C0F2FCF8CA6A79F06DD6AE7F603695EF7AECB1FAB1B03E03D0
                  011A4030E8828F60DF76EE7E6ED6911E0A9381242B4141787BBEE2D82A788B91
                  435FF448001FC6787F61882D854AD1C707628767E840163360AE046353DB7308
                  409C3A41E7D0A882889888A6D6E0F9BA2E3F379F4FCEAF5EDDBD7772B63A4A27
                  F8408E6FB802B87BEB1F1A008FFDC2CFFE8D1F20B9FD07A6B3E50F5DD9F5CFB5
                  ED5D58DBC1244D1C4280311681029464D0F66411891C2251258113C5968CB8F6
                  E821ACB26C193C8C63BDCD33DE2769E50380DB3DD4A1A913E865B1154D286DFC
                  0BDFE7FB977FF7E2672EFD0B4089F6FD812309B7C49F8D31915056236F241B3B
                  EA45A0100910551867AE5595FBEC1EA6E6339FF9F8E4DEBDFD158017017C20F1
                  806F2806B05A7FC57DEDA5DFD8FB073FF5D7BF83E48D7FEADA35FFDD7B7BFE99
                  AA5A95444B584EEDB465E09947DF8E2BE300A9A966A4738A1E9D2607202FAA71
                  22C725AFCD84BA078362BDA7B9E5490C6CB5631FF5E2F186CF62EB98EF0D0670
                  F11A36CFF34E31808BC7BC1C03187FEEAD3180EDCF0D3B69FE283D0003C0E8E8
                  F1AD4BFA30A4736FDE6F562E69E7CFEBA54FFED92440E9039F0A109B78E4FC37
                  D5A1EC9C19C46670430D3B365C38E7EC7CB6E38F8F4FDFF8DCF77FB6FDBB7FEF
                  E73F7096C0372C0F60B97A936FDCF8DAE4E8F8CDA74F8E5FFEC1B23CFDAEC964
                  FD4C5DB735DB066C626FB7ECF1F7400D8D5E19A9DE22EC447AF7BE1A3F7D62FB
                  9DCB94C3E5C8F2D6ABBF96CB17DE8307F5D7D037C5A28B7FBFFC580F7AEFFE0A
                  EFFEDF7DABF1765D9EB73B87F7FBCEDB38035DF6DDEDFB7AF0B3E8C5BA278ACD
                  0AFCE27A1A8E169BC75C58734933F408151198D38685E098F56A59BA6F79EA99
                  C77FC77C77F6996BD7AE5CFBF1FFC39F705FC743784FC7374C019C9FDE7277EF
                  BC7275797EF793D3BAFDC777E6FEF9B26C76D83406E8606CCCF0134D6CBB149B
                  47AA0EC499E30692AA231F8D74ABF9E4FD96D7B040B69B550E75053C3A5F563E
                  A356DEE9F3921A5C6AFA39E6285CBC4EF47FCF9F41FA5C029330B4BB1876C278
                  954AD4E31A9AFB0D3E40D01429A105C36BB8AE74DFA3CEA417AC90FB3CBBB12F
                  DC2F7E1DE651D3B9259198EA7DAE5375EB5E37983C1FA4DC462A5B092484CD86
                  A297291DEE9996F3BD0E2EA2F63380514D49DFD3315D97F63D08520EC028DAD4
                  772152F4AE0178C33AA888F0E4743AF9EE6B57AF7CEEFAF5EB1FBFB2B7B3FB67
                  FF4FFFCEFB9E7C371EDF300C60B53A9A1D1FBCF9FC7A75F0BD1FFFD8D54F5EBD
                  B6BE62CCCA7ADFA5461CA66FC6A1A969478467FCF0108900614068B4341492F3
                  04349BE5711061109CBCF0791052D27148281F8F3680C6783D51B3E78414202A
                  29CAB9E3F95DCDDDB0B716FDC6FACE7DED46D7DAF318E40B4F32A683A80EBB4E
                  BCAECCA34F4A89AC342BCEF12E35B2A848B32705686E5692998973C7E264D632
                  0DC937FD05A5F9D72820A29ADAF58D845D093266F25682C994DDAAB1BF229269
                  9E8E935D1CD54115661040068F6048E0D228FCB16760567C311D2CCF936A9A87
                  7C3E55B012905A868172739551EEBF8E9E4FBF06A2C9AF20A8680F3013C52A41
                  102041A11AF1A7081F1A4800548554A95084279E7CF2C9DFAB6ABAE5A269CECF
                  9B05800F4CE1D0374401DCBAF973577FFD577EE2DB4E8F5FFA51E8E1EF9FCFCD
                  F34ADE765E41C100B0E8D08754FAFF8405CA016001B389F5D902900430188608
                  4A0A35A90D54DC83E2C348029A17ABA490900A0DBB6E7605D3750A00D1D02B13
                  D2C4EDAF9CFF9A12C186E6949B26635C683CAA4CCCEA8B0D409C84804314C02C
                  FF69F390CC624BF19A4340C239D2DD65DAAAF11773371C36BD2F9AAD2720097E
                  6AA36D249E93890166D8D4D94829CDB74641329C144CDAB15933381705280820
                  421092C1A2511EE626F54460257010A81002046005F300D83262CF04664E455E
                  210A2D450157D25EB971521A08DACB6854E680970E419315A816AA362A43936C
                  32018C002C5149F69655566A59696AB218880725DD4780D02BE90B34ECD9EAA3
                  74FC0C509325096D3D9FED7CB6B912DA76EDF9E4F0B4FDF13FF56FFD0600F937
                  FFE4BFFF8D10BF078EF75401BCFEC62F1380F2AB2FFEC2532FBEF82BDF5757AB
                  EFBB76959F5EAF57A6EDD6C8D1916C5291466E85DC88535841464106601618F2
                  304AB044B071F5C446161A81C2F8DC78D0DA9A77D2B8B305510465887234DB82
                  899A3D9143AA2A820A442310093520352018E4B661D95FD72D24392F059340A9
                  5C460A62902598249364A230264372632189686F420751041F3B16AB022A9A7E
                  26985C1D976E30CAA689F9EA2629026340A43026D6B81B022C3138CF5DDAFB99
                  B5EF7EDC27BE86D02F6A1AEDF03E2844E2354900820484AC109410541124C4E6
                  1BA2F1F17A0B154048A11CAD0643DC2B70C30C13F511D826849D19C42E766D66
                  EE6B3108047840428024C51E54D186165E04220C550309362A250E715350C028
                  C12405905DB5B8A36F8194D932D878B2E327BC893D6C54966A5486D905213530
                  A600D3F9AC6DFDF320FA8EAAAE6EBDFEC6ED37001CA1EF58F3FE8DF75401DCBE
                  F58A01B0FB0B3FFF0FBEDBD0EA7B6A924F28B0BB587424EAA3D9A771578A997D
                  79114605A006604B300E301C17AE23456908300A18059BC4DC62860CBFD82E1A
                  232510C3345E145E0C42300801106F10BC228448102912108220485CE0A202A8
                  F406B7A4787114D2FCECC65E6D2426455A58CC0C6B2DAC8B0A808D0EFF32F766
                  389410249E57C11025F840F09D26A18B996812A4B716FAED396924260363186C
                  18C632AC653003C622CD1FC399F822933A2065B7A65FD35129C582AA21B33202
                  60260AB8022280F782D0C66BF6010801717E838F8AC14B6469EA2C44190102E1
                  680518102C1B5843F1C5046301EB18C610ACB53086611C0F1E4D061EBCC6734B
                  54E85E144DDBA10B013E30426084CE202841C92765AB510168A6101F278E8D09
                  60F3CFE3F72E5100BD05308A3A8D3EAEF9B908C3DA12A2ECA0E6B1D5AAF9B4C2
                  1C28F88BABA6FBC2BFF03FFDC3ABFFFCCFFFE5F75509BC670AE0577EF1BFE6FD
                  83D7ABE5F2E49983FDDB3FF4D453EEB3D699C7DBB62B1AAFF081631B67C9E08C
                  22CAED2040700A7616D6129C2314862096C18E002350A3708ED2AE97BCF9BE76
                  20A913497C2F1A1082227842E719DE137C47F02DC37B85F7D1E40E5EE13DE2A2
                  96D41730818C17B30DB33391CCFCDE9C65302BAC018A52515885B10A6B016B01
                  E71216C151B05411AF4108A25141794F683A41E781E005DEC76B13D984F5A24B
                  90DA771A85B50A57288A224465E300E309D6325030A0267E96096A04E394E8B8
                  AE87F9A724F88081C042282A002F8ACE0784260C73E7812E28DAA0E8BCC0FB00
                  DF29B48BFEB387205074E70C01856138CB7096E00CC11504571A586BE082C039
                  897EFA0808050808015DA7E8424017349EB30968BDC4F73B856F155E004D3D22
                  4C52000CA48A3FDE281ECBF33800C89B423D8E426D2A0020778BC91B984919AC
                  2A887815B5F0C260B653DFC9B301E63BD996DFD92EBA1B8D178FF79966FCBDB4
                  00CAAE0D4FDCB8F1FA775967BECFDAFA7905E6670B057C0DEF8BB8F38608D445
                  0C39F4E00CB3053B0259852B08454108968042C02A106E2136E4B86BDCA58853
                  FD4052243A421444A270770CDF59B49D45D71568DA125DABE85A0FDF79042FE8
                  BAA40034A10A947C651DC23EB481E1C71733C3B08DBBB06138C7F00A78DBC11A
                  4551A037E10333BC669BC740A4409B7630EF19AD27AC9B80B60DE8BA2C508410
                  FC086340BF6B33E24EEAACA27082BA0EB04E611CC3168CE052198B231816B010
                  5804644C8F5EC614D710718464411119801C440B88123A51B49DA0ED027C6710
                  5AE9AFAFED044DA768BDA24D8218D6111B10CA2025608CA0B082C2290A47281C
                  A1148210C528900A02040E0A320C51034991210D8ACE7B346D8775D7A1ED029A
                  96D175145F2DA36D095E02240376AA302A7D87F1BEBB726F59A47F33C83ACEBD
                  508D0A88CD48E902BD7BD453A669C236246E022040049D6FC1B600913060669E
                  CA8FB87AE7B7B5478BCFB75E16F8665400AF7CF557AA975FFEC2F53BB76F7DFA
                  CEADBB7FC8D92B1F3F3EA2C9C98942C5A26BBBB81B078D28AAE4294D041FC460
                  8A82C44EE14A455108AA22606FAEB8BA0B54054159C11AD041E012704BCAC97F
                  D7E8DF0B103C105A856F18C15BB46D89C5AAC4E9B9C5C929A3ED086D67E03B07
                  F1482E4204DD84E24E1D1F6F440D190AD230B209D2C2E1D86DC61A4E568BC299
                  167529984E14D359A49C96DCCE1A063E5834ADC5F109A1ED1C7CB0E8C4C07B60
                  9D842B7841E8927B1224A5A3E6859A8D74812541693DEA22603E6B5056802D18
                  B633288AD8F35C83402540C440D4A3209BB083689564843BE23216A0028A1ACB
                  35E3F0688DF395A0E9186D6B218D8DD649A7E83A411B023A6FD1850E5DE7E15B
                  405A175D1C562879803D2CB5288D475908AA42511584AE2478018A12284B4601
                  400DC37706ABD6A009065E2D34003E38745D81B6F3E8BC60D574E8DA6825794F
                  F12502490C524C48C9627195F5A1C32D9E87FE37A2B15AE80B8B860FD2D85648
                  6168E42053726DA35B16974C99DC4CAD54E8C9E2CAB3DF7F8D262F16A7C7DDEF
                  F9A7FF992FFD9DFFF26F2CBE6914C0FEBD97E8E517BF34BD79E3F54F1C1E1CFC
                  E072B1FE64DBB5B5C0B2A8812A21789B7CB8C15F8AE87D02D6289A9E6C086405
                  C67A381B50951D9A6B0AE78A68863181830221806D32F128028190D821560210
                  46E67ED359ACD60E676716770F1477F63D3A1F4DEE1018220C0A0E4112AACD04
                  4D6063CCFC4A516F352092D126924C7F13AD106304863B58B3C2CE6C0D518275
                  165541B02107AF0CDA8E707AAE78ED8D251AAF09488BEE40E715120822062A8C
                  10345921D2BB3A200293C06880638FD22A9A22A2E99D288A001412ABD70CA7C8
                  0622E8660C1024694E644C02500D3D32AE6A2062717EDEE18D1B27383CF16843
                  091F1C34D8A4302356119410C4204854A21208E8CAB853B240B903A8854540CB
                  1DDACEC37779133043348E18604168158B75C0F1B9E06C15D0FA00911871F002
                  8460A34BE22D7C90A8B40549796B8AD68C453E0376E8413B4A78D360DEA3B704
                  30167E1ABF977E1E2B90714A816A8A442510982D60727E012C811E2FC57CFBCA
                  EBCB939DBD7BFFE41FFA83ABBFF5D7FEFAFB82053C7405B05C9D54B7EFBCFEC4
                  FEE19D6F3D3D3DFA5E227EE2F8B8B58D27F26211C42286B4A84FF2E903293D22
                  15F7B468F509885B58A3A85C03630457AE325C61A2D00B40A2B08A882A23B7FF
                  465A0C883B43CB685B1385FFDCE2F09871773FE0F63EC18B431003118A3EB214
                  10E53E4F459952DAF766DACBA00072D96954004C01CC6DF2753DAC09984E4D12
                  124190BCFE14AD272C568C5BF73AB4598894A3FB2143AC5A957A4BA92F5CC9BE
                  3B6B5400D4A1320CEFA3826825A00A8A4A229E614D0AA8710C4BB26170501047
                  56E5B8A6633462489731102DB05A07DCB9B7C29DFD0E9D12446DB48A927211CD
                  094ED12D8AE4190C0A5101800362C7660B168F5657E85A8FE043CA39103027F3
                  9C0DC8080C09CE578AA333C2F119B06A01114E2E495A43F959ABC682B07E5D0D
                  9299323A52F53E46EE7E6C03AF5901E4F4E3BEFE2313850EB916FD5179500059
                  71C4FCA421B6C3494928A26518711565569DB3D0C7A938FF96A29EBFFEE6AD37
                  EF01587EA815C0BDC3D70080EEDEFADAEEE1E1ED4F9C9F1F7DFB6AB5F874514C
                  A78BD529166B461B0A042DC0640198111093F166890F2423CF04100B881A3013
                  D6AEC37CD162DD59B4DEC306824931DE901720258358084112B8D6016DCB58AF
                  2DCE171647278C7B8784FD2383C3B30282091436C56F2D585C7FFEA80092C06D
                  E4244A129CACFA937011C0DC810970D482CA08A211710C5B425343CA1CEE3368
                  5A8393738B464A0429212852A661AC74A45CFC942B1ED3B564B099586054E0D0
                  2230238800B4442B11240B2196AF5A03800C98336008D8909441CAAC1C3A2CE5
                  842303E6023E049C9E290E8F151D19280A289531C331254BF59672CAB1673560
                  2D523C3D80B403A90575EB08D69187F80EA4802117F11B66B00960136048D1B4
                  84C5DAE07469B16A1C825A80CA1EC9CFBC013172815EF4C0A39D1EDCFF07CA96
                  415278CA504EDB10318847995BA98F206797800661A73EDA932D28244BD14637
                  0A89BD920821E569186618023142A1DE3F25ECBE858CFB5ADB752FFDD00FFDC0
                  12007EE6677EF6C3A900D2CCBB3B77DF7CECDEFE8DEFEFFCF2FBACA327CAB286
                  0F0E8D9FA0951D08A629B9C58ED0540210D1DA18C737504D754A22205A83D581
                  58D1FA255AEFD0F816B68BE8B108C75D5318410D90E2E8BE13B42DA16D08EBD6
                  60B12A7172E670EF9071FB1E61FFD861D5ED4169025011AF8B0C584DDC89FAA0
                  7F8675138A94FCCA41F891B20A09463D549B68B9980E6559A39E30CA4A618C40
                  116216213BA818881AF8E0E07586567610B48A801BE27D30A7A5AB4356A2504C
                  D8497B6D224617A8B69010DD2BD5059AAE43E73D42107889317F202602319BA8
                  045CCC61CFDDB2637355D35B1D6006730122C0870A6DB0E868864073085550B2
                  A398FA40A011F3740C180E24114181B65180C219641DD3BF24B4515972527964
                  C0C6826C80B38A4E2CBA50A10D255A2D11A400B88C29CF94F314723A52746D28
                  B98743F420CE1D534E2ECA0A60B4EBE79F3967470E0AE40211490E358FC14202
                  8418C2490124DC2166AA7272D5004B04504030CBBD56E8E36D904F759DFFB58A
                  710FEF435EC0435300EBD5B10170E52B5FFEC5CF2D9677BEA728ED477776768A
                  93E30EAD572839183B05D11C126C12F028FC9AC9D638F2FB3319806C540B2A20
                  18300510D608E2D1B684A61138139164292CC45B8835089E20C4F0ADA06D154D
                  03AC1B83E5DAE1E8B4C09D43C6ED03C6FEB1C5793345E03D104A10B921EF9E7A
                  BAA724DC402CF2903EAA109410B3BD86645AD200467C590A289D603631984E18
                  A5EB60C84745222E72CC09437D44FD0525042582D6102D36E627D62298942909
                  A848CCC2E36476E674462D00B12021AC9A357C27086101EF5B749DC010819587
                  1731AC03C80CE62C03B0C6247F35A5B912102DB69861275421A084A086229567
                  E7C9CA9192842B281CD0BB4C0069071F185DD3814303E91A58101C47B7858D85
                  B11EC6799005241804B1102DA272A4024A0E40CAAC6206107AA196A8B3A014A3
                  0A39EC4714D74546FD87F2862125BA37F1796CDA536F0952AFE446CA01C32616
                  334963FE473CBEC007013917A319047422A018FE9EAC9AF573EBD5F2DBABA278
                  7171B27F13C031BEC1DC010F4501AC9BDBFCDA6B5F2E4F4F0FAFAF9677BFAF70
                  EDC79CC58E339E3A2F11610E1A772E22A4549094629BA66E04B20C4D3F92B685
                  0112802841E1DB00F10A0D800A0362A081A1812109B16F3DD076847567B06A1D
                  966D8D8353C6AD7B82C31383C64F41BC03421517E9B8246F0404E5504FDF413E
                  858B24ED8E204E3B5E074207C60AC6AC50BA1526658369D5A1304DCC622481A1
                  9801171D571A780D287536A2ECB1DA545F9014CD2823312723E5652C1A9D2886
                  8B66A828BAB042F02D441AA8B42044C4BD30293B90056C04650D98944C951B63
                  F6BB25A877391471E78C0A67E0C61BD3ACE5FE0C392B5FB312A55C3B6162D9AC
                  2AD64D0B746BC0B7A8AC4153109CB328BA983F103A85FA18C5A114E2EDF30232
                  9F40DECDB3EEE9D74F728F3662F63955973092D97ECD6540B50F1FD348D8FB45
                  311471E5C2A2011B185904A3622993DCBE7C4D3D2EA020DF75D376BDFC5808DD
                  6F0B21FC8A615AFCE3DFF3EDF273BFFC9BDF30E69987A2007C776296E77767B7
                  6EBEF402D3E2D375E5AF33A110594124259D40E125E57A6B4E3019076186F2CC
                  0C056A5A60D4E76A27F28500688802A421BFE26E2A143571D7018D37683A8745
                  53E264E1B07F021C9F5B2CDA0A5E260026005C12AE24DCC8DC0323D28951510A
                  11656333E6922BA56B0F203430BC84B34B54C51A936A8DBAEA50A42886B580B3
                  0C63A29B217DCAF0A88226EF3D23949AFAF38CFEAED9504DE057B25C14B9AA72
                  072A0DDA6E05600D6380D52AC6DFAD492F1BD034917825A6E0C6B9056FEE6C7D
                  A6C338F93053688F0A99B27EEC774F0C97ACA3E7290AF8E0A1BE43473E85EF62
                  9E86845460135212970C60710FCAF6451C4318B617EC182349D79DE7323DC691
                  E02B0D73D95F24E51A8881537014E48D4A217D5E3016FCFEEEE3F312F4CF2617
                  56E938E592520193F755E8BA273584CF5A633EC3A477157204A07B9842FEA0F1
                  AE4B1335DC45D79E14EBF5C1B5C3C357BFDDD9E547A6959F94AE858445047F72
                  124D8AF9AB32464F73581CA3253E5EEC19D98D0B6EF8A40AC585925E1200F180
                  748AAE23B4ADC5BA2971BE2CB07FCCD83F66ACBA09BC4E115043D4C6708DA27F
                  8D5552AFED817EF55302E6B8672612403D082D0CAF61CD0265B14255AD31A95B
                  94658BAA0C280BA02818853370D6C29A080A71428D35970D8E3A1CF7E5AA59A8
                  525D409EADBEA28F86791231103880A6209E436482B6B3583784D55AB05A8794
                  6024E8BA8066DDA26B03BA2EF4421852CE7F5FBE9BA43F3FA76C1960346F2C83
                  32C84534A4E3DD792838DAACBF9024E8716DC4F30E52AA49616CA65CE9D66F74
                  F1952C978897E4F34B4C7FA6AC34065075281D46EF128C3E3464222661D79135
                  D1ABA194D6CEAA31A2D5AF99D1FACA9B89022A6255C29C549E36C67CCE1A7ED2
                  18AE7EE8B77DF7374AFE1F8A0540ABD5BDC96A75EB9993E3977ED0D1FED35551
                  942A05DA35A081205EE0C8424D09AF66E0EDA7B1E8EBB63E1E76DE1158B3B527
                  01D09420A3083EAE5A1120AC2DDA5589C57989C363879B7781836383364CE2EE
                  AF15480D1829A147E3F1856206A7F6A411E9A4B93186A04F2E51041002885A30
                  AFE0F81C55B9C074B2C67CDE62BEE3319F07D45341551B54A543513914AE8006
                  0741CC7927831832D36C3AF76947291E3F5C0B6F89C0A84E3616072A21C0C270
                  0995098426F0A182AE1A9456E18C873380B30A6B2DDC5A612D83B88031169D61
                  582B004942C4F3D3C8AF61271B9E9BF6CF45471840DC79C3B0E27B310E806804
                  0773B6A6EA482069E31CF93C8A00E510F1D8B10B943E988BC07A2B2E7D0F14FA
                  70F3B00BA7DD4F6574FD0C21C9D93F18DDC4082348CE4DCE21E86DD5113D6D62
                  A8E2E4AEB06A7F2D9C2204929E31411D1BF39885FB1143F24B043D911812FC86
                  6001EF5E01705BFDF22FFEDDE7F6F7BFF6BD1AEE7E6AF72AAC331D9A75D4F40C
                  0743A62795B06C53BC7D64CA65F0B3E7F7DF760F34B968D94FD3B433108230BC
                  2A7C107047908E1102A159399C2F6A1C1C59DCB94B383860B47E175EA7502DA3
                  5F8D814E2CC77F37F901E26214D554E5977785005581311ECC2D989751F88B25
                  76661DF6E6017B33C1CE4C309B08EA9A51D606456550160ECEBA086E29527520
                  FAF391327228146991E4FD6B30A5879D3956516ABF9B4AB20A841C986B10EF40
                  FD0AAD6FB16A9A68FA3B0FEB0057004507AC9A35D82A8C03B88BBE385903D6C1
                  0AE91B03657724C7C07B41DB34A83529A4786F32DC1F062EC7B1BBB3FDD294AF
                  AFC91D1392843FF4E9F7E8CDFC71EFC0883446BF3BB9715187C94646DFD03C4A
                  FBEF802425938DB308C65BD4E6AA1CFE32D44C665C20DFF5E69C8C477225548C
                  48A88C354F1BA21F86EA81067F8A582DF89E8F77E50248B84BFBF7BEB673E7CE
                  CB1F3BD87FE53B7766E1B1E944D9701B433E79D23390259C72FF3731B7C1298B
                  C52ADBCC3C0A4A491ED13C14509F0812B3CE62414AE793E9DF582C56058E4F0C
                  F60F0887478CE5BA84600695022A265DD3F8590E9562D0043A66E621C2004065
                  7C803A10D6602CE17889D2AE50570D66D380D954319D02550D9425C115B12EC0
                  59039B2BF5123F005289AC66C4BA67BA19999E0428492CA925EDFD571DE11094
                  563525DF5889206C015383CC1C8A199ACE60DD00EBB560DD78AC9B0E4DEBD134
                  1DD66D17ABEA7C071F420A2566737C385F2E0E82F280B4F7FBBF19E630037718
                  F6C771F66216810D3C2E6999ECE664BC41536E81D2E026E579A254B27DD99A19
                  4CF6FC7CB3D0EAE8DF2C9ADBAFB1D40EEF0DEDD93671869E6380B6D6CBC85EC5
                  D6D1F33CA99251D5BDB2AC3E5B56D5A7ABB27CF2F7FCAE1FF8867075BCAB9374
                  E1B478EDD52F5C57397FDE9AF5C7776676561681D6DE272B2C817A1417B66676
                  9D3CC6BBEAA85903348362A9347534D911E0E2547F4E08420801E8BCC6441E35
                  E8DA0267E70E07478C8363C6E9B943DB4DA1A64EE135D3EF62F94206D3B34FE1
                  486873DCBD247D9693091B51FF250C2F519815EA628559DD61368979FF75ADA8
                  2AA0A818455200C6C5525DB611CBC88EE1D0F96084508DAAD17AE02B01546340
                  2DEE6ED467F2E51D4DD2D51A2A019E816C83A65BC071C400CA4650AC15454560
                  4BB0AD8175B186A1F30186432411E1448AD21BC1F9F9F048C82825512573E012
                  D6DD6D8AB051A06D246F9A988164F3DE7BB43F1762653C68C4FD303A53EFAAF4
                  2EE4E6668F0DCBE492EE41F98AFB2D7FD8C3B7AB07C64A00173E451BEF6E7F26
                  A6B3C7C40505AAA2289F358C4F41DC579B66FD2680B377239F6F67BC2B05D076
                  E7D3376F7CF9D9B20C1FAD8AE289E9343883263D8E5C5116196A7A5E3BDA9EEC
                  F1E2DF6CF1D5FB73A349CBB17A518EC22F84CEC7BF0561401C9AA6C0F1B9C1C1
                  31707C66B06C2A08A6502D92B06C73C48D79F4468B69449231869C9802182D18
                  0B14BC44E55698562DE6930ED35A30A9047505D415A32C63B59B733CECFE1C77
                  7FE27CC48BCD4FFADD2B9BD8234991DE34CFD5FB0911CF700562B80E30201460
                  9EC0588F767D80B6F3685AC5BA11382B282B0F5B58D836C49A0BC7F03EA0E300
                  A200E2D08379FDBC514CAC11E24DD1E99F2F6F3CB77C4FDAEFDE9B707C16937E
                  67D4E15844F9C90F8C8A9A7C70CEDF4A29D97987BF78E61C4D4922D9CFA55E7A
                  9D9BE28C7E456C08BF8E4AC3B36798EF63EBF73EEB70344DBDFF94940091922B
                  8ADDD2994F30E493E2BB2FFC53BFF787CF00E06FFE37FFDDBB11D3078E77A500
                  4ECFDFBC72EBF697BEF3CA4EFBED8F5F9F5E631CA25D37C9BF8BE99A200B8549
                  945C02635298674BACF2031AE678F0CD634D45CC56D36CFE0B43BC8137828604
                  3EC47E6D3E589C2F0D6E1F29EE9C124ED7153A9D826C8D201C69AA30F26D3142
                  732F98D9C3750CE056009387A5154A5E60522C30AF1BEC4D3DF6A6829D49C0AC
                  224C2BC2B432A82A83A2046C61E06C24358959C1F93AF21E12004AB1AFB4330D
                  3B4BF47FB4DFC20665198F12D2CFE3443202D4402866F1590730EF44069D0E58
                  AF626252592A5C0118563007181B50163E5A38D4C5EECB26F45CFC170384DBC2
                  C4B1A88BB644B1D762998073CBDDB9B0B3E6EC4724A096C1080022A037D869DC
                  AF89B194F500A52261192906CFBAE5E30FBC8104EA95DA18E6CC923E381163A5
                  70FF116F5947733580851B361133CAA28061BB3BA9EBE74BC7DF225DFBDC62B9
                  BE81F7383BF0EB5200E7EBDF6000E517BEF8131FB1C5E9A76CB17AB62CA92669
                  D1AD3AC4EC2FEA85DF0749C47202D16E98861EC992D1B21AEF1ED99454E46601
                  9A62FFE2534D3D51AC24638B00875563B17F0CDC3C549CAC0A345A434C1DD38B
                  B31DD8FBB6119B881B4E64AC89C0D1E6CE96198B2267410B83150A5E605AADB0
                  3B6DB03B6BB133F3D89928E635613A61D4B5415559D4A5812D14D6128C89CC40
                  00120CC6C8901FC103D44525909E398DFC56CDD675DE72FA9D93A320E45DBA9F
                  BB44659D3113025C7915F082B6132C298089515706CEA5D479561813B02A3D88
                  2D8803C00194148042FAF09E8A800CF7E78CCA7A53E0FB1CC97114A7B700C6A4
                  9EB4A120385197B1125805AC21114065ABC18261C1E396DECCBDAB99937E22C2
                  8FA404E231F35C0EDB71BC66A6F15C2657A7DFDE8730DF609829F21DF6C749A1
                  C4EC320D31BF3821637EA5DC749489E08C41559730864C59BA2B7555BC00DDFB
                  56E2D32F0238C57B1811F8BA1440DB1E3180C9AD1B5FFC96D9343C3BA9C38E31
                  9E543B887A286C2251A048AB45890C5214217840DD60AEF680D6B6BF94FF364A
                  C14D892112A8AFF28BD56B0C6587C63B9C2C2CF68F18C767066D5722A000285A
                  209C63C329F69F9E7C6FEAF761AA9E747354A988C449480D0C22EA3FAD5ACC26
                  1EB3A9C7A4F6C9EC77A84A46557032FD29097FE2BDA39139D9CBED504577D124
                  1DBF930A769017E2C8874E9399E3F3115D474F131EC4A270737859A1F30DA86D
                  E1ACA0E908AE111817601DA1738AB655382B3046C0566024A4641C49D7B015BE
                  D50C3C665357870B1FC9417E730C8BF5705C16AC3E341CCD7E031FF988C8C325
                  D25050CC8A1CBB2281786045A6C13DCA667FCECF1FCF670CD367351C855E466E
                  2B2817ACE557BEDF6CC6537FBF9B31ABF1884AB00769A19188C5B760E9503040
                  A54DEC5106D6F1C416E6C91DB7F76932EE49000B7C901480EA4DDC3DF865A32A
                  F3FDFD97BFF5B1ABFEE9C94427865B78ED109973B5076E94C2E073A59DB737B2
                  B67AED8D63B5FD12C97E788A71F70AC02B7CDACD3D5B7814385B391C9E5A1C9D
                  18344D05911220977606A48D331E5FD2B90CB0814A6B1F57CFD1A18C7D7B58B4
                  B0B4466157A8CB15A69316D3A9C7641250A7705F5531AA32037F046B006B08CC
                  A9188786DD3AE2223C98AFF719035557DE75D023FF34525643386C64C452F4BD
                  8310C44EA0660E91068D36306D87752B700DE09CA2B5913AAC6B046D5200C60A
                  4C90549A3C201699A8339F5A3776C6E16EB21580FC2C553794FF36E692DD2145
                  74432C5B548630B1942A304DE42B48A0236914FE409C5887327E14DDBD8DCCDF
                  CC7CD4977747C627934B7553E59E9083B28B9B05F2DE3D12E85E918CEE9586FB
                  CD7FDD78A694ED1B81766B748B1348B38485872D1865015495812B4D5954C5F5
                  B2A85E80B11FEDDAEEE61FFD17FE59FF9FFDE77FF53D7105DEB10258AD0EA959
                  9FB9CE2FAF9E9EBCF9C9679F983F36AD505A0AF0EA639514E78A351FABE22816
                  F52828B6584E852E838F3820FD7982FBD4CE31C517A2C91782C0FB5405171401
                  16EBCEE2F0947170C2385D5450EC005A021AE3FDE0948D987675EE2313196EA4
                  3E7211AD39EACF4A2A3068E16889C22C51176BCC662D66B328FC552DA86AC464
                  9FCAC01526827E8660123720E5821D1AF53BD6CCE5C3034DD5487C7A4B12F95A
                  72942499E1C3A7B6586B4609ABE9FBA2840E25E0E61034906E85955F62D5B428
                  1CA358331AA33096D0B6029B158011181B93ABD289E2D3E2C1931D126E061AEF
                  8CDFB072EF736737219BBFE31CA3418108629E4507A045611DA65574673A89B9
                  0A3E246B49092A1269D730640CF6965BCA3825E42AC790A087E8EB47CB8860AC
                  4B4CCB844E00CF8A408490D69BE4B8F5466446478A60B0C64631883EF410234A
                  E9BEC5A35B9CE06CFF16DAF323B0B4281D619A378ED2BAB2AE7666B3DDA7C1E6
                  13E767E75F72D6AEF11E5187BD6305E0FDB23C3F3DBD76E7EE573E4572FA4C59
                  94B3B220A3DE8320A91E3F997699EB3D017CF145C06897DD1CE3904AB22044C0
                  9C6AEF99209ED03540438058021B87B52F70BE3438591458AEA668BB29BC4CA0
                  EAA22F1B692193AF99CDB951B29122FA7C6AFA8AC46C82C69787A1059C5DA02E
                  9798CD5698CF3D663B1ED3A9603A214C6A837AE25054164561606D64BC35467B
                  9EC23C368DFD5124A2375F9330F73BE258D4B3E1948F900571845BA4A2ABFEB4
                  4430ECE04380E119C8745059C3770BACD61D1C7B58A6445AEAD1AC3D8CB13026
                  808D809DA0F30C490CC59A1B888C00B71EB8EFEF10FDB5714EFA1AB9591BB6DF
                  46D18D00142310C60AE605A1AA0B782A40A64451D468438004E973401A1FD981
                  13ED16442445231999D58012814B047913E10C592819F8D00230202E10C8E178
                  4D5827BA2A452468511E14C02637601A3AD8036C725F8348B10E28543A4868E0
                  DB05CEEEBE8E375FFE32B839C4C428266581DDBD19CAB2445916A8EAAA9CCC26
                  8F9745F9AD86F8E78DE2081F140570E3CD2F565FFAD22F3CF395AFFEEC8F7EFA
                  D3D71F2F6B148A16804F60DE68B50F591CD8D8CE11062D79D964F6CB273E3483
                  48044A2A1089E41E048BC6945028966D81D3738BC5DA62D5160852025AF6C20F
                  354018AE2133DE329232D24C851DCB652169114223E8474B387B8CB25C60325D
                  63366FB1B31363FE931AA8EB08A695958573163633DEBAA800A8C718F26E907D
                  D43EB2FEC079D81C32B2168690D6C5453946E6537C8022D109F30C6C1B88AC70
                  BE5CC291A03080E300633AAC574DAA53284126809DC07B03851D0A97E89D5AA4
                  97E31BF7FBA8A840A943E13A4C0A03EB0C8A525014013E78F820F021D29E7599
                  922C088244FA74D1E8DD47AB3FE66EC47CA2DCE68D0178289BC82581029D2AD6
                  3E169285C40C1D9B878CF829327B50BF870D4026273C4062A384E86A40E04861
                  A8835F1DE3F4EE1BB8F7DA9761FC02B56354B680758AA2A8309BCD309DCF309F
                  4FDD6C525EB153FB31ABE1B949616EFD2BFFD23F7FF61FFFDFFF5F6F7791BCED
                  F18E1440B3FC75F32BBFFAB7E68BB33BCF2CCF6F7DE6EA958FEC96E5DA127968
                  AEC91EF6A9D12B5B43113052CAC934B4B50B0E2B20AEEB14DFCEBB862844185D
                  0740A38FE60558B605CED7259AAE429012AA250097CCFF515D7DDF7A9A7A1F96
                  3000710052CBA91875607430DCC44CBF72897AB2C264DA603AF529D907A82AA0
                  2C08656150B8486B6D6CA206634AA5C26917D8108674CE0D3B184310794B741E
                  F80E8D55E97DE028455400CA00D5603307EC127E7D80A653AC1B0F6705B60868
                  1B0FEB624DBE29024CA749184CAF38E50264FB70463F05093F62EE5058465D32
                  AA9A5114DA672A7A017CEAA014AD01490D5F220ED507523546590889422EBB48
                  04B4DA4150C293C5CA5BF8F348C22AC144CAFADCFE8D06DC3FA3B7992FA04F6B
                  56C4759D43A09A804CE9E01727581CDEC2E9DD37D09EDE456D7C5400A58DB922
                  55897A5A633AA931AD4B33AD8A7A5A4F9F3090E70B6B5F34C05D00ED439C6A00
                  EF50019C9EED17672737AF42CE9F9BD6F2E474C295B3C2A43E827D5B8B707B29
                  6773762C0A713A79F49DC18BEAE3AD3AEC642118B41D1024F2C2B581B0EC6AAC
                  BB0A416A282A808A91F0E7FE7D3A92BB6C8A8EEC903ED69BF7CB0E4C6B585AA2
                  702BD4D51AD3698BD9B4C3B40E98D48CAA8CC25F148CA23070D6C0598635A9CA
                  8F0605304A76C336128E8DD9E86F7578AB87FA37266DF49E6E7D76732673484E
                  34B727528026306607C1CCD189A2E904AE09288A48456E1B0FE302B8894AA0F3
                  DA839591F7322BF20745C2DFE6D08BBF2A65AB2CC0B247613B548EE19CC29A90
                  28DB93DF9FC85F73F724C888A1283FEE8CF44B42FD53FBB4950F0870588B43BB
                  66B4BE43D3C5DE07825C9390E6725431D8A78CF57D01C6AB5F7B3C8929405667
                  581EDEC6D9BD37B13ABE052B4B548541551AD49302D369857A32413DA9319D54
                  984E4A9AD585DB994FAE32F051267EECDAF5ABAFE2FD56006767FBE57271EF09
                  6B9A179EFBC85E559816967DA499A6A19E7F306C07011BC26B29FDB25F379795
                  238C40A3B46BC792600309066D1B41282F16AD67AC748A4E6B286A10552044CE
                  C13E6D7514B21AA8BD06BF3357A2C593C63C7F6803432B58BB44552C319DE44C
                  3F8F49ADA82B425532CA82513A3334B9B071E7EF7B57F60A6CDC4928F3076462
                  D16DF47EBCBB6EE6AC6B3659FA22F74C8C812152401B7F46CEDE538917250A30
                  55609EC19657107C87A6F37046D0341A390292F0B3F3E0A645EB1D828C2D8A21
                  B4751FAFF81D8C2D654818BA1A53CC9864233036A4EA49850190B90F92859FC3
                  0A43C2449F4E0EF420AA3218168085B2013A45132A2C57168B4E71B20E580583
                  56638EC95080B46DF0E73535E01DD150C8D663FC8CD50E67C7777072FB352CF6
                  DF04D6C7981582CAC55E179349899DDD39EA498D495D613AA9314B4A605A1773
                  63CC7344F4E4E34F5C9FFF897FED5F3CFD3FFF077FEE5DCDF4F678470AE0E8E8
                  F549D3DC79D6DAF34FBDF0FCB53D4347045981A44BA8F430E9C0E6321E167E7A
                  A9197DF6B230589AEABC801139EA83042CD7F17841099D5AB46686A035400508
                  36117C2422CD2C08593638F6E68B0F2CF96D2AFDAE4B1440588168016BCE51B9
                  73CC262BECCC62CC7F5A07D4A5260DCEA80B83AA30285C5400D68CD61E62CD7B
                  26128BD7915D1A9F56AD5C08876ECF429EC38D9A803E2A302CEFB1FD951357A8
                  178644F345B1D1464001E6298AF23ADAB046E33B9836A0683C56EB00580F982E
                  BE6C8BA62DE2EE9A9FEDA84FE2C3183AD62D59C4B2B564046C1564119BC52087
                  3CE3CBA80EB5F62902A034B043F5B392381F3591B178B5304589F599627FD9E1
                  E67187FD85624D253CB9D4D23D5B3A3202A80732161D952547325005E063DF88
                  D0A13D3FC4FEAB5FC662FF75A039C6CC05EC4E2CEADAA29C9498CF6BCCE7534C
                  A713EC4C6BCC6713ECCC2698D63557A5DBA927D38F1465F971307FF5C5AFBD7A
                  170F992CE46D2B00EF5F2C7EE167FFDC55C2EA49CBCBC76793790DEA48B58D1D
                  75010C0D17B6C559B75ED1B4A21E201CBE371ED4677A1980B30248400F228DA8
                  B0836809E9597D33BB70E2DBD12C902993ADBF9ED1EE40A9B928A5221F5E26D4
                  7F85AA6C31A93AD4654051280A07942EEEFA55615196B1E94651308CD5C4623C
                  B670C6BD84F2A2D1AD79D94CE1BDCC39C89BDBE6AC8E9296FA8599052A118D24
                  06235280133D5548826CB8809A1A6467D06E8DD677583682729584CE7890E9C0
                  456CF42123EAF0BCD41FD618474187BA420153404CCA49597D39FF2069590660
                  9560460A4091EA1438AD844CF14D369198467AFA2E389CAD1DEE1CAE70EB2060
                  FF045876253A75503650CED98B39B5D962C8538964300AEA130FD1AFBB104BB0
                  174738BAF132CEF7DF80E9CE3029143BB5C5B4B298CE27A8A7534C6635EABAC0
                  EE6C82F9B4C6B42E5195458C08D4A57165BD57D4F5C76C51BC5055C557F07E29
                  80E5F2A468D7A7D798DAEB4CEBB9A192413E5250E7A59D62D19B155379996CF5
                  7FCF823F2A06D95CCC40E6CB1B128192265649E494160A07C92CBEE3BD960499
                  73301E3AC721FB37FA5DA76F4DCD1E8A06A0258C59A3700DCAA2455978145651
                  58A07049E09D45E95CDCF973B69F0528C7F989FB9E8763828B8168020368FA16
                  92A46FF9B791AF9B03ECB94C376D50A2B129690A94C7F016184C05D8CD20BA86
                  F76BAC9A0655A36027601BC0B683693A78EFA12919609CF8F270C6A605C85018
                  8A9D8E7A9233CDEECC409F96F27AE22BA3873D5701F7201D90E9E24DCC2D5487
                  2E382C5B87DB071D6EDEF3D83F212CDA0A9D96F0C269374F3696868DE7973308
                  75BC9EA0C992F4206DD0AD8EB138B88193BBAFC27467A8ADC7AC664C2745F4FB
                  2735A6F32926D329A69312F3598D695DA1AC4AB8B240511528AA928AA2981A8B
                  A77C90679E7CEA8939626AF0431B6F5F012C8EABB63D7BDC7278DC193F83AE40
                  F0604A9C742380045BB296FDD2F182DD28FFEDFF325EEA595062F8455368487A
                  02D1C81C9CF78A0C1BC6F52F83C06F98C649D87AEEFB6C96C7D5A4085074206A
                  604C0BEB3A38E7E1AC87331A9B585A82B30685B570C6A4587FE2D6E7788C1EC4
                  CCADA1F2FDE492631D40CFCCF18F8D2B7DBB6348C6197BA817FF3EDC23337AAA
                  2F49596FD64E41B246080BACDB73AC9B103B0A5B857102DB7A78EF63DBEFFBE6
                  70BC8B419B3F926AAA019011C34EFE7B9F1936F8E323DFBF8FE850560429C742
                  190283802CFC164767C08DBB2DEE1C094ED6166BA9E05126F5C83DB3CF78AD0C
                  CA3592B18FD9104803101AF8F5199647777072E77574677731B55D2C10AB2D26
                  7581C97482C9B4C6743AC1743649BE7F89495DA22ACB5E095867619D9990A1EB
                  45E79E7CF2C927AEFEA91FFB5FDE04A07FF2C7FECC4399FAB7AD00CECF0EABB6
                  3D7BCA5A79A22A75A26105361D98341552E4CCBE4B262D3DD8FE398D48267A16
                  D564868F17436EF31533F83259884BFDE32D40F1F24973C1497AF618E5806761
                  4C662FA70B199BD4031491049862028C350267022CC7BA78CB044336FE1B3B3C
                  F4B1DF016A9224903166DEABA0BC20C7893E97D6A2DF4F058CD5C3A690F7DC81
                  233B3AF31D0C560EF5C93BB14620CD0919806BC04EA1DD14AD3FC6B211B04B6D
                  D95BC03602AF29C496AA22F5BD5004E329489461183D471A5B979AFBCA65AC68
                  9444967B3524AC201720090C444B74DEE17CA9B8736F8DDBFB2DCE96064D28D0
                  C14128F222306552C4904869E385F5B1A99119D43705550F6D16581EDDC1F1AD
                  D7717AF7754C6C8379CD98D68CBAB6A8EA220AFE7486D96482695D6332A95096
                  0ED5A4445DD5A8CA0ACE15991DA9B296F75C611F7BECF16B8FD3975FB28800D2
                  43F1C0DEB60238387C73E7FCECDE73F3BA7D6A569BAAB0824E7C9AFF9C97CE49
                  0B0F7EED009B3038A6F444EF3C4D6A6658C99982E3F53DA475A65C6D3620F200
                  F1C09E43887E629E916DCE8154D915D96886DD23C7DF73C111A5E844EC41607A
                  D541145B7B1B1B5B5719460AF121FAFB4CE09C5B9219797A7B44D2A94C7F5E55
                  20684EFF8DE4240AD313925E7CAA9783A3D9D58AC94CF92FE91E9906737D63F1
                  F674CAF1281C01410F0B63E7B09300DFAD717872134DD3A16B19AA016C051D04
                  500B628780D8F598F9E1E6000CB718FD75A602ACAE7F1935309243AB03C01B81
                  CD31E10C4125F63EA44C361A0830059A967170DCE1CD3B0D5EBBB5C4FEB18170
                  0DE51A4C2ECEABE8900D9ACED1852E66039AB8667CE850380293C24260420759
                  9FE2F8C62B38BEFD32DAF3BB98BA0EB30AA82B83E9B4C27C5663369D6267678E
                  2B57F63049C8FF6452623A9BA0AC2BD8A200150E6C0B58EB608C7100CD2DF3D3
                  BBBB3B9F7205FF1280733CA402A1B7A40453BD41AA378AC3FD371E5FAD8E1F27
                  F2F37A628D68874888A93DC8C62A83246F71FDE5F4CBB15FDE4BC586C530EEC0
                  83C4EC9AD85D29755F219328B063961F0BC776D73A98C4174DE1F1AECBD8A8C6
                  4F0D2773F30B09162A3194886481F4687DB21472F79B71B1C960552886DD02B8
                  807F6C64478E875C7AF517E523D7D45FFC14A9824507FF1591CD48884721D0E1
                  5A2535EF1014509AC0547B68A4C2E912383AEEB0BFBFC2C1BD0516672DBC4F95
                  97CA7045398451DF0335B0B92A0607674CFA8504A876E211207D9677D0003631
                  75194A602A405C629D84FFD6BD35EE1CB4385E121A893B7F484D4FE21C0E2E85
                  68AA1E6513C393E221DAC13A03D2D893D18406684EB13EBA85B3FDD7E0570770
                  58615A003B75819D5985F9B4C66C3AC17436C5641E63FE755DA1AEA3C95F1605
                  0AE7600B07E32CD89A9894161758C196AFECEC4E9F63D609F3C38BBFBCA50520
                  E1840114A727779F0B7E7D9D5926456148D50F82907D25620CA1BEEC3365B36C
                  A886DE0C596DD7FF512FF8179A3EF4B1EEBC03A618BF1A64BE80383323D37AD4
                  BA19E3F0797EAF07981804074209092EBEC4C6DEF44A29BF9C236F00522BAEFE
                  7ED23173CEC2C6324E83F2A968041E7D1D82A363800B03F5F64811E518FD802F
                  8C2D228C7A0E245E3F008003710553CCE1CA2B20EFD0798FF37340B4413DF710
                  2E41890E3D84ED6CA58738D2B39711418B20137D26F69F5C644331CB3B3235E7
                  AEABD9FACA214F834E1D8ECF05770E5ADC3EF0D83F552C5B878E4B10BBBEF744
                  EF918E8A9834551A22856173FB6F4302F66BC8EA04EDE93D9CDF7B03DDD91D18
                  59A07682596D31AD4B4C271526D33AFAFEB30926D309AA49892A097F5595288A
                  02CE1530C6C1706CD90E8E1B1F812C5B9E4FA6D593C69A3980434437E05D8FB7
                  B4008E8E6ED2D1D1CDAA591FBF604DB86EAD94D6665FB9677B4FBBC07D847F4B
                  77E7DAF1ED98C08316445C14B4A5FFE31F63E71CEE5FF7071637ACFFFE9D1CC2
                  244D0A400B8450C00787104CA41E53C4D6DD2A118C5441D0C4733FEA5B70E9FE
                  9DD17E1AE6A8E7447A2BD9D9BCD8D16CD146FAC0908926C8AC4297A5E7E468C1
                  304F8C68C45A2815203B4339BD86A2BA06323BF0A1C26ACD583704092981061C
                  938234CFFFC31D91D24C211413CC06959B5AA225C520AC081473EEE3CF014201
                  6452B760C45E918D37385F33EE1C75B87DD062FF24E0746DD06809E1225A945B
                  77D113A0520E48A2AFB8265220B4B0DA01CD399A93BB58DC7B03CB833741DD29
                  2AD3615631E693220A7F5D63329924F06F827A5AA39A9428EB026555A2280BB8
                  A2803316960D0C9B58AD4A71A508A925A6595915D7EBBADAA9AACAFCD93FF3EF
                  3E94697FA005A07A175FFAC24F184067DE9FBD30ADCD5E59041779D6355274A9
                  F45C6F7167BA04CD1FF96659BB8FC5E5B2053090816E1E6B78378782F2117864
                  40D0E8AB839AE969A27379EAC8024006191550AD10A481F70E9D77F0C18E0A50
                  30149CA44616A289766ACB05D9AC0DCF57CEC31D8E8A84F2DF692CB6B9BC4E2F
                  EEE2DB33D6CF5C6A48C12909262644E996A2C9D613F773ADB000298C018AFA2A
                  BC1A804A58089C2B009410B50881101820B34DDDFEB047E693907EAE346D38F1
                  510F2D41D5A67917898D5E12282888B1FEC5DAE0EE89C79B77D6B87B2C385D3B
                  B45222700D320594A29537700C26D39B2915F4C48ECE8652004915A41EC67758
                  2F0EB03CBC89B3FD37D02DEE615A79CC2A87F9C4615A47647F3A99603A992425
                  50A39E14B13F4455C0950ED639586B61AC4DDC0411E7C85B29832C18B5B5666F
                  369B5EE9BA5034EBD5FAB295F04EC75BB900F4B5AF7DBE5C2D4F9E9670F0C2DE
                  5577753297226091802F828400E905A8FF5ABF9873B24F7C20D9BCC2B0CC339A
                  7A61A71B8183A3773662EA236B8036CE9F195DB557023D4EDFEF94790965D725
                  87761C08354268B16E1B2CD70E755562D2295CE751B48AB6055A27284A89F1FF
                  90D27FC900AC7DA71E1AA9AA011BC87E7E061E47842917A77FC36D8987A0D4B0
                  93FA8FE4991591449621E06CD6F635BA63737D40CB63C76124200DE814306E0E
                  2E08C44D0CC55903E2124A054005985D3489DF130470739E00F49D7A729A97A6
                  009C20E2435941524A2E134F11ED97094E9716B70F3D5EBA718ED7EF0A565D15
                  D3C6A90251113B416FADB774D2B46EA36B67087D5892133BD1EAF00E4E6FBF86
                  E5FEEB08CB7B98D8167BB302B369DCF9679309E6F33976F776A2E93FAB51CF4A
                  D4B32ABA00AE40E91C9C7328AC836513236A230E016182B2188A69AE93E79E7B
                  F699DBB7F7BF74F3CDFD251E426DC05B288086CFCF0EA7776EBFFCF16975BA57
                  D7D3A2AC98359965C344E5A53506DB06A47A7B271F3B0643EBA5E18F7D545B15
                  48C4907D19E6E0E80F3E5A36F953480E3AECA3C371F3EF033600CD1980392211
                  011FCB05440A785F60DD38ACD705DA56D1B58CB60868BBD883C0FB80CE73ACF9
                  37712E98461CF8D9BD48423C44FBB3EA1AA20F17C710C3DF240419816E39E0A1
                  922A2D03547C140F05A03685023385F6A6C511E79F47C78C2DD68102C64DA130
                  F05D83D00554264548D8440AAE208914E4E13B0097AD131AFD373CC3382322B9
                  EA2FF508508BAE2BB0680BEC1F07DCBCDBE1F641C0795322A0825209559BAAFD
                  3268BD591B82BE0D1B22210CA767261DC8AFE19B054EEFBD89E5D11D68738EDA
                  02F36981C9C4A2AE1DEA49817A5A61369B623E9FA39E26A1AF8AF82A0B14D6C1
                  591BFB45706C1A9BAD52D16861676C4D236161F5CC334F3FB7BF7F3C3F3E393E
                  C47BAD00BC3F31CE62EABBF3A7EDB49D15456D8D13280504898B8C8952742DB7
                  B61AC762B74DE02DDE3B1D1679DF9DA5177E8C7ECE4B60D42C6244B8A8E344F2
                  5ED9507F0A1A0E387C2419BEE3CD5153864C6C3F5DC087026D5760D578348DA0
                  2C145D0B74AD4425D00658C30886100C409CB80746F5FA9477EB7CCB5918911F
                  EE386A72891C6CA09697C9C9786E03001F437D236AAC9E2D38E32E3A5645F94A
                  63A69C22621D3984263E96C786A0301AC36BF25EE6006CDCE26045F6F8CEC5E4
                  8DA83E53183002B731D1E7F034E0F6418BDB471D4E5706AD46E1CF38866A4ECF
                  A61E44CDF516634E664ABBBF5181F835BAE531D647B7B13CBA01591FA3A01693
                  92319B5A4C270E93692CEA9926E0AF9E54A8EA0A5555C478BF2B50D968F63B6B
                  E098637879FC8C7AB9C8F62B0C112657AF5EF958591653EF3BF330E6F8810AE0
                  FC6CDF16054FADF5D7AB5A27C604431C10541034E5DA736A523F16FC1EF9CF47
                  8ABDE686AAB8D1B58F9DD31CC3D7E101F74A651C454B16816EECEAB4692AE70F
                  03C3431E0BFDE8EFD95EE8279E1840AC31F05D85661DB05E07542EA07501AD03
                  DA5263D9AC05AC8DB45F6CE283EC710902C6D84446DE87CE3FF79BF941790E28
                  FF3872825E815002C87ADE010D50F5698EB3F04B6F0F6565BBA10FFB6623C91C
                  A648EA4A46403640BD4717049CC2624104EC8A7E993E4C4F60D33EA16401C632
                  5ECA21641DACAC1CF08CC26F108281EF2C4E968A5B876BDC3AEC7078AE584B89
                  405552EEB993D0C83BEABBFAC44D4020C8D9204C0AD20E48B1FEF5E95D1CDF7D
                  15617917051A54856232B1984E4ACCA655CAF29B623A9FA29ED528EAE4F3970E
                  45E1506493DFC49DDF52268B95FEDEC7FA3D55C41A264CEB49F911E7ECAC288A
                  F75E011C1CDCB1CE513D9BF17C676E4B6B3D8BC4E29F618D5E8CB98F99E307F4
                  5B1139DD03585DD2EC5BC056CE924BC725A5E1A1F78B15A9B0271E53920F9C49
                  1D8788F1D6BFAAA3B0E26025F48CF194F3BE136F205990C6069B6D13B05C74A8
                  8A0E6549685B45DB28DA42E19CC259C01BC0188E25A63498AC994F7F78A07927
                  1BBB4AE36BDDB8DBF4FF4D77262E7EEDA3300375992425E04170881681E9454A
                  F2B3E8E79A4746573C9768EC0D28A2306C615C019116ADEF5066BF58088E6D04
                  80DF116DFD48B1616CC428C62DB7C61071CE1D89EB05438C9EB22595A9DD1941
                  0CD61DE17C25B87BDAE1B53B4BDC3B619C7715025510B2B148A86F379F324393
                  453974FC4DAA3085170902F806C19F637DBE8FC5F12D2C8E5FC794D6985406F3
                  DAA51CFF123B3B3BA82715A689DDA79A9428EAD414B672288A64FA1B0BCB89FE
                  9C32989E30AE0442520AD9260A3843A00931ED1963E67B7BBBC53B98F8FB8E07
                  86015F7DE54BAE6B4EE6F3091EBF7AB5A8ADED8CCA0AD00E6559C0B289D44741
                  FBA7D90B6DDF3B6E6B096C5BEB979AC0632C61FC4A7DE936C27C02251F5F90AD
                  FD2885252997AE0ED987030BD066934A00298BCE40A982D0044D5761B9B6E965
                  B05A339A46B14EAFA653B4A9AD766EAD8D514852A07D42C966B09462576031C8
                  8D32B4AF5BCE267DEF3B202B531AF1D3F533D62FD600431D2CAD61B086410346
                  8BC88823BD62CAB3B71D86648E5D970484C084C00CD8126C2B748922CBB90217
                  13BAB6453C3D815153CFCD4F64D08E2E39469C3BEE15D4D0D6BBE73DC891278D
                  82DF86024B5FE2B82970EB84F0F9978FF0E641C071E3D068854E0B0419B20573
                  5EC9D8EF0F21243C2192C646A3CB0361050A67581CBD81E33B2F6175F41AE665
                  87F944B13BB3D8DBA9B1B73BC3CE7C86D97C82D97C82E9BCC6645EA19E15A8A6
                  0EF5ACC4643AC1745AA32E4A14C6C29001F7B18718DE0449E4A5E4F82C0C1886
                  0C2C3B63AD2B55C8CDA6F3EB1F7BE185F9BFFFBFFF93EFBA7FE0030FB03A3FB4
                  44BE9A4CCDA42AC89A489110272684B8463339646E8A38DEED6808DF44518805
                  1999A073682691BDBD11ABED264C1017CDC8721E72C2474BAAF73CC6B1F0841C
                  AB450C2DE514DF6481F4429737164A7C019A0034038543EB0D966B862B0CCAC2
                  A26915651B4B84BB4EE19DC2FB583FA0947BD14782C830524DB9AD99F68CB511
                  B4F2BE83487257282BAE0111EEC3954846F776A4531526A52D3314A5ED400C04
                  35680321F800A672984BE5087A42600D23E7716428869033235DACC6E6126A4A
                  083BE4D02236619B8BB8457EBB270D197504121A2E3E816EE9C9A77489580BA0
                  080848F9009C9A9E8AA6A80BC107A009402706E78DC1DDA38097DF5CE2EE29A3
                  D129024DA0A862E9B3A24F2802695F3ECC200C983683D50008200D3088D57DA7
                  C7B770BAFF26DAC55D385A625210A64534FBA7D30AB344E735AB6B54930AF5A4
                  425D172893F96F9C8915ED4C112BCA6DD53245FCE0DD206F6CA4DCD7AE201004
                  4C4CA67CECFA634F6AE0DD37DEB895EB02DE1B05D0764BEB8CAF0BAB9531C24C
                  91C546235C0ED64C13350866FFCBF0F8313CDAA10F4EAF20FA84954CCE3DF299
                  31CA071899A93174253D78B37DCECC9A1B95D5B02745D33E033EDB8065DE45C7
                  F713ABBB190E6D28B06A1B14AD45DD0A9A365267B51D50F8680138AF70566138
                  C4076708CC9CE8A50070C24CBA64B60603DF12DA46A092187B18BD30C630D416
                  B6918436B6B9CAF39542831AC024B0A4A8AC448A6F110802BC0050499C804076
                  2C36F211341751C5C988ADDD0CB29DACECD292A1D1331ABC8A8BCF621B78C530
                  DFFD0E9E2337F91A90AE23456992B0E6C893A6EB92947CE503C38BC3D98A71F7
                  C8E3E6BD0E778E152B3F41A00A410B00363119E6906C268449871F1CC164C16A
                  2A498EBB7FBB3CC4F9E14D348B7B31CBAF104C4AC2B472318F7F5A613A9B2425
                  50A19A64C0CFA2280D8AC2C6E6B0864186A212C8D998FDCE35DAC9466E615FE8
                  95AC2505B9F97CE789AE931DC3F4AE7180FBBA00A1F94708A171A27E42144AE6
                  90CCD264BCCA2805F8C26EBDB15E91C571D340DC8C1064706A6321E54410CABE
                  A6F6C7C8E66306097B104F911FE51058D0DCBA2ADB1939C79A7A8862FBEAF235
                  2B627F3D2F05D65D815563B16A2CD60DA36D096D0B346DB20232336D10888414
                  AF1F387C401CFB2250DAF53BC66A25582C3A4007647AD0629B3504BD32CB7D0A
                  D3FB034B70CC5933AC286CEC4E543A4A3C06E88FD7B7674F596DA2B9D947AC69
                  A714468C0AD600C602C6C5E2A53E3E3EBEB6FB8FCB331DE9BEBF0D7C0ED9D219
                  0A72F26640642042E83CA1F5064D57E2E04470E36E839BFB2D4E570E81E7F05A
                  20330A4840DF4C65A009D701654FCB21DEBB874107F815FCEA188BA39B589DDE
                  01F93354A6C3A48C34F0D36985E9B4C26412FF9DCD6A4CEA1293AAC0A4B4A89C
                  41E918858D2F6B08A63FCF180DE1BE5A74C3FDED7B3DF481505245319D4E9E98
                  CFA73BD6F2BB56000FB200C8FBB6B0EC2744E2B28F99778A2898B441A6F9A031
                  0606636BA5BC78722FC04DF655ED1FCE78912886B6DED966DA6A9A994DEB44FD
                  9DC1A5A417861D3E29869E4D7F645E138F597C6CE43B901AF01D566DC0B20126
                  8D47DD78B842E11CD05A45E7006F01E65839488AD8BF8C4DDC7F84100491D938
                  582C56C0C9A9C7D99982B81E1892D26E38A6FECB3D016954E917FDD5E43E71EE
                  A91793928C892DC93976058536913B5F365C36EE6BFC4947D1845114A65FAD3D
                  30070031FD91F46D3CF88D91EF4B377E8FEECE408EAE4450C3508E197879FB60
                  8D1EB3081084D175166BEF7074CEB879D7E3E61D8FFD13A0D1126AAB84A9535A
                  B21AD36C917B57C5390C1010F3B00993C07100C90ADDFA00CBA39B38DD7F15DA
                  1CA1761DEA82501684BA72D8994F2291C7AC423D2D309D16984D62A8AF281C5C
                  616112559C31B1316CA4A0CB790BC39A8350CAA51BB9B63D0F615AFD04A84859
                  57F5D36DDD5D299C735FBFE8C7715F05D0B4E78E284C7DE8769851E6B45FEAE9
                  B3B09195D7E7EA6C3DF0CD74DF710EC0B0A8FA154EBC593B846C658C2BC21127
                  8B72065B2A10C96DA746B6C6601264747C1C7518F99CD92DC93B63F6BAD524D0
                  C8455F34004D4B58AE08E7D6A32E251186A456DB456CA9C586616C526D212026
                  D0A41C7A25A896383CECB07FC858B715EAE92C928AA41C8221BB7114F0DB5006
                  B4214491E730EF115109183631C9842D948075BB46EEA62B88BDFE4462D82FF3
                  A3C445A99B9198B112508AC2DAB32BE508C3FDB44046297A8478506E17AC8721
                  AF8318BDA9AC0A8400A81018061A185D60B4C161D15A1C2D185F7B6389D7EF04
                  1C9E9758FB121E53085CA2674B66A0CFF7138BB3632983C0A7B25F466CE06258
                  60C202EBB33B581CDEC0E2F806C2E22E76CA0ED3CA603671984D4AECED4E7165
                  6F37B2F84E5349EFA4C2A48AB5FDAE2A604A0BEB2C8C61B0A1D4111AE04CAEBA
                  D16968507E03D895D2B5F3A61897760563AE28D14E3D99BCEB48C07D1540F04B
                  03F852A5AB89B4C8BBFF28556764C20CC413F71F9B28FF76C02EEE2E995874FC
                  AD311B8CF6E4A3D4F7C2CB5D8325C66B4731F1F852E4068F7D8D816EA89E2844
                  79DD2760487BDEBB542842755402DEA3693AAC0A87751B5075B1DB6EDB0ADAD6
                  A3750C8E16738C57C4BE68F11C141969DBC0582C02BC2F514FAEE15A711DF4FA
                  1D3045C6DECB708D38C7239425658D4501F5A91146DC31030578DFA26B00621F
                  6BE1A54B4949318A224916D9D861934F8F691BB0BF58B191CDF2CB1EFAD8C51B
                  2217DB87A0BC9A2E508B27720F49A24A26C5F8192110BC67B4DE60D5199C2E09
                  770E3ADCDC6F71BC70684205E51AA2C550DADBD77DA4906CC6AF4863670A8A95
                  9E11758FA41EEBB37B581CDEC0FAE436B03EC6C406CC4B8B595D603E29319F55
                  D899D498D5252693E8024CEA2A16F594256C194B7A8D8D65BD6CCC107A047A97
                  ADB7326950001B1BE2859E910A22761A0207EF5D5DD7EFA102084BC71C2A0DBE
                  2616DB076037B2C0EE9F0472714F4842D07FE162C5DED06F8D361443BF1635EF
                  E6A9D02587B411730C220F7B127EF5C86994844C1D26A343D2C80AD9882BF40B
                  3E578445B8B18068052F2D9AAEC172BDC6BAF158171D0A071456D01401AE0860
                  0798A0E000146C90728C6371090CD62B41DB325CB18BA27E0C45B80EA27BFD9D
                  A85C1636DB9ADF0458D2307B9004047AEDB05AB708BE8135B1D1656108BEB0F0
                  2A50090842000CD8A44E48232C67FBA90118C29340E28078D0AE7FFF55B05119
                  499B16A28EB44FBC248358A26DA1C20821BA4EEBC6E07445D83F09B87DD0E0E0
                  54B1E86283D840056261136FB8AC48166C56941953898850002380A48374E758
                  1CDDC4FAF836647D08A76BCC4AC2AC74D89954984FAB44DE59615A17BD02A8AA
                  0A4551C094254C9151FF4862831CB6551A151DD148456E6C45C86EF245448A08
                  04AB2A4655DC6452BF6B17E0FE2060585B662941BE240A76A3757646E88778DF
                  E5CF1A5B11A1BCF30E28CFF0A771B86BCBF3DF1482AC04067DC91AC0E84068C0
                  BC84E10598CEC1BC04D31A446D64FCA5E11E7A229371EC4247D736E22E888AC0
                  4151206889CE1758B70ECB04063609086C1A4991018FA6F368834790647788C6
                  5D4D18A7670D0425A6D3AB98EF5C47594E5349715EAF0967B970EF18D0F27E42
                  07705355E08347DBB658AD9658AD16E8BA350C026695C3EE4E85BA367036F217
                  66D7A1C71BB2CBB6955A9D3904C74FE5A202A04B5EDB235B4203C0398280FBAF
                  F41640A280835A885874DEA2ED0A9CAD380AFF7E8B3B871DCE5A83560B74B008
                  30891E6E48F6C90F57798407252B9205B00418F5D0F61CEBB37B581EDF825FEE
                  C38405265631AF5CDAFD6BCCA7134CEB2A027DA9DAAFAEAA54D65BC29625D895
                  205780AC4DA41E033D792FF0A36008D27B7A614E476EDE902F6388D431A3ACAA
                  AAF80FFFEC8FBDA5903F68DCD702E8FCC282BA12F03591D83E6F1D79C16C36F8
                  A0C171DF12E24B068D7678A58DD8E786D027D4F6E2A1B21200622BA6005003C3
                  F165A903199F3ABB161009108924A2B163C7F80A2F5BA8C393C99F8B0B3EE699
                  7B2DD07405564D87651191DED212DA02685B81711A81734BB0AC608B04D019F8
                  607174B404D115CCE6D741661787675D8FC46B7641F20E459BAA8F2803A599B3
                  8E606C0A110545081EEA3B1446608CC3A42E309F4F50CF7621C50EEE1DAE2068
                  E145E0552132304BA912B8DFAD309A031AE1023ADAD1B6E66C644D5D1C83EFAF
                  DB7D053780CEE13D493885A8834881D63BA89638386D70F36E8B1B072D0ECF09
                  AD5608A9AEBF574E22838B8494DA6B52726F029299082A1EA55348B7C2FAFC1E
                  CEEEBD06BFDA4749EBC4E863319B96984E337F7F85AA7298A48E3E6555C01516
                  45E150567522F5B0201B1B98E43C8E9C6EDD432919EB450EC30E842479BA52A3
                  ED619D2677858D29D9D8BA2C8B327DF1EB6E1D7E7F05D09E5AC6BA1234357367
                  99255DD7203A92F6C69C86BB71F50F5002236F7CF4090532A34B3692B2C5B009
                  D4F7D96151F83B30AD40748EC22E51BA154AD7C21A858841DB9658B702ED4A78
                  0DC8B5F1196CE1210E90AE2DF9A0BD1E0AE8E9D74801180855E86482C5BA4369
                  1D2ADBA1B402E7005700C646045E8281F7898CDA59304F005F63B53428AA09CA
                  7A0EF0048AB3219FA27FD6C937D4D19DF73BA4F6E6729FB196BAE212144561F1
                  C4F539AE5FDDC17C3EC1743A453D9D03D52E5C710AE533747E8976B18612604D
                  19F916538E47FF1433DED2BF11AF49B22FFD0E4200237DB261E98D8AB2133017
                  C37C861D54085DA7683B861A075587936587576E2C71EBD0E36865B1D63AA5F9
                  72AA9E9398B72F88345E18EAF9C9C5346D4EB17E9080C212D4B4684F6FE2ECDE
                  2B581EDFC0D42E312B8059E5309DD498EFCCB0338F441EF5ACC26C5A61675EA1
                  AA1D8C8D11176B0DCACAC5B6E31CD7A74212BFE0889C550D1848CDE27A90057D
                  187CE4A566A09B524567E69F50A805B4B2D65414419D87AF00BC5F1A45572A7C
                  090433986E3D22196F8ADF5E28483794C2B0DB6F746E492B8433180705116DEC
                  8079D144B0AF03730B4B0B309FA1B40B4CCA0693DAC31AC007076645508B2EB4
                  91B7DD501FBE1CCCFB748E210B66886DD0704EEE6B0E1C022AACBB25D69DC3BA
                  75683A41D5097CABE8D2AB6D04860C4A36103558B78AD3B30E6D67B1B3B78B49
                  BD834E4AA89EA6FB8C4C303D7FE2C8FC1E4A79A356889F57A80604DF01083096
                  615D89CA1A946509C331EE6C1830A4280AC6B5AB73AC5AC162D961B95C814CB4
                  2644B4C71572634B50AEC1BF18CB117D1B74521BDF40BFD08784E86D7891315E
                  5F22800F842658F8D6A283C5ADFD16B70E5A9C340EADD610C4029F3E3B510354
                  08966DDCE1932B95414049EBCA24BCC4E91AEDF921168737B13ABE0DF60B58E3
                  61D9C25A86750C320C571403B0E70C909A8E386B616C54346DD3806DE4602452
                  8005AC9BFC100441E8BB438DA2683939A857B8943267B527B4D5D4DD49421009
                  BE60A68A06D6D787AB0056AB6343E49D612D0CE7F4BC3C0644FAC24EFE2017B0
                  D7FAA9EA29137150E6F6431F87EE975C1FFFCAA65CFE5BDCFD0DAD61E90CA53B
                  C7B45A613A6D30990414D6A0F51A0B7434FAC5AA028FEC5BA6387802657A1F6B
                  54A0339096487FA711CBB1502DD185124D5762DD7AAC1B41557668DA00D72ADA
                  36E60778439022FAB0E70B8FDB775630768E9DDDC7509653F895E9E9C4362710
                  172671C852A45E59698A3068C234D81858473099B9389991CC8033C0EEBCC6BA
                  112C971E8B4587759748447217E56C666E34C6185F166DA8F1FB3E66BAEC8DBC
                  6BE4E38D2DADEC2B3354903A000BBC10D62DC1B78AF3A6C3EDC30E272B1339FC
                  B9864701510B224A3B7BBCE044D28C6C4011F7E654BF7E3834F08B039C1EBC81
                  C5D10DC8F21895F3297A13D38D8987B9CE9B810445E705CC0A6304CC1E5082F7
                  1EC64AFF39A2CC953984B19198A029575E66E59441DD845FC4C6240C9312C788
                  39763F518684A0226299B97CCF14C0D9D991057C612C9C356CFA8E3C49E04513
                  2D745FC9B585F66D40469BA09E52E8639E1BBB3FA1CF2ECC64A3432A705A2012
                  B528C883A985A1259C39C3BC5E633E8B1D7CEB3AA070165D20142E5ECB62D942
                  82472709DD4F55616372C92D98A6576DC3FB02D1F8A0840A04D468BB16EBC663
                  65055521284B816B15AE01BC6304C7F09EC1C6E2E4A4C18D1BC7B8F6F867B1B7
                  F704ACAB20CB78FF44C36E3FACDABC23688F078CE5A7D705899F5BB3C2DC40EB
                  E26762228AA22C1DC295399A5671B66871E3CE1954CBB4C062A44493C0645528
                  09EF214ABDF23427ADE87099839ABA442D6CFE3EC4BBF3EC260D45311332A8F4
                  2DC03B61AC57C0A2F1383C17DC3B6134A186A71A5E4B8454DB1F61855CE781B4
                  7632353DF54B92295972D241DB739C1FDEC0F19D5711968728B8812B18363796
                  CDD7AB0A2F4921F908F412A55C0A8DEDCAADEDC06C40DCF6F87E1F2AEDAD4AD3
                  2B8031772425649C1053C7F3CBB08531059823110B19019185E12022628D31EF
                  9D02582E0E9D4A5331878A48AD4A4EDCD67E51E5BCFA7ECDBEE5C8A0C8E0EB0F
                  66F836221F1F54C84D47B3AA6002D081680DE6259C5B625AADB0336BB03BEB30
                  9D76284B0FE714E00ACDC480987076EED19DADC09840C825335387248B7C0692
                  3E3771B8B354539F2D59E544BF51A20D15D6ADC7D206544D87BAF5E81A41E704
                  6D1360ADA029E2823F396D70FBEE299E7DFE1A76771F43900AD075F4E37538EB
                  6569327DE872CB12DB10B9DE2F1B30965CFC927B1A54CEC05E99025CE27CD9E1
                  D5D76FC33A03C0A644AF84E9F40F5662A29E49BB524E424A49136372D74D51DF
                  54FC94577A1F014A69CF8AFEDF3E495763C2542706ED9AB06A034E971EC70B8B
                  555BA3D349ACEEA348E34ECC17D6CE1098A2DEDA20051C2B48027C738EC5C12D
                  ECDF7A0D6175020E0D883C482C984B00065E38D67888A2F101AE0B6013894703
                  628BF2D60B5CEBE16C1452D5C1521B1463B667A392EB15000D33652862126C0C
                  8C31B1018D75702EBEC7C6266B4360D8910471001574FF78ECBB53008BF3A352
                  A5A98D0D9561B23D1097CDF391493844F446B5E93ADE393796E945A58051B65F
                  3AFE303989D432F1F2132B989630748EC29E63522D70F54A87AB3B1EF379C064
                  A2280B425932980DD65DA4B25A37168BE5393C2C541D046E0446F52B27FD10FA
                  EB8D82957F4EDC824A917F1E069D9458771DECBA45E518D352515885B5919BDE
                  16C0BA11B4DEE37C15D07983C9F40AAA7A8ED58AA0689202B8CF83B8AF3B35CC
                  DDA030B2BF9EA309C993E49888E20CA13084695DA1AAA6F09DE2A597DFC0620D
                  7412526F84C104CD6645ACF7085117D048D4B643FE97FA044334E57E3797412E
                  E416F0E2106482555B63E52DCE578CF395C1A22DE07902A1BAEFE3C019F91F3F
                  31DA9C8FBCAE583D24B4689687383BB8817B37BF86D5FE6D542EA034822084D6
                  330A18905A5060B027D80EB06D2CD3ED106025C08680C2038E29768AE2002613
                  6D8EC4E89B2D8F815F28358EED7B7A24627952188A896BD69AC414E4E05C89A2
                  1018EB60ACC03A8131026B4AF6414A804A63CCBBAA07B83F06B05E582014CC5A
                  10C15CC601B9F1BCFB00BFF600DEC5DD2A3D68DADC277249F1363985A6C598F9
                  5F63B24F44FD0BB7425DAE319B34D89D06CC2701B34A31A908556D5114165085
                  3111F8693A839BB75768560D48CA941330DAEB8946F793AF3D771FA29E977048
                  912790C6B06027059ACE61DD46428AB2055CA1B09DC00745DB0ABC36E83C613A
                  DD45554D90DB8665D2C92108F0F66CA9B1D4E522978D394DD7C99CE650914C4C
                  A030B1A6FFA927AEE2E3CF3F8B57DE3CC0E9C2C38B87AA01B1C14606665F339F
                  BAE12605B1C9AEA4E30778E13EE8D26B4FBB62AA4C8AB9108C20166D2810D605
                  96ADC5A2715875253AA9205400886DBE392BAA31748EDC467DF07FF21A530DF0
                  CD12CBB3139C9E1C61797E0E661B1B3B5A008EA1CE42CC04621C8231F064D1AA
                  830D16F0169E2D0C0C8C306C886C3E26BD081A1BB0643F24593B9AC959FB3BCF
                  766FEC244CF0B0E463E7421B1BCF3A174BCD43A03EBA94157B088155D5117361
                  D8BC371640DBAE4CE1243216C53EDD3D4AF9D624509777B7B92C3038A000E3D6
                  DD79700FA04455DA81B082354B54C50AD33A2A80E9A4C3A40EA82B455D11EA3A
                  72AD89C4FA78B0C20B309B7658756B7452015AA4B458F40A699C9BB5792D9974
                  34BB0379B519A83A0489E5C2EBCEA2E90CD65DC2010A45D30A8C0596EB064108
                  F39D3D14453DCAAC1B1BAFEF44F847738470FFAFE6BC011D3ECDA4B08E71EDCA
                  1C1F7FE123385BB668FD0996EB80D0DFD790F6DD575B66F6DD0D1D3E02F82E79
                  DEC35C6D5B82C32B9BC79A2C002F0EBE2BD04881655BA00915BC5650AAA188A9
                  C1D433FB6490720B1C4156E8D4BB462A82AE6BD1B60D4414AEAC515616D6C6EA
                  C9A23070CE80EA125498A4100C3C1BB428632E4270306463AB3289F5FA03454D
                  1276DABA3F1A28D4F31D330258034802485A58B4B008285DE49B288A587B226A
                  7AEAF92C29DE071651CBC496D9BE37184008ADA5421D338CAA928AA24F671EA3
                  51972E3A5CA2F2C73BEDE607FAEC33DE3CC8385127BA1D1EAC2B14668549B9C6
                  7CD260366D51572DAA32A0AA0855655095B1F45202602160230808D8DD159C2E
                  5B34DD1A92EAC4FBD2E18CC4D3B6F0277F95B2924A61B86CBAC22268012F0EAD
                  7758B506652B280A41D112D6EB80A2542C966BF85062369FC3B92236DA4CC055
                  5F9E3B9293B75F6847BD90D2289A90DFCD1986A239DB2F960339039475858F7E
                  E449DCDE3FC4D9728DA65BC4954631733143686694F893EF9B720422035DDB4A
                  6080B8E3AF63AE480C3FF7BE717A891AA838744D81A58FC21FA886520D701979
                  136868169641E8EC366A5E9EC8384072F492021051B071A8A73B28AB0A05277C
                  C410ACE3C8D0EB52319789558962199D29E0C982D5802522F33DE7758E3A508E
                  6C0143392F2136B1CD572CA94366071281760DB46BE1648D02015DC1F0A583F7
                  928AB56235AA0CC01BBCF7ACA296882D33BF370A803458025982928A8CCCBD8B
                  A8FEC531C479B7176BAF2547DDEB88A4B7208936053F76B4153005303528CC02
                  937289D9748DF9ACC16CDAA0281B1425A1AA2CEA9A509480610527DFCBFA8056
                  9778FC3AE3E8B4C5AA5921B40E0A0BA01AA566A568C328461BCDB7518663DEB9
                  FBDC7E0BA1981DB80E1596EB150AAB7036C059058C47350196AB166D6731DB29
                  609DE9538323671A6FCDDD653FDF6F24CB4CC73BCCF0B7980539106090A13E51
                  C916846B57A678FE234FE0E46C81D3B305BA2EA4DE8BC92747EC8A944B76B3AB
                  A6218C94E565A87FDE2474A4CDC6359D1999CFC4233C888738AC4285653741A0
                  19C015C045FA4C5A5B1A462C3E43AFC6F81873C876443EC351E1DAA2C2DC5E07
                  ED5D031B86F701D6DA14F253B089801C69A263638218036F53EFC0949E971BE1
                  8E0D0FA6B14B94F10DD35B00F133024B01561A84A0F0CD12DDA241E19728D9A3
                  75065DE5E0DB80E023DD990FE8A34F448CD6799210F9F1DE330510C108C01805
                  B38293DFD5A3F8880053F6612F74AFB9304660903294332516FADCF3DE93CDE4
                  8C88CD18193EC5FC3D2ADB613E0998D72DA6758349D5A22C3CAADAA1AC094515
                  EBB50B6760C9200405752D26CA78FCF1096EDD6D7176DEC0FB06412B0045E493
                  CF0B5315C2394C95B9E30621EDC14A09B17D1362579D8032B6D16A2A5856186E
                  61ACC03883C52A60B16A012A616D018241DB79B481E135C65337DDA3D8FD5687
                  5C4BD0DB98DBCB4656C5C6985E510C66A8475D3A3CFBF463383C3EC3E1D1096E
                  DE3E450060B948D45519F597113028B10B8F19C51947D7D27748CACAE2BE9737
                  F48FC800A08A4180850F05024D215C43C8266B4962B72EC979289A3A461322B0
                  263D60AC4CBD5B499CAEC958383B81E13AFAEB02983A76E3898A2395BBF79853
                  DC10940DC4E48ECEF99607083F335319CEC972400E5BE7D6624856139300F050
                  3190AEC5AA239C9F35E0F60C5313D01516A12D10EA186510323D85193325A5D5
                  C506F54486991FB430BE7E0510C1A34C521A73C43523CC4948FB14C77EE58E77
                  FEFB470072E868841B0E0B611C55E8954DE4BB676AE1ACC7A450D44540E53A94
                  8547512A8A12702560D3ABB4145B6E93C02950978ADD19636FD7E0E40CB160A7
                  ED5289E8C834A5E8038F0BF07B269A9C2C93AD17914446E2A05420688DD6AFB1
                  6E03CA46503501F5C462D574681A0FEBE2A2F73EA06D3DBACE2208B61281DEC1
                  4828E2387D374FFB38032EC79533418A48AAE520852B083B3B359E7AF22AEE1D
                  5CC7FEFE39964D4080C09881333FA3F5D9C2657022B11C04FFED5C6F5F573006
                  01C798404F5594CCDF54F7D0D7F450DCA987BCE2F1310431757B70E37414BEA5
                  941125504022B5BDB5065D6A2CC2C9BD0DCA0960E4D48D9AFB32EA5C9CD17BC2
                  34FCA2C9B71FB82D62DC5F90137B6287C32858160246D309CE164BE8F214DE0A
                  426921BE44101F37C9442C413DC94B81100271CC6C1AD34A7F5DE3BE0A4055F2
                  1AEAF70C241452A03D6BA9644DBC1503DADED1063F3199AA5BD6ED98312807B7
                  90CE13BFEB01ED60D9A3728ACA090A1B503A4151126C81FEE58AD81B9E254EB6
                  23A022C2B4165CBDE2707C4A582C3DDAA61D6119B4B598B76A027AEB84539212
                  01EAE3B551240E0D5AA20B359ACE63DD0A9AB643DB31A811745DDC557C17D0B5
                  1EC60484C09094C33F9EA9073FD2217819B90EC699987D3DDFA6C0A5F9A48C37
                  A4737042B0EACAE1F1EB7B78F69927F0DAEB77D11EADE2521DB5201BE77CE424
                  97FB427F34FCB3E10E6403E2C2FA1859017935714CFA928C0DF58749EE629F96
                  9E59A97A2464E35AFA0D2BFF4FD133F228536AF81A129431CA73C088552A65EE
                  D1E84236CF9280521AAFF1A400C0A948891276918B9462D3D975E3717EB6803F
                  3F83140AED1C3478481090B1605B44B6278EF844D779781FC81A43225B21B5AF
                  63DC1F0414AF41A021C412D62CE2A2A93176B2EFC6BA3C8E94CE39AA7E1A4A4C
                  73B9E9488B8E5EDB71F9787BB958279A4E8643E4E237406122277F6129BA2B16
                  A95107221B0C02980805C552D9D2795CBF32C3D171C0D191C7F9D91A489CBD31
                  956C3C9F6314372FEC51BE364684A84A88706309AF253A69D1068FA653ACD731
                  12A11EF01AB05AACD1B41D8A2A0273410441C2606D0CB27B1F5C5D2F9D27D5DC
                  D86200598704E6C451D8AB094AAC410C5581B3067B7B333CF3F46378EAA92B58
                  361EAB8662135449FE2E6194F599BDA2CBD79E265C829202EAA9C3362A2CC759
                  22A39592DBC4114572132446A514F20B21A40D379379648ACF91F7DD6B27ED73
                  A3FA14AB2011B94F3B6AE7BB78764E39289258883226C51CB3247BEC2A878469
                  834D1AC845921639AB2F2A8181DB2F17A1090102832E28D64D8BC5F912FEF41C
                  5C02DC15A010959C2D0A98A20233C31A4663195555C1779E480D44523383F744
                  01C0075116016BCFC58E1C7E9108AA84C45C113543A2B16744824B9BFCD744D7
                  9568963973F8E50493D1146E34D018ED5C028D93CB7167B78CD852C93814AC70
                  46922288C2CF46C11CCDD36CA55A0B58E3B13B07AEED120EE70127270DD66D97
                  CCB1D8ECA47425B48B7D0172E7194DF58B037BEDB0D7AB248C00008000494441
                  54A3C65F0C4809C2024F153AF558078F6513E0CE5B5496C0C142036179B6C6D9
                  E912AE58C3AB4390165E3B0412A8311118442EC83169BE93D867AA738E8298A1
                  D9089EA6D658CA5170FB6384FE7BDC87CE865DCC184035A0AE088F5F9FE13BBF
                  ED9338383C039D765837049F2AD0D898C1EF26056D866C90D97D321E9457254B
                  0CB52A47FF5A915B7AC71D382AAF00C8707D510944961ED36F28A9418826DF5A
                  072A733606C203712C6797355FFCC8CD54D5BEA168FC5332C903204231DFBEB7
                  F662521B93010B27F02F6E12B4E50E64A516C96364B0C534A4D6E2DAA3F84206
                  4236529A371D968B3564B106AD03A8F391A7C058B865036396B04C702EB20B7B
                  1FE045FBBC51796B2AAEAF4F0118E35A8534AAEAA36893E979CB1001401189E5
                  8DB96E9D08487ECF1033CC023EBCC604CD59B7D0E8C8639B620813A57398586E
                  6B0CC31A0BC3026B029C31B026EE6A9C1F8C41044F54C08650D88069D5616F17
                  B8BAA7383C0A5877CB547D17AF39084382A6F6D739F9451395738A27A7A5C77D
                  C827974A5B042AD06981D69758B51EA555AC561EEA2DBA1070747882C5F912B3
                  DD1641059D6F11421B1BAC243335722D24811BB0A67E2EB3E90F649E8168A8C6
                  F6E694C246DAFB8DF156A21510BBEC24735B22C8ABA979C7A4667CF4238FE385
                  8F3E89575EDD47F06B042F7D038B71F16EDE1474FB190FA04E444D5264457AA7
                  392975CAFD0F42FA76E8D9A0F26A201EC544539250DFB340917805B6F2285208
                  135088EF92B543096BD17E7E8532C94686380881A212A0BCD1716AAD46A1EF27
                  81DE1AD8DCA8687CDD3DFA29096CCD8567E9E965052604F10ADF7A68E7114207
                  EF2C7C507401E84240E73B041FA0415285A4425555454484344878571AE0BE0A
                  C0D949075DAF4574ADCA92C4A9F77748871BEFFFCBEDAAC6FE19C6BBE8B8FC37
                  4FDAB0A3A2CFCE4B13D89B8D83299E171E3103864086C1062063416CE32ED2EF
                  8A495B67CBC10414AEC56C6AB1BB4798EF280ECE1A280AB09631E425F9610FE4
                  243D4D53EFDF6E1BE148F81523BA020E3EC4BC80A613AC1B0FF3FF67EF4F8335
                  CBB2EB306CED33DC7BBFF1CDEFE558597377A3812606813244064DDA9622A8A0
                  4DDB61391C8A303D503207902208509241109064920249D024C3B219B668D241
                  FF6084C80859A449800641CCDD40CF8DAEAAAE292B2BC737BFF7CDC3BDF70CFE
                  B1CFB9F77E2FB3E6CAAAEA469F885799F5F20DDF70CE3E7BAFBDF65A2491E706
                  93D900F3F914D69428BD83290B386BB92E757103ADFCD0EAB5E58D1A14995D0C
                  4271E495474F0581A9A941E2DB3B0BEF2C5F9ACD9A38FE0662B054109752BD4E
                  8A6B577731389F633AC991E7066C93863A5516A24E812310563D6E0FA290A6FB
                  48298E0A4EE19EF4DCC6A328C5E563CEE3ABF31E90CCFAF3D127A032F4AC3B0C
                  DCA60E6F57C563704CB28987390680CACECC05D43F7C63C41840A1B32002E81B
                  F65154E670AC2C249AEF5135ED173B45A830905A4BB3913136763F102E990028
                  F3C8F2AA935405C6353A6ECE7B6F9D77DE79870FB0DE32002449BF2C0BB774B6
                  5C7A2F0C40BAC6CBC2ABE5425DBC721CC2F849C30DC67A04BBA98B5901AD6EC6
                  E6ABD7F86C0C1C5103887BB1FCA717042F99BE1A1D57B012626276E221A585F2
                  25DA2DC25A5FA2DFF7484E72142683750AF0DC9FAFE9C72193688838568F31F0
                  01EA5010C13801EB599FCE98127969B12C58A3BF302586A32166F3318A62C104
                  A2B28437B6E19016835D13D4BAD0258863AF1151ABB206170200A0C8D501C087
                  34178D20B0A28ACCC3A95E105AA9C4E5BD2DDCBB7384939321A633130EC22A5A
                  1FCBB887495D2E0CE3F890AAC75BDC23AA33F3C137201866C48580DBD404447C
                  AC9ECBC7A6547A057E478E46C040F8BD0A651271FA4FB174F2226459867F5E18
                  F176D4DC7771E232E83EF820991E4A4901C00BC6B35CE081446254CDE5A88340
                  2DAF1E83E3A381D4E6FFAF0EDCD525071FBBEAC2F4DE7BEB9CB3CEB9E661F9F0
                  024096AD9765315F3AE796DE53653FB472F357176285B284542E06014E8B9DF7
                  B07120E2119CFBD53BA93184DB680FC6211C8ED07CF09D88D9A1643E77406DE3
                  E45E452A0AA831490BE90B642D895E5FA2BF4668A5259C2FE01D0F0821A47EFC
                  BADACAFADCF96604A7C6E3C485FFB20D99F3094A182C8B1279A290A602D6CD31
                  5FCC309B8E902FE77C5399705B799E678FE49BE6CDB2CA9AABEB770A01C07B76
                  05267210F0CC4340F4BFF5D5EBCE2F65D4438C372CCF9D7BF250A194DB5CEBA0
                  DF4DD14A09521866E755A3ACF50C437D6DD6A05BE504CDD53EEA862FD7C314F8
                  EF32F4DC85F09014340AE3992654E09D0BA87FD5970F7DA9EAF110E02DD51924
                  85202379EACF3B1E5F666151C701804CFD181B1DC56ABF88E015E05D089E0E32
                  B89945DF4B6E1507A1752F6A40FC02859356DE37543DB5EA2D11B16AA6FA23E8
                  108858D2062666650C43E4BCF7C63957BAA6A6DB871900DADD4D331A9F16C6E5
                  B975DE84C4843C621B66E579A252EB8DAC2C11145149854D516F2096966AC07D
                  559ADFECF7AC660A4D1C4048049F3507122EF476E3AB8A3A658EA05488D05259
                  389F23D102DD8EC0D6A642AF67B02C6628BD04F90C22CC6B3B6FC2A1E7D02F28
                  92859A410075C953315E3C4029DF758EB02872746D062F14845E422A89C96480
                  D97488ACC580291CB11126F8104526DBAA9A4D0899E1B5522A81108075361C28
                  0149226834381014D22441ABD5429AA6D57B2405330185E49BCA19CBEC400210
                  A8B21A25DA29D06909B4538165E9609D0B609C63F04CF066AD262583D36EF48D
                  885D95AAEE6E6C7A29095A11041412EDA11305A5D844C3077291B304677DA5E4
                  5BED9548A126DE5B442E603821538085878180C4723E03BC879012A034CCEF97
                  1C002A97A4C648B38F25239701422A081950FD80010928000A5E7006CCDA104C
                  94E3D814BB1F2294923154D774678A166C42402A8924D1F0A946A204D2344192
                  266C2CA23574A2C374A08294124A4948292C80C2595758671F4F00E876D72D91
                  2AACC3D23A6FAAB23C92737C9C42639083371F1B52482521B584523A083146B0
                  CFAF0E6EACDC6C759A143D045D23B0448517111051AD00A53DA47210D242080B
                  D6DD979024802A1504A76A9EA025B703B52F91A51A5B1B09B6362DC6E305CA3C
                  E32D64F9B7294A61BDE57E2C50096F368313DF56CD128C270411004507025C0B
                  A573B05E22CD3AD8D8EC235F8E309F0E91A47D08995C24D2551596471D0CAA0B
                  C473EBCB5BF60764D8A49E27104AA0D56EA3DBCFA01311C424049224814E7500
                  D61C84202815804EE79824E31CE69319EEDCBE8B3471B8717D179D4E0FFB8763
                  1C9F2FC2E3E0F97B17308BD5C197808390AB507217DCAB3C7966C1114106C932
                  A533B45389564B21C9F8F139C5BE09CE806DD64236E7C3A189C4A7486422E142
                  024210C43271F00596B31C274787C8D2149DDE1A200D2C14E01D1C4C50418A41
                  B616B561BA345F5EE42CA467AF45080EB080AD0235C24D4D2E6022A26E15575D
                  902A68C77620AAF7534A429625E8763B20D1435B39B45BEC33D8E9B458723C6B
                  A195B590260907029D402965ACC5D279B7786C1940D6EA3A4FB2F40EA5F3DE54
                  A95D05CC044028BC16116CE1160C0FE3442A3191814001E773782C00D2A879F7
                  31CDE5972B78A754ED2DC041A000510981128298BBAD34A0646C0BFA9042C65A
                  37827821D010772A24049467EFBE5419F43BC0CE86C4D98941B92C90174B90D7
                  FC98884390F796BB085E5401ABFAB13E987F535DC6C4DF5EA7A91AA5058C03DA
                  598A44ADC1DB2596CB099C2D39FD0D5386148349043A118A4FA00E92C4432ADC
                  728B0EC8F1FB59022D495364598634937CA3E8144AF28DC2B7212A0C40080163
                  1D8A658ED97C86D3F3539C9F1F637DF312D63776B0B96560DD3D9C0DA6ACD51F
                  A4C2AAF61D50BD67D5C1A03AC3E3D65FACE7B934149290A51A09A5682502594B
                  20CD1474A26148B0738E37F0BE44AC00BC0F8C3EE7C2E704DFE4C14D8919F1EC
                  EBE7CD0283D3439C1EDE47BFBF86440988D4C28B84F74400219D8F8FC957C352
                  FC920B90949081F3E2020D170D2A344404899925C83E95519FB39129C6A43064
                  CE9CA172190401248942A7DB81D23DB4A4452B4BD16EB7D169B7D06E65C85A29
                  B234E1F73164054A2AE7BDCB9DF3F9630301D3AC6741D2384FA5E71200D1C821
                  B6AB9892195243421500187107947250B284144B085A406016EA519EE98E073E
                  DEACA24A9942CD5F39FC2C21B180A425B4344874824481B300E9A1A487140E44
                  311832F2CC3728210EF310F1649B121E897468670E9B6B025B6B02CBB94159CC
                  E1A0C281E2C617DF6600B970AB356A70448FC478834430B972F4E59BD578D605
                  505AA2D3E9603C1AA0C8E7B02687D496DB746442E071E1168DF5B4AF0E581578
                  82A927850085086C052113672DAC759022459AB49065591098A83610E32800F2
                  9C0FFE6C36C5743EC5743A46966A6CAEF5D1EE6DA2D777188D67B87BEF089379
                  09EBCB4A28D4C521AE809893A7062D39B6C26C38040EF025880CA40054962093
                  19DAA940D602D296824EB88D298C83F025C815881180014DC64BB819C0ED3442
                  9C0500400EDE162817639CECDFC6E0E4086497E8B413B4250015F647346A0981
                  A09905787808CF82201EC14B827806810FBF06A444A4850B488880113469C9A2
                  D29A5C09070000E91DA43710E4902612BD6E0B49D6474A06AD4CA3D56AA1D5E2
                  00D0CA52A4191FFEF8A1B4B6C616857336F7310A7FF801A0E308B284A7827F49
                  35BBC7AF61381C558B22BC11140280540E5A19247A09A5A6505205314E074F29
                  6701915EE9E2A4541C356D20CD3010B4801213283947A20AA43A43A680541274
                  98DE92B0B52824887BDBDED7034C81EF2D89A024412B0FEB4AACF733EC6E694C
                  270EF3D91CDEB1377C04782A34D7732A8D667CA770FBC7E9B3065E41E1304BC9
                  3759693D8812B4DB098A8580350B987201A14A28150240855F08806CC8256C55
                  12F1530B049ED02D713070AE801025E01DAC7198CD0B0C4606AD36EBC9699504
                  9929012504A2884C5114383B3FC7E9E92966B3099CB368B7333CFDE40D74BBEB
                  90BA05291C2EEF6D6167A70F733CC07C5980BC8712BA21071624B9A2124E430D
                  8AC2900EDF7A3CD8A505906609DADAA09D0AB45A163A93D0A9040CB010160239
                  734C9CAA6E7EE743C073F164850327B814F2CEC0E4734C07273879700BF3F90C
                  A9B498F733B43A29483A265A4514338282B1C588681DC6ED5C76253220247CE3
                  87D62551D0E8F392C783BD0C2AC3BE91C936ECC6AB6E4D8825C241FA0220834C
                  137C2743CB77A151224935B28CCD465A59B8FD13CE00B22C81D60A4A49278458
                  5A6397DE3FAE36A0EE15CEAA05BC5E386FCAA60A44253715444163EBC20B56E0
                  51CA234D2CD22C47929448E4194AC9CE3DCE7560054B39C3872C4070162089AA
                  7A38DEA02003A205244DA1C504891268A52DA4A947A2C1A50639C62002ED8FAA
                  83EA2B74B60A0224A004C14B0FA70A6CAC2558EC49CCA6068BD90CA3490E4B09
                  2014A2438D2051FDCC180004C2ED5FC102B15919996C14D2D61CC01CC694B0AE
                  05A5053A1D09F825CA620A9DF4916A0D2D4BC6CD3DC1117F082F4064AA5B2582
                  54A2A1829368823525842B902484764BA3D756B026C7F1D13126A3115AAD1469
                  2BC1FAC606B4E64E07F799EB8DD969B7B0B5B5859DED6DAC6D6D8248C159667D
                  5ED9DBC4B34F5FC17C3E4699CFE0BD8514B10E8FF57FEC104406A283004B5859
                  9B036421C922A112A92ED091403BD368A7842CB5D069029528800889307C435A
                  033855D5FCE43D4410E77414DE9790414A21E0CB1CF97880F3FDDB989EEFC339
                  872205F2491BB4B506A5C160A605FB037A0FE74AFEB93E38117BCF188057102A
                  087F4043C90C8A5248D290605D00522A604E4123C025103EA9484395987014D3
                  099D29E11D1472286591660A69B7858E14903048B4449AA5C852B61AEF6409B2
                  2C65ED8234E50020A59142CCAD35538FC79401486A17CEEA3990CC9CCB4BEFC8
                  9308DC4DB08882F375D6439EEB30AE430D942A90A50BF47B1257AE38E44B0B63
                  0C9B568260BD09F4CEFAC68CE2660404DB2A965D96B280920E9916D8D921B452
                  834439248A9028855431BA5D77267C4D79F5417E39381B1310300A8FC459B492
                  1C1B6B09AE5C1600290C460EA5CBE161E01CA3D1BEEA35F3CF06026314BE0A00
                  313054F57F947A1616692A91250E9D36D0CA1C329561309863B13843D6EE636B
                  F3329EBEB187C26AD8805E58CF9B35969CCEB11CB5E7D9B2AABBA19480B30A02
                  16ED96C25A37C55A37837405730D6C89B2284182301E4EA012CD998C101052A2
                  DFEF617D631DEBFD75F47B3D64AD16944A2A7F42AD086BBD0C37AE6D6331BF82
                  CD8D3E8C0B745CCB69B9F3D1B29BBB120EDC6D31C502E7670FB0B9D1E3390D69
                  A185414A0E2D29D04A05D254426B04310E0E24B6CDD2E0891228CB4866E20CA0
                  2C8B301EDB2495B1FCDB6C31C6F4EC00E787F721CC125A006E39C6727C065FEC
                  22ED2621F0312BD23A0B451ECE19D64DF0FC3B949050D050A4A048437A8D8415
                  2021A1A0A020A12148415008002421A021A0EA3E51A4AD886A5757FB5B918112
                  052805BA6B2DA4905082F12DEE0264C1768CBB39499A20C9D87548278917CBB2
                  28CAB2C00730057987009095D6CAB9927AEA9DCC5DEC53C71978AA1D5D7CB861
                  49300F5F7A0BAD4B645E62BDAF70FDAA4459485843288C678AA3F3708E428F96
                  5F18194E19515489F690DA412907AD08A9D258EF115A2D87447B284521A58D2D
                  A826AB836F085729CEBAAA6E66D0C84149205505BA6DC2EEB68652126B1B84DC
                  F2467056C01A704D1DA7F62A624B85EF5435A808CF250E8078C12CC42CD3D04A
                  A0DF1668B500451A8B45096BC6582E07687737F1A9E7AE23370A36700EACF328
                  4A03E71C9C75B0C6C01A13E8D731D364C015DE400A8F56C6D6D5BD76024D0E45
                  BE84294B10009D261C3092042A09EDA544A3B7D6C5C6FA063AED2E12CD2543EC
                  D97100262489C4F6761F4F9757B1BDB384313CA5E78A921F97E5C7CB14D61C45
                  B9C06C3AC3281FA22D27D8EE24DC91900E920C127248A540AA15B4E6B6A45409
                  A4D410C111C8960ECBF91CA62C2041D03A8084063081F95733E580D97489C5F8
                  1493F3232C46E7D0DEB28C7EB144391FC32CC7D0D483D0125E38186F50DA1CC6
                  1850E025B0819843A21224CA414A0B292C94B4482505414E0529350B746AC71D
                  2F29839AAF8550B2992CF365D91830F3C14E4F8229EC424A882483F67C2949A5
                  A0341FF82C4BD14A64D50ED45A23D13AB40445B9582CF23FF7E77FEAF11081A4
                  6C5B67E55CAA6402C8DC3B26DEC4D056133B037103515A09019D36004AF47B60
                  A55723600C509616852594463466E17DDD478EA41D411C4CB487D21E5A792452
                  A29D7100D0CAF1C8AFE41B9D33861A44AC780301EFA1481489A40DF23C59A858
                  48142024A9C65A2EB0B0DC0FB7D6C196046B80D21858EB2AF4BC62E345065948
                  45233600116A5301A419CF29B412A09D3A6821D1EF2B4C660B2C16A798CFFAB8
                  71E3F7A03409E3C39E5B607961600D3BFF98B264DAB073750D2C0275951C9414
                  4813C92052AA914A011FBCA488082AD1B0CE43261A699622CD52E85423C912B4
                  DB6D289970F00AF33308814D1083AC6BBD0C42EC60991B98921F5FB95CA02C0C
                  ACB570CEC31887A599613ACBE1F239C6F6147B1BC0EE9A814A64D5A961FD4D01
                  A588ADB3858794093B00B3EA255CBEC46C7082C964862449B0BEDE47AFB50E78
                  81655104D355668796A5C3603EC4E4FC18E3F313987C89444A060E4D019BCF90
                  CF86907E1B894E99025CE628CD14E5621E7AEDBCDFBCF7686901A5B89495D223
                  4988EDE6749C3625484DEC21A0085212A4225613122E740C6A9EA814F1F0D7B4
                  784180F202D26B482F209D0C3F474106B036CD345225A1B482D21A4A6B244902
                  A5B5174294F3F9BCFC2087FF6D03406FE37F6AFFE1DFFB234B29F4045E2D9D83
                  170E51FEB46ACF106A2E3A09CF8016B8FD4364B83A9409BC33B0A6E079786B60
                  8C808940ACE7F1621E210DE33F1220E92112CF269B8AA0C3AD914ACFC09FF010
                  D2D7E40D8A524DCDDE7473FAC0D59F2346E8793E20071190A440CF492C6C096B
                  9913E00CC1940E7961F9E6F121D50FD0473525899A1711DB78100C6426A98256
                  025A025A1848F2D8DC4A617C8ED1F814A7A7029FFDBE1F06891E9CE73971EB3C
                  8AA244591AD878F84D5101D804D4C62A02D09278425209682D91298D444ABE51
                  9482D40A1EBCC1749A40671A5ACB3A9D0E650641C05ABEF98180EB3946AB956A
                  C31A0F63F8B0174BC981C938CE549CC53C2F009BE38C065038C733D7AFA0DF01
                  84B4DC352204DE880A5DE0702B7A89E9C2623A5D623098E1E86484FB6FDEC370
                  3442BFDF4322AFE2F26E0F423AC01994D606892E857CB6C4E8EC1883D323CCC7
                  2348CFD9A4B3BC694DB9C46C7C0E6FE65029C158837239C67C32C0743AC6C6C6
                  3AB4CEA0156B3DA4DA727749B1BB53962A2429EB3C6AEDA1B483D21E690228CD
                  26B0FC81C0A6ACE756E218419501F8D0BD2082F40AD23B76B7F6BA0A0042E940
                  1062715B19DE47211592248592CA49211F6F00008034EDE5522E27D6CAB177CA
                  0152C01BC67E05E02C47B7A65A90101E4A46CE372BA468E9E1AD85B573B844C2
                  3905E3A8EEC484345D8421470A401E290FA13D84266641490D4949D840E1C596
                  12A47D18405CBDFDC3551D617CC499ECEA06270F92061206242DB42FE120210D
                  BBE73AC734535B3A9416F0959945C3E3DD57D290559FA462F285D7496B1D50F8
                  9A23D1EE29386F50DA2526B3639C1CBF812B573F0D2132582BE1BC40A2521823
                  614B016705BCD341B546C4A930E6386819F0177E0D1411329D404552960A3C08
                  A521B4E2B2C1791445C1D46011A9D66C956A836210BFB708F887E5A446B2A71E
                  39079179F854C2390AA59241918F60F37D74D331D69E6CE1A9EB29125972BB8D
                  00121252B600B0E9C67C69319D97189C4FF1E0FE290E1E9CE0E8F01C6767239C
                  9C9C62B19C637B7B139D4CE0A9EB3BB028205C01052E014C41D8BF7F1FF76EDF
                  C6F9E910A6B44855CAD94F2829CBE502672707189FEFC22CDB984EA638393EC6
                  D9C9092479745A845E4720D369B8C50BC69652429A0269EAD16A014902240997
                  4449229166B262312AA5A0A48492B2724FE65DE7A0AA1621BFC69E54C51D1000
                  FB077ACBA4B980CD9094ECF518E9C052816402251323A53452C97CB95C168F35
                  0068DD312486736BE5C87999CB506DFBD0B30F0968352D653DC25704B10929E1
                  9C80759C3EC349468709616E3D1C2A84DE79EC2147E929498074CCEB1621250D
                  2D31453C12CCB2753678B82130E922345F9747DCAE6BC03082D159192E6B46EC
                  0D9C3780309C8A466EBE6599A8E82918B30881E8E8D3E8F47A7ED3638A200413
                  453C98C0A38299A477C0F64E06A9130C4702A727B7B0B9B58D5E6F1749DA8673
                  12440ADE672CE6E10C8361D6B1030DA23223D75D24A8BA6D24115410AD944254
                  BE7842325BB37A9D803A630A6592102228A2B9AAC41382201CA3E45C1200F00E
                  5A6AE681780B5B1A4C2713CCA6FB203FC6DE4E8A9DCD756CB405A4A0F0780920
                  09824669088BD10227A723BC71FB00776E1FE3E46888B3932146C329F2458EA2
                  34284D81F9628ED96C82C56286569B4B0941027961311E4D7170B08FD168086B
                  6CD5E2B4CE416B6EA03A67319D4E70EFDE3DA489C66C3AC770708EC968846E27
                  C56C3A42BF9B42B41412AD91240249A290268A01DC4C311897E920D9AD916509
                  B256029D24CCAD50AA0AF4B58008EB1A48111A839E696DDC32572163A4605A12
                  C84661BF9060CE8A88FB5E28904CBC7522CFF3E2BC288AA910E2F166003A6D5B
                  B8646EAD1C98927295C88C480A22BEFE792FD5AD2478CF2D3621197DF7FCA7B5
                  AC9E43E186A140EF743E8EAB30A182AAEB396CCC4095472355A4A050135F1C29
                  39656D6E6A00950251FDF0E21B222AD02EB63095AA0F81753E38F40680324C9F
                  792F513BBC203CEAA8F67A717E21741CC8430A19843A38AB919AD8A7C01468B7
                  34A44891651AA7E763ECEFBF82279F92D8EAB5F8F779055000E5BC0D68383F17
                  0AEA3F2E740D6ADDBFF09E3896A6A80C2EBDAF443E63A6104153178691404C07
                  96528209A635E94B50041C0127582403B22E017357603A39C264B48F4EDB616B
                  A383ADF50C9A0A28D22CAC09D65B3046E2F87480575FBF87D7DEB88F3BF74EF0
                  E0DE2926A339968B126561E1ADAF2648F3A2C46832C1E9F919AEB57650960652
                  4A98D260329A62329AA0280A162E8180858313DC2A0CCF02A6B4383F3D831084
                  222FB09C2F60AD45511498CF17284D09A182CD77A2D923206172520C04695AFF
                  3D6B69646D8D34D18D20C0818082C3B3232E0955DC97D5A0579C8BA9CF84F00E
                  95EA4DD410A4D00D038129D81A6465311C0D0EC6E3C99018687B7C01206BF74C
                  3ED7F362294EF31CCBB4A5BA5CE984A825C0C319A80F5BA44CD65C81509FA321
                  081D689DD50D56FD5B53652618772AC9EA4324E0C3F89F88F2D414DA912E32AE
                  AAB3D908026193222AFC36B00B30F9484A0111041A000F29152AF5CB38C51202
                  002A4421FED246EBCFCBEAF78900A00921B895189E2A290FE72D2CD9904EA6C8
                  5A1A8BBCC0D9E91BD8D85843BFDF439A06EB2BA1430F59C23B0B36488D042706
                  CD6C0C00A1FFCC6C39DB982203A2184748B7AAC7E803A73F0604D6A213D597C7
                  D720CA8821B8374B0178C1D37245B1C0727E8ED1F001BC9B6063AD8BADCD163A
                  2D0172925BA652C340C1E41EC3C90CAFBC7A075FF9DAB770F3D63E06C305C6A3
                  1C455E06811919B015072158E168369FE3F4FC0C57AFEE7036E9056C69B19C2F
                  512C0B066C7D14101520C1987E84E2C813669339580988DB97526A94A5C16C3A
                  479E170038C8C9E0CFA714A7F432D884B35D38837F3A6123912465172A26E8B0
                  7D3891840FF6E1610E91777635EA1D9F9FA8F6BD089791A77A9F898A5B52050D
                  2F5462C6E3D19D93939353008F370358DFD8B1C7CBDB8BC5C29D2EE798F7BACA
                  925221CD0E6EC500A20414855660146E8C330240080460320E2B19CBF02FB691
                  DAC7897FBEB15839C6869EBAE70DE798F65B8D2087BC3EDA5957126508897A9C
                  F00AE49A4AD925507705F11B4E8E157325C534AC61D8E1A99A7B883181AB83E8
                  F586C6EF8D538380205B751F28D4868E78445649C923B1C2426983CD7560389C
                  E0E8F0758008972F3F874E7B27B0CEB8B7ECA3CD97A34AAE0C310F896296F179
                  49C9A2AD118D08A5417CDD7CC038083E10B0822EBFB7B0AEAC3A2ADC19E0EFE1
                  1169077807A509A480222F301D9EE0F0C11B584C8F7069A78DAD8D0C9D960C40
                  9A42691C20B913345B2CF1AD976FE1D77EE34B78F995DB383999C0F90489EE80
                  A0109DE8232D572AC952D8D6603A9D049CA97E7F621F90477D792087649CD937
                  153B9348C219C69C3898B17EC4322F301A8D319DCC614BD6267081DE4E2120C4
                  B65EF40DA0307B22243DFC11A6D628EC490FC12CC1C6401740559980706E98DB
                  D1D8B72168AF060E2049129A4CC66FDCB973FBA834E6F10680279E78B6DCBFFB
                  A5D164EC0E6619CEB736D35DE69D737A0257DFDD9CB6A88AC117FDD97C40DBAB
                  BA083C254E155016CF8F878CA3C655873D5A2CD76F34216AAF4782084141327D
                  330C5A10799013106150049E82DE5BC82AC854AD40E7B844117144D3836B6E22
                  441FF748ED8C952CC2F04DCC2F02FD90C3971761C087852CBD658AB208B6D7D6
                  5978C11C06E90DE0178037D8DAC8006A63301CE3E0C14B383F3DC633CFFE10B6
                  B69E804ADA1042F16FB50652260175772092904AC3590B9E0C75AC082459B2CD
                  07730CEB5901474901E15821877C6D61ED0C1361949270B0B59905058A961310
                  32EADD190861614D8E07775FC7D1FE4D2CE627B8B49DE2DAD53E481400B86569
                  48C29284522D9C9D8DF0C52FBD889FFFE7BF8E9BAFEC6331B720DF022CC1781B
                  78203549677D6B0D972E6FA3DB6FA1DB4BB1D66B215F2CE09C4554DF5B5F5BC3
                  7ABF8FC9A4C0023C1311157F04F960BC4A3096E04A1FA4BE4269E43D14292CE7
                  05C6C309A6E339D6D7FA9014FCFFE28835D5F84A94BE8B297A35E44B1E42D8AA
                  05C8AF6ADCC3AC205451C529CAA0354C7002B8DB48D342572CAA2F71E0B7C6CE
                  F2BC38BC7FFFFE28495A8F37000030274747B33CA7E3D99C4EBC4F6E108AAEF7
                  52320B344A39D7061A311247328F27C712CFE1A9F21461ADFFCF9503EBA51358
                  D20A0D818515343F0414D1505885079494EC5EE3FCCA8BEF38B254B71BC5A192
                  108D29C83CC55B9188E7E47D38DC9197CFE8BF45DDFB6BBA1E7177A18EEEA8C6
                  571D316BCF11134CA248494CD5F9E79488565D6B5D0D7881E9CCA1C847B8F3E6
                  0BC8970B6C6F5F41AFBB01A9A2A3B169841EC1012B80AB84B061E3D86C30C9E0
                  CFB9C6FB13E70B62F616B330CED0ACAD2713231EC301D0A02C17189F9D60FFFE
                  AB98CF4E0037C5D69AC6C69A8656865994410CC43A02C914CBDCE1F07080575E
                  7E13B7DE7880F9CCC25BCD3530F970F333092149147A6BEB78EAD92770E9CA0E
                  B29686D684448B60F1C50F4D088956D6469A665CC635067AA414201BCAA1A083
                  28C368722C03C85968A5D1E9A4E875BBD08A599232DAA337E02D16F2105556B4
                  BA7C3D4FE039EB6359C030951AA9C18D0D5295CD2BB3E0618F57DB3E328AB8C9
                  0CA0CCF37CE89D9B2DE68B22495A1F8804F48E01E0D2E53FE2FFF6CFFEBE0268
                  9DE5853C34564EBC571B4248C916D9B589E4AA8EDBEA538A7F8BDDB81A318F95
                  7860E8C5AF274EE1EAEFAD1A6C8DAF07AAF1CCB8E1ABEC7F858A55BDA0D5F945
                  F87B4C71815569A88AD013A37138F0F513A80E20027FC157CF253E8F3028153A
                  93D5B870A3B8AEA82C21D8A59AD0EB482801CC94C1607080D36302DC12A6DC43
                  ABDD83561DE8C8008C07D8BBBA7B1237582CCB104D2FC203A95C2699C25BBD7E
                  42F223F22E6CF4DA5083FFC9C3DA1C793EC564728ED3933BD8DF7F0D9DB6C77A
                  5F61BD9FA2D51670BE000953BD4FD6F12D3B1ECDB17FFF04776F1F627836075C
                  5605A158EB2270FE5BAD36AE5DBB84679F7D026B8146CC20A883332593B40CFB
                  2BCC6605CAD2D46F4B85FBACEEBD582656E34B4220D112BD7E868DCD3E767636
                  D1E964DCC56AA8FFD61850106571B1CCA4B02D62291A0E41DCB7958272DCEA8F
                  081A113E0EE5966FD400716756CF81E09CC372349E3CC8F3720E12EE67FEB3BF
                  F541CFFF3B660068F7F62C807169CF0EF31CA3B6A1224955CA432BC11D06A8D2
                  F240E80556621E55E7A73A00D48CA3CD49BA95A7BD124C2A4C3718565453834D
                  738F066C82AAFE8D62A361A82BAA0657AF76B33469FE420F9E0C8C5F5C3BD4D4
                  612CC855532300C460085FFDAE18B61E0E8E3160969042A2952A6805680D2C66
                  732CE6FB383BCB91171374BB5BE8F777D16A5B28D50291AE6B6134024B7C3902
                  EE22AA8BA67E677CF5FCE2CBC68FCDC59BAE0A720E7016A55962B118633239C3
                  707888F3F3BBB0F61CAD56176B6B297A5D05212C5CC86858FC2592B324CECF46
                  D8BF7F84D3A321CADC4307535B8F2851468864DC34D5B874691B57AEEC224924
                  AC2B91E74B14A66459ECD263312F31192F3018CE309BCC19BC8C9E021193AEB6
                  45D0FA03B732A514C85A0936D7BBD8BDB48E8DCD1ED6D77AE8745308E943DB6D
                  558FD10715651F0341BCF47D75D63981591968AB6F78DF38F08D87D884C61153
                  9BEA33D53E2280758167C727A7B7E68BE53CCB5A1F680828AE770C00D79E78DE
                  03C8F7EFDC3E9CCD66A376DB1559AAD9C491041F1A84FAA8423B452561150F5A
                  5352D257ED907000C8355E88E6E1009A81A4A18958032644817A5C1B30D4F71E
                  1AD263AEEABB569B04752B8C2186D0C968000FBEB27A6A4A41A3DE1CBE493C0A
                  012306370ACE368DC3571DD695B1C7A8B35030794732E362775763305C60B138
                  C47239C664728ED97C8A7E7F07FDFE0E3A9D7548C1C49DA64B940FAF0B820CAB
                  8FF4C100505E0056187D46433ECD2364181EDE1AE4CB1906A3234C26A7984C4F
                  319F9FC1BA21F6F65AD8DE4ED0ED1294B2A14B51674A5569410283D3018E0F4E
                  319F2C42BA5F77287CE028C0F1FB269544A793A1DBCE982C55182C170B4C2613
                  0852B046E07C30C6D1E1198E8F07188FE6B065D0558CB94725B32E2AD0D03A0B
                  EB0C922CC3FA461F4F3D7D0D97AE6CB09DBC9650AA969203EA32A9323471CD0F
                  0A1FE1FF4320602395FAF056996C1D51ABF7A95945C67C6D75243EAA4179780F
                  63AD9FBE79FBF6CB93D97CDCEDAF7D3401E0077FE0471C80C5C9C197EF9D9C1D
                  9FB55A6EB9B6A6415271B21B481E9EEA2195EA66AC147E1AD9404C991BAF03BD
                  D383585975EC6C1EC7477E65154111DED0F0FB1B87B0D66D7B9BF548175C5AF9
                  73F527548DC20BBDC9D0FAA1FAF5886F30C1C3993C58AE392869B0B9D142ABA5
                  319B7B4CE773CCE7739C9E3D00511BBBBBD7B1BB771DFDDE16D2A40B25334899
                  F0849A6030D6581F30D028A3C5F53C3536998765FD436703B7835014259C6381
                  94D96C84D3D37DECEFBF01E7E768B53CFA7D8DFE5E0B9B6B1D28690030379F80
                  60C8E2025391C1480F8FB2C851E64B78EB2AD96D01C9E9BCF348920C9016CE01
                  79E1707E3EC168348587C5C9C9310E0F8F30180CB1B37D09ED560F27C703DCBD
                  FB00E3F11CDEC5E7CC9E8ED63B0876110555974170FC711649A2B0BBB789CF7C
                  EFF3E8B4058CE5A949964663CA32857167765716B0D6C2840F690C6722C6B2BE
                  A22D216C7C1F6B80B01A128BA3E4E17D8F3B2666C3D6B9D07ED4F559A9C6EC83
                  22B6F7D65837BE7BF7DE6B004DDAADF607E60000EF2200847D9C2769F7783E29
                  87794E0B67A5212595B725A2534DF504638D19443269E5B6A795F1D9B73EBA8F
                  6F359CAAC3272E0231EF6DBDD76F7DABAF8F6927C8C123A803098134D34CEFD5
                  843425E8C4613A1DE3F8E8550C06FBD858DFC1A5BD27D16E6F20D16D489942C9
                  0442E830332482A63D038211DB8BA594870DD25E16DE9530658EC57282E96484
                  D1E814C3E109968B21D2C4226B01DD9E423F4C644A15948842EA1A8D47633244
                  C40336D616E8F533ACAD772013C987500775DD4010CB973E4C222A9485C7D9F9
                  04F7EF1F232F16D8DF3FC0D1D13196CB25082D5CBBDA0FDA8808A49BD8134075
                  FBBB7878886A4C24087978EF604D016B0A28DD09DC7C5983A23282C816CE13AC
                  0D01C01894254F9F9646421B01691C84741096C5636590C6F3A1AC89BB9C495A
                  B16344D57BBE92DD8247957DA079C7EE998787B330A630B3B2B47322CA95941F
                  680C38AE770C0097AFFF510070FFED7FF3BF1DCC26FAD879775E185C4E24295F
                  95D64D443C3CE570E179BFAA2474D139E663596F01C87C6C2B740D8410157D14
                  64E07D0E220FAD5911364D045A9942961206C30596CB0546C305C897C8B23524
                  BA0DA55A9032E596AC50D510091B4CEAEA77596761AD813139BC2BE051C2BB12
                  B65C22CFC798CFC798CDC6288A2992C4626BAB8D4E47B17E5FE2212887B316F1
                  72AB7B3681604411D46759AD8DCD1E76F636D0E966D5CDCA8A3BCC73600933FE
                  7B59589C9E0C2025B05C2E7076768EF17802C063703EC1DEAEE379F97607F9B2
                  44EEA25B12559D962ACB440C0A0E522A48223863309D4E717A7A8A9DDD1E9C57
                  9CF64719F088DF846E011F7E5B0569BEAD0D0A55326610E411D84A9C8558A32B
                  33BF26C155495CD87A8D321608DC87D821085FC7BC04E1ACB5F97CBE183BE766
                  00CC4FFCF85FFAC01D00E0DD650000806E777B3219F51F789A1DE545F1B4D2A2
                  C336534D8FBCE67750D5B7AF3D34E3267977078E3EC0CDFCCE8B5622F0C7B36A
                  5CC03ACF2ABDF13111DF9C14A61EA500B404B23441964968ED319D1428CB05A6
                  D37B98CD4E20450629330891C07A82141A52F187900A522400827598B530B684
                  2917702E87F7250056D475760E670B68E5D0E908743B6DACAFA561AC39CC4C58
                  2E138864458662DC27F01FB8B88031063AF1D8D8EC63EFD2163636DB903228F1
                  080D411AAC3E14B11381A2B4180CC6582E1728CA028BC512D658E844613C9961
                  999768B53B58DF58C7643AC5225F404A5175D56438A4364C6F56801DF8562E4B
                  83F1688CFDFD037CCF679F09CAD5AE1AF7AE80FD1000F8F09BFADA22C9A2375A
                  066250DC4B3CFF22840F9906FF6E47AEFAF7E66A06ABBA0383AA03514FB7C25A
                  EBE6D3E9F4CC7B3FC307140169AE771D00B6B69F988E87DB7781627FB1C867AD
                  96DA2632AC681B1866BE81923DAA266EFECBDB1F6E7A6C87FFB1C694F7B9384C
                  4AD8981207E04C52ECAE94F0DEB242912FA05582BDED04DB1B2DCC171693E912
                  C62CE05C01EFA6308E501AD6BF738E53651FA9CABEC600842048EDC30C3BCBAB
                  4B69402891A60A9D761B9D7686440BD87201B812CEF301535AC384B901826029
                  33EF191813B12B62B986B60EFDB51EF62E6D6277B78F561B3045EC92F041105A
                  B1BEA1E7A127BB646F3C164409642647582C4B4CE70BACAFAF61636B03C727C7
                  180C47000152EA0A73A2D0D961BE0A4F93FA20A6620C5B721F1D1CC33940C904
                  D67B386BAA790AEF1DACA51AE90F819325EC2C8434905A05238F08045B786938
                  D39054CD4A38E7AB4CA9F9AE47CB3376390E9D2D110D78A9BA18ACF3A531E578
                  32991CE67939C5C71200B6AE2F0E1E6CDDCB8BC3BB7241831DD5BF569A4256F6
                  4BCC95440D6E05A63F8509A8D8A5F26F71B8578AF34FD6298D0FEB43C9B91EF5
                  F389DD60ABC6A0F730C64029151060C3E0922048EF2114C17B160BED7604B254
                  57073D4A7345265F597A9465B8DDC25056E4BB6BC5C32E5232F825251F9444A5
                  41CEDD01988188A05382B7D1BB0E2CE44A7506031F49494051584481588069BC
                  4922B0BEB18E1B4F5EC7CEEE2DECDF9BC2DA12208968C525A485901CA8ACB5B0
                  066CCE21B87D67AD435194984E26D8D8E8A1D76F616DA383D962826E770DADAC
                  0D6781E1708CE9740E2154B59D82A43F83828E90E716C3E10C274767D8D9DD80
                  943A1C42CFBFDBD625809760ACC411105498892494B201C88B78860512574B98
                  87DD2384ABD3FBD80A6F108ABC6FE0053E724838287050A399B5EEFEE1E1F18B
                  82C4C7130084102649BAE3C9441E17A53AF43E7DDA3BD973DE326F4A048FA34A
                  4DB726D130D8195220FA788EF707CA285650C30B3FF33D4485B7CD792A6C24A6
                  83FC791F4021FEBCE4FEBA2DC1AA322A68211ADE9C6192CC07493190804B09DE
                  06675A17A61289204550AF912EF4BE2D48F0E8AA941E3EC865F363081B364C03
                  36281B30D68476988000F3129ACA491E80501E656991E814972E5FC1DEDE251C
                  EDDFE68C8464605AD6AF12B3489964666DC53305C8B3DF623E8773253A9D0C97
                  F6B69024021BEB9BC8B20EF245092908B3E994671F28EA4E0479728860DEC27A
                  16A727E7D8D8E8234992906599954CD67BC09A00980A763326B250CAA1286C30
                  C3091994600DCBB8E79DAB71808737CA6A2748D4BDC3AA4D2D04E337C6BA85B3
                  FEE8F4F4F49610B2C0877817BDEB00F0C4D37FD4FFEA2FFDD99919E8236392FB
                  65998C09BA4BB00D685FAC905D569478AAA1990FF0D81FF9AD1F5538793BDCE2
                  DDE0196FF71CF886A9CC1F633BBE9A7689DFC82C3DE76DF879963102E274B3CA
                  C07CF0DAE3BC98C10334586A1503114098A8045944293626F144D38F46ED5A5D
                  52E1662417E4C000023B22790F38CBDD80D8FF161E288B02CB45096700291403
                  65220E87D385E7898A9CD574F315C2A3D5C990B6D81826CB147676D6D15FCBB0
                  B6B6814467984E9698CFE7B87FEF3E580856425068B5458A2F719A6FADC7E9E9
                  399EB871159D4E06A5129465E0EE132AB3100F965BE700C087DD18FE5C544892
                  8A8395B51C4C391B132B37FFEAD6AF3917086CF295295A22A62E7B2ACAD20E96
                  CBF2E8F8E8F458A71D838F23000040ABBDBD70B675628DBD379FD3B0D7C92EF3
                  C63178A8BFD77CA2CD9B2DB638DFC5EFE3B63D3DE2B3AB3DF8C7BF1E7E0CCD16
                  CF3B7DCF3B7F6D30A420510150080427AAC832E1B56CC89C13B150080F615140
                  B1F967A9785BC791520AF4DECA072F506FC3668F041E0ADA05A828DB91D8521B
                  787BEF609D616158EB02338EA7085D956D44E34D01EF0B2C16050E0FCE70EFDE
                  2146C369B828AAC65D4D99AD595A011464545E082049152E5FDEC1E6D61A5A2D
                  8D341548D30E84ECA2DBED410AF6D01B6EF47818CA5AC4C93FEF1B99440892C6
                  389C9F0DB05C2CE1D187523AF4FD793889338238C301009117604399103F82E6
                  858BD268B472D82F325557F677BD49781FB84842E2966551D8E97CB6D81F8D26
                  F72793D9E4AFFDF4DFFCD0D27FE03D0680B5B5AB8550EB67C6B97BA7A793F35E
                  37F39C9184942F504A1110D7FA7DE4C8EBDF55CADC78912E1E7EBAF8F2012BF4
                  BC77FA79EF63BDF3E17DABDFF91EBF3A1E481F3700B88F160541880F9E2357CD
                  E5FBA0652F83F5990BB434F2ACE9C72F75B8C97D3DCF206AE23CF7CBABD728A6
                  E2DC1767F24C2C47C298ACE7ECA028F38ACA1AFD0A6DE1600C2A6E3BF7D081E1
                  6882A383095E7EE52EBEF6F55771EFDE119C09861F7001048B98435CFC7A08E1
                  9168854E37C3E6661FCF3C77036B6B1D64A964456129595B3F9510A4E05C8ACD
                  AD352489C072E1C28098AFC6787C8557719672767E86D97C0EEF3CB44A43D9C1
                  52EACBE592B118AD90240993B5C244A775DC1AB4D6F04DEF64183CAA69E76F77
                  39D41D808733BDFA7F09F3793E383D3B7FFDCD37DF7C5DEB64FABE37F25BACF7
                  14000094ADD6EE703898DC7F70FFE8DEB5EB97CF35C97510253599316E266A48
                  7035E8B20F05016A1CE2068FFA1D6F565F6DD0B7ABEF1BD84AB8C53E78308869
                  DDA37E6F45356EACB77B8C146FD8305C524B9BF34675DED6B561F5FFA86E68C9
                  32CCF0CE318D542AE660B9A82423AAE00158164989DD054245DD661D30058091
                  F48ADE1AFAE13690BE3C5CD00C309530877302B6044C497095CB31A3F665E9F1
                  DAAB6FE29BDFB885975FBE87BBF7CEB15850D59284003B3C7B4E9B236D97878F
                  0C9400D6D7FB78F2C96B78EEB9A7D1EE24908A8151C006E55E16A0D55AA3D769
                  616F67136BBD1E600B14B9AD0C616A865D2C630CC6931CC7C7C7D8DEDE4492A6
                  B096301ECF70707088F1780C0F879D9D6DECEE6E079C0B709E478E1D4CE87E08
                  96B8F302DE47365FDC758FDABFBCE79B0362DE058970118D6518B09DCCE6C7C3
                  E1F8956FBDF4F24D008BF7BD79DF62BDA700F0E9CFFE07F8E55FFC8F97272777
                  4E06C3F2F565817F8384E848219238D05171BC2FA09CDE7B664AC5BEE7850196
                  4FD26A1E58EFEBF4B491D4BCDD77E3BD64004DEA343540A038BC53BF4C3572CC
                  72970E1E04513D20112FF8BAE0F2F5EDD2D4298C5A0CF1D68F1B922253B31A76
                  0988BFE7D4D43A3EFCDE5BB63F370844190F6B08A6E4B169EF7C90552758AB30
                  9D1538391DE3FC7C86B204B44A012F83A18881F7B50C1923E875ABD807BCA3D5
                  4AB1B5BD0EC0C2BAA2528112413B2F7A3E0849C8B20C7B7BBB58CC8F90E72C59
                  2EA568A4E24195C914D0A9C4FDFB076877BA301670D6E1DEBD07B8FFE00166B3
                  295A598A4EBB072934EB21049527B6E9A6F0B91828579C3280C03B6806FFBA9C
                  5ADD67D6058AB4601D0BEF852F4B3B9B4E17F7E6F3E5E178329BFE8DBFF9F73E
                  F4D3F25E3300ACAF5FCD85EC9C49B5FEDAF9F9FC7C67073BAD4CB588ED73AB16
                  462D8B45D56D02209ADAD5BBFFA1F5C96A0136D7E38A55553DCC43E40FBD0E75
                  D6F2F0B054ECB8F05870D854A80389AFC45962ADDDDCA0F1F7D4D578FD1E064A
                  AD73015BE036A3319E790524604A363D35D6730660B8E7EFA3A7820540042D33
                  B03624D86A4D0433D908F27936351552ADEC95581A186B60C39C82140AB06555
                  7A44C65EEC3A4941686529AE5FBF8683FD0166936575D8005F516B63C965ADC7
                  F1F129944A309D2C010FECEF1FE2F4EC0C6559A2D7EB606B3C03139C58FB5F29
                  C10AC92272FE6BE0F091BB862EBE6B2B2F7D95D1C500C559A074B3C9E274349A
                  BC3299CC0E9CF31FFAED0FBC8F0070E9D2A7CCC1C1CBA334D3B7F60F7FE3B4D7
                  EF5CCD32DDF1E452C0D4B77DDCB824AA2D16472ADF2D13F0C358EF5422BCBBF5
                  113CD628CA19FF5EFDD1C896D00C06E14B11E9D66C711DBD097814A3160DE557
                  DCC5F992465613CA3550830E1BEDBE5C00F998E4E52CC11AC14100803102A5B1
                  1C008C8729B82BE0BD87330EC67808A9D0EBADA3DBED214952661A3A5759BF51
                  D018B4965378C73976854538E791E705A6D329C6E331B6B7D6E021613C0BA1B0
                  82102A997476624A70FDDA35BCF8CDD73192D3F07C42265795400429158CB118
                  8F67B0E6014E8F8700094C2633E4790E80959D468309E01995578AA0344F4A06
                  87B53A18C886304C537802ABF4E2D583CE1F9CFAC74C8D3D9287C3C9E1E9C9D9
                  2BA727E7876B6B9B1F5802FC51EB3D07802B4FFC61F7D20BFFE725F0FCD1BFF8
                  17FFFAE8DAF5DE59A743FD84448A28FDD590CA261F8C35C31CB5AFECC5DEFE50
                  3D7C7069F5C3BFF3CF68FEAC4F6E621183A50B1C8A9A1045889A13F5F3763EF6
                  8CF86B3C28007F8D3D079E787414ECB3424DC123DB549B565E0838BC414D2328
                  30EA5D9636A4F302C6108C11B0CEA3B45CE31BC3B73DB7C52CA40835B17328CA
                  02AD56079D2EFB0E0A3985B5A6B2998BE21B45CE76D93E64428CDC132C24F265
                  89D3E353DCBA750BBB3B3F04458ABB0E417588C0AD474381329D686C6E6D6073
                  731DA3D114D3E91CCE300EE02AA10E82D409AC5DC21A60325E623AC9E13DB13D
                  991770CE603E5B623C994127299254402A96BE4FB480563AD882A946BFBF512F
                  927BA804A8B773788DBD877336A80957D25FD6383B198DC6B7E6F3C5BDE97436
                  FAE9FFEC6F7C60F9AF47ADF71C00006073F3090B60D06E5DFD6D9864A35896DB
                  126E9D02938B516AF67AE7280D5412DA5E3CA2B5F7BB79859B5DD43264112546
                  0C96818ACA1994A8A6C538958DFA06BECA36E3088A03E02B213B1F948381284B
                  16F9E6FCF5357BCD3957F91356709755705606BF448FBCB4B08E50147CD3C796
                  585198500B7390B6C6418812DBDB9BB87A7517E3C91427C743B4DB0AAD7606E7
                  3C66B305B448A0450267837401A2D18C843516E3F114FB0F0EB99E57813C14E5
                  B305AA4E84290D4A5120CB325CBF7119A3C918F3C51CB036049CD8E960B35512
                  095CA582249940E5B83C70CEC1A1C0E07C803B776EE3D9676FA0D3E55906F60F
                  60E9F044ABE0D7A759EC359A79546E551174ADCBAF0A48169C89707B11002900
                  765996E6703A9D7DC3187B902FCBC792FE03EF330048993800F38D8D276E2E16
                  A7F7DA997FBA9DB5B6896C2B1A4A5093ADD8200A2194B96FD5BD8B52569FE02B
                  FB31ADD006F3B2FE8CA72A1D6FAACE585BEDD1BA4D57D14F6BB9341FF90A2272
                  FF5DA85B453599264450408C9C01223ECC4135D85A827502A52198D2C3944059
                  0AE4B9455106D3544BA115E6E17D04F37CC5A717DEA0D7EF606B7B0D6BEB6D00
                  0ED7AE3D85246961389CE0EEDD078090284BCBEEBA248232AFAF70803C2F319B
                  2E301E4FB0B6DEE6E19F4A0F31044ECFF3FE4599A39D3168D85F6B431C78B8DC
                  82BC04773B42421EC689054567A4981585D72E8C67976689C1E014CE5F459A2A
                  2E0364F00D502A70FF159464835915948C8590A13C100D7FB0D841127509105A
                  7FDC0111AE28ED743C9EDD1F8D262F596387007D28B3FF8F5AEF2B00EC5EFAA3
                  1E40F94BFFF24F3F38393CBFD56DC967E1C45581B2E57C5E014EB1D64225B3EC
                  2BB02982CD8F42D63E3A84E093B52AF26C78615CC37ABB22D678BE81AD8B8121
                  A6910DE35270FDCFFB4B54873E1AA90AE1AB1BAAD265AC5E740FE7A3DD974359
                  02CBDC613C2E309B592CE740BEF4582E0BAE9343DD21004825A093A824CC4FC5
                  C2C3B90269A6B0B1D9C5DEA50DACAFF7F0CCD34F02A4F0E0C1314E4E4EB15C18
                  26EE08B9D2A5E0F90282310E8B3CC7E9D9193A3D26011149EEC5BBFA79F3CC40
                  09E70DD6373AE8AF7790B51416CBBC527CAA5BCFB12EAFF90EB50C978390CC36
                  ECF5DB68B5359254204925AB0749591981F0A1AF2DC264CC0264330BB8D00D40
                  DDF28D3C0B7E6FA4F17931383F1FBC7E7A7A76AB2CEC4C08F5A1A8FF3C6ABDAF
                  0010D7F5ABDF7BF6E66B5FBCB5D157B74D49CFA549B24D64858709A38D3E4C4A
                  A152726DF6E5AB57E213D80A5C5DEF2524BDBFD0156BDF8806F32CBDE31BDF79
                  04BC2BB4AFD000BE5812CC3632804A6191D81A4C86435FB9D74A9ED853520454
                  9CC92B3C71E7A1540A670D96CB02B3598ED138C7D1F1046767738C4705E63383
                  C5BC409E2F83D7A144A259C6ABBFD6469626C1334F424882753C65D7EBB770ED
                  FA2EE025AE5EDD4159028BE5126B6B1D2CE6672021E18364363C42DFDD73D0F3
                  6C977E7C728C2BD7B6D06A6780642355DF543006E043ABB0DD49B0BEDE466FAD
                  85E97481B288609C0834640F20B0FDE2DBEC43ED2E1CB296C2E656174F3E7505
                  4F3C7505FDB55608000A5A69BEF1A50A69BF0A56E1AA92748B63C94234592DCD
                  12AFDE5761F4D78368619D3B38393EF9D6C1C1E10980F22FFEF4DF7C6C27E403
                  0580DDDDCF8C099B374D3979753CCE3FAB94B89EB4748B6D3C5C45BE0189D5C6
                  13F9CA0264F5E0343F77B155F57ED75B3301DFFDB17E67BAEFEA63A6B7F8FFD5
                  EF6B4221D192BB4AEB1DF7D69DE55AD55A3EF0CE02C606BA6920BA9960671E2F
                  C23879494450E1800AE1A01463023CAACAAE3D9001AF012A428B102D8CC7231C
                  1E0EB17F7082C3C3210E0E47383B9B603C5A623E2B319F1708E302504AA2D54A
                  D0EFB5B1BEDE41BFDFC1C6461F1B9B6BE8AD75606C090F872C53B87C651B4248
                  B4DB12F9D2A3DFCFB0B9B58683C32348C5364F9C7E47F50C0A525F4051389C9E
                  9C21CF0B3897424A82D212D6052DBEEAED66EF07A50536B77AB8B4B785C1F918
                  CB6511C43A64C84E059C8FBA060412802D4B802CB636D670FDFA1E9E7EF63A9E
                  FBD40D3CF7FC53E8B434FB2A08119C7B1348A1AAD9062145C800D800364E57D6
                  326C173A30618F34006F379F2F0F47A3F1CB070747BFB3982FC7F81027FF1EB5
                  3E50000060AFDFF8DE93D393CFBF325FCEBF2E153DB99DA64F9000EF286F619D
                  023911ACA77990820F9E68A0DB171D7D015054E0158DAF01A2F2F0C3EB1107FD
                  ADCE5FFCF45B448055E2C6C35F50F7ED2F7622F8F658F95F8A9661918A5A331F
                  EB949F51EC38BF1E6F776EBB7946D7AD0F9F279486DB6ECE72DA6A433F3B1AE2
                  D69D430F2D25AC723CF0E358B0C2BB7ACEDD3A09120A0405EF154A4B78707086
                  9B37EFE0E6CDBBB873E70047C7634CA716F9C2A20C8FA52C1C94D430A5812082
                  D60AE7D91CEAC129DAED14DBDBEBB87A6D0F4F3E7D1D59AAE1C9C203D0090B93
                  5A9B0320A4A9C0FA7A1759AAB198DBD0AD90ECAD67E325C2598A292D86830926
                  E305FABD0E544B410A0D2503E1D907EC29780D801CB6B6D7F0D4D3D730184E90
                  2F0ED96EDDBBEABDF3BE00C8424801AD0554A6B0B3B383EFF9ECF3F8CC679FC7
                  D34F5FC7C65617EDB68696A15E07DBC7255A43091D6AFDF0A14448FF99332064
                  341661CBB348938E9120322D053B340F86C3D10B776EDFFFF26030BE0D368078
                  ACF9F1070A001B7B7F085FFC8DBF31BB75BBBC9726EEC5E95CFFF09AD57B0A2E
                  634B13466B23C1850D2D430FB4C91508086C7D607DA5A956F54C99F706BC45E6
                  50A1E72B81E05154DDFA257D3F7945CD946BA8F7846782B0E9EA76733DF0C2AD
                  B7B0E95CC5E50D6873A8F1C137BDB59EB5FB3C0B7B70AB2D7C9D17284B87B2B4
                  7096F10217C0AF7A90243C45E100C5FC7421008104CEFB8A1B10C53D480838EB
                  B158E6381F2EF03B2FBC8E9B37EFE3FEBD639C9D4E309B59942577007C682BF2
                  5C7D00E23C038336F0F917CB0596B9C33C372099E2DAD54B48D2D027079731CE
                  E7F04E426B816EB785562BC3623EAB0A188A84A6086C8609A5E97881F17086DD
                  ED2D74DB49F0733035C616710CEB90661AEB6B3DF86B844598441C0CA6582C4A
                  94C6B1139210904A224D15BABD16B6B736F0B9CF7D06CF3DF734AE5EBF84CDAD
                  35A489045108A2E17D1342424B19ACBBC3E12705A164CD0D906CB22283627545
                  F68A2460CF3A824A715692E7E67C31CF6F9E9E9CBF912FCBF15FFED9FFEB632F
                  8E3F680680673EF543C5177EFB1F9F499DDD9A2DE9F5A290CF522295142A21B8
                  CA704208570D3E50E31486E351FDAD3A4C0F9D3ABA70E09AABA6B43E8A8BBFFA
                  B33EC0936DB4CDE96DA71F6B2A2FC57A2F7C7F8CFEDE0308EDB698DABB2A0084
                  206081A2F4D58DCFE8BF455170BFDDD9183C228F20B60A82C0A88C03460E5A6B
                  185B83B308B71291822D08C3E10C874743DCBD7F8AAF7EED55ECEF9F63385C60
                  B970B026CE0988EA9D22C142998224A2AD8BB53CD168BD85B14BE4A58556FBC8
                  D23636B7BB68B51484A04017E6FA416B814EA785763BC368B4802979E086CD4E
                  1AC12C3011F3A5C5683843BE64510E499C7E3733650AAD262905B22C855209D8
                  F748E2F8F81CC3D114F3C5126559224B155AED14FD7E1B5B5BEBB876ED327ECF
                  EFF92CF6F6B6D0EDB6A01209B1321E5DD5EB50B21E6BAEDC99A5A84C7E85F0F5
                  8DBF5216D6DC0F8AD2D51ECBF1647A67329DBD71763EDA2F0ABBFC003BF55DAF
                  0F1C00B677FF87FE9FFC377F6CEEECC9C1B2387B61BEB03FA884EC08E513226E
                  EBF0AC3B00B0FF9C88C613BE79E01BCCA99573D528132AB6DC854CA09E3A7A6F
                  EBED5A91CD590000959E41F56D71EA6BB504A85B3C51125DAC0481A81FC7EA3C
                  F587F1718E5EC05A6EB9E5A5476998731F8342E91CF24589082495856918AE72
                  CBC07B079DE81070393024491A7AFB00D9306B2E12789F623259E2F6ED23BCF4
                  AD37F1C69B87B875EB10F385833171B845236AFD555BD901D65808CD14598B30
                  CACA3A6630B6C474B6C4BDBB87E8F57A48D2045996B1ABB0B7802F01F2505AA2
                  DD49D1EBB5717A36813126781C467F457EBF794640C03A603018633ECFE1BD60
                  245E17A11C0A1D09C12938114129812C4DD16AB5B0B6B68EF3C10883C108A3C9
                  04CB658E6E27C1FAFA1AB6B737B0BBBB852B577671E9D20EB416411781EBAA3A
                  CF0CFC0908165BA5A06B40B2F61CAC5AAC8F909C0F0356D5AC87078C718E20CE
                  8F0E4F5E3A3B3DBF559676F0533FF3371F1BF2DF5C1F380000C0EFFF03FFE3E5
                  37BFF18B478373FAEA70B8FFDF4F13B19324695B6BAF602D0AB38441092101AD
                  5523B58B07A946469AD2487C704448B71BC61F1749048FE4B7BFF7F59690414C
                  406242EF1DA79E21136870F68288235B993B572BC4C612C1930B409EA9442B9D
                  2714D6C15A817269604C90C57209CA22884F581F90F002C632A6E09C435E7A68
                  2151967114D5410AE29F5F5806A13205633C9426C072BD094A21651BA3A1C1AB
                  AFEEE3AB5F7D152FBE740BC35189D90C705E42C8043ADC9EE5B26CB475016B1D
                  129D20F6B023FEC12AC05172DC613ECFF1D24BAFA3DDEE607DAD8F4EBB0D0F83
                  D2E6F0DE428814DD5E86276E5CC1830767C8C956D08A75163606E390B1586BF1
                  C6ADBBB8F1E4553CF3DC75743A2D4865511473269D81DB73BC47F8F5D089407F
                  AD8D9D9D75DC707B2C621228CF69A278E0A7DB46B7D741A793C13B03E7D86E4C
                  526D2C1237036312AC6654F94EC6C0B042FE89836F8D0C20B6386BD14FEF1C95
                  65EE0ECF4F475F3C3C387DB328DDECC33897EF667D28010080236A2DFA6B4FDC
                  C967C32F2D16F98616BE253C362511D234837014441FF9203CA491886669100F
                  7AF8A846391F8501F8C6C7E3640F3C2AE58F59401D3ABCA7EAE6E7BA906F0663
                  0D6F3C1B66F93C60C3BCBC75046B13E44B072003090D53807BEFF312CBBC409E
                  17288A02D65A48C96F9B940A59D6426182B1AA50A030AE0BE79065EDC0FE1370
                  56A0F4166912D481BDC67462F1AD976EE34B5F7909AFBC720FC7C75338DF8292
                  2D58C71A7CB9CD4161C84649C529BFE3035EDA9C012E111C77E33D197ADBCE7A
                  3808CCA639EEDF3B44A7D3829097D1EDA5F02E0F079603E9EEDE1692444188BC
                  9E21216E85F2D710849090A4B198CF301C4E301ECDD0E930F9C683E9BB9C9A6B
                  80D80C5448020907212C9254A0AD34A4CE2095845202AD568624D1D5608F94EC
                  DE2CA33D38B1B7055F00A23AF0AE121FBDB84D560340BD6F2E02CB21B371B434
                  C61F3E3838FDFA74B67C6D32999F01782CB4DF47AD0F25005CBEFCEFE1B7BFF0
                  B306C0F0F6E0D51726E3E5338994BBDD56D2F27EDE72CED4A86754A479683DEA
                  FEBDF8776A7C752C15565FE40F32EFFF96ABA157B08A55042247031CA824A788
                  2DB58D35902A201DDCD6E6B69567869D710463059CD13096309B96180E86189C
                  4D31182E305F1415E9A628CB2014C9E0539AA6E876BBD8DCDC40BB95406BDEEC
                  40090F0363014D0280827751A453C23981F9CCE2F878846FFCCE6BB875EB10C3
                  E112C628106978A6A3561F492AB0BDB98E2C4D2185847340593A1C1C1CC3B21E
                  180449BE6F5D9D360BA141C4EE3FA72743F4FBA7D8DC5C43AFD70F04A5488B05
                  DAED16D6D7FB582E2C66F302D61930733410A01C4795D855393B1DE2E0E0085B
                  DB5D747B2948B0969F20F61610C4AF914E98A320A583540E2AE14C486B01A515
                  D2944D42F971B0518AA8667A6A7BB36A37864C50545CFE8B2DDF7819D563D617
                  B9AD148070EFBCB30EF3B2B0FB0F1E1C7E7E3A9D1FE679B1FC89FFE4AF7D64CC
                  980F2B03C0B5EBDFE701CCDFBCF9C537A6D3F1B7DA99BC9277E456AA75CBDA25
                  BC42306E8863930F47C687576C6C3F6298A7594520740DDEA9EFF78156037B88
                  B64D680298172BC56015EA1C846F887E80601DB7DF9C97309690E7C0746C301C
                  E538391AE1E8708093A32186A305964B83BC2851966C8C0984FEBE9221007470
                  FD9AC7CECE3A7ABD0C59C65AF500D7FBD211A4608B73561656284A8FE1F90C6F
                  DCDCC72BAFDCC5E9E914790E10A5F05EF100113CA40292446373B38B1B372EA3
                  DDCA2049C05984CE448ED17886A2082973247D85F6276BDA71009A8CE7383B1D
                  61349A61EF522FDCA441395A10B24C6377670B93F1128B4581D21990502BFBC4
                  878E0791C4D9D9000F1E1CE09967AF60636B0D20CE0018A790210048244A85DE
                  3D8B9D0AE9C39F8092F15D6A9AC286B98008D83EB2B26CDEE65861605625ED23
                  F6611CDD8EFFE641CBB2B047E3F1ECD59BAFBFF98DA2304353FAC746FB7DD4FA
                  1003C01FF100CC2FFFE24F1D1D3E18BE349D2EAF29593C796927D97690825566
                  6BDA639DCE376EF5152A261006DC8138BFBD0210D629BF0F6DA37A96FEE117FF
                  03AF0A806C46FC47B724AB160F7850256ABCC7915A6300E3148C95582E81D1A8
                  C4DD3B6778F3CD431C1D0C707636C16434C76C56A2283C4AC3E583AF066118E1
                  D64A214D27988E0BCC9FCC71E5CA16B636BB68B5151018753EF22DC28C0191C6
                  746EF0E0E00CAFBE7A0707FB039446002281901AC610E01D1C19B45289EDAD2E
                  9E7CF20A9E7EFA2AD284F11B6781A260518DDBB7EFE3F864807C514028CD9380
                  AE7E3DD82158A0284ACCA6738C875314B94192B11B1000EE9B93C4DEE51D9C9C
                  0E30188EE04B176ECA28E6C5A06AF4751C0E46383C38C4643281141BA094814A
                  56569220700090528600C09382D18A5C00E1B1326E21831A0FCBAA8530FE08E1
                  8E476C8C30461D4BFD7AD8871FE9C341003C04E4BD17A365BEBC75E7EEFE57CF
                  CFC7F701E47FF143D6FC7BA7F5A10580B8BEEF7BFFE070313D7A653A7A6DB7C8
                  674FF43A7A2BEBB7B649060741CF408DAFC83F8F20D334FF4E0D95150AD255E1
                  A55DFD9E8F0207B8B82E069C08FA846E8007B49270F0308EE09C82F71ADE49CC
                  6616E7E70B1C1E4D70FFDE395E7F6D1F376FDEC774BC84290140F22DCBE57C9D
                  57101F6AE6985B909F61703EC56432C1643CC68D1B7BB874791DDD9EE294DFB3
                  CA8D8303A05196C0E9C9046FDCDCC7ABAFDEC332F76C6E8160492600080FAD1C
                  B6B67A78FAD9ABF89ECF3C8DF5F50EE0D940138E501AA0D5790A2499866C8ECE
                  511616D032B4065955979C8790FCDA2C16054E4FCF319DEC61AFDB650E84B79C
                  4E4B8FDD9D356C6C747174ACB1C88B8ACE4C2B59161FDAC56289C16088C3A303
                  3CFBFC1EDA1DCD16880E2027E1BD8410CC14945A4229765ED291AE2B1478C65F
                  D46EC5E069D515E07625AB6C948071CE3F960022CEB93471A1E6258595BDE2AC
                  5FCCE7F9FE783CFFC6CB2FDFFCB556D61D200A387E84EB430F0000DCCEEEF383
                  3C1FBEE2CCE9EEC9F9FCA9ABDDB42FA54F0579F254820340F3E5A85FD85A0D06
                  4043CAA22210F1AB8DD5348C2EBEC2E11FDE66ECF03DAE90D037EAB9304842A2
                  9178C48D140217011012B62478A700B4E05C8AF3B3196EBE798CDBB78F71E7CE
                  291E3C38C7D9C90CA3F1122C5F2F0170CBCB7B511B4B7A84C117AE7501B60F33
                  A6C0C1FE198C59A2347390BC864EF732AC3101A0032C59789F61325EE2E86880
                  8383330C863390D03C0F100D48A484B30536D6DAB872750B376EEC617BA70FEF
                  73986209C081A480F484B5F50E2E5FD9C46CBE40BE2C717E36E5C71F5839D4D0
                  BD130230A6C4783CC16432C7DEA53548A15875C83B102CDA9D046B6B6DF47A19
                  C6B339F2D24292E0D7B2F24710703020C19A7C8BE51CCE3BEE2E110047909430
                  1E439C31692590243CA0A39466792F62FAA04C3407D6C09F168D91E198C98848
                  656FB69B7D90BAA7476C3C8AD841E061D48DADA08F21512CDDFE7832FDEAC9F1
                  F9D766D3C5A1A0E4233FFCC06308003B57FE6DBCF8F5FFE722CD360EF2BC7C65
                  389DBDBC53E84B89305B42A89478067325AE7AC4FAB8FE6494AEA246CA5FC959
                  AD4C12C5F6CA5B1CF447BD41EFB056A7B6A8F173622612A37D080A8D2050C5FC
                  F03398BEABE17D86652E717EBEC04B2FDDC78B2FDDC1FDFB031C9F4C301CE6C8
                  1780B5BAE2A93335184CD3A528D219DA8CCE87128AFF24221863B098E7984E67
                  98CFE6D5608B73168E0001C12293930506832946C339F2DCC1435707969F11A3
                  FBDDDE16B6B7D7B0B1D183D6847C61589F2FB63B058184416FAD85F58D0E3A9D
                  14C3C1AC162001D572E3D183000E655962B158A22C0C840A287B785DD354A2D7
                  6BA1DBCB909C09E4A541D495882D5422205140D66A6167670D5B5B6BE8B45B48
                  B4E6D7C3B12722BF05BE9A17505A056E80A8987A952E4245DE0A965C519188E9
                  94A1EF1FF69B6FFEF1769853A38CAD761281ADB4C5B2288B07CB65F1E2F960F8
                  5A5194939FFC4BFFE58772FEDEEB7A1C1900BEF707FE83F2D77FF967867E6CDE
                  3C3F3FF9DA7C299F25A153AD8C16C20A50740B8AE40D5F6501718A9085308290
                  65750C1F958E093470F877BDDEB52649B53F42CAD77C1CD5E66DCE2744BB54C6
                  2B98D89320CF250E8FE678F5D5037CE5ABAFE3E61B47180C73CCE70E6529E01D
                  D7D7A4E2C166F5DF98C6233C4B116EC46AF69F00A104DAAD0CBD5E1BBD6E0759
                  9AD60F931C8F147B36ED984C17180D6798CE72184B902A6C01AA99840E16AD56
                  8A6EB78D2C4B0209A78E708CE7109CCBD16E2BACF5DBE8745B2C456E7C63C88D
                  AA561E51203CD912799EC3941689E4DB35F2069412E8F632F4FB6DA4A9C464B6
                  AC3A2B4400298F5696607DBD874B97D7F0EC7357F1D453D7D1EBB6A1131126A9
                  D83109F010C4E58752224CEC05015141958C17519C3740C3E732927F1A377EC8
                  325765E21FDDB17A2BC779E2C35F5A47278B45F1F27C99BFFA60FF68FF27FFD2
                  CF3D16B9AF77B31E4B000080DD4BDFB3284C7EA067E32F0FC6E3CF29A9D7A5B0
                  6D41B6E591D7B6D2CE054349867B9C8B4D94201CB9325C73B1AFDA349778772B
                  32B0DE6E5D640236784AF10B2EFED4C6BF892A68316F5EA32C348E8F9778E9C5
                  FBF8C2175EC42BAFEC633A2318A7E17D0AF24104C359781BC1CED0F20A8A4A80
                  80241E61E564C9C0C3422AA0D552D8BBB48627AE6FE3DAF51D5CDADBA877A107
                  837ACE0020CCA70B8CC73366D241840C2332125DE88533C0282A54DF87D6A682
                  778C0378F2B0A6409AB4D1EDB59836AB24CA32B4EFC2BB22222928A80797A561
                  B69F63810E11D873D6B24D59B797616DBD832CD38037815DC82DBB2CD3D8DB5D
                  C7534F5DC1F77CF6193CFFFC13B8746913EDB6AA7603BF3841B32F0480389F1F
                  D57A280EEA900F6DBFC8DD08974F95F5D51FABFB26B8F6D61B6A758F86CA33B6
                  0A590391F5CFBD178BE5B2BC757E36FAC2F9E9E8D6BDBB071F19E9E751EBB105
                  804F7FCFFFCAFEEAAFFFD5F1E5EB3FF8EAAFFCD23FF8857FE77FF0A9A4DB495A
                  D6B9279C5920497C85BCB297BC0BA3A86C1699E7059244D724A00818FAD85A0A
                  1F141D70DEA2A5E8E93D5CF78F5E8447FFEC3A5034011F11EA5AC09384A40ECE
                  CF4AFCE6AF7F135FFAF26BB8737788F942C2F90C1E2A8EBE40920788DD75A404
                  D24CC23A83E53207BC8452097492A22C734EBF61D97073BD83A79FBE8427AEEF
                  607BBB875E3F43920A3E3C8D0CCA39C096C064B6C064B6405E5808D2ACE3EF79
                  E6DE07D186A82EDCB4B58ADE03CEF1C42282BE0091835602AD568AAC9562BE30
                  8D3AD943271AC6D46C41E74A76E10DDD1EEF1C2C2C94E6819BB5F50E7676D7D1
                  5FCFA04F2CA4043AED043BDB9BB871E32ABEFF073E8BA79EBA86AB5777B0BEDE
                  02A88477863323DF04951D04B92AC070005081188410605D7DA347243F96597E
                  750734D5962FEC82F0679C07D03CA7E10013B4FE9DE32E95879F18636EDEBC79
                  F7975F7FFDF66F1D1C1C3DF8AB7FEDFFF6B1DDFEC0630C00613900E74F3DFD83
                  AFDFBDFBE05BCB395DDEDBCDFA2AE9AC432E61C086100CBEF02D20C35C75AA5B
                  2C1E59B1AFE2E10FB24E5507E16D967FD4A17D3FF1205A9FC7AA8FEBDC5A0632
                  D07F21AA43CDCA3609F222C1BFF8855FC60BBF731FF71F8C9966EB5470EF0DF5
                  312C400EAD3661637D1D1B1B7D74BA6D9020CC66330C87638C4613CC67E3C035
                  F7D8DA5AC7A5CB9BD8DB5DC7DE6E1FEBEB1D74DA124A47028F0B8F9C1D7A4808
                  18E79097258AB2847116108A51756B81D037276F4190288A1279BE4459166865
                  B2D2E71752C00B62479CD2C24B0B2905BABD36BADD1606C309A2BC5694158F8A
                  452CA9CD0CBC0A4B91A1A5A92588805EAF85EDED356C6E74A0A4C7DEA5357CF6
                  B39FC6A73FF52CAE5EDDC3F6CE3AF6F636D06A494855404ABF7229443E22BFFD
                  4CBE12911528F8F6AFD488296201784456F7562B5C06D1BBA0F139671D8CC983
                  3E80A8B40D0529289DCE97B9BD777C74F6A5FBF7F6FF6559140704CA1FEBE97B
                  17EBB106803FF8077ECA0330BFF22BFFF9E19BAF1DBE3C9BFB6BF3055DE92759
                  CFBB523625C1D8435D04402A1C3011EDA9223538A66ACD1BF92368FBF926E32F
                  D48240E39668E0112155B65660362BF1C61B0778E1857BD83F9C62BE6040D03A
                  196E4F0F04447BAD9FE2CAD55D6C6EF5D1EB7590A61A42082C163D747B29D24C
                  E0ECC4A2280B6C6EADE3CA955D5CBEBC85CDCD0E3A1D85568BA0123E64CD34B6
                  0A5C8E82B25043963A08867A4B61A22DCAB60BCCA70B4C2773144509213A0107
                  A8CB31EB3C208213B410AC92A365E03F04308D6AA7601F8437E3618FCF5F0896
                  129392C9375A09ACF53B78EAC9AB20015CBD7A09CF3DF7149E78E22A3636BAE8
                  7633F47A1A42580026D4F1B222593509575E50D546A448590E0961A4EB3E9ACB
                  71F1FFE9EDB3CCC63E89D66E68600542EAB234FE68B1285E1C0C46BF7574787A
                  DB7B2CA5483FD29EFFA3D6E3CE000000CF3CF383837BB7BFFEBAB1D3CB93997B
                  A2DD49F7942A7A10A6CAB59CF7505204108627CBA4548178D7ACEDEAF5A80EEB
                  E35BCDC8DFD8080FBDE19C052C97168747637CE94BDFC2FDFD11665346F93D74
                  48FB3D0816527AB45A12D7AF6FE3E967AFA2D76B436BC9B79727B4DA0A3A0194
                  0694F298CF67B8FEC41E2E5DDAC6D6660FDD8E864A1C9462AD7D1F6E7E16F808
                  9D084F6162301EE25A939F5FC16660E5BEF86CBAC07834C362BE44E4B747524C
                  74CD6DBE0E149487BD677C400400CDF91AC215824D359284F5F5A54460E6B189
                  31114149A0D7CDF0D4535771E5DA0E7677B7B1B3B3C5A2212D85764B43295701
                  76F1308BC6E3A800E5304F50B128443CF8CD432C1E11C8DFE6FD7FCBCFD76CD0
                  2818139BA15225F96C3C7F73389C7CFDF0F0F41B45E14600DC9FFF89BFF211ED
                  DDB75E1F490078E289FFC9E2F3BFFE97EF1D1E7CED9BA3D1786FAD9FDE68B7FD
                  B3928A04143CE7C8F07B115C68C88B305883D569AAB81A4CABF7D6EA7F7F7461
                  7F6193C4765CFD2882A6BF209812188D73DCB97382AF7CF5554CE625AC4B5931
                  B7DA2CECD597A6023B3B5D7CF6B34F6273BB07AD259C77284C81B23048058164
                  0B2A2174BA098A7C899DDD6DF47B2D642D09A58124A100E4193883E060A32BEA
                  ACF3E0D97D69AB61AC1800A261860FBA040854DBD97489D16082C978CED2DE52
                  02E4608C09809D84B11C929DF33086CD3263C3C4878309872004C275789228A4
                  190B6C2AEDC3E1F501A1175CF32709DAED6D24598A6EBF83562B419A4AA48940
                  A229044EC13C02D45DA2386443E1FDF18D5BB8CA02AAB1F2F8C68A9ABAB1B2D7
                  DE1AE5AFF751139FAA1ADA8DAF15DE7BB252A4E3C57CF4E283FB47DFB87BE7E0
                  FE8FFDF85FF958EBFEE6FA48020000FCBE3FF0D3837FF28FFED84B8214DDBF7F
                  7EE9896B59BBD5D67B52162DEB162019DB66DC82514AC259174631812A0DAB6E
                  B8FACD5E1D2F7AEB83FDD640CEDBAF9A0110B909F54F21DFDC04FCFBE78B02FB
                  0703BCF2EA21DEBCB34069048C0558A883E9A9C62CA09447B7D7C2B5EB7B78EE
                  B96B5816633857C23A07E92C72970360F6DA5A9F6B6CC0A3DDCA20248358C658
                  EE6F3748548E0864D9B60B41B0C35807A10C2001A11847B0B68010095B690755
                  222D251B80941EE7E753DCB97384FE5A17D7AE6DB2B51728B40C43FA4F0A6559
                  603A9D63B158065310AAD8DB3270FEADB5502AC1E6E61A3636FA485205ADEBC9
                  D0444BE82481D6ACB4AB138DB49520C9088976481287440B0861214854DA7C51
                  D05350E3CE258400506BA455194E3CE04D9199AAC549F59F2B937C8F62993E1C
                  24985750FB38085246C9D6C12B2FBFFECF8E8ECEFEC5CD9B77BEFE1FFDD85F19
                  7E5467EEDDAC8F2C0000C0CEEE53B3E9E4E8CDC1D9F9BF1A0DDC250125D2162E
                  91B08920EE7D53459CF04D0D8ED0FE8A2C0C5FBF41A18FFCC1B0007A17FFECF0
                  A81B8156BE9F37CA6291E3F46C8483C33394066C63E565C812241C8900CC4968
                  9DA2D5EA20CD3258B74069B8E4510250D2A12C1DAC8F083597470B6FF8108295
                  73A4F2D041865A0A06F3ACA81F174BB402455120D10A599A402901EB7208E92A
                  724C750B428290603EB5387C30C05AEF109B1B3DBEB565062599A5280450E40E
                  8B798ED17082F96C01344666D96547A0B48CC6F77A1D5CDADBC5C6C65A85CC4B
                  C9FD789D28A4A966B45E0B248940A2012D3DD378A58724071138FE023270B31A
                  62A078949B147F4D73A0F3614EC9EA8A7274F5BDF3285CE05100F44A3BB8709E
                  0693F9FCE5C383935F3C393D7FA5C8CDE4036CD2C7B23ED200B0B9F544592C17
                  67DE755F9C4DF3CF6729A542CA24C9D25D8215519D5508EE9D0A517B09ACD4FA
                  2BAD41BF22EEF9FE10817708204C550462100A87B11AFDAD1E215356F322C778
                  3CC36030AD74FC581A4DC2380FE91D33FE40B096B05C182CE6258ADCA3347CAB
                  97A5439E7B2C9706A674411538BAF1DA2A1B8941334D5400E234B4E4439E6529
                  F3F0830885A7125AB304569A25205A02DE72AA1CA2AD752EA4C90A65EE3119E5
                  383C18E0F0F00CEB9BBDA0EAC3E55959188C46339C9D8E301C8EB15C96AC1318
                  805C12213BF30EBD5E073B3B5BD8DDDB46A7D782906545D291A1CFAF94646F01
                  2DA0355538810A3F92C93A3CF1176FF1C8E4A30B6F65C4289A04F2951D52B5FA
                  6BBE7F0C122B0369F5A67BE49E6914201CA00110090BD0C494F6CEF1D1D9AF9D
                  9D0D5E3D3D199CCF66E52726F58FEB230D009FFB813F6E7FE1BFFD8F173BDBCF
                  DF5F4CDFF8EDF9BC5C170A5DA1545B48DDF7BE0CE86E030B685079EBA6C1C303
                  17CD0AECE2E0C5DB770C1E3944F0E827B062ED4420C409BBF8A39858624AD6D4
                  5FCC8BE03EC3CABBCE058013042114DFE60B83B3B309EEDE3D82F3399CE55ABA
                  282CF2D2062D000353DA4A1A3CCF0BAEDD110D341C12AD421AAD91688D7EB78D
                  F5F53E5AED8C5B6C0230DE402985562B43BB95422B4EA1E182875DC830441073
                  75D661B970383D1DE3CDDBFBD8996FA2DFEB21495A201258CC97383E3AC5C1C1
                  0986C329ACE5BAD8C7F1E7F0FE682DB0B3BB85ABD72E617B671D69AA406402F8
                  47D09AB5F699AB1FD47935670732D076A5E0E93D41ABB89008E063F340363950
                  B55D7DF5CE85D1F1C68E8907DE37DFFB0BDCEEB7BA1F22DE51B1D4C9138999B5
                  7E7FBEC85F7CEDB5377E733E5B1EC18BE5FFF12FFEF58F0AB17ED7EB230D0000
                  F087FFE73FE7008CBFF04B3FFDADE1F0953EA6F3B603D6D755D293D2127C11A8
                  A68184F2B6E9FD7B4CFB1F39D25BFFD323FF2702464DBE484CC9D1D868E1E739
                  CF429FDE065B2D03A844B3814510EBE41BD6C11A87E96489FB0F4E60DD828D3B
                  825E6051B2EB6E5996284BCE089CE57CC894B6EAAF93082D36625D4046D9590D
                  77677B037BBB3B58DFE8412A8094832089344DD06A67481215A4B8430F9D782C
                  D705CF3A0030D662389CE3E6EBF7707C3CC0DA5A1F9D4E0F42484CC6139C1C9D
                  554ABB1CD464E0007089E205D0EBA578E2C625DCB871196B6B6D48E9A075702A
                  92042129A8015108642ADCFEE123060119EA6BEF6ADEBE8F806644DF9BEFA358
                  0106B1224613CBC82832428DDB23667431B0440DCB47ED3F0A813F061A699DA3
                  D3E5B2F8D6C9F1E0B76EDEBAFB0A80C98FFF858F76CCF7DDAE8F3C00C4F5C433
                  FFE6D9E9574FBFB89C1D2E725BCC37B736883078C694534D289168190E1AC155
                  17380572096A5EB70F345202035ECD0349F55FC80B3C34D35D59503517E79BD1
                  9E3A3A1B45548BDF6A092913C04796179F2121590BD01BCF6C3063A148C2977C
                  B0285845454D3A10505A8FE1B8C0747EC6CC345F23D6B5E51782963FFB2BC43E
                  3B974B9EB505014078800CBCCF717436C6C1F1089BFBE7B87C691B4F3E750D9D
                  B680961A9DAC8D7EBB83769A219F142062FD3F2205630CA45630368787E31BD6
                  0B9C9D2F301CE790FBA3A086ABB05CE6CCF27380773A4CCF79480A40210CB24C
                  E0FB3EF7343EF5E9ABB874A58B4ED74329039D78684D3CA9A7581E3CBAEDAA60
                  ACA11555EA47EC16EC5969173E70F839507942B0A109EF757C271B75010120CF
                  7635BEAAEB051CB98A5F42BE6E1156485410B1508A8321BFF722782AD4EEBF51
                  FACF187F6F3E5F7CF57C30F997FFDD3FFD973FFF33FFF9FFE3E4E33A63EF667D
                  6C0100805BDFB832190EE76FE4F9307DF3F6D9CEB5AB69AA55E792A0A2C53AB3
                  6695581135E9438D679D6396970C924ED5604ED0747AA83FD838CC6FFDB02AF5
                  1C20A493B1DCA038FF5D5BA0236EA8D86F1604A90494D648120D1273C8D02274
                  96C53D280CA254C56A90D86A021915C5D8D7442882E06717907DEF3D9CB5703E
                  98AE068A2EC2CCFC6C66E0CC04D630A7E2B9E7F64042A09566D8DC58C3EECE02
                  83F303F0C090010C6716E401A914BCB770DEA2343E040756D3298583358B8AA3
                  E1F90402DE81A5FF1D9C2BA034F0F4334FE2F94FDFC0DEDE3A3A6D0DA5590A3C
                  497C95EE6BC51FD155A732D610F143A0E9AE83C6FBEC1BB76FBD1E9D1936B3F9
                  95BDF2362BBE0FD69410C453868CC188AA8C0BCB2A910CE7F9F295F3F3E12FDD
                  B9F3E08B4AE9D1477CA6DEF3121FFC47BCBF75EDA93FE2B7779FCCB36CFB4450
                  FFD5E9847EF3FCBC7CA12CF4A1A06C0952A1FEE754B232A1A4E867C7FD6D17A0
                  EBBA4D07AC8E00BF1579031CF9C3C70A9BAFF9ED15D24CF54D1169277EB53D18
                  D349A5249284F5E8887C5098ADC52DD92E8AA7CED8D22B1854829584AD67AD40
                  1BFE1E19881E74A1E40832598EDB782E640A700AE453582BB15C5A8C8653DC7F
                  7080D17886D25828ADD1EB77B177690B5B3B3D286DE1910354424AE627F8E04B
                  E883A4177C02720ADEB0BE81B5046F233B136168CBC0F92592C46177AF8FCF7C
                  CF93F8CCF73C85AB5736B1B696216B712F3F4D19AC4C1276D761F0524169C600
                  EAF45F56F322AB269BD51B83F707FBBEFDF4E845264034F164EBBEF03E07D75F
                  CE108501E4B828DC9BA3F1F457CFCF875F7FEDB55B0FDA9DFE270EF4BBB83ECE
                  0C00DFF37DFF6BFBF2EFFCFDF968B4797876967EF5E8E8E65E2BE92549922442
                  DA3DEF49F1C51F844108A0108511FADEEC74C3B7E77B1B0A6E66033E68873CF4
                  D663A5CF5BF1BBE2ED5C8FD0461D3C4140924874BA297AFD94FBED86D36C22C5
                  75A208B657A19E456897B99049F8461D4A9CB4F2230EC41D78C7EEBFB1EE8CFA
                  0A3E3EAF3033213C9C35582C0A1C1F9FE1E0701D52EDA2D369A3D36D636717B8
                  3A9AA2B407B01376EA11A482B8679D7554CF3A6810309F428457810306C10154
                  22493DB6B6DB78EAE96B78EEF92771E5CA36B6B63BC85209AD01A97C6035024A
                  11B4926CB4A92554E3D6AFDD756B59EED50AEE31B67D1FF1D5CC2D60A62591A8
                  B6064158404CADC583F164F6D5BB770F7EFDEC6CF0E63237B39FFCC9FFF21307
                  FA5D5C1F6B000080CFFC9E3F6E5F7DE1EFCF36362EDDF9CA970F7F7532A14C69
                  74D6D6B38EC7721DC2072719176A5E043196B019AD87810B73E5EF14D7E39FCD
                  BF376F12C2AA5661130C6CB487281CFE46BB28EAD67938B4DA097677D771F5EA
                  36BEF6D50790DAC2D99209321060DF8BC04DF711CBBF884FD4649A28A651E927
                  F820F219A4B2E368AA080418803B0E641D1C119CF328CC126FDEBA8B568BDB83
                  ED761B2480BDCBEB982DA670AEC46CBA84F79A390BA42BA5255F5527A2BAEDBD
                  3701CF28E17C01220BA53C767737F1A94FDFC0A73EFD149EBC7119BD5E86564B
                  B310A7E012422A0AFC7F82926CB72D950C6EBA148C3DE2F3138D9BFF831CFAE6
                  3EB800ED136A4AF7C5AF6EFCDE3819E9C887E1350B29D38573E260B1287EE7E6
                  CDBB3F7FEFDEE1EBA3F174FC933FF97FF958147EDEEBFAD80300007CEAFBFEB8
                  0330FAAD5FFDABAFECEF7FAD8428079E44DE6EB77F5862D1F3BE1071C2CD3A03
                  EF78C24A908423D695AB1AC5C085ACB0F966371860001AAC10D44CC30B2B9280
                  A8BE89A991EE537578E32631E8F4323C71631B934981175F781D6FBEB9608D3A
                  088054C5A8AB116AC1528982AF7FAA868451C11F14F9FB82D9FAC6B29D183CA0
                  A48673A69AD327F29041BF9FC26C82F3120707E7D8D91D636D7D1DED4E0BADB6
                  C6A54B1B90CAA3BF96E2F8E81CE7672CD925450A213348A1E1C0194BA553000B
                  6716C8F3029D6E82B58D36B6B67AB87C790BCF3F7F034F3C7109DB3B7DB4DB1A
                  890284B490541FEC98DA739A2F1A7FA272D789D25CAB69FFC5F715787F99401D
                  E4A9E27834F0974ACF80E9D11E164AE90A6F2012B08EA0643A58CCCCCBC3E1FC
                  37EEDE3DFAE59BB7EE7F05C0E0CFFDB98F4ED6FB83AE4F440068AC699AAEDDCB
                  F3D15707833C05F45AABE59F554AF684348AE0C27419EA89B6E0D3F690528B7F
                  AB1BFF0227E02D6DC52E008A118B406CFA0280687C6BE8F193831416DD9EC2B5
                  2736F07B7FEFA7B058DCC2E9698E222FF980139382688543DE703F0E033B35F5
                  39661DFC3917BA2304C18221A13FEEC2082E8B5C882AB320212190C0940566B3
                  1CD3C902FD5E1BADB642ABADB1BDDD4792B21A4FAF3FC4E9E904D3F11245BE40
                  51E6A1DB11E6EBBD83D2C0DA9AC6DAC62676F7D6B07B69037B973671F9F216AE
                  5CDE426F2D43962928091059481178FE81A528E29F958B6E38F4C14C336673EF
                  44DBAED4E2DF676250ED86C6686FA50F58BDA7A1BCF4FCB81C049C178E48CDE7
                  8BF2D5E170FAEB6767E3CF8FC6D397014CF07EB9681FD3FA4405801FF9833F65
                  7EE5177E72389A2C6EE5A591492A2F0B4182847A4248BB0E2AB5F745E8C946D6
                  15456BE59A16EA570FF96AE9F88854CF370FF5CA3FA096018B02A5E127524D1C
                  593124F50E20833455D8D969E3877EF8799C9F9578E95B0738399EC19802DE0A
                  1034E24D145B8E7CFB1878B2E1C68FB3EBA83E62292248C143C0949C8E57643E
                  17485430CCA10827448804DE4BCC670566B325967981565B412A42B79B22CD24
                  7ADD0C9B1B7D6C6E4D70747086D17086E5C284AE085B6E6B0DB43B5CE27CEA33
                  CF617B771D9BDB3DACAF77B1BEDE46BBA391689EEE63CCC241C9A0D31F8C3C89
                  A29D767DF87936DF57F3F917DF8E8B3A0E0FB77ADFCB7A14B3A7FEFF482D23F0
                  48BA07731B586A4C58E7680ED083E170F285B3C1F8B78E8ECF5F3A3C3C3DF993
                  3FFA5F7C648E3E1FD6FA44050000F8437FF8678B7FF28FFEC3532933371E2F7F
                  454A99917016304F4929368480AA79F9F1808B702BF2FFD53787AFD2EC064AD6
                  5817093FF51C42FD250ED1C015D5686BE8165C50278EAD25F2064A7AF47B1ACF
                  3F7F19C3B31CA571107480F1788EC5A2AC86837862CF0735246E35B29515F896
                  A4BA2E8E29B1D61A5AA5ECF0332F319F15B58865E8893B2A993711BA0B12AC56
                  B3CC4B2C16054C692B1D7C9D4497A1143B3B5BD8DA5E6073A38BE16012D88CFC
                  189464F9315603DEC6F7FFC067D1EDB790B578BA4F2B82470941819844040F0D
                  159C9228946D143A393C83C0B80E973AAE1AEF7DBBE5DFA25E7F778B1ACCEF47
                  603DCD9291EA328DB926D2C18BB9B3FEB028ED0BF7EF1FFDFA703879E1E06070
                  F0A77EF4FFF491B8F97ED8EB13170000E0DFFBF7FF5EF10BFFF43F3D01F095D1
                  E000CBC56CDE6A79D36E8B4FF77AAD4DEF0A540D38EF002783E04405CD5E586C
                  604D91DC130EF4459EF82A3F90D36E4FBEB203AF7E7E1CEEA90C4B43ED1ECC39
                  49842937E1D16E0BFCE00F3E05211D36D6256EBF7984E3E30946638BB2F4159B
                  D018406A3E644A33332E49526895B09475B0A2D65A617D7D0D422AE4B9C578B8
                  C4FE83134CC6CBEAE7090178C1AF87772CF565AD87521ACE00D670004D128DBC
                  584212DFD84A4B6459865EBF8527AEED84545C54A2228996E8F75905386D296C
                  AC77E0850588EDB49460BC81711A0B018F44673065C9ED3C9241F598D39508EA
                  D2A3AEFC479400D15ABE32DCFC20A060E473D0DB7F4D1CA9F64EC2185A7A88C3
                  B2742FDCBB7BFC4BF7EF9E7C653A9B9FFEA93FFD973F76659FF7BB3E9101202C
                  0BE0C0FBDDCF3FB8FFFA7EA753BEB1B6AEFE9D76ABF723CE4D3695728AC8C159
                  D6A09342D59CEF15DBF198C2C7B4DD87DE3650E7CDAB2BF67D517F67A326E574
                  38BAED54FA71DE0680285A9495F028E17D89ADED4BF8911FF90C3EF5FC0D1C1F
                  0D7178788EF17889F9B2C03237284B07297430B0104C874D12244902291248A9
                  21A50E23AE7C50CBD2862C22C16BAFDCC38B2FBC81A3C301E6F302443C4CC594
                  5E46F34D6190680A176030102507AD79E0466B824E78DCB6DDCA90A509D23445
                  9AA4154F3F4D14DAED04AD560290814E2C48F26BE2BD83F096391A5EC37BDE5A
                  4A729B2FB2171180353425B9A2406C438C356AEAAF04E80FACED58EF8AFA6F6F
                  451A8ADC8B601422F4C83A717B349A7DE1F5D76FFFAB576FDEFB0280135A51AD
                  FDF65B9FD800F087FFE85F0700FFF3FF9FFF74BCB975FDAE5673292877C3A1D1
                  BD5EEBFBBC2F7780328BFD59547DE970B77B5F0D8E301816A49E0571CFDA537D
                  D3BFDD35E0EB89B226D7DC5FEC3810FF7E115A84D17E5A0B054925D244606B53
                  A3DBD9C4DE5E07D37981A208033E60292E1B042945E0B55BE340600F7AEF59D2
                  CB068E3D9B86483847B87C650D0F1E74301C4C58EDD753F89E58B604ED006B90
                  651DF47A6D74BB199284E05D50E711FCC1F45C20D140A23D92C422D12CE39568
                  402B0B21588B8F753EEAB61A8586796DD452D39A6B2015C1BBD0563A0F914351
                  F93EC400FBF6EF4CB5E85159FCDB7C6DCD04E4DFE05CF40314B54C7DC44E485A
                  909E1B43372793C56F0F06D3DF1C8DA6DFCCF36200C0FDD88FFF8D8FF0547CF8
                  EB131B00E2FA77FF677FBD7CF977FEFE703CBEF7E67279560E87076DEF617B3D
                  FD99241157E08BB610D4181E0A6298D5F90C9BAACA1A237E20DE76A320108356
                  67111BFF4F31D3705558A04608820FAE7604104A0810D29490B524BABD16FA4B
                  0D6B000F9E743186478199D90798D2A1282CBC0B8A3B1630969577AC35401C02
                  721E595B20CB249416E1F627201862568229E4E17D893463E43FCB140FD9546D
                  B8C0606C8CE26AEDA194839496197A1A95123007D246AD5CBD46F1F569D0A608
                  61A8EBE1E15C907F442ADF64F8BDDB5BFF51F5FC23DED638CF4114BA31A8795D
                  F5BC208F5510951E3435C6ED8F46CBCF0F86D3CF9F9E8EBE7974747EF0633FFE
                  373EF12CBF77B33EF10100003EF37BFE78F1D52FFC9D7349284E4F1E60B92CA4
                  109D9244E225D1754194595F3261088DE18CE8D147081AF7315B1391C5852829
                  F5B06244048B1EDE88356DC7D75DBCC697F87AEBF39FCEF0340111F7C415D34A
                  9D0B5D001241335FC218A02C1C603D442A618C41591A908B6D4807EF5935C839
                  02BC86314B386FAAA93878CE28227D16DE56FAFCAD96E2FE7C2240B0508A35F2
                  E3508E0A565ABAA1D927A4859022D05F996C4488377624D3342BF646B2DD18BF
                  7FB4317C939813FFFF9D0FF2FB5D3100B0143BA1D96E8C9948E8B21AEF31B6D6
                  DE9F4C975F7FE3D6FD5F1A0C262F3EB87F72F867FEFC5F5B3C9607F731AC6F8B
                  0000003FF46FFD98F9F2E7FFD6E8D9E77FFFCDD3D357FC83FB87938D0D3DBB72
                  75C312159F8E893EBC0FBA7BAE9E06A3E84D570B62F2D1A3A0891F67C983965C
                  1336A80839BE5132046CE1516054D52990DCB3773C0F2F88609D85354B90F448
                  12155877619ACF4B28A5B05C94582E1C7BEC4966415A57A23406656903E79FF9
                  10CE320F60369D623E5F202F0C97062195658D3F0BD6EE9730C6616DAD15D475
                  53902821A447AA55A8D5095A0BA43A64028A41499EDB0F9378A143C100683D6E
                  1B5EA2FA45882F6145A1AD8993BEAAF3E3C16BBE86313BA3FA1B3EC460D0B441
                  8B023491FDC9CAC1920956428EF2DCDE1A9C4FBFF2F2CBB7FEE9E9E9F42BD6BA
                  F19FF9F37FEDDBAED5F776EBDB260084E5014CAE5EFDDED76EBF6926C3D1647F
                  990F0FAE5FEB173AC99E26526D4F46785F86D61510A5B3F830389094F56DE457
                  09B82BCC3CA0FAF74A78A3D92624DBA00DC715FD0B42F6E005242978EBAB8340
                  21BA38EFE19D0D833C02CB0570EB8DFB78FDF57B984C726C6F6DE39967AF4125
                  EC748B8029148581311ECE4B9486B098E778F5D53771B07F8AD9CCC043828480
                  2482B1250730CFD37997AF6CE2D2E5CD2025AE41B0D09AD584940C0064A27890
                  495350E6114CD3AD66F3E318325B713D34844B7E35238AB3D2BEF1C9D8FA58B9
                  E9051E226FBD2549EB036C20CF78509C67504AC339AA06B2A450D04ADF3D3F9B
                  BC747636FCB5BB770E7FEDF474F28A7318BD0559E4DB7A7D5B05801FFE7D3F0E
                  00FEB517FF5FCBACB571B45C582C968BE2E464D1EAF5659965FA86D2729D48A8
                  4A9E09D128C3730A1E4129DF04AB8095D473259D6DD042564A82F86FCDEF0D9F
                  8BEAB3145D82B8E70E02DF301E206838AFB0587A0C8733DCBD33C4EF7CE3266E
                  BEBE8FC5C2E2D2A529946E61776F1D5AB369A8140E44164591633E2B309ACC71
                  7A3AC2FDBB27188F97B04685D61D829147B0C7220729094F3D75153BDB7D74DA
                  1A5A71E7446B40C95AD75F2911B8FA54B3F41A1F6C0A1AB006CFE2A0D5E872BC
                  B11F79681F91E27BF1F0CDBFB23EDCDBBFFEB1F554278F12B327BAF7B42C4B9C
                  4DA793AF0F07E35F190C265F9E4CE66F14453905E0FFC48FFEDCE3D9D81FE3FA
                  B60A00713DFFBDFF3BFB8D2FFFDFE707FB3898CFCFF3C168DE7110DE43CD5AA4
                  9E515A6D1144161971CCC167724AEC69AF54AC2B60DF5B2DD1C8486BFDFD1549
                  69FE4C8D7C4304E18F587506C14C4F280B89C9B4C4F1F10C77EF9CE35B2FDDC7
                  CBDFBA87A3C3098C21CCA640BBD3479E7BF4D7DA504AC13A8FBC70189E17383B
                  1BE1F8F81C078727383B5BA0C811E8AA5CFE18575601436B606DAD831B4F5CC6
                  E6669701430968AD58669BD0B0D026284D900A102A28F604FD02118C351F1655
                  6ABE00EF40B6AA8012BA5042BD0728FF03AC8A36EE5960C55A029134F062662D
                  8EA7B3C5EB6767A35F1C0EC75F3A3A3ABF7D763E1DFED93FF7B7CD6379309F80
                  F56D190000E0FB7FF84FDA17BFF10FE7D3E979F9E0C12B5F1A8C66A510342352
                  795BD0A785107BDE970A9E841702442E68D8DB2AB5A4C8AFADB0BCA091FFA8CD
                  D73026A94774037650517457BF8F6DA6D9A032A2094C2BD5189CCF71F7DE19DE
                  78E308AFBD7688575ED9C7F1D11C454E1050B06681975EBA87C5D260736B0D69
                  96C03BC058C2F9E90427C7031C1D9FE1F8E41CE512009240550D54E0409996C2
                  A1DD4E71FDFA2E2E5FDEC05A3F43960A28E5A1152149D8A24C05610EA1100240
                  EC0EA052EEA5E66B5665511E6FADCA1C5FB3E62D1FFF6C66028F06FEE83164DC
                  1C8415E32416B0561821C4C439F160B92C5F79F0E0F44B6FBC71F717CBD21EE5
                  4B37FFB37FEE6F7F5B4CF5BDDFF56D1B0000E07BBFFF7FE3011400EEFDAB9FFF
                  E9623A3D3E37A63CB0460CD7D6B2DF2B48ED382732E70BE185879002CEE670C1
                  E70EE42B93CA5A1DE682FCF72324873D38B57695425028FB893103178C34E105
                  549200205807582B609D425E287CF39BF7F1C52FBE88975FDEC7F1490E6304CA
                  420348005258E6C09BB74F71723644D64A58D813046780F9DC205FDA4006622E
                  80141A201944464A08E140D221CB24F6F67AF8ECF73E89F5F514AD1621491046
                  6F5139E62AC5B7BED69C0144B5DE38934FB1A3105191EAF0371A8017272DABFF
                  BF800154AB29E022800BE0E1BB49FFA316E03BAF30465D51B8B95CB20E8322F7
                  6F4CA6B36F1E1F0F7EFB2B5FFDD62F0B913D2008FBA37FE69327E2F961AF6FEB
                  0070619DE40B319B8EE7F74F8FE72F5DBBBE79B4B6D6FA6C92C82749A8BDA25C
                  B69507000D820CE49800F6ADCC00B88728C1910ABCBA211D045CC0FB04A22F9C
                  A7285115B807C2A2C80DA46CA128098787237CE1B75EC1177EF315DC7F30C164
                  EAE0D1868380711E4A68001AC63A90CF30195B4CA705A7E14130D43946AABD67
                  6D3EA56430F688546407210D7AFD144F3EB9874F7FEA3A9E7C6A1B6B1B0A4298
                  20B029A155824469A489864A08427948E920355523BA440242F2073550FF266B
                  AFC64E82549A7FC4CD5E950ABE026663EACF3FC6A239A65BFB0BBCF36A7662DF
                  6AF9D09DF18E00128E20671EF268369D7FF3E474F0ABC72783AF3C7870FC3A80
                  73D4FDE2EFF8F51D1300FEED7FF72FBB7FFCFFFED30B401F13B5F2D9CC6963E6
                  6FF6FBD90F64ADF4B3428AEB1EC536798210B64A5DD98928DE382E00D417365E
                  4512A9B980BE42B2EBF841688CA88237BAB51652B30BEFC9E939BEFC9557F1C5
                  DFBA857BF72698CD09D6A6F0D06CFE21083E4CF9810433031DB72A9D0D32E017
                  947ABC23189890A83890B090D2627DAB87E79FBF86A79FBE846BD736D1EB6B24
                  890B829B6C95AD9446AA35942256E30935BF145469F2C59B3F222755CBEF0279
                  27DA7F030F25F2E186F68DAF6B7ED15B940F2B2DC0B75303AA015A7FF107F8D5
                  F791DBBC7249A4C7DEA9FDD93CFFD6E1E1C9FF773C99BF3C1E4D1F1C1E1C8F7E
                  EA67FEC1EF9AC30F7C07050000F85FFEB1BF6BBFF1DB7F6B5114CBF2CE9D97BE
                  46D29C1B234EFAEBE951A7D3FABD42CA4F798F1EBC49A47012C43D6D04A51D0F
                  C7E39FCED794D64055E5C2C071EF5B80117EF85AC5B7BAE92E36C65CD5156410
                  CFE2EC7C8ED1D8C0394EF741AABA51D9CE1B618F8B2001D01409A981B38AB4E2
                  2CBC37500A68B525D637D7F0CC7357F0ECB35770F9F23AD637526429029597AA
                  0020831A6FD5E2931EA45871595043870FCD8ABDA6393D72C0B2CA985005C8AA
                  85EA9BADD4A6A9464CFF1BADBFC6B07FEDBB7031B4D0439FAB1F0601226A4500
                  CE394F24E7C6E0A82C8B57F33CFFE674B6FCE62BAFDCFA7C59BAC162592E7EEA
                  67FEC17774BDFFA8F51D150000E0FBFF7B3FCE9338C0C93FFE47FFD1F2CB5F7D
                  E9F0C927B7EE3FFBECF5BC4D62096F9F51A01D08DB16B05206A1476B6D05D895
                  C10C93825EBE07AAF49E44901F130A41DA07B175289A0736EC631204E32C3C59
                  F4D77A78E699A7B1B5738CFB0F0E79C4346013357391014601BE7D599BAF163F
                  114481A8C421499007848520836E2FC1DEA5353CFDEC157CEE73CF626D3D41A7
                  A3906514B4F815D7F8A1EE979220B5AFFFAE283C9620C5153811FC5C2ABE2C50
                  954F17DBA08D9B3E4A378771EA5A79C7D70ACA55380901C08BC6583307001170
                  95A8081D0365331BA9636E5D3EF0CF2148291D91B0D61A43500F66F3FC85A3A3
                  C16FBCF8D2CDCFBFFEFADD9BDFF7BD3F34D61AEE7FFF7FF84F3EEEADFBB1ACC7
                  C3B7FC04AD5FFDA5BFA58F8F6FF5A6D3B3CBED76F9FBAF5FEBFF487F4D7F4F96
                  BA1B44F996F70BC98790D982C28BC018A44AB80224AAD2B6A217C772D6C7ADCF
                  B6DA14EA634EC7595EBB301ED6A770AE8BF158E15FFEC2D7F00BBFF065ECEF4F
                  50E4124AB5611DE0A84186897F8A78EB462F40CF73FCA684B525882C5A2D8DCB
                  9736F1E45397F1F4B35771E3C62EB6B652642D0129B91528C887365F0DEE49C5
                  FC7FA582F86625CED1D4E08B033D71BB5098E317E1B27E14D2DF0451DFBA3B50
                  FDFCEA7987619C867B716C9D56254F102625D46626553FBF02F8043C31382AA4
                  9E0BA1CE9DF307FBFBA75F3D391DFDEBD3D3F10B47C7A37B7FF2477F6EFE71EF
                  CF8F7B7DC765008F582580A11472D26EEF2E4E4F27B706E793EFCB5AF8DCFA7A
                  FAE9CDADEDE781BC0794CA3B8BD2969042565361DE4549F23A138837A0140251
                  8FBBCE10829E9C079C0D12618AD98020834E37C10FFE1BCF60B15CE21B5FBF8D
                  9B374F707A36469AC9A0F243953A2F11F3082828EF0216A5C9E13D90261E5B5B
                  192E5FDEC3F56BBBB87A751B97AF6C6267670D6B6B29A428019107E14D06F1B4
                  E200C0A05EB4E366238E28C2591D7C4220335D4CB345B8A97D8DED5538FC235A
                  7995E1DE4502955BB9C51B797E8537541E804060EF01119FAB74FDBD08EF17DB
                  AA873A1FDEAB6592B44FA7D3C5EDD3D3A3970783C90B93C9F2D78BD2EEE7851B
                  83BB47BFEBD7777C00F883FFA31F0700F7F3FFECA71C808322B77951B8A1F3E6
                  BE73E60D1276D2EB65379452BBDE175D0F484EE71BBDFEC64D5F75AEAAB97FAC
                  300C6B626140007C30EC1104F21642E6D8DD6BE1FB7FE049A46982FE5A176FBC
                  7184F3C1108B3003C0042201F61EF4D5ECBE14C0FA9AC6FA461F5B5B6DECEDF5
                  71E5EA0EAE5ED9C1C66607DD6E82564B21D136A80B85DA5E89601B1694771B72
                  DB3208753655959BB77F2C6FA254794D728A2F463DC25B7F6E15A4AB977F9BBF
                  3F82405419B0C67F75F58F0C873DAA24F3FB2040A48D10E9BC2CE9EEF1C9F0EB
                  A3E1E485C160FCCA64B2B83D9B2D6F5B87A5B164FEE48FFEDC777C8BEFDDACEF
                  F812E0E2FACD5FF9AFF4D9D9DDF67239D8746E716D7353FD5BBB977A9F4BB47D
                  4E8AF2AA92764D69B4042CC15B1E63F13C4DC8F46217C0420F110687D8764C84
                  1B9BAADB3162825E0808C92219C610AC53984E3C8E0E67B873E714AFBFB68F17
                  5FBA89E3E302B6747096DD80095C9B13313A9FA61257AFAEE3C6935770F9F206
                  76767A585FEF606DBD8334152CC2291C04D9F0770255829BCC73AF4C3684A880
                  3E199D77C296586DEFF19FB51B72CC1088E721AAAF684AA435BA058823B70F1F
                  F22AC8D0C3BF87484044AA70A5BE5C45DF80B584E24BA4F05E15CE89DC793506
                  D2A3F9DC7DF5CE9D07BF7E7474FAF278347F608C1CFD891FFDD9EF9829BE0F6B
                  FDAE0B0071FDE37FF4130A406F3E7B70E3D2E5DEF7B7DBF85C2BC3A73B1DF174
                  9ACE111DC700000CA649444154E2B2A03223B28AE004C185E1170A765906245C
                  3549C6BC021EC2A970C1A06EEBBC87B10E3A4901923036B81EFB169CD3984C0C
                  0EF607F8E26FBF84BBF72658CE97C8F312796E01E7912609B45648B304DD6E86
                  679EDDC3D3CF5EC5CECE3A3A9D8441323240552670C9A034A7FB1C3DB8452F49
                  563C7E1184F8985F10EB6906F19A821EF50A3576D30B2F08A5563840E4013402
                  C76A0088AB0635EB0010B28806559B8D4844C5DAAC958302FB12021ED209911A
                  6330C8737FB45CBA7BCB1C6F9C9C4C7FEDDEBDFDAFDDBC79E76863FDD2F2C77E
                  E2BB37FEA3D6EFDA0010D76FFCF27F95BEF9E60B9B5A17575B6DFF6CBB851FDC
                  D8D09FEB76E5D35AFB3D214C4F90E12952CFE3B5800109C3C6949E9D78BC9701
                  8C12A16117802B2218EB20A50CBA4436B8DC2A904F0024F0566336F3188E9618
                  9C4F301ECDB05C16F0164892049D6E0BFD7E076B6B3CC52784832703293C12AD
                  614C5E1BA7C4032A78FC9824A7FC08F88468827B71E8A9F1FF15CA5EED8C7838
                  5739009C11A13EB0D400E11A537D14EAF80B24E900F4454E4363922210768864
                  60EEA17EAC24827782E0745F2843A4E6CB0237CFCFA7B7CECEC62F9F9C8CBE79
                  723279F1E4747617C0F2A77EEABFFE5DD5D77FAFEB3B1E037817AB0070DCE96E
                  8E8D593C3839197CEBFC7CF4CCB56BDBFF66BF9F7C26CB921B4AB92B446E1330
                  82C850ED1507208846F2641CB87D88E03948024A6A080A6EC0706091691E5242
                  44F79547B7A3D06A77B0B591C0941BF0C423BDDEB930A0C35E83808194603D00
                  67416491A6828143D4EAC1C65A68ADC379F42BB2058D843BDCE8E1FF5738FD35
                  FDB902FA1AF45C5F67E36FBBD8CA5BBE87B72310873C2AFF808A8BE109E42448
                  E885B51896B93F294A7BEF8D5BF7FEF5783C7B61B934778DA553B03E3FBFC0DF
                  5D6FBB7ED7670071FDC6AFFC6D717C7C4F1D1FDD4D3A6D6C6D6CB69EEE74F5B3
                  ED76F25CB79B7C36D5B82E84DD12C2F4A528DB1E85F0646AC0CC477E7C6DF8E1
                  3DD7D9CE857A9C1CBC3361664086F45881C54312201C14EF3C33039DAB38FB14
                  5C77D9223BF6C451595A5726233E6A1750659D0DA0F14ED7357AB3CD87D0D2F3
                  BEFE7C7D7A7CFD798A3267A21A8D42F5F5917D77316310172A8A6609D050568E
                  FFE4838CB86006250BB00AEBA196043D280D4EA6B3E5EDC974F1DA6251BC74EF
                  C1E10BE3F16C7FB128A652B5F33FF5A7FFD6EF3A42CFFB5DDF0D008F58BFF6AF
                  7E36F9DAD77FB3BBB1D9D9DDDAEE3EB1B9D9FD54AADD9352DAA7D3949E4853EC
                  4A657BCEE76D90533C28170446288EFC728AEC1CD7DE428641236761BD0D6D3E
                  4E731D04088A5374AE35609D8573064A86411CC42C23B2DB42A009FEA442C88A
                  28E39C0B693FAA43BBCADAE3F46545B6EC426068889E21DEC02BA503710803A2
                  C24FFC1DD4C80EEA92E161C25E04F762748B994540FF494208054016DE89A575
                  9894259D9912AF2F73F7E67038BD797874F6FACD9BF75E27919C0158FEF9BFF0
                  77BF9BEEBFC7F5DD00F036EB17FEF97F912C9693EE647AB656E4C32BEB3DFDE9
                  9DDDB5E7B7B6BA4F75BBEA0987E59340D92398846005E0842054FDEB28E8A9B5
                  0E371BF7AEEB419A1A3388F5AD080C4207C7780335F505089C2D1084609E80B7
                  17EBEB463FBD81D8FB6A8E207E59CC1AC44A00B858B3579A488DC74CD1AC2480
                  71D504805F2D0FF8D730257765C57AA4C20064F5FB3DC87B2F3C917442680BC8
                  336BE960B930F707C3D9DDFBF74FBE3E1ACC5F592EDDBEF3E25CEBDEF48FFDF1
                  BFF4DD54FF7DAEEF068077B97EFB0B7FAF757870ABB7BF7F6B6D3E3FDFEEF7D2
                  CFFCC00F3EFF87D6D7F50DADFD65A2728B50AE913382C5490314480429381030
                  592872E01B072F1C12178655F95CF0CD6C9D0BD264E1E6170927DFA1E4F09136
                  DBE0D9C75A3D52782B71747FE1A6AF7E7F93F0B3EAB2CCB5371AE87FFCBDBEAA
                  CF9BDF13B5118038362D408A9591581F01000948A94022109F2C1844250990C8
                  89D48C841E01FAE8EEDDFD6FDDBB7BF095DBB7F75F76561E6C6E5E3D55329D6A
                  9595FF8B7FFF2F7CF7C6FF80EBBB20E0BB5F4B004592B44744F248487574F7EE
                  E8D6C9897FBAD5A2675B9978B6DDD2373AED74576BD195E43BF026B3B624EF5D
                  B0F50A898043E3060CB3038265CAA3C51955134122DCE081E2EA64D58FF7D1F7
                  806CA0D2D4D3785C4A347EBE6F0ED5349ED545325E1413455D3EC86834EA5D08
                  224C1E72AEF62F64DC8EAA3988F8FD1E1ECE86515F928CDE7B82B19CBD08524E
                  085D4AA1A6456E87F365713C998EEF0F06939B796EBEB19817F766B3E5A110C9
                  B9B37681D8EBFC2EC0F7A1ACEF6600EF71FDFF7EE1EFD0E0FC48CCE793C4DA61
                  A7DB15DBEDB6B8D4CEC4952C53D7D2443CAD155D4AB4DC4D13B1AD13B1A9946F
                  835CE2E165ACD32B85E1A8A823EA9B1A40E8BE45365124EA306620100E7F4590
                  717070C1C996BF5F06A24F05C43DE4961C4F69E36B4259E01CAD906EE264936F
                  662211DCA49A42CC938CBE0A50F1E75A0F0892002900D20BD239200B6BFCA228
                  DCB4C8EDB82CFD6159987B45616E4FE7CBDBA767837BE7E7E37BD6620C888510
                  69F127FED4DFF9EE8DFF21AFEF06800FB0FED97FF773B4581CA6E4172D42D155
                  D26E119927124D7B9D7672A9D74DAFB4DAC9534982CB24FD8610E80A21532252
                  0E567938023962B5602E1722DF380ED35569392462BD5E71F4111C78033BD1FB
                  FA7C88607C51F9E82176F49B2C3DAC04807AC45834825443B6AFD97120A012F5
                  0C41C023B4EAAACE8280F7C2394F56086500699C174B67E5D0591A14853D5DCC
                  8BE3C97871389D2CEFE7B9B95F96F6DE72591E8FA78BE16C619600EC8FFFC4DF
                  FDEE6DFF98D67703C087B47EF19FFF5502908CC7A79D7C396AC1E77D25ED6E92
                  D273BDAE7ABEBFDE7EA2DBEB5C6DB55BBB5AC935EB4DC79349404E109C2026F2
                  90204F4D2DBC15B2CDCAF45B4CD303B058EB17F1E72B40AF3E9C8DFC021123A8
                  C0B7EAC6F6619826FE7EDF98788E862014804859A91404E0D083A4271E18F21E
                  C2125401920B2235734E0CF3C29E0E07F3FBE7E7D37BB3E9F2FE625EDECB17F6
                  419EFB33EFC5D87B5AFC877FFAAF7FC78A707ED2D67703C0635AFFF0BFFE5131
                  9B8DE5E1C11D9DA46EFDA967AE5DD9D9D97AB6D36D7F3A4DC57595882DA5B021
                  845B17706B5AA98E94D456D2A782737DBED1C93714CB42201014808408FCB906
                  471F88887C74458A3184FEFFEDDDCD8A1D551007F07FD5E9AFDB7DE77B12086A
                  50F25622227900B7AEC4B854107C02C1454004372EC46770EB3622A364CC6432
                  733FBB6FF7E973AA5C74DF9904B3542703F5DBF4AEE12E6EF5395575EAE8F615
                  575DFF78A58EAF18EEC91B6FF1E5F11A6F251A4E368E9580A1D9280553823894
                  3A554423C09DC2352AD4C4886508BA88512F457811235D7A2F4F57ABF6C96F4F
                  FEF8F5E4E4F4A2AE7DABE2FC575FFF6875FB1B6249C0FFCE76431E019C036EDE
                  6CC249E7EB5F44E37E92B903E7E898598F13A6A3E9A47CAB28D2BB459E1CA429
                  4D89305184299154CC5438E69C87C2F8383484B19D11806D32F0BA2687EBB2DA
                  F68AF361C6815ECDF07F29F68FCB036287C4A5C3BB75483CCA589707B112B110
                  5150701F845B8968A0DC88D0268A6EFA3EAEBAAE7BEE7D7CDEF7F199F7F159DF
                  87338067505E03BC16E5358006DBCB1A2C9977A36C05F03FF9EEF127747E7ECA
                  3EB48E28667BFB655E96932A4D789A3255D3C9E4204D792FCBA8744E2B45DC27
                  D2F78A227F27CFB3FD344DAA84B90028239684481D180993A60A4954C561582C
                  3094684CCE11B140490924430BC2F5C93B1DBFFE424AC38813620158402E9072
                  80722FA0A8A0487011A05E159D0A362162BD5AD64F43903355BC00301F9A7564
                  DEF771E97D5CB65DBF5C2D9B75BBF16D53777DD3B4B10F2E7EFAD963FBD3BF21
                  2C00DCA09F7FFAC279DFBA7653BBD5FC325DCC5FA44DBB627631DB9916BBF7EE
                  DD7970F7CED1FDAA2AF78B3C2B9DE389424B66AD887442AC15334D897597880A
                  10528013023353424300501A268B0A8D334FB785C6F1442D471AE67645510A22
                  EA15DC40B9164123825A411BC0B544D4A96223419AD64BF3D7E9D99F8B797DB6
                  5CAE2FD6EB7A11826EF2A2F25956842C2D429216F1A3875F5AE6FE0D6601E00D
                  F5ED371F1380FCE4E4F762B19873BB6918405255597974B87B5855F9C1746772
                  B4BB5B1D1F1EEFBD5D55E55E9EE76592A41973CA8C6CCCD7291129030A1EC7F3
                  8EBD3DAA8A088C010014A2A8F7BE6F9AB69BB78D9FD5753B5BADEBD96CB69C9D
                  9D5D5CAED74DD36EBA56447B7619BD7BFF41B733DDEFCB72277CF0F091EDE36F
                  210B00B7D00FDF7F9E44E99218BD0BA173BE6FB310FB24466115A5619D9F8CFB
                  816D43E05593BDAA5E0DF15628471A87F52B48999D00149892E85C1AD3348F49
                  9A4700E1FD0F1FDDF44F37FF324B02DE4EDB6E386008E20DFE718EF7B55EAD04
                  0E5E37A7EBE5A7EDD78D31C618638C31C618638C31C618638C31C618638C31C6
                  18638C31C618638C31C618636ECCDFE2B3521AB1FE04450000000049454E44AE
                  426082280000008000000000010000010020000000000000000100C30E0000C3
                  0E00000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000081AAAD0177A6A806689E9F0A5F97980F5E949411629394116292971260
                  93981361949813609396126392960F6492960D6894980B6F979B077B9FA30380
                  A2A6000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000089B6B8017BAAAD04598E94084180860C579EA31F6FB8BE4177
                  C1C84F73BFC56471C2C77F77CCCFA17FD5D8BB85D9DCC58CDBDFC78ADDE1CA88
                  DDE1CB88DDE1C989DDE0C68BDDE0C28DDCDFBA89D6D8AA86CFD18E81C7C97382
                  C6C75B84C7C94B7CB8BA3A679EA11D54888B0C61909305709A9D020000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000609199003D7B820263
                  A6AB0964A8AB1A68B1B2336AB6B85276C3CA797ACFD69577D1D8B379D6DDD87E
                  DCE4EA7FDDE5F17CDEE5F57AE0E6F978E0E6FC78DFE6FD7BE0E6FE79E2E6FE77
                  E3E6FE78E3E5FE79E4E5FD7BE4E6FC7EE4E6FB83E5E7F887E4E7F489E4E5F18D
                  E4E5EC8EE4E5E28EDEDFCB8DD9DAAA8CD5D79086CBCC6D80C0C1477AB6B7267D
                  B5B6147CB0B1064F797B014E7073000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000085B4BA0268A1A80B5A9EA71C57A7B0456B
                  C2C87E7AD3D8B778D8DAD774DADCEA75DCE1F774DFE5FE73DFE6FF72DFE5FF74
                  DEE6FF77DEE7FF76DFE7FF73DFE7FF73E0E7FF73E1E7FF74E1E8FF76E1E8FF76
                  E2E7FF76E2E7FF77E3E8FF79E3E8FF7BE4E7FF7BE3E6FF7FE4E8FF80E5E7FF80
                  E4E6FF82E5E8FF87E7EAFF8AE7E9FF8BE5E7FB8FE5E6F190E3E4E294E1E2CC99
                  DFE0AD91D0D1747CB3B44176A3A71F75989D0A77969B01000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000007DA8AB01639A9D0862A9AD2064B5BB4765BDC37F6BCAD2AD70D7DFDA6E
                  DBE2F36FDCE2FB6DDCE1FE6BDEE1FF6ADFE3FF6AE0E3FF6AE0E4FF6CDFE4FF71
                  DFE5FF75DFE6FF76E0E7FF75E1E8FF71E0E5FF70E0E4FF72E2E8FF75E3E9FF76
                  E2EAFF77E2EAFF78E2EAFF7AE3EAFF7CE4EAFF7EE4EAFF7EE2E9FF7FE4E8FF7F
                  E4E8FF81E5E9FF83E5EAFF86E6EAFF88E7EBFF89E6E9FF8BE7EAFF8DE7E9FD93
                  E8E9F999E7E8EE9CE3E5D695D5D8B48EC6CB8286BBC04870A2A41B6895970670
                  9799010000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000083
                  B4B7094F8E911D63B1B45A6FCED1A16BD5D9D76BDBE1F269DCE3FC65DCE4FF64
                  DCE5FF64DCE2FF67DCE3FF68DDE3FF69E0E3FF68DFE3FF69E1E4FF69E0E3FF6C
                  E0E4FF72E1E6FF75E1E7FF74E0E6FF71E0E5FF70E1E5FF72E2E8FF73E2E9FF74
                  E2EAFF76E1E9FF78E1EAFF7AE2EAFF7DE3EAFF7FE2EAFF7FE2EAFF81E3EAFF81
                  E3E9FF83E3E9FF85E4EAFF88E4EBFF8AE5ECFF8AE6EBFF8AE6EBFF8BE7EBFF8C
                  E7EBFF8EE6EAFF94E8EBFF99E9ECFD9EE7EBF19CE1E4D59CDBDDA084BBBE5861
                  8F921F7FA0A4078CA6AC00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000087BBC102579A9E1069B6B83A63
                  BCC0776ACFD4B86ADBDEE662DCDEFB5EDCE0FF60DDE2FF62DCE2FF64DBE2FF66
                  DDE5FF62DCE4FF64DCE5FF68DCE4FF6DDEE4FF6EE0E7FF69DEE4FF69E0E6FF69
                  E1E7FF6CE0E7FF71E2E9FF73DFE8FF74E0E9FF73DFE8FF74E0E8FF75E2E9FF76
                  E2E8FF76E1E8FF79E2E9FF7CE2E9FF7DE2EAFF80E3EBFF81E3EAFF82E3E9FF83
                  E2E8FF85E4EAFF87E5EDFF88E6EDFF89E6ECFF8AE5ECFF8AE4EBFF8BE6ECFF8C
                  E7ECFF8CE7ECFF8EE7ECFF92E8EDFF95E8EDFF96E7ECFE9CE9EDFCA2E9EEE79F
                  DEE3BE96CACF7488B5BA35668B8F0A6A8C8F0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000070A4A9016EACB00B53A0A52A65C1C5786BD2D7BE69
                  D9DFEC61DAE1FC58DCE2FF58DDE2FF5BDBE1FF60DDE2FF64DDE2FF68DDE4FF65
                  DDE3FF61DDE3FF65DDE3FF6DDDE4FF77DBE2FF76D5DEFF75D3DBFF74D4DDFF76
                  DAE2FF74DDE5FF72DBE3FF73DBE5FF75DBE6FF77DCE8FF76DDE6FF76DFE6FF76
                  E0E6FF78E1E6FF79E1E7FF7BE2E8FF7CE3E9FF7EE3E9FF7FE3E9FF7FE3E9FF7F
                  E3E8FF81E5EAFF83E6EBFF85E6ECFF87E6ECFF89E5ECFF8BE5ECFF8CE5ECFF8D
                  E6ECFF8DE6ECFF8DE7ECFF8FE8EDFF91E8EEFF92E7EDFF97E9EFFF9CEAF1FF9F
                  E9EFFCA5E8EFE9A2DEE3BB94CBCD6D78A7A92277A0A107668585000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000073A6AA0563AAAF2C63BBBF7465CBD1C363D7DDF05EDAE0FF5D
                  DBE3FF59D9E2FF54DCE3FF58DBE3FF5EDCE4FF60DBE2FF63DCE2FF63DBE0FF67
                  DEE2FF66DDDFFF70DCE0FF70CDD2FF529AA0FF3F7B82FF366D75FF3F767FFF4F
                  8C95FF68B3BBFF76CBD2FF76D1D9FF71CFD8FF70D0D9FF71D4DCFF72D8DDFF74
                  DBDFFF77DEE2FF79E0E4FF7BE1E6FF7DE3E8FF7DE3E8FF7EE4E9FF7FE4E9FF80
                  E4E9FF82E5EAFF83E6EBFF83E6EBFF86E6ECFF89E6ECFF8BE5ECFF8EE6EDFF8E
                  E6ECFF8DE6ECFF8DE7ECFF8FE8EDFF90E8EEFF91E8EDFF95E7EFFF97E7EFFF99
                  E9F0FF9AEBF0FF9EEBEFFEA4ECEEED9EDCDEB997CACC708BB1B3205F7E800200
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000007B
                  B2B60269ABB0195DADB24C67CACEAC64D6DAE75ED9DEFC5BDAE2FF59DAE1FF5C
                  DBE2FF5ADAE0FF5ADCE3FF5BDAE3FF5FDBE5FF60DBE4FF5FDAE3FF61DDE3FF69
                  DFE2FF70D7D9FF5DABAFFF306469FF092C30FF062025FF091E24FF091F27FF09
                  232AFF1D444BFF3B7278FF5A9DA2FF6AB8BDFF6CC2C8FF69C8CDFF6BCCD1FF6F
                  D2D6FF73D7DBFF77DBDEFF7BDFE3FF7EE1E7FF7FE2E8FF81E3E9FF82E3E9FF84
                  E2E8FF86E3EAFF86E5EAFF85E6EAFF87E6EBFF8AE6EBFF8BE6EBFF8EE6ECFF8C
                  E7ECFF8CE7ECFF8CE7ECFF8FE9EDFF90E9EDFF92E8EDFF95E9EFFF97EAF0FF96
                  EAF0FF96EAF0FF98EAEFFF9CEBEFFFA4EBEFFAAEEAEEE7ABDDE09B90BBBF4383
                  A8AD117F9FA30200000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000073AAAF065A
                  A3A72E62BFC48860CDD2D35DD8DDFA58DBE0FF55DAE0FF56D9E0FF5BDBE2FF5D
                  DDE0FF5BDCDEFF5CDCE1FF5BDAE2FF5DD9E4FF60DAE6FF5DDAE5FF61DEE6FF6C
                  DBE0FF67B7BBFF1B474DFF081B21FF0C1B1FFF0F1A1EFF131A1FFF121B1FFF0D
                  1A20FF08181FFF071D24FF17363EFF3B6870FF629EA5FF6AB8BDFF69BEC4FF6A
                  C4CAFF6FCBD1FF72D1D6FF76D7DDFF7ADCE2FF7CDFE5FF7EE1E7FF80E2E7FF81
                  E2E8FF84E3E9FF85E5EAFF87E6EBFF89E6EBFF8BE6EBFF8BE6EBFF8CE7EBFF8C
                  E7EBFF8CE7EBFF8EE7ECFF91E9EDFF94E8EDFF94E8ECFF93EAEEFF95EBF0FF97
                  EBF1FF99EAF1FF9BEAF1FF9FEBF3FFA3EBF2FFA9EBF1FFB1ECF1F6AFE6EBCDA3
                  D6DB7F8CB6BA2675959803000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000088C3CB025BA5AC165FB6BB526D
                  D2D7BA5FD5DBF059DAE0FE54DBE2FF50D9E0FF53DAE1FF56DAE2FF58DBE2FF5A
                  DADFFF5CDCE1FF5ADDE1FF5ADBE2FF5CDCE4FF5CDBE4FF5CDBE5FF61DCE4FF66
                  D1D6FF2B6A71FF051A21FF121A21FF141A1EFF17191EFF181A1FFF141A1EFF12
                  1A1FFF131921FF151922FF121822FF0C1B26FF213E47FF508288FF64A8ADFF65
                  B6BBFF67BEC5FF6EC5CCFF74CDD5FF76D4DBFF76DADFFF79DEE3FF7CE0E5FF80
                  E2E7FF83E4EAFF85E6EBFF87E6EBFF89E6EBFF8BE6EBFF8EE5EBFF90E6ECFF8F
                  E6ECFF8DE6ECFF8EE7ECFF90E9EDFF91E9EDFF93E8EDFF93E9EEFF96EBF0FF98
                  EAF0FF99E9F0FF9CE9F1FFA0EAF1FFA1EAF1FFA3EBF0FFA7EAF0FFACEEF3FDAC
                  ECF1F0ABE0E5AC9EC8CD4A7A9EA20B7292950100000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000006BA8AF0453A2AA2163C2C98366D2D8D15D
                  D6DCFA54D7DEFF52D9E1FF52D9E1FF53D9E1FF55D9E2FF56D9E2FF55DAE1FF5B
                  D9E2FF5DDAE2FF56DCE2FF58DDE2FF59DCE2FF58DCE4FF5CDBE3FF62DBE3FF69
                  D2DAFF39838BFF092E37FF0A1E24FF0E1B1FFF161A20FF151920FF0F1C21FF0E
                  1E24FF0F1B23FF131922FF161923FF151822FF0F1B22FF153437FF417377FF61
                  A7ABFF5FB2B7FF66B8BFFF71C2CCFF73CCD4FF71D3D9FF76DBDFFF7ADEE2FF7F
                  E3E6FF83E5E9FF85E6EAFF86E7EBFF89E7ECFF8CE6ECFF8FE4ECFF91E5EDFF91
                  E5EDFF8EE6ECFF8CE7ECFF8EE9EDFF8FE9EDFF92E9EDFF95EAEFFF96EAEFFF97
                  EBF0FF99EBF0FF9BEAF0FF9EECF1FFA1EDF0FFA2ECF0FFA5ECF0FFA7EDF1FFA8
                  EDF1FFB2EDF2F7B8EBF0D0A4D1D46885ABAE19719292017A9495000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000A1D0D4006EADB10963B5BA4A65C9CFAD62D5DBF358D5DAFE52
                  DBE1FF4BD7DEFF4DD8E0FF53D9E2FF56D8E1FF59D9E2FF5AD9E1FF59DAE2FF5E
                  DAE2FF5EDAE2FF59DCE2FF5BDCE1FF5CDCE3FF5DDCE5FF61DAE5FF66DAE6FF6B
                  DAE4FF73D7DEFF4B9AA1FF1B5057FF06242BFF0A1922FF11262EFF274C51FF31
                  595EFF2D4E54FF1A3038FF0B1B22FF131A22FF141A21FF0B1A1FFF112C32FF4A
                  7A80FF61A5ABFF62ADB4FF67B7BFFF6BBFC7FF6ECACFFF73D3D7FF77D9DDFF7D
                  DFE3FF81E4E8FF85E6EAFF86E6EBFF87E6ECFF88E6ECFF89E6ECFF8CE7EDFF8C
                  E6EDFF8DE6ECFF90E6ECFF92E7ECFF94E8EDFF95E8EDFF95E9EEFF95E9EEFF97
                  EBF0FF99EBF0FF9BEAF0FF9EEBF0FFA0EDF0FFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF2FFADEFF3FFB2EEF3FFB5EBEEE6B1E0E29E8DB5B62F799B9D040000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000009FD4DA016AB0B61059B1B8535DC8CEC25CD5DAF553D5DAFF4ED8DDFF48
                  D9DFFF49DAE0FF4DDAE2FF52D8E2FF57D8E1FF5BD9E1FF5CD9E1FF5ADAE2FF5B
                  DBE2FF5ADCE1FF5ADCE1FF5CDBE2FF5DDBE3FF5FDBE5FF64DBE6FF66D8E4FF69
                  DBE6FF68DCE3FF6CD7DCFF60B8BDFF347178FF103941FF34636BFF609EA3FF63
                  A4A8FF5B9498FF467579FF1E4246FF0D1C22FF171B21FF131A1FFF0E1C23FF24
                  444AFF589095FF5FA5ABFF5FADB4FF67B6BDFF6BC0C6FF70CCD1FF76D4D9FF7B
                  DCE0FF80E2E7FF84E5EAFF88E5EAFF88E6ECFF87E6ECFF87E6ECFF89E7EDFF8A
                  E7EDFF8CE6ECFF8EE7ECFF91E8ECFF94E8EDFF95E8EDFF94E8EDFF95E9EEFF97
                  EBF0FF99EBF0FF9BEAF0FF9DEBF0FFA0EDF0FFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF2FFA7EEF1FFA9EDF1FFB2F1F3FEB6EEF0F0AFE3E4AD97C5C63C7A9FA10775
                  9599000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000008E
                  C5CB0074B9BF1353B1B85F5FCFD7CC56D6DDFC4ED6DBFF49D7DBFF47D8DEFF46
                  D9DFFF47D9DFFF4CD9E1FF52D8E2FF56D7E1FF59D8E1FF59D8E0FF58DAE1FF57
                  DCE1FF57DCE0FF5BDCE1FF5DDBE3FF5EDBE4FF5FDBE5FF60D9E5FF67DAE6FF6A
                  DBE7FF63DAE3FF69DEE3FF70DADFFF6FC9CEFF56A1A6FF64ADB3FF65B5B9FF5B
                  AAADFF57A2A4FF579C9DFF487E81FF1A3136FF15191FFF17191EFF11181FFF0A
                  2026FF437074FF5A9A9EFF59A3A8FF5FAAB2FF67B6BDFF6FC3CAFF73CDD3FF79
                  D6DBFF7EDFE4FF84E4E9FF89E5EBFF8AE5ECFF8AE5ECFF89E5ECFF89E7EDFF8A
                  E7EDFF8BE6ECFF8CE7ECFF8DE8ECFF90E9EDFF92E8EDFF94E8EDFF95E9EEFF97
                  EBF0FF99EBF0FF9BEAF0FF9DEBF0FFA0EDF0FFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF2FFA6EEF1FFA4EEF0FFADF0F3FFB0EFF2FFB6F2F4F8B2E6E8B999C3C7497C
                  9B9F060000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000009DD1D70276
                  BDC41752B6BD7356D0D7D651D6DEFD4DD6DEFF4AD7DDFF48D7DDFF47D8DEFF48
                  D9E0FF4BDAE2FF4FD9E2FF53D9E1FF55D8E1FF55D9E1FF55DAE1FF55DCDFFF56
                  DCE0FF58DCE0FF5FDCE1FF61DAE3FF61DAE4FF5EDCE5FF5BDBE4FF66DCE6FF6C
                  D8E2FF6EDBE2FF6CD2D9FF71D2D7FF71CDD0FF71C6CAFF6CBCC1FF68B6BBFF65
                  AFB2FF5FA7AAFF5CA3A4FF5D9597FF294247FF141920FF141A1FFF141B20FF07
                  171CFF2F5055FF568D91FF569A9EFF5AA0A6FF62ACB1FF6CBBC0FF73C6CBFF7B
                  D1D7FF80DBE1FF84E2E8FF88E5EAFF8AE6EAFF8AE6EBFF8BE5EBFF8CE6EDFF8C
                  E7ECFF8BE7ECFF8BE7ECFF8CE8ECFF8EE9EDFF8FE9EDFF93E9EDFF96E9EEFF97
                  EBF0FF99EBF0FF9BEAF0FF9DEBF0FFA0EDF0FFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF2FFA6EDF1FFA8EFF2FFACF0F3FFAEEFF2FFB1EEF3FFB8EFF5F8BCEBF0CCAA
                  CDD25592ACB10E00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000077B1B7005FA5AC1952
                  B3B96E55CFD6DF4CD6DDFD47D5DCFF49D7DEFF49D7DEFF48D7DEFF4AD8DFFF4B
                  D8E0FF4FD8E1FF51D8E1FF54D9E1FF54D9E1FF54D9E1FF53DBE1FF52DCE0FF54
                  DCE1FF58DCE2FF5FDBE2FF63DAE3FF60D9E3FF5DDCE4FF5BDDE3FF6ADBE1FF73
                  CED5FF60B0B8FF50989EFF4C8E93FF4E8E92FF529397FF58989CFF609BA0FF65
                  9CA1FF659DA0FF649A9CFF5F868AFF24353BFF121A20FF0F1A1EFF131A1EFF0D
                  171CFF253D43FF528185FF529094FF55989BFF5FA3A7FF6CB2B6FF78BEC4FF7F
                  C8CEFF88D7DDFF89DFE5FF8AE4E7FF88E3E7FF89E4E8FF89E3E8FF8CE5EBFF8E
                  E5EBFF8DE5EBFF8FE5EAFF90E8ECFF90E9EDFF90E9EDFF93E9EEFF95E9EEFF97
                  EBF0FF99EBF0FF9BEAF0FF9DEBF0FFA0ECEFFFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF2FFA8EEF2FFABEFF1FFACEFF2FFAEEFF4FFB2EEF5FFB7EEF6FFBDEFF6FBC1
                  EBF1C8AACCD1587B9395087D9698000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000065A6AB0261AFB42155C0C68F4D
                  CED3E646D6DDFF43D6DCFF44D7DDFF44D7DCFF47D7DEFF49D7DEFF4CD8DFFF50
                  D7E0FF52D8E1FF54D8E1FF55D8E1FF54D9E1FF54D9E0FF53DBE1FF52DCE0FF52
                  DCE1FF56DBE2FF5CDBE3FF5EDBE3FF5EDAE2FF5FDCE2FF65DCE0FF67C2C7FF2E
                  676DFF0B333BFF082228FF082026FF091F24FF072428FF0B2C30FF133237FF19
                  373CFF214045FF2B474CFF1E2E35FF131C23FF131920FF121B1FFF141A1EFF11
                  191FFF23393FFF517B80FF50888BFF528D91FF588F93FF4B7D82FF47737AFF49
                  757DFF568B92FF75B5BAFF86D0D2FF88D8DAFF83DADBFF80D9DCFF82DBE0FF87
                  DDE2FF8DDFE5FF91E1E6FF92E4E9FF91E6EAFF90E8EDFF94E9EDFF95E9EEFF96
                  EAEFFF99EBF0FF9BEAF0FF9DEBEFFF9FECEFFFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF1FFA8EEF1FFABEFF1FFADF0F3FFAFEFF4FFB2EFF5FFB6EEF7FFB8EFF6FFBA
                  EEF4FCBEEDF0D4ADD2D45E8AA7A80C0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000085C0C70159AFB51D4EBEC48348D1D7E841
                  D8DEFE3CD4DBFF41D6DCFF42D8DDFF43D9DDFF46D8DEFF49D7DEFF4CD7DEFF51
                  D8E0FF54D8E0FF55D8E1FF55D8E1FF54D9E0FF54D9E0FF55DAE1FF57DBE1FF53
                  DBE1FF54DCE2FF59DBE4FF5BDAE3FF5DDBE2FF65DCE1FF67CBCEFF316D72FF0B
                  252BFF0B1A21FF111A1FFF13191FFF151A1EFF111A1DFF0E1A1EFF0D1A1FFF0C
                  1C22FF0D1C22FF121B22FF161820FF161A21FF15171FFF181820FF161920FF0C
                  181DFF2D494EFF527D82FF4E8084FF3D6E71FF254C50FF0E292FFF0B1D24FF0A
                  1B25FF0A232CFF23464DFF477579FF649FA1FF7AC0C2FF7DCCCEFF7ACED0FF80
                  D1D6FF87D5DBFF8CD9DFFF8EDEE3FF8EE2E7FF8FE6EBFF93E7ECFF95E9EEFF97
                  EBF0FF99EBF0FF9AEAEFFF9DEAEFFF9FECEFFFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF1FFA8EEF1FFAAF0F1FFACF0F3FFAEEFF4FFB2EFF6FFB4EEF7FFB2EEF5FFB6
                  F1F6FFBAF1F4FABEEBEDC8A9CCCE518DA6A90A82999B00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000009DD3D90064ADB4164FBBC37948D2D9E63AD5DBFE36
                  D5DBFF3DD6DDFF40D8DDFF3FD6DBFF42D8DDFF45D8DEFF48D8DEFF4BD7DEFF51
                  D8E0FF53D8E0FF54D9E1FF53D9E1FF53D9E0FF54D9E0FF57DAE1FF5ADAE2FF58
                  DBE2FF59DBE2FF5DDAE4FF5DD9E1FF5FDBE3FF69D8DDFF4E9CA0FF04252BFF0D
                  1920FF141A1FFF16191EFF16191EFF171B1DFF161A1CFF171A1DFF141A1DFF11
                  1B1FFF121A1FFF14181DFF181A20FF15191FFF181A20FF1B1820FF131820FF09
                  1F25FF3D6267FF568186FF375D62FF123035FF071A21FF101920FF171921FF17
                  1721FF151922FF0B171EFF0B2024FF153539FF406D71FF6EA7AAFF7ABDC1FF7C
                  C3C7FF7EC9CDFF81CFD3FF86D6DBFF8ADDE1FF8DE1E6FF91E5EAFF95E9EEFF97
                  EBF0FF99EBF0FF9BEAF0FF9DEBEFFF9FECEFFFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF1FFA7EEF1FFA8F0F0FFABF1F2FFAEF0F3FFB0F0F5FFB1F0F5FFB0F0F5FFB2
                  F2F6FFB5F1F4FFBEF2F4FBC1ECEFC5ADCFD253829C9D06000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000A3D3D6016CB4B91049B0B66E4CCED6DC3FD6DEFE37D5DDFF3A
                  D7DDFF3ED6DDFF3ED5DBFF40D7DEFF42D7DFFF44D8DEFF48D8DEFF4BD7DEFF50
                  D8E0FF51D8E0FF51D9E1FF50D9E1FF50DAE0FF52DAE0FF55DAE1FF5AD9E2FF59
                  DBE1FF5BDAE1FF62D9E3FF61D8E1FF62DBE2FF65CFD4FF2C6A6FFF061920FF14
                  1820FF171B20FF151A1EFF14181DFF151C1EFF151A1CFF151A1CFF131A1DFF15
                  1A1FFF161A1FFF181A1FFF15191EFF11181DFF131B1FFF161B1FFF131F26FF2A
                  484DFF4D787DFF456A70FF182D34FF0E1820FF151920FF17191FFF18191EFF17
                  191FFF161A20FF131A1EFF121B1FFF0D191FFF0D2329FF325257FF649297FF76
                  B1B5FF75BBBFFF75C4C7FF7BCCD1FF85D5DAFF8ADADFFF8DE0E6FF92E6EBFF95
                  E9EEFF99EBF0FF9BEAF0FF9DEBEFFF9FECEFFFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF1FFA6EEF1FFA6F0F0FFACF1F1FFAFEFF3FFB0F0F4FFB0F0F5FFB1F1F5FFB3
                  F1F6FFB7F1F5FFBDF3F5FFC1F2F5F9C3EDF0C9A7CACB3D728D8E050000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000077B5BB094FADB24E4DCCD2D33ED2D9FD3BD4DEFF3AD5DDFF3B
                  D6DDFF3BD4DBFF3ED6DEFF41D6E0FF42D6E0FF46D7DFFF48D7DEFF4BD7DEFF4F
                  D8E0FF50D8E0FF4FDAE1FF4EDAE0FF4EDAE0FF51DAE0FF55DAE1FF58DBE2FF57
                  DCE0FF58DADFFF62DAE3FF62D8E2FF63DBE3FF62C9CFFF235A61FF0A1820FF17
                  1920FF161A1FFF15191EFF141B20FF111F22FF111E23FF121F24FF101D22FF12
                  1B21FF141920FF161A21FF121B21FF0F1B1FFF0D1D1FFF0E2124FF243A41FF4C
                  7076FF4C797FFF27444CFF0F1620FF1A1821FF1B1820FF181A1FFF141B1FFF0E
                  1E21FF132326FF142225FF121D20FF13191EFF121A20FF0C1A21FF324F55FF68
                  979CFF6FAFB2FF6DB9BCFF74C2C7FF80CAD1FF87D1D8FF8ADBE0FF8EE2E7FF93
                  E7ECFF99E9EFFF9DEAF0FF9EEBF0FF9FECEFFFA2ECF0FFA4ECF0FFA6EDF1FFA7
                  EEF2FFA6EEF0FFA7F0F0FFACF1F1FFAFEFF3FFB0F0F4FFB0F0F4FFB0EFF3FFB5
                  F0F5FFB9F0F5FFBCF0F4FFBEF0F3FFC3F3F5F9BFE7E8A99EBDBE2A0000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000075AEB70454AEB94B49C2CAC83DD3D9FF33D5DBFF34D4DCFF38D6DFFF39
                  D6DFFF3AD6DFFF3DD6DFFF41D6E0FF43D7E1FF46D7DFFF48D7DFFF4AD6DFFF4D
                  D8DFFF4FD8E0FF50D9E1FF51D9E1FF52D9E0FF53D9E0FF55DAE2FF56DAE2FF55
                  DCE1FF55DBE0FF5BD8E2FF61D9E5FF62D9E3FF62CACEFF235D62FF061A1DFF14
                  1B1CFF17191BFF161A1FFF1D2E34FF385E63FF355C63FF2F5359FF27474CFF23
                  3E44FF21383EFF1D3339FF1A3439FF1C383EFF234248FF395B63FF537A82FF53
                  8489FF3F7072FF122E33FF10181EFF161A1FFF181820FF171721FF152129FF2B
                  4D50FF46686BFF48686BFF274046FF101F24FF13191FFF13191FFF131E25FF43
                  5F65FF6F9FA4FF6BACB0FF70B4B9FF7AC0C4FF81CACEFF86D4D8FF89DDE0FF91
                  E5E9FF9BE7EDFFA0E9F0FFA0EAF1FFA0ECF1FFA2ECF0FFA4ECF0FFA6EDF0FFA8
                  EEF0FFAAEFEFFFAAEFF0FFAEF0F3FFAEF0F3FFAFEFF3FFB0F0F5FFB2F1F5FFB7
                  F1F6FFBAF1F6FFBDF2F5FFBFF2F5FFC2F2F5FFC6F2F4F2C0E6E89F89A3A7197E
                  9094010000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000086
                  C0C40350A0A72A49BAC5B244CFD6F735D5DAFF31D5DAFF36D5DDFF3AD5DFFF3B
                  D6DFFF3CD6DFFF3FD5DFFF41D6E0FF43D7DFFF46D7DFFF48D7DFFF4AD6DFFF4C
                  D8DFFF4ED8E0FF51D9E1FF52D9E1FF54D9E0FF54D9E0FF55DAE2FF56DAE2FF56
                  DBE0FF59DBE0FF5DDAE3FF60D9E4FF63D9E3FF68CFD4FF2F6F73FF021C1FFF10
                  1A1CFF171B1DFF111B20FF2E494FFF62969CFF548C92FF4D8286FF477679FF47
                  7176FF466F74FF447074FF417075FF45787EFF4B7F86FF548790FF578A92FF57
                  8E92FF356466FF0A2226FF151B1FFF171B1FFF161921FF121A22FF263E45FF59
                  888CFF639496FF649093FF527579FF1C3136FF101A1FFF151A1FFF131920FF1A
                  2E35FF5B8489FF69A5A9FF6BACB1FF73B7BCFF7BC0C4FF83CCD0FF88D8DAFF8F
                  E1E4FF99E6EAFF9FEAEFFF9DEAEEFF9FEBEFFFA1ECF0FFA3EDF0FFA4EDF0FFA9
                  EEF0FFACEEF0FFADEEF1FFAFEFF3FFAFEFF4FFB0EFF4FFB2F0F6FFB4F1F5FFB7
                  F0F5FFB9F1F6FFBDF2F5FFBFF3F6FFC1F3F6FFC3F3F5FEC8F2F4E6B6D5D96987
                  9D9F0C0000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000005C
                  ACB11847B4BA8C42CFD5F338D3D9FF32D5D9FF32D4DAFF38D4DDFF3AD5DEFF3D
                  D5DFFF41D5DFFF43D4DFFF44D6DFFF44D7DFFF46D7DFFF48D7DFFF49D6DFFF4C
                  D8DFFF4FD8E0FF51D9E1FF52D9E1FF53D9E0FF54D9E0FF55DAE2FF56DAE2FF59
                  DAE1FF5DDAE1FF5FDAE3FF5FD9E3FF63D9E3FF70D7DDFF509DA2FF03282DFF0B
                  1B20FF141A20FF0E1A20FF1E3B41FF56888EFF558C91FF4C8386FF4B7E81FF45
                  7476FF447577FF50878AFF519295FF4E9599FF4E9499FF56969EFF58959BFF5D
                  979BFF2C585BFF0C1F24FF171A1EFF18191DFF131920FF12282EFF4B7478FF5E
                  9699FF568F92FF578B8EFF5A8487FF304A4EFF0D191EFF13191EFF141A21FF0D
                  1E25FF3A5E64FF659DA2FF62A1A6FF6BABB0FF76B4B9FF7DBCBFFF8ACFCFFF92
                  DCDDFF97E3E6FF9BE9ECFF9BEAECFF9FEAEDFFA1EBEFFFA1ECF0FFA2EDEFFFA8
                  EDF0FFACEDF1FFADEEF2FFAFEFF3FFAFEFF4FFB0EEF4FFB2EFF5FFB4F1F5FFB7
                  F0F5FFB9F1F6FFBBF2F5FFBFF3F6FFC0F3F6FFC2F3F5FFC7F4F6FECCF2F3D5AF
                  CCCD4C7C90920400000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000008DC8C80940
                  A6AB6140C8CEDF30D4D8FE2ED4D8FF30D2D9FF35D5DDFF37D5DEFF39D6DFFF3C
                  D5DEFF42D5DFFF45D5DEFF45D6DEFF44D7DFFF46D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD8E0FF51D9E1FF52D9E1FF53D9E0FF54D9E0FF55DAE2FF55DAE3FF59
                  DBE3FF5BDAE2FF5CDAE2FF5BDAE2FF61DBE2FF6EDBE2FF6CCBD2FF29636CFF08
                  212BFF0F1821FF121B22FF0E1F25FF2B484FFF476C71FF4D757AFF41676BFF1E
                  4045FF173A3EFF3E6A6EFF4F888CFF529599FF549A9FFF569AA1FF579CA2FF62
                  A0A5FF2E575CFF0F1D23FF18181DFF181A1EFF10191EFF254347FF5E8E91FF59
                  9094FF568E93FF528A8DFF59888AFF385257FF0D191EFF13191EFF111920FF0B
                  1B22FF2D4C52FF619198FF619B9FFF67A2A7FF6EA5A9FF4B7C7EFF669A9BFF8A
                  C6C7FF98DCDDFF97E3E4FF98E5E6FF9DE6E9FFA0E6EAFF9DE7EAFF9DE8EBFFA6
                  EAEDFFA9EDF0FFA8EFF1FFABF0F3FFACEFF4FFAEEFF4FFB0EFF5FFB4F1F5FFB7
                  F1F5FFB9F1F6FFBBF2F5FFBCF3F6FFBEF2F5FFBFF2F4FFC3F4F5FFCBF6F7FBC6
                  EAEBAD9DB8B9287E929401000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000085C2C0014293932943
                  BDC3B034CED5FB29D5DBFF2DD5DBFF32D2DBFF34D3DCFF33D4DCFF34D7DFFF38
                  D7DFFF3FD5DFFF43D5DEFF44D6DEFF44D7DFFF46D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD9E1FF51D9E1FF52D9E1FF53D9E0FF54D9E0FF55DAE2FF55DBE3FF57
                  DCE3FF57DBE2FF57DBE1FF58DCE2FF5FDBE2FF67DAE2FF6BDAE1FF64B7C1FF1C
                  4A55FF091E28FF131B22FF141920FF111C23FF182A31FF21383DFF142A2FFF0D
                  1F25FF0A1C22FF162E34FF32575DFF50838AFF5A979DFF579AA2FF559EA5FF63
                  A4AAFF325C61FF0F1C22FF161A1EFF111A1DFF0B1A1CFF37595BFF639496FF5B
                  9195FF558D93FF538C90FF58878AFF30474CFF10191EFF12191EFF131C23FF0D
                  1B21FF284349FF628D95FF60959AFF659CA0FF5F9092FF133637FF183A3BFF4B
                  7476FF81B3B5FF9AD8DAFF98DEE0FF9BDDE0FF9EDDE1FF9BDDE2FF9BE1E5FFA3
                  E5EAFFA6EAEEFFA6EDEFFFAAEFF2FFACEFF4FFAEEFF4FFB1EFF5FFB3F1F5FFB5
                  F1F5FFB8F1F6FFBAF3F5FFBBF3F5FFBDF4F6FFC0F4F6FFC1F3F4FFC5F4F5FFCA
                  F4F4EDB8D9D984869E9F0E000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000006EB6BA1244B3B6863B
                  CCD3EE2CD3DAFF2BD5DCFF2ED3DBFF34D4DDFF31D2DCFF32D7DFFF30D7DFFF34
                  D7DFFF3BD7DFFF40D6DEFF42D7DEFF43D7DFFF46D7DFFF48D7DFFF49D7DFFF4D
                  D9E0FF4FD9E1FF51D9E1FF52D9E1FF53D9E0FF54D9E1FF55DAE2FF55DBE2FF57
                  DCE4FF57DBE3FF57DCE2FF58DDE1FF5DDBE2FF62DBE3FF61DCE4FF6BD6E0FF64
                  B1BBFF285962FF0C272EFF0F1B22FF131820FF121B22FF0F191FFF111C1FFF12
                  191FFF151820FF121920FF0C1D25FF1B3D45FF40747BFF599BA2FF559FA6FF64
                  A8AEFF437077FF102129FF121B20FF0E1C1EFF091A1BFF395C5EFF669799FF5C
                  9296FF558E94FF568E92FF568083FF213439FF12181EFF141A1FFF111920FF0F
                  1B22FF2D464CFF638D94FF62949AFF66969BFF476D71FF0E2426FF0B1C1EFF0E
                  2124FF243F43FF548083FF88C2C4FF92D1D4FF95D0D4FF95D1D6FF97D6DBFF9D
                  DEE2FFA2E4E8FFA7E9ECFFACEDF1FFAEEFF3FFB0F0F5FFB2EFF4FFB4F0F5FFB6
                  F1F6FFB7F1F6FFB9F3F5FFBAF4F5FFBBF4F5FFBCF3F4FFC3F5F6FFC5F5F7FFC8
                  F6F6FECDF4F4E2B8D4D5577D8E91060000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000008FC7CD054CA7AE443ABFC6D332
                  D4D9FD29D4DAFF2CD3DCFF30D3DCFF32D4DDFF30D4DDFF30D6DFFF31D6DDFF35
                  D6DEFF3AD6DFFF3ED6DDFF40D6DDFF43D7DEFF46D7DFFF48D7DFFF49D7DFFF4D
                  D9E0FF4FD8E0FF50D9E1FF52D9E1FF53D9E0FF54D9E1FF55DAE2FF56DAE3FF5A
                  DBE4FF5BDBE2FF59DCE1FF5BDDE0FF5EDBE2FF60DBE4FF5EDCE5FF63DBE5FF6D
                  D5DDFF67B8BFFF397277FF183F42FF0B2126FF0B1C22FF0C1A20FF101B1FFF11
                  191FFF11171DFF141A22FF0A1720FF09272EFF2F6167FF599DA2FF5AA0A8FF65
                  AAB1FF578C93FF173039FF0B191FFF0E1B1FFF0D1A1CFF2A484AFF618E90FF5D
                  9396FF579096FF5F8F94FF47676AFF17252BFF14191FFF14191FFF131920FF12
                  1C24FF395157FF679397FF609296FF679296FF355257FF0E1E1FFF131C1DFF13
                  191EFF111A21FF122D32FF649799FF87C6C7FF8BC5C9FF8EC5CBFF91CCD1FF97
                  D7DBFF9FE0E3FFA7E3E8FFAFECF0FFB0EEF1FFB3F0F4FFB3EFF4FFB4EFF4FFB5
                  F0F5FFB7F1F6FFB8F3F5FFB9F3F5FFBAF3F5FFBCF3F4FFC2F5F6FFC6F5F7FFC6
                  F5F6FFCBF6F7FCC5E5E7A99EB3B625808B8F0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000054A8AF1E38ACB69B36CDD8F827
                  D4D8FF23D4D8FF2BD3DDFF2FD3DCFF30D4DDFF30D5DEFF32D6DFFF36D5DDFF3A
                  D5DEFF3DD6DFFF3DD6DDFF40D6DDFF43D6DEFF46D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD8E0FF50D9E1FF52D9E1FF53D9E0FF54D9E0FF55DAE2FF56DAE3FF5B
                  DAE3FF5DDAE2FF5BDBE0FF5DDCE1FF5EDBE2FF5FDBE4FF60DAE5FF61DBE6FF63
                  D9E2FF68D4D9FF69C5C7FF5BA5A6FF326669FF153C40FF0D2A30FF0A2025FF07
                  1D23FF091E24FF0C2227FF132C33FF365E64FF578D93FF5A9FA4FF5FA4ACFF65
                  ACB4FF6CACB2FF375D66FF061821FF111A21FF16191EFF142428FF3C5A5EFF5D
                  878BFF5D868CFF55757BFF24373DFF0D181DFF121B1FFF121A1FFF141920FF16
                  1F27FF4E6A70FF619295FF5F9195FF61858AFF24373DFF0F1A1DFF161B1EFF19
                  1A20FF171821FF152A30FF6C9C9EFF7EBBBDFF80B9BDFF85B8BEFF8BC2C8FF8E
                  CED2FF98DADCFFA4E3E4FFAAEAECFFAFEFF0FFAFEFF1FFB1F1F5FFB1F0F4FFB3
                  F0F4FFB7F1F6FFBAF3F5FFBBF2F5FFBBF2F5FFBEF3F4FFC4F4F6FFC7F4F7FFC7
                  F4F7FFC8F5F7FFCEF2F4E9B6D1D3737684870700000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000092CDCF0538A7AE613AC5D0DB2FD0DDFF23
                  D4DAFF22D5DAFF28D4DEFF2DD3DCFF2FD4DDFF30D5DEFF33D5DFFF38D4DDFF3D
                  D5DEFF3FD5DFFF3ED6DEFF41D6DEFF46D7DFFF48D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD8E0FF50D9E1FF52D9E1FF53D9E0FF54D9E0FF55DAE2FF55DAE3FF5A
                  DBE3FF5BDBE2FF5BDBE0FF5DDCE1FF5DDBE2FF5EDCE4FF63DBE5FF61D9E4FF61
                  DBE4FF62D9DEFF64D3D6FF67CBCCFF68BABDFF55989DFF3C7278FF305E63FF25
                  5257FF235054FF2A585CFF447278FF5B9298FF5B9CA2FF56A0A5FF5DA7AEFF61
                  AEB5FF6EB8BFFF679EA7FF1B3B44FF0B1B23FF171920FF131A1FFF122327FF2F
                  464BFF364B52FF26343CFF121C22FF131C20FF0F1A1EFF0E1A1EFF121A21FF24
                  333AFF608287FF5A8F92FF5D8E91FF4B696EFF18242BFF121A1EFF14191EFF16
                  181EFF151921FF395056FF7BA9ACFF73ADB0FF77AEB2FF7EB1B6FF86BBC0FF8D
                  C9CCFF98D6D6FFA1E0DFFFABEBECFFAEEEEFFFADF0F0FFAEF0F3FFB0F0F4FFB2
                  F0F4FFB6F1F6FFBBF2F5FFBDF1F4FFBDF1F4FFC0F2F4FFC4F4F6FFC6F4F7FFC7
                  F4F7FFC9F5F8FFCEF5F8FCCBEBEEC895AAAC2D78898C02000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000ABE7E70158ACAF1C33B8BFB331CFD9FA2AD1DDFF20
                  D0D8FF23D5DCFF27D4DEFF2DD3DCFF31D4DDFF31D5DEFF32D5DFFF37D5DDFF3B
                  D5DEFF3FD5DFFF3FD5DFFF41D6E0FF45D6E1FF48D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD8E0FF50D9E1FF52D9E1FF53D9E0FF54D9E0FF55DAE2FF55DBE3FF58
                  DCE3FF58DBE2FF5ADBE0FF5DDBE3FF5BDCE3FF5BDCE4FF60DBE4FF64DCE6FF62
                  DBE4FF63DBE1FF60D5DBFF60D2D6FF61CBCEFF65C2C8FF67B9BFFF61AAB0FF59
                  A1A5FF539B9EFF559A9EFF579BA0FF559AA1FF519BA2FF50A0A7FF56A6ADFF5F
                  B1B7FF69B9C0FF7AC1C9FF588C94FF17373FFF0E1D23FF10191EFF131C20FF13
                  1921FF161A24FF141720FF151920FF141A1FFF101B1FFF0A191DFF0F1E24FF48
                  6167FF679093FF568B8EFF5D8A8DFF344D52FF121B21FF161A1FFF15191EFF15
                  1A1FFF121D24FF5D7A7FFF7AA9ACFF6AA1A4FF6EA3A6FF75A6AAFF81B3B6FF91
                  C2C6FF95C6C8FF96C8C9FF9ED4D6FFAAE3E4FFB1EDEEFFADEBEDFFB0ECF0FFB1
                  EDF2FFB4EEF3FFB9EEF2FFBDEFF2FFBFF0F3FFC2F2F4FFC3F4F6FFC5F5F7FFC7
                  F4F8FFC9F4F8FFCDF5F9FFCFF5F7F2BBD6DA7C84999B0D000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000047989B0833A5A95C2FC8D0E827CFD9FF28D2DCFF24
                  D3DDFF23D3DDFF28D3DEFF2FD3DCFF33D3DDFF32D4DDFF31D6DEFF33D6DDFF38
                  D5DEFF3CD6DFFF3FD5DFFF42D5E0FF47D6E1FF48D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD8E0FF50D8E1FF52D9E1FF53D9E1FF54D9E1FF55DAE2FF55DAE3FF57
                  DBE3FF58DCE1FF5EDBE2FF5FDBE3FF5CDCE3FF58DDE4FF5BDEE5FF5FDCE4FF63
                  DBE4FF67DCE5FF65D9E3FF62D7DFFF61D2D9FF62CDD4FF61C5CCFF5FBDC3FF5D
                  B6BCFF5AAFB4FF57A9AEFF54A3AAFF54A2AAFF51A1A9FF54A5ADFF54ABB1FF5F
                  B6BCFF66BCC3FF6EC4CBFF79C4CBFF59969CFF275256FF0B272AFF0D1B1FFF14
                  191FFF151A21FF141820FF151921FF14191EFF121C21FF0F2024FF324B50FF5E
                  8387FF5D8E90FF588B8EFF577D81FF1C2F35FF121920FF181820FF171921FF11
                  1820FF24363DFF6C8D93FF6E9CA0FF66969AFF68969AFF73A0A4FF7EAAAEFF6E
                  9095FF4D686CFF395154FF415E61FF5C7F83FF8CB6BAFFA9D9DDFFABDFE2FFA9
                  DFE3FFAAE0E4FFAFE2E7FFB5E6EBFFBBE9EDFFC0EEF0FFBFF1F3FFC2F4F7FFC6
                  F4F8FFCAF3F8FFCCF4F8FFCEF5F8FEC9EBEDC99FB9BA36748285010000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000BFE9EF00419EA52128AEB6A329D1D9FB1ED2D9FF21D3DBFF21
                  D0DBFF26D4DEFF29D4DDFF2ED3DCFF32D3DDFF32D4DDFF31D6DEFF33D6DEFF37
                  D6DEFF3AD6DFFF3ED5DFFF41D6E0FF44D6E0FF47D7DFFF48D7DFFF49D6DFFF4D
                  D9E0FF4FD9DFFF50D9E0FF52DAE0FF53D9E0FF54D9E1FF55DAE2FF56DBE3FF56
                  DBE3FF58DBE1FF5CDBE2FF5EDBE3FF5DDBE3FF5ADCE4FF5ADCE3FF5DDCE3FF62
                  DDE4FF65DCE3FF65DBE3FF64DBE2FF63D8DEFF63D4DAFF63D0D6FF61C8CFFF5F
                  C1C9FF60BCC4FF5CB4BCFF5CB1BAFF5AADB5FF5AADB4FF59AEB4FF5DB5BAFF61
                  BBC2FF66C2CAFF6AC8D0FF75CDD4FF7DCAD2FF6DAEB3FF366A6EFF12383CFF0D
                  2529FF0B1E23FF0C1B21FF0B1820FF101E25FF12272EFF29464CFF587F83FF5D
                  8C8FFF598D8FFF5E8D8FFF4D6D71FF122128FF151A21FF1B1921FF16181FFF10
                  1B21FF334E54FF6C9599FF68979BFF659195FF679296FF729DA1FF668B8FFF2A
                  4146FF151F25FF141B20FF101C21FF15272BFF2F474CFF719296FF9AC4C7FFA0
                  D1D4FF9FD3D5FFA6D7DAFFB0DDE1FFB6E1E5FFBBE7EAFFBCECEFFFBFF2F4FFC5
                  F4F7FFCCF5F9FFCEF5F9FFCEF6F8FFD2F7F9F1B2D0D2737A8D8F096C797D0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000009CD6DC0536A4AE5C2DC7D2E21ED3DAFF17D3D9FF1BD5DEFF22
                  D1DDFF28D3DFFF2AD4DCFF2CD3DCFF2FD3DCFF31D4DDFF34D5DFFF36D6DEFF37
                  D6DEFF3BD6DFFF3ED5DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D7DFFF4D
                  D9E0FF4FD9DFFF50DADFFF52DAE0FF53D9E0FF54D9E0FF55DAE2FF55DBE3FF56
                  DBE3FF57DBE2FF5ADBE2FF5DDBE3FF5EDBE3FF5FDBE4FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF65DDE3FF66DEE4FF65DDE2FF67DCE1FF67D8DEFF67D2DAFF66
                  CDD6FF66C8D1FF65C4CDFF65C0C8FF63BDC4FF62BDC2FF63BEC2FF66C1C7FF69
                  C6CDFF6BCCD2FF6ED1D9FF75D5DDFF7AD5DDFF80D6DCFF74C5CAFF5AA1A5FF41
                  777AFF32595DFF27474DFF28474EFF33565EFF467178FF57878FFF619499FF5D
                  8E92FF4D7B7EFF668B8EFF3D5559FF101A21FF181820FF1A191FFF15191EFF11
                  2124FF496C6FFF6B9A9CFF619395FF648F92FF699195FF749A9EFF3F5B60FF10
                  1D23FF17181FFF1B1A20FF15191EFF13191DFF0F171CFF1B2C30FF456365FF82
                  ADADFF93C2C3FF9DCACCFFA6CFD4FFACD5D9FFB3DFE2FFB6E6E9FFBCEEF0FFC1
                  F2F4FFCAF4F7FFCFF4F8FFCFF6F8FFD1F8F9FECEF0F1C694ABAD2E7281840100
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000B1E8EA0056ADB01A2EB2B99F23CFD8F719D2D9FF1AD4DAFF1CD2DCFF23
                  D1DDFF28D2DDFF2AD4DCFF2CD3DCFF2FD3DCFF32D4DDFF35D5DFFF36D6DEFF37
                  D6DEFF3BD6DFFF3ED5DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D7DFFF4D
                  D9E0FF4FD9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E0FF55DAE2FF55DBE3FF56
                  DBE3FF57DBE2FF59DBE2FF5DDBE3FF5EDBE3FF5EDBE4FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF65DDE3FF66DEE4FF65DEE4FF68DEE5FF6ADDE4FF6CDBE0FF6C
                  D8DEFF6ED4DBFF6DD0D6FF6DCFD4FF6ACCD2FF6ACBD2FF6BCDD2FF6DCFD3FF6F
                  D2D6FF72D6DAFF75DADEFF79DCE1FF79DCE2FF78DCE1FF75D7DBFF75CED3FF74
                  BDC1FF76AEB4FF6DA0A7FF679CA2FF659BA1FF639CA2FF629BA1FF65999FFF55
                  7E83FF1F3F44FF435A60FF243439FF151921FF1B1821FF19181EFF11191FFF14
                  282EFF63868AFF679498FF609093FF638F94FF6C9297FF749096FF293B42FF10
                  181FFF171921FF17171FFF161B20FF161A1FFF171A1FFF12191EFF15272BFF61
                  8083FF8CB3B5FF92BBBEFF9AC3C6FFA2CCD0FFACD8DBFFB1E0E3FFB8EAECFFC0
                  F0F2FFCAF4F7FFCFF5F8FFD0F6F8FFCFF6F8FFD3F5F7EDB5CDCF6F8B989C0800
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000097D9DB022A989A4B24C1C6D317D1D8FF17D4DAFF1CD4DBFF20D3DEFF24
                  D2DDFF28D3DCFF2AD4DCFF2CD3DCFF2FD3DCFF32D5DEFF35D5DFFF36D6DEFF37
                  D6DEFF3BD6DFFF3ED5DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D7DFFF4D
                  D9E0FF4FD9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E0FF55DAE2FF56DBE3FF56
                  DBE3FF57DBE2FF59DBE2FF5DDBE3FF5EDBE3FF5EDBE4FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF64DDE3FF66DEE4FF67DDE5FF69DEE5FF6BDFE6FF6CDFE3FF6E
                  DEE1FF6FDCDFFF6FDBDEFF70DADEFF6FD9DFFF6FD8E0FF70D8E1FF71DADEFF73
                  DDDFFF74DFE1FF76E0E4FF7AE1E5FF7CE1E6FF7CE0E5FF7BDDE2FF77D5DAFF7A
                  CCD3FF7CC4CCFF77BDC2FF6FB4B9FF6BAEB3FF65A7ADFF65A6ABFF6DA1A8FF3B
                  5B62FF091B23FF121E25FF121E23FF12191FFF18191FFF19191FFF101B20FF27
                  3F44FF709397FF648D92FF5E8D91FF629094FF75999FFF63777FFF1E262FFF14
                  1721FF161821FF151A21FF101B20FF131C22FF151B21FF12191FFF1C292FFF74
                  8D91FF81A3A7FF87ADB1FF8FBABDFF98C6C8FFA6D1D4FFACDCDEFFB7E7E9FFC0
                  EFF1FFCBF4F7FFCEF4F7FFCEF5F7FFCFF7F9FFD4F6F8FBC9E1E3B6909EA21E00
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000005EAAAE0D1FA1A5821BCCD1F112D4DAFF15D2D9FF1AD2DBFF1DD3DDFF20
                  D2D9FF26D4DBFF29D4DCFF2CD3DCFF2FD3DCFF32D5DEFF35D5DFFF36D6DEFF37
                  D6DEFF3BD6DFFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D8E0FF4D
                  D9E0FF4FD9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E0FF55DAE2FF55DBE3FF56
                  DBE3FF57DBE2FF59DBE2FF5DDBE3FF5EDBE3FF5EDBE4FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF64DDE3FF66DEE4FF69DDE6FF69DEE6FF6AE0E6FF6AE0E4FF6C
                  E0E3FF6DE0E2FF6EE0E2FF71E0E4FF73DFE6FF74DDE9FF75DDE9FF76E0E6FF74
                  E1E5FF73E3E6FF74E4E7FF79E3E7FF7EE2E8FF83E2E8FF83DEE5FF7FDAE1FF7D
                  D7DDFF76D0D5FF74CCD0FF70C5C8FF70BDC1FF6CB6BCFF69B0B7FF69A2A8FF20
                  4048FF0B1821FF131A22FF0E191EFF121C20FF161A1FFF14191EFF132226FF51
                  6B6FFF6C8E92FF5F888CFF5B8B8FFF649497FF74979DFF42515AFF161823FF15
                  1721FF161921FF10181FFF102127FF2E4045FF2F3D43FF18252BFF304248FF75
                  8F94FF78989CFF7FA5A8FF88B4B6FF93C2C4FFA4CFD2FFADDADDFFB6E5E8FFC1
                  EEF1FFCBF4F7FFCEF4F7FFCFF6F9FFCDF6F8FFD5F8FAFFD5EFF1E6A4B5B84D6A
                  7678040000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000009C
                  D5D80045A0A5261FADB4B916D0D7FB10D2D9FF17D3DBFF19D3DCFF1AD3DDFF20
                  D5DAFF25D5DAFF29D4DCFF2CD3DCFF2ED3DCFF32D5DEFF35D5DFFF36D6DEFF37
                  D6DEFF3AD6DFFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D8E0FF4C
                  D8DFFF4FD9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E1FF55DAE2FF56DBE3FF57
                  DBE3FF57DBE2FF59DBE2FF5DDBE3FF5EDBE3FF5FDBE4FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF64DDE3FF66DEE4FF65DDE6FF66DFE5FF67DFE5FF68E0E4FF69
                  E0E3FF6CE0E3FF6FE0E5FF72E0E6FF75E0E8FF76E0EAFF77DEEAFF79E0E9FF78
                  E0E8FF75E2E9FF74E3EAFF77E3E9FF7DE3E9FF85E3E9FF86E1E7FF84E0E5FF7D
                  DCE1FF78DADEFF72D6D8FF72D1D4FF74C9CEFF75C5CBFF76C2C8FF66A6ACFF20
                  474FFF081A21FF131820FF141A1FFF141A1EFF151A1FFF13191DFF18272CFF53
                  6B6FFF668689FF5D8588FF5C8C8EFF669597FF6C8D92FF222F37FF141721FF16
                  1822FF161921FF121920FF243A3FFF6C868AFF698387FF3F565AFF476266FF6F
                  8D91FF719195FF7EA1A4FF88B0B3FF94C0C2FFA5CFD2FFAEDADDFFB7E4E7FFC2
                  EEF1FFCCF4F7FFCEF3F7FFCEF5F8FFCEF7F9FFD3F7FAFFD9F7FAFCBBD1D38A6C
                  7C7F0D0000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000089
                  CACE0434A5AC4F26C5CEE312D1D9FF0FD2DAFF15D2DAFF18D2DCFF19D3DCFF1E
                  D5DAFF24D4D9FF29D4DCFF2BD4DCFF2ED3DCFF32D4DDFF34D4DFFF36D6DEFF37
                  D6DEFF3AD6DFFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D7DFFF4C
                  D8DFFF4ED9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E1FF55DAE2FF56DBE3FF57
                  DBE3FF57DBE2FF5ADCE3FF5DDBE3FF5EDBE3FF5EDBE3FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF64DDE3FF65DDE3FF64DEE5FF65DEE4FF67DEE5FF6ADFE6FF6A
                  DEE5FF6FDFE6FF72E0E6FF73DFE6FF76E1E7FF74DEE6FF77E0E7FF7BE0E8FF7E
                  E0E9FF7DE2E8FF7CE1E8FF7AE2E7FF7BE4E8FF7DE3E8FF80E3E8FF81E3E7FF82
                  E4E8FF80E2E6FF79DEE0FF79DCDFFF7ED8DDFF80D2D9FF81D1D8FF81CBD1FF6E
                  A6ABFF2A4B50FF111B22FF191A20FF18191FFF161A1FFF151A1DFF131C20FF1A
                  2B2FFF415B5DFF56787AFF598083FF678D90FF577276FF101C23FF151921FF15
                  1921FF181921FF171C23FF44595FFF7E9DA1FF76979BFF6B898EFF668489FF6B
                  8A8EFF739196FF82A1A5FF8EB2B6FF9BC2C5FFA6D0D3FFAED9DCFFB7E4E7FFC2
                  EEF1FFCAF4F7FFCDF5F8FFCEF4F8FFD1F8FAFFD0F5F8FFD9F9FCFFCFE8EBC4A2
                  B5B7330000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000065
                  B8BD0D24AAB1811ECED6F40BCFD7FF0CD3DAFF14D2DBFF19D2DCFF1BD3DCFF1F
                  D5D9FF24D4DAFF29D4DCFF2BD4DCFF2ED3DCFF31D4DDFF34D4DEFF35D5DEFF37
                  D6DEFF39D5DEFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF49D7DFFF4C
                  D8DFFF4ED9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E1FF55DAE2FF55DBE3FF57
                  DBE3FF57DBE2FF5ADCE3FF5DDBE3FF5EDBE3FF5EDBE3FF5FDDE2FF5FDDE2FF60
                  DEE3FF63DDE3FF64DDE3FF66DDE3FF67DEE5FF68DEE5FF69DEE5FF6ADFE6FF6C
                  DEE5FF71DEE6FF75DFE6FF7AE0E5FF7CDEE3FF7EDEE3FF7EDCE0FF82DBDFFF84
                  D8DDFF86D8DCFF87DADFFF87DEE2FF83E1E4FF82E4E7FF7FE3E7FF80E3E7FF83
                  E4E8FF84E3E8FF82E4E8FF7FE2E5FF85E0E5FF8ADFE5FF88DCE2FF8CDEE2FF93
                  D6D9FF4C767AFF0E1B22FF1A191FFF1A191EFF171B20FF161A1EFF14191EFF11
                  1A1EFF1E3033FF4E686BFF3C595BFF4C6668FF3D4F53FF111A1FFF161B20FF16
                  191EFF17181FFF181F26FF5D757BFF78999DFF6E9296FF6B8D92FF6B8B90FF6E
                  8E93FF78969BFF87A7ACFF93B8BCFF9EC7CAFFA9D3D6FFAFDBDEFFB7E4E7FFC1
                  EEF1FFC9F4F7FFCDF5F8FFCEF4F8FFD1F7FAFFD3F7F9FFD6F7FBFFDAF7F9EAB8
                  CDCF5F7B87870200000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000051
                  AEB4231DB5BDB013D0D8FE07D3D9FF07D4DAFF13D2DBFF1BD2DCFF1FD3DBFF21
                  D3DAFF24D3DAFF28D4DCFF2BD4DCFF2ED4DCFF30D4DDFF34D4DEFF35D5DEFF37
                  D6DEFF39D5DEFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF48D7DFFF4C
                  D8DFFF4ED9DFFF50DAE0FF52DAE0FF53D9E0FF54D9E1FF55DAE2FF55DAE2FF56
                  DBE2FF57DBE2FF59DBE2FF5DDBE3FF5EDBE3FF5EDBE3FF5FDDE2FF5FDDE2FF60
                  DDE2FF63DDE3FF64DDE3FF65DDE3FF68DCE3FF69DDE4FF6BDFE5FF6EE0E6FF70
                  DEE4FF77DDE3FF80DEE2FF7FD4D7FF80CBCFFF82C8CAFF83C5C6FF83C0C0FF84
                  BABCFF87B9BBFF8BBEC0FF8CC6C7FF87CBCBFF82D0D1FF84D8DBFF8AE2E5FF86
                  E1E6FF86E2E8FF84E5EAFF86E8EBFF88E3E8FF8CE3E9FF8DE5EBFF8EE4E7FF90
                  D6D9FF265155FF0B1920FF1A181FFF1C191FFF16191EFF141A1FFF151B20FF12
                  1A1EFF283539FF4C5E61FF16282BFF192629FF1B2328FF151A1EFF15191DFF18
                  1A1EFF13181EFF1A272EFF739093FF6F9397FF699094FF698E92FF6C9094FF73
                  979BFF7EA1A5FF8CB2B6FF97C3C6FFA1D1D3FFADD9DCFFB3E0E3FFBAE7EAFFC2
                  EFF2FFC9F4F7FFCCF5F8FFCFF5F9FFD0F5F9FFD3F7FAFFD4F7FAFFD7F7F9F7C0
                  D8D9997683830B00000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000031
                  9BA34B1BBEC7D70BD1D9FF05D3D8FF05D4DAFF13D2DCFF1CD1DCFF21D3DAFF23
                  D3DAFF24D3DBFF28D3DBFF2BD4DCFF2DD4DCFF30D4DDFF33D3DDFF35D5DEFF37
                  D6DEFF39D5DEFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF48D7DFFF4C
                  D8DFFF4ED8DEFF50D9DFFF52DAE0FF54D9E0FF54D9E1FF55DAE2FF55DAE2FF56
                  DAE2FF57DBE2FF59DBE2FF5DDBE3FF5EDBE3FF5EDBE3FF5FDDE2FF5FDDE2FF60
                  DDE2FF63DDE3FF64DDE3FF64DDE3FF63DDE5FF67DEE5FF6CDFE3FF75DEE2FF7D
                  DCE0FF82D3D5FF78BABBFF85B9BBFF9DC3C6FFADCACDFFB5CCCEFFBED3D3FFC6
                  D8D7FFC9D8D8FFC3D3D3FFB6CDCCFFABCACAFF9CC4C6FF88B9BCFF80BBBDFF8A
                  D4D8FF8BE0E4FF84E2E6FF84E6E9FF86E3E8FF89E6EBFF89E6EBFF92E8EBFF73
                  B3B7FF112E34FF101921FF1C1821FF1C1720FF191B22FF253237FF1C2C31FF0F
                  1E23FF37484EFF36454BFF121C22FF151A1FFF15191EFF161B1FFF161A1DFF18
                  191DFF151C21FF374A4FFF739597FF699093FF668E92FF6C9296FF71979CFF7A
                  A1A6FF85ADB2FF93BEC3FF9ED0D2FFA8DDDEFFB3E3E5FFB7E7E9FFBCEBEEFFC4
                  F1F4FFC9F5F8FFCCF5F8FFCFF5F9FFD2F6FAFFD2F6F9FFD4F6F9FFD8F9FBFDCE
                  E6E7C57B8A891800000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000B1E3E70327
                  99A1721AC4CFEE09D3DAFF06D4D7FF06D5DAFF13D2DCFF1CD2DCFF20D4D9FF22
                  D2DCFF25D2DCFF29D3DBFF2BD4DCFF2DD4DCFF30D4DDFF33D3DDFF35D5DEFF37
                  D6DEFF39D5DEFF3DD6DFFF40D6E0FF43D6E0FF46D7DFFF48D7DFFF48D7DFFF4C
                  D8DFFF4ED8DFFF4FD8DFFF52DADFFF54D9E0FF54D9E1FF55DAE2FF55DAE2FF56
                  DAE2FF57DBE2FF59DBE2FF5DDBE2FF5EDBE3FF5EDBE3FF5FDDE2FF5FDDE2FF60
                  DDE2FF63DDE3FF64DDE3FF63DEE4FF62DCE5FF69DCE4FF76DFE4FF7ED6D9FF7E
                  C5C6FF7FB3B3FF9CC1C0FFC6DEDEFFE1EDEFFFEDF2F5FFF2F4F7FFF2F5F5FFF3
                  F5F4FFF6F5F5FFF6F6F6FFF1F5F4FFEAF3F2FFE0EDEDFFCBDDDDFFA7C3C4FF87
                  B4B5FF89C7C8FF90DFE1FF8BE6EAFF89E4E9FF87E6EBFF87E5EAFF97E8EDFF57
                  8D93FF0C222AFF121922FF14171FFF191A22FF181F26FF4F666BFF4E6C70FF26
                  4347FF465E63FF26383DFF101920FF161A20FF15181DFF151A1FFF161A1FFF18
                  1A1EFF171E22FF54666AFF6E8F92FF648A8DFF668C90FF6E9397FF769CA1FF81
                  A9AEFF8EB7BCFF9DC9CDFFA8D9DCFFB1E5E7FFB9EAEBFFBCECEEFFC0F0F2FFC4
                  F3F5FFC9F5F8FFCCF5F8FFCEF4F8FFD3F7FBFFD5F7FBFFD4F6FAFFD6F8FAFFD7
                  F1F1DB7F908F2784919101000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000061A0A50D2B
                  A8B29D1ACDD8F706D2DAFF06D2D9FF09D4DBFF13D2DCFF1AD3DBFF1ED5D8FF22
                  D3DBFF24D2DCFF28D3DBFF2BD4DBFF2ED4DCFF30D4DDFF33D3DDFF35D5DEFF37
                  D6DEFF3AD6DEFF3DD6DFFF3FD7E0FF43D6E0FF46D7DFFF48D6E0FF4AD6DFFF4C
                  D7DEFF4CD8DEFF4DD9DDFF51D9E0FF54D9E1FF55D9E2FF55DAE2FF57D9E2FF57
                  DAE2FF57DBE2FF58DBE2FF5BDBE2FF5EDBE1FF60DBE1FF60DCE3FF5FDCE4FF60
                  DCE3FF60DCE2FF63DDE3FF64DDE5FF67DDE5FF77DBE2FF7ECCD0FF84BBBDFFA3
                  C9C9FFCCE2E1FFEAF4F3FFF6F8F6FFF8F6F6FFF9F4F5FFF8F5F6FFF7F7F3FFF9
                  F8F3FFF9F6F4FFFAF5F5FFF9F6F5FFF9F7F6FFFAF7F6FFFAF7F6FFF4F4F5FFD8
                  E4E3FFB2CCCAFF87B8B8FF8DD3D7FF94E4EAFF8CE5EAFF8AE6EBFF98E6EBFF63
                  979CFF0D252BFF0E1820FF111A21FF101A21FF14222AFF607C81FF6E9396FF5C
                  8284FF56787CFF455D63FF27353BFF151C22FF13191EFF131B1FFF141A1FFF18
                  1A20FF171B20FF303A40FF4F666BFF5E7C80FF68888DFF709298FF7A9FA4FF86
                  AFB4FF93BEC3FFA3D0D4FFAFDFE3FFB7EAEDFFBCEEF0FFC0F0F2FFC3F3F5FFC5
                  F4F7FFC7F5F8FFCAF4F8FFCFF6F9FFD0F6FAFFD3F6F9FFD6F8FBFFD6F8FBFFDB
                  F6F7EBA9BCBB5371808004000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000B4E7E8003889901E26
                  B1BCC315D0D9FD02D2DCFF04D1DDFF0BD2DBFF12D2DBFF19D3DAFF1ED4D8FF22
                  D4D9FF23D3DAFF27D4DAFF2DD4D9FF30D4DBFF30D4DEFF34D3DFFF35D5DFFF37
                  D5DDFF3DD6DEFF3DD6DFFF3FD6E0FF42D6DFFF44D6E0FF48D5E1FF4CD5E1FF4E
                  D8DDFF4BDBDAFF4CDCDBFF50D8DFFF55D7E4FF55D8E4FF56D8E2FF5CD8E2FF5A
                  D9E2FF58DAE2FF56DBE0FF58DCE0FF5EDCDFFF64DBDFFF61DAE3FF60DAE6FF60
                  DAE5FF5FDDE1FF63DDE4FF67DCE5FF71DBE0FF7CCACCFF8ABABBFFBCD5D5FFE1
                  F1F0FFEFF6F6FFF4F6F5FFFAF6F4FFFAF4F3FFF9F5F5FFF8F6F6FFF8F7F0FFF8
                  F8F0FFF7F6F2FFFAF5F6FFFAF5F6FFF8F5F6FFF7F7F7FFF7F5F3FFFBF7F5FFF9
                  F6F6FFE8EEEDFFB3C9CBFF91BDC2FF92D2DAFF92E4ECFF8CE4EAFF94E5E9FF87
                  C4C5FF204446FF0C1B21FF111A20FF111921FF111C25FF394E53FF5C7B7BFF5D
                  8182FF5B8185FF5D7B82FF45585EFF151F23FF111A1CFF131D21FF131920FF18
                  1820FF191821FF171B23FF1E2C33FF475B62FF67848AFF6E9096FF78A0A4FF85
                  B1B5FF92C1C4FFA2D3D5FFAFE2E4FFB7ECEEFFBCF2F3FFC1F3F3FFC4F4F5FFC5
                  F3F9FFC7F3FAFFCBF4F8FFCDF6F8FFCEF7FAFFD2F7F8FFD6F8F8FFD8F8FBFFDC
                  F6F9F9CCE0E18061727307000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000009CD3D4043D9DA43F1F
                  BBC6E20ED1D9FF00D3DBFF02D1DCFF09D1DAFF15D4DBFF1AD1D8FF20D2D9FF23
                  D3DAFF22D1DBFF27D2DBFF2ED2DAFF33D3DDFF34D2E0FF36D2DFFF35D5DDFF38
                  D6DBFF3FD5DCFF3ED5DCFF3ED5DDFF42D7DEFF46D7E0FF48D5E2FF49D5E0FF4C
                  D9DCFF4FDBDAFF4EDADBFF50D9E1FF55D8E5FF53D6E2FF56D9E2FF59D8E2FF5C
                  D9E3FF5BD9E2FF59DAE0FF5BDCE0FF60DBE0FF65DAE0FF61DBE5FF5FD9E6FF62
                  DBE6FF5FDDE0FF66DCE2FF74DCE2FF76C6C7FF8BBCBBFFC5DCDAFFEFF5F3FFF5
                  F8F6FFF7F7F5FFF8F5F4FFFCF7F2FFFBF6F2FFF9F4F1FFF9F6F4FFF9F7F1FFF8
                  F7EFFFF9F7F2FFF8F4F4FFF8F5F6FFF7F5F5FFF7F5F3FFFAF6F3FFFBF6F3FFF9
                  F5F4FFF6F5F5FFF0F9F8FFC3DADAFF91BBBFFF93D7DCFF92E4EAFF92E5ECFF99
                  E1E4FF629898FF153538FF081A1DFF111C20FF101A20FF111C21FF203436FF34
                  5354FF60868AFF5F8085FF374D52FF131C1DFF171B1CFF141A1FFF141A21FF15
                  181EFF15181FFF151B21FF0B1A1EFF3E5358FF638185FF6B9093FF77A0A3FF83
                  B1B4FF90C1C3FFA1D3D4FFB0E2E3FFB9EDEDFFC0F2F2FFC5F4F2FFC7F4F3FFC6
                  F3F7FFC9F3F8FFCDF5F8FFCFF6F8FFD0F6FAFFD2F6F8FFD5F7F8FFD6F7FBFFDB
                  F6FAFED6EBED9F7A8C8D10000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000073B2B6083CAAB15F1A
                  C7CFF109D4D7FF00D3D9FF02D3DBFF08D2D8FF15D2D9FF1ED0D8FF22CFD6FF24
                  CDD5FF27CCD8FF2BCBD7FF30CBD5FF35CAD7FF36CAD8FF38CBD8FF35D1D7FF38
                  D3D6FF40D1D6FF43D4DAFF40D5DBFF40D7DCFF47D8DFFF47D7E1FF45D6DEFF47
                  D8DCFF50DADDFF50D7DDFF4DD6DFFF52D6E1FF51D4DDFF54D6DBFF55D4DBFF59
                  D3DAFF5BD3D9FF5BD4D9FF5ED4DAFF61D3DAFF60D3DAFF5DD4DDFF60D5DFFF61
                  D5DDFF67DBDFFF6CD5D9FF7BCDD0FF84B3B2FFCAE1DEFFEBF0EDFFF4F2EEFFF2
                  F0EEFFF1EEEDFFF4EFEDFFF4EEE9FFF7F1EBFFF7F2EDFFF5F0EDFFF6F2F0FFF7
                  F3F0FFF8F4F1FFF8F7F3FFF7F6F2FFF7F6F2FFFCF6F3FFFBF5F1FFFAF5F2FFF5
                  F5F3FFF4F5F2FFF0F4F0FFE8F3EEFFBFD5D3FF86B6B7FF91D7DBFF8DDDE7FF93
                  DFE7FF93D5DAFF639498FF2E5050FF16292BFF111E22FF111A20FF0C1C20FF37
                  5355FF64898DFF608488FF344B4DFF141B1DFF1B191DFF191820FF141A21FF15
                  2122FF182526FF0E1B1DFF172A2DFF4B6567FF618083FF688E90FF749C9FFF83
                  ADB0FF90BCBFFFA0CDCFFFADDCDDFFB8E5E7FFBFECECFFC3EEEBFFC3EFEDFFC3
                  EEF1FFC6EEF0FFCBEFF0FFCEEFF2FFCDEFF4FFD0F0F4FFD2F2F5FFD2F3F7FFD8
                  F4F8FED5E9EBC2A8B9BB29000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000005EA4AA0B36AEB57A15
                  CDD4FA05D3D6FF00D3D6FF03D3DAFF09D2D6FF12CCD2FF19C7CEFF1FC2C9FF24
                  BDC5FF2BBAC4FF2EB7BFFF30B5BCFF32B3BDFF32B3BFFF34B7C0FF32BFC2FF37
                  C5C6FF40C6CBFF42C8D1FF40CED6FF41D5DBFF46D7DFFF48D8E0FF45D7DEFF46
                  D8DEFF4ED8DFFF50D6DFFF4DD1DAFF52CFD7FF53CCD1FF4FC9C9FF50C4C7FF52
                  C0C1FF55BEC0FF56BEC2FF59BDC4FF5BBDC5FF5ABDC5FF57BEC3FF5AC1C5FF5F
                  C5C9FF66CBCFFF70C5C9FF6BA4A5FFB6C9C8FFE0E2DFFFE8E0DDFFE5DCD9FFDD
                  D6D5FFDCD5D6FFDCD5D4FFE0D7D4FFE1DBD6FFE3DEDAFFE8E2E3FFECE7E8FFF0
                  EAEBFFF6F2EFFFF5F4F0FFF5F7F0FFF7F6EFFFFCF5F0FFFBF3F0FFFAF6F3FFF4
                  F3EFFFF1EFEBFFECE9E5FFE8E8E3FFDCDFDCFFA0B8B6FF7BACADFF85C6D0FF81
                  C7D1FF87CAD1FF88C3CAFF73A4A6FF537376FF30454AFF18262DFF112328FF54
                  6F74FF678C90FF65898BFF4E6867FF1E2527FF1C1820FF1B1622FF151A22FF2D
                  3B3AFF42514FFF202E2FFF293C3EFF51696BFF597778FF608284FF6D9092FF7C
                  A0A2FF89ACAFFF96BABCFFA2C7C8FFAACFD0FFB0D5D6FFB2D7D6FFB0D8D6FFB1
                  D8D9FFB5D8D7FFBBD9D8FFBCD7DBFFBBD7DEFFBFDCE1FFC3E1E4FFC6E5EAFFCD
                  EAEDFFD9EDEEE0BCCDCE3E000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000004D9FA4122EAFB69310
                  CFD6FE04D3D6FF00D3D7FF02D2D8FF09CFD4FF13C6CBFF1EC0C3FF27B2B5FF38
                  A7ACFF419FA3FF45999AFF459697FF469599FF45959BFF45999EFF44A3A2FF44
                  ABACFF47B6BCFF44BDC8FF3FC5D1FF40D1D9FF43D6DEFF47D8E0FF47D7DDFF48
                  D7DEFF4ED7E0FF51D3DDFF55CAD3FF61BFC5FF64B6B6FF62B1AEFF63A9A8FF5E
                  A09FFF5D9E9CFF5D9D9EFF5F9D9EFF629DA0FF629CA1FF65A0A1FF66A5A4FF67
                  AFB0FF6AB7BCFF69A3A7FF809C9DFFD5D1CEFFDCCFC9FFD9C9C2FFD0BFB9FFC6
                  B6B2FFC1B1AFFFC2B2AEFFC2B3ADFFC5BAB5FFCCC5C2FFD2CCCFFFD4CED3FFDA
                  D5D6FFE2DDDBFFEDEBE7FFF4F5EEFFFAF8F2FFFBF5F2FFFDF6F3FFFBF4F0FFF4
                  EDE5FFEFE2D9FFE8D8D1FFDECDC8FFDAC7C2FFBFB8B0FF7E8982FF7D999BFF82
                  A7A9FF7DA9ACFF78ACB2FF78B0B5FF7FAEB3FF7C9B9FFF617374FF4C5A5AFF72
                  8483FF768E8CFF708883FF71847DFF484E4BFF1E1B21FF1B1822FF1E2025FF56
                  5D58FF727871FF5E6360FF505855FF5A6763FF5C6C69FF647673FF6E7F7CFF7B
                  8C89FF869692FF91A09BFF9AA9A3FF9FB1A9FFA2B5AEFFA2B7AEFFA2B8AFFFA3
                  B9B0FFA7B9AFFFA8B9B1FFA4B7B7FF9EB7BDFFA5BFC2FFAEC9CBFFB5D3D6FFBF
                  DBDCFFD2E8EAEBBACBCD4B000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000052ACAF1F26AFB4A70F
                  D2D9FE03D2D7FF00D3D9FF02D2D9FF0BCCD3FF15BFC4FF27B5B7FF2A8E8FFF39
                  7677FF4A6F6EFF506C66FF526A65FF536A68FF536A6AFF526D6CFF4E7371FF43
                  7A7BFF469BA2FF45B3BFFF3DC1CDFF3ECED7FF41D6DEFF44D9DFFF46D8DDFF4B
                  D6DEFF50D5DFFF55D0D9FF60BEC5FF669A9DFF65827FFF677F79FF697975FF68
                  7773FF677571FF677573FF677572FF687673FF6A7675FF6C7773FF667E77FF60
                  8D8AFF6BA4A8FF6E9297FFA8AFAEFFAC9791FFAF958AFFAD9184FFAA8D80FFA6
                  877BFFA38479FFA38479FFA3867CFFA18A82FFAD9F9BFFA9A2A3FFA09A9EFFA9
                  A4A6FFB2AFADFFB9B7B3FFD0D0CAFFEBE9E5FFF9F5F2FFFCF6F2FFFBEFEAFFD8
                  C6BBFFC1A699FFC1A395FFBC9C91FFBB988CFFB39384FF9B8677FF807A6EFF88
                  8B7FFF7F8E88FF719598FF6AA0A3FF76A9ABFF84A3A1FF838C83FF7E7D73FF7F
                  7F75FF787C71FF787B6EFF7A7B6CFF6E6A5EFF3A3431FF1D1A1CFF2F2B29FF6E
                  695CFF797264FF73695EFF6C6559FF676357FF666457FF6E6E60FF787668FF85
                  8171FF8E8978FF98917EFF9F9883FFA59F88FFABA58CFFABA68DFFAAA78FFFAC
                  A790FFADA88FFFA7A895FF96A099FF8A9FA1FF90A7A9FF9DB5B6FFA7C3C6FFB4
                  D0D2FFC8DDDFECB9CACC56858F91000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000004DB5B62F20B0B6B70D
                  D3DAFE01D2D7FF00D2DAFF02D0DAFF0BC9D2FF19BABFFF34A9ABFF386E6CFF46
                  4A46FF5C4841FF66493FFF6B4840FF6D4742FF6E4845FF6E4945FF644A46FF4C
                  4F4EFF4B8388FF46AAB4FF38BAC3FF3DCCD3FF42D5DDFF40D8DEFF45D9DDFF4F
                  D6DEFF52D3DCFF5ACAD0FF68A7A9FF666969FF73544FFF79554EFF7A544DFF7E
                  564FFF7F5750FF7E5852FF7C5A50FF7A5B50FF7C5B51FF7D5B50FF6B6156FF63
                  7974FF678E92FF85989CFFB2A8A6FF88645AFF8C6253FF8F6450FF946450FF97
                  6350FF986451FF986652FF926452FF896659FF8B746EFF918989FFA8A5A5FFBB
                  BBB9FFCDCCCBFFD5D1CFFFC7C2C1FFC3C1C0FFDEDDDBFFF6EFEBFFF0DDD5FFB0
                  8E7FFF9B715FFFA27560FFA3755FFFA77560FFA8775FFFA6795FFFA17B61FF9A
                  7B61FF897C6BFF6C807CFF628E8FFF709D9BFF7F968CFF877D68FF8F765EFF8C
                  735CFF877059FF897057FF8C7458FF8B745BFF6D5C4BFF312319FF4E4033FF82
                  6E58FF886F57FF866C55FF806951FF7D674EFF7C674EFF846F52FF8E775AFF9B
                  8261FFA68967FFAC906BFFB2956EFFBB9D72FFC5A474FFC6A475FFC6A477FFC6
                  A578FFC6A77BFFB4A381FF8B8B7AFF748482FF798E8EFF899E9FFF98AFB4FFA8
                  C1C3FFBFD5D6EDB8C8CA64868F92020000000000000000000000000000000000
                  000000000000000000000000000000000000000000000044B4B4381EB2B7C20D
                  D2DAFE01D1D7FF01D1DAFF06CFDCFF0AC7D2FF19B5BAFF3AA0A1FF4D6663FF63
                  453FFF7A443AFF80443BFF83443CFF85433DFF88453FFF8A463EFF83473EFF66
                  4A46FF54797BFF45A1A7FF3AB6BBFF42CBCEFF47D5DCFF45D7DEFF47D7DDFF4F
                  D6DEFF50CFD5FF60C2C3FF648682FF725752FF8C5149FF915349FF8E5246FF94
                  564AFF96554AFF96564BFF935849FF915A48FF925A49FF8F5B4CFF766056FF6E
                  7B78FF617D80FF98A1A3FFB8A5A2FF916157FF966050FF9B614DFFA2634CFFA4
                  624CFFA3624BFFA1644DFF9C6450FF906557FF917670FFA0999AFFB1B1AFFFC8
                  CAC6FFDFDEDCFFF4F0F0FFF4EFF0FFE1DFDEFFC2C1BDFFDDD1C9FFD2B6AAFFA0
                  715FFFA7715BFFAA7358FFAC7457FFB0745AFFAD785BFFAA7A5CFFAC7A5EFFA9
                  7B5DFF917962FF616D68FF56797BFF688E8AFF829081FF977F65FFA27A5BFF9F
                  7859FF9D7558FFA07556FFA57857FFA47A5AFF98765CFF664B36FF785B46FF97
                  7457FF997556FF967254FF927051FF906F4EFF91714EFF987751FFA27F57FFAF
                  895FFFB88F63FFBC9465FFC19967FFCAA06BFFD4A56BFFD5A56EFFD5A570FFD7
                  A671FFD6AA72FFBEA279FF817A63FF5A6764FF637575FF788A8BFF8B9EA2FF9C
                  B2B5FFB7CBCDF0B7C7C875879193050000000000000000000000000000000000
                  00000000000000000000000000000000000000000000003AAFB13F1FB5BBCB0F
                  D1DAFF03D1D6FF04D0DAFF07CFDBFF07C5D0FF16B0B5FF379899FF52625EFF6F
                  453DFF87443AFF89443AFF8A433BFF8C433CFF8F453DFF91473BFF8C483BFF6F
                  4A42FF567373FF46999DFF3CB0B4FF46C8CBFF4AD4DBFF49D7DEFF4AD6DDFF4E
                  D2D9FF53CACDFF63B1AEFF646A61FF7E5349FF945348FF945345FF945443FF9A
                  5746FF9B5747FF9C5748FF9A5947FF985A45FF945B47FF8A5B4DFF70625BFF67
                  7675FF5C6F71FFAAADADFFB8A29EFF956057FF9A5E4FFFA05F4DFFA7614CFFA8
                  614CFFA5604BFFA5654EFFA06450FF936557FF8A6E69FF928D8EFFA4A6A5FFBE
                  C0BCFFDCD9D8FFF4EFEFFFF8F4F5FFF7F5F3FFE8E1DBFFBEA99EFFA87F70FFA6
                  6E5AFFAC7158FFAE7456FFB17557FFB27659FFAC785BFFA9795EFFAE785FFFAC
                  7B5FFF917760FF545C57FF496669FF5F7F7EFF808A7CFF9F8266FFAB7F5DFFAB
                  7D5CFFAA7B5CFFAF7A5BFFB47D5BFFB37E5BFFAC7E5DFF9E765AFF9D755AFFAA
                  7B5BFFA67A58FFA17957FF9E7955FF9E7854FFA07A54FFA57F56FFAE865BFFBA
                  8F61FFC19565FFC69865FFC99C66FFCFA16AFFD7A46BFFD6A46EFFD7A570FFDA
                  A76FFFDBAA70FFC1A074FF726750FF404B48FF4E5D5EFF677676FF7D8F92FF92
                  A6A9FFAEC2C4F3B6C6C7838A9496070000000000000000000000000000000000
                  00000000000000000000000000000000000000000000002AA9AE4A1FB8C1D712
                  D1DBFF04D1D6FF04D1D8FF07CFDAFF08C5CEFF16ADB5FF349497FF4C615EFF6B
                  443DFF86433BFF8A433BFF89433CFF8A433DFF8D453DFF8E493BFF89493BFF6D
                  4C42FF556F70FF47939AFF3EACB3FF45C6CBFF48D4D9FF49D6DDFF4DD5DDFF51
                  CDD5FF5EC1C4FF669691FF715A4FFF865446FF905345FF925445FF975644FF97
                  5743FF985745FF995748FF985748FF955A46FF8B5C47FF795D52FF636968FF59
                  7175FF6A7678FFBFBCBAFFBAA49EFF946154FF9A5F4FFFA1604DFFA6614EFFA6
                  624FFFA2644FFF9E634DFF9D644FFF926354FF886A64FF8A8585FF9B9D9CFFBC
                  BDBAFFDBD5D5FFF2EBECFFF9F7F4FFF8F5EEFFF6E8DDFFB69384FFA16D5AFFAB
                  6F59FFAE7258FFAD7457FFAF7557FFAF7658FFAD775BFFAC785EFFB07761FFAE
                  7A60FF91735DFF4F534CFF425B5DFF5A7677FF7D857AFF9F8569FFB08361FFB3
                  8260FFB48061FFB88061FFBC825FFFBC855DFFB9865EFFB48762FFB38462FFB6
                  815EFFAF805CFFAB815BFFAB815BFFAB825BFFAD845CFFB2875DFFB98D61FFC3
                  9465FFC89967FFCC9B69FFCE9E6AFFD2A26CFFD5A46EFFD2A372FFD2A573FFD7
                  A770FFDAAB70FFC09E72FF695C47FF343B3BFF424E50FF5C6A6AFF738587FF8B
                  9FA2FFA8BDBEF6B7C7C8908F989B0A0000000000000000000000000000000000
                  00000000000000000000000000000000000000000000001BA6AA571ABBC3E211
                  D2DBFF03D2D6FF02D3D7FF07D0D8FF09C5CEFF1AACB6FF349398FF476261FF68
                  4440FF85433CFF8B433BFF89433DFF8B433FFF8E453EFF8E483BFF86493BFF6B
                  4C44FF536D70FF458E9BFF3AA8B4FF3FC2C9FF45D3D8FF48D7DDFF4DD4DCFF54
                  C9D1FF66B3B5FF657975FF7D5347FF895344FF905345FF975346FF9A5443FF9C
                  5744FF9A5746FF9A5749FF9A574AFF955949FF845C4BFF6D625AFF5D7477FF56
                  757DFF868F92FFCDC8C4FFC1ACA2FF936452FF99614DFF9F604CFFA4624DFFA2
                  634FFF9D644FFF9B644CFF9E664FFF966655FF89685EFF8D8580FF9FA09DFFBB
                  BBBAFFDDD4D6FFF3ECECFFF7F6F2FFF6F2E8FFE1CBBCFFAD806EFFA76C58FFAD
                  7059FFAB7158FFAC7459FFAD7558FFAE7758FFB2785AFFB4775DFFB77761FFB2
                  7B5FFF96745AFF555349FF465A59FF5C7576FF7D837BFFA1856BFFB38562FFB9
                  8461FFBB8362FFBE8463FFC08660FFC18A5EFFBE8C5EFFBA8C61FFBA8A61FFBA
                  875EFFB7855DFFB4865DFFB4875EFFB5895FFFB78A5FFFBB8D62FFC29265FFCA
                  9768FFCF9B69FFD29E6BFFD4A06CFFD6A26CFFD6A46DFFD2A471FFD2A672FFD6
                  A86FFFD9AB6FFFC09D71FF6A5B46FF35393AFF434C51FF5B686AFF718386FF8A
                  9FA1FFA9BDBFF7BACACB96939C9F0C0000000000000000000000000000000000
                  000000000000000000000000000000000000000000000017A5AA621ABCC5E80F
                  D0DCFF02D1D6FF03D4D8FF06D1D6FF09C4CCFF16ACB6FF309399FF476261FF6A
                  4541FF85433BFF8A433AFF8A423CFF8D423EFF8F453DFF8E483AFF85493CFF6A
                  4A44FF52686DFF408995FF34A2ADFF3ABCC2FF43CFD3FF49D3DBFF50CFD9FF5A
                  C2C9FF6C9C9BFF695F59FF8B5047FF935146FF955448FF975445FF9D5644FF9D
                  5643FF9D5846FF9A5749FF975849FF8F5A4AFF785C52FF626B68FF598487FF54
                  7F82FF9EACACFFDAD2CEFFCDB3A9FF946553FF9A624DFF9F614CFFA2624DFFA2
                  634FFF9F634EFF9D644DFF9D654EFF936454FF87685FFF8E8380FFA19F9BFFBE
                  BBBBFFDBD5D6FFF2EEEDFFFAF4EDFFF4E5D7FFB89582FFA5715AFFA96E55FFAA
                  7057FFAA7158FFAB735AFFAD7559FFB07758FFB4775AFFB6765DFFB5785DFFB1
                  7A5DFF98735BFF58514AFF4B5A59FF5E7576FF7C837CFFA2846AFFB28461FFB7
                  8762FFB78561FFBF8763FFC48761FFC48A5FFFC08E60FFBF9061FFBE8D60FFBD
                  8B5EFFBC8A5FFFBC8D63FFBB8D60FFBC8F62FFBE9165FFC09165FFC79567FFCD
                  9B69FFD09D6AFFD29E6CFFD2A06BFFD3A26BFFD3A46EFFD3A670FFD6A76FFFD9
                  A96EFFD7AB70FFBD9F73FF70654DFF3F4643FF4A575BFF607075FF7A8C8EFF8E
                  A4A6FFABC1C3F8BCCCCF98969FA30D0000000000000000000000000000000000
                  00000000000000000000000000000000000000000000001DA8AF641BBEC8E90E
                  D1DDFF03D2D8FF04D4D8FF07D1D6FF0AC6CBFF13ACB6FF2E939BFF496260FF6C
                  4540FF854339FF8A4438FF8B433CFF8D433DFF8F453DFF8E483BFF85463CFF70
                  4944FF556164FF408289FF339AA1FF3BB3B9FF43C6CBFF4DCDD9FF54C6D2FF5F
                  B8BCFF667E78FF75564CFF905047FF985048FF975347FF955445FF9B5543FF9D
                  5643FF9C5746FF975748FF935948FF845B4CFF68605BFF577577FF599394FF55
                  8987FFABBEBCFFE0D7D5FFD3B6AFFF936454FF9A604FFF9F614DFFA1614DFFA3
                  634FFFA2634FFFA1644FFF9F6451FF916456FF856962FF8E8482FFA39F9CFFC0
                  BCBBFFDAD5D6FFF0EBEAFFFAEFE5FFD7BDADFF9F715CFFA56E55FFAA7057FFAA
                  7158FFAC735AFFAC745AFFAD7558FFB07758FFB6775BFFB6775CFFB2795CFFAF
                  7B5CFF98735DFF57504CFF4C5B5AFF5C7676FF7A837DFFA2836CFFB48463FFB4
                  8662FFB68762FFBE8662FFC58762FFC48A62FFBF8D61FFBF8F61FFC18F61FFC0
                  8E61FFBE8F65FFBB8D65FFC19165FFC09266FFBF9468FFC0956BFFC4976CFFC9
                  9B6DFFCC9C6DFFCC9E6EFFCDA06EFFCDA26FFFCAA372FFCEA571FFD4A670FFD5
                  A771FFD1A975FFBAA179FF7F7760FF56615AFF5D6F73FF708489FF899D9EFF9A
                  B1B2FFB3C9CBF7BFD0D39895A1A40C0000000000000000000000000000000000
                  00000000000000000000000000000000000000000000001CA5AC651ABBC5E90C
                  CFDBFF03D2D9FF02D2D7FF08D2D6FF0BC6CBFF14ACB6FF2F939BFF496260FF6B
                  4540FF85433AFF894439FF8B443BFF8C433CFF8D453DFF8E463EFF89463DFF79
                  4942FF5B5754FF487577FF398D93FF3AA5AFFF43B8C2FF4CBFCBFF59BCC7FF61
                  A3A4FF65655CFF7E5245FF915245FF965147FF935348FF935446FF9B5545FF9A
                  5545FF955746FF925947FF8D5A49FF765D51FF596C6AFF508488FF599EA1FF5B
                  9392FFABC1BFFFE6E1DFFFD3B9B3FF936355FF9A604FFF9F614EFFA2614DFFA3
                  634FFFA2634FFFA1644FFF9F6552FF916456FF856962FF8E8583FFA29D9CFFBD
                  BAB9FFDAD6D7FFF2EAE9FFEEDACFFFB28F7CFFA06E56FFA86E57FFAA6E58FFA9
                  6F58FFAD7158FFAC7357FFAD7558FFB07758FFB5775BFFB6775BFFB27A5BFFAF
                  7C5CFF97745EFF55504CFF495B5AFF597776FF77857FFF9A826FFFB18366FFB9
                  8565FFBA8562FFBF8662FFC28861FFC08A62FFBE8D62FFC08F61FFC58F64FFC0
                  8C65FFB68964FFB48966FFB78A65FFB88E68FFB6916BFFB2916DFFB59370FFBB
                  9873FFBD9B72FFBE9D73FFBF9D74FFBF9F76FFBDA078FFC0A278FFC5A378FFC7
                  A478FFC3A67DFFB2A081FF8B8975FF6F7E7AFF74888DFF84999FFF98ADB0FFA6
                  BFC0FFBAD1D3F6C1D3D69594A0A30B0000000000000000000000000000000000
                  00000000000000000000000000000000000000000000001EA4A95F1BBBC4E70B
                  D0DBFF02D1D9FF01D2D7FF08D2D6FF0BC6CBFF14ACB6FF30939BFF496260FF6B
                  4540FF83433BFF87443AFF8D433AFF8D443BFF8D453DFF8D463FFF8C473FFF82
                  473FFF6C4E45FF56625FFF457C81FF3D95A0FF41A9B4FF4AB0BCFF5DABB3FF67
                  8785FF72574CFF8B5142FF915243FF945246FF925348FF925446FF985447FF96
                  5548FF935848FF915B46FF845A4BFF69615BFF4F7B7EFF4C9298FF5DACB0FF64
                  A1A2FFA0B7B6FFE8E5E4FFD1BAB4FF936355FF9B6050FFA0614EFFA3614DFFA3
                  634FFFA2634FFFA1644FFF9F6551FF906455FF846961FF8E8583FFA4A09FFFBC
                  B9B9FFD9D4D4FFF0E2DEFFCDAD9FFFA2755EFFA66E54FFA76D56FFA96E5AFFAB
                  6F59FFAE7156FFAF7557FFAD7558FFB07758FFB5775AFFB5785BFFB07A5BFFAE
                  7D5CFF95745DFF54514CFF465B5BFF567777FF6F8885FF898C7FFF9F8570FFB2
                  8469FFBC8562FFC28862FFC38960FFC08A61FFC18C63FFC48D64FFC68E66FFC0
                  8A66FFA17859FF7D6047FF745F4BFF766754FF7D725FFF817C69FF868572FF90
                  917DFF999882FF9F9E86FFA0A08AFFA0A08DFFA2A18CFFA5A28CFFA8A38CFFAA
                  A38CFFA9A38DFFA1A291FF919C92FF849A99FF88A2A7FF94B0B5FFA6BFC3FFB2
                  CDCFFFC2DBDDF4C4D6D98E909C9F0A0000000000000000000000000000000000
                  000000000000000000000000000000000000000000000026A7AC571CB9C2E10B
                  D0DAFF01D1D9FF01D2D7FF08D2D6FF0BC6CBFF15ACB6FF31939AFF496260FF6B
                  4540FF81433CFF87443AFF8E4438FF904439FF8D453DFF8A4640FF8A463FFF87
                  473DFF7E4C40FF67524CFF506869FF42848CFF3C98A0FF48A2AAFF5F989CFF6B
                  6C68FF805345FF915240FF935242FF935346FF935348FF945447FF955547FF93
                  5548FF925847FF8D5A45FF7A5C50FF5F6968FF4B868DFF4D9DA4FF5FB6BBFF6B
                  AFB1FF88A3A3FFE7E7E5FFD1BBB6FF946256FF9B6050FFA0614EFFA3614DFFA3
                  634FFFA2634FFFA1644FFF9D6551FF8F6555FF846A60FF8E8482FFA29F9FFFBC
                  BABAFFDAD2CFFFE1CBC3FFA57C6AFFA36C54FFA86D53FFA96F58FFA96E5AFFAB
                  7059FFAE7255FFAF7456FFAE7558FFB17658FFB5775AFFB5785CFFB07A5BFFAD
                  7D5CFF94745DFF52514CFF445B5BFF537777FF678B8AFF7E9993FF929384FFA1
                  856FFFB78664FFBE875FFFC38A5FFFC28B61FFC28B63FFC48C66FFC68E67FFC3
                  8D68FFAD8362FF765C45FF4D453BFF4B4E49FF555E59FF616F68FF6A7F78FF7A
                  928CFF879F97FF91A99FFF93AEA8FF95B0ADFF98B1ACFF9AB2ACFF9CB2ACFF9E
                  B2ABFFA0B2ACFF9FB2ADFF9BB2B0FF95B4B6FF99BABDFFA3C3C8FFB2CFD3FFBB
                  D9DAFFC9E3E5F3C4D7DA858A989A080000000000000000000000000000000000
                  000000000000000000000000000000000000000000000036AEB3491FB6BED60C
                  D0DAFF02D1D9FF01D1D7FF07D1D6FF0CC5CCFF17ACB5FF329399FF4A6260FF69
                  4540FF82433CFF88443BFF8F4438FF8F4438FF8C463CFF8B463FFF89463EFF8D
                  483DFF8C483DFF7D4A43FF605351FF496C6DFF3E8183FF458A8BFF5C7B79FF74
                  5750FF885141FF92523FFF955243FF945247FF965348FF975446FF955646FF92
                  5646FF915947FF875A47FF6C625CFF57787BFF4C949AFF52ABB2FF61C1C8FF72
                  C1C6FF779EA0FFD6DCDCFFCFBAB5FF936355FF9B6050FFA0614EFFA3614DFFA2
                  634FFFA2634FFFA1644FFF9E6551FF8F6555FF846A61FF8E8583FF9F9D9EFFBA
                  B8B6FFD1C3BCFFBC9D8EFF9A6852FFA86D54FFA76D53FFA86F58FFAA6E59FFAE
                  7158FFAF7356FFAF7557FFAE7559FFB27659FFB5775AFFB5785CFFAF7A5BFFAC
                  7D5CFF93745DFF50524DFF425B5BFF517978FF618E8DFF70A1A0FF8DABA4FF9A
                  9B8CFFA7896BFFB68861FFBF8A5DFFC08B5FFFC08B63FFC28C67FFC38D66FFC3
                  9065FFC1926AFFAA8667FF675B4EFF494E4BFF4C5D5FFF587070FF678584FF7B
                  9D9DFF89ADAFFF95BABCFF9AC4C8FF9FCCD0FFA3CED1FFA3CFD3FFA3CFD3FFA5
                  D0D3FFAAD0D3FFADD1D2FFADD1D3FFACD3D5FFB0D7D8FFB6DBDEFFC1E2E5FFC8
                  E7E8FFD3EDEFF1C5DBDD79859496060000000000000000000000000000000000
                  000000000000000000000000000000000000000000000045B4B83F1FB2B9CD0E
                  D1DAFF03D2DAFF00D0D7FF08D2D8FF0CC5CCFF18ACB5FF339399FF496260FF69
                  4541FF85423DFF8B423CFF8D433AFF8B4539FF8A473AFF8E473DFF8E483EFF8F
                  483EFF8F473EFF884941FF764D47FF5A5852FF4C6A67FF4E716EFF5E615CFF7E
                  5147FF8B5241FF8F5240FF965045FF965148FF985248FF995445FF985544FF95
                  5746FF8F5949FF7A5B4DFF5D6D6AFF4F868CFF4CA0A7FF52B8BCFF5FCAD0FF75
                  D2D9FF75AFB2FFB7C7C7FFCDBBB5FF926355FF9B6150FFA0614FFFA2604DFFA1
                  624EFFA2634EFFA1644FFF9D6450FF8F6555FF83695FFF8D8383FF9F9B9DFFBA
                  B3B0FFBEA99DFFA17966FFA56C55FFA96C53FFA66D54FFA76E55FFAC7057FFAE
                  7156FFAD7356FFAD7458FFAE745AFFB27659FFB4775AFFB3795CFFAE7A5BFFAC
                  7D5CFF93745DFF4F514DFF405C5DFF4D7778FF608F91FF72A6A7FF8CB8B7FFA4
                  BDB5FF9F9B87FFA88B6AFFB68B60FFBC8D5FFFBD8B61FFC38E66FFC38E65FFC2
                  9063FFC39366FFBE916BFF9C8166FF656051FF4E5D58FF557070FF688687FF80
                  A0A4FF8EB5B9FF9AC7CCFFA6D6DAFFB1E0E3FFBAE6E6FFB8E8E7FFB7E9E9FFB9
                  E9EBFFBEEAEBFFC2EAECFFC3EAECFFC5ECECFFC7EEEEFFC9EFF0FFCEF0F3FFD3
                  F3F4FFDBF6F7F2C8DDE06E829193040000000000000000000000000000000000
                  000000000000000000000000000000000000000000000052B5B93526B1B7C310
                  D0D9FF02D1D9FF01D1D9FF08D1D8FF0BC5CCFF19ABB5FF349399FF496260FF6A
                  4641FF87423DFF8D423CFF8C433BFF8A463AFF8B4839FF8F483AFF8E483CFF8F
                  473FFF914741FF904841FF874B41FF745044FF65574FFF615953FF6D534CFF86
                  4E44FF8D5041FF8F5142FF945047FF985048FF985247FF995443FF9C5343FF9A
                  5647FF875749FF6B6058FF537A7BFF49939AFF4DADB2FF53C3C5FF5DD2D7FF70
                  D8E0FF72BFC3FF9BB7B7FFC5B8B2FF906355FF995F4EFF9E604DFFA2614EFFA2
                  624EFFA2634FFFA1644EFFA16752FF906455FF785C54FF7D726FFF938C8BFFAF
                  A099FFA68777FF9E6E56FFA86B52FFA96C55FFA66C57FFA86F56FFAB7154FFAD
                  7154FFAB7357FFAD755AFFAE745AFFB27659FFB3775AFFB3795CFFAF7A5BFFAD
                  7D5CFF94745EFF50514DFF405C5DFF4B7779FF5F9092FF72A8AAFF89C0C2FF9E
                  CED0FFAAC0B9FF9E9983FFA88B66FFBA8D5FFFC38E60FFC48E63FFC38F64FFC2
                  9164FFC59367FFC69369FFBC926BFF988263FF626454FF546765FF617A7FFF75
                  949AFF85ABB2FF95C2CAFFA3D3D8FFB6E4E6FFC3EDEEFFC4F3F1FFC3F4F2FFC4
                  F4F3FFC8F3F5FFCDF4F7FFCEF4F7FFD0F6F5FFD1F7F6FFD3F7F7FFD8F8FBFFD9
                  F8FAFFDFF9FAF2CCE1E260819092020000000000000000000000000000000000
                  00000000000000000000000000000000000000000000005CB3B72A2DAFB6B612
                  CFD8FE04D0D9FF03D2DAFF07D1D8FF09C5CCFF19ABB5FF359399FF496160FF6A
                  4641FF87423CFF8D423BFF8C433BFF8C453AFF8D4839FF8E493AFF8D483BFF8F
                  473FFF924741FF944740FF8F4A3EFF874D3EFF814F44FF7B4E45FF804F46FF8D
                  4F44FF915041FF925044FF944F47FF975047FF975346FF985444FF9D5345FF96
                  5648FF7C594FFF606C69FF4E898DFF48A0A7FF51B9BEFF56CDD0FF5FD7DCFF6A
                  D8DFFF73CFD3FF81ABACFFB4ADAAFF906457FF98604FFF9D604DFFA2614DFFA2
                  624EFFA1634EFFA2644FFFA06551FF926455FF7E6158FF776966FF827370FF8F
                  766CFF99705CFFA16B52FFAB6D54FFA76B55FFA56C56FFA77056FFAA7255FFAC
                  7354FFAA7357FFAC745AFFAD745AFFB17659FFB3775AFFB3795CFFAF7A5BFFAE
                  7C5DFF96735FFF52504EFF415B5EFF4B7679FF5D9092FF6FA9AAFF82C4C7FF95
                  D5DBFFA7DADCFFA6C0B5FF9F977DFFB38C65FFC28D60FFC59061FFC18F63FFC4
                  8E65FFC48F68FFC49268FFC59465FFBA9569FF917F62FF5E6157FF556566FF61
                  7C82FF73959CFF84ACB4FF9AC6CBFFA9D6DAFFB9E3E8FFBFEDF0FFC2F3F3FFC5
                  F5F5FFCAF3F7FFCFF4F9FFD0F4F8FFD2F6F6FFD2F7F5FFD5F7F7FFD9F6FAFFDA
                  F8F9FFDFF9FAEBC7DBDE51808F91000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000005EACB11E32AEB6A914
                  CED7FE04D0D9FF03D2DAFF06D1D8FF09C5CCFF19ABB5FF349399FF496160FF6C
                  4641FF86423BFF8B423AFF8B433BFF8C453BFF8E473AFF8D493AFF8D483BFF90
                  483EFF954740FF94483FFF904B3CFF8F4E3CFF914D40FF8C4D43FF8A4D43FF91
                  4F42FF945042FF934F42FF954F46FF985146FF965445FF945445FF975347FF87
                  564AFF6D6059FF577A7AFF4B959BFF4DADB4FF56C3CBFF5CD3DAFF61D8DFFF6A
                  DBE1FF72D9DBFF71ACAEFF8C9290FF8D6456FF996250FF9D614EFFA0614DFFA2
                  624EFFA2634EFFA2634EFF9F6450FF946657FF86675FFF8B7A76FF947E77FF90
                  6D5EFF9D6A55FFA66951FFAA6B52FFA86B54FFA56C55FFA77055FFAA7255FFAB
                  7455FFAB7258FFAC7359FFAE745AFFB07659FFB2775AFFB2795CFFB07A5BFFAF
                  7C5DFF98735EFF54504DFF425B5EFF4B7679FF5C9092FF6BACADFF7AC4C6FF90
                  DAE0FFA1E4EAFFA9DAD7FFA7B8A8FFA99276FFB98B64FFC28E61FFC28F64FFC5
                  8D66FFC59169FFC29367FFC59562FFC49867FFB7956FFF887961FF5C6155FF54
                  6B68FF608081FF769A9EFF8AB2B6FF9BC6CBFFABD6E2FFB5E4EBFFBCEFF1FFC3
                  F4F5FFC9F3F9FFCEF3FBFFCFF3FAFFD0F6F7FFD1F7F6FFD5F7F7FFDAF6FAFFDB
                  F7F9FFE1F8FAE4C9DCDD46000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000005BA5A91236AFB69716
                  CDD6FE06D0D9FF03D1DAFF05D0D8FF09C6CCFF19ABB5FF359399FF4A615FFF6C
                  4641FF86433AFF8A4339FF87443BFF8A443BFF8E463CFF8E473DFF90483BFF93
                  483CFF94493EFF904A3DFF8E4B3CFF904E3DFF934D3FFF8E4E42FF8D4E42FF94
                  4F41FF965142FF965143FF975044FF995245FF965445FF915546FF8B5449FF71
                  5950FF5C6E68FF4D8A8DFF49A3A8FF51BAC0FF5ACBD5FF5ED4E0FF63DCE3FF64
                  DCDEFF6BDCDEFF74C4C9FF738F90FF855F53FF97604FFF9C614EFFA0614DFFA1
                  634FFFA2634EFFA2634FFFA06450FF936456FF84665DFF8A7872FF94776CFF98
                  6C59FFA26953FFAA6B53FFAB6B52FFA96C53FFA76D54FFA76F55FFA67154FFA8
                  7155FFAE7158FFAF7259FFAE745AFFB07659FFB1775AFFB1795CFFB17A5BFFB0
                  7B5DFF99735FFF55504EFF435B5EFF4C7679FF5C8E93FF69A9ACFF79C6C9FF8C
                  DDE0FF9DEAEEFFA2E5E7FFACDCD6FFA6B5A1FFA69373FFBA9066FFC18E64FFC5
                  8E66FFC59266FFC49564FFC79568FFC99569FFC8976CFFB9946FFF8C7B61FF58
                  6051FF546B64FF608080FF77999CFF8DB1B7FF9DC5D0FFAAD7DDFFB6E7E6FFC1
                  F0EEFFC9F3F6FFCEF3FBFFCEF3FBFFCEF5F9FFCEF6F8FFD1F7F9FFD7F7FBFFDB
                  F7FBFEDFF6F8CEC6D9DC33000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000068ABB00C3BADB4871A
                  CAD4FD09D0D7FF05D3DAFF06D0D7FF09C5CCFF19ABB5FF359299FF4A615FFF6A
                  4641FF85433AFF8A433AFF87443BFF89443CFF8D453DFF90463EFF93463DFF94
                  473EFF92493DFF8D4B3CFF8B4C3BFF904D3DFF924F3EFF8D4E40FF8E4F41FF94
                  4F40FF935040FF945142FF975143FF995343FF975444FF905547FF82544DFF64
                  615CFF537B7AFF49979CFF4AAFB5FF52C3CAFF5DD1DBFF63D7E3FF64DCE4FF62
                  DCDFFF66DBDEFF6ECBCFFF79A3A3FF7F6153FF97604FFF9F614EFFA1624EFFA0
                  624EFFA2624EFFA36450FF9E6451FF946455FF866459FF876E65FF926D5EFF9B
                  6753FFA46953FFA96953FFAC6B53FFAC6C53FFAB6F52FFA67054FF9F6D54FFA1
                  6D56FFAD7159FFB1735AFFAE745AFFB07659FFB1775AFFB1795CFFB17A5BFFB1
                  7B5DFF98735FFF55504EFF445B5DFF4D7579FF5C8E94FF6AA8ADFF7CC5C9FF8D
                  DDE1FF9AEAEDFF9FEBEEFFA4E6E5FFADD9CDFFA7B19AFFA9906EFFBB8F67FFC4
                  9067FFC59263FFC69462FFC8946AFFC99368FFCD9669FFC9996DFFB69470FF7C
                  7158FF596255FF556D6AFF688286FF7C99A0FF90B3BAFFA1CACBFFB1DCD9FFBE
                  E9E5FFC9F1F2FFCDF3F9FFCDF3FBFFCBF5FAFFCCF7F9FFCFF8FAFFD5F8FCFFDA
                  F9FAFED7EFF1B0B2C4C621000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000092C8CA083CA2A8711D
                  C1C8F70FD1D4FF06D5D6FF07D2D6FF09C4CDFF17ACB5FF359299FF4B6061FF68
                  463FFF814339FF8A433BFF8C433CFF8C433CFF8D463CFF8F463EFF92453FFF92
                  463FFF90493EFF8C4C3AFF8D4D3AFF914E3DFF934E3FFF934E40FF934E41FF92
                  5041FF915041FF915041FF945244FF985343FF975343FF8D5448FF785651FF5D
                  6C6DFF4D898CFF47A3A9FF4BB9C0FF55CBD3FF61D6E0FF64DAE4FF64DAE3FF64
                  DAE3FF68D9E0FF6DCDD0FF75A8A5FF7D6556FF996050FFA3604EFFA3614EFFA2
                  634EFFA3634FFFA36450FF9D6452FF966454FF8A5F4FFF906757FF9B6855FFA1
                  6951FFA26B51FFA86954FFAE6A56FFAE6C53FFAB6F50FFA26F55FF946956FF92
                  6757FFA66F5AFFB2745BFFAE7558FFB07758FFB1785AFFB1795CFFB2795DFFAF
                  7B5EFF95745FFF53524DFF455C5CFF4E7679FF5C9093FF6BAAACFF80C5CBFF91
                  DAE4FF99EAF0FF9CEBEEFFA1EBEBFFA8E6E4FFACD6CDFFA3A692FFAC9170FFBE
                  9066FFC69264FFC99365FFC89468FFC99765FFCB9865FFCA9A6AFFC69A6FFFAD
                  8F6DFF7D7159FF525D54FF596C6EFF688288FF7E9EA3FF94B6B8FFA7CBCAFFB7
                  DDDCFFC3E9ECFFC9F1F6FFCAF3FAFFCBF4FBFFCDF5FAFFD0F7F9FFD2F9F7FFD5
                  FBF9FBCBE8E8938797990F000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000C8F3F4043C9296551E
                  B0B7ED18D3D7FF04D2D4FF06D2D7FF08C4CDFF15ACB5FF339299FF4C5F61FF6B
                  463FFF834439FF89443BFF8C423CFF8B443CFF8B463CFF8D473DFF8F463EFF8F
                  473EFF8E4A3DFF8F4B3BFF914B3DFF934B40FF924E3FFF924E40FF924E41FF91
                  5042FF915042FF8F5042FF905243FF975342FF975445FF825349FF675E5AFF55
                  7D7EFF4B969AFF4CB0B6FF53C4CBFF5BD2DAFF61DAE1FF62DCE2FF60DBE3FF60
                  DCE3FF64DBE0FF6ACED1FF73A9A5FF7B6556FF996050FFA3604EFFA3624EFFA2
                  634EFFA2634EFFA3634FFFA06451FF9A6352FF915F4DFF986754FFA16852FFA4
                  6951FFA46A51FFA96954FFAE6A55FFAC6C53FFA66E51FF9C6D58FF8A6154FF92
                  685CFFA4705AFFAD7357FFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465D5CFF4E777AFF5A9093FF68ABACFF7DC6CAFF90
                  DBE3FF98EAF0FF9AEDECFF9CECEAFFA0EAEAFFA9E5E7FFB3CDC9FFACA492FFB2
                  906EFFC19169FFC79168FFC89368FFCA9668FFCA9668FFCC986AFFCC9A6DFFC5
                  9B71FFAD8F6BFF776A56FF585B58FF596B71FF66858AFF7E9BA0FF9BB6BBFFAB
                  CCCEFFB6DDDDFFC1ECECFFC9F2F5FFCFF4FCFFD0F5FCFFD0F6F8FFD1FAF4FFD3
                  FAF5EEC7E3E37461717207000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000E4FFFF01529A9E2F26
                  A8AEDC1BCDD5FE07D3DAFF04D0D7FF06C5CCFF13ADB4FF319399FF4D5F61FF6D
                  453FFF854439FF89443AFF8B433CFF8A433DFF8A463DFF8C483BFF8D483CFF8D
                  493CFF8D4B3BFF914A3CFF93493FFF924941FF924E3FFF924E40FF934D42FF93
                  4F42FF945043FF915143FF905143FF975243FF935446FF76564DFF5A6B68FF4B
                  8B8BFF47A2A5FF50BAC1FF58CCD3FF5DD6DEFF5EDBE0FF5FDCE1FF5EDCE2FF5D
                  DDE2FF61DBDFFF6BCED0FF75A8A5FF7C6556FF996150FFA3604EFFA2624EFFA1
                  644EFFA3634DFFA5634EFFA36451FF9F6450FF99614EFF9E6753FFA56851FFA7
                  6950FFA56952FFAA6954FFAD6B54FFA86D53FF9D6F55FF8D6657FF84625AFF91
                  6B61FFA4725CFFAC7458FFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465D5CFF4E777AFF5A9094FF67ABACFF7BC7C9FF8D
                  DDE1FF97EBEFFF97ECECFF98EDE9FF9BEDEAFFA0E8ECFFB1E2E5FFB5C8C0FFA8
                  9B84FFB6916FFFC4926BFFC99467FFCA9667FFCB956AFFCE996CFFCD9A6AFFCB
                  9C6CFFC59D6FFFAB8C6CFF6F6356FF50595BFF577075FF6B858CFF88A0A8FF9D
                  BABEFFABD1CFFFB8E3DFFFC4ECEBFFD0F2F8FFD2F4FBFFD3F6F8FFD4F9F4FFD5
                  F8F4E2ADC7C74969787904000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000EAFFFF00A9DDDF102F
                  9CA3B11DC3CEFA08D0DBFF06D0D9FF09C6CCFF12ADB4FF2F9398FF4A6060FF6D
                  4640FF854439FF8A4439FF8B423CFF89433EFF8A463DFF8E493BFF8D493AFF8C
                  4B3AFF8C4B3BFF904A3DFF914841FF8F4A41FF904E3EFF934E40FF954D43FF96
                  4E44FF964F44FF955044FF945043FF955344FF875447FF695D56FF4F7877FF41
                  9497FF45ACB0FF53C3CAFF5AD2DAFF5ADAE1FF59DCE0FF5DDCE0FF5EDCE1FF5E
                  DDE2FF63DBDFFF6ECECFFF79A8A4FF7C6556FF986150FFA2614EFFA0634EFF9F
                  644CFFA3644DFFA7634FFFA56350FFA46551FFA36551FFA56752FFA9694FFFA8
                  694FFFA56952FFA86A54FFA76C53FFA06E55FF8B6A57FF6F5A53FF6C5A58FF86
                  6B61FF9C715CFFAC7459FFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465D5CFF4E777AFF5B9094FF69ABACFF7BC6C9FF8C
                  DCDFFF96EBF0FF95ECEFFF97EDEBFF9AEDEBFF9CEBEEFFA5E9EEFFB1E4E3FFB2
                  C8BBFFAA9F85FFB7926DFFC69565FFCB9767FFCB976AFFCD986DFFCD9B6BFFCD
                  9D68FFCC9F68FFC69E6FFFA1866BFF686056FF505C5BFF5C6F73FF6F868CFF84
                  A1A3FF9ABBBAFFACD1CFFFBADFE0FFC9EBEEFFD1F2F4FFD5F6F6FFD6F7F6FDD5
                  F5F4D1859C9C257E8D8E01000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000DBFDFE053A
                  9DA37D1EBBC7F20BCFDCFF09D1DAFF0CC6CCFF15ADB4FF2F9498FF486160FF69
                  4641FF84433AFF8B443AFF8C433BFF8A433DFF8A463DFF8E483CFF8E483AFF8B
                  493BFF8A4A3DFF8F493FFF8E4A40FF8B4C40FF8C4F3DFF934E40FF964D43FF96
                  4E45FF964F45FF964F44FF955043FF8E5444FF795648FF5E635CFF4A7D7EFF42
                  989DFF49AEB4FF56C5CEFF5AD4DDFF59DBE2FF58DDE1FF5CDDE0FF5FDCE1FF61
                  DCE2FF66DBE0FF6FCDD0FF7AA7A5FF7C6556FF986150FFA1614EFFA0634EFF9E
                  654CFFA2654DFFA6644DFFA5644FFFA56550FFA76752FFA86751FFAA694FFFA9
                  694FFFA46A51FFA46B52FFA26C55FF956D58FF6D5C4FFF51524FFF606462FF81
                  746AFF98725EFFAB765BFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465D5CFF4E777AFF5B8F94FF6DA9AFFF7EC5CCFF8E
                  DCE3FF99E9F3FF98EAF3FF98E9F0FF9DEAEFFF9FE8EFFFA3EAF1FFAAE9EEFFB6
                  E2DEFFB2BFB0FFAD9C81FFBC9269FFC99669FFCA976AFFC9986DFFC99A6DFFCD
                  9C6AFFCF9D66FFD0A06AFFC49C72FF9F856AFF645E51FF555E5CFF5E7377FF70
                  8C8FFF87A5A7FF9FBEC1FFAED0D4FFBFE2E5FFCBEEECFFD4F4F4FFD8F7F9F8CF
                  ECEDB1768B8C1300000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000057
                  B0B5501EB1BCDF11CEDCFF0CCFD8FF0EC5C9FF17ADB4FF319398FF466160FF65
                  4641FF82433AFF8B433AFF8D433CFF8B433CFF8C463DFF8F473CFF8E473DFF88
                  473EFF83483FFF894A40FF894B3EFF894F3CFF8A503CFF924E40FF964D43FF93
                  4E44FF924F45FF935044FF925144FF895544FF715849FF59655DFF497C7EFF45
                  969CFF4CACB4FF57C4CDFF5AD2DCFF59DAE2FF58DCE1FF5EDCE1FF60DCE1FF61
                  DCE2FF64DCE1FF6DCDD1FF78A7A5FF7D6556FF986150FFA1614DFF9F634EFF9E
                  654CFF9F654CFFA3644CFFA4644EFFA5654FFFA76750FFA7674FFFA9684FFFA9
                  6A50FFA76B52FFA46A52FF9B6D58FF826859FF545854FF506968FF6D8582FF84
                  8377FF93735FFFA7735AFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465D5CFF4E777AFF5B8F95FF6BA8B0FF7CC5CCFF8D
                  DCE2FF9AE9F0FF99E9F1FF9AE9F3FF9DE8F4FFA0E7F2FFA3EAF2FFA6EBEEFFAF
                  E9E7FFBDE2D8FFB5BEACFFB29778FFC1956BFFC89769FFC69A6DFFC79B6EFFCD
                  9B6AFFD59E69FFD29F68FFCFA16DFFC49E72FF987F63FF615B4EFF52605EFF5D
                  7577FF718C90FF8CA8ACFF9FBDC1FFB1D4D6FFC2E4E5FFCEEDF1FFD6F4F8F0C7
                  E0E3817486870600000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000073
                  C1C52D21A8B1BE1DD0DAFF0DCED6FF0EC5CAFF18ADB3FF329398FF466160FF64
                  4541FF80433CFF89433BFF8C423CFF8C433CFF8D453DFF8F473DFF89473EFF80
                  4741FF764743FF7A4841FF834C3DFF884E3AFF8B4E3BFF934D3FFF954D43FF91
                  4E44FF905043FF905044FF905145FF895345FF755748FF5D6158FF4E7676FF49
                  9195FF4BA7ACFF56BFC8FF5ACED8FF5CD8E0FF5EDBE1FF62DBE1FF60DAE3FF5D
                  DBE3FF60DCE3FF6ACCD2FF76A7A5FF7D6555FF99614FFFA1614DFF9F634EFF9D
                  654CFF9E654CFFA1644CFFA1654CFFA2664EFFA4674FFFA6684FFFA76850FFAA
                  6951FFAB6950FFA56A52FF8F6B5AFF696059FF4B6365FF527C7EFF719592FF86
                  8A7DFF927460FFA8745CFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465C5CFF4E777AFF5B8F94FF6BAAAEFF79C6CAFF89
                  DDDFFF98EAECFF99EAEDFF9AEAF2FF9AE8F6FF9EE7F5FFA2EAF2FFA4ECEDFFAA
                  EDEAFFB5ECE5FFBEE1D4FFB4B59DFFB59B77FFBF9769FFC59A69FFC99C6BFFD1
                  9D6AFFD69E6AFFD29E6BFFD0A06CFFCDA26FFFC19D73FF957F63FF5A584EFF53
                  6161FF5F767AFF759093FF8CA8A8FFA4C1C5FFB2D2D7FFC5E4EAFFD2EDF2D8BC
                  D3D6507280820000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000086
                  CACD132DA5AB9927CDD3FC11CFD6FF0CC4CCFF17ADB3FF329497FF47615FFF66
                  4540FF7F433CFF86433CFF89443BFF8C443BFF8E453DFF8D473DFF82473EFF76
                  4944FF6A4B4AFF6A4C49FF764D41FF874E3CFF8F4E3DFF954D40FF964D42FF93
                  4E41FF924F41FF925144FF925146FF905144FF855548FF6D594FFF586A68FF4A
                  8889FF459DA1FF4EB5BBFF55C5CDFF5CD1DAFF63D8E1FF64D9E2FF61DAE4FF5B
                  DAE4FF5FDBE3FF6ACCD2FF78A7A6FF7D6555FF996150FFA1614EFF9F634EFF9D
                  654DFF9E654CFFA1644CFFA1644EFFA2664EFFA1684FFFA3684FFFA46852FFAB
                  6752FFAD6750FFA26A56FF7D655BFF565E5DFF4A7176FF578B8DFF7AA3A0FF8C
                  9083FF927360FFA7735CFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF455C5CFF4E777AFF5C9092FF6EAAA8FF7CC6C6FF8A
                  DDDFFF95EAEAFF97EBEAFF9AEBEDFF9AE8F2FF9BE7F2FF9FE9F0FFA1EAECFFA4
                  EBECFFABECEBFFB2EAE5FFB8D9CCFFAEB297FFB29A72FFC29B6AFFCC9C68FFD2
                  9D68FFD49F6AFFCF9E6EFFD0A06EFFD0A26EFFCCA273FFBF9C73FF88745BFF56
                  564DFF526265FF61797BFF7B9291FF93ACACFFA6C2C8FFB9D5DEFEC4DCE3B2AD
                  C1C6270000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000B0
                  E1E20646A5A95F22B1B4EF1CD0D4FF0DC4CCFF15ADB3FF319496FF48615FFF68
                  4540FF82433CFF85443CFF87443BFF8B443BFF8E453DFF8C483DFF81493EFF6E
                  4943FF605455FF5B5A5BFF62554FFF764F42FF884D40FF934D40FF964D41FF94
                  4D40FF964E40FF985044FF984E45FF984F43FF945447FF815549FF6A5C57FF53
                  7572FF498F8EFF4BA8ABFF4FB9BEFF59C7D0FF63D2DBFF65D7E1FF62DBE5FF5D
                  DBE5FF62DBE2FF6FCBD2FF7BA6A5FF7D6555FF986150FFA1614EFF9F634EFF9E
                  644EFFA0644DFFA2644DFFA2644FFFA2664FFFA3674FFFA36950FFA26853FFA7
                  6752FFA96953FF92695AFF605D59FF4A676AFF4B8087FF5E9B9EFF85B2B0FF91
                  968CFF927360FFA8745BFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF455C5CFF4E777AFF5C8F92FF6EAAA9FF7FC3C5FF8C
                  D8DCFF93E2E5FF95E1E1FF96E0DEFF95DBDDFF94D9DCFF96D9DBFF96D9DCFF95
                  D9DCFF9AD8DEFFA1D9E0FFA4D4D4FFB1C8BDFFADA48AFFBD9971FFCD9B6BFFD4
                  9D68FFD39F6AFFD09E6DFFD3A06EFFD5A16EFFD2A370FFD0A370FFBF9C70FF83
                  7259FF57584FFF576362FF687A79FF7D9392FF94ADB0FFABC3CAF2A8BCC3787B
                  8B910A0000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000D1
                  F6F90162AEB02F23A0A0CE21CACDFD10C3CCFF14ADB3FF309496FF48615FFF6A
                  4540FF84423BFF88433CFF87443BFF8B443BFF8F453CFF8D483BFF83493DFF6E
                  4C44FF5A5C5DFF4F6A6DFF516666FF63554FFF7A4D42FF8C4D3FFF924F40FF94
                  4F3FFF97503FFF9B4F43FF9A4E45FF995046FF965345FF8D5546FF7D564DFF62
                  625EFF527A78FF4C9898FF4CACB0FF54BEC4FF5FCBD3FF62D4DDFF61DBE4FF5E
                  DCE5FF63DBE3FF71CCD1FF7BA6A4FF7C6655FF976150FFA1614EFFA0634EFF9E
                  644EFFA0644EFFA3634EFFA4644FFFA46550FFA46751FFA36851FFA26953FFA3
                  6853FF9C6955FF7A6457FF4D5E5DFF48737AFF518E94FF66A8ABFF8BBFBEFF91
                  9B93FF90735EFFA9755AFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFAF
                  7A5EFF95745FFF52524CFF465D5CFF4E777AFF5C8F93FF6FA9ABFF86BFC1FF96
                  CECEFF9FD6D5FF9BD1CEFF9ACDC6FF98C7BEFF95C2BAFF93C0B8FF94BFBBFF90
                  BFBDFF95BEBFFF99BEC0FF9DBEBBFFABBDB3FFB3AB96FFBC9B78FFCB9A6DFFD3
                  9D69FFD29F6AFFD19F6BFFD3A06CFFD5A16EFFD3A36FFFD4A56EFFD0A670FFB6
                  986FFF796B54FF575853FF556263FF6B7F80FF84999AFE9BAEB0DB8D9DA3445D
                  686F020000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000A4DEDD0D339F9E8428C2C5F515C2CCFF14ACB3FF2F9396FF48615FFF69
                  453FFF86433BFF8B433BFF87443BFF8A443BFF8F453CFF8E483BFF87493BFF70
                  4C43FF576465FF467A7FFF457D82FF596F6DFF6B574DFF7F4F40FF89503FFF8F
                  523EFF93503FFF974E41FF994F46FF945246FF8F5443FF8F5644FF8D5448FF7D
                  5752FF676463FF528080FF4B9A9DFF4DAEB4FF58C1CAFF5CCCD6FF5CD7E0FF5B
                  DBE3FF63DBE2FF70CCD1FF79A6A3FF7B6655FF966150FFA1614EFFA1624EFF9F
                  644EFFA2634EFFA5624FFFA56350FFA56451FFA56651FFA56851FFA26953FF9C
                  6854FF896655FF5E5E55FF496E6FFF4C848AFF5B9EA2FF6EB7B9FF90CACBFF8F
                  A098FF8D725DFFAA755AFFAD7559FFB07758FFB1785AFFB1795CFFB2785EFFB0
                  7B5EFF95745FFF52524DFF455C5CFF4E777AFF5D8F94FF74A7ACFF8CAEABFF96
                  A99DFFA1AD9EFFA0A99AFFA0A594FF9FA18CFF9F9F89FFA09D88FFA19C8AFF9F
                  9D8DFF9EA08CFFA2A18AFFA7A187FFACA389FFB2A180FFBD9E74FFC89C6CFFCF
                  9D6AFFCF9F6BFFCFA06AFFD0A16BFFD1A26EFFD3A46EFFD5A76FFFD4A76DFFCE
                  A671FFB79872FF6A6151FF4B5554FF576B6DFF708382F9869493A9717D7F1A00
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000B9EEEB035BB3B04A2EB4B4DA1DC1C8FF14AAB4FF339399FF4C5F5FFF69
                  473FFF824239FF8A433CFF87443BFF89443CFF8D453DFF8E473DFF88483DFF6E
                  4B43FF566A6AFF488589FF408C92FF518B8CFF5D726BFF6B5344FF84523EFF8E
                  533EFF915041FF934D43FF985046FF935344FF905542FF915643FF925545FF8D
                  564AFF795A52FF5D6969FF4F858AFF4A9BA3FF52B3BCFF58C4CCFF5CD2D9FF5D
                  D8DFFF65DAE1FF6ECDD2FF76A7A5FF796556FF956150FFA1604EFFA1624DFF9E
                  644CFFA1644CFFA6644FFFA66451FFA26551FFA16651FFA46852FFA16753FF93
                  6859FF6F5F58FF516161FF4F7C7FFF559397FF61ADAFFF73C3C5FF93D4D5FF90
                  A39CFF8E735FFFAA7459FFAD7559FFB1765BFFB2775CFFB2785DFFB1795CFFB1
                  7B5DFF97735EFF52514CFF455B5CFF4E7679FF628F93FF7DA6ACFF90A096FF93
                  8D75FF9F8B71FFA38A72FFA78A72FFAB8D6DFFAE8E6CFFB08F6CFFB08E6EFFB1
                  8E71FFB19271FFB1956FFFB5956FFFB89871FFBB986FFFC39B6DFFC99C6BFFCD
                  9D6AFFCF9E6BFFD19F6BFFD1A16CFFD2A26EFFD3A46DFFD4A56DFFD5A76EFFD3
                  A971FFCFA878FF948166FF4D4F48FF4F5A5AFF657375E76B797C6A616C700600
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000D2F8F4009BDAD61B37A3A4AC29BCC2FC19ABB6FF31909BFF4F5F61FF6A
                  443EFF86443BFF8A433AFF88443AFF89443CFF8D453DFF8F463EFF8B483FFF6F
                  4D45FF546F6CFF478C90FF3C989DFF469DA1FF569292FF60655CFF795242FF8D
                  5240FF904F43FF934E46FF964F47FF955245FF955443FF965543FF955543FF93
                  5645FF8A584BFF6F5D58FF596F70FF50888DFF4FA3A9FF54B7BEFF58C9CEFF5C
                  D3D6FF66D8DCFF6DCDD0FF75A8A6FF7D6556FF976150FFA1614EFFA1624DFF9D
                  644CFFA0644DFFA5634EFFA5654FFFA06650FF9F6751FFA16852FF9B6855FF81
                  6459FF5B5F5EFF4B6D71FF508A8FFF59A2A4FF65BABCFF77CDD1FF98DADDFF93
                  A49EFF907360FFAB7458FFAF7558FFB3745CFFB4765CFFB2795CFFB17A5BFFB1
                  7B5DFF98735DFF52514CFF435B5EFF4E757AFF638E91FF81A7A9FF98A08FFFA1
                  8A69FFAE8864FFB68667FFBA8767FFBC8A63FFBE8D62FFBF8F63FFBE8E65FFC0
                  8E68FFC09169FFBF9568FFC29568FFC4976AFFC69869FFC99A6AFFCB9B6AFFCD
                  9D6AFFCF9F6BFFD29E6BFFD3A06CFFD5A26CFFD5A46CFFD6A56DFFD6A76EFFD5
                  A870FFD5AB75FFA08966FF4B483BFF4B4F4FFE5C666AC34F5B632D4752590100
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000D3F6F50654A4A75F28A1A7EA23AAB4FF2F909BFF495F63FF6C
                  4440FF88433AFF8C433AFF8A443AFF8A443BFF8E453DFF91463DFF8C463DFF6F
                  4B44FF52716EFF439294FF39A2A7FF42ABB2FF4FA8B1FF5E8386FF685A55FF82
                  5144FF8D4F41FF904F45FF914F48FF955048FF995245FF9B5443FF985642FF97
                  5746FF925749FF82584BFF6C6057FF5C736EFF549191FF4FA7AAFF4FBBBEFF58
                  CACBFF66D3D5FF6CCBCDFF76A8A4FF826455FF9A6050FFA0614EFF9E624FFF9D
                  6350FF9F624FFFA2634EFFA2654DFFA0664DFFA1684FFF9D6953FF8C6857FF66
                  5F56FF4D6666FF4A7F83FF519B9EFF5DB1B4FF6CC8CBFF7FD6DCFF9EDFE3FF94
                  A59EFF90745EFFAB7557FFB07558FFB4745BFFB2775CFFB07A5BFFB07A5BFFAF
                  7C5CFF95745CFF4F524CFF415B5EFF4D757AFF628E91FF7EA7A7FF9BA08DFFA8
                  8B66FFB68860FFBF8763FFC48863FFC58B60FFC38E60FFC28F60FFC19162FFC2
                  9164FFC39365FFC39566FFC59566FFC79768FFC89868FFCB9A69FFCC9C69FFCE
                  9D69FFD19F6AFFD39F6AFFD5A16BFFD6A36BFFD6A46CFFD6A56EFFD6A66FFFD7
                  A86FFFD7AB74FFA18865FF484538FF404545F2495256803C464C0B3E474E0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000EAFDFE0071B0B32A319296BA2CA4ABFE34919AFF465E64FF68
                  4540FF87443BFF8C433AFF89443AFF87453BFF8A463DFF8E463EFF8B463EFF6E
                  4C46FF507171FF409599FF39A7AEFF41B4BDFF47B4C0FF589EA6FF617776FF6F
                  564BFF855142FF8E5044FF8F4F49FF92504AFF965246FF985543FF985544FF96
                  5548FF955549FF915748FF825B4DFF6A645AFF587D7AFF4F9698FF4BAEB1FF53
                  C0C3FF63CCCFFF6DC7CBFF78A6A4FF816456FF986150FF9E614EFF9D6150FF9E
                  6153FF9F6152FFA06450FF9F674DFFA0664CFFA2664FFF9A6757FF796458FF54
                  605BFF4B7375FF508E94FF59A8ADFF66BDC1FF73D0D5FF83DBE2FFA0E1E5FF92
                  A69DFF8C745DFFA87558FFAE7459FFB0755CFFAE785CFFAD795BFFAF7A5CFFAD
                  7C5CFF93745CFF4D524BFF405C5DFF4E767AFF648F92FF7DA7A8FF9B9E8EFFAA
                  8966FFB68960FFBD8861FFC28962FFC38B61FFC38E62FFC18F60FFC19161FFC1
                  9263FFC39364FFC59565FFC69565FFC89767FFC99867FFCB9A68FFCD9C68FFCF
                  9D69FFD19F6AFFD19F6AFFD3A16CFFD4A26DFFD5A36EFFD4A370FFD6A572FFD7
                  A870FFD7AA75FF9F8665FF454339FE393F3FCD3941443B394346010000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000BFE9EB085FA2A36638949AF33F8F96FF485F62FF64
                  463DFF844439FF8C433AFF8B443AFF85453AFF86473DFF8D473EFF8A473EFF6D
                  4B45FF4F7172FF40969CFF39AAB3FF44BCC4FF47C2C9FF4CB2B8FF5A9A9BFF5F
                  6D66FF755549FF895143FF925145FF935247FF935445FF965544FF985546FF95
                  5549FF97564AFF9B5746FF935947FF7E5C4EFF626660FF547D7EFF4C9B9FFF4D
                  B1B5FF5AC0C4FF6ABEC4FF78A1A3FF7F6556FF95624EFF9D614EFF9F6150FFA3
                  6054FFA26052FF9F6550FF9D684BFFA2674CFFA26652FF8E6359FF615F5AFF4A
                  6B6AFF508489FF599CA4FF65B5BCFF70C8CEFF7AD8DFFF84DEE7FF9EE2E6FF91
                  A79EFF89755DFFA67557FFAE735AFFB0745BFFAE785BFFAE795BFFB17A5CFFAE
                  7B5CFF91735BFF4C534AFF405C5CFF4E7579FF628E92FF7BA7A9FF9C9D8FFFAC
                  8869FFB78861FFBB8862FFC08963FFC08B62FFC08C63FFC08F62FFC29062FFC4
                  9164FFC59364FFC79564FFC89565FFCB9767FFCB9866FFCE9B68FFCF9C68FFD0
                  9E69FFD29F6AFFD2A06AFFD4A16BFFD5A26CFFD5A36EFFD4A371FFD6A571FFD8
                  A870FFD8AA74FF9F8665FF46443AF13337397831393D0C000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000DDF5F5029BC1C026498A8CC84E8B8FFD4E6162FF63
                  473DFF814639FF8A443AFF8A443AFF85453AFF86473CFF8C473DFF88483EFF6B
                  4B45FF507371FF3F989CFF39AFB6FF44C2C8FF49CBCEFF46BEC3FF4DACB1FF59
                  8D8EFF62605AFF7B5247FF905242FF935443FF945543FF975444FF995546FF96
                  5648FF955747FF975744FF985A47FF8D5A4AFF775C54FF626B6AFF548B8EFF4C
                  A5A9FF52B6BAFF64B8BEFF769FA0FF7E6656FF94634EFF9D614DFF9F614FFFA5
                  6153FFA36151FF9F654DFF9D6749FFA0684DFF996756FF77625BFF536764FF4B
                  7B7CFF56949AFF5FA8B0FF6EC3C9FF75D1D6FF7CDEE5FF85E0E9FF9EE3E7FF91
                  A79FFF87755EFFA57558FFAE7457FFB07658FFAE7959FFAF7A5AFFB3795CFFB0
                  7B5EFF93765DFF50574DFF43605FFF4F797CFF629195FF7AA8A9FF9B9E90FFAD
                  886BFFB98664FFBE8763FFC08964FFBE8A63FFBE8C65FFBF8E64FFC38F64FFC6
                  9065FFC79265FFC79465FFC89565FFCA9767FFCB9866FFCD9A68FFCF9C68FFD0
                  9D69FFD19F6AFFD2A06AFFD3A16BFFD5A36BFFD7A56BFFD6A56FFFD6A66FFFD9
                  AA6DFFD8AA73FFA28966FB4C483BC62C3031282B333701000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000D5E7E508618D8E73547F82EB546466FF62
                  453FFF78453AFF7E443BFF7F453AFF7D453BFF7F473EFF85473FFF7F483FFF64
                  4D45FF517A77FF40A1A1FF36B6B8FF3FC9CBFF46D2D5FF45C8CFFF46B9C3FF4D
                  A3ADFF5D7F82FF665A53FF805343FF8B5543FF905545FF935446FF935646FF90
                  5746FF8D5846FF8F5947FF905A48FF8F584AFF85594FFF705F5AFF5C7D7CFF54
                  A1A1FF52B4B4FF61BABDFF72A1A0FF786658FF8E624FFF94614CFF97634FFF9C
                  6353FF9D6352FF9B654DFF9A684CFF956851FF82665AFF5F6B67FF507979FF4F
                  8E91FF5AA5ABFF64B8C0FF6FCED3FF73DADEFF78E1E6FF82E0E6FF9DE3E6FF90
                  A7A1FF847361FF9F745AFFA87657FFAA7757FFA97A59FFAA7B5BFFB0785EFFAA
                  7A60FF907660FF5D655DFF4E6F6FFF568589FF669B9EFF7CB1AEFF98A192FFA8
                  876DFFB58466FFBB8565FFBD8765FFBA8865FFBA8B68FFBB8E67FFBE8E66FFC2
                  8E67FFC29067FFC19367FFC39468FFC49669FFC6986AFFC7996BFFC99B6BFFCA
                  9C6CFFCB9E6DFFCDA06EFFCEA16FFFD0A36EFFD4A56CFFD4A670FFD3A66EFFD6
                  AA6FFFD4AA76FFA8906DE95D56456F2E32320600000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000E1EEEB0093AFB1265A7A7FA74C6468FC4F
                  4E4DFF5A4C48FF5F4B47FF614B46FF604C49FF624B4AFF654C49FF60504BFF4C
                  5552FF478485FF3FAAAEFF33BCC0FF3BCCD0FF42D5D9FF45CFD7FF45C5D0FF43
                  B4C0FF579EA6FF5E7B7BFF645D55FF6D5A50FF745851FF795750FF795A4FFF78
                  5C4DFF765C4EFF735D51FF745D53FF775C53FF775F57FF68615CFF50716FFF51
                  9999FF56B4B6FF5EBABCFF6BA7A7FF656D65FF776A5EFF7C6959FF80685AFF82
                  665AFF826659FF826758FF816957FF7B6A5EFF6B6F6CFF558083FF549195FF59
                  A3A8FF5FB5BBFF66C5CDFF6ED6DBFF73E0E3FF76E2E6FF81E3E7FF98E2E5FF85
                  ABA7FF757D70FF8A7D6CFF907B68FF917A66FF907C65FF917A65FF997768FF94
                  7A69FF817A6BFF637671FF5B8383FF61979BFF6DA9ACFF80BAB8FF8FA89DFF95
                  8F7BFF9E8B74FFA38A72FFA58B71FFA48A6FFFA58A6EFFA78B6DFFA88D6DFFAB
                  8D70FFAB8F71FFAA9171FFAC9171FFAD9372FFAD9473FFB09474FFB29775FFB3
                  9875FFB49976FFB59B77FFB69C78FFB79E78FFBAA076FFBBA079FFBCA279FFC0
                  A47AFFC0A580FDA49177B66861512E393C3C0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000BBCCD0077B959A4B507478E051
                  7678FE4F7375FF4C6C6EFF4C686CFF4C676DFF4C686DFF516B70FF4F7374FF48
                  7E7FFF469CA2FF3CB1BCFF35C0CAFF3BCDD5FF3FD4DAFF45D2DAFF45CCD6FF3E
                  C0CBFF4FB4BDFF5A9EA2FF5E8383FF5E7A7AFF617476FF657071FF66716EFF67
                  736BFF65736CFF61736FFF607370FF637471FF677875FF657E7CFF568889FF54
                  A0A3FF5AB8BDFF60BDC1FF68B3B7FF699595FF74908DFF768A83FF74827BFF71
                  7B76FF6E7773FF6E7973FF6E7B74FF6A7B7AFF618388FF56969FFF5AA5ABFF5F
                  B3B8FF64C1C8FF69CED6FF70DAE1FF73E0E5FF77E2E6FF80E3E8FF90E4E7FF8B
                  C8C6FF84ADA6FF8AA59DFF899C98FF879590FF7F9087FF7B8880FF82807EFF7E
                  837BFF73857DFF688B89FF669799FF6AA6ABFF74B6B9FF84C5C5FF90BEB8FF96
                  B2A6FF98ADA1FF96A799FF92A08FFF8F9786FF90907FFF8E8D7AFF8C8F7BFF8C
                  8E7EFF8E8F7FFF8F907FFF909080FF919180FF929181FF929180FF949280FF95
                  9381FF969481FF979582FF989582FF979782FF979882FF989784FF9C9985FF9F
                  9883FFA09683EE8D84756C5C594D0B0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000009EB8BB0E5183857F49
                  9799ED3E9CA1FF37959CFF37909AFF35909BFF35919CFF3A959EFF3A9FA2FF3C
                  A8ADFF3CB2BDFF37B9C9FF39C4D3FF3DCED9FF40D6DDFF45D7DEFF45D3DBFF3D
                  CBD2FF45C1C8FF50B8BEFF57ADB3FF52A3ABFF4D9BA4FF4E959DFF52959AFF54
                  9699FF529598FF519599FF4F9699FF4F969AFF539A9EFF58A0A3FF59AAAFFF56
                  B2B8FF58BCC3FF5DC1CAFF62C1C9FF65BDC3FF6AB8BCFF6BAFB2FF67A5A7FF62
                  9C9FFF5C989BFF5C999DFF5E999EFF609BA3FF62A3ACFF60AFB8FF62B9BEFF66
                  C3C8FF6CCED5FF73D7E2FF77DFE8FF78E1E7FF78E1E5FF7CE3E6FF83E3E7FF8A
                  E0E1FF89D7D6FF83C9CCFF7EBDC5FF7BB5BCFF74ADB0FF6EA4A6FF729AA2FF6F
                  9B9DFF6C9D9DFF6DA4A8FF6FADB3FF72B9BEFF79C3C9FF84CDD1FF8ED2D3FF91
                  D3D1FF8FCECEFF88C4C2FF82BBB6FF7FB1ABFF82A6A1FF80A299FF7BA39BFF7A
                  A1A0FF7DA0A0FF81A19FFF81A19FFF82A19FFF84A1A0FF85A2A1FF85A3A0FF88
                  A4A0FF89A5A0FF8BA5A1FF8BA5A1FF8AA6A2FF89A7A5FF8AA5A6FF8EA3A3FF94
                  A4A2F7868E8EAA6164621B000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000B4D0D00179A5A62A42
                  9397AC3EADB4F830B2B9FF30B1BAFF32B2BCFF31B1BCFF33B4BAFF2FBBBCFF31
                  BFC2FF37C1CAFF3AC6D3FF3BCBD7FF3CD1D8FF3ED4DCFF44D5E0FF46D3DDFF43
                  CFD7FF47CCD0FF4DC7CCFF51C1C8FF4EBEC5FF4ABAC0FF4BB6BDFF51B5BDFF51
                  B5BCFF4FB5BBFF52B6BAFF52B6BAFF52B6BCFF54B7BFFF57B9C1FF5BBEC5FF5B
                  C5CAFF5ACACDFF5BCCD1FF5ECCD3FF5FCAD0FF61C9CEFF61C4C8FF62BFC2FF60
                  BBBEFF60BABEFF60BABFFF60B8BFFF64BAC1FF69BFC5FF6CC5CAFF6BCCCFFF6D
                  D0D5FF71D4DDFF77DAE6FF79DEE9FF78DFE6FF77E0E4FF79E2E5FF7DE2E6FF80
                  DFE4FF81DBDFFF7ED4DAFF7CCFD3FF7BCBCDFF77C7C7FF73C1C3FF77BAC2FF76
                  BBBEFF75BEBFFF79C0C5FF7BC5CCFF7CCBD2FF7ED1D7FF87D7DCFF8BDCDEFF8E
                  DDE0FF8DD7DEFF8CD3D9FF88CED1FF83C8C7FF89C3C3FF8AC1BFFF86C2C0FF87
                  C0C6FF8AC0C5FF8CC0C3FF8EC1C4FF90C1C3FF92C1C4FF93C2C4FF94C2C4FF96
                  C2C4FF97C2C5FF98C3C5FF99C3C5FF9AC4C6FF9BC4C5FF9EC2C5FFA8C5C8FEA4
                  BCC0D18091964F626B6F04000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000C8E6E7056D
                  AFB34549B0B7CB39C9D0FE32CDD2FF34CFD6FF36CDD7FF39CED6FF31D1D3FF34
                  D5D4FF3BD2D6FF3DD1D9FF3ED3DDFF3DD4DCFF3ED4DDFF43D5E0FF47D5DFFF49
                  D4DDFF4CD5DBFF4FD5DAFF53D4DCFF54D4DBFF54D5D9FF56D4DAFF5AD2DBFF57
                  D3DBFF57D3D9FF5CD4D9FF5ED4DAFF5ED4DAFF5FD4DDFF61D5DEFF61D5DBFF61
                  D7DCFF60D9DCFF61DADEFF62D9DEFF64D9DFFF66DBE0FF66DADDFF6ADADDFF6C
                  D9DDFF6DD9DEFF6ED9DEFF6FD8DEFF72D9DFFF77DCE0FF78DDE0FF75DDE0FF74
                  DEE2FF75DCE5FF79DEE9FF7BE0EAFF79E1E8FF77E2E6FF78E3E6FF7BE2E8FF7F
                  E2E9FF82E1E8FF81DFE5FF82E0E2FF84E0E0FF84E1DFFF84E0E1FF89DEE3FF87
                  DDE1FF89E0E3FF8CDFE4FF8EE0E7FF8CE1E8FF8AE2E8FF8EE5E9FF8FE6E9FF91
                  E6EBFF95E3ECFF98E5ECFF98E6EBFF97E5E7FF9CE4E6FF9FE5E5FF9EE6E6FF9F
                  E3EAFFA0E4EAFFA2E5E9FFA6E5E9FFA9E5E9FFABE5E9FFADE7E9FFAFE7E9FFAF
                  E7EAFFB0E8EBFFB2E9ECFFB3E7EBFFB7E9ECFFBBEAECFFC0E9EBFFC3E4E7E9A9
                  C2C6797D8F950F77828A00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000A7
                  D2D20E4A989D6D3DBAC2E635D2D7FE2FD4DBFF32D2DDFF36D2DDFF31D5DBFF32
                  D7D9FF39D6D9FF3ED6DBFF3FD5E0FF3CD4E0FF3FD6DFFF43D7DFFF46D7DFFF49
                  D6DFFF4BD6DFFF4ED8DFFF51D8E0FF51D8E0FF52D9E1FF55D9E1FF57D9E1FF56
                  DAE1FF57DAE1FF59DBE1FF5CDAE1FF5CDAE1FF5DDBE3FF5DDBE3FF5EDCE3FF5E
                  DCE3FF60DCE3FF62DCE3FF63DCE4FF64DDE3FF66DEE4FF67DEE4FF6ADFE5FF6B
                  DEE5FF6DDFE5FF6EDFE5FF70DFE5FF72E0E6FF73E1E6FF73E1E6FF74E1E6FF74
                  E0E6FF76E1E8FF77E1E9FF78E2E9FF78E2E9FF78E3E7FF7AE3E8FF7CE3E8FF7E
                  E4E9FF80E4E9FF81E3E8FF82E4E8FF83E4E8FF85E6E9FF86E6EAFF8AE6EBFF8A
                  E6EBFF8BE6EBFF8DE6ECFF8FE6ECFF8EE5ECFF8DE5EBFF8FE8ECFF91E9EDFF93
                  EAEEFF94E9EFFF96EAEFFF99EBEFFF9BEBEEFF9DEBEEFF9FEBEEFFA2ECF0FFA2
                  ECF1FFA1EDF1FFA3EEF2FFA9EDF2FFADEEF2FFAFEFF3FFB1EFF3FFB2EEF1FFB4
                  F0F3FFB2F0F4FFB4EFF4FFB8F0F5FFBDF2F6FFBFF2F5FFC5F2F5F3BADDDF938A
                  A3A61C7B8B8F0100000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000D9
                  F8F70181B3B61D52ADB49942C5CCF434D1DAFF33D3DFFF33D1DDFF30D5DBFF30
                  D6DAFF36D7DAFF3CD5DDFF3FD5E0FF3DD5DFFF3FD6DEFF43D7DEFF46D7DFFF49
                  D6DFFF4BD6DFFF4DD8E0FF4FD8E0FF4FD8E0FF51D9E1FF53D9E1FF55D8E2FF55
                  D9E2FF55DAE1FF57DBE2FF5ADAE2FF5BDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF66DEE4FF67DDE4FF69DEE5FF6A
                  DEE5FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF78E2E9FF78E3E7FF7AE3E8FF7CE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8AE6EBFF8BE7EBFF8DE6ECFF8EE6ECFF8DE5EBFF8FE8EDFF91E9EDFF93
                  EAEEFF93EAEEFF95EAEFFF98EBEFFF9AEBEEFF9CEBEEFF9EEBEEFFA2ECF0FFA2
                  ECF0FFA4EDF0FFA6EDF1FFA7EEF2FFAAEFF2FFAEEEF2FFB0EFF3FFAEEEF1FFB0
                  F0F4FFB0EFF3FFB6F0F5FFB9F0F6FFBBEFF5FFC3F2F5F9C1E9ECBA9AB9BC2D6E
                  8689020000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000007EB8BA2B4DAFB4A546CCD6F936CFDCFF33D2DEFF31D3DCFF33
                  D4DBFF34D5DCFF36D5DEFF39D6DEFF3BD6DCFF3ED6DDFF43D7DEFF46D7DFFF49
                  D6DFFF4BD6DFFF4DD8E0FF4ED8E0FF4FD8E0FF51D9E1FF52D9E1FF54D9E2FF55
                  DAE2FF55DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF66DEE4FF67DDE4FF6ADFE6FF6A
                  DEE5FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF78E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8EDFF91E9EDFF93
                  EAEEFF93EAEEFF96EAEFFF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA6ECF0FFA9ECF1FFA8EEF2FFACEEF2FFAEEEF3FFAEEFF3FFACF1F4FFAD
                  EFF3FFB3EFF3FFB6EEF2FFBAF0F7FFBEF1F7FCC4EDF0C0AACACD43788D8F0100
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000ADD6D60665B0B43F42B1B8C840CDD7FA33D2DDFF33D4DEFF34
                  D4DEFF35D5DDFF33D6DEFF35D6DCFF39D6DCFF3DD6DDFF43D7DEFF45D7DFFF48
                  D7DFFF4AD6DFFF4DD7E0FF4DD9E0FF4FD8E0FF51D9E1FF52D9E1FF54DAE2FF55
                  DAE2FF55DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF66DEE4FF67DDE4FF69DEE5FF6A
                  DEE5FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF78E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8EDFF91E9EDFF93
                  EAEEFF93EAEEFF96EBF0FF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA5EDF0FFA8ECF1FFABEDF2FFAEEEF3FFAEEEF3FFADF0F3FFABF0F3FFAC
                  EFF2FFB3EFF3FFB9F0F5FFBBF0F7FCBEEFF5DAAED1D55994AEB10C0000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000A6DBDC0859AEB05544BABECF3FD1D9FC36D2DEFF36
                  D4E0FF36D4DEFF35D6DEFF36D7DEFF39D6DDFF3DD6DDFF43D7DEFF45D7DFFF48
                  D7DFFF4BD7E0FF4DD7E0FF4DD9E0FF4FD8E0FF51D9E1FF52D9E1FF54DAE2FF55
                  DAE2FF56DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5DDCE4FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF66DEE4FF67DDE4FF69DEE5FF6A
                  DEE5FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E1E7FF76E1E8FF76E1E8FF77E2E9FF77E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF86E7EBFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8EDFF91E9EDFF93
                  EAEEFF93EAEEFF96EBF0FF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA3EDF1FFA6EDF1FFACEDF2FFADEEF3FFADEEF3FFADF0F3FFADEFF2FFB1
                  F1F5FFB3EFF4FFB9F0F6FEBDEEF4E0B0DBE07581A0A40B000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000B0E5E4008CCCCB0D55AFB16048BDC3D242D0D9FB38
                  D3DFFF36D4DFFF38D4DEFF3BD5DFFF3CD6DFFF3ED6DDFF42D7DEFF45D7DFFF48
                  D7DFFF4BD7DFFF4DD8E0FF4DD9E0FF4FD8E0FF51D9E1FF52D9E1FF54D9E1FF55
                  DAE1FF56DBE2FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5DDCE4FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF65DEE4FF67DEE4FF69DEE5FF6B
                  DFE6FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E1E7FF76E1E8FF76E1E8FF77E2E9FF77E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7F
                  E5EAFF80E4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF86E6EBFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8ECFF91E9EDFF92
                  E9EDFF93EAEEFF95EAEFFF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA2ECF0FFA3EDF1FFA8EDF2FFAAEFF3FFABEEF2FFADEFF2FFB0EFF3FFAF
                  EEF2FFB4F1F4FDB7ECF1E0AFDAE07795B7BD1480A0A400000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000084C3C41057ADB1634BC3CAD542
                  D2DBFB38D4DFFF3BD4DEFF3DD5DFFF3DD5DDFF3FD6DDFF42D7DEFF45D7DFFF48
                  D7DFFF4AD6DFFF4DD7E0FF4DD9E0FF4ED8E0FF50D8E0FF52D9E1FF54D9E1FF54
                  D9E1FF55DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF65DDE3FF67DEE5FF69DEE5FF6B
                  DFE6FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF77E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7F
                  E5EAFF80E4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8ECFF91E8ECFF92
                  E9EDFF92E9EDFF95EAEFFF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA3EDF1FFA4EDF1FFA5EDF1FFA7EEF2FFA9EEF2FFADEFF2FFB0F0F4FFB1
                  F0F2FDB6EFF2E1B2E0E47E93B5BB170000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000A7DADB0091C4C60A5CB6B95845
                  BCC2C344D5DEFA3BD3DDFF3CD6DEFF3CD6DCFF3FD6DDFF42D7DEFF45D7DFFF48
                  D7DFFF4BD6DFFF4DD7E0FF4DD9E0FF4FD8E0FF51D9E1FF52D9E1FF54D9E1FF54
                  D9E1FF55DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF65DEE4FF67DEE5FF69DEE5FF6B
                  DFE6FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF78E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8ECFF91E8ECFF92
                  E9EDFF92E9EDFF96EAEFFF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA3EDF1FFA6EEF2FFA5EBF0FFA9EDF2FFADEEF3FFAEF0F3FFAEF0F1FCB5
                  EFF0D2A8D6D96F88A7AC0F839FA4000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000082C5C70E53
                  AEB24F4AC3CAC34AD4DBF740D3DAFF3FD7DDFF3FD7DEFF43D7DEFF46D7DFFF49
                  D6DFFF4BD6DFFF4DD8E0FF4ED8E0FF4FD8E0FF51D9E1FF52D9E1FF54D9E1FF55
                  D9E1FF55DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF65DEE4FF67DEE5FF69DEE5FF6B
                  DFE6FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF78E2E9FF78E3E7FF7AE3E8FF7DE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8ECFF91E8ECFF92
                  E9EDFF92E9EDFF95EAEFFF98EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA3ECF0FFA4EBEFFFA9EDF2FFABECF0FFB0EFF3FFAFEDF0FAB2EEF0D7AF
                  E0E26490B5B81300000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000092
                  CDCF0754ABAE404FBBBFA650D0D6F145D5DCFF41D6DDFF43D7DEFF46D7DFFF49
                  D6DFFF4BD6DFFF4DD7E0FF4FD8E0FF4FD8E0FF50D8E0FF54D9E1FF55D8E1FF55
                  D9E1FF55DAE1FF57DBE2FF5ADAE2FF5CDBE3FF5CDBE3FF5CDBE3FF5CDBE3FF5D
                  DCE4FF60DCE4FF62DCE5FF63DCE5FF63DDE3FF65DEE4FF67DEE5FF69DEE5FF6B
                  DFE6FF6CDFE6FF6DDFE5FF70E0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF74
                  E0E7FF76E1E8FF76E1E8FF77E2E9FF78E2E9FF78E3E7FF7AE3E8FF7CE4E9FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF8A
                  E6EBFF8BE6EBFF8CE7ECFF8DE6ECFF8EE6ECFF8EE6ECFF8FE8ECFF91E8ECFF92
                  E9EDFF92E9EDFF95EAEFFF99EBEFFF9AEBEEFF9CEBEEFF9FECEFFFA2ECF0FFA2
                  ECF0FFA4EBEFFFA8ECF1FFA8EBF0FFACEEF1FFB4F0F4F9B7EBEFC2A7D4D75A75
                  999B090000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000A6
                  D8D8008CC7C8065EACAE2E59BDC19155D1D7E54AD4DDFD45D7DEFF47D7DFFF48
                  D6DFFF4BD6DFFF4DD7DFFF4FD7DFFF4FD8E0FF4FD8E0FF52D9E1FF54D8E1FF55
                  D9E1FF56DAE2FF57DBE2FF5BDAE2FF5CDBE2FF5CDBE2FF5CDBE3FF5CDBE3FF5D
                  DCE4FF5FDCE4FF61DCE5FF63DCE5FF63DDE3FF65DEE4FF67DEE4FF6ADFE6FF6B
                  DFE6FF6CDFE6FF6DDFE5FF6FE0E6FF70E0E6FF71E1E7FF71E1E7FF73E1E7FF75
                  E0E7FF76E1E8FF76E1E8FF78E2E9FF78E2E9FF78E3E7FF7AE3E8FF7CE3E8FF7E
                  E4E9FF7FE4E9FF80E4E9FF81E4E8FF82E5E9FF84E5E9FF85E6EAFF88E6EBFF89
                  E6EBFF8AE6EBFF8CE7ECFF8CE7ECFF8DE6ECFF8EE6ECFF8FE7ECFF91E8ECFF92
                  E9EDFF92E9EDFF96EAEFFF99EBF0FF9AEBEFFF9CEBEEFF9FEBEFFFA2ECF0FFA2
                  ECF0FFA2EBEFFFA6EBF0FFAAEDF2FEACEDF1F2B0E7EBAFA1CCD0438BA9AF0B80
                  9BA0000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000008FC3C30270B0B0215EB6BA7E57C8D2DB51D5E0FF4BD7DFFF48
                  D7DEFF4AD7DEFF4ED7DFFF50D8DFFF4DD8DFFF4DDAE1FF4FD9E1FF52D9E1FF54
                  D8E2FF55D8E2FF58D9E2FF5BDAE2FF5CDAE2FF5CDCE0FF5ADCE1FF5ADBE2FF5B
                  DCE4FF5CDBE5FF5FDBE6FF61DBE5FF63DDE4FF65DDE3FF66DEE4FF67DFE5FF69
                  DFE5FF6BDFE6FF6CDFE5FF6EE0E6FF6FE0E6FF70E1E7FF71E1E7FF72E1E7FF73
                  E1E7FF75E0E7FF76E1E8FF78E2E9FF78E2E9FF78E3E7FF79E3E7FF7BE3E8FF7E
                  E4E9FF7FE4E9FF80E4E9FF80E4E9FF81E5E9FF83E6EAFF84E6EAFF86E7EBFF88
                  E6EBFF89E6EBFF8AE6EBFF8AE6ECFF8BE5ECFF8CE5ECFF8FE7EDFF91E8EEFF90
                  E8EEFF92E9EEFF96E9EFFF9AEBF1FF9CE9EFFF9FEBF0FFA0EBEFFFA1EBEFFFA1
                  EEF0FF9FEBEEFFA3ECF0FFADEDF1E8ADE4E99E9AC6CA2F80A1A5040000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000008AB5B10171ACAD1355A8AF575CC6CFC656D3DBF54A
                  D6DEFF48D6DFFF4CD6DEFF51D8E0FF51D9E1FF4ED9E0FF4FD9E0FF53D9E1FF55
                  D8E1FF55D8E1FF58D9E2FF5ADAE2FF5ADBE2FF5BDCE2FF5BDCE2FF5BDCE2FF5D
                  DCE4FF5EDCE5FF5FDCE4FF61DBE4FF63DDE4FF64DDE3FF66DEE4FF67DFE5FF69
                  DEE5FF6ADFE6FF6BE0E5FF6EE0E6FF6EE0E6FF6FE1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF7FE4E9FF80E4E9FF80E4EAFF81E4EAFF83E6EBFF83E6EAFF85E7EBFF85
                  E7EBFF87E7EBFF89E6EBFF8AE6EBFF8BE6EDFF8CE6ECFF8EE7ECFF91E8EDFF91
                  E8EEFF92E9EEFF95EAF0FF98EAF0FF9BEAEFFF9DE9EFFFA1EBF0FFA2ECF0FFA2
                  EBEEFFA8EEF0F5ACECEFD0ACE0E46A90BCBF1A84A8AC01000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000B5DEDE017EB3B50C5BA9AE4A53B8BFAB58
                  D2DBF24FD4E0FE4DD4E0FF51D7E0FF52D9E1FF52D9DFFF54D9E0FF56D8E0FF55
                  DADFFF53DADFFF56DBE1FF58DBE2FF59DBE2FF5ADBE3FF5CDBE4FF5EDBE3FF5F
                  DCE3FF60DCE2FF61DDE2FF62DDE1FF63DDE3FF63DDE3FF65DEE4FF67DFE5FF69
                  DEE5FF6ADFE6FF6BE0E5FF6EE0E6FF6EE0E6FF6FE1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF80E4E9FF81E3EAFF83E2EBFF83E4EAFF83E5EBFF83E6EAFF83E6EAFF84
                  E8EAFF86E7EAFF89E7EAFF8BE7EBFF8DE7EBFF8EE7EBFF8EE7EBFF91E9EDFF93
                  E9EDFF93E9EDFF94EBEFFF96ECF0FF97EBF0FF99EAF0FF9EEAEFFFA5EBF0FDA9
                  EAEFEAB0E8EBA8A3D5D64C98BFC30B6686890100000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000A9D3D7046AA9AE274E
                  A3AB7C5BC7D1D456D3DBF94ED6DFFF4ED7E0FF53D8E1FF58D9E1FF58D7DEFF53
                  DBE0FF50DCDFFF54DBE0FF58DBE2FF5BDAE2FF5DDAE4FF5DDBE3FF5DDBE2FF5E
                  DDE2FF5EDDE1FF60DDE1FF60DDE1FF61DDE3FF63DDE3FF64DEE4FF66DFE5FF68
                  DFE5FF6ADFE6FF6BE0E5FF6EE0E6FF6FE0E6FF71E1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF80E4E9FF82E3EAFF83E2EBFF84E3EBFF84E5EBFF83E5EBFF83E6EAFF85
                  E7EAFF88E7EAFF8DE7E9FF90E7E9FF93E7E9FF93E7E9FF90E7E9FF93E8EBFF96
                  E9EBFF96E9EBFF95EBEEFF92ECEFFF90ECEDFF96EEEFFF9EEBEDF5AAEAEFCBAB
                  E0E56F8EB7BC1A6A858902000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000A5D0D30272
                  ADB2135EACB24E54B4BA9E5FD3D8E85BD8DFFB55D8DFFF56D9E0FF54D9E0FF50
                  DBE2FF4FDBE1FF55DAE1FF59DAE2FF5CDAE2FF5CDBE1FF5BDBE1FF5BDBE1FF5C
                  DDE2FF5EDDE2FF62DCE3FF64DDE4FF62DDE3FF62DDE3FF63DEE4FF65DFE5FF67
                  DFE5FF6ADFE6FF6BE0E5FF6EE0E6FF6FE0E6FF71E1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF80E4E9FF82E3EAFF83E2EBFF83E3EBFF84E5ECFF83E5EBFF83E7EBFF85
                  E7EBFF87E7EAFF8AE7EAFF8DE8EAFF8FE7EAFF90E7EAFF91E7EBFF95E8ECFF97
                  E8ECFF97E8EBFF97EAEEFF96ECEEFF98ECEEFA9EEAECE3A5E4E79B97CCD24389
                  B3BA0D769CA10000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000009AC2C5056CA9AB1E55AAAB6B63C8CBBC5ED1D5F15BD8DFFE53D8E1FF52
                  D9E3FF55D9E2FF59D9E2FF5CD9E2FF5DDAE1FF5CDCE0FF5ADBDFFF59DBE0FF5B
                  DDE3FF60DCE4FF64DBE5FF66DCE6FF62DDE4FF61DDE3FF63DEE4FF65DFE5FF68
                  DFE5FF6ADFE6FF6BE0E5FF6EE0E6FF6FE0E6FF71E1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF7FE4E9FF80E3EAFF81E3EAFF81E4EAFF83E5EBFF83E5EBFF84E7EBFF85
                  E7EBFF86E7EBFF88E6EAFF89E7EBFF89E7EBFF8BE7EBFF90E8ECFF94E8EDFF94
                  E8EDFF97E9ECFF9AEAEDFEA1ECEEEFA3E5E8B79ED6D9657DABAE15769BA00200
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000009DC7C70175ACAA0864A8A8285EB0B4725BC1C8BE5FD3DCEB5E
                  D7E2FC5FD8E2FF60D8E2FF5ED9E2FF5EDBE2FF5DDAE1FF5CDAE1FF5DDBE2FF5E
                  DBE5FF5FDAE5FF5ED9E5FF60DBE6FF61DDE5FF62DDE3FF65DEE4FF66DEE4FF69
                  DFE6FF6ADFE5FF6BE0E5FF6EE0E6FF6FE0E6FF71E1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF7FE4E9FF7FE4E9FF7DE4E9FF7EE4E9FF83E6EBFF83E4EAFF87E6ECFF88
                  E5EBFF88E4EBFF8BE6ECFF8BE6ECFF8AE5EBFF8BE6ECFF8CE7ECFF8EE8EDFF8F
                  E8EBFE95E9EBEF9EE9EAC699D6D8768DC0C12787B0B306000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000A9D2D20173AAAC0E559EA33358B0B76D64
                  C8CFC567D4DBEB66DAE0FC5FDAE0FF59D8DFFF5BDAE2FF5EDAE3FF5FD9E4FF62
                  DAE5FF60DAE5FF5EDBE5FF5EDCE4FF62DDE4FF64DDE3FF66DEE4FF67DEE4FF69
                  DFE6FF6ADFE5FF6BE0E5FF6EE0E6FF6FE0E6FF71E1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF7FE4E9FF7EE4E8FF7DE5E9FF7EE4E8FF82E5EAFF81E3E9FF87E5EBFF8A
                  E5ECFF89E3EAFF8CE5ECFF8CE5EBFF8CE5EBFF8EE6ECFF91E7EBFD95E7EAEE99
                  E6E9CE96DADD8692D0D23A6FA3A50B608A8C0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000AED1D50090BDC10561
                  A4A7274FA1A4585EBABE9868D0D5D469DCE1F663DCE3FF62DBE3FF62D9E3FF61
                  D9E3FF5FDAE2FF5DDCE3FF5EDEE4FF63DDE3FF65DDE3FF66DEE4FF67DEE4FF6A
                  DFE6FF6ADFE5FF6BE0E5FF6EE0E6FF6FE0E6FF70E1E7FF71E1E7FF71E1E7FF72
                  E1E7FF74E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF7FE4E9FF7EE3E7FF80E4E8FF81E4E9FF83E5EAFF85E6EBFF87E6ECFF88
                  E5EBFF8AE5EAFF8DE6EBFF8FE6EAFF92E6EAF696E6E9E097DDE0A793D1D56575
                  ADB02970989D0870919600000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000A5
                  CBCF0183B6BA0759979A185FABB04762BBC08667CAD1C669D3DAE169D8DFF469
                  DDE3FC64DCE2FF61DEE3FF60DEE3FF65DDE3FF65DDE3FF67DEE4FF68DDE4FF6A
                  DFE6FF6ADFE5FF6BE0E5FF6EE0E6FF6EE0E6FF6FE1E7FF71E1E7FF71E1E7FF72
                  E1E7FF73E1E7FF77E1E8FF78E2E9FF78E2E9FF78E3E7FF78E3E7FF7AE4E8FF7E
                  E4E9FF80E4E9FF81E3E9FF83E3E9FF83E3E9FF85E5EAFF84E4E9FF88E7EBFF8B
                  E6EAFD8EE6EAF890E4E6E792E1E3C98DD8DA9384CBCD5177AFB11F608B8F0774
                  979B010000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000083ACB0026DA3A80E67AAAE2E5CA9AD515EB6BB7F6A
                  CACFAC6ACFD5D870DBE2F56DDCE3FE6BDEE4FF69DDE4FF69DDE4FF69DDE4FF6B
                  DFE6FF6BDFE5FF6CE0E5FF6EE0E6FF6EE0E6FF6FE1E7FF70E1E7FF71E1E7FF72
                  E1E7FF73E1E7FF77E1E8FF78E2E9FF78E2E9FF79E3E7FF79E3E7FF7BE4E8FF7F
                  E4E9FF80E4E9FF83E3E9FF84E2E8FF87E4EAFF88E6EBFE8BE6EBF890E7EBEA8C
                  DCDFC38DD5D89180BFC15D79B0B22E76A7A90E6E9B9E02000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000087B1B4016BA3A7035F9FA4094C
                  9498165DA6AB3A75C0C67278C9D09473CDD4B572CFD6CB75D5DBDF75DAE1EE74
                  DDE3F671DEE4FC70DFE4FF71DFE4FF72E0E6FF74E0E7FF75E1E7FF75E0E7FF75
                  E0E7FF76E0E7FF78E1E9FF7CE2E9FF7DE2E9FF7FE2E7FF7FE2E7FF82E2E8FC86
                  E2E8F888E2E8F28AE2E6EB87DCDFD985D8DBC287D6DAA18AD4D78288CACE5473
                  B0B4236AA4A70A6F9EA103729698010000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000083A5A701668B8D056492950C6EA5AB1E6FAEB4326EB4B94A69B8BD6266
                  BCC18169C5C9B272D0D5CE7EDDE0D881DFE4DB82DDE4DF83DCE3E381DDE4E680
                  DDE5E781DDE5E582DDE6E286DFE7DE89E0E7DC8CDFE5D88ADAE1D185D1D8C07C
                  C5CB9876BFC57577BFC35C75BBBB4671B3B22E6DA6A8165E8E90085C7F830100
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000007D
                  A5A8045F8C8F0A4374770D2C60631235686C1A43777B245086892F558C8F3757
                  8F923A5A909439578C8F3350838527497A7C1E3C696C133F696C0A51777B096E
                  92950881A2A60200000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000091AFB1018BACAE0284A6A80380A3A5047F
                  A2A3047FA2A30481A4A50487A7A7038AA9A9028FA9AB0191AAAB000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFC0003FFFFFFFFFFFFFFFFFFFFFFFFFE0000000FFFFFFFFFFFFFFFFFFFFFFF
                  E0000000007FFFFFFFFFFFFFFFFFFFFF80000000001FFFFFFFFFFFFFFFFFFFFC
                  000000000003FFFFFFFFFFFFFFFFFFF8000000000000FFFFFFFFFFFFFFFFFFC0
                  0000000000003FFFFFFFFFFFFFFFFE000000000000000FFFFFFFFFFFFFFFFE00
                  00000000000007FFFFFFFFFFFFFFF80000000000000001FFFFFFFFFFFFFFF000
                  00000000000000FFFFFFFFFFFFFFC000000000000000003FFFFFFFFFFFFF8000
                  000000000000000FFFFFFFFFFFFE0000000000000000000FFFFFFFFFFFFC0000
                  0000000000000003FFFFFFFFFFF800000000000000000003FFFFFFFFFFF00000
                  0000000000000001FFFFFFFFFFE0000000000000000000007FFFFFFFFFC00000
                  00000000000000007FFFFFFFFF80000000000000000000001FFFFFFFFF000000
                  00000000000000001FFFFFFFFE00000000000000000000000FFFFFFFFE000000
                  00000000000000000FFFFFFFFC000000000000000000000003FFFFFFF8000000
                  000000000000000003FFFFFFF8000000000000000000000001FFFFFFF0000000
                  000000000000000000FFFFFFE0000000000000000000000000FFFFFFE0000000
                  0000000000000000007FFFFFC00000000000000000000000003FFFFFC0000000
                  0000000000000000003FFFFF800000000000000000000000001FFFFF00000000
                  0000000000000000001FFFFF000000000000000000000000000FFFFE00000000
                  00000000000000000007FFFE0000000000000000000000000007FFFC00000000
                  00000000000000000007FFFC0000000000000000000000000007FFFC00000000
                  00000000000000000003FFF80000000000000000000000000003FFF800000000
                  00000000000000000003FFF80000000000000000000000000001FFF800000000
                  00000000000000000001FFF80000000000000000000000000001FFF000000000
                  00000000000000000000FFF00000000000000000000000000000FFE000000000
                  00000000000000000000FFE00000000000000000000000000000FFE000000000
                  00000000000000000000FFE00000000000000000000000000000FFE000000000
                  00000000000000000000FFE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  000000000000000000007FE000000000000000000000000000007FE000000000
                  00000000000000000000FFE00000000000000000000000000000FFE000000000
                  00000000000000000000FFE00000000000000000000000000000FFE000000000
                  00000000000000000000FFE00000000000000000000000000000FFE000000000
                  00000000000000000000FFF00000000000000000000000000001FFF800000000
                  00000000000000000001FFF80000000000000000000000000001FFF800000000
                  00000000000000000003FFF80000000000000000000000000003FFF800000000
                  00000000000000000003FFFC0000000000000000000000000007FFFC00000000
                  00000000000000000007FFFC0000000000000000000000000007FFFE00000000
                  00000000000000000007FFFE000000000000000000000000000FFFFF00000000
                  0000000000000000001FFFFF000000000000000000000000001FFFFF80000000
                  0000000000000000003FFFFF800000000000000000000000003FFFFFC0000000
                  0000000000000000007FFFFFE0000000000000000000000000FFFFFFE0000000
                  000000000000000000FFFFFFF0000000000000000000000000FFFFFFF8000000
                  000000000000000001FFFFFFF8000000000000000000000003FFFFFFFC000000
                  000000000000000007FFFFFFFE00000000000000000000000FFFFFFFFF000000
                  00000000000000001FFFFFFFFF00000000000000000000001FFFFFFFFFC00000
                  00000000000000007FFFFFFFFFC0000000000000000000007FFFFFFFFFF00000
                  0000000000000001FFFFFFFFFFF800000000000000000003FFFFFFFFFFF80000
                  0000000000000003FFFFFFFFFFFE0000000000000000000FFFFFFFFFFFFF0000
                  000000000000001FFFFFFFFFFFFF8000000000000000003FFFFFFFFFFFFFE000
                  00000000000000FFFFFFFFFFFFFFF00000000000000001FFFFFFFFFFFFFFFC00
                  00000000000007FFFFFFFFFFFFFFFE000000000000001FFFFFFFFFFFFFFFFF80
                  0000000000003FFFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFF8
                  000000000003FFFFFFFFFFFFFFFFFFFF00000000001FFFFFFFFFFFFFFFFFFFFF
                  C0000000007FFFFFFFFFFFFFFFFFFFFFFC00000007FFFFFFFFFFFFFFFFFFFFFF
                  FFF80001FFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFF280000004000000080000000010020000000000000
                  400000C30E0000C30E0000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000079
                  A7A902639A9B06609394086193980960939709649296076B9599047C9FA30100
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000609199005D9FA40367AEB01370BCC13674CAD05D7AD3D9957A
                  D5DBB27ADADFD480DDE2E280E0E4E47FE0E3E383E1E3DD86DEE0C988DBDCAB8B
                  DADB8C87D0D25883C5C62F7BB5B70E75A7A8024E707300000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000065
                  9B9E0264B2B61A67C0C8556CD0D7A473D9DEE26FDDE0F86FE0E5FF71DFE5FF76
                  DFE7FF73E0E7FF72E1E7FF76E2E9FF77E2E9FF7AE3E9FF7DE3E8FF7FE4E8FF83
                  E6E9FF89E6E9FE8DE6E7F493E4E5DC96DCDE9E8FC9CD5880B4B8196995970200
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000005B9DA10467BABD2E67
                  CCCF8566D8DBDD65DCE2FB65DCE4FF64DCE3FF69DEE4FF6AE0E5FF6AE0E5FF71
                  E1E7FF73E0E7FF72E0E7FF74E2E9FF77E1E9FF7CE2EAFF80E3EAFF82E3E9FF85
                  E4EAFF89E5ECFF8AE5EBFF8CE7ECFF8FE7EBFF97E8ECFB9AE4E8DC98D9DD8790
                  C2C72C668B8F0300000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000073A6AA0164B5BA2B63CBD09563D8DFEA59
                  DBE2FE5ADCE3FF62DCE2FF66DDE2FF67DDE1FF6AC8CEFF58A4ACFF5EACB5FF71
                  CED5FF74D6DFFF73D7E1FF75DDE2FF78E0E5FF7CE2E8FF7EE3E9FF7FE3E9FF82
                  E5EBFF85E6ECFF8AE5ECFF8DE6ECFF8DE7ECFF90E8EEFF94E8EEFF9BE9F0FE9F
                  E8EDE89CDCDE8D93C3C5265F7E80010000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000005FA5A90E61C1C6705FD6DAE359D9E0FE5BDBE1FF5B
                  DCE0FF5DDAE4FF5FDAE4FF66DDE3FF54A0A4FF133136FF0C1C22FF0C1E24FF1A
                  3B42FF457D83FF68B8BEFF6BC8CDFF73D3D8FF7ADDE2FF7EE1E7FF82E2E8FF85
                  E4EAFF87E6EBFF8BE6EBFF8DE7ECFF8DE7ECFF91E9EDFF93E9EEFF97EAF0FF98
                  EAF0FFA1EBF1FEADE9EEDEA5D8DC688AB3B70B00000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000006BA8AF015FB9C02F64D0D6B657D8DFFB52D9E1FF55DAE2FF59DAE1FF5A
                  DCE2FF5ADCE3FF5BDBE4FF64D6DEFF1D4D55FF101B20FF161A1FFF111B20FF12
                  1A22FF121923FF25444AFF5B9EA3FF67BBC2FF74CCD4FF75DADEFF7DE1E5FF84
                  E5EAFF88E6EBFF8DE5ECFF90E6ECFF8DE7ECFF90E9EDFF93E9EEFF97EAF0FF9B
                  EAF0FFA0EBF1FFA4EBF0FFAAEDF2FBB0E5EAAF9BC6C923719292000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000006D
                  B2B8045EBEC45A5DD3D8E550D8DEFF4BD9E0FF55D8E2FF5AD9E1FF5BDAE2FF5B
                  DCE2FF5CDCE2FF60DBE5FF68DAE5FF64C9D0FF2E676EFF18373FFF477A7EFF3A
                  6267FF12252BFF121A20FF234148FF5EA2A8FF66B6BEFF6FCACFFF79DADEFF83
                  E4E9FF87E6EBFF88E6ECFF8BE7EDFF8EE6ECFF93E8EDFF95E8EDFF96EAEFFF9A
                  EBF0FF9FECF0FFA3ECF0FFA7EDF2FFACEEF2FFB4ECEEDCA4D4D5477A9FA10200
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000079BFC50656
                  C2C86E54D4DCF14AD7DCFF47D9DFFF4BD9E1FF54D8E1FF57D9E1FF56DBE0FF5A
                  DCE1FF5FDBE3FF5EDBE5FF68DAE5FF69D9E0FF70D1D5FF66B4B9FF63B1B5FF5A
                  A2A4FF3A6265FF15191FFF0E1B20FF49797EFF5AA2A7FF69B8BEFF76CFD4FF81
                  E0E6FF89E5EBFF8AE5EBFF8BE7EDFF8BE7ECFF8EE9EDFF92E9EDFF96EAEFFF9A
                  EBF0FF9FECF0FFA3ECF0FFA7EEF2FFA6EEF1FFAEEFF3FFB4EEF2EAB0DBE05C92
                  ACB1040000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000062AFB40951C2C87F4A
                  D5DBF646D7DDFF48D7DEFF4CD8DFFF52D8E1FF54D9E1FF54DAE1FF53DCE0FF5A
                  DBE2FF60DAE3FF5FDCE2FF5CB4BBFF31676EFF2B575CFF2F5F63FF3C686DFF45
                  6F73FF2D4147FF111A1FFF11191EFF3B5D62FF528F93FF5C989CFF629CA2FF77
                  BEC4FF88DCDFFF85DFE2FF89E0E6FF8EE3E8FF91E7EBFF92E9EDFF96EAEFFF9A
                  EAF0FF9EEBEFFFA3ECF0FFA7EEF1FFAAEFF1FFAEEFF3FFB4EEF6FFBCEEF4EFB4
                  DDE1658AA7A80300000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000067AFB6064CC5CC803ED5DBF93F
                  D6DCFF41D7DDFF47D8DEFF4ED7DFFF54D8E1FF54D9E1FF55D9E0FF57DAE2FF59
                  DBE3FF5DDAE2FF60C7CBFF13343AFF121A1FFF151A1EFF131A1DFF0F1B1FFF11
                  1A20FF161920FF181820FF0F1A21FF446B6FFF355F63FF132A30FF111A23FF13
                  262EFF335A5EFF69A8AAFF7CC8CCFF84D1D6FF8BDDE2FF90E5EAFF96EAEFFF9A
                  EAF0FF9EEBEFFFA3ECF0FFA7EEF1FFA8EFF1FFADF0F3FFB2EFF6FFB3F0F6FFBB
                  F0F2EFB6DDE05D829C9D02000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000007AB7BC024EBEC46841D3DBF539D6DDFF3D
                  D5DCFF41D7DFFF47D7DEFF4DD7DFFF50D9E1FF4FDAE0FF53DAE1FF59DBE1FF5E
                  DAE2FF62DAE2FF45979DFF0F1820FF161A1FFF131C1FFF131C20FF121B20FF16
                  1A20FF121A1FFF111D20FF2B444BFF41686EFF141D25FF18191FFF141B1FFF14
                  1E22FF111B1FFF172A30FF5D8A8FFF71BABDFF7DCBD0FF8ADADFFF92E6EBFF9A
                  EAF0FF9EEBEFFFA3ECF0FFA7EEF1FFA6EFF0FFADF0F2FFB0F0F4FFB2F0F5FFBA
                  F1F5FFC1F1F3EFB3D8DA45000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000086C0C4014DB3BD4B3FCFD5EF33D5DCFF39D6DFFF3D
                  D6DFFF42D7E0FF47D7DFFF4BD7DFFF4FD9E1FF52D9E1FF54D9E1FF56DBE1FF5A
                  DAE1FF62D9E4FF47999EFF0B1B1DFF151A1EFF395B61FF416F75FF365B60FF32
                  5358FF2F555BFF3F6970FF55858CFF24494CFF151A1FFF161921FF304D52FF55
                  7D80FF294146FF13191FFF213138FF679DA2FF72B6BAFF81CACEFF8CDFE2FF9D
                  E8EEFF9FEBF0FFA2ECF0FFA7EEF0FFABEFF0FFAEEFF3FFB0F0F5FFB5F1F5FFBB
                  F2F5FFC0F2F5FFC5F0F2DDA9C7CB240000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004BA9AE213DCAD0D732D4D9FF35D4DCFF3BD6DEFF43
                  D5DFFF44D6DFFF47D7DFFF4BD7DFFF50D9E1FF53D9E1FF54D9E1FF57DAE2FF5C
                  DAE2FF60DAE3FF66C6CDFF103239FF111A21FF2B4B51FF4D7C80FF3C666AFF3A
                  686BFF509195FF53989EFF5B9A9FFF1D3B3FFF18191EFF17272DFF588A8DFF55
                  8D90FF476A6EFF10191EFF0F1B22FF4B767CFF65A2A7FF6BA4A8FF83C3C3FF98
                  E3E5FF9CE8EAFFA0E9EDFFA3EBEEFFAAEEF1FFADEFF4FFB0EFF5FFB5F1F5FFBA
                  F2F5FFBEF3F6FFC3F3F5FFC7EEEEB299B4B50B00000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000006FB7BA0540BEC3932DD3D9FE30D4DBFF32D4DDFF34D7DFFF3F
                  D6DEFF43D7DEFF47D7DFFF4BD8DFFF50D9E1FF53D9E1FF55DAE1FF56DBE3FF57
                  DBE2FF5BDCE1FF65DBE3FF54A2ACFF142E36FF121A21FF16252CFF111F25FF12
                  1F25FF2A4D54FF529097FF5CA2A9FF254249FF121B1EFF213A3CFF609497FF55
                  8D92FF406065FF12191EFF101B22FF47696FFF63979CFF325658FF1F3B3DFF65
                  9295FF93D4D6FF99D7DBFF9CDEE3FFA5E9ECFFACEFF2FFB0EFF5FFB5F1F5FFB9
                  F2F5FFBBF4F5FFC0F4F5FFC7F5F6FAC1E3E4737D8E9101000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000042AAB34132CDD4F229D3DBFF30D3DDFF30D5DEFF35D5DEFF3C
                  D6DEFF42D6DEFF47D7DFFF4BD7DFFF50D8E0FF53D9E1FF54D9E1FF58DAE3FF5B
                  DBE2FF5DDCE1FF5FDBE4FF65D9E2FF5CB1B5FF2C5B5EFF0E272CFF0D1C22FF0E
                  1C23FF173239FF4E8A90FF61A7AEFF447179FF0C1A20FF18282BFF568184FF5A
                  878CFF24373CFF131A1FFF141B23FF54787DFF628F93FF1E3034FF151B1EFF14
                  2229FF75ADAFFF87BFC4FF90CDD1FFA1E0E3FFAEECEFFFB1F0F3FFB3F0F4FFB8
                  F2F5FFBAF3F5FFC0F4F5FFC7F4F6FFCAF1F3E3AEC7C928000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000062B3B50835C1CBBA27D1DBFF25D4DCFF2ED4DDFF32D5DEFF3AD5DEFF3F
                  D5DFFF43D6DFFF48D7DFFF4BD7DFFF50D8E0FF53D9E1FF54D9E1FF57DBE3FF5A
                  DBE1FF5CDCE2FF5FDBE4FF62DBE4FF62D7DCFF64C8CBFF57A2A7FF447F84FF3D
                  777BFF538E94FF559EA4FF5DABB2FF6EB4BCFF25464FFF121A20FF1A282DFF21
                  2C34FF141A20FF0E1A1EFF233339FF5E8B8EFF4E7478FF151D22FF15191EFF2F
                  4046FF75A8ABFF76AAAEFF89BEC2FF99D1D2FFA8E4E5FFAEEEF0FFB1EEF2FFB8
                  F0F4FFBDF0F3FFC2F3F5FFC6F4F7FFCBF5F8FEC6E6E999839799040000000000
                  00000000000000000000000000000000000000000000000000000000000000BF
                  E9EF002FA9AF4A27CFD7F824D2DCFF26D3DDFF30D3DDFF31D5DDFF35D6DEFF3D
                  D6DFFF43D6E0FF48D7DFFF4BD7DFFF50D8E0FF53D9E1FF55DAE2FF56DBE3FF5B
                  DBE2FF5EDBE3FF5ADDE4FF60DCE4FF65DBE3FF63D7DEFF62CDD4FF5FBFC6FF5C
                  B2B9FF58A9B0FF56A8AFFF5CB4BAFF69C2CAFF71BCC3FF366468FF102429FF10
                  1B21FF111A21FF172A30FF51767AFF5B8D8FFF344F54FF171920FF141920FF4C
                  6A6FFF68979AFF6D999DFF5F8286FF2C3D41FF30484CFF759A9EFFA4D5D8FFA8
                  DBDFFFB6E3E8FFBDECEFFFC3F3F6FFCCF4F8FFCEF4F6EEA9C5C72D6C797D0000
                  0000000000000000000000000000000000000000000000000000000000000062
                  B4B8082BC1CAB51AD3D9FF1FD2DDFF29D3DDFF2DD3DCFF33D4DEFF37D6DEFF3D
                  D6DFFF41D6E0FF47D7DFFF4BD8DFFF50D9DFFF53DAE0FF54D9E1FF56DBE3FF58
                  DBE2FF5EDBE3FF5FDCE3FF60DDE2FF64DDE3FF66DEE3FF68DBE2FF69D4DBFF69
                  CCD4FF68C6CDFF66C5CAFF6BCACFFF70D3D9FF78D9DFFF78D3D8FF61A9ADFF4F
                  7C81FF4A757CFF588C93FF5E8E93FF46686CFF222F35FF1A181FFF131F24FF60
                  888BFF629093FF6F9398FF223339FF181820FF151A1FFF151D22FF4F6E70FF93
                  BEC1FFA3CDD1FFB2DFE2FFBDEFF1FFCCF4F7FFD0F6F8FFC7E6E8948996990200
                  0000000000000000000000000000000000000000000000000000000000000028
                  9FA23719CDD2F019D3DAFF20D2DCFF28D4DCFF2DD3DCFF33D5DEFF37D6DEFF3C
                  D6DFFF41D6E0FF47D7DFFF4BD8DFFF50D9DFFF53DAE0FF54D9E1FF56DBE3FF58
                  DBE2FF5EDBE3FF5FDCE3FF60DDE2FF63DDE3FF67DDE5FF6ADFE5FF6CDFE3FF6E
                  DEE1FF71DCE2FF72DBE5FF74DEE2FF74E1E5FF7BE2E7FF7FDFE5FF7BD5DBFF77
                  C7CDFF6EB9BDFF68ADB3FF4C777EFF0E1B22FF111B20FF17191FFF273A3EFF68
                  8E92FF608F93FF647E85FF171B25FF141921FF18262BFF1B252BFF4E6267FF80
                  A4A7FF91BDC0FFA9D5D8FFBBEAEDFFCCF4F7FFCEF6F8FFD2F1F3E69CADAF1C00
                  00000000000000000000000000000000000000000000000000000089CACE0128
                  B5BD8412D1D9FE17D2DBFF1CD4DBFF26D4DBFF2DD4DCFF33D5DEFF36D6DEFF3C
                  D6DFFF41D6E0FF47D7DFFF4BD8DFFF4FD9DFFF53DAE0FF55DAE2FF56DBE3FF59
                  DBE2FF5EDBE3FF5FDCE3FF60DDE3FF63DDE3FF65DEE5FF66DFE5FF69DFE4FF6F
                  E0E5FF74E0E7FF76DFE8FF7AE0E9FF79E2E9FF7AE3E8FF82E3E8FF81E1E5FF79
                  DCDFFF77D4D7FF7BCAD1FF5D989EFF15262DFF161A1FFF151A1EFF26363AFF57
                  787AFF608B8EFF3D5258FF151821FF161A21FF546D72FF627E83FF627F83FF79
                  999DFF91B9BCFFAAD5D8FFBCE9ECFFCCF4F7FFCFF6F9FFD5F7FAFEBFD6D86400
                  00000000000000000000000000000000000000000000000000000056B1B70C1B
                  C3CBC909D2D9FF17D2DCFF1ED3DBFF26D4DBFF2CD4DCFF32D4DEFF36D6DEFF3B
                  D6DFFF41D6E0FF47D7DFFF4AD7DFFF4FD9DFFF53DAE0FF55DAE1FF56DBE2FF58
                  DBE2FF5DDBE3FF5EDCE3FF5FDDE2FF63DDE3FF67DDE3FF69DEE5FF6DDEE5FF77
                  DEE4FF7DD7DBFF81D2D5FF83CBCEFF88CACDFF87D4D6FF82DCDFFF85E3E7FF84
                  E3E8FF85E3E7FF8BE1E7FF8FDBDFFF233F44FF1A191FFF161A1FFF131A1FFF38
                  4B4EFF2E4346FF1F2A2EFF161A1EFF171E24FF6E8C91FF6B8F93FF6E9095FF82
                  A4A8FF9AC5C8FFAEDADDFFBDEAEDFFCBF4F8FFCFF5F9FFD4F7FAFFCFEBEDB677
                  8483030000000000000000000000000000000000000000000000002E9BA33012
                  CAD3F105D4D9FF17D2DCFF22D3DAFF27D3DBFF2CD4DCFF31D4DDFF36D6DEFF3B
                  D6DFFF41D6E0FF47D7DFFF4AD7DFFF4FD8DFFF53DAE0FF55DAE1FF56DAE2FF58
                  DBE2FF5DDBE3FF5EDCE3FF5FDDE2FF63DDE3FF63DDE4FF6DDEE4FF7BD5D8FF85
                  C0C1FFB2D2D3FFD0DFE2FFDAE5E5FFDEE5E5FFCFE0DFFFB4D2D3FF8EC2C4FF8A
                  DADDFF88E5E9FF88E6EBFF7DC4C9FF102128FF191820FF29343BFF283E43FF36
                  494EFF131A20FF15191EFF171A1EFF2E3B3FFF6B8F92FF6A9094FF799FA4FF91
                  BBBFFFA8DBDDFFB8E8EAFFC1F0F2FFCAF5F8FFD1F6FAFFD4F6FAFFD5F3F4E77D
                  8E8D100000000000000000000000000000000000000000B4E7E8002BAAB4630E
                  D0DAFC08D2DBFF16D3DBFF20D4D9FF26D3DBFF2DD4DBFF32D3DEFF36D5DEFF3C
                  D6DFFF41D6E0FF46D6E0FF4CD6DFFF4CDADCFF52D9E1FF55D9E2FF59D9E2FF57
                  DBE2FF5CDCE1FF61DBE2FF60DBE4FF61DDE2FF69DCE4FF7FCBCEFFB1D2D3FFE6
                  F1F0FFF8F6F5FFF9F5F6FFF8F7F2FFF9F6F4FFF9F5F6FFF8F6F5FFF0F1F1FFB5
                  CFCFFF91D2D7FF8DE5EBFF86C9CDFF12272CFF101A21FF304249FF618486FF55
                  747AFF253237FF121B1FFF161920FF1D2229FF445A60FF6B8B91FF7FA8ACFF9A
                  C8CCFFB3E6E8FFBEF1F2FFC4F3F6FFC9F4F8FFCFF6F9FFD4F7F9FFD9F7FAF8BA
                  CDCE37000000000000000000000000000000000000000081BDC00324BAC39C06
                  D3D9FF05D2DAFF18D2D9FF22D0D7FF27CFD9FF32CFD9FF36CEDCFF37D4D9FF40
                  D4DAFF40D6DDFF47D7E1FF48D7DEFF4FD9DCFF51D7E2FF54D6DFFF59D6DFFF5B
                  D6DDFF5ED7DDFF61D7DFFF60D8E2FF66DADEFF7AC8CBFFC1DAD8FFF2F3F1FFF5
                  F2F1FFF9F3EEFFF7F3F0FFF8F5F0FFF8F5F2FFF7F5F4FFFAF6F3FFF9F5F3FFF2
                  F6F4FFBFD7D7FF8FD2D6FF93E1E7FF5B8D91FF172C2EFF111B21FF263E40FF61
                  8589FF253436FF181A1EFF141B21FF141D21FF2B3F42FF66888BFF7CA6AAFF98
                  C7C9FFB3E4E5FFC2F0EFFFC5F1F2FFCAF1F4FFCEF3F6FFD3F4F6FFD7F5F9FFCD
                  E1E367000000000000000000000000000000000000000054A1A6071EC3CAC102
                  D3D6FF06D1D7FF17C6CCFF29B6BCFF38AAB0FF3BA5AAFF3CA6AEFF3CB4B6FF43
                  C0C8FF40CED7FF46D7DFFF47D7DEFF4FD6DFFF55CAD2FF5ABFBFFF59B3B4FF59
                  AEAFFF5DADB2FF5EAEB2FF62B7B9FF6ABABFFF9EB7B6FFDFD6D2FFD6CAC6FFCF
                  C3C2FFD2C8C3FFDAD4D4FFE3DDDFFFEFEBE8FFF7F7F0FFFCF5F1FFF7F2EEFFED
                  E5DEFFDFD7D2FF96A9A5FF81B3B9FF81B8BEFF6F9DA1FF495E63FF495C5EFF6C
                  8B8BFF4A5855FF1C1821FF2D3436FF4C5754FF495958FF5E7776FF758F8EFF8E
                  A7A6FFA1BCB9FFA9C6C2FFA9C8C4FFB0C9C4FFAEC7CBFFB5D1D4FFC2DFE2FFCF
                  E3E59500000000000000000000000000000000000000004FB2B31417C4CBD701
                  D2D8FF06CED6FF22B6B9FF386F6EFF575B55FF5F5854FF605A58FF506260FF47
                  9FA7FF3CC5CEFF42D7DEFF49D7DDFF54D0D9FF659A9DFF6E6A65FF726761FF73
                  6662FF716861FF746962FF657973FF71979BFFA39490FF9E7B6CFF9F7767FF9D
                  7465FF98776AFF9C8F8DFFABA8A9FFC3C0BFFFD1CFCCFFF2EEEBFFDDC8BEFFB0
                  8C7BFFB08877FFA7836EFF917F6CFF798882FF6D9D9EFF839086FF867969FF80
                  7664FF80735FFF3D332CFF5B5144FF7E6E5BFF746654FF756A56FF897C65FF9E
                  8D72FFAC9A7BFFB8A581FFB8A684FFB3A688FF88948DFF8CA2A3FFA7C1C4FFC0
                  D5D6A5868F9201000000000000000000000000000000003FB1B31E15C5CCE202
                  D1D8FF08CBD6FF28A7ABFF5C554FFF83443AFF87433CFF8C463DFF794940FF4D
                  8A8CFF3FBEC2FF48D6DDFF4BD5DCFF5AC3C5FF6E665FFF915248FF945546FF99
                  5649FF965947FF905B4AFF6F6D68FF808E90FFA6827BFF9B604EFFA5624CFFA4
                  634CFF986553FF938380FFB7B8B6FFE9E5E5FFF1EEEDFFD1C7C0FFB08575FFAB
                  7258FFB07559FFAB795CFFAC7A5EFF756E60FF5A7B7BFF8E8772FFA67C5BFFA5
                  7859FFAC7B5AFF926D52FF967055FF9D7656FF987452FF9B7852FFAE875DFFBF
                  9464FFC99D69FFD5A46DFFD7A670FFCCA674FF636558FF647575FF8DA1A5FFB4
                  C7C8B7899395030000000000000000000000000000000021A7AC2816C6CFEE04
                  D2D7FF08CAD3FF26A0A6FF59534FFF88433BFF8A433DFF8E473CFF7A4A3FFF4D
                  7F85FF3FB7BFFF48D5DBFF50D0D8FF64A1A0FF7F5548FF925345FF995644FF99
                  5747FF975948FF7D5E4FFF5C7174FF9FA2A2FFA88579FF9D604DFFA4624EFF9E
                  644EFF996552FF8A7772FFACADABFFE7E0E1FFF8F5EFFFCFB2A3FFA86E59FFAC
                  7358FFAE7658FFB0775CFFB27960FF736353FF4F6869FF8F8572FFB48461FFBA
                  8262FFBE865FFFB98960FFB78560FFB2835CFFAF855DFFB4895FFFC29265FFCD
                  9B69FFD2A16BFFD4A470FFD4A771FFCDA470FF4F4B40FF4F5B5DFF7E9194FFAE
                  C1C3C5919A9D06000000000000000000000000000000001AA6AC3214C7D2F403
                  D3D8FF08CBD1FF229FA8FF5A5350FF884439FF8C433DFF8E463CFF794940FF4A
                  757CFF37ABB2FF47CDD5FF57C4CCFF6C746EFF925147FF965446FF9D5643FF9A
                  5747FF8F594AFF666763FF578889FFC1C5C3FFB28C80FF9C614EFFA2624EFFA0
                  644EFF986452FF8A7671FFB1ADABFFE6E0E0FFF0E1D6FFA87963FFAA7057FFAB
                  7359FFAE7658FFB6775BFFB27A5CFF786254FF546868FF8E8374FFB48562FFBA
                  8662FFC48961FFBF8E61FFBF8D60FFBC8D63FFBE9063FFBF9367FFC8996AFFCE
                  9D6CFFD0A16DFFD0A470FFD6A770FFC8A574FF616152FF5D6F73FF8BA0A1FFB4
                  C8CBC896A0A306000000000000000000000000000000001DA4AB3112C6D0F402
                  D2D8FF09CCD1FF229FA9FF5A5450FF86443AFF8C443BFF8D463EFF84473FFF59
                  5F5CFF3D9199FF46B4BFFF60A4A9FF78584CFF935245FF935447FF995546FF93
                  5947FF7C5C50FF517F82FF5DA0A1FFC6CFCEFFB38E84FF9D614FFFA2624EFFA2
                  644FFF986454FF897772FFB0ACABFFE6DEDCFFC4A392FFA56E56FFAA6F58FFAE
                  7257FFAF7658FFB5775BFFB07B5BFF756255FF506968FF82877CFFAF8469FFBE
                  8662FFC18961FFC18D63FFC38D65FFA27B5AFF96775BFF9A8468FFA29075FFAD
                  9C7BFFAF9F80FFB1A182FFB7A382FFB0A387FF848F86FF859DA2FFA6BEC1FFC0
                  D6D8C3929EA105000000000000000000000000000000002EAAAF2814C5CEED01
                  D1D8FF0ACCD1FF249FA8FF5A5450FF85433BFF8F4438FF8B463EFF8A473EFF7B
                  4C43FF4F6B6DFF429196FF677673FF8A5241FF945244FF955347FF945547FF8E
                  5947FF676864FF4D989FFF68BABFFFAFC1C1FFB28E86FF9D604FFFA3624EFFA1
                  644FFF966553FF897772FFAEABABFFD2BFB7FFA26F59FFA86E56FFAB6F59FFAF
                  7356FFB07658FFB5785BFFAE7C5BFF726355FF4A6A69FF6E9592FF979889FFB4
                  8864FFC18B5FFFC28C65FFC48E66FFA37E5EFF524F47FF566764FF728D89FF8D
                  ACA8FF98BCBBFF9EC0BFFFA1C1BFFFA6C1BFFFA3C2C3FFA9CCCFFFBDDCDFFFCB
                  E3E5B888969803000000000000000000000000000000004BB4B81D18C3CBE302
                  D1D9FF0ACBD2FF269FA7FF595450FF89423DFF8B443AFF8C483BFF8F483EFF8E
                  4840FF735048FF58635EFF74554DFF8E5141FF965047FF995346FF995545FF7F
                  5B4EFF528083FF50B2B7FF68D2D8FF8FBBBDFFAD8E84FF9C604FFFA2614EFFA1
                  634EFF976553FF816F69FFA79F9CFFA98674FFA86C54FFA76E56FFAC7155FFAC
                  7458FFB07559FFB3785BFFAE7C5BFF726356FF46696BFF699B9DFF96C1C0FFA4
                  A08BFFB58C61FFC28D62FFC28F64FFC39268FF957D61FF566660FF6F8D91FF91
                  BAC0FFACDBDFFFBEEBEBFFBEEEEEFFC5EFF1FFCAF0F1FFCDF3F2FFD5F5F7FFD7
                  F0F1AC82919301000000000000000000000000000000005DB0B4121FC2CAD703
                  D1D9FF08CBD2FF279FA7FF5A5450FF89423BFF8C443BFF8E483AFF8E483DFF94
                  4740FF8D4C3DFF864E43FF8A4E44FF925042FF965047FF965445FF945448FF68
                  6863FF4C9BA1FF56C7CDFF65D9DFFF76C0C2FF97827AFF9B614FFFA1624EFFA2
                  634EFF996553FF816B65FF8D756CFF9F6B55FFA96C54FFA66E56FFAB7355FFAC
                  7359FFAF7559FFB3785BFFAF7B5CFF756256FF46696CFF659D9FFF88CED2FFA6
                  D6D4FFA89B80FFC18D62FFC38E64FFC49168FFC29566FF8C7B62FF5A6B69FF73
                  979CFF9AC5C9FFB6E2E9FFC1F3F4FFCCF3F9FFD0F5F8FFD3F7F6FFDAF7F9FFDA
                  F1F39A808F91000000000000000000000000000000000060A8AC0824C1CAC606
                  D1D9FF07CBD2FF279FA7FF5A5450FF88433AFF88443BFF8E463DFF92473DFF91
                  4A3DFF8E4D3CFF904E40FF914F41FF955142FF985144FF945445FF795951FF51
                  8283FF4EB4BAFF5ED2DDFF63DCE1FF6DD2D5FF7C7D76FF9B614EFFA0624EFFA2
                  634EFF996453FF876C63FF966E5DFFA66953FFAB6B53FFA86F54FFA36F55FFAF
                  7259FFAF7559FFB1785BFFB17B5CFF776156FF48686BFF639BA0FF84D1D5FF9E
                  E9ECFFA9D4CAFFAC9978FFC18F66FFC59364FFC89469FFC6966CFF86785FFF59
                  6E69FF7A999EFF9EC6CDFFB9E7E5FFCBF3F7FFCDF4FAFFCFF7F9FFD8F8FBFED6
                  EDEF750000000000000000000000000000000000000000A3D6D80326B0B7AB0C
                  D3D5FF08CBD2FF259FA7FF5B5350FF86433AFF8B433CFF8D463DFF90463FFF8E
                  4A3CFF904C3DFF934E40FF924F41FF915041FF955343FF8F5446FF646765FF4B
                  9DA1FF53C6CEFF62D9E2FF62DBE3FF69D4D8FF78877EFF9E604FFFA3624EFFA3
                  634FFF9B6452FF916352FFA06852FFA66A52FFAE6B54FFA36E54FF916657FFAA
                  7159FFAF7658FFB1785BFFB0795EFF746356FF4A696BFF629D9FFF87D0D7FF9A
                  EBEFFFA1EAE9FFABCBC3FFB29576FFC69266FFC99567FFCB9868FFC1986EFF7D
                  715CFF5C6D70FF7E9DA1FFA9CACCFFC1E9EBFFCBF3FAFFD0F6FAFFD3FAF6FAC3
                  DFDE470000000000000000000000000000000000000000E4FFFF0033A4AA7312
                  CDD6FE06CBD2FF21A0A6FF5C5350FF874439FF8A433DFF8B473CFF8D493BFF8F
                  4A3CFF924941FF924E3FFF944E43FF945043FF945243FF7E574CFF4E8180FF4C
                  B3B8FF5AD4DBFF5DDCE0FF5EDDE2FF67D5D7FF79867DFF9D614FFFA1634DFFA4
                  634EFFA36451FFA06551FFA86950FFA76953FFA76D54FF896656FF82645DFFA6
                  735AFFAF7658FFB1785BFFB0795EFF736356FF4A6A6BFF629DA0FF84D2D5FF96
                  EBEFFF99EDEAFFA5E8EBFFB0C4B9FFB79573FFC99666FFCC976BFFCD9C6AFFC1
                  996CFF72685CFF5C7074FF86A0A5FFAAD0CEFFC6EAECFFD3F5F7FFD5F8F5EB9E
                  B6B61C00000000000000000000000000000000000000000000000049A7AC3516
                  C3CFF40CCBD2FF23A0A6FF575351FF87433AFF8B433CFF8D473CFF8C483CFF89
                  493FFF8B4C3FFF8F4F3EFF954D44FF944F44FF8F5344FF685E52FF478A8DFF50
                  B9C1FF59D7DFFF5BDDE1FF60DCE2FF69D4D9FF7B867DFF9D614FFF9F644DFFA2
                  644CFFA5644FFFA76750FFA9694FFFA56A52FF956C58FF585C56FF747871FF9F
                  745CFFAF7658FFB1785BFFB0795EFF736356FF4A6A6BFF649CA2FF85D1D7FF99
                  E9F2FF9BE9F1FFA1E9F1FFADE8E8FFB4BFAEFFBE956DFFC8986BFFCA9B6CFFD1
                  9F68FFBD986FFF6C6558FF5F7577FF89A6A9FFAFD1D4FFCCEDEEFFD3F0F3C776
                  8A8B0600000000000000000000000000000000000000000000000079C3C71023
                  BEC6D40EC9D0FF25A0A5FF565350FF83433CFF8B433CFF8E463DFF804740FF71
                  4A46FF824D3DFF904E3EFF944D42FF915043FF8F5145FF71594EFF4E7E7FFF4D
                  AEB4FF5ACFD8FF62DAE1FF5EDAE3FF65D4DAFF7A867DFF9D614FFF9E644DFFA0
                  644CFFA1654EFFA3684FFFA86851FFA86952FF73635BFF4F7779FF7F948CFF9D
                  735EFFAF7659FFB1785BFFB0795EFF736356FF4A6A6BFF649C9FFF82D2D4FF97
                  EAEBFF9AE9F1FF9EE8F2FFA5ECECFFB4E9E2FFB3B79EFFBE9A6CFFCE9D69FFD3
                  9E6BFFCFA16EFFB8976FFF636156FF62787BFF8FAAABFFB5D3DAFFC7E0E58072
                  808200000000000000000000000000000000000000000000000000B4E3E5022D
                  A9AB9316C8CEFE23A0A4FF595350FF85433CFF89443BFF8E463CFF784A41FF59
                  5D5FFF635851FF884D40FF944E40FF984F42FF994F45FF8E5447FF67625DFF4D
                  9292FF52BBC1FF62D2DBFF5FDBE5FF69D3DAFF7B867DFF9D614FFF9F634EFFA1
                  644EFFA3654FFFA36850FFA46853FF946756FF506566FF589499FF8DA8A3FF9D
                  745DFFAF7658FFB1785BFFB0795EFF736356FF4A6A6BFF659C9FFF8ACACCFF98
                  DADAFF97D4D0FF95CDCAFF94CCCCFF9ACBCFFFA7C6C0FFB6A182FFD09C6AFFD2
                  9F6BFFD4A06EFFD2A36FFFB2936AFF5F5F56FF697C7BFF97ADB1F29CAEB53200
                  0000000000000000000000000000000000000000000000000000000000000048
                  AAA93722BFC4F3239FA5FF59534FFF87433BFF89443BFF8E463CFF7B4A3FFF4F
                  7376FF4C8183FF6C5B4FFF8A523EFF944F41FF965146FF905543FF8A564AFF64
                  6A67FF4C9AA0FF57C1CAFF5CD7DFFF69D4D9FF79867DFF9C614FFFA0634DFFA3
                  634EFFA56451FFA46751FF9C6855FF6A6159FF4F8084FF67B1B4FF90B8B5FF9C
                  735CFFAF7659FFB2785CFFB17A5DFF746355FF4A696BFF6C9BA0FF91A195FFA1
                  9B87FFA49780FFA7967AFFA8957EFFA89A7DFFB09C7CFFBB9C74FFCB9C6BFFD0
                  9F6BFFD1A26DFFD4A56EFFD3A76FFFA18968FF505A59FF718081BD6E7A7C0800
                  00000000000000000000000000000000000000000000000000000000000000A7
                  E0DC0832ABAFBC279DA8FF5C5151FF89433AFF89443BFF8F463DFF7D4941FF4C
                  8080FF3FA1A6FF598889FF7C5447FF904F44FF945047FF985443FF965644FF83
                  594EFF5C7370FF52A4A8FF57C8CBFF69D1D4FF7A867DFF9D614FFF9E634EFFA2
                  634EFFA2654FFFA06851FF846557FF4F6C6EFF569EA1FF72C9CDFF98C1BFFF9D
                  745BFFB1755AFFB2785CFFB07B5CFF736354FF48686CFF719B9DFF9F957BFFB6
                  8764FFC08963FFC18E61FFC08F65FFC19367FFC49668FFC99969FFCD9C6AFFD1
                  9F6BFFD5A26CFFD6A46DFFD6A76FFFBB996DFF474842FC535D625F4751580000
                  00000000000000000000000000000000000000000000000000000000000000EA
                  FDFE004A9D9F5536969DFC575251FF89433AFF88453AFF8B463DFF7C4942FF48
                  8386FF3EB0B9FF4DB1BAFF637571FF845245FF915048FF965445FF975547FF96
                  5648FF7F5D4FFF577E7CFF4EAEB2FF65C4C9FF7C847DFF9A614FFF9F6152FFA0
                  6351FF9F674CFF9B6654FF5E645EFF51888DFF65B9BEFF7DD8DFFF98C4C2FF99
                  755AFFAF745BFFAE795BFFAF7B5CFF6F6353FF47696BFF709B9DFFA3937BFFB9
                  8861FFC18A62FFC18E62FFC29162FFC59464FFC89666FFCB9967FFCF9D69FFD2
                  9F6AFFD4A26CFFD5A36FFFD6A771FFBB986DFF40413BCD374043120000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000A7C9C90C51888AC95A5451FF80453AFF83453AFF86473EFF764A42FF48
                  898AFF3DBCC0FF46C9CDFF4EA5ACFF68635DFF8C5343FF935444FF945647FF92
                  5846FF915949FF73605AFF549495FF5AB7BAFF77837BFF95624DFF9E6251FF9E
                  644FFF9B684DFF7C675CFF4F7A7BFF5DA6ADFF71CFD4FF7FE0E6FF97C5C3FF94
                  745CFFAC7657FFAC7A5AFFAF795EFF746A5AFF4E7375FF6FA1A3FFA2947FFFBA
                  8664FFBD8964FFBD8D66FFC38F65FFC49266FFC79567FFC99969FFCC9C6AFFCF
                  9F6CFFD1A26DFFD5A56EFFD6A86EFFBE9C6FF84D4A3D592B3337000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000E1EEEB006D8A8F484F6769F6555D5DFF565A5AFF595A5CFF516664FF42
                  9FA4FF38C5CBFF43D3D9FF43C1CCFF579BA0FF636D68FF6D6562FF6F675DFF6C
                  685EFF6B6862FF6A6E69FF538C8DFF5BB9BCFF689796FF777B72FF7A7369FF78
                  6F66FF757269FF5E8286FF5AA3A8FF65C2CAFF71DCE1FF7BE3E7FF8ECECEFF83
                  9388FF8C8A7DFF878374FF8B7D72FF708078FF639699FF79B8B8FF93AA9EFF9C
                  9A88FF9A937DFF9A8D75FF9B8E76FF9D8F78FF9E9179FFA0937AFFA3957BFFA5
                  977CFFA7997DFFA99C7DFFAE9E7FFFA9977DC3655F500E000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000A0BABC044C93959039A4ABFD34A1ABFF35A3ACFF35B0B3FF39
                  BCC9FF3BCCD7FF42D5DEFF43D0D8FF4AC3C8FF52B4BBFF4CA8AFFF52A5ABFF51
                  A5A9FF50A6AAFF55AAB0FF59B8BDFF5BC5CBFF61C5CCFF66BDC1FF63AFB2FF5E
                  A9ADFF61A9B0FF66B6BDFF68C6CAFF72D5DEFF78DFE7FF79E1E5FF83E1E5FF83
                  D4D7FF7CC3C8FF73B6B8FF74AAB0FF72B0B2FF76BEC4FF81CED3FF8ED7D8FF8C
                  CFD2FF83C1BEFF85B3AFFF80B2B0FF85B0B2FF88B1B1FF8BB2B2FF8EB3B2FF91
                  B4B3FF92B4B3FF93B4B5FF9BB2B3F1818B8C4600000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000007BB7BB1641B7BEC732D0D7FF36D0DAFF32D5D7FF3C
                  D4D9FF3DD4DEFF41D5DFFF48D5DEFF4DD6DDFF52D6DEFF54D7DDFF58D6DEFF59
                  D7DDFF5DD7DDFF5FD8E0FF5FD9DFFF61DBE0FF63DBE1FF66DCE1FF6BDCE1FF6E
                  DCE1FF71DCE2FF75DFE3FF74DFE4FF77DFE8FF79E1E9FF78E3E7FF7DE3E8FF81
                  E2E7FF83E2E4FF85E3E5FF89E2E7FF8BE3E7FF8DE3EAFF8DE5EAFF91E8EBFF96
                  E7EDFF99E8ECFF9EE8EAFFA0E8ECFFA2E9EDFFA9E9EEFFAEEAEEFFB1EBEEFFB2
                  ECF0FFB8ECF1FFC0EEF0FCB8D7DA847D8E950400000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000D9F8F70060B0B53841C6CEE434D1DDFF31D4DBFF37
                  D6DCFF3CD5DEFF41D7DEFF47D7DFFF4CD7E0FF4FD8E0FF52D9E1FF55D9E2FF56
                  DBE2FF5BDAE2FF5CDBE3FF5DDCE4FF61DCE4FF63DCE4FF66DEE4FF6ADEE5FF6D
                  DFE5FF70E0E6FF71E1E7FF73E1E7FF76E1E8FF78E2E9FF79E3E8FF7DE4E9FF80
                  E4E9FF81E5E9FF84E6EAFF89E6EBFF8BE7EBFF8EE6ECFF8EE7ECFF92E9EDFF94
                  EAEFFF99EBEFFF9DEBEEFFA2ECF0FFA6ECF1FFA9EEF2FFAFEFF3FFAEEFF3FFB4
                  EFF3FFBBF0F6FEC1EAEDAD98B6BA0C0000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000ADD6D60250B1B6593DCBD4F135D3DEFF35
                  D5DEFF37D6DDFF40D7DEFF46D7DFFF4CD7E0FF4ED9E0FF52D9E1FF55DAE2FF56
                  DBE2FF5BDAE2FF5CDBE3FF5DDCE4FF61DCE4FF63DDE4FF66DEE4FF6ADEE5FF6D
                  DFE5FF70E0E6FF71E1E7FF73E1E7FF76E1E8FF77E2E9FF79E3E8FF7DE4E9FF80
                  E4E9FF82E5E9FF85E6EAFF89E6EBFF8BE7ECFF8EE6ECFF8FE7ECFF92E9EDFF95
                  EBEFFF99EBEFFF9DEBEFFFA2ECF0FFA6EDF1FFACEDF2FFADEFF3FFADF0F3FFB6
                  EFF4FFBBECF2CBA7C9CC1C000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000008DCCCC0351B6BB6941CFD8F338
                  D4DEFF3CD5DEFF40D7DEFF46D7DFFF4CD7E0FF4ED9E0FF51D9E1FF54D9E1FF56
                  DBE2FF5BDAE2FF5CDBE3FF5DDCE4FF61DCE4FF63DDE4FF66DEE4FF6ADEE5FF6D
                  DFE5FF70E0E6FF71E1E7FF73E1E7FF76E1E8FF77E2E9FF79E3E8FF7EE4E9FF80
                  E4E9FF82E5E9FF85E6EAFF89E6EBFF8BE7ECFF8EE6ECFF8FE7ECFF92E9EDFF94
                  EAEEFF99EBEFFF9DEBEFFFA2ECF0FFA3EDF1FFA7EEF2FFABEFF2FFB0EFF3FEB5
                  EDF0CFA8D0D62980A0A400000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000091C4C60250B8BD5E45
                  D0D9ED3ED6DCFF41D7DEFF47D7DFFF4CD7E0FF4ED8E0FF52D9E1FF54D9E1FF56
                  DBE2FF5BDAE2FF5CDBE3FF5DDCE4FF61DCE4FF63DDE4FF66DEE4FF6ADEE5FF6D
                  DFE5FF70E0E6FF71E1E7FF73E1E7FF76E1E8FF78E2E9FF79E3E8FF7DE4E9FF80
                  E4E9FF82E5E9FF84E6EAFF89E6EBFF8BE6EBFF8EE6ECFF8FE7ECFF91E9EDFF94
                  EAEEFF99EBEFFF9DEBEFFFA2ECF0FFA4ECF0FFA9ECF1FFAEEFF2FEB1EDEFC2A1
                  CDD024839FA40000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000092CDCF0254
                  B5B94750CFD5D945D6DEFF47D7DFFF4CD7DFFF4FD8E0FF51D9E1FF55D9E1FF56
                  DAE2FF5BDAE2FF5CDBE3FF5DDCE4FF61DCE5FF63DDE4FF66DEE4FF6ADFE6FF6C
                  DFE5FF70E0E6FF71E1E7FF73E1E7FF76E1E8FF78E2E9FF79E3E7FF7DE4E9FF80
                  E4E9FF81E5E9FF84E6EAFF89E6EBFF8BE7ECFF8DE6ECFF8FE7ECFF91E9EDFF94
                  EAEEFF9AEBEFFF9DEBEFFFA2ECF0FFA5EBF0FFAAEDF1FCB2E9EDABA0CBCE1C00
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000008F
                  C3C30164B4B72D56C8D2BE4CD6DEFC4BD6DFFF50D8E0FF4ED9E0FF54D9E1FF57
                  D8E2FF5BDAE2FF5BDCE1FF5BDCE3FF5EDCE5FF62DCE4FF65DEE4FF68DFE5FF6B
                  DFE5FF6EE0E6FF70E1E7FF72E1E7FF75E1E7FF78E2E9FF78E3E7FF7CE4E8FF80
                  E4E9FF81E4E9FF83E6EAFF86E7EBFF89E6EBFF8BE6ECFF8DE6ECFF91E8EEFF94
                  E9EFFF9BEAF0FF9FEAF0FFA2ECEFFFA5ECEFF1ABE5E98297C3C70D0000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000B5DEDE0063ACB11656BEC69053D1DBF350D7E0FF54D9E0FF55D9DFFF53
                  DBE0FF59DBE2FF5CDBE3FF5EDCE2FF60DDE2FF61DDE2FF64DEE4FF67DFE5FF6B
                  E0E5FF6EE0E6FF71E1E7FF72E1E7FF75E1E7FF78E2E9FF78E3E7FF7CE4E8FF81
                  E3E9FF83E3EBFF83E5EBFF84E7EAFF89E7EAFF8FE7EAFF90E7EAFF93E9ECFF95
                  EAEEFF94ECEFFF9BEBEFFDA8E9EEC8A9DDE04495BBBF03000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000078B1B6055BB1B6445DCCD1C359D7DDFB52D9E1FF54
                  DAE2FF5BDAE2FF5BDBE0FF5BDCE2FF61DCE4FF63DCE4FF62DEE4FF66DFE5FF6B
                  E0E5FF6EE0E6FF71E1E7FF72E1E7FF75E1E7FF78E2E9FF78E3E7FF7CE4E8FF80
                  E3E9FF82E3EAFF83E5EBFF84E7EBFF88E7EAFF8CE7EBFF8FE7EBFF95E8ECFF98
                  EAECFF9CEBEDE89FE2E47E94C7CD14769CA10000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000009DC7C70068A9A90C5CB6BB5C5FCDD6C663
                  D8E0F95DD9E1FF5CDAE2FF5FDAE4FF5FDAE5FF61DDE5FF64DDE3FF68DEE5FF6B
                  DFE5FF6EE0E6FF71E1E7FF72E1E7FF75E1E7FF78E2E9FF78E3E7FF7CE4E8FF7F
                  E4E9FF7DE4E9FF82E4EAFF88E5ECFF8AE5EBFF8BE5EBFF8EE6ECFF92E7EBEE98
                  E3E69D93CECF2A87B0B302000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000AED1D50069A8AB0B5A
                  AEB24466CCD1A665D6DDE965DAE2FC60DCE3FF61DEE3FF66DDE3FF69DEE5FF6B
                  DFE5FF6EE0E6FF70E1E7FF71E1E7FF75E1E7FF78E2E9FF78E3E7FF7CE4E8FF80
                  E4E9FF82E4E9FF84E5EAFF88E6EBFE8DE5E9F790E2E6D491DBDE7E89C4C72570
                  989D020000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000006FA4A90460A9AE2163BDC2526DCDD39E70D6DDD16ED8DFEA6FDDE4F86E
                  DFE4FE70E0E5FF72E1E7FF73E1E7FF76E1E8FF7AE2E9FF7CE2E7FF80E3E8FC85
                  E3E8F786DFE4E689E0E4C68BDBDF8986CACD3F78ADB00F6E9B9E000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000006B9092016B9FA50B6EB1B71F67BABF3A6C
                  C6CB6678D3D7787ACED58578CDD4907ACED68D80D3D98086D5DB717FC9CF5A76
                  BFC43574B8B81D69A0A2085C7F83000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000091AFB10086A8AA0180A3A40280A3A40288A7A8018FA9AB000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFE01FFFFFFFFFFFF800007FFFFFFFFFE00000
                  1FFFFFFFFF80000007FFFFFFFE00000001FFFFFFFC00000000FFFFFFF0000000
                  003FFFFFE0000000001FFFFFC0000000000FFFFF800000000007FFFF00000000
                  0003FFFE000000000003FFFC000000000001FFFC000000000000FFF800000000
                  00007FF80000000000007FF00000000000003FE00000000000001FE000000000
                  00001FE00000000000001FC00000000000001FC00000000000000FC000000000
                  00000F800000000000000F800000000000000F800000000000000F8000000000
                  0000078000000000000007800000000000000780000000000000078000000000
                  0000078000000000000007800000000000000780000000000000078000000000
                  00000F800000000000000F800000000000000FC00000000000000FC000000000
                  00000FC00000000000001FE00000000000001FE00000000000001FE000000000
                  00003FF00000000000003FF00000000000007FF8000000000000FFFC00000000
                  0000FFFC000000000001FFFE000000000003FFFF000000000003FFFF80000000
                  0007FFFFC0000000001FFFFFE0000000003FFFFFF0000000007FFFFFFC000000
                  00FFFFFFFE00000003FFFFFFFF8000000FFFFFFFFFF000003FFFFFFFFFFE0001
                  FFFFFFFFFFFFF03FFFFFFFFFFFFFFFFFFFFFFF28000000300000006000000001
                  0020000000000000240000C30E0000C30E000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000079A7A9016198990561939607609397076592970571
                  989D0280A2A60000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000072A8AE0058A3AA0973
                  C7CA3475CFD46975D5DB9B79D8DFC279DCE2E17EDFE4EA7DE1E4EA81E1E4E384
                  DFE1CB88DFE0AD8ADADC7B8CD5D6488AC6C718749EA202000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000065A4A60266BBBE2768D0D48668D6DDD26B
                  DCE2F96ADFE3FF6BE0E4FF73E0E6FF72E0E6FF73E2E8FF77E2E9FF7CE3EAFF7F
                  E3E9FF83E4E9FF88E6EBFF8CE7EAFD93E5E8EB96DEE1B195D5D85282B2B60D84
                  9DA2000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000073A6AA0163BBC02D64D1D7A15ED9E0EF5CDCE2FF64DCE2FF66
                  DDE2FF68C8CEFF5DB3BBFF6ECED5FF74D8E2FF74DCE3FF77E0E5FF7DE2E8FF7F
                  E3E9FF82E5EAFF87E6ECFF8CE5ECFF8DE7ECFF91E8EDFF99E8EFFC9EE5EAD29A
                  D8DA5D8FB9BA0900000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000008A
                  C5CD0064B4B90E60CACF7E5BD8DDEF59DAE1FF5BDCE0FF5DDAE4FF60DCE4FF4F
                  9DA2FF12282DFF0F1C21FF152D34FF3F7077FF66B7BDFF6FCDD2FF7ADBE1FF7F
                  E1E7FF84E4E9FF88E6EBFF8CE6EBFF8DE7ECFF91E9EDFF95EAEFFF99EAF0FFA2
                  EAF0FDABE6EBBDA1D5DA347A9EA2010000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000007FB9BF0061
                  BFC5305ED1D7C352D8DFFD54D9E1FF58DAE1FF5BDBE2FF5BDCE3FF62DBE4FF4A
                  9BA3FF132D34FF1C3036FF21373EFF121B23FF244449FF60A8AEFF6EC4CCFF77
                  D9DDFF82E4E8FF88E6EBFF8DE6EDFF8EE6ECFF92E8EDFF95E9EEFF99EBF0FFA0
                  ECF0FFA6EDF1FFAEEDF1EEADE0E26B8DB6B70500000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000008AC7CD0158C1C84354
                  D3DAE34AD8DDFF4AD9E0FF55D8E1FF58DAE1FF59DCE1FF5FDBE4FF63DAE5FF6A
                  DAE1FF62B9BEFF5FA7ADFF5BA0A2FF2A474BFF131A20FF3E6B70FF5EA9AFFF71
                  C7CCFF80DEE4FF89E5EBFF8AE6ECFF8BE7ECFF90E8EDFF94E9EEFF99EBF0FF9F
                  ECF0FFA5EDF1FFA7EEF1FFB0EFF2FAB2E5E98DA1C1C609000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000063AFB60150C4CA5348D3D9EC46
                  D7DDFF4AD7DEFF51D8E1FF54D9E1FF53DBE1FF58DBE2FF5FDBE3FF5CC4C9FF2D
                  5D64FF25484DFF2B5256FF375A5EFF223036FF131A1FFF304C51FF508A8EFF4B
                  7D83FF5C969DFF7FCED1FF84DBDFFF8CDFE5FF90E6EAFF94E9EEFF99EAF0FF9F
                  EBEFFFA5EDF1FFA9EFF1FFAEEFF4FFB7EEF6FDB9E8EC9B9EBEC0090000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000008EC5C9004EBEC5473FD3DBEE3DD6DCFF42
                  D7DEFF4AD7DEFF52D8E0FF51D9E0FF57DAE1FF5BDAE2FF62DAE1FF295C62FF14
                  1A1FFF151A1DFF131A1DFF141A1FFF15191FFF161D24FF3D6268FF1C3238FF14
                  1920FF121A21FF1B3337FF5A8D91FF7AC3C7FF86D7DCFF91E4EAFF99EAF0FF9F
                  EBEFFFA5EDF1FFA7EFF1FFAEF0F3FFB1F0F5FFB8F1F5FDBDE9EC9198B8B90500
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000004FB3BD2B3ECFD5E337D5DDFF3CD6DFFF43
                  D7E0FF49D7DFFF4FD8E0FF52D9E0FF55DAE2FF59DAE1FF63D8E1FF1F4A4EFF15
                  1A1EFF325156FF305358FF2B454BFF28494EFF41686FFF335C60FF16191FFF1B
                  262DFF426467FF1F3035FF19242AFF5F9297FF77BDC2FF88D7DBFF9AE7EDFF9F
                  EBF0FFA4EDF0FFAAEFF0FFAEEFF3FFB2F0F5FFBAF1F5FFC1F2F5FABEE5E86A84
                  999B010000000000000000000000000000000000000000000000000000000000
                  00000000000000000000004EA6A90C3AC9CEC132D4DAFF37D5DEFF41D5DFFF45
                  D7DFFF49D7DFFF4FD9E0FF53D9E1FF55DAE2FF5ADAE2FF62DAE2FF438B92FF0F
                  1C24FF2C494FFF3E666AFF2D5458FF4F8D92FF5699A0FF2F5459FF161A1EFF3B
                  5F63FF568E92FF38555AFF11191FFF3A5D64FF67A2A7FF609597FF92D6D8FF9C
                  E6E8FF9FE8EBFFA9EDF0FFADEFF4FFB2F0F5FFB9F1F5FFBEF3F5FFC6F3F5EFB9
                  DBDB350000000000000000000000000000000000000000000000000000000000
                  000000000000007FBFC5013FBDC36F2DD3D9FC31D3DCFF31D6DEFF3BD6DEFF43
                  D7DEFF49D7DFFF4FD9E0FF53D9E1FF55DAE2FF59DBE2FF5DDCE2FF64D7E0FF40
                  7E86FF14282EFF0E1B20FF111920FF1E3E45FF579BA2FF3F6A72FF0E1A1EFF43
                  686AFF598F94FF2B4146FF13191FFF3E5A60FF5C898EFF132528FF2A4246FF85
                  C1C3FF93CFD4FFA1E2E6FFAEEEF2FFB3F0F4FFB7F2F5FFBBF3F5FFC3F4F6FFC8
                  EFF0C6A2B8BB0A00000000000000000000000000000000000000000000000000
                  0000000000000040AFB51D30CAD5E324D4DBFF2FD4DDFF35D5DEFF3ED5DFFF44
                  D6DFFF49D7DFFF4FD8E0FF53D9E1FF55DAE2FF5ADBE2FF5CDCE2FF61DBE5FF63
                  D6DCFF5BB2B5FF3D757BFF306267FF4C858BFF59A3AAFF66ABB3FF1C333BFF19
                  262BFF2F4048FF131C22FF121D23FF52787CFF44656AFF141A1FFF253137FF75
                  AAADFF81B5BAFF97D2D3FFABE8E9FFAFEEF2FFB6F0F4FFBEF1F4FFC5F4F7FFCA
                  F5F8FDC2E1E4657E8E8F00000000000000000000000000000000000000000000
                  000000A4DAE0002DBEC68322D2DAFE26D3DDFF30D3DDFF33D6DEFF3CD6DFFF44
                  D6E0FF49D7DFFF4FD9E0FF53D9E1FF55DAE2FF59DBE2FF5DDBE3FF5DDDE3FF64
                  DCE3FF63D7DEFF62CAD1FF5EB9C0FF5AADB5FF5BB1B7FF68C3CAFF6DB9BFFF2D
                  585CFF16272DFF17272EFF3C5C62FF5C8B8EFF2A3D43FF171920FF3F5B60FF67
                  9598FF678F93FF2B3B40FF304549FF7EA5A8FFA2D5D8FFB5E1E5FFBEEFF1FFCA
                  F4F8FFCCF1F3D5A1BBBC0F000000000000000000000000000000000000000000
                  00000034A0A3151FCAD1E21CD3DBFF27D3DCFF2ED4DDFF35D5DEFF3CD6DFFF43
                  D6DFFF49D7DFFF4FD9DFFF53D9E0FF55DAE2FF58DBE2FF5EDBE3FF5FDDE2FF63
                  DDE3FF67DEE4FF6BDDE3FF6DD7DCFF6DD2D8FF6ED3D9FF73DADEFF7ADEE3FF77
                  D3D8FF70B2B8FF65A1A7FF639BA1FF2B444AFF182026FF161C21FF56797EFF64
                  9094FF465960FF161820FF151C22FF212E33FF84A9ACFF9DC8CBFFB4E3E6FFCA
                  F3F6FFD0F6F8FDC4DEDF5C768183000000000000000000000000000000000000
                  00000028B2B95913D1D9FD1AD3DCFF25D4DBFF2ED4DDFF35D5DEFF3AD6DFFF43
                  D6E0FF49D7DFFF4FD9DFFF53DAE0FF55DAE2FF58DBE2FF5EDBE3FF5FDDE2FF63
                  DDE3FF66DEE5FF68DFE5FF6DE0E4FF74E0E7FF78DFE8FF78E2E8FF7CE3E8FF82
                  E1E6FF79DADEFF76CDD1FF6FB5BBFF1C3239FF151A1FFF182226FF557478FF62
                  8C8FFF232D35FF151921FF50686DFF506A6EFF77979BFF95BEC2FFB3DFE2FFCA
                  F3F6FFCFF6F9FFCFEBEEBA8D9EA004000000000000000000000000000000007D
                  BBC0011CC2CAA80BD3DAFF1CD2DCFF25D4DBFF2DD4DCFF34D5DEFF3AD6DFFF42
                  D7E0FF48D7DFFF4ED9DFFF53DAE0FF55DAE2FF58DBE2FF5EDBE3FF5FDDE2FF63
                  DDE3FF67DDE4FF6CDFE5FF77DAE0FF82D0D4FF8DCDD0FF95CCCEFF8DD1D3FF84
                  D8DBFF85E2E7FF86E3E7FF8EE2E7FF385B61FF1A191FFF161D22FF2E3E42FF28
                  383CFF161C20FF192026FF6D8F93FF6C9094FF80A4A8FFA0CDCFFFB6E3E6FFC9
                  F3F7FFD0F6F9FFD5F6F8F2B2C7C822000000000000000000000000000000003F
                  99A10F14C7D0E109D3DAFF1DD3DAFF25D3DBFF2DD4DCFF34D4DEFF3AD6DFFF42
                  D6E0FF49D7DFFF4DD8DEFF53D9E0FF56DAE2FF58DBE2FF5DDBE2FF5FDCE3FF62
                  DDE3FF67DCE4FF80D0D4FFAED3D2FFE2EBECFFF0F2F2FFF4F3F2FFECF1F0FFD1
                  DFE0FF9ECFCFFF8CE0E5FF8CE1E5FF213A41FF141921FF4B656AFF425C61FF19
                  2126FF151A1FFF252D32FF5F7E82FF73989DFF92BDC2FFB1E4E6FFBFEFF2FFC8
                  F4F8FFD1F6F9FFD6F7FAFDC7DEDE50000000000000000000000000000000002F
                  AAB3350DCFD7F909D2DBFF1DD2D8FF26D0D9FF32D0DAFF35D2DCFF3ED4DBFF41
                  D6DEFF48D6E0FF4DDADBFF52D7E2FF57D7DFFF5AD7DFFF5FD8DEFF60D8E2FF64
                  DAE0FF7FCCCFFFD4E4E2FFF3F3F2FFF9F4F0FFF8F4F1FFF8F6F2FFF8F5F4FFFA
                  F6F3FFEEF2F0FFAAD1D3FF91DFE5FF5C8F92FF142428FF203236FF597C7FFF23
                  2F32FF151A20FF151C21FF394F53FF71979BFF94C2C5FFB6E8E8FFC4F2F1FFC8
                  F2F5FFCFF4F7FFD5F5F8FFD3EAED860000000000000000000000000000000029
                  B8BF5B05D2D7FF09CFD4FF21B8BCFF3A9EA3FF41979CFF409FA2FF43B6BDFF41
                  CFD8FF46D7DEFF4ED6DEFF5AC0C6FF5DACABFF5CA1A1FF60A0A4FF61A5A6FF69
                  B3B6FFAEB8B6FFD2C2BCFFC5B5B2FFC9BCB7FFD2CCCEFFDFDBD9FFF4F2EDFFFA
                  F3EFFFE6DAD2FFD0C4BEFF86A09EFF80AFB3FF6D989BFF4D5C5DFF708684FF48
                  4F4DFF212026FF565D57FF53605DFF6B7E7BFF8B9D99FFA3B6AFFFA9BFB6FFAD
                  C1B8FFA7BFC2FFB5D2D5FFC9E0E2B2858F910000000000000000000000000022
                  BAC07904D2D9FF0BC7D1FF3A8786FF694A42FF774842FF744B45FF4D8286FF3F
                  C6CDFF46D7DEFF55CED4FF6E7370FF83574EFF885950FF855C4FFF796258FF75
                  8D8EFF9F7E76FF9A6652FF9E6652FF926B5EFFA29C9BFFD2D1CFFFDAD7D6FFDB
                  C9C1FFA77964FFAC7860FFA67A60FF827A6BFF6B8F8CFF927E67FF93755AFF92
                  7359FF634D3CFF8F7157FF866C50FF927857FFAE8D66FFC09D6FFFCBA574FFC5
                  A67AFF747D75FF899EA0FFB3C8C9C2879193010000000000000000000000001D
                  BBC38E06D1D8FF0BC4CDFF407A7AFF82433CFF8B443DFF89483CFF547476FF42
                  BFC5FF4BD5DCFF5EB0B2FF81564AFF965444FF9A5746FF955948FF6F6660FF88
                  9293FFA47B6FFFA2614DFFA1634EFF956656FF979391FFDED9D9FFF6F1EBFFB2
                  8876FFAC7258FFAF7658FFB0785FFF816A57FF5B716FFFA58466FFB68160FFBB
                  855EFFB38460FFB0815CFFAC835BFFB78B60FFC99968FFD2A16BFFD4A571FFD0
                  A570FF4D4D46FF69797BFFA5B8BAD290999C0400000000000000000000000019
                  BBC59C05D2D9FF0BC4CBFF3C797CFF82443BFF8C433CFF88473CFF53686AFF3A
                  AEB6FF4FC9D2FF6A807BFF935147FF985545FF9A5746FF845B4EFF597F7FFFA8
                  B8B6FFAC8274FFA0614DFFA1644FFF946556FF99918EFFDDD8D8FFD9C2B4FFA7
                  7058FFAB7259FFB07659FFB4785CFF856856FF5C6F6DFFA68469FFBA8662FFC3
                  8A61FFC08F61FFBC8D63FFBD9165FFC0956AFFCB9C6EFFCCA16FFFD0A572FFC9
                  A575FF64695FFF7A8D91FFAEC3C5D596A0A3050000000000000000000000001A
                  BAC29703D1D9FF0CC5CBFF3D797CFF7F443CFF8E443AFF8B463FFF705149FF44
                  868DFF54A1A8FF7C5B4FFF935245FF955447FF925847FF696863FF57A2A7FFA7
                  C0BFFFAC8378FFA1614EFFA2644FFF926556FF99918FFFD7CDCAFFAD7F69FFA9
                  6E58FFAE7257FFB07658FFB2795BFF826957FF547170FF8E8F81FFB78665FFC1
                  8A61FFC48D66FFA27A5AFF695F50FF7A7E71FF949E8EFF9EAA9CFFA4AD9EFFA6
                  AD9FFF91A9A8FFA4C0C4FFC1DADCCE8D9B9D0300000000000000000000000025
                  BAC18304D1D9FF0DC4CBFF3E797CFF82433DFF8C453AFF8D473DFF8D4840FF66
                  5852FF5D6561FF8B5142FF965147FF985445FF87594BFF538587FF5AC1C7FF8C
                  C0C3FFA98377FFA0614EFFA1634FFF916555FF928987FFB2978AFFA66C54FFA9
                  6F56FFAD7357FFB17659FFB17A5BFF806957FF4D7273FF7FADADFFA5A28FFFB9
                  8C60FFC38D64FFC19167FF7B6F5BFF5F7878FF8CB2B7FFACDADDFFB8E7E7FFBE
                  E8EAFFC4EAEBFFCCEFF1FFD5F0F1C2839294010000000000000000000000002F
                  B8BF6B07D0D9FF0BC4CBFF3F797BFF83433CFF8B453BFF8E483BFF93483FFF8D
                  4C3EFF884E43FF935042FF975146FF955446FF6C6761FF4EA7ADFF5ED3DAFF72
                  C9CCFF92776DFF9E614EFFA2634EFF946555FF88746DFF9E6C57FFA86C54FFA8
                  7155FFAC7358FFB0765AFFB17A5BFF846858FF4C7175FF75B7B9FFA0DBDCFFAC
                  9F84FFC18E63FFC49167FFBF9467FF767161FF698889FF9AC4C9FFB9E9ECFFCA
                  F3F8FFD0F5F8FFD6F7F8FFDBF4F5AF808F910000000000000000000000000032
                  B0B7510DD0D5FE0BC4CBFF3F797BFF80443BFF8B443CFF90463EFF90493DFF8F
                  4D3DFF914E41FF935041FF975243FF83564DFF518688FF53C3CAFF63D9E2FF69
                  D5DAFF817B71FFA1614EFFA2634FFF966353FF926A5AFFA46953FFAC6C53FF9F
                  6D55FFA97059FFAF7659FFB1795CFF846958FF4D7174FF74B7BBFF99E7ECFFA7
                  DBD4FFB09B7DFFC59265FFC99568FFBF956BFF6E6F5EFF708B90FFA2C8C9FFC4
                  ECEEFFCCF4FAFFD2F8F9FFD2EFEF84000000000000000000000000000000003D
                  9CA12816C6CEF509C4CBFF3E797CFF81443AFF8A443DFF8D483CFF8E4A3CFF92
                  4B40FF934E41FF935043FF945244FF67655FFF4BA7ABFF5AD4DBFF5EDCE1FF65
                  D7DAFF807D72FFA1624EFFA3634EFFA06350FFA26751FFA76952FFA56D54FF84
                  6357FFA1715BFFAF7759FFB1785DFF826958FF4E7274FF72B8BBFF95E8ECFF9C
                  ECEBFFADD3D0FFB79878FFC99567FFCC996BFFBC956AFF666862FF768F94FFA9
                  CDCDFFCAEEF2FFD4F7F6FDC6E6E4500000000000000000000000000000000086
                  C2C5071DBEC9CF0EC4CBFF3C797BFF80443CFF8B433CFF8D473CFF86493FFF8A
                  4D3EFF934D41FF934F44FF895345FF54716DFF4EB0B7FF5AD8DFFF5EDCE1FF66
                  D6DBFF817D72FFA0624EFFA1644CFFA5654FFFA8684FFFA66A51FF846757FF60
                  706DFF987561FFAF7759FFB1785DFF826958FF4E7275FF74B7BDFF96E7EDFF9C
                  E9F2FFA5EAEFFFB5D0C3FFBF9871FFC89A6CFFD19E69FFB6936BFF646861FF7A
                  9598FFAFD0D3FFD0EFF2EFBBD4D62100000000000000000000000000000000D2
                  F6F6002CB7BC8E12C3C9FF3C797AFF7E433DFF8B443CFF86483EFF67504EFF79
                  5043FF934D41FF944F42FF925145FF6C6059FF4C999BFF59C9D1FF62D9E2FF64
                  D5DDFF827D72FF9F624EFFA0644DFFA2664FFFA46851FFA36854FF5A6766FF6E
                  9C9BFF987966FFAF7759FFB1785DFF826958FF4E7274FF75B7B8FF94E3E4FF98
                  E1E4FF9BDFE2FFA4DFE0FFAFBDABFFC59B6DFFD29E6BFFD1A16FFFAF8F69FF5F
                  6762FF849B9CFFB2CBD1BA9EB1B6040000000000000000000000000000000000
                  0000003EA7A6361CBCC2F83D797AFF81433CFF8A443CFF88483DFF576767FF55
                  7372FF815242FF945040FF955145FF8C5547FF666B68FF4FA7AEFF5CD0D8FF66
                  D5DCFF807D71FFA0624EFFA2634EFFA46551FFA26852FF7B6458FF508386FF7F
                  BDBEFF977B67FFAF7659FFB2785DFF836958FF4E7274FF80A7A6FF9EA899FFA2
                  A38EFFA39F8AFFA4A18DFFAFA388FFC49C70FFD09F6BFFD2A26DFFD3A66EFFA1
                  8867FF5A6767FD809091635D686F000000000000000000000000000000000000
                  000000A7E0DC052DA9AFC03E777DFF83433BFF8A443BFF8B473EFF537472FF43
                  A4AAFF66706CFF8C5044FF945147FF975543FF8A584BFF5E7774FF52B3B6FF65
                  CFD1FF827D72FF9F614FFFA0634FFFA1664EFF946755FF546C6CFF5CAAAEFF8C
                  D4D7FF987D68FFB1755AFFB07A5BFF826956FF4E7174FF8A9F95FFB38863FFC1
                  8A63FFC08F62FFC29366FFC69768FFCB9B69FFD19E6AFFD5A26CFFD6A56FFFC2
                  9D6EFF484A45E0515B6115000000000000000000000000000000000000000000
                  000000000000004F9B9D534A7376FC7F453AFF87453BFF88473EFF507777FF40
                  BAC1FF50ABAFFF705F56FF915244FF975545FF965747FF855C4EFF588586FF5B
                  B9BDFF807B70FF9D614FFFA16251FF9E674DFF6F665EFF558F94FF70C9CFFF91
                  DDE1FF937E67FFAF7659FFB07A5BFF806B57FF4E7476FF8A9E97FFB78764FFC0
                  8A63FFC18F63FFC69365FFC99666FFCE9B68FFD19F6AFFD4A26CFFD6A56FFFC3
                  9D6DFE42423B73313A3D00000000000000000000000000000000000000000000
                  000000000000008CADAE09557073BA5C5855FF605553FF615957FF468D8FFF3B
                  C8CDFF44C9D2FF54999EFF6D665EFF776159FF756458FF74655DFF607674FF59
                  B3B5FF6F8B87FF807265FF816D61FF797166FF598B8FFF61B8BFFF72DCE1FF8B
                  E0E3FF859387FF928473FF927E6EFF797C71FF639698FF88B2ACFFA19681FFA2
                  8F76FFA38D71FFA58F74FFA79375FFAB9577FFAE9978FFB19C79FFB59F7BFFB2
                  9C7BDB615B4A1200000000000000000000000000000000000000000000000000
                  00000000000000000000005992942D3DA7ADE934ABB5FF35B2B7FF39C0C9FF3C
                  CFD9FF44D4DDFF49C9CFFF51BAC1FF51B1B7FF53B0B5FF54B1B6FF5AB9BFFF5C
                  C8CDFF62C9CFFF66BEC1FF62B5B9FF65B6BDFF6AC5CAFF71D5DDFF78E0E7FF7D
                  E2E6FF83D9DDFF7CC8CCFF77BABEFF77BABDFF7CC8CFFF8AD8DBFF8FD5D9FF88
                  C7C6FF89BEBBFF8BBCBFFF90BDBEFF94BEBFFF98C0C0FF9BC1C1FFA1BFC1FA90
                  9FA05A0000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000C3E5E6014CB3B96436CFD7FA33D3DCFF38D6DAFF3E
                  D5DFFF44D7DFFF4CD7DFFF51D8E0FF55D9E1FF57DAE1FF5CDAE2FF5DDBE3FF60
                  DCE3FF64DDE4FF68DEE4FF6DDFE5FF71E0E6FF73E1E6FF76E1E8FF78E2E8FF7B
                  E3E8FF80E4E9FF83E4E8FF87E6EAFF8BE6EBFF8EE6ECFF90E8EDFF95EAEEFF9A
                  EBEEFFA0EBEFFFA3EDF1FFABEEF2FFB0EFF2FFB3F0F4FFBCF0F5FEBEE7EA948D
                  A5A8040000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000008BC0C10448BDC49136D1DCFD35D5DEFF39
                  D6DDFF44D7DFFF4BD7E0FF4FD9E0FF53D9E1FF56DAE2FF5BDBE2FF5CDBE3FF60
                  DCE4FF64DDE4FF68DEE5FF6CDFE5FF70E0E6FF72E1E7FF76E1E8FF78E2E8FF7B
                  E4E8FF7FE4E9FF82E5E9FF87E6EBFF8BE6EBFF8EE6ECFF90E8EDFF94EAEFFF9A
                  EBEFFFA0ECEFFFA5ECF1FFACEEF2FFADF0F3FFB4EFF4FFBBECF1B9ADCDD00F00
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000067B7B80B49C3CA9C3BD3DDFC3D
                  D6DEFF44D7DFFF4BD7DFFF4ED9E0FF53D9E1FF56DAE1FF5BDBE2FF5CDBE3FF60
                  DCE4FF63DDE4FF68DEE5FF6CDFE5FF70E0E6FF72E1E7FF76E1E8FF77E2E8FF7B
                  E4E9FF80E4E9FF82E5E9FF87E6EBFF8BE6EBFF8EE6ECFF90E8ECFF93EAEEFF9A
                  EBEFFFA0ECEFFFA3EDF1FFA8EDF2FFAEEFF2FEB3ECEFBFA8D0D6170000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000065B8BB0A4BC4CB8944
                  D4DBF944D7DFFF4BD7DFFF4FD8E0FF54D9E1FF56DAE1FF5BDBE2FF5CDBE3FF60
                  DCE4FF64DDE4FF68DEE5FF6CDFE5FF70E0E6FF72E1E7FF76E1E8FF78E2E8FF7B
                  E3E8FF7FE4E9FF82E5E9FF87E6EAFF8BE6EBFF8EE6ECFF90E8ECFF93EAEEFF9A
                  EBEFFFA0ECEFFFA4ECF0FFACEDF2FDB0EBEDAEA6D5D7157E9297000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000006BB2B40459
                  C2C8644FD2DBEE4BD7DFFF4FD8E0FF51D9E1FF56D9E2FF5BDBE2FF5BDCE2FF5E
                  DCE5FF63DCE4FF67DEE5FF6BDFE5FF6FE0E6FF71E1E7FF75E1E7FF78E2E8FF7A
                  E3E8FF7FE4E9FF81E5E9FF85E6EBFF89E6EBFF8BE6ECFF90E7EDFF93E9EEFF9B
                  EAEFFFA1EBF0FFA4ECEFF7ABE7EB889CC7CB0B809BA000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000088
                  BBBD0159B5BC3954CBD4C853D8DFFD55D8E0FF53DBE0FF5ADAE2FF5DDBE3FF5F
                  DDE2FF62DDE3FF65DEE4FF6ADFE5FF6FE0E6FF71E1E7FF75E1E7FF78E2E8FF79
                  E4E7FF80E3E9FF83E3EBFF83E6EBFF88E7EAFF8FE7EAFF92E8EBFF95E9EDFF95
                  ECEFFEA2E9EDD0A9E1E54595BBBF020000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000C0DFE10064ABAE0D5FC4C86E59D1D9DC5BD8E2FE5DDAE1FF5CDBE1FF5F
                  DBE4FF62DCE4FF65DEE4FF6ADFE5FF6FE0E6FF71E1E7FF75E1E7FF78E2E8FF79
                  E4E7FF7FE4E9FF80E4EAFF84E6EBFF88E6EBFF8BE6EBFF90E8ECFE97E8EBE89D
                  E3E57C96CDD1127E9DA500000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000008CBCBE005CAAB01362C3C86362D2D8C763D8E1F761
                  DCE3FF62DDE3FF67DEE4FF6BDFE5FF6FE0E6FF71E1E7FF75E1E7FF78E2E8FF79
                  E4E7FF7FE4E9FF81E4E9FF86E5EAFF8CE5EAFB8FE3E7D592DDE17791D2D51F6F
                  A2A4010000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000006BA8AC0660B3B82A6C
                  CBD16D6FD3DAAA6FD7DDD16EDBE1EF73DFE5F976E0E7FA78E0E7FA7DE2E8F980
                  E0E6F484DFE4DD85DCE0BA8BDDE28387CED13878ADAF096A9193000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000081A9AE014C888C0562AEB21571BDC12271B8BD2F72B9BF3179BEC3257E
                  BFC5195B959A09609293027EA5A7000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000FFFFFFFFFF
                  FF0000FFFFFFFFFFFF0000FFFFF01FFFFF0000FFFE0001FFFF0000FFF800003F
                  FF0000FFE000001FFF0000FF80000007FF0000FF00000003FF0000FE00000001
                  FF0000FC00000000FF0000F8000000007F0000F8000000003F0000F000000000
                  3F0000E0000000001F0000E0000000000F0000C0000000000F0000C000000000
                  070000C000000000070000800000000007000080000000000700008000000000
                  0700008000000000030000800000000003000080000000000300008000000000
                  0300008000000000030000800000000003000080000000000300008000000000
                  070000800000000007000080000000000700008000000000070000C000000000
                  070000C0000000000F0000E0000000000F0000E0000000001F0000F000000000
                  3F0000F0000000003F0000F8000000007F0000FC00000000FF0000FE00000000
                  FF0000FF00000001FF0000FF80000007FF0000FFC000000FFF0000FFF000003F
                  FF0000FFFE0000FFFF0000FFFFC007FFFF0000FFFFFFFFFFFF00002800000020
                  00000040000000010020000000000000100000C30E0000C30E00000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000079A7A9006196970461
                  939705669398037C9FA300000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000659B9E0166BDC31C6FD3D96770D8DDA276DBE1D177DEE4ED7B
                  E1E6F180E1E5E984E1E4CD8AE0E39E93DFE0628BC5C81C699597000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000073
                  A6AA0063C5CA3161D5DBA761DBE1F565DCE3FF65CAD1FF6ACFD6FF73DBE4FF76
                  E0E6FF7DE3E9FF82E4EAFF88E5ECFF8DE7ECFF95E7ECF59BE3E8A69AD6D82D5F
                  7E80000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000060B8C00C5D
                  D0D68C58D9DFF85ADBE1FF5CDBE4FF4FA8AEFF112126FF12232AFF39646CFF68
                  BDC2FF78D9DFFF82E3E8FF8AE6EBFF8EE7ECFF92E9EDFF98EAF0FFA4EBF0F6AA
                  E5EA879AC5C90900000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000058C1C81E55D2D8CC4B
                  D9DFFF57D8E1FF5ADBE1FF5EDBE4FF68D5DEFF47898FFF508C8FFF1D2E34FF36
                  5E63FF66B7BDFF7DDBE0FF89E6EBFF8CE7EDFF92E8EDFF98EAEFFFA1ECF0FFA8
                  EEF2FFB0EBEEC3AED8DD18000000000000000000000000000000000000000000
                  000000000000000000000000000000000000004FC3CA2444D3D9DB46D7DDFF50
                  D8E0FF54D9E1FF57DBE2FF5FD6DDFF2C5A61FF213A3EFF294348FF1B232AFF28
                  3F44FF3D6C71FF3F666EFF6AAFB2FF86D7DCFF8FE4E9FF98EAEFFFA1ECF0FFA8
                  EEF1FFB0EFF4FFB8EDF2D1B4DADD180000000000000000000000000000000000
                  0000000000000000000000000000004FB4BD133ED0D7D33BD6DEFF44D7DFFF4E
                  D8E0FF52DAE1FF59DAE1FF54B9C0FF111A1EFF284045FF24393EFF243D42FF39
                  5F64FF151A21FF2B4145FF19282DFF568489FF7FC9CEFF95E6EAFFA1ECF0FFA8
                  EEF0FFAFF0F3FFB7F1F5FFC1EFF1C4A9C7CB0900000000000000000000000000
                  00000000000000000000006FB7BA0138C9CFA233D4DBFF3CD6DFFF46D7DFFF4D
                  D8E0FF54D9E1FF58DBE2FF62D6DDFF22474FFF284247FF264348FF488187FF3F
                  6E74FF182529FF598E91FF2A3F44FF2C454CFF598D91FF689D9EFF9ADFE2FFA4
                  E8EBFFAEEFF4FFB7F1F5FFBFF3F5FFC5EDEE8B7D8E9100000000000000000000
                  00000000000000000000003ABBC4412AD2DAFC30D4DDFF3BD5DEFF45D7DFFF4D
                  D8E0FF54D9E1FF59DBE2FF5EDBE3FF61CFD6FF3D7B7FFF274C51FF437A80FF5C
                  9EA5FF17282EFF3B575CFF162126FF3A545AFF395458FF1B262BFF7AAFB3FF95
                  CFD2FFAEECEEFFB5F0F4FFBEF2F5FFC8F4F6F8C0DEE131000000000000000000
                  0000000000000062B4B80224C9D1BE24D3DDFF30D4DDFF39D6DEFF45D6DFFF4D
                  D8DFFF54D9E1FF58DBE2FF5DDCE3FF62DCE3FF65D7DEFF63C4CBFF5FB7BEFF68
                  C5CBFF66B3B9FF34595EFF335158FF547E82FF222C32FF344A50FF6A9599FF31
                  4248FF34464BFF8BB7BAFFB2DFE2FFC6F3F6FFCBEFF1AB889699010000000000
                  0000000000000028AFB52F17D1D8FB23D4DCFF30D4DDFF39D6DFFF44D6DFFF4D
                  D9DFFF54DAE1FF57DBE3FF5EDCE3FF62DDE3FF67DEE5FF6CDFE3FF73DDE5FF77
                  E0E6FF7EE2E7FF7BD6DBFF72C1C6FF33545BFF151A1FFF435D61FF587B80FF16
                  1922FF3B4E53FF6A878BFF9DC8CBFFC4EFF2FFD1F5F8F8B7CDCF200000000000
                  000000000000001AC2CB7D0FD3DAFF23D3DBFF2FD4DDFF38D6DEFF44D7DFFF4D
                  D8DFFF54DAE1FF57DBE2FF5EDBE3FF61DDE3FF68DDE4FF79D5D9FFA0D7D9FFB1
                  D8D9FFA3D8DAFF88D8DCFF88E4E8FF508085FF1D2026FF2A3B3FFF1D282DFF1C
                  2328FF6B8F92FF7EA4A8FFAAD8DBFFC5F1F4FFD2F6FAFFCFEBEC6C0000000000
                  00000082BEC00114C7D0BF0FD2DAFF24D1D9FF32D1DBFF3AD5DCFF44D6DFFF4C
                  D8DDFF53D8E1FF59D8E0FF5FD9E0FF62DAE2FF89D2D5FFE0EAE9FFF8F4F2FFF8
                  F6F2FFF9F6F4FFE4EBEAFF9BD8DCFF61989CFF1A292EFF4F6F72FF1D262AFF17
                  1D23FF506B70FF8BB7BBFFBAEBECFFC7F2F5FFD1F5F8FFD4EFF2A50000000000
                  00000050ADB0070CCCD2E511C7CDFF3C8B8CFF4E7F81FF469DA1FF41D0D8FF4D
                  D5DDFF61A3A5FF668B89FF688B8AFF68A0A1FFB0A7A1FFB89E95FFB8A8A4FFD0
                  CCCCFFEEEAE6FFDCCBC1FFB3A397FF839D99FF6A8A8AFF6F756DFF494641FF55
                  524AFF64685EFF8A9083FFACB09EFFB1B7A5FF9EB3B4FFBCD4D7CE868F920000
                  0000002EABAF110CCCD3F317B7BFFF704C45FF8B453DFF636764FF43C8CEFF56
                  C2C6FF84584DFF985646FF8E5B4AFF7A8484FFA17264FFA3634DFF937166FFCD
                  CBCAFFE2D7D0FFAC7660FFAE775AFF91715CFF717C72FFAE7E5EFFAD7E5BFFA7
                  7C5AFFA67E58FFBF9264FFD1A26CFFD1A671FF59605BFF98ABAEDE8E989A0200
                  0000001BA5AC190BCDD5F915B5BDFF704C45FF8D453CFF685956FF40AFB8FF67
                  8D8CFF935246FF995746FF716760FF8FAFAFFFA77768FFA1634EFF916D62FFCB
                  C6C5FFC09B88FFAB7158FFB2765AFF946E58FF6D7770FFB78564FFC18B61FFB8
                  8861FFAB8863FFB99872FFC0A178FFC1A57BFF727F7BFFA7BDBFE2949FA20300
                  0000003AAEB3110BCBD3F417B5BCFF704B46FF8D453BFF894940FF576C6AFF7D
                  5B50FF965246FF8E5848FF558C8FFF83C2C5FFA6776AFFA2634EFF8E6C60FFB4
                  A49DFFA66E56FFAD7257FFB2775AFF906F58FF5A8181FFA1A08EFFBE8C62FFBB
                  8B64FF65665BFF80A0A1FFA8D1D1FFB2D8D7FFB8DCDDFFCCE9EBD98695970100
                  0000005EAEB20611CAD2E717B5BCFF714B45FF8C463BFF91483EFF8C4D3FFF90
                  4F42FF965245FF72665FFF53BAC1FF6BD2D6FF927063FFA1634EFF8F685CFF9A
                  6E5CFFA86D54FFAA7257FFB0775AFF936E59FF568285FF94D7DAFFAFA589FFC3
                  9066FFB78F67FF6B7A73FF9AC2C7FFC4F0F2FFD0F6F8FFD9F5F7C3808F910000
                  000000A8D9DB0119C2C9C715B5BCFF714B45FF8C453CFF8E493CFF924C3FFF93
                  4F42FF8E5446FF528E90FF5BD4DBFF64D8DDFF8B7366FFA3634EFF9C6451FFA5
                  6952FFA06B54FF996C5AFFB0775AFF926E5AFF568385FF8FDEE2FFA2E2E0FFB8
                  A082FFCA9768FFB39068FF6A7978FFA6C9CAFFCDF2F6FFCFF2F0920000000000
                  0000000000000023BEC88318B5BBFF6E4B46FF8C453CFF824940FF8B4D3EFF94
                  4F43FF7E574AFF4C9CA0FF5CD7DEFF63D8DEFF8C7366FFA0644DFFA4664FFFA7
                  6951FF6C6861FF8C7D6EFFB0775AFF926E5AFF578386FF8EDDE2FF9DE9F2FFAF
                  DFD9FFBE9F78FFCF9D6AFFAC8D69FF6B7D7CFFB0CFD1FFCCE8EC530000000000
                  0000000000000036AAAB331FB1B7FC704B45FF8B453CFF675955FF696059FF92
                  4F40FF935245FF686D68FF56BAC1FF64D6DEFF8B7366FFA1634EFFA46650FF90
                  6656FF578B8EFF959284FFB0775AFF926E5AFF598285FF95B8B0FF9EB3A5FFA0
                  B1A6FFB2A88DFFCF9E6BFFD3A36EFFA18966FF708081EB96A7AD0F0000000000
                  00000000000000A7E0DC02329EA5C3714B45FF8B453CFF636562FF49A3A8FF7D
                  5A50FF955246FF915748FF617C79FF5DC3C6FF8B7366FFA06250FF9F6650FF60
                  6F6CFF6ABEC3FF999B8DFFB0765BFF906F58FF5C8284FFAC8E6FFFC18C62FFC2
                  9265FFC89868FFD09E6AFFD5A36DFFC9A06EFF4649458E475158000000000000
                  00000000000000000000005C8B8E47605754FD6E504BFF547675FF3FC7CDFF54
                  999DFF7C5E54FF805F52FF77645BFF57A4A6FF7B7E74FF8B6A5CFF7B7166FF5B
                  A1A6FF77DBE1FF8FA79DFF9B7F69FF887869FF66989AFFA39782FFAC8D6FFFB0
                  906EFFB49571FFB99A73FFBE9F75FFBC9F76EE504D401A000000000000000000
                  0000000000000000000000A0BABC0142A7AD9B34B9C2FF37C5CBFF3FD3DCFF49
                  D0D7FF51C2C9FF55BEC4FF58C0C6FF5DCCD2FF64CED4FF66C4C8FF6BC6CDFF71
                  D6DDFF78E1E7FF81DEE3FF7ED0D2FF7EC8CCFF84D5DBFF90DDE1FF90D1D1FF92
                  CDCFFF9BCED0FFA0CFD1FFA7D1D2FE9FB6B87000000000000000000000000000
                  00000000000000000000000000000063B1B60E3DC9D2CB35D5DDFF3DD6DEFF49
                  D7DFFF50D9E1FF55DAE2FF5BDBE3FF5FDCE4FF65DDE4FF6BDFE5FF70E0E6FF75
                  E1E7FF78E3E8FF7FE4E9FF83E5E9FF8AE6EBFF8EE7ECFF93EAEEFF9BEBEFFFA4
                  ECF0FFACEEF3FFB1EFF4FFBBECF1A498B6BA0300000000000000000000000000
                  0000000000000000000000000000000000000054B7BC1C41CED7CF3FD6DEFF49
                  D7DFFF50D9E0FF55DAE1FF5BDBE3FF5FDCE4FF65DDE4FF6BDFE5FF70E0E6FF75
                  E1E7FF78E3E8FF7FE4E9FF83E5E9FF8AE6EBFF8EE7ECFF93E9EDFF9BEBEFFFA3
                  ECF0FFAAEEF2FFB1ECEFADA8D0D60A0000000000000000000000000000000000
                  000000000000000000000000000000000000000000000056B6B9124FCED5B14B
                  D6DFFE4FD8E0FF55D9E2FF5BDBE2FF5EDCE4FF64DDE4FF6ADFE5FF70E0E6FF74
                  E1E7FF78E3E8FF7EE4E9FF82E5E9FF89E6EBFF8DE6ECFF92E9EEFF9CEBEFFFA3
                  ECEFFBACE9ED8DA0CBCE07000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000064ADB10655
                  C6CF7356D5DCEF54DAE0FF5BDBE2FF5EDCE2FF63DDE3FF69DFE5FF70E0E6FF73
                  E1E7FF78E3E8FF7EE4E9FF83E4EBFF86E7EAFF8EE7EAFF95E9EDFF9AEAEDD8A7
                  E4E84895BBBF0100000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000000000000000009D
                  C7C7005EB5B91A61CDD58461D6DDE361DBE3FE63DDE4FF6ADFE5FF6FE0E6FF73
                  E1E7FF78E3E8FF7EE4E9FF81E4E9FF8AE5EBFD8EE3E8D493E2E56D93CCCE0B00
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000062A8AD096AC7CD3D6FD3DA796ED7DDA674DBE1BF76
                  DAE1C77DDEE4BC81DCE2A186DCE0748AD5D93278ADAF04000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000088A9AB0080
                  A3A40189A8A80000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000FFFFFFFFFFF83FFFFF8003FFFE0000FFFC00007FF800003FF000001FE0
                  00000FC0000007C0000007800000038000000380000003000000030000000100
                  00000100000001000000010000000100000003800000038000000380000003C0
                  000007C000000FE000000FF000001FF800003FFC00007FFE0001FFFFC007FFFF
                  FC7FFF280000001000000020000000010020000000000000040000C30E0000C3
                  0E00000000000000000000000000000000000000000000000000000000000000
                  00000079A7A90061949702689498010000000000000000000000000000000000
                  000000000000000000000000000000000000000000000073A6AA0061D1D73666
                  D9DF9E6DD2D8DC77DFE5F781E2E7ED8CE4E8C097E3E86E99D5D80B0000000000
                  0000000000000000000000000000000000000058C1C80853D4DA9959DAE1FD5C
                  CDD5FF2F565CFF3D6B71FF77D3D9FF8BE6ECFF95E9EEFFA5EBF0DFAFE8EB3900
                  0000000000000000000000000000004FB4BD0540D2D9B44AD7DFFF56DAE1FF3C
                  8187FF253E42FF283F45FF2F4B51FF588D91FF8FDFE4FFA4EDF0FFB3EFF4F3BE
                  EBEE3900000000000000000000000031CCD37836D5DDFF49D7DFFF56DAE2FF51
                  B2B9FF2D5358FF498288FF314D51FF2A3E44FF45696DFF93D1D5FFB2EFF3FFC2
                  F2F4E0BFDDE00C000000002BAFB50C20D1D9EE35D5DEFF49D7DFFF56DAE2FF60
                  DCE3FF67D6DCFF6CCED5FF65B1B6FF4B797FFF2B3B40FF425B61FF597579FFB6
                  E2E5FFCDF0F2710000000016C5CE4F19D2DAFF35D4DDFF48D7DFFF56D9E1FF60
                  DBE2FF92DCDFFFD0E6E6FFC2E4E5FF75B5B9FF2C3D41FF1B2428FF719599FFBC
                  EAECFFD2F3F6C4000000000ECAD07C359597FF607271FF4ACCD2FF797770FF76
                  827EFFAB867AFFBAACA8FFD6C0B6FF9D8A7AFF7E7E72FF7C6450FF958267FFC0
                  AC88FF90A2A2EB8E979A010DC9D186438081FF834B43FF5F817FFF945547FF76
                  9999FFA46D5CFFA79189FFB07B63FFA27359FF888779FFBD8B62FF928A74FFB7
                  BCA7FFA6BFBFEE909C9F0116C6CD6D448081FF8E473CFF904E41FF7A665FFF5F
                  CED4FF986A59FF9A6957FFA36D56FFA1735AFF74AFB2FFB3AE94FFA88C6BFF9C
                  BDBFFFD1F4F6D5808F910029B9C02E457F7FFE804B43FF865347FF716C66FF5E
                  D0D7FF966C5AFFA06752FF798078FFA1735AFF75A7A7FFA2CBC5FFC4A076FFA3
                  8D6EFF9AB2B49300000000A7E0DC015A6A69C16C5C58FF569799FF895A4DFF63
                  9290FF8C6F61FF757A72FF82B7B4FF997761FF849084FFB78F69FFC1996DFFC6
                  A072FB4849442A000000000000000045A8AD2B37C7CFF243D4DCFF53CDD4FF5C
                  D1D8FF67D4D9FF70D7DEFF7CE2E7FF82D9DDFF8DE1E5FF98DDE0FFA6DFE2FFAC
                  D3D6850000000000000000000000000000000045CAD23F48D5DDEB52D9E1FF5D
                  DBE3FF68DEE5FF72E1E7FF7BE3E9FF86E6EAFF90E8EDFF9FEBEFFEADECEF90A8
                  D0D603000000000000000000000000000000000000000056C5CD1E58D4DBA35F
                  DAE1F866DEE4FF71E1E7FF7BE3E8FF85E5EAFE91E6EAD09DE7EB4B95BBBF0000
                  0000000000000000000000000000000000000000000000000000000000000069
                  C3C9116ED6DC4875DAE1627FDDE35787DADE2A78ADAF01000000000000000000
                  0000000000000000000000FC7F0000E00F0000C0070000800300008001000000
                  01000000010000000000000000000000000000000100000001000080030000C0
                  030000E0070000F81F0000}
                Stretch = True
                OnClick = kep1Click
              end
            end
          end
          object pnlKepJobb: TPanel
            Left = 313
            Top = 0
            Width = 344
            Height = 424
            Align = alClient
            TabOrder = 1
            object pnlKepJobbFelso: TPanel
              Left = 1
              Top = 1
              Width = 342
              Height = 208
              Align = alTop
              TabOrder = 0
              object OKep3: TImage
                Left = 5
                Top = -1
                Width = 308
                Height = 194
                Stretch = True
                OnClick = kep1Click
              end
            end
            object pnkKepJobbAlso: TPanel
              Left = 1
              Top = 209
              Width = 342
              Height = 214
              Align = alClient
              TabOrder = 1
              object OKep4: TImage
                Left = 4
                Top = 6
                Width = 312
                Height = 195
                Stretch = True
                OnClick = kep1Click
              end
            end
          end
        end
        object tsKep1: TTabSheet
          Caption = 'Pic. 1'
          DesignSize = (
            657
            424)
          object kep1: TImage
            Left = 1
            Top = 0
            Width = 657
            Height = 375
            Stretch = True
            OnClick = kep1Click
          end
          object lblKep1: TLabel
            Left = 3
            Top = 408
            Width = 45
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'No pic.'
            ExplicitTop = 392
          end
        end
        object tsKep2: TTabSheet
          Caption = 'Pic. 2'
          ImageIndex = 1
          DesignSize = (
            657
            424)
          object kep2: TImage
            Left = -5
            Top = 0
            Width = 659
            Height = 375
            Stretch = True
            OnClick = kep1Click
          end
          object lblKep2: TLabel
            Left = 1
            Top = 411
            Width = 45
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'No pic.'
            ExplicitTop = 388
          end
        end
        object tsKep3: TTabSheet
          Caption = 'Pic. 3'
          ImageIndex = 3
          DesignSize = (
            657
            424)
          object Kep3: TImage
            Left = 0
            Top = 8
            Width = 657
            Height = 375
            Stretch = True
            OnClick = kep1Click
          end
          object lblKep3: TLabel
            Left = 11
            Top = 411
            Width = 45
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'No pic'
            ExplicitTop = 412
          end
        end
        object tsKep4: TTabSheet
          Caption = 'Pic. 4'
          ImageIndex = 4
          DesignSize = (
            657
            424)
          object Kep4: TImage
            Left = 0
            Top = 16
            Width = 657
            Height = 375
            Stretch = True
            OnClick = kep1Click
          end
          object lblKep4: TLabel
            Left = 19
            Top = 411
            Width = 45
            Height = 13
            Anchors = [akLeft, akBottom]
            Caption = 'No pic.'
            ExplicitTop = 412
          end
        end
      end
    end
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner_combo ORDER BY Nev ASC;')
    Left = 360
    Top = 520
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 432
    Top = 520
  end
  object termeklist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 360
    Top = 608
    object termeklistID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object termeklistKod: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kod'
      Origin = 'Kod'
      Size = 30
    end
    object termeklistNev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nev'
      Origin = 'Nev'
      Size = 100
    end
    object termeklistitj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'itj'
      Origin = 'itj'
    end
    object termeklistme: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'me'
      Origin = 'me'
    end
    object termeklistar: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ar'
      Origin = 'ar'
      Precision = 12
      Size = 2
    end
    object termeklistafa: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'afa'
      Origin = 'afa'
      Precision = 12
      Size = 2
    end
    object termeklistegysegtomeg: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'egysegtomeg'
      Origin = 'egysegtomeg'
      Precision = 12
      Size = 2
    end
    object termeklistalapnedv: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'alapnedv'
      Origin = 'alapnedv'
      Precision = 12
      Size = 2
    end
    object termeklistkerekites: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'kerekites'
      Origin = 'kerekites'
    end
    object termeklistkukorica: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'kukorica'
      Origin = 'kukorica'
    end
    object termeklistb_nedv: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_nedv'
      Origin = 'b_nedv'
    end
    object termeklistb_feherje: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_feherje'
      Origin = 'b_feherje'
    end
    object termeklistb_eses: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_eses'
      Origin = 'b_eses'
    end
    object termeklistb_tisztasag: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_tisztasag'
      Origin = 'b_tisztasag'
    end
    object termeklistb_tort: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_tort'
      Origin = 'b_tort'
    end
    object termeklistb_olaj: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_olaj'
      Origin = 'b_olaj'
    end
    object termeklistb_buzaminoseg: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_buzaminoseg'
      Origin = 'b_buzaminoseg'
    end
    object termeklistb_hekto: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'b_hekto'
      Origin = 'b_hekto'
    end
    object termeklisttipus_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipus_id'
      Origin = 'tipus_id'
    end
    object termeklistewc: TWideStringField
      FieldName = 'ewc'
    end
    object termeklistb_siker: TBooleanField
      FieldName = 'b_siker'
    end
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 432
    Top = 616
  end
  object jvmemparos: TJvMemoryData
    FieldDefs = <>
    Left = 224
    Top = 48
    object jvmemparosid: TIntegerField
      FieldName = 'id'
    end
    object jvmemparosdatum: TDateField
      FieldName = 'datum'
    end
    object jvmemparosido: TTimeField
      FieldName = 'ido'
    end
    object jvmemparostomeg: TIntegerField
      FieldName = 'tomeg'
    end
    object jvmemparosrendszam: TStringField
      FieldName = 'rendszam'
    end
    object jvmemparosrendszam2: TStringField
      FieldName = 'rendszam2'
    end
    object jvmemparoskepnev1: TStringField
      FieldName = 'kepnev1'
      Size = 180
    end
    object jvmemparoskepnev2: TStringField
      FieldName = 'kepnev2'
      Size = 180
    end
    object jvmemparosparosit: TBooleanField
      FieldName = 'parosit'
    end
    object jvmemparoskezi: TBooleanField
      FieldName = 'kezi'
    end
  end
  object jvmemparosDs: TDataSource
    DataSet = jvmemparos
    Left = 224
    Top = 112
  end
  object masolQ: TFDQuery
    Connection = AF.Kapcs
    FetchOptions.AssignedValues = [evRowsetSize]
    FetchOptions.RowsetSize = 200
    Left = 360
    Top = 40
  end
  object TarolokT: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok ORDER BY nev ASC')
    Left = 422
    Top = 41
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 480
    Top = 40
  end
  object tulajT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'tulajok'
    Left = 224
    Top = 336
    object tulajTID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tulajTNev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nev'
      Origin = 'Nev'
      Size = 80
    end
    object tulajTCim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cim'
      Origin = 'Cim'
      Size = 200
    end
    object tulajTAdoszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Adoszam'
      Origin = 'Adoszam'
    end
    object tulajTkuj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kuj'
      Origin = 'kuj'
    end
    object tulajTktj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ktj'
      Origin = 'ktj'
    end
    object tulajTElotag: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Elotag'
      Origin = 'Elotag'
      Size = 2
    end
    object tulajTIrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Irsz'
      Origin = 'Irsz'
      Size = 10
    end
    object tulajTTelepules: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telepules'
      Origin = 'Telepules'
      Size = 30
    end
    object tulajTKerulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kerulet'
      Origin = 'Kerulet'
      Size = 5
    end
    object tulajTKozterulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kozterulet'
      Origin = 'Kozterulet'
      Size = 30
    end
    object tulajTKozt_Jelleg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kozt_Jelleg'
      Origin = 'Kozt_Jelleg'
      Size = 10
    end
    object tulajTHazszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Hazszam'
      Origin = 'Hazszam'
      Size = 5
    end
    object tulajTEpulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Epulet'
      Origin = 'Epulet'
      Size = 5
    end
    object tulajTLepcsohaz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lepcsohaz'
      Origin = 'Lepcsohaz'
      Size = 5
    end
    object tulajTEmelet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emelet'
      Origin = 'Emelet'
      Size = 5
    end
    object tulajTHrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Hrsz'
      Origin = 'Hrsz'
      Size = 5
    end
    object tulajTEmail: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Email'
      Origin = 'Email'
    end
    object tulajTTelefon: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon'
      Origin = 'Telefon'
    end
    object tulajTAjto: TWideStringField
      FieldName = 'Ajto'
      Size = 5
    end
    object tulajTcjsz: TWideStringField
      FieldName = 'cjsz'
    end
  end
  object tulajDs: TDataSource
    DataSet = tulajT
    Left = 264
    Top = 336
  end
  object Partnerlist2Ds: TDataSource
    DataSet = Partnerlist2
    Left = 432
    Top = 576
  end
  object Partnerlist2: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner_combo ORDER BY Nev ASC;')
    Left = 360
    Top = 576
  end
  object levon_szovegT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'levonas_szovegek'
    Left = 960
    Top = 680
    object levon_szovegTID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object levon_szovegTSzoveg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Szoveg'
      Origin = 'Szoveg'
      Size = 100
    end
  end
  object levon_szovegDs: TDataSource
    DataSet = levon_szovegT
    Left = 1000
    Top = 680
  end
  object Partnerlist3: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner_combo ORDER BY Nev ASC;')
    Left = 496
    Top = 616
  end
  object Partnerlist3Ds: TDataSource
    DataSet = Partnerlist3
    Left = 568
    Top = 616
  end
  object szarQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT DISTINCT(szarmazasi_hely)'
      ' FROM merlegjegy'
      'ORDER BY szarmazasi_hely ASC')
    Left = 904
    Top = 784
  end
end
