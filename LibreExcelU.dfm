object LibreExcelF: TLibreExcelF
  Left = 0
  Top = 0
  Caption = 'Adatok export'#225'l'#225'sa'
  ClientHeight = 481
  ClientWidth = 595
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
    Width = 595
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 47
      Width = 73
      Height = 13
      Caption = 'El'#233'rhet'#337' mez'#243'k'
    end
    object kilepbtn: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = kilepbtnClick
    end
    object RadioGroup1: TRadioGroup
      Left = 104
      Top = 6
      Width = 193
      Height = 35
      Caption = 'T'#237'pus'
      Columns = 2
      Enabled = False
      ItemIndex = 0
      Items.Strings = (
        'Libre Calc'
        'Microsoft Excel ')
      TabOrder = 1
    end
    object Exportbtn: TButton
      Left = 408
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = ExportbtnClick
    end
  end
  object leszgrid: TJvDBUltimGrid
    Left = 0
    Top = 65
    Width = 595
    Height = 416
    Align = alClient
    DataSource = JvMlehetDs
    TabOrder = 1
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
        FieldName = 'caption'
        Title.Caption = 'Mez'#337' neve'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kell'
        Title.Caption = 'Kell?'
        Visible = True
      end>
  end
  object JvMlehet: TJvMemoryData
    FieldDefs = <>
    Left = 248
    Top = 16
    object JvMlehetindex: TIntegerField
      FieldName = 'index'
    end
    object JvMlehetcaption: TStringField
      FieldName = 'caption'
      Size = 50
    end
    object JvMlehetfieldname: TStringField
      FieldName = 'fieldname'
      Size = 50
    end
    object JvMlehetkell: TBooleanField
      FieldName = 'kell'
    end
  end
  object JvMlehetDs: TDataSource
    DataSet = JvMlehet
    Left = 240
    Top = 72
  end
  object SaveDialog: TSaveDialog
    Left = 519
    Top = 8
  end
end
