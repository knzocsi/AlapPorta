object felrakcimekF: TfelrakcimekF
  Left = 0
  Top = 0
  Caption = 'Felrakod'#225'si c'#237'mek'
  ClientHeight = 266
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 40
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -137
    ExplicitWidth = 772
    object lbltulid: TLabel
      Left = 136
      Top = 16
      Width = 30
      Height = 13
      Caption = 'lbltulid'
      Visible = False
    end
    object btnkilepes: TButton
      Left = 9
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 40
    Width = 635
    Height = 226
    ActivePage = tsfelcimlist
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 627
    ExplicitHeight = 198
    object tsfelcimlist: TTabSheet
      Caption = 'Felrakod'#225'si c'#237'mek'
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 627
        Height = 198
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsfelrakreszlet: TTabSheet
      Caption = 'Felrakod'#225'si c'#237'm r'#233'szletesen'
      ImageIndex = 1
      object Label10: TLabel
        Left = 13
        Top = 39
        Width = 66
        Height = 13
        Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm:'
        FocusControl = DBEdit1
      end
      object Label11: TLabel
        Left = 165
        Top = 39
        Width = 49
        Height = 13
        Caption = 'Telep'#252'l'#233's:'
        FocusControl = DBEdit2
      end
      object Label12: TLabel
        Left = 13
        Top = 79
        Width = 80
        Height = 13
        Caption = 'K'#246'zter'#252'let neve:'
        FocusControl = DBEdit3
      end
      object Label13: TLabel
        Left = 165
        Top = 79
        Width = 87
        Height = 13
        Caption = 'K'#246'zter'#252'let jellege:'
        FocusControl = DBEdit4
      end
      object Label14: TLabel
        Left = 316
        Top = 79
        Width = 46
        Height = 13
        Caption = 'H'#225'zsz'#225'm:'
        FocusControl = DBEdit5
      end
      object Label15: TLabel
        Left = 397
        Top = 79
        Width = 34
        Height = 13
        Caption = #201'p'#252'let:'
      end
      object Label16: TLabel
        Left = 466
        Top = 79
        Width = 54
        Height = 13
        Caption = 'L'#233'pcs'#337'h'#225'z:'
        FocusControl = DBEdit7
      end
      object Label17: TLabel
        Left = 549
        Top = 79
        Width = 36
        Height = 13
        Caption = 'Emelet:'
        FocusControl = DBEdit8
      end
      object Label18: TLabel
        Left = 13
        Top = 119
        Width = 24
        Height = 13
        Caption = 'Ajt'#243':'
        FocusControl = DBEdit9
      end
      object Label19: TLabel
        Left = 101
        Top = 119
        Width = 72
        Height = 13
        Caption = 'Helyrajzi sz'#225'm:'
      end
      object Label20: TLabel
        Left = 253
        Top = 119
        Width = 32
        Height = 13
        Caption = 'E-mail:'
      end
      object Label21: TLabel
        Left = 389
        Top = 119
        Width = 40
        Height = 13
        Caption = 'Telefon:'
      end
      object DBEdit1: TDBEdit
        Left = 13
        Top = 52
        Width = 134
        Height = 21
        DataField = 'Irsz'
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 165
        Top = 52
        Width = 394
        Height = 21
        DataField = 'Telepules'
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 13
        Top = 92
        Width = 129
        Height = 21
        DataField = 'Kozterulet'
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 165
        Top = 92
        Width = 134
        Height = 21
        DataField = 'Kozt_Jelleg'
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 316
        Top = 92
        Width = 69
        Height = 21
        DataField = 'Hazszam'
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 398
        Top = 92
        Width = 56
        Height = 21
        DataField = 'epulet'
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 466
        Top = 92
        Width = 69
        Height = 21
        DataField = 'Lepcsohaz'
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 549
        Top = 92
        Width = 69
        Height = 21
        DataField = 'Emelet'
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 13
        Top = 132
        Width = 69
        Height = 21
        DataField = 'Ajto'
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 101
        Top = 133
        Width = 129
        Height = 21
        DataField = 'hrsz'
        TabOrder = 9
      end
      object DBEdit11: TDBEdit
        Left = 253
        Top = 132
        Width = 121
        Height = 21
        DataField = 'email'
        TabOrder = 10
      end
      object DBEdit12: TDBEdit
        Left = 389
        Top = 132
        Width = 121
        Height = 21
        DataField = 'telefon'
        TabOrder = 11
      end
      object DBNavigator2: TDBNavigator
        Left = 417
        Top = 8
        Width = 215
        Height = 25
        DataSource = FelcimekDs
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 12
      end
    end
  end
  object FelcimekT: TFDTable
    BeforePost = FelcimekTBeforePost
    Connection = AF.Kapcs
    TableName = 'felrakodasi_cimek'
    Left = 496
    Top = 8
  end
  object FelcimekDs: TDataSource
    DataSet = FelcimekT
    Left = 560
    Top = 16
  end
end
