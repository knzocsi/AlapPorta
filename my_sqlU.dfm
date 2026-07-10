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
  object siLangLinked_MySQLF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
    StoreAsUTF8 = True
    NumOfLanguages = 3
    LangDispatcher = FoF.siLangDispatcher1
    LangDelim = 1
    LangNames.Strings = (
      'Hungarian'
      'English'
      'Romanian')
    Language = 'Hungarian'
    CommonContainer = FoF.siLang_FoF
    ExcludedProperties.Strings = (
      'Category'
      'SecondaryShortCuts'
      'HelpKeyword'
      'InitialDir'
      'HelpKeyword'
      'ActivePage'
      'ImeName'
      'DefaultExt'
      'FileName'
      'FieldName'
      'PickList'
      'DisplayFormat'
      'EditMask'
      'KeyList'
      'LookupDisplayFields'
      'DropDownSpecRow'
      'TableName'
      'DatabaseName'
      'IndexName'
      'MasterFields'
      'SQL'
      'DeleteSQL'
      'UpdateSQL'
      'ModifySQL'
      'KeyFields'
      'LookupKeyFields'
      'LookupResultField'
      'DataField'
      'KeyField'
      'ListField')
    Left = 344
    Top = 152
    TranslationData = {
      73007400430061007000740069006F006E0073005F0055006E00690063006F00
      640065000D000A0073007400480069006E00740073005F0055006E0069006300
      6F00640065000D000A007300740044006900730070006C00610079004C006100
      620065006C0073005F0055006E00690063006F00640065000D000A0073007400
      46006F006E00740073005F0055006E00690063006F00640065000D000A007300
      74004D0075006C00740069004C0069006E00650073005F0055006E0069006300
      6F00640065000D000A007300740053007400720069006E00670073005F005500
      6E00690063006F00640065000D000A00730074004F0074006800650072005300
      7400720069006E00670073005F0055006E00690063006F00640065000D000A00
      7300740043006F006C006C0065006300740069006F006E0073005F0055006E00
      690063006F00640065000D000A00730074004300680061007200530065007400
      73005F0055006E00690063006F00640065000D000A00}
  end
end
