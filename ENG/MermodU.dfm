object MermodF: TMermodF
  Left = 0
  Top = 0
  Caption = 'Modifying weighing ticket'
  ClientHeight = 491
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAlso: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 491
    Align = alClient
    TabOrder = 0
    object lblpartner: TLabel
      Left = 7
      Top = 108
      Width = 40
      Height = 13
      Caption = 'Partner:'
    end
    object Label3: TLabel
      Left = 11
      Top = 45
      Width = 30
      Height = 13
      Caption = 'Direction:'
    end
    object Label4: TLabel
      Left = 768
      Top = 103
      Width = 59
      Height = 13
      Caption = 'Bill of delivery:'
    end
    object Label1: TLabel
      Left = 9
      Top = 235
      Width = 39
      Height = 13
      Caption = 'Product:'
    end
    object Label6: TLabel
      Left = 768
      Top = 157
      Width = 53
      Height = 13
      Caption = 'License plate:'
    end
    object Label7: TLabel
      Left = 952
      Top = 157
      Width = 62
      Height = 13
      Caption = 'License plate 2.:'
    end
    object Label9: TLabel
      Left = 185
      Top = 389
      Width = 34
      Height = 13
      Caption = 'Gross:'
    end
    object Label10: TLabel
      Left = 293
      Top = 389
      Width = 26
      Height = 13
      Caption = 'Tara:'
    end
    object Label11: TLabel
      Left = 401
      Top = 389
      Width = 31
      Height = 13
      Caption = 'Net:'
    end
    object Label2: TLabel
      Left = 11
      Top = 73
      Width = 74
      Height = 16
      Caption = '1. measure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblelsodat: TLabel
      Left = 91
      Top = 73
      Width = 62
      Height = 16
      Caption = 'lblelsodat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 227
      Top = 73
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
      Top = 72
      Width = 62
      Height = 16
      Caption = 'lblmasdat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblelsoido: TLabel
      Left = 91
      Top = 91
      Width = 59
      Height = 16
      Caption = 'lblelsoido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblmasido: TLabel
      Left = 334
      Top = 95
      Width = 59
      Height = 16
      Caption = 'lblmasido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 352
      Width = 61
      Height = 13
      Caption = 'Note:'
    end
    object Label13: TLabel
      Left = 768
      Top = 201
      Width = 62
      Height = 13
      Caption = 'Scale operator'
    end
    object lblekaer: TLabel
      Left = 8
      Top = 389
      Width = 39
      Height = 13
      Caption = 'EK'#193'ER: '
    end
    object Label27: TLabel
      Left = 768
      Top = 261
      Width = 34
      Height = 13
      Caption = 'Storage:'
    end
    object lblsznetto: TLabel
      Left = 618
      Top = 389
      Width = 46
      Height = 13
      Caption = 'Calc.net:'
    end
    object lblpartner2: TLabel
      Left = 7
      Top = 158
      Width = 49
      Height = 13
      Caption = 'Partner 2:'
    end
    object lbllevonszoveg: TLabel
      Left = 768
      Top = 319
      Width = 115
      Height = 13
      Caption = 'Mass deduction text:'
    end
    object lbl_tomeg_levon: TLabel
      Left = 510
      Top = 390
      Width = 76
      Height = 13
      Caption = 'Mass deduction:'
    end
    object lblsorszam: TLabel
      Left = 9
      Top = 11
      Width = 113
      Height = 25
      Caption = 'lblsorszam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblfuvarozo: TLabel
      Left = 7
      Top = 200
      Width = 49
      Height = 13
      Caption = 'Carrier:'
    end
    object lblkepnev1: TLabel
      Left = 184
      Top = 8
      Width = 51
      Height = 13
      Caption = 'lblkepnev1'
      Visible = False
    end
    object lblkepnev2: TLabel
      Left = 256
      Top = 8
      Width = 51
      Height = 13
      Caption = 'lblkepnev2'
      Visible = False
    end
    object lblkepnev3: TLabel
      Left = 360
      Top = 8
      Width = 51
      Height = 13
      Caption = 'lblkepnev3'
      Visible = False
    end
    object lblkepnev4: TLabel
      Left = 448
      Top = 8
      Width = 51
      Height = 13
      Caption = 'lblkepnev4'
      Visible = False
    end
    object lblszabalyos: TLabel
      Left = 600
      Top = 8
      Width = 57
      Height = 13
      Caption = 'lblszabalyos'
      Visible = False
    end
    object lblszar: TLabel
      Left = 743
      Top = 390
      Width = 85
      Height = 13
      Caption = 'Place of origin:'
    end
    object cbxirany: TComboBox
      Left = 60
      Top = 45
      Width = 145
      Height = 22
      Style = csOwnerDrawFixed
      DropDownCount = 3
      TabOrder = 0
      OnChange = cbxiranyChange
      Items.Strings = (
        '---Not selected----'
        'In'
        'Out')
    end
    object btnMentes: TButton
      Left = 424
      Top = 432
      Width = 137
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = btnMentesClick
    end
    object partnerlookup: TJvDBLookupCombo
      Left = 8
      Top = 127
      Width = 665
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'combo;cim;'
      LookupSource = PartnelistDs
      TabOrder = 2
      OnChange = partnerlookupChange
    end
    object edszallev: TEdit
      Left = 768
      Top = 122
      Width = 145
      Height = 21
      MaxLength = 20
      TabOrder = 3
      Text = 'edszallev'
    end
    object spBrutto: TSpinEdit
      Left = 185
      Top = 405
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 5
      Value = 0
    end
    object sptara: TSpinEdit
      Left = 293
      Top = 405
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 6
      Value = 0
    end
    object spnetto: TSpinEdit
      Left = 401
      Top = 405
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 7
      Value = 0
    end
    object edmegjegy: TEdit
      Left = 8
      Top = 367
      Width = 665
      Height = 21
      TabOrder = 8
      Text = 'edmegjegy'
    end
    object Button1: TButton
      Left = 534
      Top = 154
      Width = 139
      Height = 17
      Caption = 'List of partners'
      TabOrder = 9
    end
    object btn1: TButton
      Left = 536
      Top = 272
      Width = 137
      Height = 17
      Caption = 'List of products'
      TabOrder = 10
      OnClick = btn1Click
    end
    object kezelolookup: TJvDBLookupCombo
      Left = 768
      Top = 214
      Width = 305
      Height = 21
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'nev'
      LookupDisplay = 'nev;'
      LookupSource = AF.merlegkezQDs
      TabOrder = 11
    end
    object Button2: TButton
      Left = 936
      Top = 241
      Width = 137
      Height = 20
      Caption = 'List of scale operators'
      TabOrder = 12
    end
    object cbxktip: TComboBox
      Left = 952
      Top = 274
      Width = 39
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 13
      Text = 'a'
      Visible = False
      Items.Strings = (
        'a'
        'b')
    end
    object chknincspot: TCheckBox
      Left = 230
      Top = 46
      Width = 97
      Height = 17
      Caption = 'No trailer'
      Checked = True
      State = cbChecked
      TabOrder = 14
    end
    object edekaer: TEdit
      Left = 8
      Top = 404
      Width = 161
      Height = 21
      TabOrder = 15
      Text = 'EdEkaer'
    end
    object cbxrendszam1: TComboBox
      Left = 768
      Top = 173
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      Sorted = True
      TabOrder = 16
      Text = 'CBXRENDSZAM1'
      OnChange = cbxrendszam1Change
    end
    object cbxrendszam2: TComboBox
      Left = 952
      Top = 176
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Sorted = True
      TabOrder = 17
      Text = 'CBXRENDSZAM2'
    end
    object chkrogzitett: TCheckBox
      Left = 353
      Top = 46
      Width = 97
      Height = 17
      Caption = 'FIX tara'
      TabOrder = 18
    end
    object btnTaramegadas: TButton
      Left = 832
      Top = 149
      Width = 81
      Height = 17
      Caption = 'Enter tara'
      TabOrder = 19
      OnClick = btnTaramegadasClick
    end
    object pnlmezgaz: TPanel
      Left = 8
      Top = 289
      Width = 737
      Height = 63
      TabOrder = 20
      object Label17: TLabel
        Tag = 11
        Left = 88
        Top = 26
        Width = 56
        Height = 13
        Caption = 'Basic moi.:'
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
        Caption = 'Clearance:'
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
        Caption = 'Num. of falls:'
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
        Caption = 'Wheat qual.'
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
        Caption = 'Gluen:'
      end
      object spalapnedv: TJvSpinEdit
        Tag = 11
        Left = 88
        Top = 38
        Width = 65
        Height = 21
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
        ValueType = vtFloat
        TabOrder = 1
        OnChange = spnedvChange
        OnExit = spnedvChange
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
        TabOrder = 3
        OnExit = spnedvChange
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
        OnMouseUp = chkkukMouseUp
      end
      object sptort: TJvSpinEdit
        Tag = 15
        Left = 592
        Top = 38
        Width = 65
        Height = 21
        ValueType = vtFloat
        TabOrder = 9
        OnExit = spnedvChange
      end
      object spegysegtomeg: TJvSpinEdit
        Left = 11
        Top = 39
        Width = 65
        Height = 21
        ValueType = vtFloat
        ReadOnly = True
        TabOrder = 10
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
          'Euro'
          'Mills')
      end
      object edSample: TEdit
        Left = 590
        Top = 6
        Width = 67
        Height = 21
        TabOrder = 12
        Text = 'edSample'
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
      end
    end
    object taroloklookup: TJvDBLookupCombo
      Left = 768
      Top = 277
      Width = 145
      Height = 21
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = TarolokDs
      TabOrder = 21
    end
    object Button3: TButton
      Left = 838
      Top = 300
      Width = 75
      Height = 19
      Caption = 'Storages'
      TabOrder = 22
    end
    object termeklookup: TJvDBLookupCombo
      Left = 7
      Top = 251
      Width = 665
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'Nev;kod;'
      LookupSource = termeklistDs
      TabOrder = 4
      OnCloseUp = termeklookupCloseUp
    end
    object Spsznetto: TSpinEdit
      Left = 618
      Top = 403
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      ReadOnly = True
      TabOrder = 23
      Value = 0
    end
    object btnNyomtatas: TButton
      Left = 584
      Top = 432
      Width = 137
      Height = 25
      Caption = 'Print'
      TabOrder = 24
      OnClick = btnMentesClick
    end
    object chkelso_kezi: TCheckBox
      Left = 36
      Top = 91
      Width = 49
      Height = 17
      Caption = 'K'#233'zi'
      Enabled = False
      TabOrder = 25
    end
    object chkmasodik_kezi: TCheckBox
      Left = 227
      Top = 90
      Width = 49
      Height = 17
      Caption = 'Manual'
      Enabled = False
      TabOrder = 26
    end
    object partnerlookup2: TJvDBLookupCombo
      Left = 7
      Top = 177
      Width = 665
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'combo;cim;'
      LookupSource = Partnerlist2Ds
      TabOrder = 27
      OnChange = partnerlookup2Change
    end
    object chkpartnerekegy: TCheckBox
      Left = 72
      Top = 154
      Width = 162
      Height = 17
      Caption = 'The two partners are the same'
      TabOrder = 28
    end
    object btnekaer: TButton
      Left = 7
      Top = 431
      Width = 75
      Height = 25
      Caption = 'EK'#193'ER request'
      TabOrder = 29
      OnClick = btnekaerClick
    end
    object levonlookup: TJvDBLookupCombo
      Left = 768
      Top = 334
      Width = 305
      Height = 21
      DisplayEmpty = '----Not selected----'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'Szoveg'
      TabOrder = 30
      OnChange = levonlookupChange
    end
    object sp_tomeg_levon: TSpinEdit
      Left = 510
      Top = 404
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 31
      Value = 0
      OnExit = spnedvChange
    end
    object btnlevon_szoveg: TButton
      Left = 936
      Top = 361
      Width = 137
      Height = 21
      Caption = 'Deduction texts'
      TabOrder = 32
      OnClick = btnlevon_szovegClick
    end
    object tulajlookup: TJvDBLookupCombo
      Left = 651
      Top = 45
      Width = 382
      Height = 21
      DisplayEmpty = '---Choose a certificate issuer---'
      EmptyValue = '!'
      LookupField = 'Id'
      LookupDisplay = 'Nev'
      TabOrder = 33
    end
    object Button4: TButton
      Left = 958
      Top = 431
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 34
      OnClick = Button4Click
    end
    object cbfuvarozo: TJvDBLookupCombo
      Left = 7
      Top = 214
      Width = 665
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Not selected----'
      EmptyValue = '0'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'combo;cim;'
      LookupSource = Partnerlist3Ds
      TabOrder = 35
      OnChange = partnerlookup2Change
    end
    object cbxszar: TComboBox
      Left = 743
      Top = 403
      Width = 176
      Height = 21
      TabOrder = 36
      Text = 'cbxszar'
    end
  end
  object TempQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      '')
    Left = 488
    Top = 40
  end
  object temp_script: TFDScript
    SQLScripts = <
      item
        SQL.Strings = (
          'DROP TABLE IF EXISTS mjegy_temp;'
          
            'CREATE TEMPORARY TABLE IF NOT EXISTS mjegy_temp AS (SELECT * FRO' +
            'M merlegjegy WHERE id=:id);')
      end>
    Connection = AF.Kapcs
    Params = <
      item
        Name = 'id'
        DataType = ftInteger
        ParamType = ptInput
      end>
    Macros = <>
    Left = 552
    Top = 40
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner_combo ORDER BY Nev ASC;')
    Left = 248
    Top = 129
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 304
    Top = 129
  end
  object Partnerlist2Ds: TDataSource
    DataSet = Partnerlist2
    Left = 304
    Top = 153
  end
  object Partnerlist2: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner_combo ORDER BY Nev ASC;')
    Left = 200
    Top = 153
  end
  object termeklist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 240
    Top = 281
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
    Left = 304
    Top = 313
  end
  object levon_szovegT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'levonas_szovegek'
    Left = 896
    Top = 329
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
    Left = 936
    Top = 329
  end
  object tulajT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'tulajok'
    Left = 760
    Top = 24
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
    Left = 800
    Top = 24
  end
  object TarolokT: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok ORDER BY nev ASC')
    Left = 742
    Top = 257
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 800
    Top = 256
  end
  object Partnerlist3: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner_combo ORDER BY Nev ASC;')
    Left = 408
    Top = 169
  end
  object Partnerlist3Ds: TDataSource
    DataSet = Partnerlist3
    Left = 480
    Top = 169
  end
  object szarQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT DISTINCT(szarmazasi_hely)'
      ' FROM merlegjegy'
      'ORDER BY szarmazasi_hely ASC')
    Left = 880
    Top = 415
  end
end
