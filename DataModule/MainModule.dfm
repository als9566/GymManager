object dmMain: TdmMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object GymConnection: TFDConnection
    Params.Strings = (
      'Database='
      'ConnectionDef=SQLite_Demo')
    Connected = True
    Left = 63
    Top = 40
  end
end
