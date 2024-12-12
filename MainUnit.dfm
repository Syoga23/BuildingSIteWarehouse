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
    Top = 29
    Height = 768
    ExplicitLeft = 472
    ExplicitTop = 360
    ExplicitHeight = 100
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 29
    Width = 241
    Height = 768
    Align = alLeft
    TabOrder = 0
    DesignSize = (
      241
      768)
    object Label2: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 233
      Height = 15
      Align = alTop
      Caption = #1057#1090#1088#1086#1080#1090#1077#1083#1100#1085#1099#1081' '#1084#1072#1090#1077#1088#1080#1072#1083':'
      ExplicitWidth = 760
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 22
      Width = 239
      Height = 745
      Align = alClient
      DataSource = BDModule.MaterialNamesDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
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
    Top = 29
    Width = 906
    Height = 768
    Align = alClient
    TabOrder = 1
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
        TabOrder = 6
      end
      object Button2: TButton
        Left = 712
        Top = 194
        Width = 81
        Height = 31
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object Button3: TButton
        Left = 799
        Top = 194
        Width = 82
        Height = 31
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1086#1090#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object CountryRefButton: TButton
        Left = 424
        Top = 203
        Width = 25
        Height = 23
        Caption = '...'
        TabOrder = 9
      end
      object DBEdit4: TDBEdit
        Left = 160
        Top = 203
        Width = 265
        Height = 21
        DataField = 'MadeCountry_Key'
        DataSource = BDModule.MaterialsDS
        TabOrder = 10
      end
      object Button1: TButton
        Left = 490
        Top = 203
        Width = 121
        Height = 23
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
        TabOrder = 11
      end
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 244
      Width = 904
      Height = 523
      ActivePage = TabSheet2
      Align = alClient
      BiDiMode = bdLeftToRight
      MultiLine = True
      ParentBiDiMode = False
      TabOrder = 1
      TabPosition = tpBottom
      StyleElements = [seFont, seClient]
      ExplicitTop = 252
      ExplicitHeight = 515
      object TabSheet1: TTabSheet
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
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 153
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 21
          Width = 896
          Height = 474
          Align = alClient
          DataField = 'Characteristics'
          DataSource = BDModule.MaterialsDS
          TabOrder = 0
          ExplicitTop = 19
          ExplicitHeight = 436
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
          Height = 474
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
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
          Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
          ExplicitWidth = 153
        end
        object DBGrid3: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 474
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1055#1077#1088#1077#1076#1072#1095#1080
        ImageIndex = 3
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 890
          Height = 15
          Align = alTop
          Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
          ExplicitWidth = 153
        end
        object DBGrid4: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 474
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
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
          Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080' '#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
          ExplicitWidth = 153
        end
        object DBGrid5: TDBGrid
          Left = 0
          Top = 21
          Width = 896
          Height = 474
          Align = alClient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1150
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 2
  end
end
