object KeszletF: TKeszletF
  Left = 0
  Top = 0
  Caption = 'K'#233'szlet'
  ClientHeight = 530
  ClientWidth = 1053
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
    Width = 1053
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 104
      Top = 9
      Width = 39
      Height = 13
      Caption = 'Term'#233'k:'
    end
    object Label5: TLabel
      Left = 328
      Top = 9
      Width = 40
      Height = 13
      Caption = 'Partner:'
    end
    object Label1: TLabel
      Left = 551
      Top = 9
      Width = 34
      Height = 13
      Caption = 'T'#225'rol'#243':'
    end
    object btnKilepes: TButton
      Left = 16
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object btnNyomtatas: TButton
      Left = 871
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Nyomtat'#225's'
      TabOrder = 1
      OnClick = btnNyomtatasClick
    end
    object termeklookup: TJvDBLookupCombo
      Left = 105
      Top = 23
      Width = 217
      Height = 21
      DropDownCount = 20
      DisplayAllFields = True
      DisplayEmpty = '----Nincs kiv'#225'lasztva----'
      EmptyValue = '!'
      LookupField = 'ID'
      LookupDisplay = 'Nev'
      LookupSource = termeklistDs
      TabOrder = 2
      OnChange = termeklookupChange
    end
    object partnerlookup: TJvDBLookupCombo
      Left = 328
      Top = 23
      Width = 217
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '----Nincs kiv'#225'lasztva----'
      EmptyValue = '!'
      LookupField = 'ID'
      LookupDisplay = 'nev'
      LookupSource = PartnelistDs
      TabOrder = 3
      OnChange = termeklookupChange
    end
    object tarololookup: TJvDBLookupCombo
      Left = 551
      Top = 23
      Width = 145
      Height = 21
      DisplayEmpty = '---Nincs kiv'#225'lasztva---'
      EmptyValue = '!'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = TarolokDs
      TabOrder = 4
      OnChange = termeklookupChange
    end
    object chktort: TCheckBox
      Left = 720
      Top = 23
      Width = 97
      Height = 17
      Caption = 'T'#246'rt szemek'
      TabOrder = 5
      OnClick = termeklookupChange
    end
    object chkpartnercsop: TCheckBox
      Left = 328
      Top = 50
      Width = 161
      Height = 17
      Caption = 'Partnerre csoportos'#237't'
      TabOrder = 6
      OnClick = termeklookupChange
    end
    object btnexport: TButton
      Left = 968
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 7
      OnClick = btnexportClick
    end
    object chknullas: TCheckBox
      Left = 511
      Top = 50
      Width = 185
      Height = 17
      Caption = 'Null'#225's '#233's negat'#237'v k'#233'szlet elrejt'#233'se'
      Checked = True
      State = cbChecked
      TabOrder = 8
      OnClick = termeklookupChange
    end
  end
  object keszletGrid: TJvDBUltimGrid
    Left = 0
    Top = 73
    Width = 1053
    Height = 416
    Align = alClient
    DataSource = AF.KeszletQDs
    ReadOnly = True
    TabOrder = 1
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
        FieldName = 'Tarolo_nev'
        Title.Caption = 'T'#225'rol'#243
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Term_kod'
        Title.Caption = 'Term.k'#243'd'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Term_nev'
        Title.Caption = 'Term.n'#233'v'
        Width = 268
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Partner_kod'
        Title.Caption = 'Part.k'#243'd'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Partner_nev'
        Title.Caption = 'Part.n'#233'v'
        Width = 216
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menny'
        Title.Caption = 'Mennyis'#233'g'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tort'
        Title.Caption = 'T'#246'rt szem'
        Width = 15
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Felhasznalo_nev'
        Title.Caption = 'Felhaszn'#225'l'#243
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'modositva'
        Title.Caption = 'M'#243'dos'#237'tva'
        Width = 60
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 489
    Width = 1053
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 344
    ExplicitTop = 480
    ExplicitWidth = 185
  end
  object TarolokT: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok ORDER BY nev ASC')
    Left = 590
    Top = 65529
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 640
  end
  object termeklist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 248
    Top = 16
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 296
    Top = 16
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 400
    Top = 24
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 411
    Top = 24
  end
end
