object Rak_szallF: TRak_szallF
  Left = 0
  Top = 0
  Caption = 'Inter-warehouse delivery note'
  ClientHeight = 443
  ClientWidth = 813
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
    Width = 813
    Height = 66
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 312
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Copies:'
      Visible = False
    end
    object Label2: TLabel
      Left = 400
      Top = 16
      Width = 35
      Height = 13
      Caption = 'Date'
    end
    object btnkilepes: TButton
      Left = 16
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object btnmentes: TButton
      Left = 112
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 1
      OnClick = btnmentesClick
    end
    object btnnyomtatas: TButton
      Left = 208
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Print'
      TabOrder = 2
      OnClick = btnnyomtatasClick
    end
    object sppsz: TJvSpinEdit
      Left = 312
      Top = 32
      Width = 68
      Height = 21
      TabOrder = 3
      Visible = False
    end
    object Datuma: TDateTimePicker
      Left = 400
      Top = 32
      Width = 113
      Height = 21
      Date = 44400
      Time = 0.345127754626446000
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 813
    Height = 151
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 20
      Top = 8
      Width = 69
      Height = 13
      Caption = 'Sender partner:'
    end
    object Label4: TLabel
      Left = 519
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Sender storage:'
    end
    object Label5: TLabel
      Left = 20
      Top = 54
      Width = 79
      Height = 13
      Caption = 'Receiver partner:'
    end
    object Label6: TLabel
      Left = 519
      Top = 54
      Width = 71
      Height = 13
      Caption = 'Receiver storage:'
    end
    object Label7: TLabel
      Left = 670
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Sender stock:'
    end
    object Label8: TLabel
      Left = 670
      Top = 56
      Width = 82
      Height = 13
      Caption = 'Receiver stock:'
    end
    object Label9: TLabel
      Left = 519
      Top = 102
      Width = 55
      Height = 13
      Caption = 'Quantity:'
    end
    object Label10: TLabel
      Left = 20
      Top = 104
      Width = 39
      Height = 13
      Caption = 'Product:'
    end
    object k_partnerlookup: TJvDBLookupCombo
      Left = 20
      Top = 27
      Width = 493
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'combo'
      LookupSource = k_partnerQDs
      TabOrder = 0
      OnChange = k_partnerlookupChange
    end
    object k_tarololookup: TJvDBLookupCombo
      Left = 519
      Top = 27
      Width = 145
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = k_taroloQDs
      TabOrder = 1
      OnChange = k_partnerlookupChange
    end
    object f_partnerlookup: TJvDBLookupCombo
      Left = 20
      Top = 73
      Width = 491
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'combo'
      LookupSource = f_partnerQDs
      TabOrder = 2
      OnChange = k_partnerlookupChange
    end
    object f_tarololookup: TJvDBLookupCombo
      Left = 519
      Top = 73
      Width = 145
      Height = 21
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = f_taroloQDs
      TabOrder = 3
      OnChange = k_partnerlookupChange
    end
    object termeklookup: TJvDBLookupCombo
      Left = 20
      Top = 120
      Width = 405
      Height = 21
      DisplayAllFields = True
      DisplayEmpty = '---Not selected---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'kod;nev;'
      LookupSource = TermekekQDs
      TabOrder = 4
      OnChange = k_partnerlookupChange
    end
    object chktort: TCheckBox
      Left = 439
      Top = 121
      Width = 74
      Height = 17
      Caption = 'Broken seed'
      TabOrder = 5
      OnClick = k_partnerlookupChange
    end
    object sp_k_keszlet: TJvSpinEdit
      Left = 670
      Top = 27
      Width = 121
      Height = 21
      TabStop = False
      ValueType = vtFloat
      ReadOnly = True
      TabOrder = 8
    end
    object sp_f_keszlet: TJvSpinEdit
      Left = 670
      Top = 75
      Width = 121
      Height = 21
      TabStop = False
      ValueType = vtFloat
      ReadOnly = True
      TabOrder = 9
    end
    object btnfelvesz: TButton
      Left = 670
      Top = 116
      Width = 121
      Height = 25
      Caption = 'Insert'
      TabOrder = 7
      OnClick = btnfelveszClick
    end
    object spmenny: TJvSpinEdit
      Left = 519
      Top = 118
      Width = 121
      Height = 21
      CheckOptions = [coCheckOnExit]
      ValueType = vtFloat
      TabOrder = 6
      OnKeyPress = spmennyKeyPress
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 217
    Width = 813
    Height = 185
    Align = alClient
    DataSource = AF.rktetmDs
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
        FieldName = 'termek_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'termek_kod'
        Title.Caption = 'Product code'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'termek_nev'
        Title.Caption = 'Product name'
        Width = 476
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menny'
        Title.Caption = 'Quantity'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tort'
        Title.Caption = 'Broken seed'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 402
    Width = 813
    Height = 41
    Align = alBottom
    TabOrder = 3
    object Button2: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Delete item'
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object k_partnerQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from partner_combo order by nev ASC')
    Left = 72
    Top = 74
  end
  object f_partnerQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from partner_combo order by nev ASC')
    Left = 64
    Top = 130
  end
  object k_partnerQDs: TDataSource
    DataSet = k_partnerQ
    Left = 136
    Top = 74
  end
  object f_partnerQDs: TDataSource
    DataSet = f_partnerQ
    Left = 128
    Top = 130
  end
  object k_taroloQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from tarolok order by nev ASC')
    Left = 528
    Top = 90
  end
  object f_taroloQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from tarolok order by nev ASC')
    Left = 528
    Top = 130
  end
  object f_taroloQDs: TDataSource
    DataSet = f_taroloQ
    Left = 600
    Top = 90
  end
  object k_taroloQDs: TDataSource
    DataSet = k_taroloQ
    Left = 600
    Top = 138
  end
  object TermekekQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select id,kod,nev from termek order by nev ASC')
    Left = 192
    Top = 178
  end
  object TermekekQDs: TDataSource
    DataSet = TermekekQ
    Left = 248
    Top = 178
  end
end
