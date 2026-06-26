object GongyoloegekF: TGongyoloegekF
  Left = 0
  Top = 0
  Caption = 'Packages'
  ClientHeight = 336
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 65
    Align = alTop
    TabOrder = 0
    DesignSize = (
      628
      65)
    object Button1: TButton
      Left = 16
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 323
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'New'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 427
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Modify'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 533
      Top = 21
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Delete'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 65
    Width = 628
    Height = 189
    Align = alClient
    DataSource = AF.gongyQDs
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
        FieldName = 'id'
        Title.Caption = 'No.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'v_kod'
        Title.Caption = 'Barcode'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'nev'
        Title.Caption = 'Package'
        Width = 326
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomeg'
        Title.Caption = 'Mass'
        Visible = True
      end>
  end
  object reszletekroll: TJvRollOut
    Left = 0
    Top = 254
    Width = 628
    Height = 82
    Align = alBottom
    Caption = 'Details'
    TabOrder = 2
    DesignSize = (
      628
      82)
    FAWidth = 145
    FAHeight = 82
    FCWidth = 22
    FCHeight = 22
    object Label1: TLabel
      Left = 140
      Top = 31
      Width = 82
      Height = 13
      Caption = 'Package:'
    end
    object Label2: TLabel
      Left = 428
      Top = 31
      Width = 56
      Height = 13
      Caption = 'Mass(Kg):'
    end
    object Label3: TLabel
      Left = 8
      Top = 31
      Width = 47
      Height = 13
      Caption = 'Barcode:'
      Visible = False
    end
    object edszovege: TEdit
      Left = 140
      Top = 47
      Width = 265
      Height = 21
      MaxLength = 30
      TabOrder = 1
      Text = 'edszovege'
    end
    object btnfelvesz: TButton
      Left = 533
      Top = 43
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btnfelvesz'
      TabOrder = 3
      OnClick = btnfelveszClick
    end
    object sptomeg: TJvSpinEdit
      Left = 428
      Top = 47
      Width = 73
      Height = 21
      ValueType = vtFloat
      TabOrder = 2
      OnKeyPress = sptomegKeyPress
    end
    object edvkod: TEdit
      Left = 8
      Top = 47
      Width = 121
      Height = 21
      MaxLength = 13
      TabOrder = 0
      Text = 'edvkod'
      Visible = False
    end
  end
  object EllenQ: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select vkod from termek')
    Left = 560
    Top = 8
  end
end
