object CountryDialog: TCountryDialog
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1088#1072#1085#1091' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103':'
  ClientHeight = 628
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 581
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitWidth = 934
    ExplicitHeight = 580
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 936
      Height = 579
      Align = alClient
      DataSource = BDModule.CountryDialogDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 581
    Width = 938
    Height = 47
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 580
    ExplicitWidth = 934
    object Button1: TButton
      Left = 760
      Top = 11
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 850
      Top = 11
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
