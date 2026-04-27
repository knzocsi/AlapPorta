object Ekaer_hibakF: TEkaer_hibakF
  Left = 0
  Top = 0
  Caption = 'Hib'#225'k'
  ClientHeight = 263
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 0
    Top = 238
    Width = 1076
    Height = 25
    Align = alBottom
    Caption = 'Kil'#233'p'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    ExplicitLeft = 304
    ExplicitTop = 216
    ExplicitWidth = 75
  end
  object JvDBUltimGrid1: TJvDBUltimGrid
    Left = 0
    Top = 0
    Width = 1076
    Height = 238
    Align = alClient
    DataSource = DmEkaer.memhibakDs
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
    Columns = <
      item
        Expanded = False
        FieldName = 'funcCode'
        Title.Caption = 'Funkci'#243' k'#243'd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'reasoncode'
        Title.Caption = 'Hiba k'#243'd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'msg'
        Title.Caption = 'Hiba '#252'zenet'
        Visible = True
      end>
  end
end
