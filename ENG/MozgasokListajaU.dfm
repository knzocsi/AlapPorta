object MozgasokListajaF: TMozgasokListajaF
  Left = 0
  Top = 0
  Caption = 'List of movements'
  ClientHeight = 408
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object fpanel: TPanel
    Left = 0
    Top = 0
    Width = 1022
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label7: TLabel
      Left = 672
      Top = 4
      Width = 39
      Height = 13
      Caption = 'Filter: '
    end
    object lblmire: TLabel
      Left = 712
      Top = 4
      Width = 56
      Height = 13
      Caption = 'Cardnumber'
    end
    object Label1: TLabel
      Left = 551
      Top = 4
      Width = 30
      Height = 13
      Caption = 'Direction:'
    end
    object Label2: TLabel
      Left = 136
      Top = 4
      Width = 66
      Height = 13
      Caption = 'Date from:'
    end
    object Label3: TLabel
      Left = 247
      Top = 4
      Width = 50
      Height = 13
      Caption = 'Time from:'
    end
    object Label4: TLabel
      Left = 337
      Top = 4
      Width = 79
      Height = 13
      Caption = 'Date to:'
    end
    object Label5: TLabel
      Left = 448
      Top = 4
      Width = 63
      Height = 13
      Caption = 'Time to:'
    end
    object btnkilepes: TButton
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object kd: TDateTimePicker
      Left = 136
      Top = 20
      Width = 105
      Height = 21
      Date = 46171
      Time = 0.404061585650197000
      TabOrder = 1
      OnChange = kdChange
    end
    object kt: TDateTimePicker
      Left = 247
      Top = 20
      Width = 74
      Height = 21
      Date = 46171
      Time = 0.404061585650197000
      Kind = dtkTime
      TabOrder = 2
      OnChange = ktChange
    end
    object bd: TDateTimePicker
      Left = 337
      Top = 20
      Width = 105
      Height = 21
      Date = 46171
      Time = 0.404061585650197000
      TabOrder = 3
      OnChange = kdChange
    end
    object bt: TDateTimePicker
      Left = 448
      Top = 20
      Width = 74
      Height = 21
      Date = 46171
      Time = 0.404061585650197000
      Kind = dtkTime
      TabOrder = 4
      OnChange = btChange
    end
    object edszures: TEdit
      Left = 672
      Top = 20
      Width = 242
      Height = 21
      TabOrder = 5
      OnChange = kdChange
    end
    object cbirany: TComboBox
      Left = 552
      Top = 20
      Width = 105
      Height = 22
      Style = csOwnerDrawFixed
      ItemIndex = 0
      TabOrder = 6
      Text = '---Not filtered---'
      OnChange = kdChange
      Items.Strings = (
        '---Not filtered---'
        'BE'
        'KI')
    end
  end
  object listaGrid: TJvDBUltimGrid
    Left = 0
    Top = 57
    Width = 1022
    Height = 351
    Align = alClient
    DataSource = ListaQDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseUp = listaGridMouseUp
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'kartya_szam'
        Title.Caption = 'Card num.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'Name'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ceg_nev'
        Title.Caption = 'Company'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'irany_szov'
        Title.Caption = 'Direction'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idobelyeg'
        Title.Caption = 'Timestamp'
        Width = 120
        Visible = True
      end>
  end
  object ListaQ: TFDQuery
    Connection = AF.Kapcs
    Left = 360
    Top = 152
  end
  object ListaQDs: TDataSource
    DataSet = ListaQ
    Left = 360
    Top = 216
  end
end
