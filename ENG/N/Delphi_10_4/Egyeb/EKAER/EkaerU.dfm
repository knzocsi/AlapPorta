object EkaerF: TEkaerF
  Left = 0
  Top = 0
  Caption = 'EK'#193'ER ig'#233'nyl'#233's'
  ClientHeight = 546
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1089
    Height = 75
    Align = alTop
    TabOrder = 0
    object lblekaer: TLabel
      Left = 383
      Top = 1
      Width = 84
      Height = 25
      Caption = 'lblekaer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnkilepes: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object btnkuldes: TButton
      Left = 121
      Top = 33
      Width = 167
      Height = 36
      Caption = 'Ig'#233'nyl'#233's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnkuldesClick
    end
    object Edit1: TEdit
      Left = 712
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
      Visible = False
    end
    object Button3: TButton
      Left = 856
      Top = 16
      Width = 75
      Height = 25
      Caption = 'lek'#233'r'
      TabOrder = 3
      Visible = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 952
      Top = 14
      Width = 75
      Height = 25
      Caption = 'lez'#225'r'#225's'
      TabOrder = 4
      Visible = False
      OnClick = Button4Click
    end
    object chknyomtat: TCheckBox
      Left = 121
      Top = 10
      Width = 204
      Height = 17
      Caption = 'Bejelent'#233's visszaigazol'#225's  nyomtat'#225'sa'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 75
    Width = 1089
    Height = 471
    ActivePage = alapadatok_tab
    Align = alClient
    TabOrder = 1
    object alapadatok_tab: TTabSheet
      Caption = 'BEJELENT'#201'S ALAPADATOK'
      object Label2: TLabel
        Left = 3
        Top = 8
        Width = 29
        Height = 13
        Caption = 'T'#237'pus:'
      end
      object Label40: TLabel
        Left = 466
        Top = 55
        Width = 46
        Height = 13
        Caption = 'Fels'#233'gjel:'
      end
      object Label41: TLabel
        Left = 670
        Top = 55
        Width = 46
        Height = 13
        Caption = 'Fels'#233'gjel:'
      end
      object Label43: TLabel
        Left = 336
        Top = 55
        Width = 127
        Height = 13
        Caption = 'Vontat'#243' j'#225'rm'#369' rendsz'#225'ma:'
      end
      object Label44: TLabel
        Left = 544
        Top = 55
        Width = 98
        Height = 13
        Caption = '1. vont. rendsz'#225'ma:'
      end
      object Label45: TLabel
        Left = 752
        Top = 55
        Width = 98
        Height = 13
        Caption = '2. vont. rendsz'#225'ma:'
        Visible = False
      end
      object Label46: TLabel
        Left = 2
        Top = 104
        Width = 78
        Height = 13
        Caption = 'Felrakod'#225's ideje'
      end
      object Label42: TLabel
        Left = 892
        Top = 55
        Width = 46
        Height = 13
        Caption = 'Fels'#233'gjel:'
        Visible = False
      end
      object Label4: TLabel
        Left = 192
        Top = 55
        Width = 109
        Height = 13
        Caption = 'Sz'#225'll'#237'tm'#225'nyoz'#243' EK'#193'ER:'
      end
      object Label3: TLabel
        Left = 3
        Top = 55
        Width = 101
        Height = 13
        Caption = 'Sz'#225'll'#237'tm'#225'nyoz'#243' neve:'
      end
      object Label1: TLabel
        Left = 192
        Top = 8
        Width = 114
        Height = 13
        Caption = 'Megrendel'#233's azonos'#237't'#243':'
      end
      object cbxtipus: TComboBox
        Left = 3
        Top = 20
        Width = 170
        Height = 22
        Style = csOwnerDrawFixed
        ItemIndex = 3
        TabOrder = 0
        Text = '(D) Belf'#246'ldr'#245'l belf'#246'ldre'
        Items.Strings = (
          '- Nincs megadva -'
          '(I) K'#246'z'#246'ss'#233'gb'#245'l belf'#246'ldre'
          '(E) Belf'#246'ldr'#245'l k'#246'z'#246'ss'#233'gbe'
          '(D) Belf'#246'ldr'#245'l belf'#246'ldre')
      end
      object ed_vontato_rsz: TEdit
        Left = 337
        Top = 68
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        Text = 'XXX123'
      end
      object ed_vont1_rsz: TEdit
        Left = 543
        Top = 68
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'YYY222'
      end
      object ed_vont2_rsz: TEdit
        Left = 749
        Top = 68
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        Text = 'ED_VONT2_RSZ'
        Visible = False
      end
      object cbx_vontato_jel: TComboBox
        Left = 466
        Top = 68
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
        Text = 'H'
        Items.Strings = (
          '-'
          'A'
          'AFG'
          'AIA'
          'AL'
          'AM'
          'AND'
          'ANG'
          'AUS'
          'AZ'
          'B'
          'BD'
          'BDS'
          'BF'
          'BG'
          'BIH'
          'BOL'
          'BR'
          'BRN'
          'BRU'
          'BS'
          'BVI'
          'BW'
          'BY'
          'C'
          'CAM'
          'CC'
          'CD'
          'CDN'
          'CH'
          'CI'
          'CL'
          'CO'
          'CR'
          'CV'
          'CY'
          'CZ'
          'D'
          'DK'
          'DOM'
          'DPR'
          'DY'
          'DZ'
          'E'
          'EAK'
          'EAT'
          'EAU'
          'EAZ'
          'EC'
          'ER'
          'ES'
          'EST'
          'ET'
          'ETH'
          'F'
          'FIN'
          'FJI'
          'FL'
          'FO'
          'FSM'
          'G'
          'GB'
          'GBA'
          'GBG'
          'GBJ'
          'GBM'
          'GBZ'
          'GCA'
          'GE'
          'GH'
          'GR'
          'GUY'
          'H'
          'HK'
          'HKJ'
          'HR'
          'I'
          'IL'
          'IND'
          'IR'
          'IRL'
          'IRQ'
          'IS'
          'J'
          'JA'
          'K'
          'KS'
          'KWT'
          'KZ'
          'L'
          'LAO'
          'LAR'
          'LB'
          'LS'
          'LT'
          'LV'
          'M'
          'MA'
          'MAL'
          'MC'
          'MD'
          'MEX'
          'MGL'
          'MK'
          'MNE'
          'MOC'
          'MS'
          'MW'
          'MYU'
          'N'
          'NA'
          'NAM'
          'NAU'
          'NEP'
          'NIC'
          'NL'
          'NZ'
          'OM'
          'P'
          'PA'
          'PE'
          'PK'
          'PL'
          'PR'
          'PS'
          'PY'
          'Q'
          'RA'
          'RC'
          'RCA'
          'RCB'
          'RCH'
          'RG'
          'RH'
          'RI'
          'RIM'
          'RKS'
          'RL'
          'RM'
          'RMM'
          'RO'
          'ROK'
          'RP'
          'RPB'
          'RSM'
          'RU'
          'RUS'
          'RWA'
          'S'
          'SA'
          'SD'
          'SGP'
          'SK'
          'SLO'
          'SME'
          'SN'
          'SO'
          'SRB'
          'SUD'
          'SY'
          'SYR'
          'T'
          'TCH'
          'TG'
          'TJ'
          'TM'
          'TN'
          'TR'
          'TT'
          'UA'
          'UAE'
          'USA'
          'UY'
          'UZ'
          'V'
          'VN'
          'WAG'
          'WAL'
          'WAN'
          'WD'
          'WG'
          'WL'
          'WS'
          'WV'
          'X'
          'YAR'
          'YV'
          'Z'
          'ZA'
          'ZRE'
          'ZW')
      end
      object cbx_vont1_jel: TComboBox
        Left = 670
        Top = 68
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
        Text = 'H'
        Items.Strings = (
          '-'
          'A'
          'AFG'
          'AIA'
          'AL'
          'AM'
          'AND'
          'ANG'
          'AUS'
          'AZ'
          'B'
          'BD'
          'BDS'
          'BF'
          'BG'
          'BIH'
          'BOL'
          'BR'
          'BRN'
          'BRU'
          'BS'
          'BVI'
          'BW'
          'BY'
          'C'
          'CAM'
          'CC'
          'CD'
          'CDN'
          'CH'
          'CI'
          'CL'
          'CO'
          'CR'
          'CV'
          'CY'
          'CZ'
          'D'
          'DK'
          'DOM'
          'DPR'
          'DY'
          'DZ'
          'E'
          'EAK'
          'EAT'
          'EAU'
          'EAZ'
          'EC'
          'ER'
          'ES'
          'EST'
          'ET'
          'ETH'
          'F'
          'FIN'
          'FJI'
          'FL'
          'FO'
          'FSM'
          'G'
          'GB'
          'GBA'
          'GBG'
          'GBJ'
          'GBM'
          'GBZ'
          'GCA'
          'GE'
          'GH'
          'GR'
          'GUY'
          'H'
          'HK'
          'HKJ'
          'HR'
          'I'
          'IL'
          'IND'
          'IR'
          'IRL'
          'IRQ'
          'IS'
          'J'
          'JA'
          'K'
          'KS'
          'KWT'
          'KZ'
          'L'
          'LAO'
          'LAR'
          'LB'
          'LS'
          'LT'
          'LV'
          'M'
          'MA'
          'MAL'
          'MC'
          'MD'
          'MEX'
          'MGL'
          'MK'
          'MNE'
          'MOC'
          'MS'
          'MW'
          'MYU'
          'N'
          'NA'
          'NAM'
          'NAU'
          'NEP'
          'NIC'
          'NL'
          'NZ'
          'OM'
          'P'
          'PA'
          'PE'
          'PK'
          'PL'
          'PR'
          'PS'
          'PY'
          'Q'
          'RA'
          'RC'
          'RCA'
          'RCB'
          'RCH'
          'RG'
          'RH'
          'RI'
          'RIM'
          'RKS'
          'RL'
          'RM'
          'RMM'
          'RO'
          'ROK'
          'RP'
          'RPB'
          'RSM'
          'RU'
          'RUS'
          'RWA'
          'S'
          'SA'
          'SD'
          'SGP'
          'SK'
          'SLO'
          'SME'
          'SN'
          'SO'
          'SRB'
          'SUD'
          'SY'
          'SYR'
          'T'
          'TCH'
          'TG'
          'TJ'
          'TM'
          'TN'
          'TR'
          'TT'
          'UA'
          'UAE'
          'USA'
          'UY'
          'UZ'
          'V'
          'VN'
          'WAG'
          'WAL'
          'WAN'
          'WD'
          'WG'
          'WL'
          'WS'
          'WV'
          'X'
          'YAR'
          'YV'
          'Z'
          'ZA'
          'ZRE'
          'ZW')
      end
      object fel_datum: TDateTimePicker
        Left = 2
        Top = 118
        Width = 81
        Height = 21
        Date = 44460
        Time = 0.422771053243196000
        TabOrder = 10
      end
      object fel_ido: TDateTimePicker
        Left = 89
        Top = 118
        Width = 81
        Height = 21
        Date = 44460
        Time = 0.422771053243196000
        Kind = dtkTime
        TabOrder = 11
      end
      object cbx_vont2_jel: TComboBox
        Left = 892
        Top = 68
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 9
        Text = 'CBX_VONT2_JEL'
        Visible = False
        Items.Strings = (
          '-'
          'A  '
          'AFG'
          'AIA'
          'AL'
          'AM'
          'AND'
          'ANG'
          'AUS'
          'AZ'
          'B'
          'BD'
          'BDS'
          'BF'
          'BG'
          'BIH'
          'BOL'
          'BR'
          'BRN'
          'BRU'
          'BS'
          'BVI'
          'BW'
          'BY'
          'C'
          'CAM'
          'CC'
          'CD'
          'CDN'
          'CH'
          'CI'
          'CL'
          'CO'
          'CR'
          'CV'
          'CY'
          'CZ'
          'D'
          'DK'
          'DOM'
          'DPR'
          'DY'
          'DZ'
          'E'
          'EAK'
          'EAT'
          'EAU'
          'EAZ'
          'EC'
          'ER'
          'ES'
          'EST'
          'ET'
          'ETH'
          'F'
          'FIN'
          'FJI'
          'FL'
          'FO'
          'FSM'
          'G'
          'GB'
          'GBA'
          'GBG'
          'GBJ'
          'GBM'
          'GBZ'
          'GCA'
          'GE'
          'GH'
          'GR'
          'GUY'
          'H'
          'HK'
          'HKJ'
          'HR'
          'I'
          'IL'
          'IND'
          'IR'
          'IRL'
          'IRQ'
          'IS'
          'J'
          'JA'
          'K'
          'KS'
          'KWT'
          'KZ'
          'L'
          'LAO'
          'LAR'
          'LB'
          'LS'
          'LT'
          'LV'
          'M'
          'MA'
          'MAL'
          'MC'
          'MD'
          'MEX'
          'MGL'
          'MK'
          'MNE'
          'MOC'
          'MS'
          'MW'
          'MYU'
          'N'
          'NA'
          'NAM'
          'NAU'
          'NEP'
          'NIC'
          'NL'
          'NZ'
          'OM'
          'P'
          'PA'
          'PE'
          'PK'
          'PL'
          'PR'
          'PS'
          'PY'
          'Q'
          'RA'
          'RC'
          'RCA'
          'RCB'
          'RCH'
          'RG'
          'RH'
          'RI'
          'RIM'
          'RKS'
          'RL'
          'RM'
          'RMM'
          'RO'
          'ROK'
          'RP'
          'RPB'
          'RSM'
          'RU'
          'RUS'
          'RWA'
          'S'
          'SA'
          'SD'
          'SGP'
          'SK'
          'SLO'
          'SME'
          'SN'
          'SO'
          'SRB'
          'SUD'
          'SY'
          'SYR'
          'T'
          'TCH'
          'TG'
          'TJ'
          'TM'
          'TN'
          'TR'
          'TT'
          'UA'
          'UAE'
          'USA'
          'UY'
          'UZ'
          'V'
          'VN'
          'WAG'
          'WAL'
          'WAN'
          'WD'
          'WG'
          'WL'
          'WS'
          'WV'
          'X'
          'YAR'
          'YV'
          'Z'
          'ZA'
          'ZRE'
          'ZW')
      end
      object ed_fuvEKAER: TEdit
        Left = 192
        Top = 68
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object ed_fuvneve: TEdit
        Left = 3
        Top = 68
        Width = 170
        Height = 21
        TabOrder = 2
        Text = 'El Sz'#225'll'#237't'#243
      end
      object edmegrend_azon: TEdit
        Left = 192
        Top = 20
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object chkcsakdatum: TCheckBox
        Left = 3
        Top = 145
        Width = 97
        Height = 17
        Caption = 'Csak d'#225'tum'
        Checked = True
        State = cbChecked
        TabOrder = 12
      end
    end
    object feleado_cimzett_tab: TTabSheet
      Caption = 'FELAD'#211' '#201'S C'#205'MZETT'
      ImageIndex = 1
      object Label8: TLabel
        Left = 12
        Top = 35
        Width = 23
        Height = 13
        Caption = 'N'#233'v:'
      end
      object Label9: TLabel
        Left = 188
        Top = 35
        Width = 47
        Height = 13
        Caption = 'Ad'#243'sz'#225'm:'
      end
      object Label10: TLabel
        Left = 318
        Top = 35
        Width = 55
        Height = 13
        Caption = 'Orsz'#225'gk'#243'd:'
      end
      object Label11: TLabel
        Left = 389
        Top = 35
        Width = 21
        Height = 13
        Caption = 'C'#237'm:'
      end
      object Label14: TLabel
        Left = 389
        Top = 108
        Width = 21
        Height = 13
        Caption = 'C'#237'm:'
      end
      object Label15: TLabel
        Left = 318
        Top = 108
        Width = 55
        Height = 13
        Caption = 'Orsz'#225'gk'#243'd:'
      end
      object Label16: TLabel
        Left = 188
        Top = 108
        Width = 47
        Height = 13
        Caption = 'Ad'#243'sz'#225'm:'
      end
      object Label17: TLabel
        Left = 12
        Top = 108
        Width = 23
        Height = 13
        Caption = 'N'#233'v:'
      end
      object Label5: TLabel
        Left = 12
        Top = 16
        Width = 53
        Height = 16
        Caption = 'FELAD'#211':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 12
        Top = 88
        Width = 62
        Height = 16
        Caption = 'C'#205'IMZETT:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ed_szallneve: TEdit
        Left = 12
        Top = 48
        Width = 170
        Height = 21
        TabOrder = 0
        Text = 'Elad'#243
      end
      object ed_szalladosz: TEdit
        Left = 188
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '12656347'
      end
      object cbx_szallojel: TComboBox
        Left = 318
        Top = 48
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        Text = 'HU'
        Items.Strings = (
          ''
          'AT'
          'BE'
          'BG'
          'CY'
          'CZ'
          'DE'
          'DK'
          'EE'
          'ES'
          'FI'
          'FR'
          'GB'
          'GR'
          'HR'
          'HU'
          'IR'
          'IT'
          'LT'
          'LU'
          'LV'
          'MT'
          'NL'
          'PL'
          'PT'
          'RO'
          'SE'
          'SI'
          'SK')
      end
      object ed_szallcim1: TEdit
        Left = 389
        Top = 48
        Width = 392
        Height = 21
        TabOrder = 3
        Text = 'Elad'#243' utca 1'
      end
      object ed_vevadosz: TEdit
        Left = 188
        Top = 121
        Width = 121
        Height = 21
        TabOrder = 5
        Text = '57343381'
      end
      object ed_vevocim1: TEdit
        Left = 389
        Top = 121
        Width = 392
        Height = 21
        TabOrder = 7
        Text = 'Vev'#337' utca 3'
      end
      object cbx_vevojel: TComboBox
        Left = 318
        Top = 121
        Width = 65
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        Text = 'HU'
        Items.Strings = (
          ''
          'AT'
          'BE'
          'BG'
          'CY'
          'CZ'
          'DE'
          'DK'
          'EE'
          'ES'
          'FI'
          'FR'
          'GB'
          'GR'
          'HR'
          'HU'
          'IR'
          'IT'
          'LT'
          'LU'
          'LV'
          'MT'
          'NL'
          'PL'
          'PT'
          'RO'
          'SE'
          'SI'
          'SK')
      end
      object ed_vevoneve: TEdit
        Left = 12
        Top = 121
        Width = 170
        Height = 21
        TabOrder = 4
        Text = 'Vev'#337
      end
    end
    object tetelek_tab: TTabSheet
      Caption = 'T'#201'TELEK'
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1081
        Height = 233
        Align = alTop
        TabOrder = 0
        object Label18: TLabel
          Left = 9
          Top = 12
          Width = 151
          Height = 13
          Caption = 'Felrakod'#225'si c'#237'mhez tartoz'#243' c'#233'g:'
        end
        object Label19: TLabel
          Left = 185
          Top = 12
          Width = 47
          Height = 13
          Caption = 'Ad'#243'sz'#225'm:'
        end
        object Label20: TLabel
          Left = 315
          Top = 12
          Width = 55
          Height = 13
          Caption = 'Orsz'#225'gk'#243'd:'
        end
        object Label27: TLabel
          Left = 401
          Top = 12
          Width = 64
          Height = 13
          Caption = 'Telefonsz'#225'm:'
        end
        object Label28: TLabel
          Left = 537
          Top = 12
          Width = 50
          Height = 13
          Caption = 'E-mail c'#237'm:'
        end
        object Label29: TLabel
          Left = 9
          Top = 100
          Width = 144
          Height = 13
          Caption = 'Leakod'#225'si c'#237'mhez tartoz'#243' c'#233'g:'
        end
        object Label30: TLabel
          Left = 185
          Top = 100
          Width = 47
          Height = 13
          Caption = 'Ad'#243'sz'#225'm:'
        end
        object Label31: TLabel
          Left = 315
          Top = 100
          Width = 55
          Height = 13
          Caption = 'Orsz'#225'gk'#243'd:'
        end
        object Label38: TLabel
          Left = 401
          Top = 100
          Width = 64
          Height = 13
          Caption = 'Telefonsz'#225'm:'
        end
        object Label39: TLabel
          Left = 537
          Top = 100
          Width = 50
          Height = 13
          Caption = 'E-mail c'#237'm:'
        end
        object Label7: TLabel
          Left = 8
          Top = 50
          Width = 87
          Height = 13
          Caption = 'Felrakod'#225'si c'#237'mek:'
        end
        object Label12: TLabel
          Left = 8
          Top = 138
          Width = 86
          Height = 13
          Caption = 'Lelrakod'#225'si c'#237'mek:'
        end
        object Label48: TLabel
          Left = 10
          Top = 186
          Width = 74
          Height = 13
          Caption = 'Fuvaroz'#225's oka:'
          Visible = False
        end
        object Label49: TLabel
          Left = 138
          Top = 186
          Width = 28
          Height = 13
          Caption = 'VTSZ:'
          Visible = False
        end
        object Label50: TLabel
          Left = 226
          Top = 186
          Width = 60
          Height = 13
          Caption = 'Term'#233'k n'#233'v:'
          Visible = False
        end
        object Label51: TLabel
          Left = 354
          Top = 186
          Width = 25
          Height = 13
          Caption = 'ADR:'
          Visible = False
        end
        object Label52: TLabel
          Left = 479
          Top = 186
          Width = 72
          Height = 13
          Caption = 'Enged'#233'lysz'#225'm:'
          Visible = False
        end
        object Label53: TLabel
          Left = 610
          Top = 186
          Width = 36
          Height = 13
          Caption = 'T'#246'meg:'
          Visible = False
        end
        object Label54: TLabel
          Left = 682
          Top = 186
          Width = 29
          Height = 13
          Caption = #201'rt'#233'k:'
          Visible = False
        end
        object ed_felceg: TEdit
          Left = 9
          Top = 25
          Width = 170
          Height = 21
          TabOrder = 0
          Text = 'Felrakod'#243' c'#233'g'
        end
        object ed_felcegadosz: TEdit
          Left = 185
          Top = 25
          Width = 121
          Height = 21
          TabOrder = 1
          Text = '12656347'
        end
        object cbx_felcegojel: TComboBox
          Left = 315
          Top = 25
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
          Text = 'HU'
          Items.Strings = (
            ''
            'AT'
            'BE'
            'BG'
            'CY'
            'CZ'
            'DE'
            'DK'
            'EE'
            'ES'
            'FI'
            'FR'
            'GB'
            'GR'
            'HR'
            'HU'
            'IR'
            'IT'
            'LT'
            'LU'
            'LV'
            'MT'
            'NL'
            'PL'
            'PT'
            'RO'
            'SE'
            'SI'
            'SK')
        end
        object ed_felcegtel: TEdit
          Left = 401
          Top = 25
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object ed_felcegemail: TEdit
          Left = 537
          Top = 25
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object ed_leceg: TEdit
          Left = 9
          Top = 113
          Width = 170
          Height = 21
          TabOrder = 5
          Text = 'Lerakod'#243' c'#233'g'
        end
        object ed_lecegadosz: TEdit
          Left = 185
          Top = 113
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '57343381'
        end
        object cbx_lecegojel: TComboBox
          Left = 315
          Top = 113
          Width = 65
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 7
          Text = 'HU'
          Items.Strings = (
            ''
            'AT'
            'BE'
            'BG'
            'CY'
            'CZ'
            'DE'
            'DK'
            'EE'
            'ES'
            'FI'
            'FR'
            'GB'
            'GR'
            'HR'
            'HU'
            'IR'
            'IT'
            'LT'
            'LU'
            'LV'
            'MT'
            'NL'
            'PL'
            'PT'
            'RO'
            'SE'
            'SI'
            'SK')
        end
        object ed_lecegtel: TEdit
          Left = 401
          Top = 113
          Width = 121
          Height = 21
          TabOrder = 8
        end
        object ed_lecegemail: TEdit
          Left = 537
          Top = 113
          Width = 121
          Height = 21
          TabOrder = 9
        end
        object felcimlookup: TJvDBLookupCombo
          Left = 9
          Top = 65
          Width = 768
          Height = 21
          DisplayEmpty = '---V'#225'lasszon felrakod'#225'si c'#237'met----'
          EmptyValue = '!'
          LookupField = 'id'
          LookupDisplay = 'cim'
          LookupSource = felcimekQDs
          TabOrder = 10
        end
        object Button2: TButton
          Left = 686
          Top = 34
          Width = 91
          Height = 25
          Caption = 'Felrakod'#225'si c'#237'mek'
          TabOrder = 11
          OnClick = Button2Click
        end
        object lecimlookup: TJvDBLookupCombo
          Left = 9
          Top = 153
          Width = 768
          Height = 21
          DisplayEmpty = '---V'#225'lasszon lerakod'#225'si c'#237'met----'
          EmptyValue = '!'
          LookupField = 'id'
          LookupDisplay = 'cim'
          LookupSource = lecimekQDs
          TabOrder = 12
        end
        object Button1: TButton
          Left = 686
          Top = 122
          Width = 91
          Height = 25
          Caption = 'Lerakod'#225'si c'#237'mek'
          TabOrder = 13
          OnClick = Button1Click
        end
        object cbx_fuvok: TComboBox
          Left = 9
          Top = 199
          Width = 121
          Height = 22
          Style = csOwnerDrawFixed
          TabOrder = 14
          Visible = False
          Items.Strings = (
            '(S) '#201'rt'#233'kes'#237't'#233's'
            '(A) Beszerz'#233's'
            '(W) B'#233'rmunka'
            '(O) Egy'#233'b')
        end
        object ed_termeknev: TEdit
          Left = 223
          Top = 200
          Width = 121
          Height = 21
          TabOrder = 15
          Text = 'ed_termeknev'
          Visible = False
        end
        object ed_adr: TEdit
          Left = 350
          Top = 200
          Width = 121
          Height = 21
          TabOrder = 16
          Text = 'ed_adr'
          Visible = False
        end
        object ed_tomeg: TEdit
          Left = 604
          Top = 200
          Width = 69
          Height = 21
          TabOrder = 17
          Text = 'ed_tomeg'
          Visible = False
        end
        object ed_ertek: TEdit
          Left = 679
          Top = 200
          Width = 121
          Height = 21
          TabOrder = 18
          Text = 'ed_ertek'
          Visible = False
        end
        object ed_engedelyszam: TEdit
          Left = 477
          Top = 200
          Width = 121
          Height = 21
          TabOrder = 19
          Text = 'ed_engedelyszam'
          Visible = False
        end
        object ed_vtsz: TEdit
          Left = 136
          Top = 200
          Width = 81
          Height = 21
          MaxLength = 8
          TabOrder = 20
          Text = 'ed_vtsz'
          Visible = False
        end
      end
      object JvDBUltimGrid1: TJvDBUltimGrid
        Left = 0
        Top = 233
        Width = 1081
        Height = 210
        Align = alClient
        DataSource = DmEkaer.memtetDs
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
            FieldName = 'deliveryPlan_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itemExternalId'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'itemOperation'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'tradeReason'
            Title.Caption = 'Fuvaroz'#225's oka k'#243'd'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TradeReasonText'
            Title.Caption = 'Fuvarozas oka'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'productVtsz'
            Title.Caption = 'VTSZ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'productName'
            Title.Caption = 'Term'#233'k megnevez'#233'se'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'adrNumber'
            Title.Caption = 'ADR sz'#225'm'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'transportLicence'
            Title.Caption = 'Enged'#233'lysz'#225'm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'netto_weight'
            Title.Caption = 'Nett'#243' t'#246'meg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'weight'
            Title.Caption = 'T'#246'meg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'value'
            Title.Caption = #201'rt'#233'k'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vatRateAssuranceExemption'
            Title.Caption = 'Biztos'#237't'#233'k mentes (5%)'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valueModReasontext'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'weightModReasonText'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'factoryItemNumber'
            Title.Caption = 'Gy'#225'ri sz'#225'm'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'importerItemNumber'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'expirationDate'
            Title.Caption = 'Szavatoss'#225'g'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'batchNumber'
            Title.Caption = 'Gy'#225'rt'#225'si azon.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'statusModReasonText'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'productModReasonText'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'insUser'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'insDate'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'modUser'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'modDate'
            Visible = False
          end>
      end
    end
  end
  object felcimekQ: TFDQuery
    Connection = DmEkaer.EKAERKapcs
    SQL.Strings = (
      'select * from felrakodasi_cimek_nezet where tul_id=:t')
    Left = 688
    Top = 88
    ParamData = <
      item
        Name = 'T'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object felcimekQid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object felcimekQtul_id: TIntegerField
      FieldName = 'tul_id'
      Origin = 'tul_id'
      Required = True
    end
    object felcimekQirsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'irsz'
      Origin = 'irsz'
      Size = 10
    end
    object felcimekQtelepules: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'telepules'
      Origin = 'telepules'
      Size = 30
    end
    object felcimekQkozterulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kozterulet'
      Origin = 'kozterulet'
      Size = 30
    end
    object felcimekQkozt_jelleg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kozt_jelleg'
      Origin = 'kozt_jelleg'
      Size = 10
    end
    object felcimekQhazszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'hazszam'
      Origin = 'hazszam'
      Size = 5
    end
    object felcimekQepulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'epulet'
      Origin = 'epulet'
      Size = 5
    end
    object felcimekQlepcsohaz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'lepcsohaz'
      Origin = 'lepcsohaz'
      Size = 5
    end
    object felcimekQemelet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'emelet'
      Origin = 'emelet'
      Size = 5
    end
    object felcimekQajto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ajto'
      Origin = 'ajto'
      Size = 5
    end
    object felcimekQhrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'hrsz'
      Origin = 'hrsz'
    end
    object felcimekQemail: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
    end
    object felcimekQtelefon: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefon'
      Origin = 'telefon'
    end
    object felcimekQcim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cim'
      Origin = 'cim'
      ProviderFlags = []
      ReadOnly = True
      Size = 134
    end
  end
  object felcimekQDs: TDataSource
    DataSet = felcimekQ
    Left = 768
    Top = 80
  end
  object lecimekQ: TFDQuery
    Connection = DmEkaer.EKAERKapcs
    SQL.Strings = (
      'select * from lerakodasi_cimek_nezet where tul_id=:t')
    Left = 696
    Top = 176
    ParamData = <
      item
        Name = 'T'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object lecimekQid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object lecimekQtul_id: TIntegerField
      FieldName = 'tul_id'
      Origin = 'tul_id'
      Required = True
    end
    object lecimekQirsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'irsz'
      Origin = 'irsz'
      Size = 10
    end
    object lecimekQtelepules: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'telepules'
      Origin = 'telepules'
      Size = 30
    end
    object lecimekQkozterulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kozterulet'
      Origin = 'kozterulet'
      Size = 30
    end
    object lecimekQkozt_jelleg: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'kozt_jelleg'
      Origin = 'kozt_jelleg'
      Size = 10
    end
    object lecimekQhazszam: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'hazszam'
      Origin = 'hazszam'
      Size = 5
    end
    object lecimekQepulet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'epulet'
      Origin = 'epulet'
      Size = 5
    end
    object lecimekQlepcsohaz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'lepcsohaz'
      Origin = 'lepcsohaz'
      Size = 5
    end
    object lecimekQemelet: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'emelet'
      Origin = 'emelet'
      Size = 5
    end
    object lecimekQajto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ajto'
      Origin = 'ajto'
      Size = 5
    end
    object lecimekQhrsz: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'hrsz'
      Origin = 'hrsz'
    end
    object lecimekQemail: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
    end
    object lecimekQtelefon: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefon'
      Origin = 'telefon'
    end
    object lecimekQcim: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'cim'
      Origin = 'cim'
      ProviderFlags = []
      ReadOnly = True
      Size = 134
    end
  end
  object lecimekQDs: TDataSource
    DataSet = lecimekQ
    Left = 744
    Top = 176
  end
end
