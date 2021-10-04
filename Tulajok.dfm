object TulajokF: TTulajokF
  Left = 0
  Top = 0
  Caption = 'Tulajdonosok'
  ClientHeight = 387
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
    Height = 347
    ActivePage = tbLista
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 764
        Height = 319
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
        Top = 267
        Width = 60
        Height = 13
        Caption = 'C'#237'm egyben:'
      end
      object Label2: TLabel
        Left = 248
        Top = 172
        Width = 47
        Height = 13
        Caption = 'Ad'#243'sz'#225'm:'
      end
      object Label3: TLabel
        Left = 373
        Top = 172
        Width = 22
        Height = 13
        Caption = 'K'#220'J:'
      end
      object Label4: TLabel
        Left = 504
        Top = 172
        Width = 21
        Height = 13
        Caption = 'KTJ:'
      end
      object Label5: TLabel
        Left = 632
        Top = 172
        Width = 34
        Height = 13
        Caption = 'El'#337'tag:'
      end
      object lbl3: TLabel
        Left = 5
        Top = 95
        Width = 66
        Height = 13
        Caption = 'Ir'#225'ny'#237't'#243'sz'#225'm:'
        FocusControl = dbedtIrsz
      end
      object lbl4: TLabel
        Left = 157
        Top = 95
        Width = 49
        Height = 13
        Caption = 'Telep'#252'l'#233's:'
        FocusControl = dbedtTelepules
      end
      object lbl6: TLabel
        Left = 5
        Top = 135
        Width = 80
        Height = 13
        Caption = 'K'#246'zter'#252'let neve:'
        FocusControl = dbedtKozterulet
      end
      object lbl7: TLabel
        Left = 157
        Top = 135
        Width = 87
        Height = 13
        Caption = 'K'#246'zter'#252'let jellege:'
        FocusControl = dbedtKozt_Jelleg
      end
      object lbl8: TLabel
        Left = 308
        Top = 135
        Width = 46
        Height = 13
        Caption = 'H'#225'zsz'#225'm:'
        FocusControl = dbedtHazszam
      end
      object Label6: TLabel
        Left = 389
        Top = 135
        Width = 34
        Height = 13
        Caption = #201'p'#252'let:'
      end
      object lbl9: TLabel
        Left = 458
        Top = 135
        Width = 54
        Height = 13
        Caption = 'L'#233'pcs'#337'h'#225'z:'
        FocusControl = dbedtLepcsohaz
      end
      object lbl10: TLabel
        Left = 541
        Top = 135
        Width = 36
        Height = 13
        Caption = 'Emelet:'
        FocusControl = dbedtEmelet
      end
      object lbl11: TLabel
        Left = 5
        Top = 175
        Width = 24
        Height = 13
        Caption = 'Ajt'#243':'
        FocusControl = dbedtAjto
      end
      object Label7: TLabel
        Left = 93
        Top = 175
        Width = 72
        Height = 13
        Caption = 'Helyrajzi sz'#225'm:'
      end
      object Label8: TLabel
        Left = 5
        Top = 219
        Width = 32
        Height = 13
        Caption = 'E-mail:'
      end
      object Label9: TLabel
        Left = 141
        Top = 219
        Width = 40
        Height = 13
        Caption = 'Telefon:'
      end
      object Label22: TLabel
        Left = 284
        Top = 219
        Width = 87
        Height = 13
        Caption = 'C'#233'gjegyz'#233'k sz'#225'm:'
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
        Left = 3
        Top = 286
        Width = 731
        Height = 21
        DataField = 'Cim'
        DataSource = tulajDs
        TabOrder = 3
      end
      object dedadoszam: TDBEdit
        Left = 248
        Top = 188
        Width = 102
        Height = 21
        DataField = 'Adoszam'
        DataSource = tulajDs
        TabOrder = 4
      end
      object dedkuj: TDBEdit
        Left = 372
        Top = 188
        Width = 102
        Height = 21
        DataField = 'kuj'
        DataSource = tulajDs
        TabOrder = 5
      end
      object dedktj: TDBEdit
        Left = 504
        Top = 188
        Width = 102
        Height = 21
        DataField = 'ktj'
        DataSource = tulajDs
        TabOrder = 6
      end
      object dedelotag: TDBEdit
        Left = 632
        Top = 188
        Width = 102
        Height = 21
        DataField = 'Elotag'
        DataSource = tulajDs
        TabOrder = 7
      end
      object dbedtIrsz: TDBEdit
        Left = 5
        Top = 108
        Width = 134
        Height = 21
        DataField = 'Irsz'
        DataSource = tulajDs
        TabOrder = 8
      end
      object dbedtTelepules: TDBEdit
        Left = 157
        Top = 108
        Width = 394
        Height = 21
        DataField = 'Telepules'
        DataSource = tulajDs
        TabOrder = 9
      end
      object dbedtKozterulet: TDBEdit
        Left = 5
        Top = 148
        Width = 129
        Height = 21
        DataField = 'Kozterulet'
        DataSource = tulajDs
        TabOrder = 10
      end
      object dbedtKozt_Jelleg: TDBEdit
        Left = 157
        Top = 148
        Width = 134
        Height = 21
        DataField = 'Kozt_Jelleg'
        DataSource = tulajDs
        TabOrder = 11
      end
      object dbedtHazszam: TDBEdit
        Left = 308
        Top = 148
        Width = 69
        Height = 21
        DataField = 'Hazszam'
        DataSource = tulajDs
        TabOrder = 12
      end
      object DBEdepulet: TDBEdit
        Left = 390
        Top = 148
        Width = 56
        Height = 21
        DataField = 'epulet'
        DataSource = tulajDs
        TabOrder = 13
      end
      object dbedtLepcsohaz: TDBEdit
        Left = 458
        Top = 148
        Width = 69
        Height = 21
        DataField = 'Lepcsohaz'
        DataSource = tulajDs
        TabOrder = 14
      end
      object dbedtEmelet: TDBEdit
        Left = 541
        Top = 148
        Width = 69
        Height = 21
        DataField = 'Emelet'
        DataSource = tulajDs
        TabOrder = 15
      end
      object dbedtAjto: TDBEdit
        Left = 5
        Top = 188
        Width = 69
        Height = 21
        DataField = 'Ajto'
        DataSource = tulajDs
        TabOrder = 16
      end
      object dbedthrsz: TDBEdit
        Left = 93
        Top = 189
        Width = 129
        Height = 21
        DataField = 'hrsz'
        DataSource = tulajDs
        TabOrder = 17
      end
      object dbedtemail: TDBEdit
        Left = 5
        Top = 232
        Width = 121
        Height = 21
        DataField = 'email'
        DataSource = tulajDs
        TabOrder = 18
      end
      object dbedttelefon: TDBEdit
        Left = 141
        Top = 232
        Width = 121
        Height = 21
        DataField = 'telefon'
        DataSource = tulajDs
        TabOrder = 19
      end
      object dbedcjsz: TDBEdit
        Left = 284
        Top = 232
        Width = 121
        Height = 21
        DataField = 'cjsz'
        DataSource = tulajDs
        TabOrder = 20
      end
    end
    object pcFelrakcim: TTabSheet
      Caption = 'Felrakod'#225'si c'#237'mek'
      ImageIndex = 2
      OnShow = pcFelrakcimShow
      object PageControl1: TPageControl
        Left = 0
        Top = 0
        Width = 764
        Height = 319
        ActivePage = tsfelcimlist
        Align = alClient
        TabOrder = 0
        object tsfelcimlist: TTabSheet
          Caption = 'Felrakod'#225'si c'#237'mek'
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 756
            Height = 291
            Align = alClient
            DataSource = FelcimekDs
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
            DataSource = FelcimekDs
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 165
            Top = 52
            Width = 394
            Height = 21
            DataField = 'Telepules'
            DataSource = FelcimekDs
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 13
            Top = 92
            Width = 129
            Height = 21
            DataField = 'Kozterulet'
            DataSource = FelcimekDs
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 165
            Top = 92
            Width = 134
            Height = 21
            DataField = 'Kozt_Jelleg'
            DataSource = FelcimekDs
            TabOrder = 3
          end
          object DBEdit5: TDBEdit
            Left = 316
            Top = 92
            Width = 69
            Height = 21
            DataField = 'Hazszam'
            DataSource = FelcimekDs
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 398
            Top = 92
            Width = 56
            Height = 21
            DataField = 'epulet'
            DataSource = FelcimekDs
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 466
            Top = 92
            Width = 69
            Height = 21
            DataField = 'Lepcsohaz'
            DataSource = FelcimekDs
            TabOrder = 6
          end
          object DBEdit8: TDBEdit
            Left = 549
            Top = 92
            Width = 69
            Height = 21
            DataField = 'Emelet'
            DataSource = FelcimekDs
            TabOrder = 7
          end
          object DBEdit9: TDBEdit
            Left = 13
            Top = 132
            Width = 69
            Height = 21
            DataField = 'Ajto'
            DataSource = FelcimekDs
            TabOrder = 8
          end
          object DBEdit10: TDBEdit
            Left = 101
            Top = 133
            Width = 129
            Height = 21
            DataField = 'hrsz'
            DataSource = FelcimekDs
            TabOrder = 9
          end
          object DBEdit11: TDBEdit
            Left = 253
            Top = 132
            Width = 121
            Height = 21
            DataField = 'email'
            DataSource = FelcimekDs
            TabOrder = 10
          end
          object DBEdit12: TDBEdit
            Left = 389
            Top = 132
            Width = 121
            Height = 21
            DataField = 'telefon'
            DataSource = FelcimekDs
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
    object tulajTIrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Irsz'
      Origin = 'Irsz'
      Size = 10
    end
    object tulajTTelepules: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telepules'
      Origin = 'Telepules'
      Size = 30
    end
    object tulajTKerulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kerulet'
      Origin = 'Kerulet'
      Size = 5
    end
    object tulajTKozterulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kozterulet'
      Origin = 'Kozterulet'
      Size = 30
    end
    object tulajTKozt_Jelleg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Kozt_Jelleg'
      Origin = 'Kozt_Jelleg'
      Size = 10
    end
    object tulajTHazszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Hazszam'
      Origin = 'Hazszam'
      Size = 5
    end
    object tulajTEpulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Epulet'
      Origin = 'Epulet'
      Size = 5
    end
    object tulajTLepcsohaz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Lepcsohaz'
      Origin = 'Lepcsohaz'
      Size = 5
    end
    object tulajTEmelet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Emelet'
      Origin = 'Emelet'
      Size = 5
    end
    object tulajTHrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Hrsz'
      Origin = 'Hrsz'
    end
    object tulajTEmail: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Email'
      Origin = 'Email'
    end
    object tulajTTelefon: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon'
      Origin = 'Telefon'
    end
    object tulajTAjto: TWideStringField
      FieldName = 'Ajto'
      Size = 5
    end
    object tulajTcjsz: TWideStringField
      FieldName = 'cjsz'
    end
  end
  object tulajDs: TDataSource
    DataSet = tulajT
    Left = 224
    Top = 24
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
