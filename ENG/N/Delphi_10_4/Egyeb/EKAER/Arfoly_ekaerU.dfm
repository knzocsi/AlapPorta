object Arfoly_ekaerF: TArfoly_ekaerF
  Left = 0
  Top = 0
  Caption = #193'rfolyam EK'#193'ER-hez'
  ClientHeight = 422
  ClientWidth = 460
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
    Width = 460
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 233
      Top = 6
      Width = 47
      Height = 13
      Caption = #193'rfolyam:'
    end
    object btnkilep: TButton
      Left = 16
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnkilepClick
    end
    object arfoly_spin: TJvSpinEdit
      Left = 233
      Top = 17
      Width = 121
      Height = 21
      CheckOptions = [coCheckOnExit]
      ValueType = vtFloat
      TabOrder = 1
      OnKeyPress = arfoly_spinKeyPress
    end
    object btnment: TButton
      Left = 368
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Ment'#233's'
      TabOrder = 2
      OnClick = btnmentClick
    end
  end
  object arfolygrid: TJvDBUltimGrid
    Left = 0
    Top = 57
    Width = 460
    Height = 320
    Align = alTop
    DataSource = DmEkaer.arfoly_ekaerQDs
    ReadOnly = True
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
        FieldName = 'penznem'
        Title.Caption = 'P'#233'nznem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ev'
        Title.Caption = #201'v'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'arfolyam'
        Title.Caption = #193'rfolyam'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 381
    Width = 460
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btntorol: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 0
      OnClick = btntorolClick
    end
  end
end
