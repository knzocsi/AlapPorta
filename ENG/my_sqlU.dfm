object MySQLF: TMySQLF
  Left = 0
  Top = 0
  Caption = 'Kapcsolat be'#225'll'#237't'#225'sa'
  ClientHeight = 297
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 1
    Width = 37
    Height = 13
    Caption = 'Szerver'
  end
  object Label2: TLabel
    Left = 16
    Top = 79
    Width = 56
    Height = 13
    Caption = 'Felhaszn'#225'l'#243
  end
  object Label3: TLabel
    Left = 16
    Top = 119
    Width = 29
    Height = 13
    Caption = 'Jelsz'#243
  end
  object Label4: TLabel
    Left = 16
    Top = 159
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object Label5: TLabel
    Left = 20
    Top = 37
    Width = 13
    Height = 13
    Caption = 'Db'
  end
  object Edit1: TEdit
    Left = 16
    Top = 17
    Width = 185
    Height = 21
    TabOrder = 0
    Text = '192.168.1.143'
  end
  object Edit2: TEdit
    Left = 16
    Top = 92
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'root'
  end
  object Edit3: TEdit
    Left = 16
    Top = 135
    Width = 185
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
    Text = 'Hidmerleg2019'
  end
  object Edit4: TEdit
    Left = 16
    Top = 175
    Width = 185
    Height = 21
    TabOrder = 3
    Text = '3306'
  end
  object Button1: TButton
    Left = 16
    Top = 202
    Width = 185
    Height = 25
    Caption = 'Teszt'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit5: TEdit
    Left = 16
    Top = 52
    Width = 185
    Height = 21
    TabOrder = 5
    Text = 'sakila'
  end
  object Memo1: TMemo
    Left = 224
    Top = 8
    Width = 457
    Height = 281
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 6
  end
  object Button2: TButton
    Left = 16
    Top = 248
    Width = 185
    Height = 25
    Caption = 'Kil'#233'p'#233's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button2Click
  end
  object sqliteImportKapcs: TFDConnection
    ConnectionName = 'sqliteKapcs'
    Params.Strings = (
      'DriverID=SQLite'
      
        'Database=H:\Delphi\Nav_atkuldo_API_2.0\Sqlite_mysql\Win32\Debug\' +
        'navbe.db'
      'User_Name=feri'
      'LockingMode=Normal'
      'DateTimeFormat=String'
      'StringFormat=Unicode')
    ResourceOptions.AssignedValues = [rvAutoConnect]
    ResourceOptions.AutoConnect = False
    LoginPrompt = False
    Left = 192
    Top = 24
  end
  object exportQ: TFDQuery
    Connection = sqliteImportKapcs
    Left = 192
    Top = 72
  end
  object importQ: TFDQuery
    OnError = importQError
    Left = 192
    Top = 168
  end
  object export2Q: TFDQuery
    Connection = sqliteImportKapcs
    Left = 192
    Top = 120
  end
end
