object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 296
  ClientWidth = 349
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
  object btnStudents: TBitBtn
    Left = 16
    Top = 88
    Width = 145
    Height = 57
    Caption = 'Student'
    TabOrder = 0
  end
  object btnAdminstrators: TBitBtn
    Left = 184
    Top = 88
    Width = 145
    Height = 57
    Caption = 'Administrators'
    TabOrder = 1
    OnClick = btnAdminstratorsClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 349
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 345
    object BitBtn3: TBitBtn
      Left = 254
      Top = 8
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
end
