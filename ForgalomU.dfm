object ForgalomF: TForgalomF
  Left = 0
  Top = 0
  Caption = 'Forgalom'
  ClientHeight = 537
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1042
    Height = 49
    Align = alTop
    TabOrder = 0
    DesignSize = (
      1042
      49)
    object Label1: TLabel
      Left = 152
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Kezd'#337' d'#225'tum:'
    end
    object Label2: TLabel
      Left = 312
      Top = 8
      Width = 79
      Height = 13
      Caption = 'Befejez'#337' d'#225'tum:'
    end
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object piKezdoDatum: TDateTimePicker
      Left = 152
      Top = 22
      Width = 113
      Height = 21
      Date = 43587.773554583330000000
      Time = 43587.773554583330000000
      TabOrder = 1
      OnChange = piKezdoDatumChange
    end
    object piBefejezoDatum: TDateTimePicker
      Left = 312
      Top = 22
      Width = 105
      Height = 21
      Date = 43587.774182199070000000
      Time = 43587.774182199070000000
      TabOrder = 2
      OnChange = piKezdoDatumChange
    end
    object Button1: TButton
      Left = 896
      Top = 18
      Width = 137
      Height = 25
      Anchors = [akRight]
      Caption = 'M'#233'rlegjegy k'#233'sz'#237't'#233's'
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 586
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 585
    Top = 49
    Width = 457
    Height = 488
    Align = alRight
    TabOrder = 1
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 455
      Height = 445
      Align = alClient
      Stretch = True
      ExplicitLeft = 0
      ExplicitWidth = 261
      ExplicitHeight = 282
    end
    object Panel3: TPanel
      Left = 1
      Top = 446
      Width = 455
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        455
        41)
      object DBNavigator1: TDBNavigator
        Left = 77
        Top = 6
        Width = 292
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        OnClick = DBNavigator1Click
      end
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 49
    Width = 585
    Height = 488
    Align = alClient
    DataSource = aF.ForgalomDS
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnDblClick = DBGrid1DblClick
    OnGesture = DBGrid1Gesture
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
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mjegy'
        Title.Caption = 'M'#233'rlegjegy'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Datum'
        Title.Caption = 'D'#225'tum'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ido'
        Title.Caption = 'Id'#337
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tomeg'
        Title.Caption = 'T'#246'meg'
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
        FieldName = 'rendszam2'
        Title.Caption = 'Rendsz'#225'm 2'
        Visible = True
      end>
  end
end
