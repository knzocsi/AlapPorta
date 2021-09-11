object KepekF: TKepekF
  Left = 0
  Top = 0
  Caption = 'K'#233'pek'
  ClientHeight = 399
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object imgKep: TImage
    Left = 0
    Top = 49
    Width = 708
    Height = 350
    Align = alClient
    Stretch = True
    ExplicitLeft = 200
    ExplicitTop = 88
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 708
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 689
    object btnKilepes: TButton
      Left = 48
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
    object btbKereses: TButton
      Left = 168
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Keres'#233's'
      TabOrder = 1
      OnClick = btbKeresesClick
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.ti' +
      'ff)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf;*.tif;*.tif' +
      'f|GIF Image (*.gif)|*.gif|Portable Network Graphics (*.png)|*.pn' +
      'g|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|' +
      'Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.' +
      'emf)|*.emf|Metafiles (*.wmf)|*.wmf|TIFF Images (*.tif)|*.tif|TIF' +
      'F Images (*.tiff)|*.tiff'
    Left = 32
    Top = 72
  end
end
