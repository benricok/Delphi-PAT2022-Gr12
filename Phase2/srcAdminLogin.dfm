object frmAdminLogin: TfrmAdminLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Server Login'
  ClientHeight = 312
  ClientWidth = 402
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
  object Label5: TLabel
    Left = 168
    Top = 24
    Width = 64
    Height = 13
    Caption = 'Online School'
  end
  object pnlLogin: TPanel
    Left = 0
    Top = 62
    Width = 201
    Height = 213
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 49
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label2: TLabel
      Left = 10
      Top = 95
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object Label4: TLabel
      Left = 80
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Login'
    end
    object btnLogin: TBitBtn
      Left = 54
      Top = 160
      Width = 75
      Height = 25
      Caption = 'Login'
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object edtUser: TEdit
      Left = 10
      Top = 68
      Width = 183
      Height = 21
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object edtPassword: TEdit
      Left = 10
      Top = 114
      Width = 183
      Height = 21
      TabOrder = 2
    end
  end
  object pnlStatus: TPanel
    Left = 207
    Top = 62
    Width = 195
    Height = 213
    TabOrder = 1
    object Label3: TLabel
      Left = 66
      Top = 16
      Width = 65
      Height = 13
      Caption = 'Server status'
    end
    object redStatus: TRichEdit
      Left = 8
      Top = 35
      Width = 177
      Height = 166
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Zoom = 100
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 275
    Width = 402
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 317
      Top = 6
      Width = 75
      Height = 25
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
