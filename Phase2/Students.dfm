object frmStudents: TfrmStudents
  Left = 0
  Top = 0
  Caption = 'Students'
  ClientHeight = 800
  ClientWidth = 1400
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
    Top = 763
    Width = 1400
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -10
    ExplicitWidth = 1410
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
  object tabCtrl: TTabControl
    Left = 0
    Top = 0
    Width = 1400
    Height = 763
    Align = alClient
    TabOrder = 1
    Tabs.Strings = (
      'Tab 1'
      'Tab 2')
    TabIndex = 0
    ExplicitLeft = -10
    ExplicitWidth = 1410
    ExplicitHeight = 773
  end
end
