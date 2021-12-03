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
    object piKezdoDatum: TDateTimePicker
      Left = 152
      Top = 22
      Width = 113
      Height = 21
      Date = 43587.000000000000000000
      Time = 0.773554583327495600
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
      Left = 592
      Top = 19
      Width = 121
      Height = 25
      Caption = #218'jranyomtat'#225's'
      TabOrder = 3
      OnClick = btnUjranyomtatasClick
    end
    object btnListanyomtatas: TButton
      Left = 440
      Top = 21
      Width = 121
      Height = 25
      Caption = 'Lista nyomtat'#225's'
      TabOrder = 4
      OnClick = btnListanyomtatasClick
    end
    object Button3: TButton
      Left = 784
      Top = 19
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
      LookupDisplay = 'kod;Nev;'
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
      LookupDisplay = 
        'kod;Nev;Irsz;Telepules;kerulet;kozterulet;kozt_jelleg;hazszam;ku' +
        'j;ktj;'
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
      LookupSource = tulajDs
      TabOrder = 10
      OnChange = piKezdoDatumChange
    end
    object chkstorno: TCheckBox
      Left = 440
      Top = 110
      Width = 97
      Height = 17
      Caption = 'Storn'#243' is l'#225'tszik'
      TabOrder = 11
      OnClick = piKezdoDatumChange
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
      Left = 42
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
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 137
    Width = 1020
    Height = 369
    Align = alClient
    DataSource = mjegyekQDs
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AutoSizeColumns = True
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
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Storno'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam'
        Title.Caption = 'Rendsz'#225'm'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam2'
        Title.Caption = 'Rendsz'#225'm 2'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_kod'
        Title.Caption = 'P.K'#243'd'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_nev'
        Title.Caption = 'Partner n'#233'v'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_cim'
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
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'T_n'#233'v'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitolev'
        Title.Caption = 'Sz'#225'll'#237't'#243'lev'#233'l'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'megjegyzes'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'tomegbe'
        Title.Caption = 'Be'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomegki'
        Title.Caption = 'Ki'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brutto'
        Title.Caption = 'Brutt'#243
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tara'
        Title.Caption = 'T'#225'ra'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sznetto'
        Title.Caption = 'Sz.nett'#243
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'irany'
        Title.Caption = 'Ir'#225'ny'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elso_kezi'
        Title.Caption = 'E.k'#233'zi'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'erkdatum'
        Title.Caption = 'E.D'#225'tum'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'erkido'
        Title.Caption = 'E.Id'#337
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'masodik_kezi'
        Title.Caption = 'M.k'#233'zi'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tavdatum'
        Title.Caption = 'M.D'#225'tum'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tavido'
        Title.Caption = 'M.Id'#337
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'felhasznalo'
        Title.Caption = 'Dolgoz'#243
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'merlegelo'
        Title.Caption = 'M'#233'rlegkezel'#337
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ekaer'
        Title.Caption = 'EK'#193'ER'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kuj'
        Title.Caption = 'K'#220'J'
        Width = 19
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ktj'
        Title.Caption = 'KTJ'
        Width = 6
        Visible = True
      end>
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
    Left = 264
    Top = 224
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 328
    Top = 224
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 440
    Top = 224
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 499
    Top = 224
  end
  object tulajT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'tulajok'
    Left = 424
    Top = 96
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
  end
  object tulajDs: TDataSource
    DataSet = tulajT
    Left = 480
    Top = 104
  end
end
