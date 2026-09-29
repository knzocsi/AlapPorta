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
          object btnGlabsBekuldes: TButton
            Left = 305
            Top = 49
            Width = 96
            Height = 25
            Caption = 'Glabs bek'#252'ld'#233's'
            TabOrder = 4
            OnClick = btnGlabsBekuldesClick
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
          OnDrawColumnCell = DBGrid1DrawColumnCell
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
    object pnlTorles: TPanel
      Left = 1
      Top = 287
      Width = 798
      Height = 41
      Align = alBottom
      TabOrder = 2
      object btnTorles: TButton
        Left = 36
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
      Width = 194
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
      Left = 279
      Top = 0
      Width = 186
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
      Left = 471
      Top = 0
      Width = 189
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
      Left = 731
      Top = 1
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
    object siLangCombo1: TsiLangCombo
      Left = 861
      Top = 19
      Width = 145
      Height = 25
      ItemHeight = 19
      TabOrder = 0
      Visible = False
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
    Left = 552
    Top = 80
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
        Visible = False
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
    Language = 'English'
    DefaultLanguage = 2
    OnLanguageChanged = siLangDispatcher1LanguageChanged
    GlobalExclusionList.Strings = (
      '!TVirtualImageListItem.CollectionName'
      '!TVirtualImageList.DisabledSuffix')
    Left = 184
    Top = 272
  end
  object siLang_FoF: TsiLang
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    DefaultLanguage = 2
    StoreAsUTF8 = True
    NumOfLanguages = 3
    LangDispatcher = siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Hungarian'
      'English'
      'Romanian')
    Language = 'English'
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
      'ListField'
      'AppStoragePath')
    Left = 96
    Top = 256
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
      7200670065007200650001000D000A00630061006D00300001004B0061006D00
      650072006100200031000100430061006D006500720061002000310001004300
      61006D006500720061002000310001000D000A00630061006D00310001004B00
      61006D00650072006100200032000100430061006D0065007200610020003200
      0100430061006D006500720061002000320001000D000A00630061006D003200
      01004B0061006D00650072006100200033000100430061006D00650072006100
      200033000100430061006D006500720061002000330001000D000A0063006100
      6D00330001004B0061006D00650072006100200034000100430061006D006500
      72006100200034000100430061006D006500720061002000340001000D000A00
      630061006D00340001004B0061006D0065007200610020003500010043006100
      6D00650072006100200035000100430061006D00650072006100200035000100
      0D000A00630061006D00350001004B0061006D00650072006100200036000100
      430061006D00650072006100200036000100430061006D006500720061002000
      360001000D000A00630068006B0054006F0072006F006C00740065006B005F00
      6D00750074006100740061007300610001005400F6007200F6006C0074006500
      6B0020006D007500740061007400E100730061000100530068006F0077002000
      640065006C006500740065006400010041006600690019026100720065002000
      19027400650072007300650001000D000A0044006A0061006B00310001004100
      6C006100700020006400ED006A0061006B000100420061007300690063002000
      6600650065007300010054006100720069006600650020006400650020006200
      61007A00030101000D000A0044006A0073007A0061006200730069006B006100
      740065006700720069006B00310001004400ED006A0073007A0061006200E100
      7300690020006B006100740065006700F30072006900E1006B00010050007200
      6900630069006E0067002000630061007400650067006F007200690065007300
      0100430061007400650067006F00720069006900200064006500200074006100
      72006900660061007200650001000D000A00460065006C006800610073007A00
      6E006C006B0031000100460065006C006800610073007A006E00E1006C00F300
      6B0001005500730065007200730001005500740069006C0069007A0061007400
      6F007200690001000D000A00460065006C006800610073007A006E006C006B00
      6B0061007200620061006E007400610072007400730061003100010046006500
      6C006800610073007A006E00E1006C00F3006B0020006B006100720062006100
      6E007400610072007400E100730061000100550073006500720020006D006100
      69006E00740065006E0061006E00630065000100CE006E007400720065001B02
      69006E0065007200650020007500740069006C0069007A00610074006F007200
      690001000D000A00460065006C006800610073007A006E006C0076006C007400
      730031000100460065006C006800610073007A006E00E1006C00F30020007600
      E1006C007400E100730001005300770069007400630068002000750073006500
      7200010053006300680069006D00620061007200650020007500740069006C00
      69007A00610074006F00720001000D000A0046006F007200670061006C006F00
      6D003100010046006F007200670061006C006F006D0001005400720061006600
      660069006300010054007200610066006900630001000D000A0047006E006700
      79006C006500670065006B00310001004700F6006E0067007900F6006C006500
      670065006B0001005000610063006B006100670069006E006700730001004100
      6D00620061006C0061006A00650001000D000A00480061007200640076006500
      7200620065006C006C00740073006F006B003100010048006100720064007600
      65007200200062006500E1006C006C00ED007400E10073006F006B0001004800
      61007200640077006100720065002000730065007400740069006E0067007300
      0100530065007400030172006900200068006100720064007700610072006500
      01000D000A0049006D0070006F00720074003100010049006D0070006F007200
      7400010049006D0070006F0072007400010049006D0070006F00720074000100
      0D000A0069007000630061006D00500061006E0065006C0001004B0061006D00
      65007200610020006E0065006D00200065006C00E90072006800650074005101
      0100430061006D0065007200610020006E006F00740020006100760061006900
      6C00610062006C0065000100430061006D0065007200610020006E0075002000
      6500730074006500200064006900730070006F006E006900620069006C000301
      01000D000A006A0031000100DA006A0001004E006500770001004E006F007500
      01000D000A006B00610072007400790061006B005F006D0001004B00E1007200
      74007900E1006B00010043006100720064007300010043006100720064007500
      7200690001000D000A004B0065007200650073007300310001004B0065007200
      65007300E9007300010053006500610072006300680001004300030175007400
      61007200650001000D000A004B0069006C0070007300310001004B0069006C00
      E9007000E9007300010045007800690074000100490065001902690072006500
      01000D000A004B00490053006F0072006F006D0070006E007900690074006900
      6E006600720061006800690062006100310001004B004900200053006F007200
      6F006D007000F30020006E00790069007400F300200069006E00660072006100
      2000680069006200610001004F00550054002000620061007200720069006500
      720020006F00700065006E0069006E006700200069006E006600720061002000
      6500720072006F0072000100450072006F00610072006500200069006E006600
      7200610072006F00190275002000640065007300630068006900640065007200
      6500200062006100720069006500720003012000490045001802490052004500
      01000D000A004B00700065006B00310001004B00E900700065006B0001004900
      6D006100670065007300010049006D006100670069006E00690001000D000A00
      4B0073007A006C0065007400310001004B00E90073007A006C00650074000100
      530074006F0063006B000100530074006F00630001000D000A004C0061006200
      65006C00310001004B0065007A006400510120006400E100740075006D003A00
      010053007400610072007400200064006100740065003A000100440061007400
      61002000640065002000EE006E00630065007000750074003A0001000D000A00
      4C006100620065006C003200010042006500660065006A0065007A0051012000
      6400E100740075006D003A00010045006E006400200064006100740065003A00
      01004400610074006100200064006500200073006600E2007200190269007400
      3A0001000D000A006C0062006C003100010045006C0073005101200072006500
      6E00640073007A00E1006D003A000100460072006F006E007400200070006C00
      61007400650020006E0075006D006200650072003A0001004E0072002E002000
      EE006E006D006100740072006900630075006C00610072006500200066006100
      1B0203013A0001000D000A006C0062006C00320001004800E10074007300F300
      2000720065006E00640073007A00E1006D003A00010052006500610072002000
      70006C0061007400650020006E0075006D006200650072003A0001004E007200
      2E002000EE006E006D006100740072006900630075006C006100720065002000
      730070006100740065003A0001000D000A006C0062006C00330001004C00E100
      6D00700061003A0001004C0069006700680074003A0001004C0061006D007000
      03013A0001000D000A006C0062006C00460065006C0069007200610074003100
      01006C0062006C00460065006C006900720061007400310001006C0062006C00
      460065006C006900720061007400310001006C0062006C00460065006C006900
      720061007400310001000D000A006C0062006C00460065006C00690072006100
      7400320001006C0062006C00460065006C006900720061007400320001006C00
      62006C00460065006C006900720061007400320001006C0062006C0046006500
      6C006900720061007400320001000D000A006C0062006C00460065006C006900
      720061007400330001006C0062006C00460065006C0069007200610074003300
      01006C0062006C00460065006C006900720061007400330001006C0062006C00
      460065006C006900720061007400330001000D000A006C0062006C0046006500
      6C006900720061007400340001006C0062006C00460065006C00690072006100
      7400340001006C0062006C00460065006C006900720061007400340001006C00
      62006C00460065006C006900720061007400340001000D000A006C0062006C00
      460065006C006900720061007400350001006C0062006C00460065006C006900
      720061007400350001006C0062006C00460065006C0069007200610074003500
      01006C0062006C00460065006C006900720061007400350001000D000A006C00
      62006C00460065006C006900720061007400360001006C0062006C0046006500
      6C006900720061007400360001006C0062006C00460065006C00690072006100
      7400360001006C0062006C00460065006C006900720061007400360001000D00
      0A006C0062006C00460065006C006900720061007400370001006C0062006C00
      460065006C006900720061007400370001006C0062006C00460065006C006900
      720061007400370001006C0062006C00460065006C0069007200610074003700
      01000D000A006C0062006C00460065006C006900720061007400380001006C00
      62006C00460065006C006900720061007400380001006C0062006C0046006500
      6C006900720061007400380001006C0062006C00460065006C00690072006100
      7400380001000D000A006C0062006C004B0065007000310001004E0069006E00
      6300730020006B00E900700001004E006F00200069006D006100670065000100
      4600030172000301200069006D006100670069006E00650001000D000A006C00
      62006C004B0065007000320001004E0069006E006300730020006B00E9007000
      01004E006F00200069006D006100670065000100460003017200030120006900
      6D006100670069006E00650001000D000A006C0062006C00520065006E006400
      73007A0061006D005F0065006C0073006F0001006C0062006C00520065006E00
      640073007A0061006D005F0065006C0073006F0001006C0062006C0052006500
      6E00640073007A0061006D005F0065006C0073006F0001006C0062006C005200
      65006E00640073007A0061006D005F0065006C0073006F0001000D000A006C00
      62006C00520065006E00640073007A0061006D005F0068006100740073006F00
      01006C0062006C00520065006E00640073007A0061006D005F00680061007400
      73006F0001006C0062006C00520065006E00640073007A0061006D005F006800
      6100740073006F0001006C0062006C00520065006E00640073007A0061006D00
      5F0068006100740073006F0001000D000A006C0062006C005400680045006C00
      6F00310001006C0062006C005400680045006C006F00310001006C0062006C00
      5400680045006C006F00310001006C0062006C005400680045006C006F003100
      01000D000A006C0062006C005400680045006C006F00320001006C0062006C00
      5400680045006C006F00320001006C0062006C005400680045006C006F003200
      01006C0062006C005400680045006C006F00320001000D000A006C0062006C00
      5400680045006C006F00330001006C0062006C005400680045006C006F003300
      01006C0062006C005400680045006C006F00330001006C0062006C0054006800
      45006C006F00330001000D000A006C0062006C005400680045006C006F003400
      01006C0062006C005400680045006C006F00340001006C0062006C0054006800
      45006C006F00340001006C0062006C005400680045006C006F00340001000D00
      0A006C0062006C0054006800520065006E00640073007A0061006D0031000100
      6C0062006C0054006800520065006E00640073007A0061006D00310001006C00
      62006C0054006800520065006E00640073007A0061006D00310001006C006200
      6C0054006800520065006E00640073007A0061006D00310001000D000A006C00
      62006C0054006800520065006E00640073007A0061006D00320001006C006200
      6C0054006800520065006E00640073007A0061006D00320001006C0062006C00
      54006800520065006E00640073007A0061006D00320001006C0062006C005400
      6800520065006E00640073007A0061006D00320001000D000A004C0069007300
      74006100310001004C00690073007400610001004C0069007300740001004C00
      690073007400030101000D000A004C006900730074006B00310001004C006900
      73007400E1006B0001004C00690073007400730001004C006900730074006500
      01000D000A006D006E0053007A00610062006C0079006F0073006D0072006C00
      6500670065006E0074006100720074006F007A006B006F006400730066006900
      6700790065006C0073003100010053007A0061006200E1006C0079006F007300
      6D00E90072006C006500670065006E00200074006100720074006F007A006B00
      6F006400E10073002000660069006700790065006C00E9007300200028004900
      4E0046005200410035002C0049004E004600520041003600290001004D006F00
      6E00690074006F00720069006E00670020006F0066002000700072006F007000
      65007200200070006F0073006900740069006F006E0020006F006E0020007400
      6800650020007300630061006C0065002000280049004E004600520041003500
      2C0049004E004600520041003600290001004D006F006E00690074006F007200
      69007A00610072006500200070006F007A0069001B0269006F006E0061007200
      6500200063006F007200650063007400030120007000650020006300E2006E00
      7400610072002000280049004E0046005200410035002C0049004E0046005200
      41003600290001000D000A006D006F007A006700610073006F006B005F006D00
      01004D006F007A006700E10073006F006B0020006C00690073007400E1006A00
      610001004C0069007300740020006F00660020006D006F00760065006D006500
      6E007400730001004C00690073007400610020006D0069001902630003017200
      69006C006F00720001000D000A004D0072006C006500670065006C0073006500
      6B006C006900730074006A006100310001004D00E90072006C00650067006500
      6C00E900730065006B0020006C00690073007400E1006A00610001004C006900
      7300740020006F00660020007700650069006700680069006E00670073000100
      4C00690073007400610020006300E2006E007400030172006900720069006C00
      6F00720001000D000A004D0072006C00650067006A0065006700790065006B00
      6C006900730074006A006100310001004D00E90072006C00650067006A006500
      6700790065006B0020006C00690073007400E1006A00610001004C0069007300
      740020006F00660020007700650069006700680069006E006700200074006900
      63006B0065007400730001004C006900730074006100200062006F006E007500
      720069006C006F00720020006400650020006300E2006E007400610072000100
      0D000A004D0072006C00650067006B0065007A0065006C006B00310001004D00
      E90072006C00650067006B0065007A0065006C0051016B000100530063006100
      6C00650020006F00700065007200610074006F007200730001004F0070006500
      7200610074006F007200690020006300E2006E0074006100720001000D000A00
      500061006E0065006C0033000100500061006E0065006C003300010050006100
      6E0065006C0033000100500061006E0065006C00330001000D000A0050006100
      720074006E006500720065006B003100010050006100720074006E0065007200
      65006B00010050006100720074006E0065007200730001005000610072007400
      65006E0065007200690001000D000A0050004C00430073006F0072006F007300
      70006F0072007400620065006C006C00740073003100010050004C0043002000
      73006F0072006F007300200070006F0072007400200062006500E1006C006C00
      ED007400E1007300010050004C0043002000730065007200690061006C002000
      70006F00720074002000730065007400740069006E0067007300010053006500
      7400030172006900200070006F00720074002000730065007200690061006C00
      200050004C00430001000D000A00500072006F00730074006F00740074006D00
      7200730065006B00310001005000E10072006F007300ED0074006F0074007400
      20006D00E9007200E900730065006B0001005000610069007200650064002000
      7700650069006700680069006E006700730001004300E2006E00740003017200
      6900720069002000610073006F006300690061007400650001000D000A007000
      750073006F006B00310001005400ED007000750073006F006B00010054007900
      700065007300010054006900700075007200690001000D000A00520061006B00
      740072006B007A00690073007A006C006C0074006C00650076006C0031000100
      520061006B007400E10072006B00F6007A006900200073007A00E1006C006C00
      ED007400F3006C0065007600E9006C00010049006E007400650072002D007700
      61007200650068006F007500730065002000640065006C006900760065007200
      790020006E006F007400650001004100760069007A0020006400650020007400
      720061006E0073006600650072002000EE006E00740072006500200064006500
      70006F007A0069007400650001000D000A00520065006E00640073007A006D00
      6F006B0031000100520065006E00640073007A00E1006D006F006B0001005000
      6C0061007400650020006E0075006D00620065007200730001004E0075006D00
      6500720065002000640065002000EE006E006D00610074007200690063007500
      6C0061007200650001000D000A0072006F006C006B00310001005400E1007200
      6F006C00F3006B000100530074006F0072006100670065007300010044006500
      70006F007A0069007400650001000D000A0072007A0073006100640061007400
      6F006B00310001005400F60072007A00730061006400610074006F006B000100
      4D00610073007400650072002000640061007400610001004400610074006500
      2000640065002000620061007A00030101000D000A00530061006A0074006A00
      65006C0073007A006D0064006F00730074007300610031000100530061006A00
      E100740020006A0065006C0073007A00F30020006D00F30064006F007300ED00
      7400E1007300610001004300680061006E006700650020006D00790020007000
      61007300730077006F0072006400010053006300680069006D00620061007200
      6500610020007000610072006F006C00650069002000700072006F0070007200
      6900690001000D000A007300620074006E0046006F006C007900740061007400
      6100730001004D00E90072006C00650067006A00650067007900200066006F00
      6C007900740061007400E10073006100010043006F006E00740069006E007500
      650020007700650069006700680069006E00670020007400690063006B006500
      7400010043006F006E00740069006E007500610072006500200062006F006E00
      20006400650020006300E2006E0074006100720001000D000A00730062007400
      6E004C00690073007400610001004D00E9007200E900730065006B0020006C00
      690073007400E1006A00610001004C0069007300740020006F00660020007700
      650069006700680069006E006700730001004C00690073007400610020006300
      E2006E007400030172006900720069006C006F00720001000D000A0073006200
      74006E0055006A006D00650072006C00650067006A006500670079000100DA00
      6A0020006D00E90072006C00650067006A0065006700790001004E0065007700
      20007700650069006700680069006E00670020007400690063006B0065007400
      010042006F006E0020006400650020006300E2006E0074006100720020006E00
      6F00750001000D000A0053006F0072006F006D0070006E007900690074006900
      6E0066007200610068006900620061003100010042004500200053006F007200
      6F006D007000F30020006E00790069007400F300200069006E00660072006100
      20006800690062006100010049004E0020006200610072007200690065007200
      20006F00700065006E0069006E006700200069006E0066007200610020006500
      720072006F0072000100450072006F00610072006500200069006E0066007200
      610072006F001902750020006400650073006300680069006400650072006500
      20006200610072006900650072000301200049004E0054005200410052004500
      01000D000A0053006F0072006F00730070006F0072007400620065006C006C00
      740073003100010053006F0072006F007300200070006F007200740020006200
      6500E1006C006C00ED007400E10073000100530065007200690061006C002000
      70006F00720074002000730065007400740069006E0067007300010053006500
      7400030172006900200070006F00720074002000730065007200690061006C00
      01000D000A0053007A006F0066007400760065007200620065006C006C007400
      73006F006B003100010053007A006F0066007400760065007200200062006500
      E1006C006C00ED007400E10073006F006B00010053006F006600740077006100
      720065002000730065007400740069006E006700730001005300650074000301
      72006900200073006F0066007400770061007200650001000D000A0074006200
      46006F007200670061006C006F006D00010046006F007200670061006C006F00
      6D00010054007200610066006600690063000100540072006100660069006300
      01000D000A0074006200490064006500690067006C0065006E00650073000100
      490064006500690067006C0065006E00650073000100540065006D0070006F00
      72006100720079000100540065006D0070006F0072006100720001000D000A00
      7400650073007A0074005F006D0001005400650073007A007400010054006500
      730074000100540065007300740001000D000A0074006F006D00650067005F00
      6C00650076006F006E005F0073007A006F0076006500670065006B005F006D00
      01005400F6006D006500670020006C00650076006F006E00E100730069002000
      73007A00F60076006500670065006B0001005700650069006700680074002000
      64006500640075006300740069006F006E002000740065007800740073000100
      5400650078007400650020006400650020007300630003016400650072006500
      2000610020006700720065007500740003011B026900690001000D000A007400
      75006C0061006A005F006D000100540075006C0061006A0064006F006E006F00
      73006F006B0001004F0077006E006500720073000100500072006F0070007200
      69006500740061007200690001000D000A0073007400480069006E0074007300
      5F0055006E00690063006F00640065000D000A004A0076004C00450044003100
      01004400750070006C00610020006B00610074007400740069006E007400E100
      7300730061006C0020007600E1006C007400680061007400010044006F007500
      62006C0065002D0063006C00690063006B00200074006F002000730077006900
      74006300680001004400750062006C007500200063006C006900630020007000
      65006E0074007200750020006100200063006F006D0075007400610001000D00
      0A004A0076004C0045004400320001004400750070006C00610020006B006100
      74007400740069006E007400E1007300730061006C0020007600E1006C007400
      680061007400010044006F00750062006C0065002D0063006C00690063006B00
      200074006F00200073007700690074006300680001004400750062006C007500
      200063006C00690063002000700065006E007400720075002000610020006300
      6F006D0075007400610001000D000A004A0076004C0045004400330001004400
      750070006C00610020006B00610074007400740069006E007400E10073007300
      61006C0020007600E1006C007400680061007400010044006F00750062006C00
      65002D0063006C00690063006B00200074006F00200073007700690074006300
      680001004400750062006C007500200063006C00690063002000700065006E00
      74007200750020006100200063006F006D0075007400610001000D000A004A00
      76004C0045004400340001004400750070006C00610020006B00610074007400
      740069006E007400E1007300730061006C0020007600E1006C00740068006100
      7400010044006F00750062006C0065002D0063006C00690063006B0020007400
      6F00200073007700690074006300680001004400750062006C00750020006300
      6C00690063002000700065006E0074007200750020006100200063006F006D00
      75007400610001000D000A004A0076004C004500440035000100440075007000
      6C00610020006B00610074007400740069006E007400E1007300730061006C00
      20007600E1006C007400680061007400010044006F00750062006C0065002D00
      63006C00690063006B00200074006F0020007300770069007400630068000100
      4400750062006C007500200063006C00690063002000700065006E0074007200
      750020006100200063006F006D0075007400610001000D000A004A0076004C00
      45004400360001004400750070006C00610020006B0061007400740074006900
      6E007400E1007300730061006C0020007600E1006C0074006800610074000100
      44006F00750062006C0065002D0063006C00690063006B00200074006F002000
      73007700690074006300680001004400750062006C007500200063006C006900
      63002000700065006E0074007200750020006100200063006F006D0075007400
      610001000D000A004A0076004C0045004400370001004400750070006C006100
      20006B00610074007400740069006E007400E1007300730061006C0020007600
      E1006C007400680061007400010044006F00750062006C0065002D0063006C00
      690063006B00200074006F002000730077006900740063006800010044007500
      62006C007500200063006C00690063002000700065006E007400720075002000
      6100200063006F006D0075007400610001000D000A004A0076004C0045004400
      380001004400750070006C00610020006B00610074007400740069006E007400
      E1007300730061006C0020007600E1006C007400680061007400010044006F00
      750062006C0065002D0063006C00690063006B00200074006F00200073007700
      690074006300680001004400750062006C007500200063006C00690063002000
      700065006E0074007200750020006100200063006F006D007500740061000100
      0D000A007300740044006900730070006C00610079004C006100620065006C00
      73005F0055006E00690063006F00640065000D000A007300740046006F006E00
      740073005F0055006E00690063006F00640065000D000A00540046006F004600
      01005400610068006F006D00610001005300650067006F006500200055004900
      01005300650067006F00650020005500490001000D000A00620074006E006E00
      6100670079006B0061006D006B006500700001005400610068006F006D006100
      01005300650067006F00650020005500490001005300650067006F0065002000
      5500490001000D000A006C0062006C00520065006E00640073007A0061006D00
      5F0065006C0073006F000100540069006D006500730020004E00650077002000
      52006F006D0061006E0001005300650067006F00650020005500490001005300
      650067006F00650020005500490001000D000A006C0062006C00520065006E00
      640073007A0061006D005F0068006100740073006F000100540069006D006500
      730020004E0065007700200052006F006D0061006E0001005300650067006F00
      650020005500490001005300650067006F00650020005500490001000D000A00
      7300620074006E004C00690073007400610001005400610068006F006D006100
      01005300650067006F00650020005500490001005300650067006F0065002000
      5500490001000D000A007300620074006E0053006F00720073007A0061006D00
      6800690076006100730001005400610068006F006D0061000100530065006700
      6F00650020005500490001005300650067006F00650020005500490001000D00
      0A00530074006100740075007300420061007200310001005300650067006F00
      650020005500490001005300650067006F006500200055004900010053006500
      67006F00650020005500490001000D000A00730074004D0075006C0074006900
      4C0069006E00650073005F0055006E00690063006F00640065000D000A006D00
      65006D004C006F0067002E004C0069006E006500730001006D0065006D004C00
      6F0067000100010001000D000A007300740044006C0067007300430061007000
      740069006F006E0073005F0055006E00690063006F00640065000D000A004100
      62006F007200740001004D006500670073007A0061006B00ED007400E1007300
      01002600410062006F007200740001004100620061006E0064006F006E006100
      7200650001000D000A0041006C006C00010026004D0069006E00640001002600
      41006C006C000100260054006F0061007400650001000D000A00430061006E00
      630065006C0001004D00E9006700730065006D000100430061006E0063006500
      6C00010041006E0075006C0061007200650001000D000A0043006F006E006600
      690072006D0001004D00650067006500720051017300ED007400E90073000100
      43006F006E006600690072006D00010043006F006E006600690072006D006100
      7200650001000D000A004500720072006F007200010048006900620061000100
      4500720072006F0072000100450072006F0061007200650001000D000A004800
      65006C00700001002600530065006700ED0074007300E9006700010026004800
      65006C0070000100260041006A00750074006F00720001000D000A0049006700
      6E006F0072006500010026004D006500670073007A0061006B00ED007400E100
      730001002600490067006E006F007200650001002600490067006E006F007200
      61007200650001000D000A0049006E0066006F0072006D006100740069006F00
      6E00010049006E0066006F0072006D00E10063006900F300010049006E006600
      6F0072006D006100740069006F006E00010049006E0066006F0072006D006100
      1B026900650001000D000A004E006F00010026004E0065006D00010026004E00
      6F00010026004E00750001000D000A004E006F00200054006F00200041006C00
      6C0001004E00260065006D0020006D0069006E00640065006E00720065000100
      4E0026006F00200074006F00200041006C006C0001004E002600750020006C00
      6100200074006F0061007400650001000D000A004F004B0001004F004B000100
      4F004B0001004F004B0001000D000A005200650074007200790001002600DA00
      6A007200610001002600520065007400720079000100260052006500EE006E00
      630065007200630061007200650001000D000A005700610072006E0069006E00
      67000100460069006700790065006C006D0065007A00740065007400E9007300
      01005700610072006E0069006E00670001004100760065007200740069007300
      6D0065006E00740001000D000A00590065007300010026004900670065006E00
      01002600590065007300010026004400610001000D000A005900650073002000
      54006F00200041006C006C0001004900670065006E00200026006D0069006E00
      640065006E00720065000100590065007300200074006F002000260041006C00
      6C0001004400610020006C0061002000260074006F0061007400650001000D00
      0A007300740053007400720069006E00670073005F0055006E00690063006F00
      640065000D000A0073007400720072007300410064006A0061004D0065006700
      4100460075007600610072006F007A006F0074000100410064006A0061002000
      6D0065006700200061002000660075007600610072006F007A00F30074002100
      010045006E007400650072002000740068006500200063006100720072006900
      650072002100010049006E00740072006F0064007500630065001B0269002000
      7400720061006E00730070006F0072007400610074006F00720075006C002100
      01000D000A0073007400720072007300410064006A0061004D00650067004100
      4A0065006C0065006E006C006500670069004A0065006C0073007A0061007600
      610074000100410064006A00610020006D00650067002000610020006A006500
      6C0065006E006C0065006700690020006A0065006C0073007A0061007600E100
      74002000010045006E00740065007200200079006F0075007200200063007500
      7200720065006E0074002000700061007300730077006F007200640020000100
      49006E00740072006F0064007500630065001B02690020007000610072006F00
      6C0061002000610063007400750061006C000301200001000D000A0073007400
      720072007300410064006A0061004D006500670041004D0065006E006E007900
      690073006500670065000100410064006A00610020006D006500670020006100
      20006D0065006E006E00790069007300E9006700650074002100010045006E00
      740065007200200074006800650020007100750061006E007400690074007900
      2100010049006E00740072006F0064007500630065001B026900200063006100
      6E007400690074006100740065006100210001000D000A007300740072007200
      7300410064006A0061004D006500670041004E00650076006500740001004100
      64006A00610020006D00650067002000610020006E0065007600650074003A00
      010045006E00740065007200200074006800650020006E0061006D0065003A00
      010049006E00740072006F0064007500630065001B02690020006E0075006D00
      65006C0065003A0001000D000A0073007400720072007300410064006A006100
      4D006500670041007A0055006A004A0065006C0073007A006100760061007400
      0100410064006A00610020006D0065006700200061007A002000FA006A002000
      6A0065006C0073007A0061007600E1007400010045006E007400650072002000
      79006F007500720020006E00650077002000700061007300730077006F007200
      6400010049006E00740072006F0064007500630065001B026900200070006100
      72006F006C00610020006E006F007500030101000D000A007300740072007200
      7300410064006A0061004D00650067004D0045000100410064006A0061002000
      6D00650067002000610020006D00E90072007400E9006B006500670079007300
      E9006700650074002100010045006E0074006500720020007400680065002000
      75006E006900740020006F00660020006D006500610073007500720065002100
      010049006E00740072006F0064007500630065001B026900200075006E006900
      7400610074006500610020006400650020006D00030173007500720003012100
      01000D000A007300740072007200730041004800690076006F0073007A006100
      6D004B0069006A0065006C007A006F0050006F00720074004E0069006E006300
      73004200650061006C006C0069007400760061000100410020006800ED007600
      F30073007A00E1006D0020006B0069006A0065006C007A005101200070006F00
      7200740020006E0069006E0063007300200062006500E1006C006C00ED007400
      76006100210001005400680065002000630061006C006C0020006E0075006D00
      620065007200200064006900730070006C0061007900200070006F0072007400
      20006900730020006E006F00740020007300650074002100010050006F007200
      740075006C002000610066006900190261006A0075006C007500690020007000
      65006E0074007200750020006E0075006D000301720075006C00200064006500
      20006100700065006C0020006E00750020006500730074006500200073006500
      740061007400210001000D000A007300740072007200730041004B0065007400
      4A0065006C0073007A006F004E0065006D0045006700790065007A0069006B00
      0100410020006B00E900740020006D0065006700610064006F00740074002000
      6A0065006C0073007A00F30020006E0065006D00200065006700790065007A00
      69006B00210001005400680065002000740077006F0020007000610073007300
      77006F00720064007300200064006F0020006E006F00740020006D0061007400
      6300680021000100430065006C006500200064006F0075000301200070006100
      72006F006C00650020006E007500200063006F0069006E006300690064002100
      01000D000A007300740072007200730041004B0069006A0065006C007A006F00
      50006F00720074004E0069006E00630073004200650061006C006C0069007400
      760061000100410020006B0069006A0065006C007A005101200070006F007200
      740020006E0069006E0063007300200062006500E1006C006C00ED0074007600
      610021000100540068006500200064006900730070006C006100790020007000
      6F007200740020006900730020006E006F007400200073006500740021000100
      50006F007200740075006C002000610066006900190261006A0075006C007500
      690020006E007500200065007300740065002000730065007400610074002100
      01000D000A007300740072007200730041007400610064006F000100C1007400
      61006400F3003A000100480061006E0064006500640020006F00760065007200
      2000620079003A0001005000720065006400610074002000640065003A000100
      0D000A0073007400720072007300410074007600650076006F000100C1007400
      76006500760051013A0001005200650063006500690076006500640020006200
      79003A0001005000720069006D00690074002000640065003A0001000D000A00
      7300740072007200730041007A000100410028007A0029002000010054006800
      6500200001004300E2006D00700075006C00200001000D000A00730074007200
      720073004200650061006C006C0069007400610073006F006B004D0065006E00
      740076006500010042006500E1006C006C00ED007400E10073006F006B002000
      6D0065006E0074007600650021000100530065007400740069006E0067007300
      2000730061007600650064002100010053006500740003017200690020007300
      61006C007600610074006500210001000D000A00730074007200720073004200
      65006A0065006C0065006E0074006B0065007A00760065000100420065006A00
      65006C0065006E0074006B0065007A00760065003A00200001004C006F006700
      670065006400200069006E003A002000010041007500740065006E0074006900
      660069006300610074003A00200001000D000A00730074007200720073004200
      650073007A0061006C006C00690074006F0001004200650073007A00E1006C00
      6C00ED007400F3003A00010053007500700070006C006900650072003A000100
      4600750072006E0069007A006F0072003A0001000D000A007300740072007200
      7300420069007A006F006E0079006C00610074004B00690062006F0063007300
      6A0074006F0074004D00650067004B0065006C006C00410064006E0069000100
      41002000620069007A006F006E0079006C006100740020006B00690062006F00
      63007300E1006A007400F300740020006D006500670020006B0065006C006C00
      2000610064006E00690021000100540068006500200064006F00630075006D00
      65006E007400200069007300730075006500720020006D007500730074002000
      6200650020007300700065006300690066006900650064002100010045006D00
      6900740065006E00740075006C00200064006F00630075006D0065006E007400
      75006C0075006900200074007200650062007500690065002000730070006500
      6300690066006900630061007400210001000D000A0073007400720072007300
      420069007A0074006F00730061006E0054006F0072006C006900010042006900
      7A0074006F00730061006E0020007400F60072006C0069003F00010041007200
      6500200079006F00750020007300750072006500200079006F00750020007700
      61006E007400200074006F002000640065006C006500740065003F0001005300
      6900670075007200200064006F00720069001B02690020007300030120001902
      740065007200670065001B0269003F0001000D000A0073007400720072007300
      420069007A0074006F00730061006E0054006F0072006C00690045006C007300
      7A0061006D006F006C006100730062006F006C000100420069007A0074006900
      730061006E0020007400F60072006C006900200061007A00200065006C007300
      7A00E1006D006F006C00E10073006200F3006C003F0001004100720065002000
      79006F00750020007300750072006500200079006F0075002000770061006E00
      7400200074006F002000720065006D006F007600650020006900740020006600
      72006F006D002000740068006500200073006500740074006C0065006D006500
      6E0074003F00010053006900670075007200200064006F00720069001B026900
      2000730003012D006C0020001902740065007200670065001B02690020006400
      69006E0020006400650063006F006E0074003F0001000D000A00730074007200
      7200730043007300610074006C0061006B006F007A0074006100740076006100
      010043007300610074006C0061006B006F007A00740061007400760061003A00
      2000010043006F006E006E00650063007400650064003A002000010043006F00
      6E00650063007400610074003A00200001000D000A0073007400720072007300
      4500620062006F006C0041004D00650072006500730062006F006C004D006100
      72004B00650073007A0075006C0074004D006A00650067007900010045006200
      620051016C002000610020006D00E9007200E9007300620051016C0020006D00
      E100720020006B00E90073007A00FC006C00740020006D00E90072006C006500
      67006A0065006700790021000100410020007700650069006700680069006E00
      670020007400690063006B00650074002000680061007300200061006C007200
      650061006400790020006200650065006E002000630072006500610074006500
      64002000660072006F006D002000740068006900730020007700650069006700
      680069006E00670021000100440069006E002000610063006500610073007400
      030120006300E2006E00740003017200690072006500200073002D0061002000
      630072006500610074002000640065006A006100200075006E00200062006F00
      6E0020006400650020006300E2006E00740061007200210001000D000A007300
      740072007200730045006C00610064006F00010045006C0061006400F3003A00
      0100530065006C006C00650072003A0001005600E2006E007A00030174006F00
      72003A0001000D000A007300740072007200730045006C00610073007A006F00
      6C0061007300620061006E0065006700790050006100720074006E0065007200
      0100450067007900200065006C0073007A00E1006D006F006C00E10073006200
      61006E0020006300730061006B00200065006700790020007000610072007400
      6E0065007200200073007A00650072006500700065006C006800650074002100
      01004F006E006C00790020006F006E006500200070006100720074006E006500
      72002000630061006E002000610070007000650061007200200069006E002000
      6100200073006500740074006C0065006D0065006E00740021000100CE006E00
      740072002D0075006E0020006400650063006F006E007400200070006F006100
      740065002000660069006700750072006100200075006E002000730069006E00
      6700750072002000700061007200740065006E0065007200210001000D000A00
      7300740072007200730045006C00610073007A006F006C006100730062006100
      6E006500670079005400650072006D0065006B00010045006700790020006500
      6C0073007A00E1006D006F006C00E1007300620061006E002000630073006100
      6B00200065006700790020007400650072006D00E9006B00200073007A006500
      72006500700065006C00680065007400210001004F006E006C00790020006F00
      6E0065002000700072006F0064007500630074002000630061006E0020006100
      70007000650061007200200069006E0020006100200073006500740074006C00
      65006D0065006E00740021000100CE006E00740072002D0075006E0020006400
      650063006F006E007400200070006F0061007400650020006600690067007500
      72006100200075006E002000730069006E006700750072002000700072006F00
      640075007300210001000D000A007300740072007200730045006C006F006B00
      65007000310046006F006C00790061006D00610074006F0073000100C9006C00
      51016B00E9007000280031002900200046004F004C00590041004D0041005400
      4F00530001004C00690076006500200076006900650077002800310029002000
      43004F004E00540049004E0055004F0055005300010049006D00610067006900
      6E00650020006C00690076006500280031002900200043004F004E0054004900
      4E005500550001000D000A007300740072007200730045006C006F006B006500
      7000310053007A0075006E006500740065006C000100C9006C0051016B00E900
      7000280031002900200053005A00DC004E004500540045004C0001004C006900
      7600650020007600690065007700280031002900200050004100550053004500
      4400010049006D006100670069006E00650020006C0069007600650028003100
      29002000CE004E00540052004500520055005000540001000D000A0073007400
      72007200730045006C006F006B0065007000320046006F006C00790061006D00
      610074006F0073000100C9006C0051016B00E900700028003200290020004600
      4F004C00590041004D00410054004F00530001004C0069007600650020007600
      690065007700280032002900200043004F004E00540049004E0055004F005500
      5300010049006D006100670069006E00650020006C0069007600650028003200
      2900200043004F004E00540049004E005500550001000D000A00730074007200
      7200730045006C006F006B0065007000320053007A0075006E00650074006500
      6C000100C9006C0051016B00E9007000280032002900200053005A00DC004E00
      4500540045004C0001004C006900760065002000760069006500770028003200
      29002000500041005500530045004400010049006D006100670069006E006500
      20006C006900760065002800320029002000CE004E0054005200450052005500
      5000540001000D000A007300740072007200730045006C006F0073007A006F00
      720054006500740065006C007400560069006700790065006E00460065006C00
      010045006C00510173007A00F60072002000760069006700790065006E002000
      660065006C0020007400E900740065006C0065006B0065007400210001004100
      6400640020006900740065006D00730020006600690072007300740021000100
      4100640003017500670061001B02690020006D00610069002000EE006E007400
      E20069002000610072007400690063006F006C006500210001000D000A007300
      7400720072007300450072006F00730069007400730065004D00650067004100
      7A0055006A004A0065006C0073007A0061007600610074000100450072005101
      7300ED0074007300650020006D0065006700200061007A002000FA006A002000
      6A0065006C0073007A0061007600E1007400010043006F006E00660069007200
      6D00200079006F007500720020006E0065007700200070006100730073007700
      6F0072006400010043006F006E006600690072006D0061001B02690020007000
      610072006F006C00610020006E006F007500030101000D000A00730074007200
      7200730045007200740065006B000100C90072007400E9006B003A0020000100
      560061006C00750065003A0020000100560061006C006F006100720065003A00
      200001000D000A007300740072007200730045007200740065006B0065007300
      690074006F000100C90072007400E9006B0065007300ED00740051013A000100
      530061006C006500730020006100670065006E0074003A000100410067006500
      6E00740020006400650020007600E2006E007A000301720069003A0001000D00
      0A007300740072007200730045007A0041004B006F0064004D00610072004600
      6F0067006C0061006C007400010045007A002000610020006B00F30064002000
      6D00E1007200200066006F0067006C0061006C00740021000100540068006900
      7300200063006F0064006500200069007300200061006C007200650061006400
      79002000740061006B0065006E00210001004100630065007300740020006300
      6F006400200065007300740065002000640065006A00610020006F0063007500
      700061007400210001000D000A007300740072007200730045007A0041004E00
      650076004D006100720046006F0067006C0061006C007400010045007A002000
      610020006E00E900760020006D00E1007200200066006F0067006C0061006C00
      740021000100540068006900730020006E0061006D0065002000690073002000
      61006C00720065006100640079002000740061006B0065006E00210001004100
      630065007300740020006E0075006D0065002000650073007400650020006400
      65006A00610020006F0063007500700061007400210001000D000A0073007400
      72007200730045007A0061005400650072006D0065006B006D00650072007300
      7A00650072006500700065006C00640069006A0073007A00610062006B006100
      7400010045007A002000610020007400650072006D00E9006B0020006D00E100
      7200200073007A00650072006500700065006C00200065006200620065006E00
      2000610020006400ED006A0073007A0061006200E100730020006B0061007400
      65006700F30072006900E100620061006E002100010054006800690073002000
      700072006F006400750063007400200069007300200061006C00720065006100
      64007900200069006E0020007400680069007300200070007200690063006900
      6E0067002000630061007400650067006F007200790021000100410063006500
      730074002000700072006F006400750073002000660069006700750072006500
      61007A0003012000640065006A0061002000EE006E0020006100630065006100
      7300740003012000630061007400650067006F00720069006500200064006500
      200074006100720069006600610072006500210001000D000A00730074007200
      7200730045007A00740041005400650072006D0065006B00650074004D006100
      7200460065006C0076006500740074006500010045007A007400200061002000
      7400650072006D00E9006B006500740020006D00E10072002000660065006C00
      760069007400740065002000610020007400E900740065006C0065006B002000
      6B00F6007A00E9002100010054006800690073002000700072006F0064007500
      630074002000680061007300200061006C007200650061006400790020006200
      650065006E00200061006400640065006400200074006F002000740068006500
      20006900740065006D0073002100010041006300650073007400200070007200
      6F0064007500730020006100200066006F00730074002000640065006A006100
      2000610064000301750067006100740020006C00610020006100720074006900
      63006F006C006500210001000D000A0073007400720072007300460065006C00
      6800610073007A006E0061006C006F004C00650074007200650068006F007A00
      760061000100460065006C006800610073007A006E00E1006C00F30020006C00
      E90074007200650068006F007A00760061002E0020004A0065006C0073007A00
      F3003A002000700072006F006200610001005500730065007200200063007200
      650061007400650064002E002000500061007300730077006F00720064003A00
      2000700072006F006200610001005500740069006C0069007A00610074006F00
      72002000630072006500610074002E0020005000610072006F006C0003013A00
      2000700072006F006200610001000D000A007300740072007200730046006500
      6C006800610073007A006E0061006C006F004D00610072004C00650074006500
      7A0069006B00010049006C00790065006E002000660065006C00680061007300
      7A006E00E1006C00F30020006D00E100720020006C00E900740065007A006900
      6B0021000100540068006900730020007500730065007200200061006C007200
      6500610064007900200065007800690073007400730021000100410063006500
      7300740020007500740069006C0069007A00610074006F007200200065007800
      69007300740003012000640065006A006100210001000D000A00730074007200
      72007300460065006C006800610073007A006E0061006C006F004D006F006400
      6F00730069007400610073000100460065006C006800610073007A006E00E100
      6C00F30020006D00F30064006F007300ED007400E1007300610001004D006F00
      64006900660079002000750073006500720001004D006F006400690066006900
      630061007200650020007500740069006C0069007A00610074006F0072000100
      0D000A0073007400720072007300460065006C006800610073007A006E006100
      6C006F0054006F0072006C006500730065000100420069007A0074006F007300
      61006E0020007400F60072006C006900200065007A0074002000610020006600
      65006C006800610073007A006E00E1006C00F30074003F000100410072006500
      200079006F00750020007300750072006500200079006F007500200077006100
      6E007400200074006F002000640065006C006500740065002000740068006900
      7300200075007300650072003F00010053006900670075007200200064006F00
      720069001B02690020007300030120001902740065007200670065001B026900
      20006100630065007300740020007500740069006C0069007A00610074006F00
      72003F0001000D000A0073007400720072007300460065006C00720061006B00
      410064006F0073007A0061006D00610048006900620061007300010048006900
      6200E1007300200061002000660065006C00720061006B006F006400E1007300
      690020006300E9006700200061006400F30073007A00E1006D00610021000100
      54006800650020006C006F006100640069006E006700200063006F006D007000
      61006E00790027007300200074006100780020006E0075006D00620065007200
      200069007300200069006E00760061006C00690064002100010043006F006400
      75006C002000660069007300630061006C00200061006C002000660069007200
      6D00650069002000640065002000EE006E006300030172006300610072006500
      200065007300740065002000670072006500190269007400210001000D000A00
      73007400720072007300460065006C00720061006B0043006500670065007400
      650067004B0065006C006C00410064006E006900010041002000660065006C00
      720061006B006F006400E1007300690020006300E90067006500740020006D00
      6500670020006B0065006C006C002000610064006E0069002100010054006800
      650020006C006F006100640069006E006700200063006F006D00700061006E00
      790020006D007500730074002000620065002000730070006500630069006600
      690065006400210001004600690072006D0061002000640065002000EE006E00
      6300030172006300610072006500200074007200650062007500690065002000
      73007000650063006900660069006300610074000301210001000D000A007300
      7400720072007300460065006C00720061006B004900720073007A0048006900
      6200610073000100480069006200E1007300200061002000660065006C007200
      61006B006F006400E1007300690020006300E9006700200069007200E1006E00
      7900ED007400F30073007A00E1006D0061002100010054006800650020006C00
      6F006100640069006E006700200063006F006D00700061006E00790027007300
      200070006F007300740061006C00200063006F00640065002000690073002000
      69006E00760061006C00690064002100010043006F00640075006C0020007000
      6F001902740061006C00200061006C0020006600690072006D00650069002000
      640065002000EE006E0063000301720063006100720065002000650073007400
      65002000670072006500190269007400210001000D000A007300740072007200
      7300460065006C00720061006B004F00720073007A0061006700610074004D00
      650067004B0065006C006C00410064006E006900010041002000660065006C00
      720061006B006F006400E1007300690020006300E900670020006F0072007300
      7A00E1006700E100740020006D006500670020006B0065006C006C0020006100
      64006E0069002100010054006800650020006C006F006100640069006E006700
      200063006F006D00700061006E00790027007300200063006F0075006E007400
      7200790020006D00750073007400200062006500200073007000650063006900
      6600690065006400210001001A0261007200610020006600690072006D006500
      69002000640065002000EE006E00630003017200630061007200650020007400
      7200650062007500690065002000730070006500630069006600690063006100
      74000301210001000D000A0073007400720072007300460065006C0072006100
      6B005600610072006F007300480069006200610073000100480069006200E100
      7300200061002000660065006C00720061006B006F006400E100730069002000
      6300E900670020007600E10072006F0073006100010054006800650020006C00
      6F006100640069006E006700200063006F006D00700061006E00790027007300
      20006300690074007900200069007300200069006E00760061006C0069006400
      01004C006F00630061006C006900740061007400650061002000660069007200
      6D00650069002000640065002000EE006E006300030172006300610072006500
      200065007300740065002000670072006500190269007400030101000D000A00
      73007400720072007300460065006C0074006F006C007400010053007A006500
      7200650074006E00E90020006D006F00730074002000660065006C007400F600
      6C00740065006E0069002000610020006D00E90072006C00650067006A006500
      6700790065006B00650074003F00010044006F00200079006F00750020007700
      61006E007400200074006F002000750070006C006F0061006400200074006800
      650020007700650069006700680069006E00670020007400690063006B006500
      7400730020006E006F0077003F00010044006F00720069001B02690020007300
      03012000EE006E00630003017200630061001B02690020006100630075006D00
      200062006F006E007500720069006C00650020006400650020006300E2006E00
      7400610072003F0001000D000A0073007400720072007300460065006C007500
      6C004900720041004B00650073007A006C00650074000100460065006C00FC00
      6C00ED0072006A006100200061007A0020002200410001006B00E90073007A00
      6C0065007400650074003F00220001004F007600650072007700720069007400
      6500200074006800650020002200410022002000730074006F0063006B003F00
      01000D000A0073007400720072007300460065006C007600650073007A000100
      460065006C007600650073007A00010041006400640001004100640003017500
      670061007200650001000D000A007300740072007200730046006F0067006100
      64006F0050006100720074006E006500720074004D00650067004B0065006C00
      6C00410064006E00690001005600E1006C006100730073007A00610020006B00
      690020006100200066006F00670061006400F300200070006100720074006E00
      65007200740021000100530065006C0065006300740020007400680065002000
      72006500630065006900760069006E006700200070006100720074006E006500
      720021000100530065006C0065006300740061001B0269002000700061007200
      740065006E006500720075006C002000640065007300740069006E0061007400
      61007200210001000D000A007300740072007200730046006F00670061006400
      6F005400610072006F006C006F0074004D00650067004B0065006C006C004100
      64006E00690001005600E1006C006100730073007A00610020006B0069002000
      6100200066006F00670061006400F30020007400E10072006F006C00F3007400
      21000100530065006C0065006300740020007400680065002000720065006300
      65006900760069006E0067002000730074006F00720061006700650021000100
      530065006C0065006300740061001B02690020006400650070006F007A006900
      740075006C002000640065007300740069006E00610074006100720021000100
      0D000A007300740072007200730046006F006C0079007400610074006A006100
      010046006F006C0079007400610074006A0061003F00010043006F006E007400
      69006E00750065003F00010043006F006E00740069006E00750061001B026900
      3F0001000D000A00730074007200720073004600720069007300730069007400
      65007300010041002000700072006F006700720061006D002000660072006900
      73007300ED007400E900730020006D0069006100740074002000FA006A007200
      610069006E00640075006C0001005400680065002000700072006F0067007200
      61006D002000770069006C006C00200072006500730074006100720074002000
      640075006500200074006F00200061006E002000750070006400610074006500
      0100500072006F006700720061006D0075006C00200076006100200072006500
      70006F0072006E0069002000640069006E0020006300610075007A0061002000
      610063007400750061006C0069007A00030172006900690001000D000A007300
      7400720072007300460075007600610072006F007A006F000100460075007600
      610072006F007A00F3003A00010043006100720072006900650072003A000100
      5400720061006E00730070006F0072007400610074006F0072003A0001000D00
      0A00730074007200720073004800690062006100010048006900620061000100
      4500720072006F0072000100450072006F0061007200650001000D000A007300
      740072007200730048006900620061007300410064006F0073007A0061006D00
      0100480069006200E1007300200061006400F30073007A00E1006D0021000100
      49006E00760061006C0069006400200074006100780020006E0075006D006200
      650072002100010043006F0064002000660069007300630061006C0020006700
      72006500190269007400210001000D000A007300740072007200730048006900
      6200610073004A0065006C0073007A006F000100480069006200E10073002000
      6A0065006C0073007A00F300010049006E00760061006C006900640020007000
      61007300730077006F007200640001005000610072006F006C00030120006700
      72006500190269007400030101000D000A007300740072007200730048006900
      620061007300500065006C00640061006E00790073007A0061006D0001004800
      69006200E100730020007000E9006C006400E1006E00790073007A00E1006D00
      2100010049006E00760061006C006900640020006E0075006D00620065007200
      20006F006600200063006F007000690065007300210001004E0075006D000301
      720020006400650020006500780065006D0070006C0061007200650020006700
      72006500190269007400210001000D000A007300740072007200730048006900
      6200610073007400650072006D0065006B005600540053005A00010048006900
      6200E10073002000610020007400650072006D00E9006B002000560054005300
      5A00200073007A00E1006D006100210001005400680065002000700072006F00
      64007500630074002700730020005600540053005A0020006E0075006D006200
      65007200200069007300200069006E00760061006C0069006400210001004E00
      75006D000301720075006C0020005600540053005A00200061006C0020007000
      72006F0064007500730075006C00750069002000650073007400650020006700
      72006500190269007400210001000D000A007300740072007200730049006700
      65006E0001004900670065006E00010059006500730001004400610001000D00
      0A007300740072007200730049004F0049007200610073006900480069006200
      6100010049004F002000ED007200E10073006900200068006900620061002100
      010049004F0020007700720069007400650020006500720072006F0072002100
      0100450072006F00610072006500200064006500200073006300720069006500
      72006500200049004F00210001000D000A007300740072007200730049004F00
      4B0061007000630073006F006C00610074006900480069006200610001004900
      4F0020006B0061007000630073006F006C006100740069002000680069006200
      61002100010049004F00200063006F006E006E0065006300740069006F006E00
      20006500720072006F00720021000100450072006F0061007200650020006400
      6500200063006F006E0065007800690075006E006500200049004F0021000100
      0D000A00730074007200720073004900720073007A00650074004D0065006700
      4B0065006C006C00410064006E0069000100410064006A00610020006D006500
      6700200061007A00200069007200E1006E007900ED007400F30073007A00E100
      6D006F0074002100010045006E00740065007200200074006800650020007000
      6F007300740061006C00200063006F00640065002100010049006E0074007200
      6F0064007500630065001B026900200063006F00640075006C00200070006F00
      1902740061006C00210001000D000A0073007400720072007300490072007400
      430069006D000100CD007200740020006300ED006D0001005700720069007400
      740065006E002000610064006400720065007300730001004100640072006500
      73000301200073006300720069007300030101000D000A007300740072007200
      73004A00610072006D0075004E0069006E006300730041004D00650072006C00
      6500670065006E00010041007A002000E90072007A00E9006B0065006C005101
      6B00200073007A006500720069006E0074002000610020006A00E10072006D00
      710120006E0069006E00630073002000610020006D00E90072006C0065006700
      65006E002000740065006C006A006500730065006E0021002000410020006D00
      E9007200E900730020006E0065006D00200065006E00670065006400E9006C00
      790065007A00650074007400210001004100630063006F007200640069006E00
      6700200074006F0020007400680065002000730065006E0073006F0072007300
      20007400680065002000760065006800690063006C0065002000690073002000
      6E006F0074002000660075006C006C00790020006F006E002000740068006500
      20007300630061006C006500210020005700650069006700680069006E006700
      20006900730020006E006F007400200061006C006C006F007700650064002100
      010043006F006E0066006F0072006D002000730065006E007A006F0072006900
      6C006F0072002C0020007600650068006900630075006C0075006C0020006E00
      750020006500730074006500200063006F006D0070006C006500740020007000
      650020006300E2006E00740061007200210020004300E2006E00740003017200
      690072006500610020006E007500200065007300740065002000700065007200
      6D00690073000301210001000D000A00730074007200720073004A0065006C00
      73007A006F0001004A0065006C0073007A00F300010050006100730073007700
      6F007200640001005000610072006F006C00030101000D000A00730074007200
      720073004A0065006C0073007A006F004D006F0064006F007300690074007600
      61000100410020006A0065006C0073007A00F30020006D00F30064006F007300
      ED007400760061002E000100500061007300730077006F007200640020006300
      680061006E006700650064002E0001005000610072006F006C00610020006100
      200066006F0073007400200073006300680069006D0062006100740003012E00
      01000D000A00730074007200720073004B0061006D006500720061006B006500
      70004200650074006F006C007400650073006500530069006B00650072007400
      65006C0065006E0001004B0061006D006500720061006B00E900700020006200
      65007400F6006C007400E900730065002000730069006B006500720074006500
      6C0065006E00210001004600610069006C0065006400200074006F0020006C00
      6F00610064002000630061006D00650072006100200069006D00610067006500
      21000100CE006E0063000301720063006100720065006100200069006D006100
      670069006E00690069002000630061006D006500720065006900200061002000
      65001902750061007400210001000D000A00730074007200720073004B006100
      6D00650072004E0065006D0045006C00650072006800650074006F0001004B00
      61006D0065007200610020006E0065006D00200065006C00E900720068006500
      7400510121000100430061006D0065007200610020006E006F00740020006100
      7600610069006C00610062006C00650021000100430061006D00650072006100
      20006E00750020006500730074006500200064006900730070006F006E006900
      620069006C000301210001000D000A00730074007200720073004B0061007200
      74007900610001004B00E1007200740079006100010043006100720064000100
      430061007200640001000D000A00730074007200720073004B0065007A006900
      01004B00E9007A00690001004D0061006E00750061006C0001004D0061006E00
      750061006C0001000D000A00730074007200720073004B006900610064006F00
      50006100720074006E00650072004B00650073007A006C006500740065000100
      410020006B00690061006400F300200070006100720074006E00650072002000
      6B00E90073007A006C0065007400650020006B00650076006500730065006200
      62002C0020006D0069006E0074002000610020006B0069006100640061006E00
      6400F30020006D0065006E006E00790069007300E90067002E00200046006F00
      6C0079007400610074006A0061003F0001005400680065002000690073007300
      750069006E006700200070006100720074006E00650072002700730020007300
      74006F0063006B0020006900730020006C006500730073002000740068006100
      6E00200074006800650020007100750061006E00740069007400790020007400
      6F0020006200650020006900730073007500650064002E00200043006F006E00
      740069006E00750065003F000100530074006F00630075006C00200070006100
      7200740065006E006500720075006C0075006900200065007800700065006400
      690074006F0072002000650073007400650020006D006100690020006D006900
      63002000640065006300E20074002000630061006E0074006900740061007400
      6500610020006400650020006C00690076007200610074002E00200043006F00
      6E00740069006E00750061001B0269003F0001000D000A007300740072007200
      73004B006900610064006F0050006100720074006E006500720074004D006500
      67004B0065006C006C00410064006E00690001005600E1006C00610073007300
      7A00610020006B0069002000610020006B00690061006400F300200070006100
      720074006E0065007200740021000100530065006C0065006300740020007400
      680065002000690073007300750069006E006700200070006100720074006E00
      6500720021000100530065006C0065006300740061001B026900200070006100
      7200740065006E006500720075006C0020006500780070006500640069007400
      6F007200210001000D000A00730074007200720073004B006900610064006F00
      5400610072006F006C006F0074004D00650067004B0065006C006C0041006400
      6E00690001005600E1006C006100730073007A00610020006B00690020006100
      20006B00690061006400F30020007400E10072006F006C00F300740021000100
      530065006C006500630074002000740068006500200069007300730075006900
      6E0067002000730074006F00720061006700650021000100530065006C006500
      6300740061001B02690020006400650070006F007A006900740075006C002000
      65007800700065006400690074006F007200210001000D000A00730074007200
      720073004B0069006C00650070006500730046006F006C00790061006D006100
      7400620061006E0001006B0069006C00E9007000E9007300200066006F006C00
      790061006D0061007400620061006E002E002E002E0001006500780069007400
      69006E0067002E002E002E0001006900650019026900720065002000EE006E00
      200063007500720073002E002E002E0001000D000A0073007400720072007300
      4B006C00690065006E007300480069006200610001004B006C00690065006E00
      7300200068006900620061003A002000010043006C00690065006E0074002000
      6500720072006F0072003A0020000100450072006F0061007200650020006300
      6C00690065006E0074003A00200001000D000A00730074007200720073004B00
      6F00640001004B00F3006400010043006F0064006500010043006F0064000100
      0D000A00730074007200720073004B006F0064006F0074004D00650067004B00
      65006C006C00410064006E0069000100410064006A00610020006D0065006700
      2000610020006B00F30064006F0074002100010045006E007400650072002000
      740068006500200063006F00640065002100010049006E00740072006F006400
      7500630065001B026900200063006F00640075006C00210001000D000A007300
      74007200720073004C006500720061006B00410064006F0073007A0061006D00
      6100480069006200610073000100480069006200E10073002000610020006C00
      6500720061006B006F006400E1007300690020006300E9006700200061006400
      F30073007A00E1006D00610021000100540068006500200075006E006C006F00
      6100640069006E006700200063006F006D00700061006E007900270073002000
      74006100780020006E0075006D00620065007200200069007300200069006E00
      760061006C00690064002100010043006F00640075006C002000660069007300
      630061006C00200061006C0020006600690072006D0065006900200064006500
      2000640065007300630003017200630061007200650020006500730074006500
      2000670072006500190269007400210001000D000A0073007400720072007300
      4C006500720061006B00430065006700650074004D00650067004B0065006C00
      6C00410064006E0069000100410020006C006500720061006B006F006400E100
      7300690020006300E90067006500740020006D006500670020006B0065006C00
      6C002000610064006E00690021000100540068006500200075006E006C006F00
      6100640069006E006700200063006F006D00700061006E00790020006D007500
      7300740020006200650020007300700065006300690066006900650064002100
      01004600690072006D0061002000640065002000640065007300630003017200
      6300610072006500200074007200650062007500690065002000730070006500
      63006900660069006300610074000301210001000D000A007300740072007200
      73004C006500720061006B004900720073007A00480069006200610073000100
      480069006200E10073002000610020006C006500720061006B006F006400E100
      7300690020006300E9006700200069007200E1006E007900ED007400F3007300
      7A00E1006D00610021000100540068006500200075006E006C006F0061006400
      69006E006700200063006F006D00700061006E00790027007300200070006F00
      7300740061006C00200063006F0064006500200069007300200069006E007600
      61006C00690064002100010043006F00640075006C00200070006F0019027400
      61006C00200061006C0020006600690072006D00650069002000640065002000
      6400650073006300030172006300610072006500200065007300740065002000
      670072006500190269007400210001000D000A00730074007200720073004C00
      6500720061006B004F00720073007A0061006700610074004D00650067004B00
      65006C006C00410064006E0069000100410020006C006500720061006B006F00
      6400E1007300690020006300E900670020006F00720073007A00E1006700E100
      740020006D006500670020006B0065006C006C002000610064006E0069002100
      0100540068006500200075006E006C006F006100640069006E00670020006300
      6F006D00700061006E00790027007300200063006F0075006E00740072007900
      20006D0075007300740020006200650020007300700065006300690066006900
      65006400210001001A0261007200610020006600690072006D00650069002000
      6400650020006400650073006300030172006300610072006500200074007200
      6500620075006900650020007300700065006300690066006900630061007400
      0301210001000D000A00730074007200720073004C006500720061006B005600
      610072006F007300480069006200610073000100480069006200E10073002000
      610020006C006500720061006B006F006400E1007300690020006300E9006700
      20007600E10072006F007300610021000100540068006500200075006E006C00
      6F006100640069006E006700200063006F006D00700061006E00790027007300
      20006300690074007900200069007300200069006E00760061006C0069006400
      210001004C006F00630061006C00690074006100740065006100200066006900
      72006D0065006900200064006500200064006500730063000301720063006100
      7200650020006500730074006500200067007200650019026900740003012100
      01000D000A00730074007200720073004C00650076006F006E0061006E006400
      6F0054006F006D0065006700650074004D00650067004B0065006C006C004100
      64006E0069000100410064006A00610020006D00650067002000610020006C00
      650076006F006E0061006E006400F30020007400F6006D006500670065007400
      2100010045006E00740065007200200074006800650020007700650069006700
      68007400200074006F0020006400650064007500630074002100010049006E00
      740072006F0064007500630065001B0269002000670072006500750074006100
      74006500610020006400650020007300630003017A0075007400210001000D00
      0A00730074007200720073004D00610072004B006900560061006E004A006500
      6C006F006C00760065004B00650074004A00610072006D00750001004D00E100
      720020006B0069002000760061006E0020006A0065006C00F6006C0076006500
      20006B00E900740020006A00E10072006D007101200076006100670079002000
      66006F006C007900740061007400E1007300620061006E002000760061006E00
      21000100540077006F002000760065006800690063006C006500730020006100
      72006500200061006C00720065006100640079002000730065006C0065006300
      74006500640020006F00720020006100200063006F006E00740069006E007500
      6100740069006F006E00200069007300200069006E002000700072006F006700
      72006500730073002100010044006F0075000301200076006500680069006300
      75006C0065002000730075006E0074002000640065006A006100200073006500
      6C00650063007400610074006500200073006100750020006500730074006500
      20006F00200063006F006E00740069006E0075006100720065002000EE006E00
      20006300750072007300210001000D000A00730074007200720073004D006500
      67004B0065006C006C00410064006E006900010020006D006500670020006B00
      65006C006C002000610064006E0069002100010020006D007500730074002000
      6200650020007300700065006300690066006900650064002100010020007400
      720065006200750069006500200063006F006D0070006C006500740061007400
      210001000D000A00730074007200720073004D0065006700720065006E006400
      65006C006F0001004D0065006700720065006E00640065006C0051013A000100
      43007500730074006F006D00650072003A000100420065006E00650066006900
      63006900610072003A0001000D000A00730074007200720073004D0065006700
      730065006D0001004D00E9006700730065006D000100430061006E0063006500
      6C00010041006E0075006C0061007200650001000D000A007300740072007200
      73004D00650072006500730045007200650064006D0065006E00790065004E00
      75006C006C0061000100410020006D00E9007200E90073002000650072006500
      64006D00E9006E007900650020006E0065006D0020006C006500680065007400
      200030002100010054006800650020007700650069006700680069006E006700
      200072006500730075006C0074002000630061006E006E006F00740020006200
      65002000300021000100520065007A0075006C0074006100740075006C002000
      6300E2006E00740003017200690072006900690020006E007500200070006F00
      61007400650020006600690020003000210001000D000A007300740072007200
      73004D0065007200650073004900720061006E007900610074004D0065006700
      4B0065006C006C00410064006E0069000100410020006D00E9007200E9007300
      200069007200E1006E007900E100740020006D006500670020006B0065006C00
      6C002000610064006E0069002100010054006800650020007700650069006700
      680069006E006700200064006900720065006300740069006F006E0020006D00
      7500730074002000620065002000730070006500630069006600690065006400
      21000100440069007200650063001B026900610020006300E2006E0074000301
      7200690072006900690020007400720065006200750069006500200073007000
      650063006900660069006300610074000301210001000D000A00730074007200
      720073004D00650072006C00650067006A0065006700790053007A0065007200
      6500700065006C0041007A0045006C0073007A0061006D006F006C0061007300
      620061006E00010045007A002000610020006D00E90072006C00650067006A00
      65006700790020006D00E1007200200073007A00650072006500700065006C00
      200065006200620065006E00200061007A00200065006C0073007A00E1006D00
      6F006C00E1007300620061006E00210001005400680069007300200077006500
      69006700680069006E00670020007400690063006B0065007400200069007300
      200061006C0072006500610064007900200069006E0020007400680069007300
      200073006500740074006C0065006D0065006E00740021000100410063006500
      73007400200062006F006E0020006400650020006300E2006E00740061007200
      200066006900670075007200650061007A0003012000640065006A0061002000
      EE006E0020006100630065007300740020006400650063006F006E0074002100
      01000D000A00730074007200720073004D00650072006C00650067006B006500
      7A0065006C006F004D00610072004C006500740065007A0069006B0001004900
      6C00790065006E0020006D00E90072006C00650067006B0065007A0065006C00
      510120006D00E100720020006C00E900740065007A0069006B00210001005400
      68006900730020007300630061006C00650020006F0070006500720061007400
      6F007200200061006C0072006500610064007900200065007800690073007400
      7300210001004100630065007300740020006F00700065007200610074006F00
      720020006400650020006300E2006E0074006100720020006500780069007300
      740003012000640065006A006100210001000D000A0073007400720072007300
      4D00650072006C00650067006B0065007A0065006C006F0074004D0065006700
      4B0065006C006C00410064006E0069000100410020006D00E90072006C006500
      67006B0065007A0065006C005101740020006D006500670020006B0065006C00
      6C002000610064006E0069002100010054006800650020007300630061006C00
      650020006F00700065007200610074006F00720020006D007500730074002000
      620065002000730070006500630069006600690065006400210001004F007000
      65007200610074006F00720075006C0020006400650020006300E2006E007400
      6100720020007400720065006200750069006500200073007000650063006900
      66006900630061007400210001000D000A00730074007200720073004D006500
      72006C00650067006B0065007A0065006C006F0054006F0072006C0065007300
      65000100420069007A0074006F00730061006E0020007400F60072006C006900
      200065007A0074002000610020006D00E90072006C00650067006B0065007A00
      65006C00510174003F000100410072006500200079006F007500200073007500
      72006500200079006F0075002000770061006E007400200074006F0020006400
      65006C006500740065002000740068006900730020007300630061006C006500
      20006F00700065007200610074006F0072003F00010053006900670075007200
      200064006F00720069001B026900200073000301200019027400650072006700
      65001B02690020006100630065007300740020006F0070006500720061007400
      6F00720020006400650020006300E2006E007400610072003F0001000D000A00
      730074007200720073004D006F0064006F0073006900740001004D00F3006400
      6F007300ED00740001004D006F00640069006600790001004D006F0064006900
      66006900630061007200650001000D000A00730074007200720073004D006F00
      78006100480069006200610001004D00E90072006C0065006700200049005000
      20006800690062006100210001005300630061006C0065002000490050002000
      6500720072006F00720021000100450072006F00610072006500200049005000
      20006300E2006E00740061007200210001000D000A0073007400720072007300
      4D006F00780061004F004B0001004D00E90072006C0065006700200049005000
      20004F004B0001005300630061006C00650020004900500020004F004B000100
      4900500020006300E2006E0074006100720020004F004B0001000D000A007300
      74007200720073004D006F00780061004F006C00760061007300610073006900
      480069006200610001004D00E90072006C006500670020004900500020006F00
      6C00760061007300E10073006900200068006900620061002100010053006300
      61006C0065002000490050002000720065006100640020006500720072006F00
      720021000100450072006F006100720065002000640065002000630069007400
      69007200650020004900500020006300E2006E00740061007200210001000D00
      0A00730074007200720073004D006F00780061005400650073007A0074000100
      4D00E90072006C006500670020004900500020007400650073007A0074000100
      5300630061006C00650020004900500020007400650073007400010054006500
      7300740020004900500020006300E2006E0074006100720001000D000A007300
      74007200720073004E00610067007900690074006F00740074005F006E006500
      7A0065007400010020004E00410047005900CD0054004F005400540020004E00
      C9005A00450054004500010020005A004F004F004D0045004400200056004900
      450057000100200056004500440045005200450020004D000201520049005400
      020101000D000A00730074007200720073004E0065006D0001004E0065006D00
      01004E006F0001004E00750001000D000A00730074007200720073004E006500
      6D00540061006C0061006C006800610074006F00010020006E0065006D002000
      740061006C00E1006C00680061007400F300010020006E006F00740020006600
      6F0075006E006400010020006E00750020006100200066006F00730074002000
      6700030173006900740001000D000A00730074007200720073004E0065006D00
      56006F006C0074004D0065006E0074006500730001004E0065006D0020007600
      6F006C00740020006D0065006E007400E900730021002000420069007A007400
      6F00730061006E0020006B0069006C00E90070003F0001004E006F0074002000
      7300610076006500640021002000410072006500200079006F00750020007300
      750072006500200079006F0075002000770061006E007400200074006F002000
      65007800690074003F0001004E007500200073002D0061002000730061006C00
      7600610074002100200053006900670075007200200064006F00720069001B02
      6900200073000301200069006500190269001B0269003F0001000D000A007300
      74007200720073004E0065007600650074004D00650067004B0065006C006C00
      410064006E0069000100410064006A00610020006D0065006700200061002000
      6E0065007600650074002100010045006E007400650072002000740068006500
      20006E0061006D0065002100010049006E00740072006F006400750063006500
      1B02690020006E0075006D0065006C006500210001000D000A00730074007200
      720073004E0069006E00630073004A006F0067006F00730075006C0074007300
      610067006100010045006800680065007A0020006E0069006E00630073002000
      6A006F0067006F00730075006C0074007300E10067006100010059006F007500
      200064006F0020006E006F007400200068006100760065002000700065007200
      6D0069007300730069006F006E00200066006F00720020007400680069007300
      01004E00750020006100760065001B0269002000640072006500700074007500
      720069002000700065006E007400720075002000610063006500610073007400
      030120006F0070006500720061001B026900650001000D000A00730074007200
      720073004E0069006E00630073004B006900760061006C00610073007A007400
      760061004B00650074004D00650072006500730001004E0069006E0063007300
      20006B0069007600E1006C00610073007A0074007600610020006B00E9007400
      20006D00E9007200E90073002000760061006700790020006E0069006E006300
      730020007400E1007200610020007200F60068007A00ED007400650074007400
      20006D00E9007200E90073006E00E9006C0021000100540077006F0020007700
      650069006700680069006E0067007300200061007200650020006E006F007400
      2000730065006C006500630074006500640020006F0072002000740068006500
      7200650020006900730020006E006F0020007400610072006500200066006F00
      7200200074006800650020006600690078006500640020007700650069006700
      680069006E006700210001004E0075002000730075006E007400200073006500
      6C00650063007400610074006500200064006F007500030120006300E2006E00
      740003017200690072006900200073006100750020006C006900700073006500
      1902740065002000740061007200610020006C00610020006300E2006E007400
      03017200690072006500610020006600690078000301210001000D000A007300
      74007200720073004F006C007600610073006F0074007400430069006D000100
      4F006C007600610073006F007400740020006300ED006D003A00010052006500
      61006400200061006400640072006500730073003A0001004100640072006500
      7300030120006300690074006900740003013A0001000D000A00730074007200
      72007300500069006E0067005400650073007A0074000100500069006E006700
      20007400650073007A0074000100500069006E00670020007400650073007400
      010054006500730074002000700069006E00670001000D000A00730074007200
      7200730050004C00430049007200610073006900690048006900620061000100
      50004C0043002000ED007200E100730069002000680069006200610021000100
      50004C00430020007700720069007400650020006500720072006F0072002100
      0100450072006F00610072006500200064006500200073006300720069006500
      72006500200050004C004300210001000D000A00730074007200720073005000
      4C0043004B0061007000630073006F006C006100740069004800690062006100
      010050004C00430020006B0061007000630073006F006C006100740069002000
      68006900620061002100280052002900010050004C004300200063006F006E00
      6E0065006300740069006F006E0020006500720072006F007200210028005200
      29000100450072006F00610072006500200064006500200063006F006E006500
      7800690075006E006500200050004C004300210028005200290001000D000A00
      7300740072007200730050004C0043004F006C00760061007300610073006900
      4800690062006100010050004C00430020006F006C00760061007300E1007300
      6900200068006900620061002100010050004C00430020007200650061006400
      20006500720072006F00720021000100450072006F0061007200650020006400
      65002000630069007400690072006500200050004C004300210001000D000A00
      7300740072007200730050004C004300500069006E0067004800690062006100
      010050004C0043002000700069006E0067002000680069006200610021002800
      50002900010050004C0043002000700069006E00670020006500720072006F00
      720021002800500029000100450072006F006100720065002000700069006E00
      6700200050004C004300210028005000290001000D000A007300740072007200
      730050004C0043005400650073007A007400010050004C004300200074006500
      73007A007400010050004C004300200074006500730074000100540065007300
      7400200050004C00430001000D000A007300740072007200730050006C007500
      670069006E004D0061007000700061004800690061006E0079007A0069006B00
      010050006C007500670069006E0020006D006100700070006100200068006900
      E1006E0079007A0069006B00200061007A0020004900500020006B0061006D00
      65007200E10068006F007A002100010050006C007500670069006E0020006600
      6F006C0064006500720020006900730020006D0069007300730069006E006700
      200066006F00720020007400680065002000490050002000630061006D006500
      72006100210001004C006900700073006500190274006500200064006F007300
      6100720075006C00200064006500200070006C007500670069006E0020007000
      65006E007400720075002000630061006D006500720061002000490050002100
      01000D000A007300740072007200730050006F0074006B006F00630073006900
      520065006E00640073007A0061006D00610074004D00650067004B0065006C00
      6C00410064006E0069000100410020007000F30074006B006F00630073006900
      2000720065006E00640073007A00E1006D006F00740020006D00650067002000
      6B0065006C006C002000610064006E0069002100010054006800650020007400
      7200610069006C0065007200200070006C0061007400650020006E0075006D00
      62006500720020006D0075007300740020006200650020007300700065006300
      69006600690065006400210001004E0075006D000301720075006C0020006400
      65002000EE006E006D006100740072006900630075006C006100720065002000
      61006C002000720065006D006F00720063006900690020007400720065006200
      7500690065002000730070006500630069006600690063006100740021000100
      0D000A0073007400720072007300520065006E00640073007A0061006D004C00
      61006D007000610049006E00640075006C000100520065006E00640073007A00
      61006D004C0061006D0070006100200069006E00640075006C00010052006500
      6E00640073007A0061006D004C0061006D007000610020007300740061007200
      740069006E0067000100520065006E00640073007A0061006D004C0061006D00
      70006100200070006F0072006E00650019027400650001000D000A0073007400
      720072007300520065006E00640073007A0061006D004C0065006B0065007200
      4D000100520065006E0073007A0061006D006C0065006B006500720020006D00
      3A00010050006C0061007400650020007100750065007200790020006D003A00
      010049006E007400650072006F00670061007200650020006E0072002E002000
      EE006E006D006100740072006900630075006C0061007200650020006D003A00
      01000D000A0073007400720072007300520065006E00640073007A0061006D00
      6F006B0045006C007400650072006E0065006B00010041002000720065006E00
      640073007A00E1006D006F006B00200065006C007400E90072006E0065006B00
      2100200046006F006C0079007400610074006A0061003F000100540068006500
      200070006C0061007400650020006E0075006D00620065007200730020006400
      690066006600650072002100200043006F006E00740069006E00750065003F00
      01004E0075006D006500720065006C0065002000640065002000EE006E006D00
      6100740072006900630075006C00610072006500200064006900660065007200
      03012100200043006F006E00740069006E00750061001B0269003F0001000D00
      0A0073007400720072007300520065006E00640073007A0061006D006F007400
      4D00650067004B0065006C006C00410064006E00690001004100200072006500
      6E00640073007A00E1006D006F00740020006D006500670020006B0065006C00
      6C002000610064006E00690021000100540068006500200070006C0061007400
      650020006E0075006D0062006500720020006D00750073007400200062006500
      2000730070006500630069006600690065006400210001004E0075006D000301
      720075006C002000640065002000EE006E006D00610074007200690063007500
      6C00610072006500200074007200650062007500690065002000730070006500
      6300690066006900630061007400210001000D000A0073007400720072007300
      530074006F0072006E006F007A007A0061000100420069007A0074006F007300
      61006E00200073007A0074006F0072006E00F3007A007A0061003F0001004100
      72006500200079006F00750020007300750072006500200079006F0075002000
      770061006E007400200074006F00200076006F00690064002000690074003F00
      010053006900670075007200200064006F00720069001B026900200073000301
      2000730074006F0072006E0061001B0269003F0001000D000A00730074007200
      720073005400610062006C0061004E0069006E00630073005A00610072006F00
      6C007600610001005400E10062006C00610020004E0049004E00430053002000
      7A00E10072006F006C0076006100210001005400610062006C00650020006900
      730020004E004F00540020006C006F0063006B00650064002100010054006100
      620065006C0075006C0020004E00550020006500730074006500200062006C00
      6F00630061007400210001000D000A0073007400720072007300540061006200
      6C0061005A00610072006F006C007600610001005400E10062006C0061002000
      7A00E10072006F006C0076006100210001005400610062006C00650020006C00
      6F0063006B00650064002100010054006100620065006C00200062006C006F00
      630061007400210001000D000A00730074007200720073005400610072006F00
      6C006F0074004D00650067004B0065006C006C00410064006E00690001004100
      20007400E10072006F006C00F300740020006D006500670020006B0065006C00
      6C002000610064006E006900210001005400680065002000730074006F007200
      61006700650020006D0075007300740020006200650020007300700065006300
      69006600690065006400210001004400650070006F007A006900740075006C00
      2000740072006500620075006900650020007300700065006300690066006900
      630061007400210001000D000A0073007400720072007300540065006C006500
      700075006C006500730074004D00650067004B0065006C006C00410064006E00
      69000100410064006A00610020006D0065006700200061002000740065006C00
      65007000FC006C00E900730074002100010045006E0074006500720020007400
      68006500200063006900740079002100010049006E00740072006F0064007500
      630065001B02690020006C006F00630061006C00690074006100740065006100
      210001000D000A00730074007200720073005400650072006D0065006B004500
      67007900730065006700610072006100560061006C0074006F007A006F007400
      74000100410020007400650072006D00E9006B0020006500670079007300E900
      6700E1007200610020006D00650067007600E1006C0074006F007A006F007400
      74002E0020004D00F30064006F007300ED0074006A0061002000610020006D00
      E90072006C00650067006A0065006700790065006E003F000100540068006500
      2000700072006F00640075006300740027007300200075006E00690074002000
      70007200690063006500200068006100730020006300680061006E0067006500
      64002E00200055007000640061007400650020006900740020006F006E002000
      74006800650020007700650069006700680069006E0067002000740069006300
      6B00650074003F0001005000720065001B0275006C00200075006E0069007400
      61007200200061006C002000700072006F0064007500730075006C0075006900
      200073002D006100200073006300680069006D006200610074002E002000CE00
      6C0020006D006F006400690066006900630061001B0269002000700065002000
      62006F006E0075006C0020006400650020006300E2006E007400610072003F00
      01000D000A00730074007200720073005400650072006D0065006B0065007400
      4D00650067004B0065006C006C00410064006E00690001004100200074006500
      72006D00E9006B006500740020006D006500670020006B0065006C006C002000
      610064006E006900210001005400680065002000700072006F00640075006300
      740020006D007500730074002000620065002000730070006500630069006600
      69006500640021000100500072006F0064007500730075006C00200074007200
      6500620075006900650020007300700065006300690066006900630061007400
      210001000D000A007300740072007200730055006A00460065006C0068006100
      73007A006E0061006C006F00460065006C0076006900740065006C0065000100
      DA006A002000660065006C006800610073007A006E00E1006C00F30020006600
      65006C0076006900740065006C006500010041006400640020006E0065007700
      2000750073006500720001004100640003017500670061007200650020007500
      740069006C0069007A00610074006F00720020006E006F00750001000D000A00
      7300740072007200730055006A004D00650072006C00650067006B0065007A00
      65006C006F00460065006C0076006900740065006C0065000100DA006A002000
      6D00E90072006C00650067006B0065007A0065006C0051012000660065006C00
      76006900740065006C006500010041006400640020006E006500770020007300
      630061006C00650020006F00700065007200610074006F007200010041006400
      03017500670061007200650020006F00700065007200610074006F0072002000
      6400650020006300E2006E0074006100720020006E006F00750001000D000A00
      730074007200720073005600650076006F00010056006500760051013A000100
      420075007900650072003A000100430075006D00700003017200030174006F00
      72003A0001000D000A00730074007200720073005600650076006F0041006400
      6F0073007A0061006D00610048006900620061007300010048006900E1007300
      2000610020007600650076005101200061006400F30073007A00E1006D006100
      2100010054006800650020006200750079006500720027007300200074006100
      780020006E0075006D00620065007200200069007300200069006E0076006100
      6C00690064002100010043006F00640075006C00200066006900730063006100
      6C00200061006C002000630075006D00700003017200030174006F0072007500
      6C00750069002000650073007400650020006700720065001902690074002100
      01000D000A00730074007200720073005600650076006F00430069006D006500
      74004D00650067004B0065006C006C00410064006E0069000100410020007600
      65007600510120006300ED006D00E900740020006D006500670020006B006500
      6C006C002000610064006E006900210001005400680065002000620075007900
      65007200270073002000610064006400720065007300730020006D0075007300
      7400200062006500200073007000650063006900660069006500640021000100
      4100640072006500730061002000630075006D00700003017200030174006F00
      720075006C007500690020007400720065006200750069006500200073007000
      650063006900660069006300610074000301210001000D000A00730074007200
      720073005600650076006F004F00720073007A0061006700610074004D006500
      67004B0065006C006C00410064006E0069000100410020007600650076005101
      20006F00720073007A00E1006700E100740020006D006500670020006B006500
      6C006C002000610064006E006900210001005400680065002000620075007900
      6500720027007300200063006F0075006E0074007200790020006D0075007300
      7400200062006500200073007000650063006900660069006500640021000100
      1A026100720061002000630075006D00700003017200030174006F0072007500
      6C00750069002000740072006500620075006900650020007300700065006300
      6900660069006300610074000301210001000D000A0073007400720072007300
      5600650076006F0074004D00650067004B0065006C006C00410064006E006900
      0100410020007600650076005101740020006D006500670020006B0065006C00
      6C002000610064006E0069002100010054006800650020006200750079006500
      720020006D007500730074002000620065002000730070006500630069006600
      69006500640021000100430075006D00700003017200030174006F0072007500
      6C00200074007200650062007500690065002000730070006500630069006600
      6900630061007400210001000D000A007300740072007200730053007A006100
      6C006C0069006F0074004D00650067004B0065006C006C00410064006E006900
      01004100200073007A00E1006C006C00ED007400F300740020006D0065006700
      20006B0065006C006C002000610064006E006900210001005400680065002000
      730068006900700070006500720020006D007500730074002000620065002000
      7300700065006300690066006900650064002100010045007800700065006400
      690074006F00720075006C002000740072006500620075006900650020007300
      700065006300690066006900630061007400210001000D000A00730074007200
      7200730053007A0061006C006C00690074006F00010053007A00E1006C006C00
      ED007400F3003A00010053006800690070007000650072003A00010045007800
      700065006400690074006F0072003A0001000D000A0073007400720072007300
      53007A0061006C006C00690074006F00410064006F0073007A0061006D006100
      480069006200610073000100480069006200E100730020006100200073007A00
      E1006C006C00ED007400F300200061006400F30073007A00E1006D0061000100
      5400680065002000730068006900700070006500720027007300200074006100
      780020006E0075006D00620065007200200069007300200069006E0076006100
      6C0069006400010043006F00640075006C002000660069007300630061006C00
      200061006C00200065007800700065006400690074006F00720075006C007500
      690020006500730074006500200067007200650019026900740001000D000A00
      7300740072007200730053007A0061006C006C00690074006F00430069006D00
      650074004D00650067004B0065006C006C00410064006E006900010041002000
      73007A00E1006C006C00ED007400F30020006300ED006D00E900740020006D00
      6500670020006B0065006C006C002000610064006E0069002100010054006800
      6500200073006800690070007000650072002700730020006100640064007200
      65007300730020006D0075007300740020006200650020007300700065006300
      6900660069006500640021000100410064007200650073006100200065007800
      700065006400690074006F00720075006C007500690020007400720065006200
      7500690065002000730070006500630069006600690063006100740003012100
      01000D000A007300740072007200730053007A0061006C006C00690074006F00
      4F00720073007A0061006700610074004D00650067004B0065006C006C004100
      64006E00690001004100200073007A00E1006C006C00ED007400F30020006F00
      720073007A00E1006700E100740020006D006500670020006B0065006C006C00
      2000610064006E00690021000100540068006500200073006800690070007000
      6500720027007300200063006F0075006E0074007200790020006D0075007300
      7400200062006500200073007000650063006900660069006500640021000100
      1A02610072006100200065007800700065006400690074006F00720075006C00
      7500690020007400720065006200750069006500200073007000650063006900
      660069006300610074000301210001000D000A004900440053005F0034003100
      370001005400F6006D00650067003A0001005700650069006700680074003A00
      0100470072006500750074006100740065003A00200001000D000A0073007400
      4F00740068006500720053007400720069006E00670073005F0055006E006900
      63006F00640065000D000A00730074004C006F00630061006C00650073005F00
      55006E00690063006F00640065000D000A007300740043006F006C006C006500
      6300740069006F006E0073005F0055006E00690063006F00640065000D000A00
      6400620067004E00790069007400620065002E0043006F006C0075006D006E00
      73005B0030005D002E005400690074006C0065002E0043006100700074006900
      6F006E00010053006F00720073007A00E1006D00010053006500720069006100
      6C0020006E0075006D0062006500720001004E0072002E002000640065002000
      6F007200640069006E00650001000D000A006400620067004E00790069007400
      620065002E0043006F006C0075006D006E0073005B0031005D002E0054006900
      74006C0065002E00430061007000740069006F006E000100520065006E006400
      73007A00E1006D00010050006C0061007400650020006E0075006D0062006500
      720001004E0072002E002000EE006E006D006100740072006900630075006C00
      61007200650001000D000A006400620067004E00790069007400620065002E00
      43006F006C0075006D006E0073005B0032005D002E005400690074006C006500
      2E00430061007000740069006F006E000100520065006E00640073007A00E100
      6D0020003200010050006C0061007400650020006E0075006D00620065007200
      2000320001004E0072002E002000EE006E006D00610074007200690063007500
      6C006100720065002000320001000D000A006400620067004E00790069007400
      620065002E0043006F006C0075006D006E0073005B0033005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001005000610072007400
      6E006500720020003100010050006100720074006E0065007200200031000100
      500061007200740065006E00650072002000310001000D000A00640062006700
      4E00790069007400620065002E0043006F006C0075006D006E0073005B003400
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      50006100720074006E006500720020003200010050006100720074006E006500
      7200200032000100500061007200740065006E00650072002000320001000D00
      0A006400620067004E00790069007400620065002E0043006F006C0075006D00
      6E0073005B0035005D002E005400690074006C0065002E004300610070007400
      69006F006E000100C90072006B002E006400E100740075006D00010041007200
      72002E002000640061007400650001004400610074006100200073006F007300
      690072006900690001000D000A006400620067004E0079006900740062006500
      2E0043006F006C0075006D006E0073005B0036005D002E005400690074006C00
      65002E00430061007000740069006F006E000100C90072006B002E0069006400
      510101004100720072002E002000740069006D00650001004F00720061002000
      73006F007300690072006900690001000D000A006400620067004E0079006900
      7400620065002E0043006F006C0075006D006E0073005B0037005D002E005400
      690074006C0065002E00430061007000740069006F006E0001004E0065007400
      7400F30001004E006500740001004E006500740001000D000A00640062006700
      4E00790069007400620065002E0043006F006C0075006D006E0073005B003800
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      49007200E1006E007900010044006900720065006300740069006F006E000100
      440069007200650063001B026900650001000D000A006400620067004E007900
      69007400620065002E0043006F006C0075006D006E0073005B0039005D002E00
      5400690074006C0065002E00430061007000740069006F006E0001004D006500
      67006A006500670079007A006500730001004E006F007400650001004F006200
      730065007200760061001B026900650001000D000A0044004200470072006900
      640031002E0043006F006C0075006D006E0073005B0030005D002E0054006900
      74006C0065002E00430061007000740069006F006E0001004400E10074007500
      6D00010044006100740065000100440061007400610001000D000A0044004200
      470072006900640031002E0043006F006C0075006D006E0073005B0031005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001004900
      640051010100540069006D00650001004F007200610001000D000A0044004200
      470072006900640031002E0043006F006C0075006D006E0073005B0032005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005200
      65006E00640073007A00E1006D00010050006C0061007400650020006E007500
      6D0062006500720001004E0072002E002000EE006E006D006100740072006900
      630075006C0061007200650001000D000A004400420047007200690064003100
      2E0043006F006C0075006D006E0073005B0033005D002E005400690074006C00
      65002E00430061007000740069006F006E00010049007200E1006E0079000100
      44006900720065006300740069006F006E000100440069007200650063001B02
      6900650001000D000A0044004200470072006900640031002E0043006F006C00
      75006D006E0073005B0034005D002E005400690074006C0065002E0043006100
      7000740069006F006E0001005400F6006D006500670001005700650069006700
      6800740001004700720065007500740061007400650001000D000A0044004200
      470072006900640031002E0043006F006C0075006D006E0073005B0035005D00
      2E005400690074006C0065002E00430061007000740069006F006E0001005200
      65006E00640073007A00E1006D0020003200010050006C006100740065002000
      6E0075006D006200650072002000320001004E0072002E002000EE006E006D00
      6100740072006900630075006C006100720065002000320001000D000A004400
      4200470072006900640031002E0043006F006C0075006D006E0073005B003600
      5D002E005400690074006C0065002E00430061007000740069006F006E000100
      53007A00E1006C006C00ED007400F3006C00650076000100440065006C006900
      760065007200790020006E006F007400650001004100760069007A0001000D00
      0A0044004200470072006900640031002E0043006F006C0075006D006E007300
      5B0037005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004B00F3006400010043006F0064006500010043006F00640001000D00
      0A0044004200470072006900640031002E0043006F006C0075006D006E007300
      5B0038005D002E005400690074006C0065002E00430061007000740069006F00
      6E0001004D00E90072006C00650067006A006500670079000100570065006900
      6700680069006E00670020007400690063006B0065007400010042006F006E00
      20006400650020006300E2006E0074006100720001000D000A00440042004700
      72006900640031002E0043006F006C0075006D006E0073005B0039005D002E00
      5400690074006C0065002E00430061007000740069006F006E00010053006F00
      61007000010053006F0061007000010053006F006100700001000D000A007300
      69004C0061006E00670043006F006D0062006F0031002E004C0061006E006700
      750061006700650049006E0066006F0073005B0030005D002E0046006F006E00
      74004E0061006D00650001005300650067006F00650020005500490001005300
      650067006F00650020005500490001005300650067006F006500200055004900
      01000D000A00730069004C0061006E00670043006F006D0062006F0031002E00
      4C0061006E006700750061006700650049006E0066006F0073005B0031005D00
      2E0046006F006E0074004E0061006D00650001005300650067006F0065002000
      5500490001005300650067006F00650020005500490001005300650067006F00
      650020005500490001000D000A00730069004C0061006E00670043006F006D00
      62006F0031002E004C0061006E006700750061006700650049006E0066006F00
      73005B0032005D002E0046006F006E0074004E0061006D006500010053006500
      67006F00650020005500490001005300650067006F0065002000550049000100
      5300650067006F00650020005500490001000D000A0053007400610074007500
      730042006100720031002E00500061006E0065006C0073005B0030005D002E00
      540065007800740001005600650072002E003A00200031002E00300001005600
      650072002E003A00200031002E00300001005600650072002E003A0020003100
      2E00300001000D000A0053007400610074007500730042006100720031002E00
      500061006E0065006C0073005B0031005D002E00540065007800740001005200
      65006E00640073007A00E1006D00010050006C0061007400650020006E007500
      6D0062006500720001004E0072002E002000EE006E006D006100740072006900
      630075006C0061007200650001000D000A005300740061007400750073004200
      6100720031002E00500061006E0065006C0073005B0034005D002E0054006500
      7800740001005400F6006D00650067003A002000010057006500690067006800
      74003A0020000100470072006500750074006100740065003A00200001000D00
      0A0053007400610074007500730042006100720031002E00500061006E006500
      6C0073005B0035005D002E0054006500780074000100C9006C0051016B00E900
      70002800310029003A0001004C00690076006500200076006900650077002800
      310029003A00010049006D006100670069006E00650020006C00690076006500
      2800310029003A0001000D000A00530074006100740075007300420061007200
      31002E00500061006E0065006C0073005B0036005D002E005400650078007400
      0100C9006C0051016B00E90070002800320029003A0001004C00690076006500
      200076006900650077002800320029003A00010049006D006100670069006E00
      650020006C006900760065002800320029003A0001000D000A00730074004300
      68006100720053006500740073005F0055006E00690063006F00640065000D00
      0A00540046006F0046000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A00620074006E006E006100670079006B00
      61006D006B00650070000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      410052005300450054000100440045004600410055004C0054005F0043004800
      4100520053004500540001000D000A006C0062006C00520065006E0064007300
      7A0061006D005F0065006C0073006F000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A006C0062006C0052006500
      6E00640073007A0061006D005F0068006100740073006F000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F0043004800410052005300450054000100440045004600
      410055004C0054005F00430048004100520053004500540001000D000A007300
      620074006E004C0069007300740061000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A007300620074006E005300
      6F00720073007A0061006D006800690076006100730001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001004400450046004100
      55004C0054005F00430048004100520053004500540001000D000A0053007400
      610074007500730042006100720031000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F0043004800410052005300450054000100440045004600410055004C005400
      5F00430048004100520053004500540001000D000A00}
  end
end
