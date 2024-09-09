object NyelvF: TNyelvF
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'NyelvF'
  ClientHeight = 152
  ClientWidth = 205
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = [seFont, seBorder]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 33
  object Button1: TButton
    Left = 8
    Top = 87
    Width = 75
    Height = 32
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object Button2: TButton
    Left = 105
    Top = 87
    Width = 83
    Height = 32
    Caption = 'Close'
    ModalResult = 2
    TabOrder = 1
  end
  object cbxnyelv: TComboBox
    Left = 8
    Top = 32
    Width = 180
    Height = 41
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'Magyar'
    Items.Strings = (
      'Magyar'
      'English')
  end
end
