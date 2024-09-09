object szoftver_alapF: Tszoftver_alapF
  Left = 0
  Top = 0
  Caption = 'Szoftver alapbe'#225'll'#237't'#225'sai'
  ClientHeight = 502
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 710
    object Label1: TLabel
      Left = 320
      Top = 0
      Width = 42
      Height = 13
      Caption = 'Csoport:'
    end
    object Label2: TLabel
      Left = 480
      Top = 0
      Width = 62
      Height = 13
      Caption = 'Tulajdons'#225'g:'
    end
    object Button1: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 136
      Top = 8
      Width = 161
      Height = 25
      Caption = 'M'#243'dos'#237't'#225'sok alkalmaz'#225'sa'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 696
      Top = 10
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 2
      Visible = False
    end
    object Button4: TButton
      Left = 792
      Top = 10
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 888
      Top = 8
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 4
      Visible = False
    end
    object cbcsopszur: TJvDBLookupCombo
      Left = 320
      Top = 14
      Width = 145
      Height = 21
      DisplayEmpty = '--Nincs sz'#369'rve--'
      EmptyValue = '!'
      LookupField = 'csoport'
      LookupDisplay = 'csoport'
      LookupSource = csopQDs
      TabOrder = 5
      OnChange = cbcsopszurChange
    end
    object JvDBFindEdit1: TJvDBFindEdit
      Left = 480
      Top = 14
      Width = 121
      Height = 21
      TabOrder = 6
      Text = ''
      DataField = 'tulajdonsag'
      DataSource = AF.CfgTDs
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 41
    Width = 978
    Height = 461
    Align = alClient
    DataSource = AF.CfgTDs
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
        FieldName = 'id'
        Title.Caption = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'csoport'
        Title.Caption = 'Csoport'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tulajdonsag'
        Title.Caption = 'Tulajdons'#225'g'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipus'
        Title.Caption = 'T'#237'pus'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ertek'
        Title.Caption = #201'rt'#233'k'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'magyarazat'
        Title.Caption = 'Magyar'#225'zat'
        Width = 300
        Visible = True
      end>
  end
  object csopQ: TFDQuery
    Connection = AF.Kapcs
    Left = 296
    Top = 8
  end
  object csopQDs: TDataSource
    DataSet = csopQ
    Left = 304
    Top = 64
  end
end
