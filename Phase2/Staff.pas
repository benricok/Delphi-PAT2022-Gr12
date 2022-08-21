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
    cbxSelectCourse: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    btnNewCourse: TBitBtn;
    btnUpdateCourse: TBitBtn;
    pnlcourses: TPanel;
    lblCourseID: TLabel;
    Label3: TLabel;
    edtCourseName: TEdit;
    cpDateClose: TCalendarPicker;
    Label4: TLabel;
    redCourseDescript: TRichEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cbxSub1: TComboBox;
    spnSub1: TSpinEdit;
    Label8: TLabel;
    cbxSub2: TComboBox;
    spnSub2: TSpinEdit;
    Label9: TLabel;
    cbxSub3: TComboBox;
    spnSub3: TSpinEdit;
    Label10: TLabel;
    cbxSub4: TComboBox;
    spnSub4: TSpinEdit;
    Label11: TLabel;
    cbxSub5: TComboBox;
    spnSub5: TSpinEdit;
    Label12: TLabel;
    cbxSub6: TComboBox;
    spnSub6: TSpinEdit;
    Label13: TLabel;
    cbxSub7: TComboBox;
    spnSub7: TSpinEdit;
    Label15: TLabel;
    redEvent: TRichEdit;
    btnClearLog: TButton;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNewCourseClick(Sender: TObject);
    procedure clearFrmFields;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUpdateCourseClick(Sender: TObject);
    procedure saveCourse(new : boolean);
    procedure clearInputsCourse;
    procedure tbcStaffChange(Sender: TObject);
    procedure loadEvents;
    procedure btnClearLogClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    { Public declarations }
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

end;

procedure TfrmStaff.btnUpdateCourseClick(Sender: TObject);
begin
//Save all fields

end;

procedure TfrmStaff.clearFrmFields;
begin
//
end;

procedure TfrmStaff.clearInputsCourse;
begin
  // Clear input fields course edit tab
  lblCourseID.Caption := 'N/A';
  edtCourseName.Clear;
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
  //redEvent.lines.LoadFromFile(sTFname);
end;

procedure TfrmStaff.saveCourse(new: boolean);
begin
  // Procedure to save all
end;

procedure TfrmStaff.tbcStaffChange(Sender: TObject);
begin
  case tbcStaff.ActivePageIndex of
    0: ;
    1: ;
    2: ;
    3: loadEvents;
  end;
end;

end.
