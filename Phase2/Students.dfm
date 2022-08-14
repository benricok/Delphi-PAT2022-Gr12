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
      object Label5: TLabel
        Left = 16
        Top = 384
        Width = 98
        Height = 16
        Caption = 'Email addresses:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 272
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
      object Label7: TLabel
        Left = 16
        Top = 328
        Width = 198
        Height = 16
        Caption = 'Select your education department:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 16
        Top = 89
        Width = 402
        Height = 21
        TabOrder = 0
        Text = 'Select an avalible course'
      end
      object Memo1: TMemo
        Left = 448
        Top = 38
        Width = 410
        Height = 435
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
      end
      object BitBtn3: TBitBtn
        Left = 343
        Top = 448
        Width = 75
        Height = 25
        Caption = '&Reset'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 3
      end
      object edtStudentNotiEmail: TEdit
        Left = 16
        Top = 406
        Width = 402
        Height = 21
        Hint = 'notification email'
        TabOrder = 4
        TextHint = 'Enter the email(s) you want to use to recieve notifications'
      end
      object rgpCurriculum: TRadioGroup
        Left = 16
        Top = 136
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
        TabOrder = 5
      end
      object Edit1: TEdit
        Left = 16
        Top = 294
        Width = 402
        Height = 21
        Hint = 'Enter the name of your education institution'
        TabOrder = 6
        TextHint = 'Enter the name of your education institution'
      end
      object ComboBox2: TComboBox
        Left = 16
        Top = 350
        Width = 402
        Height = 21
        ItemIndex = 0
        TabOrder = 7
        Text = 'Western Cape Education Department'
        Items.Strings = (
          'Western Cape Education Department')
      end
    end
  end
end
