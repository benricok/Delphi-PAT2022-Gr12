object frmLaunch: TfrmLaunch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Launch Application'
  ClientHeight = 192
  ClientWidth = 346
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
  object Panel1: TPanel
    Left = 0
    Top = 155
    Width = 346
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 259
    ExplicitWidth = 349
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 346
    Height = 157
    TabOrder = 1
    object lblWeclome: TLabel
      Left = 104
      Top = 32
      Width = 129
      Height = 32
      Caption = 'Welcome!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnStaff: TBitBtn
      Left = 184
      Top = 88
      Width = 145
      Height = 57
      Caption = 'Staff'
      TabOrder = 0
      OnClick = btnStaffClick
    end
    object btnStudents: TBitBtn
      Left = 16
      Top = 88
      Width = 145
      Height = 57
      Caption = 'Students'
      TabOrder = 1
      OnClick = btnStudentsClick
    end
  end
end
