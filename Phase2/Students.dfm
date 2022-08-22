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
  OnClose = FormClose
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
    object btnLogout: TButton
      Left = 780
      Top = 6
      Width = 82
      Height = 25
      Caption = 'Logout'
      TabOrder = 0
      OnClick = btnLogoutClick
    end
    object BitBtn2: TBitBtn
      Left = 20
      Top = 6
      Width = 75
      Height = 25
      Kind = bkHelp
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object tbcStudents: TPageControl
    Left = 0
    Top = -2
    Width = 894
    Height = 526
    ActivePage = tabNewApplication
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
        Width = 180
        Height = 29
        Caption = 'My Personal Info'
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
        Top = 273
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
        Top = 217
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
      object lblActiveAcc: TLabel
        Left = 803
        Top = 32
        Width = 35
        Height = 19
        Caption = 'APP\'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblWarning: TLabel
        Left = 32
        Top = 464
        Width = 108
        Height = 16
        Caption = 'Changes not saved'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object edtStudentNotiEmail: TEdit
        Left = 32
        Top = 190
        Width = 402
        Height = 24
        Hint = 'notification email'
        MaxLength = 50
        TabOrder = 0
        TextHint = 'Email address (notifications)'
        OnChange = edtStudentNotiEmailChange
      end
      object cmbProvince: TComboBox
        Left = 456
        Top = 295
        Width = 402
        Height = 24
        AutoDropDown = True
        TabOrder = 1
        TextHint = 'Select province'
        OnChange = cmbProvinceChange
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
        Top = 239
        Width = 402
        Height = 24
        Hint = 'Enter the name of your education institution'
        MaxLength = 100
        TabOrder = 2
        TextHint = 'Enter the name of your education institution'
        OnChange = edtEduInstitutionChange
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
        OnClick = rgpCurriculumClick
      end
      object edtFirstName: TEdit
        Left = 32
        Top = 96
        Width = 402
        Height = 24
        MaxLength = 50
        TabOrder = 4
        TextHint = 'First name'
        OnChange = edtFirstNameChange
      end
      object edtSurname: TEdit
        Left = 32
        Top = 126
        Width = 402
        Height = 24
        MaxLength = 50
        TabOrder = 5
        TextHint = 'Surname'
        OnChange = edtSurnameChange
      end
      object edtPhoneNumber: TEdit
        Left = 224
        Top = 247
        Width = 210
        Height = 24
        Hint = 'notification email'
        MaxLength = 15
        TabOrder = 6
        TextHint = 'Phone number'
        OnChange = edtPhoneNumberChange
      end
      object edtAddr1: TEdit
        Left = 32
        Top = 303
        Width = 402
        Height = 24
        Hint = 'notification email'
        MaxLength = 50
        TabOrder = 7
        TextHint = 'Address line 1'
        OnChange = edtAddr1Change
      end
      object edtAddr2: TEdit
        Left = 32
        Top = 330
        Width = 402
        Height = 24
        Hint = 'notification email'
        MaxLength = 50
        TabOrder = 8
        TextHint = 'Address line 2 (optional)'
        OnChange = edtAddr2Change
      end
      object edtAddr3: TEdit
        Left = 32
        Top = 360
        Width = 402
        Height = 24
        Hint = 'notification email'
        MaxLength = 50
        TabOrder = 9
        TextHint = 'Address line 3 (optional)'
        OnChange = edtAddr3Change
      end
      object btnNext: TBitBtn
        Left = 776
        Top = 464
        Width = 82
        Height = 25
        Caption = '&Next'
        TabOrder = 10
        OnClick = btnNextClick
      end
      object btnInitSave: TBitBtn
        Left = 688
        Top = 464
        Width = 82
        Height = 25
        Caption = 'Acc update'
        TabOrder = 11
        OnClick = btnInitSaveClick
      end
      object rgpGender: TRadioGroup
        Left = 456
        Top = 325
        Width = 402
        Height = 60
        Caption = 'Gender'
        Items.Strings = (
          'M'
          'F')
        TabOrder = 12
        OnClick = rgpGenderClick
      end
      object cmbCountryCodes: TComboBox
        Left = 32
        Top = 247
        Width = 180
        Height = 24
        TabOrder = 13
        Text = 'Code'
        OnChange = cmbCountryCodesChange
        Items.Strings = (
          '+93  Afghanistan'
          '+355  Albania'
          '+213  Algeria'
          '+684  American Samoa'
          '+376  Andorra'
          '+244  Angola'
          '+809  Anguilla'
          '+268  Antigua'
          '+54  Argentina'
          '+374  Armenia'
          '+297  Aruba'
          '+247  Ascension Island'
          '+61  Australia'
          '+672  Australian External Territories'
          '+43  Austria'
          '+994  Azerbaijan'
          '+242  Bahamas'
          '+246  Barbados'
          '+973  Bahrain'
          '+880  Bangladesh'
          '+375  Belarus'
          '+32  Belgium'
          '+501  Belize'
          '+229  Benin'
          '+809  Bermuda'
          '+975  Bhutan'
          '+284  British Virgin Islands'
          '+591  Bolivia'
          '+387  Bosnia and Hercegovina'
          '+267  Botswana'
          '+55  Brazil'
          '+284 British V.I.'
          '+673  Brunei Darussalm'
          '+359  Bulgaria'
          '+226  Burkina Faso'
          '+257  Burundi'
          '+855  Cambodia'
          '+237  Cameroon'
          '+1  Canada'
          '+238  CapeVerde Islands'
          '+1  Caribbean Nations'
          '+345  Cayman Islands'
          '+238  Cape Verdi'
          '+236  Central African Republic'
          '+235  Chad'
          '+56  Chile'
          '+86  China'
          '+886  China-Taiwan'
          '+57  Colombia'
          '+269  Comoros and Mayotte'
          '+242  Congo'
          '+682  Cook Islands'
          '+506  Costa Rica'
          '+385  Croatia'
          '+53  Cuba'
          '+357  Cyprus'
          '+420  Czech Republic'
          '+45  Denmark'
          '+246  Diego Garcia'
          '+767  Dominca'
          '+809  Dominican Republic'
          '+253  Djibouti'
          '+593  Ecuador'
          '+20  Egypt'
          '+503  El Salvador'
          '+240  Equatorial Guinea'
          '+291  Eritrea'
          '+372  Estonia'
          '+251  Ethiopia'
          '+500  Falkland Islands'
          '+298  Faeroe Islands (Denmark)'
          '+679  Fiji'
          '+358  Finland'
          '+33  France'
          '+596  French Antilles'
          '+594  French Guiana'
          '+241  Gabon'
          '+220  Gambia'
          '+995  Georgia'
          '+49  Germany'
          '+233  Ghana'
          '+350  Gibraltar'
          '+30  Greece'
          '+299  Greenland'
          '+473  Grenada/Carricou'
          '+71  Guam'
          '+502  Guatemala'
          '+224  Guinea'
          '+245  Guinea-Bissau'
          '+592  Guyana'
          '+509  Haiti'
          '+504  Honduras'
          '+852  Hong Kong'
          '+36  Hungary'
          '+354  Iceland'
          '+91  India'
          '+62  Indonesia'
          '+98  Iran'
          '+964  Iraq'
          '+353  Ireland'
          '+972  Israel'
          '+39  Italy'
          '+225  Ivory Coast'
          '+876  Jamaica'
          '+81  Japan'
          '+962  Jordan'
          '+7  Kazakhstan'
          '+254  Kenya'
          '+855  Khmer Republic'
          '+686  Kiribati Republic'
          '+82  South Korea'
          '+850  North Korea'
          '+965  Kuwait'
          '+996  Kyrgyz Republic'
          '+371  Latvia'
          '+856  Laos'
          '+961  Lebanon'
          '+266  Lesotho'
          '+231  Liberia'
          '+370  Lithuania'
          '+218  Libya'
          '+423  Liechtenstein'
          '+352  Luxembourg'
          '+853  Macao'
          '+389  Macedonia'
          '+261  Madagascar'
          '+265  Malawi'
          '+60  Malaysia'
          '+960  Maldives'
          '+223  Mali'
          '+356  Malta'
          '+692  Marshall Islands'
          '+596  Martinique'
          '+222  Mauritania'
          '+230  Mauritius'
          '+269  Mayolte'
          '+52  Mexico'
          '+691  Micronesia'
          '+373  Moldova'
          '+33  Monaco'
          '+976  Mongolia'
          '+473  Montserrat'
          '+212  Morocco'
          '+258  Mozambique'
          '+95  Myanmar'
          '+264  Namibia'
          '+674  Nauru'
          '+977  Nepal'
          '+31  Netherlands'
          '+599  Netherlands Antilles'
          '+869  Nevis'
          '+687  New Caledonia'
          '+64  New Zealand'
          '+505  Nicaragua'
          '+227  Niger'
          '+234  Nigeria'
          '+683  Niue'
          '+850  North Korea'
          '+1 670  North Mariana Islands'
          '+47  Norway'
          '+968  Oman'
          '+92  Pakistan'
          '+680  Palau'
          '+507  Panama'
          '+675  Papua New Guinea'
          '+595  Paraguay'
          '+51  Peru'
          '+63  Philippines'
          '+48  Poland'
          '+351  Portugal'
          '+1 787  Puerto Rico'
          '+974  Qatar'
          '+262  Reunion'
          '+40  Romania'
          '+7  Russia'
          '+250  Rwanda'
          '+670  Saipan'
          '+378  San Marino'
          '+239  Sao Tome and Principe'
          '+966  Saudi Arabia'
          '+221  Senegal'
          '+381  Serbia and Montenegro'
          '+248  Seychelles'
          '+232  Sierra Leone'
          '+65  Singapore'
          '+421  Slovakia'
          '+386  Slovenia'
          '+677  Solomon Islands'
          '+252  Somalia'
          '+27  South Africa'
          '+34  Spain'
          '+94  Sri Lanka'
          '+290  St. Helena'
          '+869  St. Kitts/Nevis'
          '+508  St. Pierre et Miquelon'
          '+249  Sudan'
          '+597  Suriname'
          '+268  Swaziland'
          '+46  Sweden'
          '+41  Switzerland'
          '+963  Syrian Arab Republic'
          '+689  Tahiti'
          '+886  Taiwan'
          '+7  Tajikistan'
          '+255  Tanzania'
          '+66  Thailand'
          '+228  Togo'
          '+690  Tokelau'
          '+676  Tonga'
          '+1 868  Trinidad and Tobago'
          '+216  Tunisia'
          '+90  Turkey'
          '+993  Turkmenistan'
          '+688  Tuvalu'
          '+256  Uganda'
          '+380  Ukraine'
          '+971  United Arab Emirates'
          '+44  United Kingdom'
          '+598  Uruguay'
          '+1  USA'
          '+7  Uzbekistan'
          '+678  Vanuatu'
          '+39  Vatican City'
          '+58  Venezuela'
          '+84  Viet Nam'
          '+1 340  Virgin Islands'
          '+681  Wallis and Futuna'
          '+685  Western Samoa'
          '+381  Yemen'
          '+967  Yemen Arab Republic'
          '+381  Yugoslavia'
          '+243  Zaire'
          '+260  Zambia'
          '+263  Zimbabwe')
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
      object lblClosingDate: TLabel
        Left = 304
        Top = 376
        Width = 76
        Height = 16
        Caption = 'Closing Date:'
      end
      object lblFaculty: TLabel
        Left = 16
        Top = 128
        Width = 45
        Height = 16
        Caption = 'Faculty:'
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
      object btnSubmitnew: TBitBtn
        Left = 16
        Top = 448
        Width = 145
        Height = 25
        Caption = 'Submit New Application'
        TabOrder = 1
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
        TabOrder = 2
        OnClick = BitBtn3Click
      end
      object spnM1: TSpinEdit
        Left = 343
        Top = 158
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 3
        Value = 0
      end
      object spnM2: TSpinEdit
        Left = 343
        Top = 188
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 4
        Value = 0
      end
      object spnM3: TSpinEdit
        Left = 343
        Top = 218
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 5
        Value = 0
      end
      object spnM4: TSpinEdit
        Left = 343
        Top = 248
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 6
        Value = 0
      end
      object spnM5: TSpinEdit
        Left = 343
        Top = 278
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 7
        Value = 0
      end
      object spnM6: TSpinEdit
        Left = 343
        Top = 308
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 8
        Value = 0
      end
      object spnM7: TSpinEdit
        Left = 343
        Top = 338
        Width = 75
        Height = 26
        MaxValue = 100
        MinValue = 0
        TabOrder = 9
        Value = 0
      end
      object btnCalculate: TBitBtn
        Left = 232
        Top = 448
        Width = 89
        Height = 25
        Caption = 'Calculate score'
        TabOrder = 10
        OnClick = btnCalculateClick
      end
    end
  end
end
