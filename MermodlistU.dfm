object MermodlistF: TMermodlistF
  Left = 0
  Top = 0
  Hint = 'Sorbarendez'#233'shez kattintson bal eg'#233'rf'#252'llel az oszlop fejl'#233'c'#233're'
  Caption = 'M'#233'rlegjegy el'#337'zm'#233'nyei'
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
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
  end
  object mlistaGrid: TJvDBUltimGrid
    Left = 0
    Top = 57
    Width = 936
    Height = 422
    Hint = 'Sorbarendez'#233'shez kattintson jobb eg'#233'rf'#252'llel az oszlop fejl'#233'c'#233're'
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
        Title.Caption = 'M'#243'dos'#237't'#225's id'#337'pontja'
        Width = 120
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
        Visible = False
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
