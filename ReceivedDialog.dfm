object ReceivedForm: TReceivedForm
  Left = 0
  Top = 0
  Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1099#1077' '#1090#1086#1074#1072#1088#1099':'
  ClientHeight = 141
  ClientWidth = 777
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
    Top = 100
    Width = 777
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 120
    object Button1: TButton
      Left = 664
      Top = 6
      Width = 95
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 552
      Top = 6
      Width = 95
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 100
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 927
    ExplicitHeight = 280
    object Label6: TLabel
      Left = 25
      Top = 21
      Width = 58
      Height = 15
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083':'
    end
    object Label1: TLabel
      Left = 25
      Top = 61
      Width = 68
      Height = 15
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
    end
    object Label2: TLabel
      Left = 265
      Top = 21
      Width = 102
      Height = 15
      Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103':'
    end
    object Label3: TLabel
      Left = 265
      Top = 61
      Width = 58
      Height = 15
      Caption = #1050#1086#1076' '#1089#1076#1072#1095#1080':'
    end
    object Label4: TLabel
      Left = 537
      Top = 61
      Width = 55
      Height = 15
      Caption = #1056#1072#1073#1086#1090#1085#1080#1082':'
    end
    object Label5: TLabel
      Left = 537
      Top = 21
      Width = 66
      Height = 15
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
    end
    object DBEdit2: TDBEdit
      Left = 101
      Top = 58
      Width = 150
      Height = 23
      DataField = 'Quantity'
      DataSource = BDModule.RecievedDS
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 373
      Top = 18
      Width = 150
      Height = 23
      DataField = 'recieve_date'
      DataSource = BDModule.RecievedDS
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 373
      Top = 58
      Width = 150
      Height = 23
      DataField = 'delivery_Key'
      DataSource = BDModule.RecievedDS
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 101
      Top = 18
      Width = 150
      Height = 23
      DataField = 'MaterialName'
      DataSource = BDModule.RecievedDS
      TabOrder = 3
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 609
      Top = 18
      Width = 150
      Height = 23
      DataField = 'Supplier'
      DataSource = BDModule.RecievedDS
      TabOrder = 4
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 609
      Top = 58
      Width = 150
      Height = 23
      DataField = 'Employee'
      DataSource = BDModule.RecievedDS
      TabOrder = 5
    end
  end
end
