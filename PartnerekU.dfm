object PartnerekF: TPartnerekF
  Left = 0
  Top = 0
  Caption = 'Partnerek'
  ClientHeight = 337
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 770
    Height = 296
    ActivePage = tbLista
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 762
        Height = 268
        Align = alClient
        DataSource = PartnerDS
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'R'#233'szletek'
      ImageIndex = 1
      object lbl1: TLabel
        Left = 32
        Top = 16
        Width = 18
        Height = 13
        Caption = 'K'#243'd'
        FocusControl = dbedtKod
      end
      object lbl2: TLabel
        Left = 32
        Top = 64
        Width = 19
        Height = 13
        Caption = 'N'#233'v'
        FocusControl = dbedtNev
      end
      object lbl3: TLabel
        Left = 32
        Top = 112
        Width = 18
        Height = 13
        Caption = 'Irsz'
        FocusControl = dbedtIrsz
      end
      object lbl4: TLabel
        Left = 184
        Top = 109
        Width = 45
        Height = 13
        Caption = 'Telepules'
        FocusControl = dbedtTelepules
      end
      object lbl5: TLabel
        Left = 32
        Top = 160
        Width = 34
        Height = 13
        Caption = 'Ker'#252'let'
        FocusControl = dbedtKerulet
      end
      object lbl6: TLabel
        Left = 120
        Top = 160
        Width = 49
        Height = 13
        Caption = 'K'#246'zter'#252'let'
        FocusControl = dbedtKozterulet
      end
      object lbl7: TLabel
        Left = 272
        Top = 160
        Width = 77
        Height = 13
        Caption = 'K'#246'zter'#252'let jelleg'
        FocusControl = dbedtKozt_Jelleg
      end
      object lbl8: TLabel
        Left = 423
        Top = 162
        Width = 42
        Height = 13
        Caption = 'H'#225'zsz'#225'm'
        FocusControl = dbedtHazszam
      end
      object lbl9: TLabel
        Left = 573
        Top = 160
        Width = 50
        Height = 13
        Caption = 'L'#233'pcs'#337'h'#225'z'
        FocusControl = dbedtLepcsohaz
      end
      object lbl10: TLabel
        Left = 656
        Top = 160
        Width = 32
        Height = 13
        Caption = 'Emelet'
        FocusControl = dbedtEmelet
      end
      object lbl11: TLabel
        Left = 32
        Top = 205
        Width = 20
        Height = 13
        Caption = 'Ajt'#243
        FocusControl = dbedtAjto
      end
      object lbl12: TLabel
        Left = 119
        Top = 211
        Width = 43
        Height = 13
        Caption = 'Ad'#243'sz'#225'm'
        FocusControl = dbedtAdoszam
      end
      object Label1: TLabel
        Left = 359
        Top = 211
        Width = 22
        Height = 13
        Caption = 'K'#220'J:'
      end
      object Label2: TLabel
        Left = 511
        Top = 211
        Width = 21
        Height = 13
        Caption = 'KTJ:'
      end
      object Label3: TLabel
        Left = 504
        Top = 160
        Width = 34
        Height = 13
        Caption = #201'p'#252'let:'
      end
      object DBNavigator1: TDBNavigator
        Left = 409
        Top = 0
        Width = 215
        Height = 25
        DataSource = PartnerDS
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object dbedtKod: TDBEdit
        Left = 32
        Top = 35
        Width = 199
        Height = 21
        DataField = 'Kod'
        DataSource = PartnerDS
        TabOrder = 1
      end
      object dbedtNev: TDBEdit
        Left = 32
        Top = 83
        Width = 441
        Height = 21
        DataField = 'Nev'
        DataSource = PartnerDS
        TabOrder = 2
      end
      object dbedtIrsz: TDBEdit
        Left = 32
        Top = 128
        Width = 134
        Height = 21
        DataField = 'Irsz'
        DataSource = PartnerDS
        TabOrder = 3
      end
      object dbedtTelepules: TDBEdit
        Left = 184
        Top = 128
        Width = 394
        Height = 21
        DataField = 'Telepules'
        DataSource = PartnerDS
        TabOrder = 4
      end
      object dbedtKerulet: TDBEdit
        Left = 32
        Top = 176
        Width = 43
        Height = 21
        DataField = 'Kerulet'
        DataSource = PartnerDS
        TabOrder = 5
      end
      object dbedtKozterulet: TDBEdit
        Left = 120
        Top = 176
        Width = 129
        Height = 21
        DataField = 'Kozterulet'
        DataSource = PartnerDS
        TabOrder = 6
      end
      object dbedtKozt_Jelleg: TDBEdit
        Left = 272
        Top = 176
        Width = 134
        Height = 21
        DataField = 'Kozt_Jelleg'
        DataSource = PartnerDS
        TabOrder = 7
      end
      object dbedtHazszam: TDBEdit
        Left = 423
        Top = 176
        Width = 69
        Height = 21
        DataField = 'Hazszam'
        DataSource = PartnerDS
        TabOrder = 8
      end
      object dbedtLepcsohaz: TDBEdit
        Left = 573
        Top = 176
        Width = 69
        Height = 21
        DataField = 'Lepcsohaz'
        DataSource = PartnerDS
        TabOrder = 9
      end
      object dbedtEmelet: TDBEdit
        Left = 656
        Top = 176
        Width = 69
        Height = 21
        DataField = 'Emelet'
        DataSource = PartnerDS
        TabOrder = 10
      end
      object dbedtAjto: TDBEdit
        Left = 32
        Top = 224
        Width = 69
        Height = 21
        DataField = 'Ajto'
        DataSource = PartnerDS
        TabOrder = 11
      end
      object dbedtAdoszam: TDBEdit
        Left = 119
        Top = 227
        Width = 217
        Height = 21
        DataField = 'Adoszam'
        DataSource = PartnerDS
        TabOrder = 12
      end
      object DBEdtkuj: TDBEdit
        Left = 359
        Top = 224
        Width = 121
        Height = 21
        DataField = 'kuj'
        DataSource = PartnerDS
        MaxLength = 30
        TabOrder = 13
      end
      object DBEdtktj: TDBEdit
        Left = 510
        Top = 224
        Width = 121
        Height = 21
        DataField = 'ktj'
        DataSource = PartnerDS
        MaxLength = 30
        TabOrder = 14
      end
      object DBEdepulet: TDBEdit
        Left = 505
        Top = 176
        Width = 56
        Height = 21
        DataField = 'epulet'
        DataSource = PartnerDS
        TabOrder = 15
      end
    end
  end
  object PartnerT: TFDTable
    BeforeInsert = PartnerTBeforeInsert
    AfterInsert = PartnerTAfterInsert
    BeforeDelete = PartnerTBeforeDelete
    IndexFieldNames = 'ID'
    Connection = aF.Kapcs
    UpdateOptions.UpdateTableName = 'partner'
    TableName = 'partner'
    Left = 296
    Top = 72
  end
  object PartnerDS: TDataSource
    DataSet = PartnerT
    Left = 344
    Top = 72
  end
end
