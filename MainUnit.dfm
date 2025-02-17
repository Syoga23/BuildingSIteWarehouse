object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1057#1082#1083#1072#1076#1089#1082#1086#1081' '#1091#1095#1077#1090' '#1089#1090#1088#1086#1081#1092#1080#1088#1084#1099
  ClientHeight = 797
  ClientWidth = 1150
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = BDModule.MainMenu
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Splitter1: TSplitter
    Left = 241
    Top = 0
    Height = 797
    ExplicitLeft = 472
    ExplicitTop = 360
    ExplicitHeight = 100
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 797
    Align = alLeft
    TabOrder = 0
    ExplicitTop = 29
    ExplicitHeight = 767
    DesignSize = (
      241
      797)
    object Label2: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 233
      Height = 15
      Align = alTop
      Caption = #1057#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1081' '#1084#1072#1090#1077#1088#1080#1072#1083':'
      ExplicitWidth = 140
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 22
      Width = 239
      Height = 774
      Align = alClient
      DataSource = BDModule.MaterialNamesDS
      Options = [dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Name_ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Name'
          Visible = True
        end>
    end
    object PencilButtonNames: TButton
      Left = 213
      Top = 3
      Width = 20
      Height = 16
      Anchors = [akTop, akRight]
      ImageIndex = 0
      Images = BDModule.ImageList1
      TabOrder = 1
      OnClick = PencilButtonNamesClick
    end
  end
  object RightPanelAll: TPanel
    Left = 244
    Top = 0
    Width = 906
    Height = 797
    Align = alClient
    TabOrder = 1
    ExplicitTop = 29
    ExplicitWidth = 902
    ExplicitHeight = 767
    object Splitter2: TSplitter
      Left = 1
      Top = 241
      Width = 904
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 1
      ExplicitWidth = 796
    end
    object TopPanel: TPanel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 902
      Height = 240
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 2
      Margins.Bottom = 0
      Align = alTop
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 898
      object Label6: TLabel
        Left = 25
        Top = 21
        Width = 22
        Height = 13
        Caption = #1050#1086#1076':'
      end
      object Label7: TLabel
        Left = 25
        Top = 56
        Width = 113
        Height = 13
        Caption = #1042#1080#1076' '#1089#1090#1088#1086#1081#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
      end
      object Label8: TLabel
        Left = 25
        Top = 93
        Width = 54
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label9: TLabel
        Left = 25
        Top = 132
        Width = 65
        Height = 13
        Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      end
      object Label10: TLabel
        Left = 25
        Top = 168
        Width = 111
        Height = 13
        Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103':'
      end
      object Label11: TLabel
        Left = 25
        Top = 207
        Width = 126
        Height = 13
        Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100':'
      end
      object DBEdit1: TDBEdit
        Left = 160
        Top = 18
        Width = 289
        Height = 21
        DataField = 'Material_ID'
        DataSource = BDModule.MaterialsDS
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 160
        Top = 53
        Width = 289
        Height = 21
        DataField = 'MaterialType'
        DataSource = BDModule.MaterialsDS
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 160
        Top = 90
        Width = 265
        Height = 21
        DataField = 'Name'
        DataSource = BDModule.MaterialsDS
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 160
        Top = 129
        Width = 289
        Height = 21
        DataField = 'Quantity'
        DataSource = BDModule.MaterialsDS
        TabOrder = 3
      end
      object NamesRefButton: TButton
        Left = 424
        Top = 90
        Width = 25
        Height = 23
        Caption = '...'
        TabOrder = 4
        OnClick = NamesRefButtonClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 160
        Top = 165
        Width = 289
        Height = 21
        DataField = 'Measures'
        DataSource = BDModule.MaterialsDS
        TabOrder = 5
      end
      object DBImage1: TDBImage
        Left = 712
        Top = 18
        Width = 170
        Height = 170
        DataField = 'Photo'
        DataSource = BDModule.MaterialsDS
        Stretch = True
        TabOrder = 6
      end
      object Button2: TButton
        Left = 712
        Top = 194
        Width = 75
        Height = 31
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 800
        Top = 194
        Width = 81
        Height = 31
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1086#1090#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = Button3Click
      end
      object CountryRefButton: TButton
        Left = 424
        Top = 203
        Width = 25
        Height = 23
        Caption = '...'
        TabOrder = 9
        OnClick = CountryRefButtonClick
      end
      object DBEdit4: TDBEdit
        Left = 160
        Top = 203
        Width = 265
        Height = 21
        DataField = 'MadeCountry'
        DataSource = BDModule.MaterialsDS
        TabOrder = 10
      end
      object AddButton: TButton
        Left = 490
        Top = 203
        Width = 103
        Height = 23
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 11
        OnClick = AddButtonClick
      end
      object EditButton: TButton
        Left = 490
        Top = 164
        Width = 103
        Height = 23
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 12
        OnClick = EditButtonClick
      end
      object DelButton: TButton
        Left = 490
        Top = 128
        Width = 103
        Height = 23
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 13
        OnClick = DelButtonClick
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 244
      Width = 904
      Height = 552
      ActivePage = TabSheet3
      Align = alClient
      BiDiMode = bdLeftToRight
      MultiLine = True
      ParentBiDiMode = False
      TabOrder = 1
      TabPosition = tpBottom
      StyleElements = [seFont, seClient]
      ExplicitHeight = 523
      object TabSheet1: TTabSheet
        Caption = #1058#1086#1074#1072#1088#1099
        ImageIndex = 5
        object Label13: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1058#1086#1074#1072#1088#1099':'
          ExplicitWidth = 44
        end
        object DBGrid6: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 503
          Align = alClient
          DataSource = BDModule.MaterialsDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Material_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MadeCountry'
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Name_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'MaterialType_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MeasurementType_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Characteristics'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MadeCountry_Key'
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Photo'
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MaterialType'
              Width = 111
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Measures'
              Width = 130
              Visible = True
            end>
        end
      end
      object TabSheet6: TTabSheet
        Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
        DoubleBuffered = True
        ParentDoubleBuffered = False
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
          ExplicitWidth = 153
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 21
          Width = 896
          Height = 503
          Align = alClient
          DataField = 'Characteristics'
          DataSource = BDModule.MaterialsDS
          TabOrder = 0
          ExplicitHeight = 474
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1055#1088#1080#1085#1103#1090#1086
        ImageIndex = 1
        object Label4: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1055#1088#1080#1085#1103#1090#1086':'
          ExplicitWidth = 51
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 503
          Align = alClient
          DataSource = BDModule.RecievedDS
          PopupMenu = BDModule.popupReceived
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Recieved_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MaterialName'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Material_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Quantity'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'recieve_date'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'delivery_Key'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'supplier_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'employee_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Supplier'
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Employee'
              Width = 140
              Visible = True
            end>
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1057#1076#1072#1085#1086
        ImageIndex = 2
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1057#1076#1072#1085#1086':'
          ExplicitWidth = 37
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 503
          Align = alClient
          DataSource = BDModule.DeliveriesDS
          PopupMenu = BDModule.popupDeliveries
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'delivery_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'material_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'MaterialName'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'quantity'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'delivery_date'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'employee_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Employee'
              Width = 200
              Visible = True
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
        ImageIndex = 4
        object Label12: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080':'
          ExplicitWidth = 69
        end
        object DBGrid5: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 503
          Align = alClient
          DataSource = BDModule.EmployeeDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Employee_ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Familia'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Imya'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Otchestvo'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Post'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Post_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'BirthDate'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Phone'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Width = 115
              Visible = True
            end>
        end
      end
      object TabSheet7: TTabSheet
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
        ImageIndex = 6
        object Label14: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080':'
          ExplicitWidth = 73
        end
        object DBGrid7: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 503
          Align = alClient
          DataSource = BDModule.SuppliersDS
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CompanyName'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Fam'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Imya'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Otec'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Post'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Post_Key'
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Phone'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Width = 115
              Visible = True
            end>
        end
      end
    end
  end
end
