object ImportF: TImportF
  Left = 0
  Top = 0
  Caption = 'ImportF'
  ClientHeight = 468
  ClientWidth = 1073
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1073
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 256
      Top = 10
      Width = 30
      Height = 13
      Caption = 'T'#225'bla:'
    end
    object Label2: TLabel
      Left = 456
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Mez'#337':'
    end
    object lblFilename: TLabel
      Left = 144
      Top = 56
      Width = 52
      Height = 13
      Caption = 'lblFilename'
    end
    object Label3: TLabel
      Left = 616
      Top = 10
      Width = 36
      Height = 13
      Caption = 'Oszlop:'
    end
    object btnKilepes: TButton
      Left = 32
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object cbTabla: TComboBox
      Left = 264
      Top = 26
      Width = 161
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnChange = cbTablaChange
      Items.Strings = (
        'Termek'
        'Partner'
        'Keszlet')
    end
    object cbMezo: TComboBox
      Left = 456
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
    object btnBetoltes: TButton
      Left = 136
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Bet'#246'lt'#233's'
      TabOrder = 3
      OnClick = btnBetoltesClick
    end
    object btnOszlopbeallitasa: TButton
      Left = 784
      Top = 24
      Width = 137
      Height = 25
      Caption = 'Oszlop be'#225'll'#237't'#225'sa'
      TabOrder = 4
      OnClick = btnOszlopbeallitasaClick
    end
    object cbOszlop: TComboBox
      Left = 616
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 5
      OnChange = cbOszlopChange
    end
    object btnImport: TButton
      Left = 944
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Import'
      TabOrder = 6
      OnClick = btnImportClick
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 81
    Width = 1073
    Height = 387
    Align = alClient
    DataSource = ImportDS
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
  end
  object ImportT: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 600
    Top = 192
  end
  object TablaQ: TFDQuery
    Connection = Kapcs
    Left = 656
    Top = 192
  end
  object OpenDialog1: TOpenDialog
    Left = 816
    Top = 192
  end
  object ImportDS: TDataSource
    DataSet = ImportT
    Left = 600
    Top = 264
  end
  object Q1: TFDQuery
    Connection = Kapcs
    Left = 712
    Top = 192
  end
  object Kapcs: TFDConnection
    ConnectionName = 'Kapcs'
    Params.Strings = (
      'Server=127.0.0.1'
      'Password=MaTt2019'
      'DriverID=MySQL'
      'CharacterSet=utf8'
      'User_Name=knz'
      'Port=3307')
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    ResourceOptions.AssignedValues = [rvAutoConnect, rvSilentMode]
    ResourceOptions.SilentMode = True
    ResourceOptions.AutoConnect = False
    UpdateOptions.AssignedValues = [uvLockMode, uvLockWait]
    UpdateOptions.LockMode = lmOptimistic
    LoginPrompt = False
    Left = 528
    Top = 192
  end
end
