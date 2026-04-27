object GongyCsatF: TGongyCsatF
  Left = 0
  Top = 0
  Caption = 'G'#246'ngy'#246'legek csatol'#225'sa m'#233'rlegjegyhez'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 3
      Width = 55
      Height = 13
      Caption = 'G'#246'ngy'#246'leg:'
    end
    object Label2: TLabel
      Left = 417
      Top = 2
      Width = 55
      Height = 13
      Caption = 'Mennyis'#233'g:'
    end
    object Label3: TLabel
      Left = 327
      Top = 2
      Width = 61
      Height = 13
      Caption = 'Egys.t'#246'meg:'
    end
    object btnkilepes: TButton
      Left = 24
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepesClick
    end
    object cbgongy: TJvDBLookupCombo
      Left = 176
      Top = 16
      Width = 145
      Height = 21
      DisplayEmpty = '---V'#225'lasszon---'
      EmptyValue = '0'
      LookupField = 'id'
      LookupDisplay = 'nev'
      LookupSource = AF.gongyQDs
      TabOrder = 1
      OnChange = cbgongyChange
    end
    object spmenny: TJvSpinEdit
      Left = 417
      Top = 15
      Width = 81
      Height = 21
      TabOrder = 2
      OnKeyPress = spmennyKeyPress
    end
    object btnfelvesz: TButton
      Left = 504
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Felvesz'
      TabOrder = 3
      OnClick = btnfelveszClick
    end
    object spegystomeg: TJvSpinEdit
      Left = 327
      Top = 15
      Width = 81
      Height = 21
      ValueType = vtFloat
      TabOrder = 4
    end
    object chkkezi: TCheckBox
      Left = 113
      Top = 17
      Width = 41
      Height = 17
      Caption = 'K'#233'zi'
      TabOrder = 5
      OnClick = chkkeziClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btntorol: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'T'#246'rl'#233's'
      TabOrder = 0
      OnClick = btntorolClick
    end
  end
  object gongygrid: TJvDBUltimGrid
    Left = 0
    Top = 49
    Width = 635
    Height = 209
    Align = alClient
    DataSource = AF.mem_csatgongyDs
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    AutoAppend = False
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'g_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'g_nev'
        ReadOnly = True
        Title.Caption = 'G'#246'ngy'#246'leg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'g_tomeg'
        ReadOnly = True
        Title.Caption = 'Egy.t'#246'meg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'g_menny'
        Title.Caption = 'Menny'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ossztomeg'
        ReadOnly = True
        Title.Caption = #214'sszt'#246'meg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'elso'
        ReadOnly = True
        Title.Caption = '1.'
        Visible = True
      end>
  end
end
