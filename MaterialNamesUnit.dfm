object MaterialNames: TMaterialNames
  Left = 0
  Top = 0
  Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074':'
  ClientHeight = 740
  ClientWidth = 1125
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 699
    Width = 1125
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -495
    ExplicitTop = 401
    ExplicitWidth = 1123
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 789
      Top = 4
      Width = 240
      Height = 33
      Margins.Right = 10
      DataSource = BDModule.MaterialNamesDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 787
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 1044
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
      ExplicitLeft = 1042
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1125
    Height = 699
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -495
    ExplicitTop = -257
    ExplicitWidth = 1123
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1123
      Height = 697
      Align = alClient
      DataSource = BDModule.MaterialNamesDS
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Visible = True
        end>
    end
  end
end
