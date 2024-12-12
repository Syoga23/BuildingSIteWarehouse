object MaterialTypes: TMaterialTypes
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 737
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 696
    Width = 1121
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitLeft = -344
    ExplicitTop = 401
    ExplicitWidth = 972
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 785
      Top = 4
      Width = 240
      Height = 33
      Margins.Right = 10
      DataSource = BDModule.MaterialTypesDS
      Align = alRight
      TabOrder = 0
      ExplicitTop = 5
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 1040
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
      ExplicitLeft = 547
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 696
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 628
    ExplicitHeight = 401
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1119
      Height = 694
      Align = alClient
      DataSource = BDModule.MaterialTypesDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
