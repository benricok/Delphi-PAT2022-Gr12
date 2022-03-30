program WebServer;

uses
  Vcl.Forms,
  srcAdminLogin in 'srcAdminLogin.pas' {frmAdminLogin},
  EMSmain in 'EMSmain.pas' {frmEmsMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEmsMain, frmEmsMain);
  Application.CreateForm(TfrmAdminLogin, frmAdminLogin);
  Application.Run;
end.
