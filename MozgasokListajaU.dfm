object MozgasokListajaF: TMozgasokListajaF
  Left = 0
  Top = 0
  Caption = 'Mozg'#225'sok list'#225'ja'
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
      Caption = 'Sz'#369'r'#233's: '
    end
    object lblmire: TLabel
      Left = 712
      Top = 4
      Width = 56
      Height = 13
      Caption = 'K'#225'rtyasz'#225'm'
    end
    object Label1: TLabel
      Left = 551
      Top = 4
      Width = 30
      Height = 13
      Caption = 'Ir'#225'ny:'
    end
    object Label2: TLabel
      Left = 136
      Top = 4
      Width = 66
      Height = 13
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object Label3: TLabel
      Left = 247
      Top = 4
      Width = 50
      Height = 13
      Caption = 'Kezd'#337' id'#337':'
    end
    object Label4: TLabel
      Left = 337
      Top = 4
      Width = 79
      Height = 13
      Caption = 'Befejez'#337' d'#225'tum:'
    end
    object Label5: TLabel
      Left = 448
      Top = 4
      Width = 63
      Height = 13
      Caption = 'Befejez'#337' id'#337':'
    end
    object btnkilepes: TButton
      Left = 32
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object kd: TDateTimePicker
      Left = 136
      Top = 20
      Width = 105
      Height = 21
      Date = 46171.000000000000000000
      Time = 0.404061585650197200
      TabOrder = 1
      OnChange = kdChange
    end
    object kt: TDateTimePicker
      Left = 247
      Top = 20
      Width = 74
      Height = 21
      Date = 46171.000000000000000000
      Time = 0.404061585650197200
      Kind = dtkTime
      TabOrder = 2
      OnChange = ktChange
    end
    object bd: TDateTimePicker
      Left = 337
      Top = 20
      Width = 105
      Height = 21
      Date = 46171.000000000000000000
      Time = 0.404061585650197200
      TabOrder = 3
      OnChange = kdChange
    end
    object bt: TDateTimePicker
      Left = 448
      Top = 20
      Width = 74
      Height = 21
      Date = 46171.000000000000000000
      Time = 0.404061585650197200
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
      Text = '---Nincs sz'#369'rve---'
      OnChange = kdChange
      Items.Strings = (
        '---Nincs sz'#369'rve---'
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
        Title.Caption = 'K'#225'rtyasz'#225'm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'N'#233'v'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ceg_nev'
        Title.Caption = 'C'#233'g'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'irany_szov'
        Title.Caption = 'Ir'#225'ny'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idobelyeg'
        Title.Caption = 'Id'#337'pont'
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
