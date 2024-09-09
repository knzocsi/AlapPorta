object MermodlistF: TMermodlistF
  Left = 0
  Top = 0
  Hint = 'For sorting click to the title with left mouse'
  Caption = 'Weighning ticket antecedents'
  ClientHeight = 479
  ClientWidth = 936
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 936
    Height = 57
    Align = alTop
    TabOrder = 0
    object lblsorszam: TLabel
      Left = 822
      Top = 1
      Width = 113
      Height = 55
      Align = alRight
      Caption = 'lblsorszam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitHeight = 25
    end
    object btnkilepes: TButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
  end
  object mlistaGrid: TJvDBUltimGrid
    Left = 0
    Top = 57
    Width = 936
    Height = 422
    Hint = 'For sorting click to the title with right mouse'
    Align = alClient
    DataSource = mjegyekQDs
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
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
        FieldName = 'mod_idobelyeg'
        Title.Caption = 'Modified timestamp'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam'
        Title.Caption = 'Licence plate'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rendszam2'
        Title.Caption = 'License plate 2'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_kod'
        Title.Caption = 'P.code'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p_nev'
        Title.Caption = 'Partner name'
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
        Title.Caption = 'P.code 2'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'p2_nev'
        Title.Caption = 'Partner name 2'
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
        Title.Caption = 'Prod.code'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'Prod.name'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'szallitolev'
        Title.Caption = 'Bill of delivery'
        Width = 80
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
        Title.Caption = 'In'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomegki'
        Title.Caption = 'Out'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'brutto'
        Title.Caption = 'Gross'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tara'
        Title.Caption = 'Tara'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'netto'
        Title.Caption = 'Net'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sznetto'
        Title.Caption = 'Calc.net'
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'irany'
        Title.Caption = 'Direction'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elso_kezi'
        Title.Caption = '1.manual'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'erkdatum'
        Title.Caption = '1. date'
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'erkido'
        Title.Caption = '1. time'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'masodik_kezi'
        Title.Caption = '2. manual'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tavdatum'
        Title.Caption = '2. date'
        Width = 34
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tavido'
        Title.Caption = '2. time'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'felhasznalo'
        Title.Caption = 'User'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'merlegelo'
        Title.Caption = 'Scale operator'
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
  object mjegyekQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'Select * from modositott_merlegjegyek WHERE sorszam=:s;')
    Left = 640
    Top = 224
    ParamData = <
      item
        Name = 'S'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object mjegyekQDs: TDataSource
    DataSet = mjegyekQ
    Left = 736
    Top = 224
  end
end
