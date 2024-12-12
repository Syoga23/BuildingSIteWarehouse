object BDModule: TBDModule
  OnCreate = DataModuleCreate
  Height = 419
  Width = 640
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=Admin;Initial Catalog=BuildingSIteWarehouse;Dat' +
      'a Source=SERGEIPC\SQLSERVER2008'
    LoginPrompt = False
    Provider = 'SQLOLEDB'
    Left = 40
    Top = 32
  end
  object MaterialsDS: TDataSource
    DataSet = MaterialsSQL
    Left = 232
    Top = 32
  end
  object MaterialsSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Materials')
    Left = 128
    Top = 32
    object MaterialsSQLMaterial_ID: TIntegerField
      FieldName = 'Material_ID'
    end
    object MaterialsSQLName_Key: TIntegerField
      FieldName = 'Name_Key'
    end
    object MaterialsSQLMaterialType_Key: TIntegerField
      FieldName = 'MaterialType_Key'
    end
    object MaterialsSQLQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object MaterialsSQLMeasurementType_Key: TIntegerField
      FieldName = 'MeasurementType_Key'
    end
    object MaterialsSQLCharacteristics: TWideStringField
      FieldName = 'Characteristics'
      Size = 255
    end
    object MaterialsSQLMadeCountry_Key: TIntegerField
      FieldName = 'MadeCountry_Key'
    end
    object MaterialsSQLPhoto: TBlobField
      FieldName = 'Photo'
    end
    object MaterialsSQLMaterialType: TStringField
      FieldKind = fkLookup
      FieldName = 'MaterialType'
      LookupDataSet = MaterialTypesSQL
      LookupKeyFields = 'MaterialType_ID'
      LookupResultField = 'TypeName'
      KeyFields = 'MaterialType_Key'
      Lookup = True
    end
  end
  object MainMenu: TMainMenu
    Left = 32
    Top = 344
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
    end
    object N3: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100
    end
    object N2: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object N5: TMenuItem
        Caption = #1042#1080#1076#1099' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1081
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1057#1090#1088#1072#1085#1099' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1080
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
        OnClick = N8Click
      end
    end
    object N4: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    end
  end
  object MaterialNamesDS: TDataSource
    DataSet = MaterialNamesSQL
    Left = 232
    Top = 88
  end
  object MaterialNamesSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MaterialNames')
    Left = 128
    Top = 88
    object MaterialNamesSQLName_ID: TIntegerField
      FieldName = 'Name_ID'
    end
    object MaterialNamesSQLName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
  end
  object MeasureTypesDS: TDataSource
    DataSet = MeasureTypesSQL
    Left = 232
    Top = 144
  end
  object MeasureTypesSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MeasureTypesRef')
    Left = 128
    Top = 144
  end
  object MaterialTypesDS: TDataSource
    DataSet = MaterialTypesSQL
    Left = 232
    Top = 200
  end
  object MaterialTypesSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM MaterialTypesRef')
    Left = 128
    Top = 200
  end
  object CountriesDS: TDataSource
    DataSet = CountriesSQL
    Left = 232
    Top = 256
  end
  object CountriesSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM CountriesRef')
    Left = 128
    Top = 256
  end
  object RecievedDS: TDataSource
    DataSet = RecievedSQL
    Left = 400
    Top = 32
  end
  object RecievedSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Recieved')
    Left = 320
    Top = 32
  end
  object DeliveriesDS: TDataSource
    DataSet = DeliveriesSQL
    Left = 400
    Top = 88
  end
  object DeliveriesSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Deliveries')
    Left = 320
    Top = 88
  end
  object EmployeeDS: TDataSource
    DataSet = EmployeeSQL
    Left = 400
    Top = 144
  end
  object EmployeeSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Employee')
    Left = 320
    Top = 144
  end
  object PostsDS: TDataSource
    DataSet = PostsSQL
    Left = 400
    Top = 200
  end
  object PostsSQL: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM PostsRef')
    Left = 320
    Top = 200
  end
  object ImageList1: TImageList
    Left = 104
    Top = 344
  end
end
