object frmStaff: TfrmStaff
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Staff'
  ClientHeight = 571
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlQuickAcess: TPanel
    Left = 0
    Top = 534
    Width = 894
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 803
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object btnLogout: TButton
      Left = 714
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Logout'
      TabOrder = 1
    end
  end
  object tbcStaff: TPageControl
    Left = 0
    Top = 0
    Width = 894
    Height = 534
    ActivePage = tabUserAdmin
    TabOrder = 1
    object tabHome: TTabSheet
      Caption = 'Home'
    end
    object tabCources: TTabSheet
      Caption = 'Cources'
      ImageIndex = 1
    end
    object tabSubmissions: TTabSheet
      Caption = 'Submissions'
      ImageIndex = 2
    end
    object tabUserAdmin: TTabSheet
      Caption = 'User Administration'
      ImageIndex = 3
    end
    object tabEventLog: TTabSheet
      Caption = 'Event Log'
      ImageIndex = 4
    end
  end
end
