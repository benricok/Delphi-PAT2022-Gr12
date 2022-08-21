// -----------------------------------------------------------------------------
//
//  Copyright (C) 2022  Benrico Krog
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation version 3 of the License.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warrany of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>
//
// -----------------------------------------------------------------------------

unit Students;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Samples.Spin, DB;

type
  TfrmStudents = class(TForm)
    pnlQuickAcess: TPanel;
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
    edtFirstName: TEdit;
    Label1: TLabel;
    edtSurname: TEdit;
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
    btnCalculate: TBitBtn;
    lblScoretext: TLabel;
    lblScore: TLabel;
    btnInitSave: TBitBtn;
    rgpGender: TRadioGroup;
    lblActiveAcc: TLabel;
    lblWarning: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtFirstNameChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure cmbCoursesChange(Sender: TObject);
    procedure ClearMarks;
    procedure btnSubmitnewClick(Sender: TObject);
    procedure btnCalculateClick(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInitSaveClick(Sender: TObject);
    procedure edtSurnameChange(Sender: TObject);
    procedure edtStudentNotiEmailChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure edtEduInstitutionChange(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure rgpCurriculumClick(Sender: TObject);
    procedure rgpGenderClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    Var
      sCurUsername, sNewHash : String;
      bUserSetup : boolean;
  published
    procedure setUser(fUsername, fNewHash : string; fNew : boolean);
    procedure saveWarn;
  end;

var
  frmStudents: TfrmStudents;

implementation

uses util_u, DBConnection_u, Login;

{$R *.dfm}

procedure TfrmStudents.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmStudents.btnCalculateClick(Sender: TObject);
begin
  // Precalculate score SQL
end;

procedure TfrmStudents.btnInitSaveClick(Sender: TObject);
begin

  lblWarning.Caption := 'Changes saved';
  lblWarning.font.Color := clBtnText;
end;

procedure TfrmStudents.btnLogoutClick(Sender: TObject);
begin
  if bUserSetup then
    if MessageDlg('Your new account will not be saved, are you sure?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      sNewHash := '';
      sCurUsername := '';
      bUserSetup := false;
      frmLogin.logout;
    end;
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

procedure TfrmStudents.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmStudents.FormActivate(Sender: TObject);
begin

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

procedure TfrmStudents.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmStudents.saveWarn;
begin
  lblWarning.Caption := 'Changes not saved';
  lblWarning.font.Color := clOlive;
end;

procedure TfrmStudents.setUser(fUsername, fNewHash: string; fNew : boolean);
begin
  sCurUsername := fUsername;
  lblActiveAcc.Caption := fUsername;
  sNewHash := fNewHash;

  bUserSetup := fNew;
end;

procedure TfrmStudents.ComboBox2Change(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.Edit1Change(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.Edit2Change(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.Edit3Change(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.Edit4Change(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.rgpCurriculumClick(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.rgpGenderClick(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.edtEduInstitutionChange(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.edtFirstNameChange(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.edtStudentNotiEmailChange(Sender: TObject);
begin
  saveWarn;
end;

procedure TfrmStudents.edtSurnameChange(Sender: TObject);
begin
  saveWarn;
end;

end.
