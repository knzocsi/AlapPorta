object Cam_kepF: TCam_kepF
  Left = 0
  Top = 0
  ClientHeight = 532
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 212
    Width = 31
    Height = 13
    Caption = 'Label1'
    Visible = False
  end
  object Button1: TButton
    Left = 0
    Top = 488
    Width = 536
    Height = 44
    Align = alBottom
    Caption = 'Kil'#233'p'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
    ExplicitTop = 226
    ExplicitWidth = 620
  end
  object cam0: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 233
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 524
  end
  object cam1: TPanel
    Left = 0
    Top = 243
    Width = 536
    Height = 245
    Align = alClient
    TabOrder = 2
    ExplicitTop = 248
    ExplicitHeight = 240
  end
  object JvxSplitter1: TJvxSplitter
    Left = 0
    Top = 233
    Width = 536
    Height = 10
    ControlFirst = cam0
    Align = alTop
  end
  object FormStorage: TJvFormStorage
    AppStorage = FoF.IniFile
    AppStoragePath = 'FormCAM\'
    StoredProps.Strings = (
      'cam0.Height')
    StoredValues = <
      item
        Name = 'Name'
      end
      item
        Name = 'TestBoolean'
        Value = False
      end>
    Left = 96
    Top = 216
  end
end
