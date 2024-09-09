object dijszabF: TdijszabF
  Left = 0
  Top = 0
  Caption = 'Fee categories'
  ClientHeight = 412
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnkilep: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepClick
    end
    object btndijsza_termek: TButton
      Left = 448
      Top = 8
      Width = 233
      Height = 25
      Caption = 'Product fees in selected category'
      TabOrder = 1
      OnClick = btndijsza_termekClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 336
    Width = 699
    Height = 76
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 54
      Height = 13
      Caption = 'Category:'
    end
    object Label2: TLabel
      Left = 144
      Top = 32
      Width = 55
      Height = 13
      Caption = 'Storage fee:'
    end
    object Label3: TLabel
      Left = 233
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Storage in fee:'
    end
    object Label4: TLabel
      Left = 328
      Top = 32
      Width = 61
      Height = 13
      Caption = 'Storage out fee:'
    end
    object Label5: TLabel
      Left = 424
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Drying fee:'
    end
    object Label6: TLabel
      Left = 513
      Top = 32
      Width = 59
      Height = 13
      Caption = 'Cleaning fee:'
    end
    object Label7: TLabel
      Left = 608
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Delivery fee:'
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 697
      Height = 25
      DataSource = dijkatDs
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alTop
      TabOrder = 0
    end
    object DBEnev: TDBEdit
      Left = 16
      Top = 46
      Width = 121
      Height = 21
      DataField = 'nev'
      DataSource = dijkatDs
      MaxLength = 20
      TabOrder = 1
    end
    object DBEtarolasi: TDBEdit
      Left = 143
      Top = 46
      Width = 80
      Height = 21
      DataField = 'tarolasi'
      DataSource = dijkatDs
      TabOrder = 2
    end
    object DBEbetarolasi: TDBEdit
      Left = 233
      Top = 46
      Width = 80
      Height = 21
      DataField = 'betarolasi'
      DataSource = dijkatDs
      TabOrder = 3
    end
    object DBEkitarolasi: TDBEdit
      Left = 328
      Top = 46
      Width = 80
      Height = 21
      DataField = 'kitarolasi'
      DataSource = dijkatDs
      TabOrder = 4
    end
    object DBEszaritasi: TDBEdit
      Left = 423
      Top = 46
      Width = 80
      Height = 21
      DataField = 'szaritasi'
      DataSource = dijkatDs
      TabOrder = 5
    end
    object DBEtisztitasi: TDBEdit
      Left = 513
      Top = 46
      Width = 80
      Height = 21
      DataField = 'tisztitasi'
      DataSource = dijkatDs
      TabOrder = 6
    end
    object DBEszallitasi: TDBEdit
      Left = 608
      Top = 46
      Width = 80
      Height = 21
      DataField = 'szallitasi'
      DataSource = dijkatDs
      TabOrder = 7
    end
  end
  object dijakgrid: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 699
    Height = 295
    Align = alClient
    DataSource = dijkatDs
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
        Title.Caption = 'ID'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'Category'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tarolasi'
        Title.Caption = 'Storage fee'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'betarolasi'
        Title.Caption = 'Storage in fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kitarolasi'
        Title.Caption = 'Storage out fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szaritasi'
        Title.Caption = 'Drying fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tisztitasi'
        Title.Caption = 'Clearing fee'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitasi'
        Title.Caption = 'Delivery fee'
        Width = 70
        Visible = True
      end>
  end
  object dijkatT: TFDTable
    BeforePost = dijkatTBeforePost
    Connection = AF.Kapcs
    TableName = 'dijaszab_kategoriak'
    Left = 160
    Top = 16
  end
  object dijkatDs: TDataSource
    DataSet = dijkatT
    Left = 208
    Top = 16
  end
end
