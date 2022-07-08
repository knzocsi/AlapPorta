object MjegyekF: TMjegyekF
  Left = 0
  Top = 0
  Caption = 'M'#233'rlegjegyek list'#225'ja'
  ClientHeight = 547
  ClientWidth = 1020
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1020
    Height = 137
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
    object Label3: TLabel
      Left = 15
      Top = 53
      Width = 39
      Height = 13
      Caption = 'Term'#233'k:'
    end
    object Label5: TLabel
      Left = 440
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Partner:'
    end
    object Label7: TLabel
      Left = 917
      Top = 48
      Width = 30
      Height = 13
      Caption = 'Ir'#225'ny:'
    end
    object Label8: TLabel
      Left = 918
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Rendsz'#225'mok:'
    end
    object lblbizki: TLabel
      Left = 16
      Top = 96
      Width = 98
      Height = 13
      Caption = 'Bizonylat kibocs'#225'jt'#243':'
    end
    object Label9: TLabel
      Left = 440
      Top = 96
      Width = 49
      Height = 13
      Caption = 'Partner 2:'
    end
    object Label27: TLabel
      Left = 918
      Top = 96
      Width = 34
      Height = 13
      Caption = 'T'#225'rol'#243':'
    end
    object piKezdoDatum: TDateTimePicker
      Left = 152
      Top = 22
      Width = 113
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.773554583327495500
      TabOrder = 0
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 312
      Top = 22
      Width = 105
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.774182199071219700
      TabOrder = 1
      OnChange = piBefejezoDatumChange
    end
    object btnKilepes: TButton
      Left = 16
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 2
      OnClick = btnKilepesClick
    end
    object btnUjranyomtatas: TButton
      Left = 543
      Top = 21
      Width = 98
      Height = 25
      Caption = #218'jranyomtat'#225's'
      TabOrder = 3
      OnClick = btnUjranyomtatasClick
    end
    object btnListanyomtatas: TButton
      Left = 440
      Top = 21
      Width = 97
      Height = 25
      Caption = 'Lista nyomtat'#225's'
      TabOrder = 4
      OnClick = btnListanyomtatasClick
    end
    object Button3: TButton
      Left = 728
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Storno'
      TabOrder = 5
      OnClick = Button3Click
    end
    object termeklookup: TJvDBLookupCombo
      Left = 16
      Top = 67
      Width = 401
      Height = 21
      DropDownCount = 20
      DisplayAllFields = True
      DisplayEmpty = '----Nincs kiv'#225'lasztva----'
      EmptyValue = '!'
      ListStyle = lsDelimited
      LookupField = 'ID'
      LookupDisplay = 'Nev;Kod;'
      LookupSource = termeklistDs
      TabOrder = 6
      OnChange = cbxrendszChange
    end
    object partnerlookup: TJvDBLookupCombo
      Left = 440
      Top = 67
      Width = 417
      Height = 21
      DropDownWidth = 1024
      DisplayAllFields = True
      DisplayEmpty = '----Nincs kiv'#225'lasztva----'
      EmptyValue = '!'
      LookupField = 'ID'
      LookupDisplay = 'Nev;Kod;'
      LookupSource = PartnelistDs
      TabOrder = 7
      OnChange = cbxrendszChange
    end
    object cbxirany: TComboBox
      Left = 916
      Top = 62
      Width = 97
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 8
      Text = '*Nincs sz'#369'rve*'
      OnChange = cbxrendszChange
      Items.Strings = (
        '*Nincs sz'#369'rve*'
        'Besz'#225'll'#237't'#225's'
        'Kisz'#225'll'#237't'#225's')
    end
    object cbxrendsz: TComboBox
      Left = 917
      Top = 24
      Width = 96
      Height = 21
      TabOrder = 9
      Text = 'cbxrendsz'
      OnChange = cbxrendszChange
    end
    object tulajlookup: TJvDBLookupCombo
      Left = 16
      Top = 110
      Width = 401
      Height = 21
      DeleteKeyClear = False
      EmptyValue = '0'
      LookupField = 'Id'
      LookupDisplay = 'Nev'
      TabOrder = 10
      OnChange = piKezdoDatumChange
    end
    object chkstorno: TCheckBox
      Left = 809
      Top = 25
      Width = 97
      Height = 17
      Caption = 'Storn'#243' is l'#225'tszik'
      TabOrder = 11
      OnClick = piKezdoDatumChange
    end
    object btnmodositas: TButton
      Left = 647
      Top = 21
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'#225's'
      TabOrder = 12
      OnClick = btnmodositasClick
    end
    object taroloklookup: TJvDBLookupCombo
      Left = 917
      Top = 110
      Width = 96
      Height = 21
      DisplayEmpty = '**Nincs sz'#369'rve**'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = TarolokDs
      TabOrder = 13
      OnChange = cbxrendszChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 506
    Width = 1020
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label4: TLabel
      Left = 24
      Top = 8
      Width = 16
      Height = 13
      Caption = 'Be:'
    end
    object Label6: TLabel
      Left = 176
      Top = 8
      Width = 12
      Height = 13
      Caption = 'Ki:'
    end
    object spinbe: TSpinEdit
      Left = 46
      Top = 6
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object spinki: TSpinEdit
      Left = 194
      Top = 6
      Width = 100
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 0
    end
    object Button4: TButton
      Left = 904
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = Button4Click
    end
    object btnelozmenyek: TButton
      Left = 752
      Top = 8
      Width = 123
      Height = 25
      Caption = 'M'#233'rlegjegy el'#337'zm'#233'nyei'
      TabOrder = 3
      OnClick = btnelozmenyekClick
    end
  end
  object mlistaGrid: TJvDBUltimGrid
    Left = 0
    Top = 137
    Width = 1020
    Height = 369
    Hint = 'Sorbarendez'#233'shez kattintson jobb eg'#233'rf'#252'llel az oszlop fejl'#233'c'#233're'
    Align = alClient
    DataSource = mjegyekQDs
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseUp = mlistaGridMouseUp
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'Sorszam'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam'
        Title.Caption = 'Rendsz'#225'm'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam2'
        Title.Caption = 'Rendsz'#225'm 2'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_kod'
        Title.Caption = 'P.K'#243'd'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_nev'
        Title.Caption = 'Partner n'#233'v'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_cim'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'p2_kod'
        Title.Caption = 'P.k'#243'd 2'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p2_nev'
        Title.Caption = 'Partner n'#233'v 2'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p2_cim'
        Title.Caption = 'Partner cim 2'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'termek_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'termek_kod'
        Title.Caption = 'T. k'#243'd'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'T_n'#233'v'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitolev'
        Title.Caption = 'Sz'#225'll'#237't'#243'lev'#233'l'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'megjegyzes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomegbe'
        Title.Caption = 'Be'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomegki'
        Title.Caption = 'Ki'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brutto'
        Title.Caption = 'Brutt'#243
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tara'
        Title.Caption = 'T'#225'ra'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'netto'
        Title.Caption = 'Nett'#243
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sznetto'
        Title.Caption = 'Sz.nett'#243
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'irany'
        Title.Caption = 'Ir'#225'ny'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elso_kezi'
        Title.Caption = 'E.k'#233'zi'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'erkdatum'
        Title.Caption = 'E.D'#225'tum'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'erkido'
        Title.Caption = 'E.Id'#337
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'masodik_kezi'
        Title.Caption = 'M.k'#233'zi'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tavdatum'
        Title.Caption = 'M.D'#225'tum'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tavido'
        Title.Caption = 'M.Id'#337
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'felhasznalo'
        Title.Caption = 'Dolgoz'#243
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'merlegelo'
        Title.Caption = 'M'#233'rlegkezel'#337
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ekaer'
        Title.Caption = 'EK'#193'ER'
        Width = 22
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kuj'
        Title.Caption = 'K'#220'J'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ktj'
        Title.Caption = 'KTJ'
        Width = 5
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Storno'
        Width = 11
        Visible = True
      end>
  end
  object partnerlookup2: TJvDBLookupCombo
    Left = 440
    Top = 110
    Width = 417
    Height = 21
    DropDownWidth = 1024
    DisplayAllFields = True
    DisplayEmpty = '----Nincs kiv'#225'lasztva----'
    EmptyValue = '!'
    LookupField = 'ID'
    LookupDisplay = 'Nev;Kod;'
    LookupSource = Partnelist2Ds
    TabOrder = 3
    OnChange = cbxrendszChange
  end
  object mjegyekQ: TFDQuery
    Connection = AF.Kapcs
    Left = 640
    Top = 224
  end
  object mjegyekQDs: TDataSource
    DataSet = mjegyekQ
    Left = 736
    Top = 224
  end
  object termeklist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 272
    Top = 226
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 336
    Top = 226
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 448
    Top = 224
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 507
    Top = 224
  end
  object Partnelist2: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 448
    Top = 280
  end
  object Partnelist2Ds: TDataSource
    DataSet = Partnelist2
    Left = 507
    Top = 280
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
  object TarolokT: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok ORDER BY nev ASC')
    Left = 822
    Top = 41
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 880
    Top = 40
  end
end
