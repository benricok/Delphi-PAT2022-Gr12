program StudentAdmissionsManager;

uses
  Vcl.Forms,
  Launch in 'Launch.pas' {frmLaunch},
  Students in 'Students.pas' {frmStudents},
  Staff in 'Staff.pas' {frmStaff},
  Login in 'Login.pas' {frmLogin},
  DBUsers_u in 'DBUsers_u.pas',
  util_u in 'util_u.pas',
  auth_u in 'auth_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLaunch, frmLaunch);
  Application.CreateForm(TfrmStudents, frmStudents);
  Application.CreateForm(TfrmStaff, frmStaff);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
