object kodF: TkodF
  Left = 323
  Top = 185
  BorderStyle = bsDialog
  Caption = 'Code'
  ClientHeight = 65
  ClientWidth = 162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object kodE: TEdit
    Left = 25
    Top = 15
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    OnKeyPress = kodEKeyPress
  end
end
