object Countries: TCountries
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 737
  ClientWidth = 1119
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
    Width = 1119
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
      Left = 783
      Top = 4
      Width = 240
      Height = 33
      Margins.Right = 10
      DataSource = BDModule.CountriesDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 636
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 1038
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
      ExplicitLeft = 891
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1119
    Height = 696
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitLeft = -344
    ExplicitTop = -186
    ExplicitWidth = 972
    ExplicitHeight = 628
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1117
      Height = 694
      Align = alClient
      DataSource = BDModule.CountriesDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
  end
end
