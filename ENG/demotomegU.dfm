object DemotomegF: TDemotomegF
  Left = 0
  Top = 0
  Caption = 'Demo weight'
  ClientHeight = 148
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sltomeg: TJvxSlider
    Left = 8
    Top = 100
    Width = 569
    Height = 40
    MaxValue = 60000
    TabOrder = 0
    OnChange = sltomegChange
  end
  object sptomeg: TJvSpinEdit
    Left = 160
    Top = 32
    Width = 241
    Height = 47
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = sptomegChange
  end
end
