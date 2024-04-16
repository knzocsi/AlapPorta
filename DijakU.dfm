object DijakF: TDijakF
  Left = 0
  Top = 0
  Caption = 'Dijak'
  ClientHeight = 327
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 638
    object Label1: TLabel
      Left = 144
      Top = 8
      Width = 43
      Height = 13
      Caption = 'D'#237'j neve:'
    end
    object Label2: TLabel
      Left = 304
      Top = 8
      Width = 15
      Height = 13
      Caption = #193'r:'
    end
    object btnkilepes: TButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 23
      Width = 121
      Height = 21
      DataField = 'tulajdonsag'
      DataSource = AF.CfgTDs
      TabOrder = 1
    end
    object JvDBSpinEdit1: TJvDBSpinEdit
      Left = 304
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
      DataField = 'ertek'
      DataSource = AF.CfgTDs
    end
    object DBNavigator1: TDBNavigator
      Left = 160
      Top = 50
      Width = 222
      Height = 25
      DataSource = AF.CfgTDs
      VisibleButtons = [nbPost, nbCancel]
      TabOrder = 3
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 89
    Width = 462
    Height = 238
    Align = alClient
    DataSource = AF.CfgTDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
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
        FieldName = 'tulajdonsag'
        Title.Caption = 'D'#237'j neve'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ertek'
        Title.Caption = #193'r'
        Width = 80
        Visible = True
      end>
  end
end
