object dmSchedule: TdmSchedule
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDQuery: TFDQuery
    Connection = dmMain.GymConnection
    SQL.Strings = (
      'select * from menu')
    Left = 87
    Top = 48
  end
end
