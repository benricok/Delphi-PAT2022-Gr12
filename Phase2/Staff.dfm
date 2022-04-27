object frmStaff: TfrmStaff
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Staff'
  ClientHeight = 810
  ClientWidth = 1410
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
  object tabCtrl: TTabControl
    Left = 0
    Top = 0
    Width = 1410
    Height = 773
    Align = alClient
    TabOrder = 0
    Tabs.Strings = (
      'Tab 1'
      'Tab 2')
    TabIndex = 0
    ExplicitHeight = 810
  end
  object pnlQuickAcess: TPanel
    Left = 0
    Top = 773
    Width = 1410
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 769
    object BitBtn1: TBitBtn
      Left = 1323
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
    object btnLogout: TButton
      Left = 1242
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Logout'
      TabOrder = 1
    end
  end
end
