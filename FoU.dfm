object FoF: TFoF
  Left = 0
  Top = 0
  Caption = 'Winporta'
  ClientHeight = 667
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 648
    Width = 1092
    Height = 19
    Panels = <
      item
        Text = 'Ver.: 1.0'
        Width = 80
      end
      item
        Text = 'Rendsz'#225'm'
        Width = 300
      end
      item
        Width = 200
      end
      item
        Text = 'K'#225'rtya:'
        Width = 150
      end
      item
        Text = 'T'#246'meg:'
        Width = 100
      end
      item
        Text = #201'l'#337'k'#233'p(1):'
        Width = 150
      end
      item
        Text = #201'l'#337'k'#233'p(2):'
        Width = 150
      end>
  end
  object pnlBaloldal: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 648
    Align = alLeft
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 81
      Width = 798
      Height = 335
      Align = alClient
      DataSource = AF.ForgalomDS
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyUp = DBGrid1KeyUp
      OnMouseUp = DBGrid1MouseUp
      OnMouseWheel = DBGrid1MouseWheel
      Columns = <
        item
          Expanded = False
          FieldName = 'Datum'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ido'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rendszam'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Rendszam2'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tomeg'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Szallitolev'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Kod'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Irany'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mjegy'
          Title.Caption = 'M'#233'rlegjegy'
          Width = 70
          Visible = True
        end>
    end
    object pnlKiskep: TPanel
      Left = 1
      Top = 416
      Width = 798
      Height = 231
      Align = alBottom
      TabOrder = 1
      ExplicitWidth = 399
      object ipcamPanel: TPanel
        Left = 1
        Top = 1
        Width = 796
        Height = 229
        Align = alClient
        Caption = 'Kamera nem el'#233'rhet'#337
        TabOrder = 0
        ExplicitWidth = 397
        object campagc: TPageControl
          Left = 1
          Top = 1
          Width = 794
          Height = 227
          ActivePage = cam0
          Align = alBottom
          TabOrder = 0
          ExplicitWidth = 395
          object cam0: TTabSheet
            Caption = 'Kamera 1'
          end
          object cam1: TTabSheet
            Caption = 'Kamera 2'
            ImageIndex = 1
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 80
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 624
      object Label1: TLabel
        Left = 32
        Top = 8
        Width = 66
        Height = 13
        Caption = 'Kezd'#337' d'#225'tum:'
      end
      object Label2: TLabel
        Left = 168
        Top = 8
        Width = 79
        Height = 13
        Caption = 'Befejez'#337' d'#225'tum:'
      end
      object piKezdoDatum: TDateTimePicker
        Left = 32
        Top = 22
        Width = 113
        Height = 21
        Date = 43587.000000000000000000
        Time = 0.773554583327495600
        TabOrder = 0
        OnChange = piKezdoDatumChange
      end
      object piBefejezoDatum: TDateTimePicker
        Left = 168
        Top = 22
        Width = 105
        Height = 21
        Date = 43587.000000000000000000
        Time = 0.774182199071219700
        TabOrder = 1
        OnChange = piBefejezoDatumChange
      end
      object Button1: TButton
        Left = 288
        Top = 16
        Width = 75
        Height = 25
        Caption = 'M'#233'rlegjegy'
        TabOrder = 2
        OnClick = Button1Click
      end
      object btnMeresmodositas: TButton
        Left = 168
        Top = 49
        Width = 105
        Height = 25
        Caption = 'M'#233'r'#233's m'#243'dos'#237't'#225's'
        TabOrder = 3
        OnClick = btnMeresmodositasClick
      end
      object btnMeres: TButton
        Left = 32
        Top = 48
        Width = 113
        Height = 25
        Caption = 'M'#233'r'#233's'
        TabOrder = 4
        OnClick = btnMeresClick
      end
    end
  end
  object pnlJobboldal: TPanel
    Left = 800
    Top = 0
    Width = 292
    Height = 648
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 401
    ExplicitWidth = 691
    object pnlJobbAlso: TPanel
      Left = 1
      Top = 536
      Width = 290
      Height = 111
      Align = alBottom
      TabOrder = 0
      OnClick = pnlJobbAlsoClick
      ExplicitWidth = 689
      object lbl1: TLabel
        Left = 24
        Top = 24
        Width = 72
        Height = 13
        Caption = 'Els'#337' rendsz'#225'm:'
        Visible = False
      end
      object lbl2: TLabel
        Left = 336
        Top = 26
        Width = 81
        Height = 13
        Caption = 'H'#225'ts'#243' rendsz'#225'm:'
        Visible = False
      end
      object lblRendszam_elso: TLabel
        Left = 32
        Top = 56
        Width = 173
        Height = 27
        Caption = 'lblRendszam_elso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblRendszam_hatso: TLabel
        Left = 344
        Top = 56
        Width = 186
        Height = 27
        Caption = 'lblRendszam_hatso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object ledLampa: TComLed
        Left = 576
        Top = 54
        Width = 25
        Height = 25
        LedSignal = lsConn
        Kind = lkRedLight
        State = lsOn
        Visible = False
        OnDblClick = ledLampaDblClick
      end
      object lbl3: TLabel
        Left = 568
        Top = 24
        Width = 35
        Height = 13
        Caption = 'L'#225'mpa:'
        Visible = False
      end
      object lblIrany: TLabel
        Left = 576
        Top = 80
        Width = 4
        Height = 13
        Caption = '-'
      end
      object btnElso: TButton
        Left = 102
        Top = 81
        Width = 89
        Height = 25
        Caption = 'Els'#337' gomb'
        TabOrder = 0
        Visible = False
        OnClick = btnElsoClick
      end
      object Button2: TButton
        Left = 16
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Kamera k'#233'p'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object pnlJobbFelso: TPanel
      Left = 1
      Top = 1
      Width = 290
      Height = 535
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 689
      object pnlFelsokep: TPanel
        Left = 1
        Top = 1
        Width = 288
        Height = 255
        Align = alClient
        TabOrder = 0
        OnResize = pnlFelsokepResize
        ExplicitWidth = 687
        ExplicitHeight = 261
        object imgFelsokep: TImage
          Left = 0
          Top = 0
          Width = 105
          Height = 105
          Stretch = True
          OnClick = imgFelsokepClick
        end
        object memLog: TMemo
          Left = 102
          Top = 1
          Width = 185
          Height = 253
          Align = alRight
          Lines.Strings = (
            'memLog')
          TabOrder = 0
          Visible = False
          ExplicitLeft = 501
          ExplicitHeight = 259
        end
      end
      object pnlAlsokep: TPanel
        Left = 1
        Top = 256
        Width = 288
        Height = 278
        Align = alBottom
        TabOrder = 1
        object imgAlsokep: TImage
          Left = 3
          Top = 0
          Width = 105
          Height = 105
          Stretch = True
          OnClick = imgFelsokepClick
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Tag = 100
    Left = 432
    Top = 136
    object rzsadatok1: TMenuItem
      Caption = 'T'#246'rzsadatok'
      object Anyagok1: TMenuItem
        Caption = 'Term'#233'kek'
        OnClick = Anyagok1Click
      end
      object Partnerek1: TMenuItem
        Caption = 'Partnerek'
        OnClick = Partnerek1Click
      end
      object Rendszmok1: TMenuItem
        Caption = 'Rendsz'#225'mok'
        OnClick = Rendszmok1Click
      end
      object pusok1: TMenuItem
        Caption = 'T'#237'pusok'
        Visible = False
        OnClick = pusok1Click
      end
      object rolk1: TMenuItem
        Caption = 'T'#225'rol'#243'k'
        OnClick = rolk1Click
      end
      object Antheratrzsimport1: TMenuItem
        Tag = 100
        Caption = 'Anthera t'#246'rzs import'
        OnClick = Antheratrzsimport1Click
      end
    end
    object Listk1: TMenuItem
      Caption = 'List'#225'k'
      object Forgalom1: TMenuItem
        Caption = 'Forgalom'
        OnClick = Forgalom1Click
      end
      object Prostottmrsek1: TMenuItem
        Caption = 'P'#225'ros'#237'tott m'#233'r'#233'sek'
        Visible = False
        OnClick = Prostottmrsek1Click
      end
      object Mrlegjegyeklistja1: TMenuItem
        Caption = 'M'#233'rlegjegyek list'#225'ja'
        OnClick = Mrlegjegyeklistja1Click
      end
      object Kszlet1: TMenuItem
        Caption = 'K'#233'szlet'
        OnClick = Kszlet1Click
      end
    end
    object Raktrkziszlltlevl1: TMenuItem
      Caption = 'Rakt'#225'rk'#246'zi sz'#225'll'#237't'#243'lev'#233'l'
      object j1: TMenuItem
        Caption = #218'j'
        OnClick = j1Click
      end
      object Lista1: TMenuItem
        Caption = 'Lista'
        OnClick = Lista1Click
      end
    end
    object Belltsok1: TMenuItem
      Caption = 'Be'#225'll'#237't'#225'sok'
      object Felhasznlk1: TMenuItem
        Caption = 'Felhaszn'#225'l'#243'k'
        object Felhasznlkkarbantartsa1: TMenuItem
          Caption = 'Felhaszn'#225'l'#243'k karbantart'#225'sa'
          OnClick = Felhasznlkkarbantartsa1Click
        end
        object Sajtjelszmdostsa1: TMenuItem
          Caption = 'Saj'#225't jelsz'#243' m'#243'dos'#237't'#225'sa'
          OnClick = Sajtjelszmdostsa1Click
        end
      end
      object Mrlegkezelk1: TMenuItem
        Caption = 'M'#233'rlegkezel'#337'k'
        OnClick = Mrlegkezelk1Click
      end
      object Sorosportbellts1: TMenuItem
        Caption = 'Soros port be'#225'll'#237't'#225's'
        OnClick = Sorosportbellts1Click
      end
      object Sorompnyitinfrahiba1: TMenuItem
        Caption = 'BE Soromp'#243' nyit'#243' infra hiba'
        OnClick = Sorompnyitinfrahiba1Click
      end
      object KISorompnyitinfrahiba1: TMenuItem
        Caption = 'KI Soromp'#243' nyit'#243' infra hiba'
        OnClick = KISorompnyitinfrahiba1Click
      end
      object alapbe_m: TMenuItem
        Caption = 'Alap be'#225'll'#237't'#225'sok'
        object tulaj_m: TMenuItem
          Caption = 'Tulajdonosok'
          OnClick = tulaj_mClick
        end
        object Szoftverbelltsok1: TMenuItem
          Caption = 'Szoftver be'#225'll'#237't'#225'sok'
          OnClick = Szoftverbelltsok1Click
        end
      end
      object teszt_m: TMenuItem
        Caption = 'Teszt'
        Visible = False
        OnClick = teszt_mClick
      end
      object tomeg_levon_szovegek_m: TMenuItem
        Caption = 'T'#246'meg levon'#225'si sz'#246'vegek'
        OnClick = tomeg_levon_szovegek_mClick
      end
    end
    object Kpek1: TMenuItem
      Caption = 'K'#233'pek'
      object Keress1: TMenuItem
        Caption = 'Keres'#233's'
        OnClick = Keress1Click
      end
    end
    object Felhasznlvlts1: TMenuItem
      Tag = 1
      Caption = 'Felhaszn'#225'l'#243' v'#225'lt'#225's'
      OnClick = Felhasznlvlts1Click
    end
    object Kilps1: TMenuItem
      Caption = 'Kil'#233'p'#233's'
      OnClick = Kilps1Click
    end
  end
  object Rendszam_Lampa_Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Rendszam_Lampa_TimerTimer
    Left = 560
    Top = 192
  end
  object ClientSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '127.0.0.1'
    Port = 9001
    OnConnect = ClientSocketConnect
    OnError = ClientSocketError
    Left = 681
    Top = 80
  end
  object ServerSocket: TServerSocket
    Active = False
    Port = 9002
    ServerType = stNonBlocking
    OnClientRead = ServerSocketClientRead
    Left = 753
    Top = 80
  end
  object Tomeg_Timer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Tomeg_TimerTimer
    Left = 449
    Top = 192
  end
  object mctPLC: TIdModBusClient
    ConnectTimeout = 0
    OnResponseError = mctPLCResponseError
    Left = 657
    Top = 192
  end
  object kapcsfriss: TTimer
    Enabled = False
    Interval = 600000
    OnTimer = kapcsfrissTimer
    Left = 763
    Top = 186
  end
  object IdIcmpClient1: TIdIcmpClient
    Protocol = 1
    ProtocolIPv6 = 58
    PacketSize = 64
    Left = 825
    Top = 192
  end
  object mcIOmodul: TIdModBusClient
    ConnectTimeout = 0
    OnResponseError = mcIOmodulResponseError
    Left = 705
    Top = 192
  end
  object elokep_timer: TTimer
    Enabled = False
    OnTimer = elokep_timerTimer
    Left = 841
    Top = 120
  end
end
