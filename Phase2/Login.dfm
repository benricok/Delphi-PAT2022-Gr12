object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Cursor = crIBeam
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 252
  ClientWidth = 328
  Color = clBtnFace
  DefaultMonitor = dmPrimary
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlLogin: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 257
    TabOrder = 0
    object lblUser: TLabel
      Left = 75
      Top = 73
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object lblPass: TLabel
      Left = 75
      Top = 119
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object lblWeclome: TLabel
      Left = 20
      Top = 35
      Width = 290
      Height = 32
      Caption = 'Welcome to eduPortal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnLogin: TBitBtn
      Left = 127
      Top = 211
      Width = 75
      Height = 25
      Hint = 'Login'
      Caption = '&Login'
      Kind = bkIgnore
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btnLoginClick
    end
    object edtUser: TEdit
      Left = 75
      Top = 92
      Width = 180
      Height = 21
      Cursor = crIBeam
      Hint = 'Enter your username'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = 'admin'
      TextHint = 'Enter your username'
    end
    object edtPass: TEdit
      Left = 75
      Top = 138
      Width = 180
      Height = 21
      Cursor = crIBeam
      Hint = 'Enter your password'
      HelpType = htKeyword
      ParentShowHint = False
      PasswordChar = '*'
      ShowHint = True
      TabOrder = 1
      TextHint = 'Enter your password'
    end
    object btnShowPass: TBitBtn
      Left = 208
      Top = 211
      Width = 33
      Height = 25
      Hint = 'Show password'
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0C488D0C488FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488D0C488B3BD4FC5A6
        47C5A647C5A647C5A647B3BD4FD0C488D0C488FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488C5A647C5A647C5A647C5A647D0C488
        D0C488C5A647C5A647C5A647C5A647D0C488FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD0C488C5A647C5A647C5A647C5A647B3BD4FFFFFFFFFFFFFFFFFFFFF
        FFFFB3BD4FC5A647C5A647C5A647C5A647D0C488FFFFFFFFFFFFFFFFFFD0C488
        C5A647C5A647C5A647C5A647C5A647FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC5A647C5A647C5A647C5A647C5A647D0C488FFFFFFFDFDFDC5A647C5A647C5
        A647C5A647C5A647D0C488FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488
        C5A647C5A647C5A647C5A647C5A647FEFEFEFDFDFDC5A647C5A647C5A647C5A6
        47C5A647D0C488FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488C5A647C5
        A647C5A647C5A647C5A647FDFDFDFFFFFFD0C488C5A647C5A647C5A647C5A647
        C5A647FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5A647C5A647C5A647C5A6
        47C5A647D0C488FFFFFFFFFFFFFFFFFFD0C488C5A647C5A647C5A647C5A647B3
        BD4FFFFFFFFFFFFFFFFFFFFFFFFFB3BD4FC5A647C5A647C5A647C5A647D0C488
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488C5A647C5A647C5A647C5A6
        47D0C488D0C488C5A647C5A647C5A647C5A647D0C488FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488D0C488B3BD4FC5A647C5A647
        C5A647C5A647B3BD4FD0C488D0C488FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0C488D0C488FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnMouseDown = btnShowPassMouseDown
      OnMouseUp = btnShowPassMouseUp
    end
  end
  object btnNewStudent: TButton
    Left = 88
    Top = 211
    Width = 33
    Height = 25
    Caption = 'New'
    TabOrder = 1
    OnClick = btnNewStudentClick
  end
end
