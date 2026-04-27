object ekaer_dlgF: Tekaer_dlgF
  Left = 0
  Top = 0
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'ekaer_dlgF'
  ClientHeight = 79
  ClientWidth = 176
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    176
    79)
  PixelsPerInch = 96
  TextHeight = 16
  object lblszoveg: TLabel
    Left = 8
    Top = 18
    Width = 53
    Height = 15
    Alignment = taCenter
    Caption = 'lblszoveg'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Gentium Basic'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object btnOK: TButton
    Left = 8
    Top = 46
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Rendben'
    ModalResult = 1
    TabOrder = 0
  end
  object btnyes: TButton
    Tag = 1
    Left = 8
    Top = 46
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Igen'
    ModalResult = 6
    TabOrder = 1
  end
  object btnNo: TButton
    Tag = 2
    Left = 89
    Top = 46
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Nem'
    ModalResult = 7
    TabOrder = 2
  end
end
