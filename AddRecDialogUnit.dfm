object AddRecDialog: TAddRecDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100':'
  ClientHeight = 298
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 669
    Height = 248
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = 456
    ExplicitTop = 352
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label10: TLabel
      Left = 25
      Top = 168
      Width = 112
      Height = 15
      Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103':'
    end
    object Label11: TLabel
      Left = 25
      Top = 207
      Width = 128
      Height = 15
      Caption = #1057#1090#1088#1072#1085#1072' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100':'
    end
    object Label6: TLabel
      Left = 25
      Top = 21
      Width = 23
      Height = 15
      Caption = #1050#1086#1076':'
    end
    object Label7: TLabel
      Left = 25
      Top = 56
      Width = 117
      Height = 15
      Caption = #1042#1080#1076' '#1089#1090#1088#1086#1081#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
    end
    object Label8: TLabel
      Left = 25
      Top = 93
      Width = 55
      Height = 15
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
    end
    object Label9: TLabel
      Left = 25
      Top = 132
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Button1: TButton
      Left = 482
      Top = 197
      Width = 75
      Height = 31
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 577
      Top = 197
      Width = 75
      Height = 31
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 571
      Top = 197
      Width = 81
      Height = 31
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1086#1090#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object CountryRefButton: TButton
      Left = 424
      Top = 203
      Width = 25
      Height = 23
      Caption = '...'
      TabOrder = 3
      OnClick = CountryRefButtonClick
    end
    object DBEdit1: TDBEdit
      Left = 160
      Top = 18
      Width = 289
      Height = 23
      DataField = 'Material_ID'
      DataSource = BDModule.MaterialsDS
      Enabled = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 160
      Top = 90
      Width = 265
      Height = 23
      DataField = 'Name'
      DataSource = BDModule.MaterialsDS
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 160
      Top = 129
      Width = 289
      Height = 23
      DataField = 'Quantity'
      DataSource = BDModule.MaterialsDS
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 160
      Top = 203
      Width = 265
      Height = 23
      DataField = 'MadeCountry'
      DataSource = BDModule.MaterialsDS
      TabOrder = 7
    end
    object DBImage1: TDBImage
      Left = 482
      Top = 21
      Width = 170
      Height = 170
      DataField = 'Photo'
      DataSource = BDModule.MaterialsDS
      Stretch = True
      TabOrder = 8
    end
    object NamesRefButton: TButton
      Left = 424
      Top = 90
      Width = 25
      Height = 23
      Caption = '...'
      TabOrder = 9
      OnClick = NamesRefButtonClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 160
      Top = 53
      Width = 289
      Height = 23
      DataField = 'MaterialType'
      DataSource = BDModule.MaterialsDS
      TabOrder = 10
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 160
      Top = 165
      Width = 289
      Height = 23
      DataField = 'Measures'
      DataSource = BDModule.MaterialsDS
      TabOrder = 11
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 248
    Width = 669
    Height = 50
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 392
    ExplicitWidth = 769
    object AddButton: TButton
      Left = 553
      Top = 10
      Width = 103
      Height = 31
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      TabOrder = 0
      OnClick = AddButtonClick
    end
    object Button4: TButton
      Left = 435
      Top = 10
      Width = 103
      Height = 31
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button4Click
    end
  end
end
