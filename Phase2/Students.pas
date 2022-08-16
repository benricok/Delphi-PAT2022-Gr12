unit Students;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Samples.Spin, DB;

type
  TfrmStudents = class(TForm)
    pnlQuickAcess: TPanel;
    BitBtn1: TBitBtn;
    btnLogout: TButton;
    tbcStudents: TPageControl;
    tabMyInfo: TTabSheet;
    tabNewApplication: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    cmbCourses: TComboBox;
    Label4: TLabel;
    Memo1: TMemo;
    btnSubmitnew: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    edtStudentNotiEmail: TEdit;
    rgpCurriculum: TRadioGroup;
    Label6: TLabel;
    edtEduInstitution: TEdit;
    Label7: TLabel;
    edtFullNames: TEdit;
    Label1: TLabel;
    edtPrefName: TEdit;
    edtSurname: TEdit;
    edtInitials: TEdit;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btnNext: TBitBtn;
    lblSub1: TLabel;
    lblSub2: TLabel;
    lblSub3: TLabel;
    lblSub4: TLabel;
    lblSub5: TLabel;
    lblSub6: TLabel;
    lblSub7: TLabel;
    spnM1: TSpinEdit;
    spnM2: TSpinEdit;
    spnM3: TSpinEdit;
    spnM4: TSpinEdit;
    spnM5: TSpinEdit;
    spnM6: TSpinEdit;
    spnM7: TSpinEdit;
    lblCourseID: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtFullNamesChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure cmbCoursesChange(Sender: TObject);
    procedure ClearMarks;
    procedure btnSubmitnewClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudents: TfrmStudents;

implementation

uses util_u, DBConnection_u;

{$R *.dfm}

procedure TfrmStudents.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmStudents.btnNextClick(Sender: TObject);
begin
  tbcStudents.ActivePageIndex := 1;
end;

procedure TfrmStudents.btnSubmitnewClick(Sender: TObject);
begin
  cDB.runSQL('');

  util.notify('Sucsessfully submitted your application');
  cmbCourses.Text := '';
  cmbCourses.ItemIndex := -1;
  ClearMarks;
end;

procedure TfrmStudents.ClearMarks;
begin
  spnM1.Clear;
  spnM2.Clear;
  spnM3.Clear;
  spnM4.Clear;
  spnM5.Clear;
  spnM6.Clear;
  spnM7.Clear;
end;

procedure TfrmStudents.edtFullNamesChange(Sender: TObject);
Var
  sTemp, sBuild : string;
  iPos : integer;
begin
  sTemp := edtFullNames.Text;
  iPos := Pos(' ', sTemp);
  sBuild := Uppercase(sTemp[1] + sTemp[iPos+1]);

end;

procedure TfrmStudents.cmbCoursesChange(Sender: TObject);
Var
  iW1, iW2, iW3, iW4, iW5, iW6, iW7 : integer;
begin
  ClearMarks;
  // Locate in database, load values
  if tblCourses.Locate('Username', cmbCourses.Items[cmbCourses.ItemIndex], [loCaseInsensitive]) then begin
    lblSub1.Caption := tblCourses['Subject1'];
    lblSub2.Caption := tblCourses['Subject2'];
    lblSub3.Caption := tblCourses['Subject3'];
    lblSub4.Caption := tblCourses['Subject4'];
    lblSub5.Caption := tblCourses['Subject5'];
    lblSub6.Caption := tblCourses['Subject6'];
    lblSub7.Caption := tblCourses['Subject7'];

    iW1 := tblCourses['Weight1'];
    iW2 := tblCourses['Weight2'];
    iW3 := tblCourses['Weight3'];
    iW4 := tblCourses['Weight4'];
    iW5 := tblCourses['Weight5'];
    iW6 := tblCourses['Weight6'];
    iW7 := tblCourses['Weight7'];

    lblCourseID.Caption := tblCourses['CourseID'];
  end;
end;

procedure TfrmStudents.FormActivate(Sender: TObject);
begin
  util.notify('Please note progress cannot be saved, thus fill in application and submit immediately');

  // Load avalible courses
  cmbCourses.Items.Clear;
  cmbCourses.Text := '';
  cmbCourses.ItemIndex := -1;
  cmbCourses.AutoComplete := true;

  tblCourses.Open;
  tblCourses.First;
  while NOT(tblCourses.Eof) do begin
    cmbCourses.Items.Append(tblCourses['Name']);
    tblCourses.Next;
  end;

end;

end.
