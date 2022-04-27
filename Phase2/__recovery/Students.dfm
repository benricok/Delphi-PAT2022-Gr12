object frmStudents: TfrmStudents
  Left = 0
  Top = 0
  Caption = 'Students'
  ClientHeight = 558
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlQuickAcess: TPanel
    Left = 0
    Top = 520
    Width = 884
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 795
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnLogout: TButton
      Left = 706
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Logout'
      TabOrder = 1
    end
  end
  object tabCtrl: TTabControl
    Left = 0
    Top = 0
    Width = 884
    Height = 520
    Align = alClient
    TabOrder = 1
    Tabs.Strings = (
      'Home'
      'Submissions'
      'New Application'
      'Notifications')
    TabIndex = 0
    ExplicitHeight = 401
  end
end
