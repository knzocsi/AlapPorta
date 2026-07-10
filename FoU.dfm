object FoF: TFoF
  Left = 0
  Top = 0
  Caption = 'Winporta'
  ClientHeight = 691
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 672
    Width = 1107
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
        Width = 150
      end
      item
        Text = 'T'#246'meg: '
        Width = 200
      end
      item
        Text = #201'l'#337'k'#233'p(1):'
        Width = 150
      end
      item
        Text = #201'l'#337'k'#233'p(2):'
        Width = 150
      end
      item
        Width = 50
      end>
    OnClick = StatusBar1Click
  end
  object pnlBaloldal: TPanel
    Left = 0
    Top = 57
    Width = 800
    Height = 560
    Align = alLeft
    TabOrder = 1
    object pcTablak: TPageControl
      Left = 1
      Top = 1
      Width = 798
      Height = 286
      ActivePage = tbIdeiglenes
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object tbIdeiglenes: TTabSheet
        Caption = 'Ideiglenes'
        ImageIndex = 1
        object dbgNyitbe: TJvDBUltimGrid
          Left = 0
          Top = 0
          Width = 790
          Height = 258
          Align = alClient
          DataSource = AF.NyitbeDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgNyitbeDrawColumnCell
          SelectColumnsDialogStrings.Caption = 'Select columns'
          SelectColumnsDialogStrings.OK = '&OK'
          SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
          EditControls = <>
          RowsHeight = 17
          TitleRowHeight = 17
          Columns = <
            item
              Expanded = False
              FieldName = 'Hivo_sorszam'
              Title.Caption = 'Sorsz'#225'm'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rendszam'
              Title.Caption = 'Rendsz'#225'm'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rendszam2'
              Title.Caption = 'Rendsz'#225'm 2'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P_nev'
              Title.Caption = 'Partner 1'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'P2_nev'
              Title.Caption = 'Partner 2'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Erkdatum'
              Title.Caption = #201'rk.d'#225'tum'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Erkido'
              Title.Caption = #201'rk.id'#337
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Netto'
              Title.Caption = 'Nett'#243
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'irany'
              Title.Caption = 'Ir'#225'ny'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Megjegyzes'
              Visible = True
            end>
        end
      end
      object tbForgalom: TTabSheet
        Caption = 'Forgalom'
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 790
          Height = 80
          Align = alTop
          TabOrder = 0
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
            Top = 21
            Width = 113
            Height = 21
            Date = 43587.000000000000000000
            Time = 0.773554583327495500
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
          object btnMeresmodositas: TButton
            Left = 168
            Top = 49
            Width = 105
            Height = 25
            Caption = 'M'#233'r'#233's m'#243'dos'#237't'#225's'
            TabOrder = 2
            Visible = False
            OnClick = btnMeresmodositasClick
          end
          object btnMeres: TButton
            Left = 32
            Top = 48
            Width = 113
            Height = 25
            Caption = 'M'#233'r'#233's'
            TabOrder = 3
            Visible = False
            OnClick = btnMeresClick
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 80
          Width = 790
          Height = 178
          Align = alClient
          DataSource = AF.ForgalomDS
          ReadOnly = True
          TabOrder = 1
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
              Title.Caption = 'D'#225'tum'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Ido'
              Title.Caption = 'Id'#337
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rendszam'
              Title.Caption = 'Rendsz'#225'm'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Irany'
              Title.Caption = 'Ir'#225'ny'
              Width = 20
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tomeg'
              Title.Caption = 'T'#246'meg'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Rendszam2'
              Title.Caption = 'Rendsz'#225'm 2'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Szallitolev'
              Title.Caption = 'Sz'#225'll'#237't'#243'lev'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Kod'
              Title.Caption = 'K'#243'd'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'mjegy'
              Title.Caption = 'M'#233'rlegjegy'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'soap_code'
              Title.Caption = 'Soap'
              Width = 78
              Visible = True
            end>
        end
      end
    end
    object pnlKiskep: TPanel
      Left = 1
      Top = 328
      Width = 798
      Height = 231
      Align = alBottom
      TabOrder = 1
      object ipcamPanel: TPanel
        Left = 1
        Top = 1
        Width = 796
        Height = 229
        Align = alClient
        Caption = 'Kamera nem el'#233'rhet'#337
        TabOrder = 0
        object campagc: TPageControl
          Left = 1
          Top = 1
          Width = 794
          Height = 227
          ActivePage = cam0
          Align = alTop
          TabOrder = 0
          object cam0: TTabSheet
            Caption = 'Kamera 1'
            OnShow = cam1Show
          end
          object cam1: TTabSheet
            Caption = 'Kamera 2'
            ImageIndex = 1
            OnShow = cam1Show
          end
          object cam2: TTabSheet
            Caption = 'Kamera 3'
            ImageIndex = 2
            OnShow = cam1Show
          end
          object cam3: TTabSheet
            Caption = 'Kamera 4'
            ImageIndex = 3
            OnShow = cam1Show
          end
          object cam4: TTabSheet
            Caption = 'Kamera 5'
            ImageIndex = 4
            OnShow = cam1Show
          end
          object cam5: TTabSheet
            Caption = 'Kamera 6'
            ImageIndex = 5
            OnShow = cam1Show
          end
        end
        object btnnagykamkep: TButton
          Left = 1
          Top = 189
          Width = 794
          Height = 39
          Align = alBottom
          Caption = 'NAGY'#205'TOTT N'#201'ZET'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          WordWrap = True
          OnClick = btnnagykamkepClick
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 287
      Width = 798
      Height = 41
      Align = alBottom
      TabOrder = 2
      object btnTorles: TButton
        Left = 32
        Top = 6
        Width = 75
        Height = 25
        Caption = 'T'#246'rl'#233's'
        TabOrder = 0
        OnClick = btnTorlesClick
      end
      object chkToroltek_mutatasa: TCheckBox
        Left = 152
        Top = 6
        Width = 110
        Height = 17
        Caption = 'T'#246'r'#246'ltek mutat'#225'sa'
        TabOrder = 1
        OnClick = chkToroltek_mutatasaClick
      end
    end
  end
  object pnlJobboldal: TPanel
    Left = 800
    Top = 57
    Width = 307
    Height = 560
    Align = alClient
    TabOrder = 2
    object pnlJobbAlso: TPanel
      Left = 1
      Top = 448
      Width = 305
      Height = 111
      Align = alBottom
      TabOrder = 0
      Visible = False
      OnClick = pnlJobbAlsoClick
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
      object btnKamerakep: TButton
        Left = 21
        Top = 81
        Width = 75
        Height = 25
        Caption = 'Kamera k'#233'p'
        TabOrder = 1
        OnClick = btnKamerakepClick
      end
    end
    object pnlJobbFelso: TPanel
      Left = 1
      Top = 1
      Width = 305
      Height = 447
      Align = alClient
      TabOrder = 1
      object pnlFelsokep: TPanel
        Left = 1
        Top = 1
        Width = 303
        Height = 224
        Align = alClient
        TabOrder = 0
        OnResize = pnlFelsokepResize
        DesignSize = (
          303
          224)
        object imgFelsokep: TImage
          Left = 0
          Top = 0
          Width = 105
          Height = 105
          Stretch = True
          OnClick = imgFelsokepClick
        end
        object lblKep1: TLabel
          Left = 4
          Top = 205
          Width = 45
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Nincs k'#233'p'
        end
        object memLog: TMemo
          Left = 184
          Top = 1
          Width = 118
          Height = 222
          Align = alRight
          Lines.Strings = (
            'memLog')
          TabOrder = 0
          Visible = False
        end
        object pnlSzamlalok: TPanel
          Left = 87
          Top = 1
          Width = 97
          Height = 222
          Align = alRight
          TabOrder = 1
          object lblThElo1: TLabel
            Left = 4
            Top = 0
            Width = 42
            Height = 13
            Caption = 'lblThElo1'
            Visible = False
          end
          object lblThElo2: TLabel
            Left = 4
            Top = 19
            Width = 42
            Height = 13
            Caption = 'lblThElo2'
            Visible = False
          end
          object lblThElo3: TLabel
            Left = 4
            Top = 38
            Width = 42
            Height = 13
            Caption = 'lblThElo3'
            Visible = False
          end
          object lblThElo4: TLabel
            Left = 4
            Top = 57
            Width = 42
            Height = 13
            Caption = 'lblThElo4'
            Visible = False
          end
          object lblThRendszam1: TLabel
            Left = 4
            Top = 83
            Width = 77
            Height = 13
            Caption = 'lblThRendszam1'
            Visible = False
          end
          object lblThRendszam2: TLabel
            Left = 4
            Top = 102
            Width = 77
            Height = 13
            Caption = 'lblThRendszam2'
            Visible = False
          end
        end
      end
      object pnlAlsokep: TPanel
        Left = 1
        Top = 225
        Width = 303
        Height = 221
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          303
          221)
        object imgAlsokep: TImage
          Left = 4
          Top = 6
          Width = 105
          Height = 105
          Stretch = True
          OnClick = imgFelsokepClick
        end
        object lblKep2: TLabel
          Left = 1
          Top = 208
          Width = 45
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Nincs k'#233'p'
        end
      end
    end
  end
  object pnlGomobesLedek: TPanel
    Left = 0
    Top = 617
    Width = 1107
    Height = 55
    Align = alBottom
    TabOrder = 3
    object JvLED1: TJvLED
      Left = 37
      Top = 5
      Width = 30
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object lblFelirat1: TLabel
      Left = 16
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat1'
      Visible = False
    end
    object JvLED2: TJvLED
      Left = 96
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object lblFelirat2: TLabel
      Left = 88
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat2'
      Visible = False
    end
    object JvLED3: TJvLED
      Left = 160
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object lblFelirat3: TLabel
      Left = 152
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat3'
      Visible = False
    end
    object JvLED4: TJvLED
      Left = 224
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object lblFelirat4: TLabel
      Left = 216
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat4'
      Visible = False
    end
    object JvLED5: TJvLED
      Left = 301
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object JvLED6: TJvLED
      Left = 360
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object JvLED7: TJvLED
      Left = 424
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object JvLED8: TJvLED
      Left = 488
      Top = 6
      Width = 25
      Height = 25
      Hint = 'Dupla katttint'#225'ssal v'#225'lthat'
      Status = False
      Visible = False
      OnDblClick = JvLED1DblClick
    end
    object lblFelirat8: TLabel
      Left = 480
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat8'
      Visible = False
    end
    object lblFelirat7: TLabel
      Left = 416
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat7'
      Visible = False
    end
    object lblFelirat6: TLabel
      Left = 352
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat6'
      Visible = False
    end
    object lblFelirat5: TLabel
      Left = 280
      Top = 32
      Width = 46
      Height = 13
      Alignment = taCenter
      Caption = 'lblFelirat5'
      Visible = False
    end
    object btn1: TButton
      Left = 532
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btn1'
      TabOrder = 0
      Visible = False
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 613
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btn2'
      TabOrder = 1
      Visible = False
      OnClick = btn1Click
    end
    object btn3: TButton
      Left = 694
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btn3'
      TabOrder = 2
      Visible = False
      OnClick = btn1Click
    end
    object btn4: TButton
      Left = 775
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btn4'
      TabOrder = 3
      Visible = False
      OnClick = btn1Click
    end
    object Panel3: TPanel
      Left = 1064
      Top = 40
      Width = 185
      Height = 41
      Caption = 'Panel3'
      TabOrder = 4
    end
  end
  object pnlFelso: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 57
    Align = alTop
    TabOrder = 4
    DesignSize = (
      1107
      57)
    object sbtnFelhasznalo: TSpeedButton
      Left = 15
      Top = 2
      Width = 58
      Height = 51
      Glyph.Data = {
        42080000424D4208000000000000420000002800000020000000200000000100
        10000300000000080000120B0000120B0000000000000000000000F80000E007
        00001F0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000079047A04BA04BB04BB04DB04DB04DB04
        DB04DB04DB04DB04DB04DB04DB04DB04DB04BB04BB04BA047A04790400000000
        00000000000000000000000000000000FC043D053D053D053D053D053D053D05
        3D053D053D053D053D053D053D053D053D053D053D053D053D05FC0400000000
        000000000000000000000000000000003C057D057D057D057D057D057D057D05
        7D057D057D057D057D057D057D057D057D057D057D057D057D053C0500000000
        000000000000000000000000000000007D0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D
        9E0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D9E0D7D0D00000000
        000000000000000000000000000000009C0DDE0DDE0DDE0DDE0DDE0DDE0DDE0D
        DE0DDE0DDE0DDE0DDE0DDE0DDE0DDE0DDE0DDE0DDE0DDE0DDE0D7C0D00000000
        000000000000000000000000000000007B0DBD0DFE0DFE0DFE0DFE0DFE0DFE0D
        FE0DFE0DFE0DFE0DFE0DFE0DFE0DFE0DFE0DFE0DFE0DFE0DBD0D5B1500000000
        0000000000000000000000000000000000000000BC0DFE0D1E0E3F0E3F0E3F0E
        3F0E3D263A563A563D263F0E3F0E3F0E3F0E3E0EFE0DDD0D0000000000000000
        0000000000000000000000000000000000000000000000001D163E165F165F16
        359E0EFE0EFE0EFE0EFE359E5F165F163E16FD15000000000000000000000000
        000000000000000000000000000000000000000000000000000000003E167F16
        CCF5CCF5CCF5CCF5CCF5CCF57F165E1600000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        2AE54AE54AE54AE54AE52AE50000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        86D4C6DCE6E4E6E4C6DC86D40000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000C6DC
        06ED27F526F526F526F506EDC6DC000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000A6D448ED
        68F568F568F548F547F526F506EDA5DC00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000028ED89F5
        89F589F589F589F568F568F547F5E6E400000000000000000000000000000000
        0000000000000000000000000000000000000000000000002BDD07E5AAF5ABF5
        CBF5CBF5ABF5AAF58AF589F568F527F5E7E42BDD000000000000000000000000
        0000000000000000000000000000000000000000000000006AE569F5CBF5ECFD
        ECFDECFDECFDCCFDCBF5AAF589F568F527ED4AE5000000000000000000000000
        0000000000000000000000000000000000000000000000008BED09E5EDFD0DFE
        0EFE0EFE0EFE0DFEECFDCBF5AAF569F5C7E46AED000000000000000000000000
        0000000000000000000000000000000000000000000000004BE544820EFE2FFE
        4FFE4FFE2FFE2EFE0DFECCFDABF589F543822ADD000000000000000000000000
        0000000000000000000000000000000000000000000000000372447A2EFE50FE
        71FE71FE70FE4FFE0EFEECFDCBF58AF5E271E371000000000000000000000000
        000000000000000000000000000000000000000000000000447A65828BC4EDCC
        10EEB2FE71FE50FE2EFEEDFDCBF587CCC271E271000000000000000000000000
        0000000000000000000000000000000000000000000000006582C68AE7920893
        E892AAA36EDD50FE2EFEEDFDC7B3E379C271C271000000000000000000000000
        000000000000000000000000000000000000000000000000A68AE7922893499B
        499B499B28934BBC0EFEEAD44482037AC271C271000000000000000000000000
        000000000000000000000000000000000000000000000000C78A0893499B6A9B
        8AA38A9B499B289309B4479B6582247AE271C271000000000000000000000000
        000000000000000000000000000000000000000000000000C78A299B6A9BABA3
        CCA3ABA38A9B499B0893A68A6582247AE379A271000000000000000000000000
        000000000000000000000000000000000000000000000000E78A29936A9BCBA3
        EDABCCA38AA3499B0893C78A8582447AE379C271000000000000000000000000
        000000000000000000000000000000000000000000000000000008936A9BABA3
        ABA3ABA36A9B299BE892A68A6582247AE3718261000000000000000000000000
        0000000000000000000000000000000000000000000000000000C99229936A9B
        6A9B6A9B499B0893E792A68A6582247AA2710000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000F82993
        299328930893E78AA68A85820000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = Felhasznlvlts1Click
    end
    object sbtnUjmerlegjegy: TSpeedButton
      Left = 79
      Top = 2
      Width = 146
      Height = 51
      Caption = #218'j m'#233'rlegjegy'
      Glyph.Data = {
        CA130000424DCA13000000000000420000002800000032000000320000000100
        10000300000088130000D8050000D8050000000000000000000000F80000E007
        00001F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5BFFB7F634F613F613F676F619FFBEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBEFF19F796F633F613F654F6B7F65BFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDFF13EEAAE4E5DBA3DBA2DBA1DBA2E3C2E3
        04E467E48FED19F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF1AF78FE587DC04DCE2DBC2DBC1DBE2DBE3E325E4CAE413EE
        9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF96EE47D4A2D3C2DB02DC22DC42E442E4
        63E462E462E442E402E424E48FEDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBDFFAFE524D401D442DC62DC62DC82E482E462E462E442E4
        22E402DC87E496F6FFFFFFFFFFFFFFFFFFFF12E6E2CB02D463DC62DC82DCA2DC
        A2E4C2E4C2E4E2E4E2E4E2E4C3E4A3E442DC09E57CFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9CFF09DD41D4A3DCC3DCC2DCE2DCE2E4E2E4E2E4E2E4
        E2E4C2E4C3E4A3E462DC43DC11EEFFFFFFFFFFFFB5EE62D4A3D4C3DCC2DCE2DC
        02DD02E522E542E542E542E542E542E522E523E523E5A2DC49E5DEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDEFF6ADDC2D423DD22DD22DD22DD42E542E542E5
        42E542E542E522E502E502E5E3DCC3DC62DC74EEFFFFBCFF87DD23DD43DD43DD
        43DD43DD63E563E583E583E583E583E583E583E583E583E563E564E5E3DC72EE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3EE63DDC4E5C3E5C3E5C3E5A3E5A3E5
        A3E5A3E583E583E583E583E563E563E523DD03DDE3DC07DD9CFFF3F682E5A3E5
        A2E5A2E5A2EDC3EDC3EDC3EDE3EDE3EDC3EDC3EDC3EDC3EDA3ED83ED62E542E5
        02E588E5DEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF68EE42EE62F662F663F663F6
        43F623EE03EEE3EDE3EDC3EDA3E583E583E563E542E522DD03DDC3D472EE13FF
        A9FEC9FEEAFEE9FEE8FEE8FEE7FEE7FEE7FE07FFE7FEE7FEE7FEC7FEC7FEC8FE
        A8FE69FE27F60AF69CFFFFFFFFFFFFFFFFFFFFFFFFFFDDFF0CFF08FF29FF29FF
        29FF28FF08FF07FF07FFE7FEE7FEC7FEC7FEA7FE87FE88FE68F649F628F6A7ED
        72F6FFFFB5FFA4FEDAFFFBFFD9FFD9FFB8FFB8FFB8FFB8FFD8FFD8FFD8FFF9FF
        FAFFFBFFFDFFDAFF05FFB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFC6FE
        12FFFDFFBAFFD9FFD8FFD8FFD8FFD8FFD8FFD8FFF8FFD9FFFAFFFAFFFBFFFEFF
        2BFFEBFEFFFFFFFFFDFFA4FE12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF30FFA6FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF4EFF68FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFDBFF42F636F7FFFFFFFFFFFF4FFF66FEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDEFF85FE52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFF43FE58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0EFF47F6DFFFFFFFFFFFFFFFDAFF43F657FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF33FF64F6DDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEAFE6CF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDDFF24F6F3F6FFFFFFFFFFFFFFFFFFFFCAFE4BF6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF47F6EFF6FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6FFE4F59CFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF1FEC5EDBEFFFFFFFFFFFFFFFFFFFFFF96FFC3F5
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF36FF04EEBBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46F671F6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6ED90EEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF26F670F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0AF68CF6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31FF86EDDFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF15FF64E59CFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF11FF65EDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF39FF83E5
        79FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFF
        84ED96F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8ED0DE6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFF63E595F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        EDED09EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF8CF64AE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF38F7C3DC5AF7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6CEE29E5FFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7CFF03DD36F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF98FFC3DC1AF7FFFFFFFFFFFFFFFFFFFFFFFFFFFF8BE56ADD
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF98FFA2DCF9F6FFFFFFFFFFFF
        FFFFFFFFFFFFD0ED46DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF87E54EE5FFFFFFFFFFFFFFFFFFFFFFFF5AFF
        43D4D7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88E54DE5FFFF
        FFFFFFFFFFFFFFFF9EFFA5DCB3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF13F744D47DFFFFFFFFFFFFFFFFFF
        FFFF8EE5A7D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14F7
        64DC7DFFFFFFFFFFFFFFFFFF13EEE5DCDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFC5DCD3E5FFFFFFFF
        FFFFFFFF9DFF24CC74E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFF05E5F2EDFFFFFFFFFFFFDFFFC7DC50EEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FF667D4
        FFFFFFFFFFFFFFFF12EE66CCDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF8FF686DCDFFFFFFFFFFF76EEA4DCBCFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BBFF43D478EEFFFFFFFFFFFF65D4F2E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFBBFFA3DC77EEFFFFFFFFE9DC0DE6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFABEDCCDCFFFFFFFF74EE24CC7DF7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBEDEBDCFFFFD9F683D47AF7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF57FF04D41BF7FFFFA8D48EDDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6A3C35DF72DDD6BDD
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DC71DD19F7E3CB3AF7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09C4EBBB
        86BB97EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2F647D46ACC0DD5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8F6ABDCCCDCEDDC91E5
        4CD400898AB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF66BB6089AECC
        71DDCDD4ACD46BCCD9EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEED60DCA1DC
        61DC40D442D4C2CBC6CBD3E57DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFF92E544BB
        42BB81C380C3A1C3C1CB40C34FDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AFF
        AFF68FF68EF66CF6E9F585EDE2E401D406D436EEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF35EEE5CB
        A1CB43D4A5DC28DDABE5EDED0EEEEEED3AF7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFFBCFF57FF8FFEC7EDE2E4E1D3CDDC9EFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9DFFECDC
        A1CB22D4E6DCCEEDF6F69CFFDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AFF6DF664ED41DC06D4
        98EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97EE
        06D4E1CB84D48BE518F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF13FF
        C7F5C2E4E2D30FDD7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7DFF
        2EDDC2CB42D4E6DC52EEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF79FF4CF644ED41DCE5D351E5FBF6DFFFDFFF56EE97EEFFFFFFFFFAF6
        50E505D4E1D3A4DC6AE518F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDEFFF2FEE8F503E521DCC3D309D429DDC1D401CC29C4
        C9C3C3D3E1D383DC27E531EEBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BFFB1FE0AF666EDC2E4E0ED23EE
        C3E5A1C382C325E569ED30F65AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCFF37FFF3FE
        EBFE66F625EECAE572F616FF9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFF30FFCEF69BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbtnUjmerlegjegyClick
    end
    object sbtnFolytatas: TSpeedButton
      Left = 231
      Top = 2
      Width = 153
      Height = 51
      Caption = 'M'#233'rlegjegy folytat'#225'sa'
      Glyph.Data = {
        CA130000424DCA13000000000000420000002800000032000000320000000100
        100003000000881300008905000089050000000000000000000000F80000E007
        00001F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0D630D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0D6348224922ED62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0D630822345655562822EC62FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0D6348223456F455D355555E2822ED62FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63482234563456ED3BB044955E2822
        0D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D6308223456F4554C33
        D044955E2822ED62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D632822
        355614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0D632822345614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0D632822345614564C33D044955E2822EC62FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63081A345614564C33D044955E2822EC62
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D6B2822345634564C33D044
        955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBEF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF7
        9EF79EF79EF79EF79EF79EF79EF79EF79EF79EF77EF79EF7BEF7AB5A4822F455
        14564C33B044755E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFBEF709428729A729A729A729A729A729A729A729A729A729
        A729A729A729A729A729A729A729A729A729A729A729A729A7298729C731C831
        E5182E3C7556F4556C3B724D555628220D63FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9EF787295145B34D924D924D924D924D924D924D
        924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D
        924D924DB355F355F45514561456B355145655562822EC62FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF7A729B34D34561456145614561456
        1456145614561456145614561456145614561456145614561456145614561456
        145614561456145614561456F455F455F4551456B34D724D555E48220D63FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF7A729B34D345614561456
        1456145614561456145614561456145614561456145614561456145614561456
        14561456145614561456145614561456F455F455F4553456EE3BF044755E4822
        0D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EF787295145B34D
        924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D924D
        924D924D924D924D924D924D924D924DB355F355F4551456D355524DF4553556
        2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEF70942
        8729A729A729A729A729A729A729A729A729A729A729A729A729A729A729A729
        A729A729A729A729A729A729A7298729C731C831E4182E445556D3556C33F14C
        755E28220D63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBEF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF79EF7
        9EF79EF79EF79EF79EF79EF79EF79EF77EF79EF7BEF7AB5A4822D3553456524D
        F14C755E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D6B282214565556
        F3553456555E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63081A3456
        F3559044145634562822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D630822
        345614564C33B044555E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D63
        0822345614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0D632822355614564C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0D6308223456F4554C33D044955E2822EC62FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0D63482234563456EE3BB044955E28220D63FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0D6348223456F455D355555E2822ED62FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0D630822345655562822EC62FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D6348224922ED62FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0D630D63FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = sbtnUjmerlegjegyClick
    end
    object sbtnLista: TSpeedButton
      Left = 396
      Top = 2
      Width = 129
      Height = 51
      Caption = 'M'#233'r'#233'sek list'#225'ja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        CA130000424DCA13000000000000420000002800000032000000320000000100
        10000300000088130000D8050000D8050000000000000000000000F80000E007
        00001F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7AC63264D153D153D153D153F153F153F15BF15B
        F15BF15BF25BF25BF25BF25B125C125C125C1264126412641264126412641264
        1264126412641264126496641AAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCE521B310B311331133113311331133213
        3213321332133213321331133113311311131113111311131113F112F112F112
        F112D012D012D012B012AF121313B71BB61B7CB6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB85160C7724571C571C771C571C
        571C571C571C571C571C571C571C571C571C371C371C371C571C371C371C161C
        161C161C161C161CF61BF61BF61BF61BB62396237613F864FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B76D914F924F91CF91C
        F91CF91CF91C191D191D191D191D191D191D191DF91CF91CF91CD91CB91CB81C
        D91CD91CD91CD91CB924981C781C781C581C581C96235523761B5744DFF7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C6E5A157A25
        7A1D7A1D7A1D7A1D9B25B41B9012D112D112D112D112D112D112D112B012971C
        5A1D5A25F51B9012B012B0129012F51B1A25D91CD924D924752334237523373C
        BFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D66
        BB15DB25DB25DB1DBB25BB1DDB2550124C098D116C116C096C096C096C096C09
        2B09771CBB25BB25D1120A094B094B09EA08731B9B251A251A251A25551BF41A
        341B163CDFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9D66FC15FC25FC25FC25FC25FC251C26971C161C361C161C161C151C151C
        151CF51BF51B9A25DB25DB25971CB41BD41BB41B941BF91C9B257A257A253A1D
        9B753CAE1C9EBDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBD661C1E3C263C263C263C261C261C265D265D265D265D265D26
        5D265D265D263D263D26FC25DC25DB251C261C261C261C26FC25DB259B259B25
        BB253A1DDDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDD663C1E5C265C263C263C263C263C263C261C261C26
        1C261C261C261C261C261C261C261C261C261C26FC25FC25DB25DB25DB25DB25
        DB25BB25DB257B1DBDAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE665D1E7D267D267D269D269D267D267D26
        7D267D267D267D267D265D265C263C263C263C263C263C261C261C261C263C26
        1C26FC25FC25FC25FC259B1DDDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE667D1E9D269D263C1EFB1DFC1D
        FC1DFC1DFB25FB25FB25FB25FB251C267D265D265D265D265D263C263C263C26
        FC25BB25DB251C261C26FC251C26BB1DDDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E679D1E9D26BE26B51B
        7212B212B212B212B212B2129212B2129212F3123C267D267D267D265D265D26
        5D267D26741B5112511239255D261C263C26DB1DFDB6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E67BE16BE26
        DE26F61BF31214131413F312F312F312F31AF31AD31A341B5D269D267D267D26
        7D267D265D269D26941B711251125A1D7D263C263C26FC1DFDB6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E67
        BE1EDE26DE26BD267D267D267D267D267D267D1E5D1E5D1E5D267D269D269D26
        9D269D269D269D267D267D263C26FB25FC255D265D265D265D26FC1DFDB6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF3E67DE1EDE26DE26FE26FE261E27FE26FE26FE26FE26FE26FE26FE26FE26
        DE26DE26DE26BE269D269D269D269D26BE26DE26DE269D267D267D267D261C1E
        FEB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3F67FE16FE261E1FB81CD61BF71BF71BF71BF71BF71BF71BF61B
        F61BF61BF61BF61B371C7D26DE26BE269D26BE26981CB51BD51BFC25BD267D26
        7D263C1E1EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5F67FE1E1E271E27B61BB412F412D412D412D412D412
        B412B412B312B312B3129312B31A5D26FE26BE26BE26DE26751B311231127A25
        DE267D269D263D161EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5F671F1F1F271F275D26DC1DFC1DDC1DDB1D
        DB25DB25DB25BB25BB25BB1DBB1DBB1DDB25DE26DE26DE26DE26DE26DB253A25
        5A1D7D1EBE269D26BD265D1E1EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F671F1F3F2F1F279F27BF279F27
        9F279F279F279F279F279F279F277F273F273F273F27FE1EFE1EFE26DE26DE26
        3F275F275F27DE26BE1EBE1EBE267D1E3EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F673F273F373F2FDC25
        3A1D5A1D5A1D5A1D5A255A255A1D5A1D5A1D9B1DFE26FE26FE261E27FE26FE26
        FE1EFE26DB25191D3A1D7D26DE26BE26DE267D163EB7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F3F2F3F37
        3F2FD71B151336133513351315131513151B151BF51A351BDE263F271F271E27
        1E271E27FE263F27D61B731273129B251F27BE26DE269D1E3EB7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F
        3F2F3F375F37BB253A255A253A253A1D3A1D3A253A1D1A1DFA1C3A1D1E1F3F27
        1F271F271F271F271E273F277B1D981C981C5D1E1E1FDE26FE269D1E3EB7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F6F3F2F5F3F5F379F37BF3FBF37BF37BF37BF2FBF2FBF2FBF2F9F2F9F2F
        7F2F5F2F5F2F3F2F3F2F3F271F271F275F277F277F271F27FE26FE1EFE26BE1E
        3EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7F775F375F3F5F3FBE367D367D2E7D2E7D2E7D2E7D2E7D2E7D2E
        7D2E7D2E7D2E7D2E9D2E3F2F3F2F3F2F3F273F27BE265D265D1EFE261E27FE26
        1E27BE163EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F775F375F3F5F3F791CD713F813F813F713F713D71B
        D71BD71BD713B71BB71BB71BB713BE2E5F373F2F1F2F5F2F991C35133513FC1D
        5F27FE261E2FDE1E5EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F5F3F7F477F477B25FA1CFA1CFA24DA24
        D924D924D924B91CB91C991C991C991C791CDE2E5F373F373F375F373A25F71B
        F71B3C263F27FE2E1F2FDE1E3EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F7F477F4F7F4F7F4F7F4F7F47
        7F477F477F3F7F3F7F3F5F3F5F3F5F3F5F3F5F3F5F3F5F3F5F373F373F373F37
        3F2F1F2F1E2F3F2F1F2F1F2F1F2FDE265EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F877F4F7F577F4F7F4F
        7F4F7F4F7F4F7F4F7F4F7F477F477F477F477F3F7F3F5F3F5F3F5F3F5F3F5F37
        5F373F373F373F373F373F373E371F371F37DE265EB7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F877F579F5F
        9F577F577F577F577F577F577F4F7F4F7F4F7F4F7F4F7F4F7F475F475F475F47
        5F3F5F3F5F3F3F3F3F3F3F3F3F3F3F3F3F371F373F37DE265EB7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F
        9F5F9F679F5F9F5F9F5F9F5F7F579F579F577F577F577F4F7F4F7F4F7F4F7F4F
        5F4F5F475F475F475F475F473F473F3F3F3F3F3F3F3F3F373F3FDE2E5EB7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBF8F9F5F9F679F67BF67BF67BF67BF67BF679F5F9F5F9F5F9F5F9F579F57
        9F579F4F9F4F9F4F7F4F7F4F7F477F477F475F475F475F3F3F3F3F3F3F3FDE2E
        5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBF979F67BF6F9F6F3C36DC2DDC2DDC2DDC2DBC2DBB2DBB2DBB2D
        9B2D9B2D9B2D7B2D7B257B255B255B253A253A253A251A25FA247D367F473F47
        3F47FE365EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBF9FBF6FBF779F6FBB255B1D5B1D5B1D5B1D5B1D3B1D
        3A1D1A1D1A1DFA1CFA1CFA1CDA1CD91CB91CB91C991C991C791C791C1814FC35
        7F4F3F473F4FFE365EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FBF77DF7FBF77DC257B159B157B157B15
        5B155B155B153A1D3A151A151A15FA14FA14DA14DA14B914B91499149914991C
        3814FC357F4F3F475F4FFE3E5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA7DF7FDF87DF873E67FE56FE5E
        FE56FE56FE56DE56DE56DD56DD4EBD4EBD4EBD4E9D4E9D4E9D4E7D467D467D46
        5D465D3E3D3EFE4E7F573F575F57FE465EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFDF87DF8FDF87FF8F
        FF8FFF8FFF8FFF87FF87FF87FF87DF7FDF7FDF7FDF77DF77DF77DF77BF6FBF6F
        BF6FBF67BF679F679F677F5F5F575F575F57FE465EBFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDF8FDF97
        DF8FDF8FDF8FDF8FDF87DF87DF87DF87BF7FBF7FBF7FBF7FBF77BF779F779F77
        9F6F9F6F7F6F7F677F677F675F675F5F5F5F5F5F7F5FFE4E5EBFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7
        FF97FF97FF97FF9FFF97DF97DF8FFF97DF8FDF87DF87DF87DF8FBF7FBF7FBF7F
        BF7FBF7F9F779F779F6F9F6F7F677F6F7F677F677F675F5F5F5F1F4F5EBFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFFFAFFF9FFFCFFFFFFFC7FF97FFAFFFEFFFE7FF9FDF8FFFC7FFF7FFB7
        DF7FDF97FFE7FFD7BF87BF77DFB7FFEFBF9F9F679F7FFFDFDFC77F6F5F5FBFB7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFFFFFE7FFF7FFFFFFFFFFEFFFE7FFFF
        FFFFFFFFFFDFFFF7FFFFFFFFFFE7FFD7FFFFFFFFFFF7FFCFFFEFFFFFFFFFFFDF
        DFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = Mrlegjegyeklistja1Click
    end
    object sbtnSorszamhivas: TSpeedButton
      Left = 603
      Top = 2
      Width = 84
      Height = 51
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        CA130000424DCA13000000000000420000002800000032000000320000000100
        10000300000088130000D8050000D8050000000000000000000000F80000E007
        00001F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7AC63264D153D153D153D153F153F153F15BF15B
        F15BF15BF25BF25BF25BF25B125C125C125C1264126412641264126412641264
        1264126412641264126496641AAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCE521B310B311331133113311331133213
        3213321332133213321331133113311311131113111311131113F112F112F112
        F112D012D012D012B012AF121313B71BB61B7CB6FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB85160C7724571C571C771C571C
        571C571C571C571C571C571C571C571C571C371C371C371C571C371C371C161C
        161C161C161C161CF61BF61BF61BF61BB62396237613F864FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B76D914F924F91CF91C
        F91CF91CF91C191D191D191D191D191D191D191DF91CF91CF91CD91CB91CB81C
        D91CD91CD91CD91CB924981C781C781C581C581C96235523761B5744DFF7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C6E5A157A25
        7A1D7A1D7A1D7A1D9B25B41B9012D112D112D112D112D112D112D112B012971C
        5A1D5A25F51B9012B012B0129012F51B1A25D91CD924D924752334237523373C
        BFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7D66
        BB15DB25DB25DB1DBB25BB1DDB2550124C098D116C116C096C096C096C096C09
        2B09771CBB25BB25D1120A094B094B09EA08731B9B251A251A251A25551BF41A
        341B163CDFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9D66FC15FC25FC25FC25FC25FC251C26971C161C361C161C161C151C151C
        151CF51BF51B9A25DB25DB25971CB41BD41BB41B941BF91C9B257A257A253A1D
        9B753CAE1C9EBDBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBD661C1E3C263C263C263C261C261C265D265D265D265D265D26
        5D265D265D263D263D26FC25DC25DB251C261C261C261C26FC25DB259B259B25
        BB253A1DDDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDD663C1E5C265C263C263C263C263C263C261C261C26
        1C261C261C261C261C261C261C261C261C261C26FC25FC25DB25DB25DB25DB25
        DB25BB25DB257B1DBDAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE665D1E7D267D267D269D269D267D267D26
        7D267D267D267D267D265D265C263C263C263C263C263C261C261C261C263C26
        1C26FC25FC25FC25FC259B1DDDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE667D1E9D269D263C1EFB1DFC1D
        FC1DFC1DFB25FB25FB25FB25FB251C267D265D265D265D265D263C263C263C26
        FC25BB25DB251C261C26FC251C26BB1DDDB6FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E679D1E9D26BE26B51B
        7212B212B212B212B212B2129212B2129212F3123C267D267D267D265D265D26
        5D267D26741B5112511239255D261C263C26DB1DFDB6FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E67BE16BE26
        DE26F61BF31214131413F312F312F312F31AF31AD31A341B5D269D267D267D26
        7D267D265D269D26941B711251125A1D7D263C263C26FC1DFDB6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E67
        BE1EDE26DE26BD267D267D267D267D267D267D1E5D1E5D1E5D267D269D269D26
        9D269D269D269D267D267D263C26FB25FC255D265D265D265D26FC1DFDB6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF3E67DE1EDE26DE26FE26FE261E27FE26FE26FE26FE26FE26FE26FE26FE26
        DE26DE26DE26BE269D269D269D269D26BE26DE26DE269D267D267D267D261C1E
        FEB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3F67FE16FE261E1FB81CD61BF71BF71BF71BF71BF71BF71BF61B
        F61BF61BF61BF61B371C7D26DE26BE269D26BE26981CB51BD51BFC25BD267D26
        7D263C1E1EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5F67FE1E1E271E27B61BB412F412D412D412D412D412
        B412B412B312B312B3129312B31A5D26FE26BE26BE26DE26751B311231127A25
        DE267D269D263D161EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF5F671F1F1F271F275D26DC1DFC1DDC1DDB1D
        DB25DB25DB25BB25BB25BB1DBB1DBB1DDB25DE26DE26DE26DE26DE26DB253A25
        5A1D7D1EBE269D26BD265D1E1EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F671F1F3F2F1F279F27BF279F27
        9F279F279F279F279F279F279F277F273F273F273F27FE1EFE1EFE26DE26DE26
        3F275F275F27DE26BE1EBE1EBE267D1E3EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F673F273F373F2FDC25
        3A1D5A1D5A1D5A1D5A255A255A1D5A1D5A1D9B1DFE26FE26FE261E27FE26FE26
        FE1EFE26DB25191D3A1D7D26DE26BE26DE267D163EB7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F3F2F3F37
        3F2FD71B151336133513351315131513151B151BF51A351BDE263F271F271E27
        1E271E27FE263F27D61B731273129B251F27BE26DE269D1E3EB7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F
        3F2F3F375F37BB253A255A253A253A1D3A1D3A253A1D1A1DFA1C3A1D1E1F3F27
        1F271F271F271F271E273F277B1D981C981C5D1E1E1FDE26FE269D1E3EB7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF7F6F3F2F5F3F5F379F37BF3FBF37BF37BF37BF2FBF2FBF2FBF2F9F2F9F2F
        7F2F5F2F5F2F3F2F3F2F3F271F271F275F277F277F271F27FE26FE1EFE26BE1E
        3EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF7F775F375F3F5F3FBE367D367D2E7D2E7D2E7D2E7D2E7D2E7D2E
        7D2E7D2E7D2E7D2E9D2E3F2F3F2F3F2F3F273F27BE265D265D1EFE261E27FE26
        1E27BE163EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F775F375F3F5F3F791CD713F813F813F713F713D71B
        D71BD71BD713B71BB71BB71BB713BE2E5F373F2F1F2F5F2F991C35133513FC1D
        5F27FE261E2FDE1E5EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F5F3F7F477F477B25FA1CFA1CFA24DA24
        D924D924D924B91CB91C991C991C991C791CDE2E5F373F373F375F373A25F71B
        F71B3C263F27FE2E1F2FDE1E3EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F7F477F4F7F4F7F4F7F4F7F47
        7F477F477F3F7F3F7F3F5F3F5F3F5F3F5F3F5F3F5F3F5F3F5F373F373F373F37
        3F2F1F2F1E2F3F2F1F2F1F2F1F2FDE265EB7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F877F4F7F577F4F7F4F
        7F4F7F4F7F4F7F4F7F4F7F477F477F477F477F3F7F3F5F3F5F3F5F3F5F3F5F37
        5F373F373F373F373F373F373E371F371F37DE265EB7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F877F579F5F
        9F577F577F577F577F577F577F4F7F4F7F4F7F4F7F4F7F4F7F475F475F475F47
        5F3F5F3F5F3F3F3F3F3F3F3F3F3F3F3F3F371F373F37DE265EB7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F
        9F5F9F679F5F9F5F9F5F9F5F7F579F579F577F577F577F4F7F4F7F4F7F4F7F4F
        5F4F5F475F475F475F475F473F473F3F3F3F3F3F3F3F3F373F3FDE2E5EB7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBF8F9F5F9F679F67BF67BF67BF67BF67BF679F5F9F5F9F5F9F5F9F579F57
        9F579F4F9F4F9F4F7F4F7F4F7F477F477F475F475F475F3F3F3F3F3F3F3FDE2E
        5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBF979F67BF6F9F6F3C36DC2DDC2DDC2DDC2DBC2DBB2DBB2DBB2D
        9B2D9B2D9B2D7B2D7B257B255B255B253A253A253A251A25FA247D367F473F47
        3F47FE365EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBF9FBF6FBF779F6FBB255B1D5B1D5B1D5B1D5B1D3B1D
        3A1D1A1D1A1DFA1CFA1CFA1CDA1CD91CB91CB91C991C991C791C791C1814FC35
        7F4F3F473F4FFE365EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FBF77DF7FBF77DC257B159B157B157B15
        5B155B155B153A1D3A151A151A15FA14FA14DA14DA14B914B91499149914991C
        3814FC357F4F3F475F4FFE3E5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFA7DF7FDF87DF873E67FE56FE5E
        FE56FE56FE56DE56DE56DD56DD4EBD4EBD4EBD4E9D4E9D4E9D4E7D467D467D46
        5D465D3E3D3EFE4E7F573F575F57FE465EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAFDF87DF8FDF87FF8F
        FF8FFF8FFF8FFF87FF87FF87FF87DF7FDF7FDF7FDF77DF77DF77DF77BF6FBF6F
        BF6FBF67BF679F679F677F5F5F575F575F57FE465EBFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDF8FDF97
        DF8FDF8FDF8FDF8FDF87DF87DF87DF87BF7FBF7FBF7FBF7FBF77BF779F779F77
        9F6F9F6F7F6F7F677F677F675F675F5F5F5F5F5F7F5FFE4E5EBFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7
        FF97FF97FF97FF9FFF97DF97DF8FFF97DF8FDF87DF87DF87DF8FBF7FBF7FBF7F
        BF7FBF7F9F779F779F6F9F6F7F677F6F7F677F677F675F5F5F5F1F4F5EBFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFFFAFFF9FFFCFFFFFFFC7FF97FFAFFFEFFFE7FF9FDF8FFFC7FFF7FFB7
        DF7FDF97FFE7FFD7BF87BF77DFB7FFEFBF9F9F679F7FFFDFDFC77F6F5F5FBFB7
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7FFEFFFFFFFFFFFFFFFE7FFF7FFFFFFFFFFEFFFE7FFFF
        FFFFFFFFFFDFFFF7FFFFFFFFFFE7FFD7FFFFFFFFFFF7FFCFFFEFFFFFFFFFFFDF
        DFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = sbtnSorszamhivasClick
    end
    object btnnyelv: TButton
      Left = 709
      Top = 17
      Width = 116
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Nyelv/Language'
      TabOrder = 0
      Visible = False
      OnClick = btnnyelvClick
    end
    object siLangCombo1: TsiLangCombo
      Left = 872
      Top = 16
      Width = 145
      Height = 25
      ItemHeight = 19
      TabOrder = 1
      OnChange = siLangCombo1Change
      siLang = siLang_FoF
      siLangDispatcher = siLangDispatcher1
      LanguageInfos = <
        item
          FontName = 'Segoe UI'
          FontCharset = DEFAULT_CHARSET
        end
        item
          FontName = 'Segoe UI'
          FontCharset = DEFAULT_CHARSET
        end
        item
          FontName = 'Segoe UI'
          FontCharset = DEFAULT_CHARSET
        end>
      ChangeLanguage = True
    end
  end
  object MainMenu1: TMainMenu
    Tag = 100
    Left = 400
    Top = 104
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
        OnClick = pusok1Click
      end
      object rolk1: TMenuItem
        Caption = 'T'#225'rol'#243'k'
        OnClick = rolk1Click
      end
      object Mrlegkezelk1: TMenuItem
        Caption = 'M'#233'rlegkezel'#337'k'
        OnClick = Mrlegkezelk1Click
      end
      object Antheratrzsimport1: TMenuItem
        Tag = 100
        Caption = 'Anthera t'#246'rzs import'
        OnClick = Antheratrzsimport1Click
      end
      object tomeg_levon_szovegek_m: TMenuItem
        Caption = 'T'#246'meg levon'#225'si sz'#246'vegek'
        OnClick = tomeg_levon_szovegek_mClick
      end
      object Djak1: TMenuItem
        Caption = 'Alap d'#237'jak'
        OnClick = Djak1Click
      end
      object Djszabsikategrik1: TMenuItem
        Caption = 'D'#237'jszab'#225'si kateg'#243'ri'#225'k'
        OnClick = Djszabsikategrik1Click
      end
      object Gngylegek1: TMenuItem
        Caption = 'G'#246'ngy'#246'legek'
        OnClick = Gngylegek1Click
      end
      object kartyak_m: TMenuItem
        Caption = 'K'#225'rty'#225'k'
        OnClick = kartyak_mClick
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
      object Mrlegelseklistja1: TMenuItem
        Caption = 'M'#233'rlegel'#233'sek list'#225'ja'
        OnClick = Mrlegelseklistja1Click
      end
      object mozgasok_m: TMenuItem
        Caption = 'Mozg'#225'sok list'#225'ja'
        OnClick = mozgasok_mClick
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
        object Import1: TMenuItem
          Caption = 'Import'
          OnClick = Import1Click
        end
      end
      object Hardverbelltsok1: TMenuItem
        Caption = 'Hardver be'#225'll'#237't'#225'sok'
        object Alaphardveresbelltsok1: TMenuItem
          Caption = 'Alap hardveres be'#225'll'#237't'#225'sok'
          OnClick = Alaphardveresbelltsok1Click
        end
        object Sorosportbellts1: TMenuItem
          Caption = 'Soros port be'#225'll'#237't'#225's'
          OnClick = Sorosportbellts1Click
        end
        object PLCsorosportbellts1: TMenuItem
          Caption = 'PLC soros port be'#225'll'#237't'#225's'
          OnClick = PLCsorosportbellts1Click
        end
      end
      object mnSzablyosmrlegentartozkodsfigyels1: TMenuItem
        Caption = 'Szab'#225'lyosm'#233'rlegen tartozkod'#225's figyel'#233's (INFRA5,INFRA6)'
        OnClick = mnSzablyosmrlegentartozkodsfigyels1Click
      end
      object Sorompnyitinfrahiba1: TMenuItem
        Caption = 'BE Soromp'#243' nyit'#243' infra hiba'
        OnClick = Sorompnyitinfrahiba1Click
      end
      object KISorompnyitinfrahiba1: TMenuItem
        Caption = 'KI Soromp'#243' nyit'#243' infra hiba'
        OnClick = KISorompnyitinfrahiba1Click
      end
      object teszt_m: TMenuItem
        Caption = 'Teszt'
        Visible = False
        OnClick = teszt_mClick
      end
    end
    object Kpek1: TMenuItem
      Caption = 'K'#233'pek'
      Visible = False
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
    Top = 200
  end
  object kapcsfriss: TTimer
    Enabled = False
    Interval = 600000
    OnTimer = kapcsfrissTimer
    Left = 347
    Top = 194
  end
  object IdIcmpClient1: TIdIcmpClient
    Protocol = 1
    ProtocolIPv6 = 58
    PacketSize = 64
    Left = 649
    Top = 256
  end
  object mcIOmodul: TIdModBusClient
    ConnectTimeout = 0
    OnResponseError = mcIOmodulResponseError
    Left = 721
    Top = 200
  end
  object tmrElokep: TTimer
    Enabled = False
    OnTimer = tmrElokepTimer
    Left = 713
    Top = 256
  end
  object tmrKep_Masolas: TTimer
    Interval = 60000
    OnTimer = tmrKep_MasolasTimer
    Left = 344
    Top = 265
  end
  object tmrKijelzo_Torles: TTimer
    Enabled = False
    Interval = 600000
    OnTimer = tmrKijelzo_TorlesTimer
    Left = 445
    Top = 268
  end
  object SOAPAllapottmr: TTimer
    Enabled = False
    OnTimer = SOAPAllapottmrTimer
    Left = 544
    Top = 360
  end
  object tmrForgalom_frissites: TTimer
    Enabled = False
    OnTimer = tmrForgalom_frissitesTimer
    Left = 229
    Top = 196
  end
  object JvFormStorage1: TJvFormStorage
    AppStorage = IniFile
    AppStoragePath = '%FORM_NAME%\'
    StoredValues = <>
    Left = 657
    Top = 360
  end
  object IniFile: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    SubStorages = <>
    Left = 432
    Top = 352
  end
  object moxaTeszttmr: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = moxaTeszttmrTimer
    Left = 361
    Top = 320
  end
  object csRelayDroid: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 80
    OnRead = csRelayDroidRead
    Left = 677
    Top = 138
  end
  object siLangDispatcher1: TsiLangDispatcher
    ActiveLanguage = 1
    NumOfLanguages = 3
    LangNames.Strings = (
      'Hungarian'
      'English'
      'Romanian')
    Language = 'Hungarian'
    GlobalExclusionList.Strings = (
      '!TVirtualImageListItem.CollectionName'
      '!TVirtualImageList.DisabledSuffix')
    Left = 128
    Top = 136
  end
  object siLang_FoF: TsiLang
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    StoreAsUTF8 = True
    NumOfLanguages = 3
    LangDispatcher = siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Hungarian'
      'English'
      'Romanian')
    Language = 'Hungarian'
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 40
    Top = 136
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A00540046006F0046000100570069006E0070006F0072007400
      61000100570069006E0070006F007200740061000100570069006E0070006F00
      72007400610001000D000A0061006C0061007000620065005F006D0001004100
      6C0061007000200062006500E1006C006C00ED007400E10073006F006B000100
      420061007300690063002000730065007400740069006E006700730001005300
      650074000301720069002000640065002000620061007A00030101000D000A00
      41006C0061007000680061007200640076006500720065007300620065006C00
      6C00740073006F006B003100010041006C006100700020006800610072006400
      76006500720065007300200062006500E1006C006C00ED007400E10073006F00
      6B00010042006100730069006300200068006100720064007700610072006500
      2000730065007400740069006E00670073000100530065007400030172006900
      2000680061007200640077006100720065002000640065002000620061007A00
      030101000D000A0041006E0074006800650072006100740072007A0073006900
      6D0070006F00720074003100010041006E007400680065007200610020007400
      F60072007A007300200069006D0070006F0072007400010041006E0074006800
      65007200610020006D0061007300740065007200200064006100740061002000
      69006D0070006F0072007400010049006D0070006F0072007400200064006100
      740065002000640065002000620061007A000301200041006E00740068006500
      7200610001000D000A0041006E007900610067006F006B003100010054006500
      72006D00E9006B0065006B000100500072006F00640075006300740073000100
      500072006F00640075007300650001000D000A00420065006C006C0074007300
      6F006B003100010042006500E1006C006C00ED007400E10073006F006B000100
      530065007400740069006E006700730001005300650074000301720069000100
      0D000A00620074006E0031000100620074006E0031000100620074006E003100
      0100620074006E00310001000D000A00620074006E0032000100620074006E00
      32000100620074006E0032000100620074006E00320001000D000A0062007400
      6E0033000100620074006E0033000100620074006E0033000100620074006E00
      330001000D000A00620074006E0034000100620074006E003400010062007400
      6E0034000100620074006E00340001000D000A00620074006E0045006C007300
      6F00010045006C0073005101200067006F006D00620001004600690072007300
      7400200062007500740074006F006E0001005000720069006D0075006C002000
      6200750074006F006E0001000D000A00620074006E004B0061006D0065007200
      61006B006500700001004B0061006D0065007200610020006B00E90070000100
      430061006D00650072006100200069006D00610067006500010049006D006100
      670069006E0065002000630061006D0065007200030101000D000A0062007400
      6E004D00650072006500730001004D00E9007200E90073000100570065006900
      6700680069006E00670001004300E2006E007400030172006900720065000100
      0D000A00620074006E004D0065007200650073006D006F0064006F0073006900
      74006100730001004D00E9007200E900730020006D00F30064006F007300ED00
      7400E100730001004D006F006400690066007900200077006500690067006800
      69006E00670001004D006F006400690066006900630061007200650020006300
      E2006E0074000301720069007200650001000D000A00620074006E006E006100
      670079006B0061006D006B006500700001004E00410047005900CD0054004F00
      5400540020004E00C9005A004500540001005A004F004F004D00450044002000
      5600490045005700010056004500440045005200450020004D00020152004900
      5400020101000D000A00620074006E0054006F0072006C006500730001005400
      F60072006C00E90073000100440065006C006500740065000100180274006500
      7200670065007200650001000D000A00620074006E006E00790065006C007600
      01004E00790065006C0076002F004C0061006E00670075006100670065000100
      4C0061006E006700750061006700650001004C0069006D006200030101000D00
      0A00630061006D00300001004B0061006D006500720061002000310001004300
      61006D00650072006100200031000100430061006D0065007200610020003100
      01000D000A00630061006D00310001004B0061006D0065007200610020003200
      0100430061006D00650072006100200032000100430061006D00650072006100
      2000320001000D000A00630061006D00320001004B0061006D00650072006100
      200033000100430061006D00650072006100200033000100430061006D006500
      720061002000330001000D000A00630061006D00330001004B0061006D006500
      72006100200034000100430061006D0065007200610020003400010043006100
      6D006500720061002000340001000D000A00630061006D00340001004B006100
      6D00650072006100200035000100430061006D00650072006100200035000100
      430061006D006500720061002000350001000D000A00630061006D0035000100
      4B0061006D00650072006100200036000100430061006D006500720061002000
      36000100430061006D006500720061002000360001000D000A00630068006B00
      54006F0072006F006C00740065006B005F006D00750074006100740061007300
      610001005400F6007200F6006C00740065006B0020006D007500740061007400
      E100730061000100530068006F0077002000640065006C006500740065006400
      0100410066006900190261007200650020001902740065007200730065000100
      0D000A0044006A0061006B003100010041006C006100700020006400ED006A00
      61006B0001004200610073006900630020006600650065007300010054006100
      72006900660065002000640065002000620061007A00030101000D000A004400
      6A0073007A0061006200730069006B006100740065006700720069006B003100
      01004400ED006A0073007A0061006200E1007300690020006B00610074006500
      6700F30072006900E1006B000100500072006900630069006E00670020006300
      61007400650067006F0072006900650073000100430061007400650067006F00
      7200690069002000640065002000740061007200690066006100720065000100
      0D000A00460065006C006800610073007A006E006C006B003100010046006500
      6C006800610073007A006E00E1006C00F3006B00010055007300650072007300
      01005500740069006C0069007A00610074006F007200690001000D000A004600
      65006C006800610073007A006E006C006B006B0061007200620061006E007400
      6100720074007300610031000100460065006C006800610073007A006E00E100
      6C00F3006B0020006B0061007200620061006E007400610072007400E1007300
      61000100550073006500720020006D00610069006E00740065006E0061006E00
      630065000100CE006E007400720065001B0269006E0065007200650020007500
      740069006C0069007A00610074006F007200690001000D000A00460065006C00
      6800610073007A006E006C0076006C007400730031000100460065006C006800
      610073007A006E00E1006C00F30020007600E1006C007400E100730001005300
      7700690074006300680020007500730065007200010053006300680069006D00
      620061007200650020007500740069006C0069007A00610074006F0072000100
      0D000A0046006F007200670061006C006F006D003100010046006F0072006700
      61006C006F006D00010054007200610066006600690063000100540072006100
      66006900630001000D000A0047006E00670079006C006500670065006B003100
      01004700F6006E0067007900F6006C006500670065006B000100500061006300
      6B006100670069006E0067007300010041006D00620061006C0061006A006500
      01000D000A004800610072006400760065007200620065006C006C0074007300
      6F006B00310001004800610072006400760065007200200062006500E1006C00
      6C00ED007400E10073006F006B00010048006100720064007700610072006500
      2000730065007400740069006E00670073000100530065007400030172006900
      20006800610072006400770061007200650001000D000A0049006D0070006F00
      720074003100010049006D0070006F0072007400010049006D0070006F007200
      7400010049006D0070006F007200740001000D000A0069007000630061006D00
      500061006E0065006C0001004B0061006D0065007200610020006E0065006D00
      200065006C00E900720068006500740051010100430061006D00650072006100
      20006E006F007400200061007600610069006C00610062006C00650001004300
      61006D0065007200610020006E00750020006500730074006500200064006900
      730070006F006E006900620069006C00030101000D000A006A0031000100DA00
      6A0001004E006500770001004E006F00750001000D000A006B00610072007400
      790061006B005F006D0001004B00E100720074007900E1006B00010043006100
      7200640073000100430061007200640075007200690001000D000A004B006500
      7200650073007300310001004B006500720065007300E9007300010053006500
      61007200630068000100430003017500740061007200650001000D000A004B00
      69006C0070007300310001004B0069006C00E9007000E9007300010045007800
      69007400010049006500190269007200650001000D000A004B00490053006F00
      72006F006D0070006E0079006900740069006E00660072006100680069006200
      6100310001004B004900200053006F0072006F006D007000F30020006E007900
      69007400F300200069006E006600720061002000680069006200610001004F00
      550054002000620061007200720069006500720020006F00700065006E006900
      6E006700200069006E0066007200610020006500720072006F00720001004500
      72006F00610072006500200069006E0066007200610072006F00190275002000
      6400650073006300680069006400650072006500200062006100720069006500
      72000301200049004500180249005200450001000D000A004B00700065006B00
      310001004B00E900700065006B00010049006D00610067006500730001004900
      6D006100670069006E00690001000D000A004B0073007A006C00650074003100
      01004B00E90073007A006C00650074000100530074006F0063006B0001005300
      74006F00630001000D000A004C006100620065006C00310001004B0065007A00
      6400510120006400E100740075006D003A000100530074006100720074002000
      64006100740065003A00010044006100740061002000640065002000EE006E00
      630065007000750074003A0001000D000A004C006100620065006C0032000100
      42006500660065006A0065007A00510120006400E100740075006D003A000100
      45006E006400200064006100740065003A000100440061007400610020006400
      6500200073006600E20072001902690074003A0001000D000A006C0062006C00
      3100010045006C00730051012000720065006E00640073007A00E1006D003A00
      0100460072006F006E007400200070006C0061007400650020006E0075006D00
      6200650072003A0001004E0072002E002000EE006E006D006100740072006900
      630075006C006100720065002000660061001B0203013A0001000D000A006C00
      62006C00320001004800E10074007300F3002000720065006E00640073007A00
      E1006D003A0001005200650061007200200070006C0061007400650020006E00
      75006D006200650072003A0001004E0072002E002000EE006E006D0061007400
      72006900630075006C006100720065002000730070006100740065003A000100
      0D000A006C0062006C00330001004C00E1006D00700061003A0001004C006900
      6700680074003A0001004C0061006D00700003013A0001000D000A006C006200
      6C00460065006C006900720061007400310001006C0062006C00460065006C00
      6900720061007400310001006C0062006C00460065006C006900720061007400
      310001006C0062006C00460065006C006900720061007400310001000D000A00
      6C0062006C00460065006C006900720061007400320001006C0062006C004600
      65006C006900720061007400320001006C0062006C00460065006C0069007200
      61007400320001006C0062006C00460065006C00690072006100740032000100
      0D000A006C0062006C00460065006C006900720061007400330001006C006200
      6C00460065006C006900720061007400330001006C0062006C00460065006C00
      6900720061007400330001006C0062006C00460065006C006900720061007400
      330001000D000A006C0062006C00460065006C00690072006100740034000100
      6C0062006C00460065006C006900720061007400340001006C0062006C004600
      65006C006900720061007400340001006C0062006C00460065006C0069007200
      61007400340001000D000A006C0062006C00460065006C006900720061007400
      350001006C0062006C00460065006C006900720061007400350001006C006200
      6C00460065006C006900720061007400350001006C0062006C00460065006C00
      6900720061007400350001000D000A006C0062006C00460065006C0069007200
      61007400360001006C0062006C00460065006C00690072006100740036000100
      6C0062006C00460065006C006900720061007400360001006C0062006C004600
      65006C006900720061007400360001000D000A006C0062006C00460065006C00
      6900720061007400370001006C0062006C00460065006C006900720061007400
      370001006C0062006C00460065006C006900720061007400370001006C006200
      6C00460065006C006900720061007400370001000D000A006C0062006C004600
      65006C006900720061007400380001006C0062006C00460065006C0069007200
      61007400380001006C0062006C00460065006C00690072006100740038000100
      6C0062006C00460065006C006900720061007400380001000D000A006C006200
      6C004B0065007000310001004E0069006E006300730020006B00E90070000100
      4E006F00200069006D0061006700650001004600030172000301200069006D00
      6100670069006E00650001000D000A006C0062006C004B006500700032000100
      4E0069006E006300730020006B00E900700001004E006F00200069006D006100
      6700650001004600030172000301200069006D006100670069006E0065000100
      0D000A006C0062006C00520065006E00640073007A0061006D005F0065006C00
      73006F0001006C0062006C00520065006E00640073007A0061006D005F006500
      6C0073006F0001006C0062006C00520065006E00640073007A0061006D005F00
      65006C0073006F0001006C0062006C00520065006E00640073007A0061006D00
      5F0065006C0073006F0001000D000A006C0062006C00520065006E0064007300
      7A0061006D005F0068006100740073006F0001006C0062006C00520065006E00
      640073007A0061006D005F0068006100740073006F0001006C0062006C005200
      65006E00640073007A0061006D005F0068006100740073006F0001006C006200
      6C00520065006E00640073007A0061006D005F0068006100740073006F000100
      0D000A006C0062006C005400680045006C006F00310001006C0062006C005400
      680045006C006F00310001006C0062006C005400680045006C006F0031000100
      6C0062006C005400680045006C006F00310001000D000A006C0062006C005400
      680045006C006F00320001006C0062006C005400680045006C006F0032000100
      6C0062006C005400680045006C006F00320001006C0062006C00540068004500
      6C006F00320001000D000A006C0062006C005400680045006C006F0033000100
      6C0062006C005400680045006C006F00330001006C0062006C00540068004500
      6C006F00330001006C0062006C005400680045006C006F00330001000D000A00
      6C0062006C005400680045006C006F00340001006C0062006C00540068004500
      6C006F00340001006C0062006C005400680045006C006F00340001006C006200
      6C005400680045006C006F00340001000D000A006C0062006C00540068005200
      65006E00640073007A0061006D00310001006C0062006C005400680052006500
      6E00640073007A0061006D00310001006C0062006C0054006800520065006E00
      640073007A0061006D00310001006C0062006C0054006800520065006E006400
      73007A0061006D00310001000D000A006C0062006C0054006800520065006E00
      640073007A0061006D00320001006C0062006C0054006800520065006E006400
      73007A0061006D00320001006C0062006C0054006800520065006E0064007300
      7A0061006D00320001006C0062006C0054006800520065006E00640073007A00
      61006D00320001000D000A004C006900730074006100310001004C0069007300
      7400610001004C0069007300740001004C00690073007400030101000D000A00
      4C006900730074006B00310001004C00690073007400E1006B0001004C006900
      73007400730001004C00690073007400650001000D000A006D006E0053007A00
      610062006C0079006F0073006D0072006C006500670065006E00740061007200
      74006F007A006B006F0064007300660069006700790065006C00730031000100
      53007A0061006200E1006C0079006F0073006D00E90072006C00650067006500
      6E00200074006100720074006F007A006B006F006400E1007300200066006900
      6700790065006C00E90073002000280049004E0046005200410035002C004900
      4E004600520041003600290001004D006F006E00690074006F00720069006E00
      670020006F0066002000700072006F00700065007200200070006F0073006900
      740069006F006E0020006F006E00200074006800650020007300630061006C00
      65002000280049004E0046005200410035002C0049004E004600520041003600
      290001004D006F006E00690074006F00720069007A0061007200650020007000
      6F007A0069001B0269006F006E00610072006500200063006F00720065006300
      7400030120007000650020006300E2006E007400610072002000280049004E00
      46005200410035002C0049004E004600520041003600290001000D000A006D00
      6F007A006700610073006F006B005F006D0001004D006F007A006700E1007300
      6F006B0020006C00690073007400E1006A00610001004C006900730074002000
      6F00660020006D006F00760065006D0065006E007400730001004C0069007300
      7400610020006D006900190263000301720069006C006F00720001000D000A00
      4D0072006C006500670065006C00730065006B006C006900730074006A006100
      310001004D00E90072006C006500670065006C00E900730065006B0020006C00
      690073007400E1006A00610001004C0069007300740020006F00660020007700
      650069006700680069006E006700730001004C00690073007400610020006300
      E2006E007400030172006900720069006C006F00720001000D000A004D007200
      6C00650067006A0065006700790065006B006C006900730074006A0061003100
      01004D00E90072006C00650067006A0065006700790065006B0020006C006900
      73007400E1006A00610001004C0069007300740020006F006600200077006500
      69006700680069006E00670020007400690063006B0065007400730001004C00
      6900730074006100200062006F006E007500720069006C006F00720020006400
      650020006300E2006E0074006100720001000D000A004D0072006C0065006700
      6B0065007A0065006C006B00310001004D00E90072006C00650067006B006500
      7A0065006C0051016B0001005300630061006C00650020006F00700065007200
      610074006F007200730001004F00700065007200610074006F00720069002000
      6300E2006E0074006100720001000D000A00500061006E0065006C0033000100
      500061006E0065006C0033000100500061006E0065006C003300010050006100
      6E0065006C00330001000D000A0050006100720074006E006500720065006B00
      3100010050006100720074006E006500720065006B0001005000610072007400
      6E006500720073000100500061007200740065006E0065007200690001000D00
      0A0050004C00430073006F0072006F00730070006F0072007400620065006C00
      6C00740073003100010050004C004300200073006F0072006F00730020007000
      6F0072007400200062006500E1006C006C00ED007400E1007300010050004C00
      43002000730065007200690061006C00200070006F0072007400200073006500
      7400740069006E00670073000100530065007400030172006900200070006F00
      720074002000730065007200690061006C00200050004C00430001000D000A00
      500072006F00730074006F00740074006D007200730065006B00310001005000
      E10072006F007300ED0074006F007400740020006D00E9007200E90073006500
      6B00010050006100690072006500640020007700650069006700680069006E00
      6700730001004300E2006E007400030172006900720069002000610073006F00
      6300690061007400650001000D000A007000750073006F006B00310001005400
      ED007000750073006F006B000100540079007000650073000100540069007000
      75007200690001000D000A00520061006B00740072006B007A00690073007A00
      6C006C0074006C00650076006C0031000100520061006B007400E10072006B00
      F6007A006900200073007A00E1006C006C00ED007400F3006C0065007600E900
      6C00010049006E007400650072002D00770061007200650068006F0075007300
      65002000640065006C006900760065007200790020006E006F00740065000100
      4100760069007A0020006400650020007400720061006E007300660065007200
      2000EE006E0074007200650020006400650070006F007A006900740065000100
      0D000A00520065006E00640073007A006D006F006B0031000100520065006E00
      640073007A00E1006D006F006B00010050006C0061007400650020006E007500
      6D00620065007200730001004E0075006D006500720065002000640065002000
      EE006E006D006100740072006900630075006C0061007200650001000D000A00
      72006F006C006B00310001005400E10072006F006C00F3006B00010053007400
      6F007200610067006500730001004400650070006F007A006900740065000100
      0D000A0072007A00730061006400610074006F006B00310001005400F6007200
      7A00730061006400610074006F006B0001004D00610073007400650072002000
      6400610074006100010044006100740065002000640065002000620061007A00
      030101000D000A00530061006A0074006A0065006C0073007A006D0064006F00
      730074007300610031000100530061006A00E100740020006A0065006C007300
      7A00F30020006D00F30064006F007300ED007400E10073006100010043006800
      61006E006700650020006D0079002000700061007300730077006F0072006400
      010053006300680069006D006200610072006500610020007000610072006F00
      6C00650069002000700072006F00700072006900690001000D000A0073006200
      74006E0046006F006C0079007400610074006100730001004D00E90072006C00
      650067006A00650067007900200066006F006C007900740061007400E1007300
      6100010043006F006E00740069006E0075006500200077006500690067006800
      69006E00670020007400690063006B0065007400010043006F006E0074006900
      6E007500610072006500200062006F006E0020006400650020006300E2006E00
      74006100720001000D000A007300620074006E004C0069007300740061000100
      4D00E9007200E900730065006B0020006C00690073007400E1006A0061000100
      4C0069007300740020006F00660020007700650069006700680069006E006700
      730001004C00690073007400610020006300E2006E0074000301720069007200
      69006C006F00720001000D000A007300620074006E0055006A006D0065007200
      6C00650067006A006500670079000100DA006A0020006D00E90072006C006500
      67006A0065006700790001004E00650077002000770065006900670068006900
      6E00670020007400690063006B0065007400010042006F006E00200064006500
      20006300E2006E0074006100720020006E006F00750001000D000A0053006F00
      72006F006D0070006E0079006900740069006E00660072006100680069006200
      61003100010042004500200053006F0072006F006D007000F30020006E007900
      69007400F300200069006E006600720061002000680069006200610001004900
      4E002000620061007200720069006500720020006F00700065006E0069006E00
      6700200069006E0066007200610020006500720072006F007200010045007200
      6F00610072006500200069006E0066007200610072006F001902750020006400
      6500730063006800690064006500720065002000620061007200690065007200
      0301200049004E005400520041005200450001000D000A0053006F0072006F00
      730070006F0072007400620065006C006C00740073003100010053006F007200
      6F007300200070006F0072007400200062006500E1006C006C00ED007400E100
      73000100530065007200690061006C00200070006F0072007400200073006500
      7400740069006E00670073000100530065007400030172006900200070006F00
      720074002000730065007200690061006C0001000D000A0053007A006F006600
      7400760065007200620065006C006C00740073006F006B003100010053007A00
      6F0066007400760065007200200062006500E1006C006C00ED007400E1007300
      6F006B00010053006F0066007400770061007200650020007300650074007400
      69006E00670073000100530065007400030172006900200073006F0066007400
      770061007200650001000D000A007400620046006F007200670061006C006F00
      6D00010046006F007200670061006C006F006D00010054007200610066006600
      69006300010054007200610066006900630001000D000A007400620049006400
      6500690067006C0065006E00650073000100490064006500690067006C006500
      6E00650073000100540065006D0070006F007200610072007900010054006500
      6D0070006F0072006100720001000D000A007400650073007A0074005F006D00
      01005400650073007A0074000100540065007300740001005400650073007400
      01000D000A0074006F006D00650067005F006C00650076006F006E005F007300
      7A006F0076006500670065006B005F006D0001005400F6006D00650067002000
      6C00650076006F006E00E10073006900200073007A00F6007600650067006500
      6B00010057006500690067006800740020006400650064007500630074006900
      6F006E0020007400650078007400730001005400650078007400650020006400
      6500200073006300030164006500720065002000610020006700720065007500
      740003011B026900690001000D000A00740075006C0061006A005F006D000100
      540075006C0061006A0064006F006E006F0073006F006B0001004F0077006E00
      6500720073000100500072006F00700072006900650074006100720069000100
      0D000A0073007400480069006E00740073005F0055006E00690063006F006400
      65000D000A004A0076004C0045004400310001004400750070006C0061002000
      6B00610074007400740069006E007400E1007300730061006C0020007600E100
      6C007400680061007400010044006F00750062006C0065002D0063006C006900
      63006B00200074006F0020007300770069007400630068000100440075006200
      6C007500200063006C00690063002000700065006E0074007200750020006100
      200063006F006D0075007400610001000D000A004A0076004C00450044003200
      01004400750070006C00610020006B00610074007400740069006E007400E100
      7300730061006C0020007600E1006C007400680061007400010044006F007500
      62006C0065002D0063006C00690063006B00200074006F002000730077006900
      74006300680001004400750062006C007500200063006C006900630020007000
      65006E0074007200750020006100200063006F006D0075007400610001000D00
      0A004A0076004C0045004400330001004400750070006C00610020006B006100
      74007400740069006E007400E1007300730061006C0020007600E1006C007400
      680061007400010044006F00750062006C0065002D0063006C00690063006B00
      200074006F00200073007700690074006300680001004400750062006C007500
      200063006C00690063002000700065006E007400720075002000610020006300
      6F006D0075007400610001000D000A004A0076004C0045004400340001004400
      750070006C00610020006B00610074007400740069006E007400E10073007300
      61006C0020007600E1006C007400680061007400010044006F00750062006C00
      65002D0063006C00690063006B00200074006F00200073007700690074006300
      680001004400750062006C007500200063006C00690063002000700065006E00
      74007200750020006100200063006F006D0075007400610001000D000A004A00
      76004C0045004400350001004400750070006C00610020006B00610074007400
      740069006E007400E1007300730061006C0020007600E1006C00740068006100
      7400010044006F00750062006C0065002D0063006C00690063006B0020007400
      6F00200073007700690074006300680001004400750062006C00750020006300
      6C00690063002000700065006E0074007200750020006100200063006F006D00
      75007400610001000D000A004A0076004C004500440036000100440075007000
      6C00610020006B00610074007400740069006E007400E1007300730061006C00
      20007600E1006C007400680061007400010044006F00750062006C0065002D00
      63006C00690063006B00200074006F0020007300770069007400630068000100
      4400750062006C007500200063006C00690063002000700065006E0074007200
      750020006100200063006F006D0075007400610001000D000A004A0076004C00
      45004400370001004400750070006C00610020006B0061007400740074006900
      6E007400E1007300730061006C0020007600E1006C0074006800610074000100
      44006F00750062006C0065002D0063006C00690063006B00200074006F002000
      73007700690074006300680001004400750062006C007500200063006C006900
      63002000700065006E0074007200750020006100200063006F006D0075007400
      610001000D000A004A0076004C0045004400380001004400750070006C006100
      20006B00610074007400740069006E007400E1007300730061006C0020007600
      E1006C007400680061007400010044006F00750062006C0065002D0063006C00
      690063006B00200074006F002000730077006900740063006800010044007500
      62006C007500200063006C00690063002000700065006E007400720075002000
      6100200063006F006D0075007400610001000D000A0073007400440069007300
      70006C00610079004C006100620065006C0073005F0055006E00690063006F00
      640065000D000A007300740046006F006E00740073005F0055006E0069006300
      6F00640065000D000A00540046006F00460001005400610068006F006D006100
      01005300650067006F00650020005500490001005300650067006F0065002000
      5500490001000D000A00620074006E006E006100670079006B0061006D006B00
      6500700001005400610068006F006D00610001005300650067006F0065002000
      5500490001005300650067006F00650020005500490001000D000A006C006200
      6C00520065006E00640073007A0061006D005F0065006C0073006F0001005400
      69006D006500730020004E0065007700200052006F006D0061006E0001005300
      650067006F00650020005500490001005300650067006F006500200055004900
      01000D000A006C0062006C00520065006E00640073007A0061006D005F006800
      6100740073006F000100540069006D006500730020004E006500770020005200
      6F006D0061006E0001005300650067006F006500200055004900010053006500
      67006F00650020005500490001000D000A007300620074006E004C0069007300
      7400610001005400610068006F006D00610001005300650067006F0065002000
      5500490001005300650067006F00650020005500490001000D000A0073006200
      74006E0053006F00720073007A0061006D006800690076006100730001005400
      610068006F006D00610001005300650067006F00650020005500490001005300
      650067006F00650020005500490001000D000A00530074006100740075007300
      420061007200310001005300650067006F006500200055004900010053006500
      67006F00650020005500490001005300650067006F0065002000550049000100
      0D000A00730074004D0075006C00740069004C0069006E00650073005F005500
      6E00690063006F00640065000D000A006D0065006D004C006F0067002E004C00
      69006E006500730001006D0065006D004C006F0067000100010001000D000A00
      7300740044006C0067007300430061007000740069006F006E0073005F005500
      6E00690063006F00640065000D000A00410062006F007200740001004D006500
      670073007A0061006B00ED007400E100730001002600410062006F0072007400
      01004100620061006E0064006F006E0061007200650001000D000A0041006C00
      6C00010026004D0069006E0064000100260041006C006C000100260054006F00
      61007400650001000D000A00430061006E00630065006C0001004D00E9006700
      730065006D000100430061006E00630065006C00010041006E0075006C006100
      7200650001000D000A0043006F006E006600690072006D0001004D0065006700
      6500720051017300ED007400E9007300010043006F006E006600690072006D00
      010043006F006E006600690072006D0061007200650001000D000A0045007200
      72006F0072000100480069006200610001004500720072006F00720001004500
      72006F0061007200650001000D000A00480065006C0070000100260053006500
      6700ED0074007300E900670001002600480065006C0070000100260041006A00
      750074006F00720001000D000A00490067006E006F0072006500010026004D00
      6500670073007A0061006B00ED007400E100730001002600490067006E006F00
      7200650001002600490067006E006F00720061007200650001000D000A004900
      6E0066006F0072006D006100740069006F006E00010049006E0066006F007200
      6D00E10063006900F300010049006E0066006F0072006D006100740069006F00
      6E00010049006E0066006F0072006D0061001B026900650001000D000A004E00
      6F00010026004E0065006D00010026004E006F00010026004E00750001000D00
      0A004E006F00200054006F00200041006C006C0001004E00260065006D002000
      6D0069006E00640065006E007200650001004E0026006F00200074006F002000
      41006C006C0001004E002600750020006C006100200074006F00610074006500
      01000D000A004F004B0001004F004B0001004F004B0001004F004B0001000D00
      0A005200650074007200790001002600DA006A00720061000100260052006500
      7400720079000100260052006500EE006E006300650072006300610072006500
      01000D000A005700610072006E0069006E006700010046006900670079006500
      6C006D0065007A00740065007400E900730001005700610072006E0069006E00
      6700010041007600650072007400690073006D0065006E00740001000D000A00
      590065007300010026004900670065006E000100260059006500730001002600
      4400610001000D000A00590065007300200054006F00200041006C006C000100
      4900670065006E00200026006D0069006E00640065006E007200650001005900
      65007300200074006F002000260041006C006C0001004400610020006C006100
      2000260074006F0061007400650001000D000A00730074005300740072006900
      6E00670073005F0055006E00690063006F00640065000D000A00730074004F00
      740068006500720053007400720069006E00670073005F0055006E0069006300
      6F00640065000D000A004A00760046006F0072006D00530074006F0072006100
      6700650031002E00410070007000530074006F00720061006700650050006100
      740068000100250046004F0052004D005F004E0041004D00450025005C000100
      010001000D000A00730074004C006F00630061006C00650073005F0055006E00
      690063006F00640065000D000A007300740043006F006C006C00650063007400
      69006F006E0073005F0055006E00690063006F00640065000D000A0064006200
      67004E00790069007400620065002E0043006F006C0075006D006E0073005B00
      30005D002E005400690074006C0065002E00430061007000740069006F006E00
      010053006F00720073007A00E1006D000100530065007200690061006C002000
      6E0075006D0062006500720001004E0072002E0020006400650020006F007200
      640069006E00650001000D000A006400620067004E0079006900740062006500
      2E0043006F006C0075006D006E0073005B0031005D002E005400690074006C00
      65002E00430061007000740069006F006E000100520065006E00640073007A00
      E1006D00010050006C0061007400650020006E0075006D006200650072000100
      4E0072002E002000EE006E006D006100740072006900630075006C0061007200
      650001000D000A006400620067004E00790069007400620065002E0043006F00
      6C0075006D006E0073005B0032005D002E005400690074006C0065002E004300
      61007000740069006F006E000100520065006E00640073007A00E1006D002000
      3200010050006C0061007400650020006E0075006D0062006500720020003200
      01004E0072002E002000EE006E006D006100740072006900630075006C006100
      720065002000320001000D000A006400620067004E0079006900740062006500
      2E0043006F006C0075006D006E0073005B0033005D002E005400690074006C00
      65002E00430061007000740069006F006E00010050006100720074006E006500
      720020003100010050006100720074006E006500720020003100010050006100
      7200740065006E00650072002000310001000D000A006400620067004E007900
      69007400620065002E0043006F006C0075006D006E0073005B0034005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010050006100
      720074006E006500720020003200010050006100720074006E00650072002000
      32000100500061007200740065006E00650072002000320001000D000A006400
      620067004E00790069007400620065002E0043006F006C0075006D006E007300
      5B0035005D002E005400690074006C0065002E00430061007000740069006F00
      6E000100C90072006B002E006400E100740075006D0001004100720072002E00
      2000640061007400650001004400610074006100200073006F00730069007200
      6900690001000D000A006400620067004E00790069007400620065002E004300
      6F006C0075006D006E0073005B0036005D002E005400690074006C0065002E00
      430061007000740069006F006E000100C90072006B002E006900640051010100
      4100720072002E002000740069006D00650001004F0072006100200073006F00
      7300690072006900690001000D000A006400620067004E007900690074006200
      65002E0043006F006C0075006D006E0073005B0037005D002E00540069007400
      6C0065002E00430061007000740069006F006E0001004E00650074007400F300
      01004E006500740001004E006500740001000D000A006400620067004E007900
      69007400620065002E0043006F006C0075006D006E0073005B0038005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010049007200
      E1006E007900010044006900720065006300740069006F006E00010044006900
      7200650063001B026900650001000D000A006400620067004E00790069007400
      620065002E0043006F006C0075006D006E0073005B0039005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001004D00650067006A00
      6500670079007A006500730001004E006F007400650001004F00620073006500
      7200760061001B026900650001000D000A004400420047007200690064003100
      2E0043006F006C0075006D006E0073005B0030005D002E005400690074006C00
      65002E00430061007000740069006F006E0001004400E100740075006D000100
      44006100740065000100440061007400610001000D000A004400420047007200
      6900640031002E0043006F006C0075006D006E0073005B0031005D002E005400
      690074006C0065002E00430061007000740069006F006E000100490064005101
      0100540069006D00650001004F007200610001000D000A004400420047007200
      6900640031002E0043006F006C0075006D006E0073005B0032005D002E005400
      690074006C0065002E00430061007000740069006F006E000100520065006E00
      640073007A00E1006D00010050006C0061007400650020006E0075006D006200
      6500720001004E0072002E002000EE006E006D00610074007200690063007500
      6C0061007200650001000D000A0044004200470072006900640031002E004300
      6F006C0075006D006E0073005B0033005D002E005400690074006C0065002E00
      430061007000740069006F006E00010049007200E1006E007900010044006900
      720065006300740069006F006E000100440069007200650063001B0269006500
      01000D000A0044004200470072006900640031002E0043006F006C0075006D00
      6E0073005B0034005D002E005400690074006C0065002E004300610070007400
      69006F006E0001005400F6006D00650067000100570065006900670068007400
      01004700720065007500740061007400650001000D000A004400420047007200
      6900640031002E0043006F006C0075006D006E0073005B0035005D002E005400
      690074006C0065002E00430061007000740069006F006E000100520065006E00
      640073007A00E1006D0020003200010050006C0061007400650020006E007500
      6D006200650072002000320001004E0072002E002000EE006E006D0061007400
      72006900630075006C006100720065002000320001000D000A00440042004700
      72006900640031002E0043006F006C0075006D006E0073005B0036005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010053007A00
      E1006C006C00ED007400F3006C00650076000100440065006C00690076006500
      7200790020006E006F007400650001004100760069007A0001000D000A004400
      4200470072006900640031002E0043006F006C0075006D006E0073005B003700
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      4B00F3006400010043006F0064006500010043006F00640001000D000A004400
      4200470072006900640031002E0043006F006C0075006D006E0073005B003800
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      4D00E90072006C00650067006A00650067007900010057006500690067006800
      69006E00670020007400690063006B0065007400010042006F006E0020006400
      650020006300E2006E0074006100720001000D000A0044004200470072006900
      640031002E0043006F006C0075006D006E0073005B0039005D002E0054006900
      74006C0065002E00430061007000740069006F006E00010053006F0061007000
      010053006F0061007000010053006F006100700001000D000A00730069004C00
      61006E00670043006F006D0062006F0031002E004C0061006E00670075006100
      6700650049006E0066006F0073005B0030005D002E0046006F006E0074004E00
      61006D00650001005300650067006F0065002000550049000100530065006700
      6F00650020005500490001005300650067006F00650020005500490001000D00
      0A00730069004C0061006E00670043006F006D0062006F0031002E004C006100
      6E006700750061006700650049006E0066006F0073005B0031005D002E004600
      6F006E0074004E0061006D00650001005300650067006F006500200055004900
      01005300650067006F00650020005500490001005300650067006F0065002000
      5500490001000D000A00730069004C0061006E00670043006F006D0062006F00
      31002E004C0061006E006700750061006700650049006E0066006F0073005B00
      32005D002E0046006F006E0074004E0061006D00650001005300650067006F00
      650020005500490001005300650067006F006500200055004900010053006500
      67006F00650020005500490001000D000A005300740061007400750073004200
      6100720031002E00500061006E0065006C0073005B0030005D002E0054006500
      7800740001005600650072002E003A00200031002E0030000100560065007200
      2E003A00200031002E00300001005600650072002E003A00200031002E003000
      01000D000A0053007400610074007500730042006100720031002E0050006100
      6E0065006C0073005B0031005D002E0054006500780074000100520065006E00
      640073007A00E1006D00010050006C0061007400650020006E0075006D006200
      6500720001004E0072002E002000EE006E006D00610074007200690063007500
      6C0061007200650001000D000A00530074006100740075007300420061007200
      31002E00500061006E0065006C0073005B0034005D002E005400650078007400
      01005400F6006D00650067003A00200001005700650069006700680074003A00
      20000100470072006500750074006100740065003A00200001000D000A005300
      7400610074007500730042006100720031002E00500061006E0065006C007300
      5B0035005D002E0054006500780074000100C9006C0051016B00E90070002800
      310029003A0001004C0069007600650020007600690065007700280031002900
      3A00010049006D006100670069006E00650020006C0069007600650028003100
      29003A0001000D000A0053007400610074007500730042006100720031002E00
      500061006E0065006C0073005B0036005D002E0054006500780074000100C900
      6C0051016B00E90070002800320029003A0001004C0069007600650020007600
      6900650077002800320029003A00010049006D006100670069006E0065002000
      6C006900760065002800320029003A0001000D000A0073007400430068006100
      720053006500740073005F0055006E00690063006F00640065000D000A005400
      46006F0046000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A00620074006E006E006100670079006B0061006D00
      6B00650070000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      5300450054000100440045004600410055004C0054005F004300480041005200
      53004500540001000D000A006C0062006C00520065006E00640073007A006100
      6D005F0065006C0073006F000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A006C0062006C00520065006E006400
      73007A0061006D005F0068006100740073006F00010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F004300480041005200530045005400010044004500460041005500
      4C0054005F00430048004100520053004500540001000D000A00730062007400
      6E004C0069007300740061000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A007300620074006E0053006F007200
      73007A0061006D00680069007600610073000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F0043004800410052005300450054000100440045004600410055004C00
      54005F00430048004100520053004500540001000D000A005300740061007400
      7500730042006100720031000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      4800410052005300450054000100440045004600410055004C0054005F004300
      48004100520053004500540001000D000A00}
  end
end
