object tipusokF: TtipusokF
  Left = 0
  Top = 0
  Caption = 'Tipusok'
  ClientHeight = 256
  ClientWidth = 554
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 554
    Height = 256
    ActivePage = listatab
    Align = alClient
    TabOrder = 0
    object listatab: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 546
        Height = 228
        Align = alClient
        DataSource = tipusQDs
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
            FieldName = 'id'
            Title.Caption = 'Sorsz.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nev'
            Title.Caption = 'T'#237'pus'
            Visible = True
          end>
      end
    end
    object reszletektab: TTabSheet
      Caption = 'R'#233'szletek'
      ImageIndex = 1
      object DBNavigator1: TDBNavigator
        Left = 16
        Top = 16
        Width = 225
        Height = 25
        DataSource = tipusQDs
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object DBEdnev: TDBEdit
        Left = 16
        Top = 64
        Width = 273
        Height = 21
        DataField = 'nev'
        DataSource = tipusQDs
        TabOrder = 1
      end
    end
  end
  object tipusQ: TFDQuery
    BeforePost = tipusQBeforePost
    Connection = aF.Kapcs
    SQL.Strings = (
      'select * from tipus')
    Left = 316
    Top = 56
    object tipusQid: TAutoIncField
      FieldName = 'id'
    end
    object tipusQnev: TWideStringField
      FieldName = 'nev'
      Size = 50
    end
  end
  object tipusQDs: TDataSource
    DataSet = tipusQ
    Left = 340
    Top = 120
  end
end
