object frmEmsMain: TfrmEmsMain
  Left = 0
  Top = 0
  Caption = 'Education Management System'
  ClientHeight = 160
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 449
    Height = 161
    TabOrder = 0
    object lblHead: TLabel
      Left = 104
      Top = 56
      Width = 222
      Height = 16
      Caption = 'Welcome, select your access level:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEMS: TLabel
      Left = 80
      Top = 16
      Width = 294
      Height = 25
      Caption = 'Education Management System'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btnAdmin: TBitBtn
      Left = 298
      Top = 89
      Width = 113
      Height = 53
      Caption = 'Administrator'
      TabOrder = 0
      OnClick = btnAdminClick
    end
    object btnEducator: TBitBtn
      Left = 160
      Top = 89
      Width = 113
      Height = 53
      Caption = 'Educator'
      TabOrder = 1
    end
    object btnStudent: TBitBtn
      Left = 24
      Top = 89
      Width = 113
      Height = 53
      Caption = 'Student'
      TabOrder = 2
      OnClick = btnStudentClick
    end
  end
end
