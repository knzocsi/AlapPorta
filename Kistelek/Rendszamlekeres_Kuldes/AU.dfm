object AF: TAF
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 284
  Width = 543
  object Kapcs: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 48
    Top = 32
  end
  object ModScript: TFDScript
    SQLScripts = <
      item
        Name = 'dbm'
        SQL.Strings = (
          '')
      end>
    Connection = Kapcs
    ScriptOptions.CommandSeparator = ';'
    ScriptOptions.DriverID = 'MySQL'
    ScriptOptions.CharacterSet = 'Utf8mb4'
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    Left = 151
    Top = 32
  end
  object RendszamokQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'SELECT id,rendszam,kameraszam,idopont,kepnev'
      'FROM rendszamok'
      'ORDER BY idopont desc')
    Left = 224
    Top = 32
  end
  object RendszamokDS: TDataSource
    DataSet = RendszamokQ
    Left = 223
    Top = 87
  end
  object Q1: TFDQuery
    Connection = Kapcs
    Left = 32
    Top = 160
  end
  object Q2: TFDQuery
    Connection = Kapcs
    Left = 80
    Top = 160
  end
  object Q3: TFDQuery
    Connection = Kapcs
    Left = 120
    Top = 160
  end
  object ParositottQ: TFDQuery
    Connection = Kapcs
    SQL.Strings = (
      'SELECT id,rendszam1,rendszam2,kepnev1,kepnev2,bekuldve,masolva'
      'FROM parositott'
      'ORDER BY id desc')
    Left = 304
    Top = 32
  end
  object ParositottDS: TDataSource
    DataSet = ParositottQ
    Left = 303
    Top = 87
  end
  object Q4: TFDQuery
    Connection = Kapcs
    Left = 160
    Top = 160
  end
  object Q5: TFDQuery
    Connection = Kapcs
    Left = 200
    Top = 160
  end
end
