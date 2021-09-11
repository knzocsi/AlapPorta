object TulajokF: TTulajokF
  Left = 0
  Top = 0
  Caption = 'Tulajdonosok'
  ClientHeight = 274
  ClientWidth = 772
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 772
    Height = 40
    Align = alTop
    TabOrder = 0
    object btnkilepes: TButton
      Left = 9
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object Button1: TButton
      Left = 288
      Top = 8
      Width = 193
      Height = 25
      Caption = 'Be'#237'r'#225's az el'#337'z'#337' m'#233'rlegjegyekhez'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 40
    Width = 772
    Height = 234
    ActivePage = tbLista
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 764
        Height = 206
        Align = alClient
        DataSource = tulajDs
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Elotag'
            Title.Caption = 'El'#337'tag'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nev'
            Title.Caption = 'N'#233'v'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cim'
            Title.Caption = 'C'#237'm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Adoszam'
            Title.Caption = 'Ad'#243'sz'#225'm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kuj'
            Title.Caption = 'K'#220'J'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ktj'
            Title.Caption = 'KTJ'
            Visible = True
          end>
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'R'#233'szletek'
      ImageIndex = 1
      object lbl1: TLabel
        Left = 5
        Top = 48
        Width = 15
        Height = 13
        Caption = 'ID:'
        FocusControl = dedID
      end
      object lbl2: TLabel
        Left = 76
        Top = 48
        Width = 23
        Height = 13
        Caption = 'N'#233'v:'
        FocusControl = dedNev
      end
      object Label1: TLabel
        Left = 5
        Top = 97
        Width = 21
        Height = 13
        Caption = 'C'#237'm:'
      end
      object Label2: TLabel
        Left = 3
        Top = 148
        Width = 47
        Height = 13
        Caption = 'Ad'#243'sz'#225'm:'
      end
      object Label3: TLabel
        Left = 128
        Top = 148
        Width = 22
        Height = 13
        Caption = 'K'#220'J:'
      end
      object Label4: TLabel
        Left = 259
        Top = 148
        Width = 21
        Height = 13
        Caption = 'KTJ:'
      end
      object Label5: TLabel
        Left = 387
        Top = 148
        Width = 34
        Height = 13
        Caption = 'El'#337'tag:'
      end
      object DBNavigator1: TDBNavigator
        Left = 409
        Top = 0
        Width = 215
        Height = 25
        DataSource = tulajDs
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object dedID: TDBEdit
        Left = 5
        Top = 64
        Width = 52
        Height = 21
        DataField = 'ID'
        DataSource = tulajDs
        ReadOnly = True
        TabOrder = 1
      end
      object dedNev: TDBEdit
        Left = 76
        Top = 64
        Width = 643
        Height = 21
        DataField = 'Nev'
        DataSource = tulajDs
        TabOrder = 2
      end
      object dedcim: TDBEdit
        Left = 5
        Top = 112
        Width = 714
        Height = 21
        DataField = 'Cim'
        DataSource = tulajDs
        TabOrder = 3
      end
      object dedadoszam: TDBEdit
        Left = 3
        Top = 164
        Width = 102
        Height = 21
        DataField = 'Adoszam'
        DataSource = tulajDs
        TabOrder = 4
      end
      object dedkuj: TDBEdit
        Left = 127
        Top = 164
        Width = 102
        Height = 21
        DataField = 'kuj'
        DataSource = tulajDs
        TabOrder = 5
      end
      object dedktj: TDBEdit
        Left = 259
        Top = 164
        Width = 102
        Height = 21
        DataField = 'ktj'
        DataSource = tulajDs
        TabOrder = 6
      end
      object dedelotag: TDBEdit
        Left = 387
        Top = 164
        Width = 102
        Height = 21
        DataField = 'Elotag'
        DataSource = tulajDs
        TabOrder = 7
      end
    end
  end
  object tulajT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    TableName = 'tulajok'
    Left = 168
    Top = 16
    object tulajTID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tulajTNev: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nev'
      Origin = 'Nev'
      Size = 80
    end
    object tulajTCim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cim'
      Origin = 'Cim'
      Size = 200
    end
    object tulajTAdoszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Adoszam'
      Origin = 'Adoszam'
    end
    object tulajTkuj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kuj'
      Origin = 'kuj'
    end
    object tulajTktj: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ktj'
      Origin = 'ktj'
    end
    object tulajTElotag: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Elotag'
      Origin = 'Elotag'
      Size = 2
    end
  end
  object tulajDs: TDataSource
    DataSet = tulajT
    Left = 224
    Top = 24
  end
end
