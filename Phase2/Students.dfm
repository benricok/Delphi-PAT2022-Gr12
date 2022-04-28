object frmStudents: TfrmStudents
  Left = 0
  Top = 0
  Caption = 'Students'
  ClientHeight = 561
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
    Top = 524
    Width = 884
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 787
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object btnLogout: TButton
      Left = 698
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Logout'
      TabOrder = 1
    end
  end
  object tbcStudents: TPageControl
    Left = 0
    Top = -2
    Width = 894
    Height = 526
    ActivePage = tabNotificationsStudents
    TabOrder = 1
    object tabHomeStudents: TTabSheet
      Caption = 'Home'
    end
    object tabYourSubmissions: TTabSheet
      Caption = 'Your Submissions'
      ImageIndex = 1
    end
    object tabNewApplication: TTabSheet
      Caption = 'New Application'
      ImageIndex = 2
    end
    object tabNotificationsStudents: TTabSheet
      Caption = 'Notifications'
      ImageIndex = 3
    end
  end
end
