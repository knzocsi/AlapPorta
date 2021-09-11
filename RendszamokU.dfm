object RendszamokF: TRendszamokF
  Left = 0
  Top = 0
  Caption = 'Rendsz'#225'mok-T'#225'r'#225'k'
  ClientHeight = 331
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
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
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 746
    Height = 290
    ActivePage = tbReszlet
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'Lista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 654
      ExplicitHeight = 0
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 738
        Height = 262
        Align = alClient
        DataSource = RendszamDS
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
            FieldName = 'rendszam'
            Title.Caption = 'Rendsz'#225'm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tara'
            Title.Caption = 'T'#225'ra'
            Visible = True
          end>
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'R'#233'szletek'
      ImageIndex = 1
      OnHide = tbReszletHide
      OnShow = tbReszletShow
      object lbl1: TLabel
        Left = 56
        Top = 72
        Width = 49
        Height = 13
        Caption = 'Rendsz'#225'm'
        FocusControl = dedRendszam
      end
      object Label5: TLabel
        Left = 56
        Top = 26
        Width = 40
        Height = 13
        Caption = 'Partner:'
        Visible = False
      end
      object Label1: TLabel
        Left = 344
        Top = 72
        Width = 26
        Height = 13
        Caption = 'T'#225'ra:'
      end
      object DBNavigator1: TDBNavigator
        Left = 409
        Top = 0
        Width = 215
        Height = 25
        DataSource = RendszamDS
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object dedRendszam: TDBEdit
        Left = 56
        Top = 88
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Rendszam'
        DataSource = RendszamDS
        TabOrder = 1
      end
      object dbspeTara: TJvDBSpinEdit
        Left = 344
        Top = 88
        Width = 121
        Height = 21
        Decimal = 0
        TabOrder = 2
        DataField = 'tara'
        DataSource = RendszamDS
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 56
        Top = 45
        Width = 409
        Height = 21
        DataField = 'id'
        DataSource = PartnelistDs
        KeyField = 'id'
        ListField = 'nev'
        ListSource = PartnelistDs
        TabOrder = 3
        Visible = False
      end
    end
  end
  object btnMeres: TButton
    Left = 480
    Top = 152
    Width = 75
    Height = 25
    Caption = 'M'#233'r'#233's'
    TabOrder = 2
    OnClick = btnMeresClick
  end
  object RendszamT: TFDTable
    IndexFieldNames = 'ID'
    Connection = aF.Kapcs
    UpdateOptions.UpdateTableName = 'rendszam'
    TableName = 'rendszam'
    Left = 272
    Top = 72
  end
  object RendszamDS: TDataSource
    DataSet = RendszamT
    Left = 344
    Top = 72
  end
  object Partnelist: TFDQuery
    Connection = aF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 570
    Top = 183
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 530
    Top = 199
  end
end
