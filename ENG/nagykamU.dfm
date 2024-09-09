object NagykamF: TNagykamF
  Left = 0
  Top = 0
  Caption = 'Live camera capture'
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
    object cam4: TTabSheet
      Caption = 'Cam 1'
    end
    object cam5: TTabSheet
      Caption = 'Cam 2'
      ImageIndex = 1
    end
    object cam6: TTabSheet
      Caption = 'Cam 3'
      ImageIndex = 2
    end
    object cam7: TTabSheet
      Caption = 'Cam 4'
      ImageIndex = 3
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
