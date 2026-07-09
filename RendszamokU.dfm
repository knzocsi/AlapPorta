object RendszamokF: TRendszamokF
  Left = 0
  Top = 0
  Caption = 'Rendsz'#225'mok-T'#225'r'#225'k'
  ClientHeight = 331
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnKilepes: TButton
      Left = 16
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Kil'#233'p'#233's'
      TabOrder = 0
      OnClick = btnKilepesClick
    end
  end
  object pcListaReszlet: TPageControl
    Left = 0
    Top = 41
    Width = 746
    Height = 290
    ActivePage = tbReszlet
    Align = alClient
    TabOrder = 1
    object tbLista: TTabSheet
      Caption = 'Lista'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 738
        Height = 262
        Align = alClient
        DataSource = RendszamDS
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'rendszam'
            Title.Caption = 'Rendsz'#225'm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tara'
            Title.Caption = 'T'#225'ra'
            Visible = True
          end>
      end
    end
    object tbReszlet: TTabSheet
      Caption = 'R'#233'szletek'
      ImageIndex = 1
      OnHide = tbReszletHide
      OnShow = tbReszletShow
      object lbl1: TLabel
        Left = 56
        Top = 72
        Width = 49
        Height = 13
        Caption = 'Rendsz'#225'm'
        FocusControl = dedRendszam
      end
      object Label5: TLabel
        Left = 56
        Top = 26
        Width = 40
        Height = 13
        Caption = 'Partner:'
        Visible = False
      end
      object Label1: TLabel
        Left = 344
        Top = 72
        Width = 26
        Height = 13
        Caption = 'T'#225'ra:'
      end
      object DBNavigator1: TDBNavigator
        Left = 409
        Top = 0
        Width = 215
        Height = 25
        DataSource = RendszamDS
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object dedRendszam: TDBEdit
        Left = 56
        Top = 88
        Width = 264
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Rendszam'
        DataSource = RendszamDS
        TabOrder = 1
      end
      object dbspeTara: TJvDBSpinEdit
        Left = 344
        Top = 88
        Width = 121
        Height = 21
        Decimal = 0
        TabOrder = 2
        DataField = 'tara'
        DataSource = RendszamDS
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 56
        Top = 45
        Width = 409
        Height = 21
        DataField = 'id'
        DataSource = PartnelistDs
        KeyField = 'id'
        ListField = 'nev'
        ListSource = PartnelistDs
        TabOrder = 3
        Visible = False
      end
    end
  end
  object btnMeres: TButton
    Left = 480
    Top = 152
    Width = 75
    Height = 25
    Caption = 'M'#233'r'#233's'
    TabOrder = 2
    OnClick = btnMeresClick
  end
  object RendszamT: TFDTable
    IndexFieldNames = 'ID'
    Connection = AF.Kapcs
    UpdateOptions.UpdateTableName = 'rendszam'
    TableName = 'rendszam'
    Left = 272
    Top = 72
  end
  object RendszamDS: TDataSource
    DataSet = RendszamT
    Left = 344
    Top = 72
  end
  object Partnelist: TFDQuery
    Connection = AF.Kapcs
    SQL.Strings = (
      'SELECT * from partner ORDER BY Nev ASC;')
    Left = 570
    Top = 183
  end
  object PartnelistDs: TDataSource
    DataSet = Partnelist
    Left = 530
    Top = 199
  end
  object siLangLinked_RendszamokF: TsiLangLinked
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
    Left = 368
    Top = 168
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
