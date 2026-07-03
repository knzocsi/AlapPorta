object KartyakF: TKartyakF
  Left = 0
  Top = 0
  Caption = 'Cards'
  ClientHeight = 498
  ClientWidth = 912
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
    Width = 912
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnkilepes: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 400
    Width = 912
    Height = 98
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 44
      Height = 13
      Caption = 'No.:'
    end
    object Label2: TLabel
      Left = 112
      Top = 32
      Width = 60
      Height = 13
      Caption = 'Cardnumber:'
    end
    object Label3: TLabel
      Left = 264
      Top = 32
      Width = 23
      Height = 13
      Caption = 'Name:'
    end
    object Label4: TLabel
      Left = 591
      Top = 32
      Width = 23
      Height = 13
      Caption = 'Company:'
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 910
      Height = 25
      DataSource = kartyakDs
      Align = alTop
      TabOrder = 0
    end
    object DBEd_id: TDBEdit
      Left = 16
      Top = 51
      Width = 73
      Height = 21
      DataField = 'id'
      DataSource = kartyakDs
      ReadOnly = True
      TabOrder = 1
    end
    object DBEd_kartyaszam: TDBEdit
      Left = 112
      Top = 51
      Width = 121
      Height = 21
      DataField = 'kartyaszam'
      DataSource = kartyakDs
      TabOrder = 2
    end
    object DBEd_leiras: TDBEdit
      Left = 264
      Top = 51
      Width = 305
      Height = 21
      DataField = 'nev'
      DataSource = kartyakDs
      MaxLength = 150
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 591
      Top = 51
      Width = 305
      Height = 21
      DataField = 'ceg_nev'
      DataSource = kartyakDs
      MaxLength = 150
      TabOrder = 4
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 912
    Height = 359
    Align = alClient
    DataSource = kartyakDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'id'
        Title.Caption = 'No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kartyaszam'
        Title.Caption = 'Cardnumber'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'Name'
        Width = 295
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ceg_nev'
        Title.Caption = 'Company'
        Width = 200
        Visible = True
      end>
  end
  object kartyakDs: TDataSource
    DataSet = KartyakT
    Left = 24
    Top = 232
  end
  object KartyakT: TFDTable
    BeforePost = kartyakTBeforePost
    Connection = AF.Kapcs
    TableName = 'kartyak'
    Left = 24
    Top = 176
  end
end
