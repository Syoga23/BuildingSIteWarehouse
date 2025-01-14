object Employee: TEmployee
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1088#1072#1073#1086#1090#1085#1080#1082#1086#1074
  ClientHeight = 692
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 651
    Width = 988
    Height = 41
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    ExplicitTop = 650
    ExplicitWidth = 984
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 652
      Top = 4
      Width = 240
      Height = 33
      Margins.Right = 10
      DataSource = BDModule.EmployeeDS
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 648
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 907
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
      ExplicitLeft = 903
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 651
    Align = alClient
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 1
    ExplicitWidth = 984
    ExplicitHeight = 650
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 986
      Height = 649
      Align = alClient
      DataSource = BDModule.EmployeeDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Employee_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Familia'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Imya'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Otchestvo'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Post'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Post_Key'
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BirthDate'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Phone'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 128
          Visible = True
        end>
    end
  end
end
