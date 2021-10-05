object tesztF: TtesztF
  Left = 0
  Top = 0
  Caption = 'Teszt'
  ClientHeight = 420
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 184
    Top = 160
    Width = 537
    Height = 13
    Caption = 'Label1'
  end
  object Button1: TButton
    Left = 184
    Top = 88
    Width = 75
    Height = 25
    Caption = 'stop'
    TabOrder = 0
    OnClick = Button1Click
  end
  object cbxrepval: TComboBox
    Left = 64
    Top = 32
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Report 1'
    Items.Strings = (
      'Report 1'
      'Report 2')
  end
  object Button2: TButton
    Left = 288
    Top = 88
    Width = 75
    Height = 25
    Caption = 'play'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 392
    Top = 88
    Width = 75
    Height = 25
    Caption = 'snapshot'
    TabOrder = 3
    OnClick = Button3Click
  end
  object frxtesztrep: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44467.690754837960000000
    ReportOptions.LastChange = 44467.691948668980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 88
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 120.944960000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 266.456865000000000000
          Top = 30.236240000000000000
          Width = 185.196970000000000000
          Height = 68.031540000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Teszt 2')
          ParentFont = False
        end
      end
    end
  end
end
