object kezdokeszletF: TkezdokeszletF
  Left = 0
  Top = 0
  Caption = 'Kezd'#337' k'#233'szletek felvitele'
  ClientHeight = 507
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 24
    Top = 8
    Width = 47
    Height = 13
    Caption = 'A k'#233'szlet:'
  end
  object Label4: TLabel
    Left = 202
    Top = 8
    Width = 46
    Height = 13
    Caption = 'B k'#233'szlet:'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 895
    Height = 449
    Align = alTop
    DataSource = termeklistDs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyUp = DBGrid1KeyUp
  end
  object Panel1: TPanel
    Left = 0
    Top = 455
    Width = 895
    Height = 52
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 0
      Width = 62
      Height = 13
      Caption = #218'J A k'#233'szlet:'
    end
    object Label2: TLabel
      Left = 199
      Top = 0
      Width = 61
      Height = 13
      Caption = #218'J B k'#233'szlet:'
    end
    object Label5: TLabel
      Left = 449
      Top = 0
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'FELVITT A k'#233'szlet:'
    end
    object Label7: TLabel
      Left = 665
      Top = 0
      Width = 88
      Height = 13
      Alignment = taRightJustify
      Caption = 'FELVITT B k'#233'szlet:'
    end
    object Button1: TButton
      Left = 183
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Ment'#233's'
      TabOrder = 0
      OnClick = Button1Click
    end
    object spakeszlet: TJvSpinEdit
      Left = 72
      Top = 1
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object spbkeszlet: TJvSpinEdit
      Left = 266
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 542
    Top = 455
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEdit2: TSpinEdit
    Left = 755
    Top = 455
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object termeklist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'select * from termek ORDER By NEV ASC;')
    Left = 328
    Top = 56
  end
  object termeklistDs: TDataSource
    DataSet = termeklist
    Left = 376
    Top = 56
  end
  object siLangLinked_kezdokeszletF: TsiLangLinked
    Version = '7.9.10.1'
    StringsTypes.Strings = (
      'TIB_STRINGLIST'
      'TSTRINGLIST'
      'TWIDESTRINGS')
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
    Left = 440
    Top = 256
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
