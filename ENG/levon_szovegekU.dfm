object levon_szovegekF: Tlevon_szovegekF
  Left = 0
  Top = 0
  Caption = 'Deduction texts'
  ClientHeight = 299
  ClientWidth = 609
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
    Width = 609
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -199
    ExplicitWidth = 862
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 609
    Height = 258
    ActivePage = tbReszlet
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -199
    ExplicitTop = -68
    ExplicitWidth = 862
    ExplicitHeight = 414
    object tbLista: TTabSheet
      Caption = 'List'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 601
        Height = 230
        Align = alClient
        DataSource = levon_szovegDs
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Szoveg'
            Title.Caption = 'Sz'#246'veg'
            Visible = True
          end>
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'Details'
      ImageIndex = 1
      object lbl1: TLabel
        Left = 5
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Text'
        FocusControl = deDLevon_szoveg
      end
      object DBNavigator1: TDBNavigator
        Left = 169
        Top = 3
        Width = 215
        Height = 25
        DataSource = levon_szovegDs
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object deDLevon_szoveg: TDBEdit
        Left = 5
        Top = 64
        Width = 564
        Height = 21
        DataField = 'Szoveg'
        DataSource = levon_szovegDs
        MaxLength = 100
        TabOrder = 1
      end
    end
  end
  object levon_szovegT: TFDTable
    AfterInsert = levon_szovegTAfterInsert
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'levonas_szovegek'
    Left = 224
    Top = 8
    object levon_szovegTID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
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
    Left = 304
    Top = 8
  end
end
