object kezdokeszletF: TkezdokeszletF
  Left = 0
  Top = 0
  Caption = 'Uploading starter stock'
  ClientHeight = 507
  ClientWidth = 895
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
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 47
    Height = 13
    Caption = 'A stock:'
  end
  object Label4: TLabel
    Left = 202
    Top = 8
    Width = 46
    Height = 13
    Caption = 'B stock:'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 895
    Height = 449
    Align = alTop
    DataSource = termeklistDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyUp = DBGrid1KeyUp
  end
  object Panel1: TPanel
    Left = 0
    Top = 455
    Width = 895
    Height = 52
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 0
      Width = 62
      Height = 13
      Caption = 'NEW A stock:'
    end
    object Label2: TLabel
      Left = 199
      Top = 0
      Width = 61
      Height = 13
      Caption = 'NEW B stock:'
    end
    object Label5: TLabel
      Left = 449
      Top = 0
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'UPLOADED A stock'
    end
    object Label7: TLabel
      Left = 665
      Top = 0
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'UPLOADED B stock'
    end
    object Button1: TButton
      Left = 183
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = Button1Click
    end
    object spakeszlet: TJvSpinEdit
      Left = 72
      Top = 1
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object spbkeszlet: TJvSpinEdit
      Left = 266
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 542
    Top = 455
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 755
    Top = 455
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object termeklist: TFDQuery
    Connection = aF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 328
    Top = 56
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 376
    Top = 56
  end
end
