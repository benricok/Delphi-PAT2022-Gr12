program StudentAdmissionsManager;

uses
  Vcl.Forms,
  Launch in 'Launch.pas' {frmLaunch},
  Students in 'Students.pas' {frmStudents},
  Staff in 'Staff.pas' {frmStaff};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLaunch, frmLaunch);
  Application.CreateForm(TfrmStudents, frmStudents);
  Application.CreateForm(TfrmStaff, frmStaff);
  Application.Run;
end.
