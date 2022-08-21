object frmStudents: TfrmStudents
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
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
  OnActivate = FormActivate
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
    object BitBtn2: TBitBtn
      Left = 20
      Top = 6
      Width = 75
      Height = 25
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object tbcStudents: TPageControl
    Left = 0
    Top = -2
    Width = 894
    Height = 526
    ActivePage = tabMyInfo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object tabMyInfo: TTabSheet
      Caption = 'My Info'
      object Label3: TLabel
        Left = 32
        Top = 24
        Width = 62
        Height = 29
        Caption = 'Home'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 32
        Top = 168
        Width = 85
        Height = 16
        Caption = 'Email address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 456
        Top = 281
        Width = 198
        Height = 16
        Caption = 'Select the province of your school:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 456
        Top = 225
        Width = 95
        Height = 16
        Caption = 'Name of School:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 32
        Top = 74
        Width = 57
        Height = 16
        Caption = 'Fullname:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 32
        Top = 225
        Width = 88
        Height = 16
        Caption = 'Phone number:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 32
        Top = 281
        Width = 88
        Height = 16
        Caption = 'Home Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtStudentNotiEmail: TEdit
        Left = 32
        Top = 190
        Width = 402
        Height = 24
        Hint = 'notification email'
        TabOrder = 0
        TextHint = 'Enter the email address you want to use to recieve notifications'
      end
      object ComboBox2: TComboBox
        Left = 456
        Top = 303
        Width = 402
        Height = 24
        TabOrder = 1
        TextHint = 'Select province'
        Items.Strings = (
          'Western Cape'
          'Eastern Cape'
          'Free State'
          'Gauteng'
          'KwaZulu-Natal'
          'Limpopo'
          'Mpumalanga'
          'Northern Cape'
          'North West')
      end
      object edtEduInstitution: TEdit
        Left = 456
        Top = 247
        Width = 402
        Height = 24
        Hint = 'Enter the name of your education institution'
        TabOrder = 2
        TextHint = 'Enter the name of your education institution'
      end
      object rgpCurriculum: TRadioGroup
        Left = 456
        Top = 89
        Width = 402
        Height = 122
        Caption = 'Curriculum'
        ItemIndex = 0
        Items.Strings = (
          'NSC - National Senior Cetificate'
          'IEB - Independent Examination Board'
          'Cambridge International AS- Levels'
          'Cambridge International A- Levels'
          'International Baccalaureate Diploma'
          'American High School Diploma')
        TabOrder = 3
      end
      object edtFullNames: TEdit
        Left = 32
        Top = 96
        Width = 402
        Height = 24
        TabOrder = 4
        OnChange = edtFullNamesChange
      end
      object edtPrefName: TEdit
        Left = 79
        Top = 123
        Width = 187
        Height = 24
        TabOrder = 5
        TextHint = 'Prefered name'
      end
      object edtSurname: TEdit
        Left = 272
        Top = 123
        Width = 162
        Height = 24
        TabOrder = 6
        TextHint = 'Surname'
      end
      object edtInitials: TEdit
        Left = 32
        Top = 123
        Width = 41
        Height = 24
        TabOrder = 7
        TextHint = 'Initials'
      end
      object Edit1: TEdit
        Left = 32
        Top = 247
        Width = 402
        Height = 24
        Hint = 'notification email'
        TabOrder = 8
        TextHint = 'Enter your personal phone number'
      end
      object Edit2: TEdit
        Left = 32
        Top = 303
        Width = 402
        Height = 24
        Hint = 'notification email'
        TabOrder = 9
        TextHint = 'Address line 1'
      end
      object Edit3: TEdit
        Left = 32
        Top = 330
        Width = 402
        Height = 24
        Hint = 'notification email'
        TabOrder = 10
        TextHint = 'Address line 2'
      end
      object Edit4: TEdit
        Left = 32
        Top = 357
        Width = 402
        Height = 24
        Hint = 'notification email'
        TabOrder = 11
        TextHint = 'Address line 3'
      end
      object btnNext: TBitBtn
        Left = 776
        Top = 464
        Width = 82
        Height = 25
        Caption = '&Next'
        TabOrder = 12
        OnClick = btnNextClick
      end
    end
    object tabNewApplication: TTabSheet
      Caption = 'New Application'
      ImageIndex = 2
      object Label2: TLabel
        Left = 16
        Top = 16
        Width = 258
        Height = 29
        Caption = 'Create a new appliction:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 16
        Top = 67
        Width = 93
        Height = 16
        Caption = 'Select a cource:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblSub1: TLabel
        Left = 16
        Top = 162
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
      object lblSub2: TLabel
        Left = 16
        Top = 192
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
      object lblSub3: TLabel
        Left = 16
        Top = 222
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
      object lblSub4: TLabel
        Left = 16
        Top = 252
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
      object lblSub5: TLabel
        Left = 16
        Top = 282
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
      object lblSub6: TLabel
        Left = 16
        Top = 312
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
      object lblSub7: TLabel
        Left = 16
        Top = 342
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
      object lblCourseID: TLabel
        Left = 16
        Top = 132
        Width = 65
        Height = 16
        Caption = 'Course ID: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblScoretext: TLabel
        Left = 16
        Top = 376
        Width = 38
        Height = 16
        Caption = 'Score:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblScore: TLabel
        Left = 80
        Top = 378
        Width = 80
        Height = 16
        Caption = 'Not calculated'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbCourses: TComboBox
        Left = 16
        Top = 89
        Width = 402
        Height = 24
        TabOrder = 0
        Text = 'Select an avalible course'
        OnChange = cmbCoursesChange
      end
      object Memo1: TMemo
        Left = 448
        Top = 43
        Width = 410
        Height = 430
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'EXAMPLE FOR PHASE 1'
          ''
          'Selected course: <currently select cource>'
          'Please edit percentages after the '#39':'#39' according to the '
          'marks you obtained at the end of your gr11 year:'
          ''
          'Note that this course does not require specific subjects '
          'apart from Pure mathematics and Physical sciences.'
          'You can enter your best other subject'#39's marks into '
          'subject (4-6)'
          ''
          'Pure Mathematics: 0%'
          'Physical Sciences: 0%'
          'Home Language: 0%'
          'Subject 4: 0%'
          'Subject 5: 0%'
          'Subject 6 0%:'
          'Life Orientation: 0% '
          ''
          'Score formula: '
          '6x (average) + Mathematics + Physical Sciences '
          '= score/800')
        ParentFont = False
        TabOrder = 1
      end
      object btnSubmitnew: TBitBtn
        Left = 16
        Top = 448
        Width = 145
        Height = 25
        Caption = 'Submit New Application'
        TabOrder = 2
        OnClick = btnSubmitnewClick
      end
      object BitBtn3: TBitBtn
        Left = 327
        Top = 448
        Width = 89
        Height = 25
        Caption = '&Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 3
      end
      object spnM1: TSpinEdit
        Left = 343
        Top = 158
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
      object spnM2: TSpinEdit
        Left = 343
        Top = 188
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 5
        Value = 0
      end
      object spnM3: TSpinEdit
        Left = 343
        Top = 218
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 6
        Value = 0
      end
      object spnM4: TSpinEdit
        Left = 343
        Top = 248
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 7
        Value = 0
      end
      object spnM5: TSpinEdit
        Left = 343
        Top = 278
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 8
        Value = 0
      end
      object spnM6: TSpinEdit
        Left = 343
        Top = 308
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 9
        Value = 0
      end
      object spnM7: TSpinEdit
        Left = 343
        Top = 338
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 10
        Value = 0
      end
      object btnCalculate: TBitBtn
        Left = 232
        Top = 448
        Width = 89
        Height = 25
        Caption = 'Calculate score'
        TabOrder = 11
        OnClick = btnCalculateClick
      end
    end
  end
end
