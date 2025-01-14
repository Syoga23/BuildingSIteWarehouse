object Posts: TPosts
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1086#1083#1078#1085#1086#1089#1090#1077#1081
  ClientHeight = 729
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 688
    Width = 1108
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 687
    ExplicitWidth = 1104
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 772
      Top = 4
      Width = 240
      Height = 33
      Margins.Right = 10
      DataSource = BDModule.PostsDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 768
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 1027
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
      ExplicitLeft = 1023
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 688
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 1104
    ExplicitHeight = 687
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1106
      Height = 686
      Align = alClient
      DataSource = BDModule.PostsDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
