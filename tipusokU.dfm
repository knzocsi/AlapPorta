object TipusokF: TTipusokF
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
        DataSource = AF.tipusQDs
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
        DataSource = AF.tipusQDs
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object DBEdnev: TDBEdit
        Left = 16
        Top = 64
        Width = 273
        Height = 21
        DataField = 'nev'
        DataSource = AF.tipusQDs
        TabOrder = 1
      end
    end
  end
end
