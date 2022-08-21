object frmStaff: TfrmStaff
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Staff'
  ClientHeight = 571
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlQuickAcess: TPanel
    Left = 0
    Top = 528
    Width = 884
    Height = 43
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
    object BitBtn2: TBitBtn
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object tbcStaff: TPageControl
    Left = 0
    Top = 0
    Width = 886
    Height = 522
    ActivePage = tabEventLog
    TabOrder = 1
    OnChange = tbcStaffChange
    object tabCourses: TTabSheet
      Caption = 'Courses'
      ImageIndex = 1
      object Label2: TLabel
        Left = 24
        Top = 16
        Width = 84
        Height = 29
        Caption = 'Courses'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbxSelectCourse: TComboBox
        Left = 24
        Top = 58
        Width = 665
        Height = 21
        TabOrder = 0
        TextHint = 'Select Course'
      end
      object btnNewCourse: TBitBtn
        Left = 791
        Top = 58
        Width = 75
        Height = 25
        Caption = 'New'
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          18000000000074030000C40E0000C40E00000000000000000000252424E3866A
          ED7447EB7850EB7850EB7850EB7850EB7850EB7850EB7850EB7850EB7850EB78
          50EB7850EB774FDF8B7425242400E1896FDB927F272626272626272626272626
          272626272626252424272626272626272626272626272626272626D49B8CE08B
          7300ED7346272626252424252424252424252424252424252424252424252424
          252424252424252424252424252424272626EB764D00EB785027262625242425
          2424252424252424252424252424E18970252424252424252424252424252424
          252424272626EB785000EB785027262625242425242425242425242425242425
          2424EB774E252424252424252424252424252424252424272626EB785000EB78
          50272626252424252424252424252424252424252424EB774E25242425242425
          2424252424252424252424272626EB785000EB78502726262524242524242524
          24252424252424252424EB774E25242425242425242425242425242425242427
          2626EB785000EB7850272626252424252424252424252424252424252424EC76
          4C252424252424252424252424252424252424252424EB785000EB7850252424
          252424E18970EB774EEB774EEB774EEB764DF16926EB764DEB774EEB774EEB77
          4EE18970252424252424EB785000EB7850252424252424252424252424252424
          252424252424EC764C252424252424252424252424252424252424272626EB78
          5000EB7850272626252424252424252424252424252424252424EB774E252424
          252424252424252424252424252424272626EB785000EB785027262625242425
          2424252424252424252424252424EB774E252424252424252424252424252424
          252424272626EB785000EB785027262625242425242425242425242425242425
          2424EB774E252424252424252424252424252424252424272626EB785000EB78
          50272626252424252424252424252424252424252424E1886F25242425242425
          2424252424252424252424272626EB785000EA7A542726262524242524242524
          2425242425242425242425242425242425242425242425242425242425242427
          2626ED734600E08B732524242726262726262726262726262726262726262524
          24272626272626272626272626272626272626D89684E1886F00252424E18970
          EA7851EB7850EB7850EB7850EB7850EB7850EB7850EB7850EB7850EB7850EB78
          50EB7850EC7549E2876C25242400}
        ModalResult = 4
        TabOrder = 1
        OnClick = btnNewCourseClick
      end
      object btnUpdateCourse: TBitBtn
        Left = 710
        Top = 58
        Width = 75
        Height = 25
        Caption = '&Save'
        Kind = bkYes
        NumGlyphs = 2
        TabOrder = 2
        OnClick = btnUpdateCourseClick
      end
      object pnlcourses: TPanel
        Left = 24
        Top = 104
        Width = 842
        Height = 377
        TabOrder = 3
        object Label1: TLabel
          Left = 16
          Top = 25
          Width = 57
          Height = 16
          Caption = 'CourseID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lblCourseID: TLabel
          Left = 125
          Top = 23
          Width = 31
          Height = 18
          Caption = 'N/A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 61
          Width = 82
          Height = 16
          Caption = 'Course Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 101
          Width = 76
          Height = 16
          Caption = 'Closing Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 16
          Top = 151
          Width = 75
          Height = 18
          Caption = 'Description:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 392
          Top = 26
          Width = 57
          Height = 18
          Caption = 'Formula:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 407
          Top = 64
          Width = 59
          Height = 16
          Caption = 'Subject 1:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 407
          Top = 184
          Width = 59
          Height = 16
          Caption = 'Subject 4:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 407
          Top = 264
          Width = 59
          Height = 16
          Caption = 'Subject 6:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 407
          Top = 305
          Width = 59
          Height = 16
          Caption = 'Subject 7:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 407
          Top = 224
          Width = 59
          Height = 16
          Caption = 'Subject 5:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 407
          Top = 101
          Width = 59
          Height = 16
          Caption = 'Subject 2:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 407
          Top = 144
          Width = 59
          Height = 16
          Caption = 'Subject 3:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 767
          Top = 41
          Width = 56
          Height = 16
          Caption = '% Weight'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtCourseName: TEdit
          Left = 125
          Top = 60
          Width = 233
          Height = 21
          TabOrder = 0
          TextHint = 'Course friendly name'
        end
        object cpDateClose: TCalendarPicker
          Left = 125
          Top = 101
          Width = 233
          Height = 25
          CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
          CalendarHeaderInfo.DaysOfWeekFont.Height = -13
          CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
          CalendarHeaderInfo.DaysOfWeekFont.Style = []
          CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
          CalendarHeaderInfo.Font.Color = clWindowText
          CalendarHeaderInfo.Font.Height = -20
          CalendarHeaderInfo.Font.Name = 'Segoe UI'
          CalendarHeaderInfo.Font.Style = []
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TextHint = 'select a date'
        end
        object redCourseDescript: TRichEdit
          Left = 16
          Top = 184
          Width = 342
          Height = 168
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Zoom = 100
        end
        object cbxSub1: TComboBox
          Left = 488
          Top = 63
          Width = 265
          Height = 21
          TabOrder = 3
        end
        object spnSub1: TSpinEdit
          Left = 767
          Top = 63
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 4
          Value = 0
        end
        object cbxSub2: TComboBox
          Left = 488
          Top = 103
          Width = 265
          Height = 21
          TabOrder = 5
        end
        object cbxSub3: TComboBox
          Left = 488
          Top = 143
          Width = 265
          Height = 21
          TabOrder = 6
        end
        object cbxSub4: TComboBox
          Left = 488
          Top = 183
          Width = 265
          Height = 21
          TabOrder = 7
        end
        object cbxSub5: TComboBox
          Left = 488
          Top = 223
          Width = 265
          Height = 21
          TabOrder = 8
        end
        object cbxSub6: TComboBox
          Left = 488
          Top = 303
          Width = 265
          Height = 21
          TabOrder = 9
        end
        object cbxSub7: TComboBox
          Left = 488
          Top = 263
          Width = 265
          Height = 21
          TabOrder = 10
        end
        object spnSub2: TSpinEdit
          Left = 767
          Top = 103
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 11
          Value = 0
        end
        object spnSub3: TSpinEdit
          Left = 767
          Top = 143
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 12
          Value = 0
        end
        object spnSub4: TSpinEdit
          Left = 767
          Top = 183
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 13
          Value = 0
        end
        object spnSub5: TSpinEdit
          Left = 767
          Top = 223
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 14
          Value = 0
        end
        object spnSub6: TSpinEdit
          Left = 767
          Top = 263
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 15
          Value = 0
        end
        object spnSub7: TSpinEdit
          Left = 767
          Top = 303
          Width = 58
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 16
          Value = 0
        end
      end
    end
    object tabSubmissions: TTabSheet
      Caption = 'Submissions'
      ImageIndex = 2
    end
    object tabUserAdmin: TTabSheet
      Caption = 'User Administration'
      ImageIndex = 3
      object DBGrid1: TDBGrid
        Left = 12
        Top = 16
        Width = 854
        Height = 201
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tabEventLog: TTabSheet
      Caption = 'Event Log'
      ImageIndex = 4
      object redEvent: TRichEdit
        Left = 3
        Top = 3
        Width = 863
        Height = 457
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Zoom = 100
      end
      object btnClearLog: TButton
        Left = 791
        Top = 466
        Width = 75
        Height = 25
        Caption = 'Clear'
        TabOrder = 1
        OnClick = btnClearLogClick
      end
    end
  end
end
