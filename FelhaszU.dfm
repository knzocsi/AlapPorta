object FelhaszF: TFelhaszF
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Felhaszn'#225'l'#243'k'
  ClientHeight = 561
  ClientWidth = 635
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 65
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 160
      Top = 21
      Width = 75
      Height = 25
      Caption = #218'j'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 264
      Top = 21
      Width = 75
      Height = 25
      Caption = 'M'#243'dos'#237't'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 520
      Top = 21
      Width = 75
      Height = 25
      Caption = 'T'#246'r'#246'l'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 65
    Width = 304
    Height = 496
    Align = alClient
    DataSource = AF.FelhaszQDs
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnKeyUp = JvDBUltimGrid1KeyUp
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'Felhaszn'#225'l'#243
        Visible = True
      end>
  end
  object JvDBUltimGrid2: TJvDBUltimGrid
    Left = 304
    Top = 65
    Width = 331
    Height = 496
    Align = alRight
    DataSource = AF.felhasznalok_jogaiDs
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = JvDBUltimGrid2KeyDown
    OnMouseDown = JvDBUltimGrid2MouseDown
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'jog_neve'
        ReadOnly = True
        Title.Caption = 'Jogosults'#225'g'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jog'
        Title.Caption = 'Enged'#233'lyezve'
        Visible = True
      end>
  end
  object ajogQ: TFDQuery
    Connection = AF.Kapcs
    Left = 376
    Top = 24
  end
end
