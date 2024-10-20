object LibreExcelF: TLibreExcelF
  Left = 0
  Top = 0
  Caption = 'Data export'
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
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 72
      Width = 73
      Height = 13
      Caption = 'Avaliable fields'
    end
    object kilepbtn: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = kilepbtnClick
    end
    object RadioGroup1: TRadioGroup
      Left = 104
      Top = 6
      Width = 193
      Height = 35
      Caption = 'Type'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Libre Calc'
        'Microsoft Excel ')
      TabOrder = 1
    end
    object Exportbtn: TButton
      Left = 448
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 2
      OnClick = ExportbtnClick
    end
    object chkftp: TCheckBox
      Left = 320
      Top = 20
      Width = 97
      Height = 17
      Caption = 'Upload to FTP'
      TabOrder = 3
    end
    object chkosszes: TCheckBox
      Left = 320
      Top = 66
      Width = 73
      Height = 17
      Caption = 'For all'
      TabOrder = 4
      OnClick = chkosszesClick
    end
    object btnbeall_ment: TButton
      Left = 448
      Top = 58
      Width = 129
      Height = 25
      Caption = 'Save this setup'
      TabOrder = 5
      OnClick = btnbeall_mentClick
    end
  end
  object leszgrid: TJvDBUltimGrid
    Left = 0
    Top = 89
    Width = 595
    Height = 392
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
        Title.Caption = 'Field Name'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kell'
        Title.Caption = 'Export?'
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
  object cfg_exportT: TFDTable
    Connection = AF.Kapcs
    TableName = 'cfg_export'
    Left = 440
    Top = 96
  end
  object cfg_export_mezokT: TFDTable
    Connection = AF.Kapcs
    TableName = 'cfg_export_mezok'
    Left = 440
    Top = 160
  end
  object TQ: TFDQuery
    Connection = AF.Kapcs
    Left = 432
    Top = 232
  end
end
