object NagykamF: TNagykamF
  Left = 0
  Top = 0
  Caption = #201'l'#337' kamera k'#233'p'
  ClientHeight = 730
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleElements = [seFont, seBorder]
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object campagc: TPageControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 730
    ActivePage = cam7
    Align = alClient
    TabOrder = 0
    object cam6: TTabSheet
      Tag = 6
      Caption = 'Kamera 1'
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam7: TTabSheet
      Tag = 7
      Caption = 'Kamera 2'
      ImageIndex = 1
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam8: TTabSheet
      Tag = 8
      Caption = 'Kamera 3'
      ImageIndex = 2
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam9: TTabSheet
      Tag = 9
      Caption = 'Kamera 4'
      ImageIndex = 3
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam10: TTabSheet
      Tag = 10
      Caption = 'Kamera 5'
      ImageIndex = 4
      OnHide = cam6Hide
      OnShow = cam6Show
    end
    object cam11: TTabSheet
      Tag = 11
      Caption = 'Kamera 6'
      ImageIndex = 5
      OnHide = cam6Hide
      OnShow = cam6Show
    end
  end
  object JvAppIniFileStorage1: TJvAppIniFileStorage
    StorageOptions.BooleanStringTrueValues = 'TRUE, YES, Y'
    StorageOptions.BooleanStringFalseValues = 'FALSE, NO, N'
    FileName = 'ipcamlivesc.ini'
    DefaultSection = 'General'
    SubStorages = <
      item
      end
      item
      end>
    Left = 200
    Top = 87
  end
  object JvFormStorage2: TJvFormStorage
    AppStorage = JvAppIniFileStorage1
    AppStoragePath = 'Test\'
    StoredValues = <
      item
        Name = 'Name'
      end
      item
        Name = 'TestBoolean'
        Value = False
      end>
    Left = 200
    Top = 40
  end
end
