object NyomtatokF: TNyomtatokF
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Printers'
  ClientHeight = 233
  ClientWidth = 225
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object lbNyomtatok: TListBox
    Left = 0
    Top = 0
    Width = 225
    Height = 233
    Hint = 'Select printer. ESC-Exit'
    Color = clSkyBlue
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = lbNyomtatokClick
  end
end
