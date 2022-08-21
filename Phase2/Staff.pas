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

unit Staff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus, Vcl.WinXCalendars, Vcl.Grids, Vcl.Samples.Calendar,
  Vcl.WinXPickers, Vcl.Samples.Spin, Data.DB, Vcl.DBGrids;

type
  TfrmStaff = class(TForm)
    pnlQuickAcess: TPanel;
    BitBtn1: TBitBtn;
    btnLogout: TButton;
    tbcStaff: TPageControl;
    tabCourses: TTabSheet;
    tabSubmissions: TTabSheet;
    tabUserAdmin: TTabSheet;
    tabEventLog: TTabSheet;
    cmbSelectCourse: TComboBox;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    btnNewCourse: TBitBtn;
    btnUpdateCourse: TBitBtn;
    pnlcourses: TPanel;
    Label3: TLabel;
    edtCourseName: TEdit;
    cpDateClose: TCalendarPicker;
    Label4: TLabel;
    redCourseDescript: TRichEdit;
    Label5: TLabel;
    Label7: TLabel;
    spnMath: TSpinEdit;
    Label15: TLabel;
    redEvent: TRichEdit;
    btnClearLog: TButton;
    dbgUsers: TDBGrid;
    Panel1: TPanel;
    dbgApplications: TDBGrid;
    Panel2: TPanel;
    rgpUserGroup: TRadioGroup;
    spnScience: TSpinEdit;
    cbxMath: TCheckBox;
    pnlScoreCal: TPanel;
    cbxScience: TCheckBox;
    edtFaculty: TEdit;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNewCourseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUpdateCourseClick(Sender: TObject);
    procedure clearInputsCourse;
    procedure tbcStaffChange(Sender: TObject);
    procedure loadEvents;
    procedure btnClearLogClick(Sender: TObject);
    procedure loadUserManage;
  private
    Var
      sCurUser : string;
      bNewCourse : boolean;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  published
    procedure setUser(sUsername : string);
  end;

var
  frmStaff: TfrmStaff;

implementation

{$R *.dfm}

uses DBConnection_u, util_u;


procedure TfrmStaff.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmStaff.btnClearLogClick(Sender: TObject);
Var
  tFile : TextFile;
begin
  if MessageDlg('Are you sure you want to clear the event log?', mtConfirmation, [mbYes,mbCancel], 2) = 6 then begin
    DeleteFile('event.log');
    Util.initFile('event.log', tFile);
    Util.logevent('Event log was cleared', TEventType.warning);
    CloseFile(tFile);
    redEvent.Clear;
  end;
end;

procedure TfrmStaff.btnNewCourseClick(Sender: TObject);
begin
  // Clear all application fields
  cmbSelectCourse.ClearSelection;
  clearInputsCourse;
  bNewCourse := true;
end;

procedure TfrmStaff.btnUpdateCourseClick(Sender: TObject);
begin
//Save all fields
  if (edtCourseName.Text = '') OR (cpDateClose.Date <> null) OR (edtFaculty.Text = '') then begin
    util.warn('Please complete all required fields', false);
    exit;
  end;

  // Database manipulation EDIT AND INSERT
  tblCourses.Open;
  if bNewCourse then begin
    tblCourses.Last;
    tblCourses.Insert;
    tblCourses['CourseID'] := edtCourseName.Text;
  end else if tblCourses.Locate('CourseID', edtCourseName.Text, [loCaseInsensitive]) then
    tblApplicants.Edit
  else
    util.error('Course not found in database (Staff Form)', true);

    tblCourses['MathWeight'] := spnMath.Value;
    tblCourses['ScienceWeight'] := spnScience.Value;
    tblCourses['Faculty'] := edtFaculty.Text;
    tblCourses['ClosingDate'] := cpDateClose.Date;
    tblCourses['MathRequired'] := cbxMath.Checked;
    tblCourses['ScienceRequired'] := cbxScience.Checked;

  tblCourses.Post;
  util.notify('Course saved');
  util.logevent('Course saved: ' + edtCourseName.Text, info);
end;

procedure TfrmStaff.clearInputsCourse;
begin
  // Clear input fields course edit tab
  edtCourseName.Clear;
  edtFaculty.Clear;
  cpDateClose.Date := Date;
  redCourseDescript.Clear;
end;

//Show from in taskbar
procedure TfrmStaff.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmStaff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmStaff.loadEvents;
Var
  tFile : Textfile;
  sLine, sDateTime, sType : string;
  iPos, iLen, iTotChar : integer;
  cType : char;
begin
  util.initFile('.\Data\Events.log', tFile);
  Reset(tFile);
  iTotChar := 1;
  while NOT(EOF(tFile)) do begin
    Readln(tFile, sLine);
    iLen := length(sLine)+2;
    iPos := Pos(';', sLine);
    sDateTime := Copy(sLine, 1, iPos-1);
    Delete(sLine, 1, iPos);
    ctype := sLine[3];
    iPos := Pos(';', sLine);
    sType := Copy(sLine, 1, iPos-1);
    Delete(sLine, 1, iPos);

    with redEvent do begin
      case cType of
        'E': begin
          selStart := iTotChar+1;
          selLength := iLen;
          selAttributes.Color := clGray;
          selText := sDateTime + ' ';
          selAttributes.Color := clRed;
          selText := sType + ' ';
          SelAttributes.Color := clWindowText;
          selText := sLine + #13#10;
          iTotChar := iTotChar + iLen;
        end;
        'I': begin
          selStart := iTotChar+1;
          selLength := iLen;
          selAttributes.Color := clGray;
          selText := sDateTime + ' ';
          selAttributes.Color := clBlue;
          selText := sType + ' ';
          SelAttributes.Color := clWindowText;
          selText := sLine + #13#10;
          iTotChar := iTotChar + iLen;
        end;
        'W': begin
          selStart := iTotChar+1;
          selLength := iLen;
          selAttributes.Color := clGray;
          selText := sDateTime + ' ';
          selAttributes.Color := clWebDarkOrange;
          selText := sType + ' ';
          SelAttributes.Color := clWindowText;
          selText := sLine + #13#10;
          iTotChar := iTotChar + iLen;
        end;
      end;
    end;
  end;
  CloseFile(tFile);
end;

procedure TfrmStaff.loadUserManage;
begin
  case rgpUserGroup.ItemIndex of
    0: dbgUsers.DataSource := cDB.getDSstaff;
    1: dbgUsers.DataSource := cDB.getDSapplicants;
  end;
end;

procedure TfrmStaff.setUser(sUsername: string);
begin
  sCurUser := sUsername;
end;

procedure TfrmStaff.tbcStaffChange(Sender: TObject);
begin
  case tbcStaff.ActivePageIndex of
    0: ;
    1: ;
    2: loadUserManage;
    3: loadEvents;
  end;
end;

end.
