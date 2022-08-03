unit Staff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus, Vcl.WinXCalendars, Vcl.Grids, Vcl.Samples.Calendar,
  Vcl.WinXPickers, Vcl.Samples.Spin;

type
  TfrmStaff = class(TForm)
    pnlQuickAcess: TPanel;
    BitBtn1: TBitBtn;
    btnLogout: TButton;
    tbcStaff: TPageControl;
    tabHome: TTabSheet;
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
    Label14: TLabel;
    cbxSub8: TComboBox;
    spnSub8: TSpinEdit;
    Label15: TLabel;
    btnEdtSubjects: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNewCourseClick(Sender: TObject);
    procedure clearFrmFields;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnUpdateCourseClick(Sender: TObject);
    procedure saveCourse(new : boolean);
    procedure clearInputsCourse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStaff: TfrmStaff;

implementation

{$R *.dfm}


procedure TfrmStaff.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
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

procedure TfrmStaff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmStaff.saveCourse(new: boolean);
begin
  // Procedure to save all
end;

end.
