object BDModule: TBDModule
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object Connection: TADOConnection
    Left = 48
    Top = 32
  end
  object MaterialsDS: TDataSource
    Left = 240
    Top = 32
  end
  object MaterialsSQL: TADOQuery
    Connection = Connection
    DataSource = MaterialsDS
    Parameters = <>
    Left = 144
    Top = 32
  end
end
