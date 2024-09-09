object PartnerekF: TPartnerekF
  Left = 0
  Top = 0
  Caption = 'Partners'
  ClientHeight = 369
  ClientWidth = 824
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 824
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object Button1: TButton
      Left = 152
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Lock'
      TabOrder = 1
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Verify'
      TabOrder = 2
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Unlock'
      TabOrder = 3
      Visible = False
      OnClick = Button3Click
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 824
    Height = 328
    ActivePage = tbReszlet
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'List'
      object PartnerGrid: TDBGrid
        Left = 0
        Top = 57
        Width = 816
        Height = 243
        Align = alClient
        DataSource = PartnerDS
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = PartnerGridCellClick
        OnMouseUp = PartnerGridMouseUp
        Columns = <
          item
            Expanded = False
            FieldName = 'kod'
            Title.Caption = 'Code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nev'
            Title.Caption = 'Name'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'irsz'
            Title.Caption = 'Postal code'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telepules'
            Title.Caption = 'Settlement'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kozterulet'
            Title.Caption = 'Public place name'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kozt_jelleg'
            Title.Caption = 'Pub.place category'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hazszam'
            Title.Caption = 'House num'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'epulet'
            Title.Caption = 'Building'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lepcsohaz'
            Title.Caption = 'Staircase'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'emelet'
            Title.Caption = 'Floor'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ajto'
            Title.Caption = 'Door'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hrsz'
            Title.Caption = 'Lot num'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefon'
            Title.Caption = 'Phone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-mail'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ado_azon'
            Title.Caption = 'VAT ID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ado_kod'
            Title.Caption = 'VAT Code'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ado_megye_kod'
            Title.Caption = 'VAT country code'
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 816
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          Left = 12
          Top = 2
          Width = 39
          Height = 13
          Caption = 'Filtering: '
        end
        object lblmire: TLabel
          Left = 52
          Top = 2
          Width = 18
          Height = 13
          Caption = 'Code'
        end
        object edszures: TEdit
          Left = 12
          Top = 18
          Width = 242
          Height = 21
          TabOrder = 0
          OnChange = edszuresChange
        end
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'Details'
      ImageIndex = 1
      object lbl1: TLabel
        Left = 32
        Top = 19
        Width = 22
        Height = 13
        Caption = 'Code:'
        FocusControl = dbedtKod
      end
      object lbl2: TLabel
        Left = 32
        Top = 67
        Width = 23
        Height = 13
        Caption = 'Name:'
        FocusControl = dbedtNev
      end
      object lbl3: TLabel
        Left = 32
        Top = 115
        Width = 66
        Height = 13
        Caption = 'Postal code:'
        FocusControl = dbedtIrsz
      end
      object lbl4: TLabel
        Left = 184
        Top = 115
        Width = 49
        Height = 13
        Caption = 'Settlement:'
        FocusControl = dbedtTelepules
      end
      object lbl5: TLabel
        Left = 32
        Top = 163
        Width = 38
        Height = 13
        Caption = 'District:'
        FocusControl = dbedtKerulet
      end
      object lbl6: TLabel
        Left = 120
        Top = 163
        Width = 80
        Height = 13
        Caption = 'Public place name:'
        FocusControl = dbedtKozterulet
      end
      object lbl7: TLabel
        Left = 272
        Top = 163
        Width = 87
        Height = 13
        Caption = 'Public place category:'
        FocusControl = dbedtKozt_Jelleg
      end
      object lbl8: TLabel
        Left = 423
        Top = 163
        Width = 46
        Height = 13
        Caption = 'House number:'
        FocusControl = dbedtHazszam
      end
      object lbl9: TLabel
        Left = 573
        Top = 163
        Width = 54
        Height = 13
        Caption = 'Staircase:'
        FocusControl = dbedtLepcsohaz
      end
      object lbl10: TLabel
        Left = 656
        Top = 163
        Width = 36
        Height = 13
        Caption = 'Floor:'
        FocusControl = dbedtEmelet
      end
      object lbl11: TLabel
        Left = 32
        Top = 211
        Width = 24
        Height = 13
        Caption = 'Door:'
        FocusControl = dbedtAjto
      end
      object lbl12: TLabel
        Left = 272
        Top = 211
        Width = 124
        Height = 13
        Caption = 'Ad'#243'sz'#225'm(nem megfelel'#337'):'
        FocusControl = dbedtAdoszam
        Visible = False
      end
      object Label1: TLabel
        Left = 423
        Top = 211
        Width = 22
        Height = 13
        Caption = 'K'#220'J:'
      end
      object Label2: TLabel
        Left = 575
        Top = 211
        Width = 21
        Height = 13
        Caption = 'KTJ:'
      end
      object Label3: TLabel
        Left = 504
        Top = 163
        Width = 34
        Height = 13
        Caption = 'Building:'
      end
      object Label4: TLabel
        Left = 273
        Top = 250
        Width = 32
        Height = 13
        Caption = 'E-mail:'
      end
      object Label5: TLabel
        Left = 423
        Top = 250
        Width = 40
        Height = 13
        Caption = 'Phone:'
      end
      object Label6: TLabel
        Left = 120
        Top = 211
        Width = 72
        Height = 13
        Caption = 'Lot number:'
      end
      object Label8: TLabel
        Left = 32
        Top = 251
        Width = 65
        Height = 13
        Caption = 'VAT ID sign:'
      end
      object Label9: TLabel
        Left = 136
        Top = 251
        Width = 43
        Height = 13
        Caption = 'VAT code:'
      end
      object Label10: TLabel
        Left = 193
        Top = 251
        Width = 56
        Height = 13
        Caption = 'Vat country code:'
      end
      object lbldijszab: TLabel
        Left = 576
        Top = 250
        Width = 97
        Height = 13
        Caption = 'Fee category:'
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
        OnChange = dbedtIrszChange
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
        Left = 272
        Top = 224
        Width = 134
        Height = 21
        DataField = 'Adoszam'
        DataSource = PartnerDS
        ReadOnly = True
        TabOrder = 12
        Visible = False
      end
      object DBEdtkuj: TDBEdit
        Left = 423
        Top = 224
        Width = 121
        Height = 21
        DataField = 'kuj'
        DataSource = PartnerDS
        MaxLength = 30
        TabOrder = 13
      end
      object DBEdtktj: TDBEdit
        Left = 574
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
      object dbedtemail: TDBEdit
        Left = 273
        Top = 263
        Width = 130
        Height = 21
        DataField = 'email'
        DataSource = PartnerDS
        MaxLength = 20
        TabOrder = 16
      end
      object dbedttelefon: TDBEdit
        Left = 423
        Top = 263
        Width = 121
        Height = 21
        DataField = 'telefon'
        DataSource = PartnerDS
        MaxLength = 20
        TabOrder = 17
      end
      object dbedthrsz: TDBEdit
        Left = 120
        Top = 225
        Width = 129
        Height = 21
        DataField = 'hrsz'
        DataSource = PartnerDS
        TabOrder = 18
      end
      object Edit1: TEdit
        Left = 408
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 19
      end
      object Edit2: TEdit
        Left = 574
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 20
      end
      object bdchkMagansz: TDBCheckBox
        Left = 612
        Top = 130
        Width = 97
        Height = 17
        Caption = 'Private person'
        DataField = 'magansz'
        DataSource = PartnerDS
        TabOrder = 21
      end
      object dbeadoazon: TDBEdit
        Left = 32
        Top = 264
        Width = 81
        Height = 21
        DataField = 'ado_azon'
        DataSource = PartnerDS
        MaxLength = 8
        TabOrder = 22
      end
      object dbeado_kod: TDBEdit
        Left = 136
        Top = 264
        Width = 43
        Height = 21
        DataField = 'ado_kod'
        DataSource = PartnerDS
        MaxLength = 1
        TabOrder = 23
      end
      object dbeado_megye_kod: TDBEdit
        Left = 193
        Top = 263
        Width = 56
        Height = 21
        DataField = 'ado_megye_kod'
        DataSource = PartnerDS
        MaxLength = 2
        TabOrder = 24
      end
      object cbdijkat: TJvDBLookupCombo
        Left = 573
        Top = 264
        Width = 145
        Height = 21
        DataField = 'd_id'
        DataSource = PartnerDS
        DisplayEmpty = '---Not selected---'
        EmptyValue = '0'
        LookupField = 'id'
        LookupDisplay = 'nev'
        LookupSource = dijkatDs
        TabOrder = 25
      end
      object btndijszab: TButton
        Left = 728
        Top = 264
        Width = 75
        Height = 33
        Caption = 'Fee categories'
        TabOrder = 26
        WordWrap = True
        OnClick = btndijszabClick
      end
    end
  end
  object PartnerT: TFDTable
    BeforeInsert = PartnerTBeforeInsert
    AfterInsert = PartnerTAfterInsert
    BeforePost = PartnerTBeforePost
    BeforeDelete = PartnerTBeforeDelete
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
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
  object dijkatT: TFDTable
    Connection = AF.Kapcs
    TableName = 'dijaszab_kategoriak'
    Left = 648
    Top = 160
  end
  object dijkatDs: TDataSource
    DataSet = dijkatT
    Left = 696
    Top = 160
  end
end
