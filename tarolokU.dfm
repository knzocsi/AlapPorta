object TarolokF: TTarolokF
  Left = 0
  Top = 0
  Caption = 'T'#225'rol'#243'k'
  ClientHeight = 256
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 554
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 1
      Width = 34
      Height = 13
      Caption = 'T'#225'rol'#243':'
    end
    object btnkilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object dednev: TDBEdit
      Left = 128
      Top = 14
      Width = 121
      Height = 21
      DataField = 'nev'
      DataSource = TarolokDs
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 264
      Top = 10
      Width = 216
      Height = 25
      DataSource = TarolokDs
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 554
    Height = 207
    Align = alClient
    DataSource = TarolokDs
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'Sorsz.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'T'#225'rol'#243
        Visible = True
      end>
  end
  object TarolokT: TFDQuery
    BeforePost = TarolokTBeforePost
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * FROM tarolok')
    Left = 434
    Top = 57
    object TarolokTid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TarolokTnev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'nev'
      Origin = 'nev'
      Size = 50
    end
  end
  object TarolokDs: TDataSource
    DataSet = TarolokT
    Left = 432
    Top = 104
  end
end
