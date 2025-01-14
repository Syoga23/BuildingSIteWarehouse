object Measures: TMeasures
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1077#1076#1080#1085#1080#1094' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
  ClientHeight = 750
  ClientWidth = 1123
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 709
    Width = 1123
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 698
    ExplicitWidth = 1119
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 787
      Top = 4
      Width = 240
      Height = 33
      Margins.Right = 10
      DataSource = BDModule.MeasureTypesDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 783
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 1042
      Top = 6
      Width = 75
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = 1038
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1123
    Height = 709
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 1119
    ExplicitHeight = 698
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1121
      Height = 707
      Align = alClient
      DataSource = BDModule.MeasureTypesDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
