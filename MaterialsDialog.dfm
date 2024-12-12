object MaterialNamesDialog: TMaterialNamesDialog
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1080#1084#1103' '#1084#1072#1090#1077#1088#1080#1072#1083#1072':'
  ClientHeight = 626
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 579
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitHeight = 611
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 944
      Height = 577
      Align = alClient
      DataSource = BDModule.DSNamesDialog
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
    Top = 579
    Width = 946
    Height = 47
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    object Button1: TButton
      Left = 772
      Top = 11
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 861
      Top = 11
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
