object ConnectForm: TConnectForm
  Left = 0
  Top = 0
  ActiveControl = Panel
  BorderStyle = bsDialog
  Caption = #1057#1082#1083#1072#1076#1089#1082#1086#1081' '#1091#1095#1077#1090' '#1089#1090#1088#1086#1081#1092#1080#1088#1084#1099
  ClientHeight = 73
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel: TPanel
    Left = 0
    Top = 0
    Width = 414
    Height = 73
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 417
    object Text: TLabel
      Left = 16
      Top = 8
      Width = 201
      Height = 17
      Caption = #1048#1084#1103' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093' MS SQL Server:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LoginEdit: TEdit
      Left = 16
      Top = 34
      Width = 265
      Height = 23
      TabOrder = 0
      TextHint = 'PC\SQLSERVER2008'
    end
    object LoginButton: TButton
      Left = 295
      Top = 34
      Width = 105
      Height = 25
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103
      TabOrder = 1
      OnClick = LoginButtonClick
    end
  end
end
