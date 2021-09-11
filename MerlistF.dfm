object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'M'#233'r'#233'sek list'#225'ja'
  ClientHeight = 614
  ClientWidth = 1047
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
    Width = 1047
    Height = 57
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 941
    object Label1: TLabel
      Left = 136
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Sz'#369'r'#233's:'
    end
    object Label2: TLabel
      Left = 568
      Top = 6
      Width = 66
      Height = 13
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object Label3: TLabel
      Left = 720
      Top = 6
      Width = 79
      Height = 13
      Caption = 'Befejez'#337' d'#225'tum:'
    end
    object Label4: TLabel
      Left = 174
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Rendsz'#225'm'
    end
    object Button1: TButton
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 136
      Top = 20
      Width = 313
      Height = 21
      TabOrder = 1
      Text = 'edszures'
    end
    object kezdat: TJvDateEdit
      Left = 568
      Top = 18
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 2
    end
    object fejdat: TJvDateEdit
      Left = 720
      Top = 18
      Width = 121
      Height = 21
      ShowNullDate = False
      TabOrder = 3
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 57
    Width = 1047
    Height = 557
    Align = alClient
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
  end
end
