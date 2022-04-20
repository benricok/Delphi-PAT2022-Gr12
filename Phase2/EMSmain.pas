unit EMSmain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.UITypes;

type
  TfrmEmsMain = class(TForm)
    pnl1: TPanel;
    btnStudent: TBitBtn;
    btnEducator: TBitBtn;
    btnAdmin: TBitBtn;
    lblHead: TLabel;
    lblEMS: TLabel;
    procedure btnAdminClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnStudentClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmsMain: TfrmEmsMain;

implementation

uses srcAdminLogin;

{$R *.dfm}

procedure TfrmEmsMain.btnAdminClick(Sender: TObject);
begin
  frmAdminLogin.Show;
  frmEmsMain.Hide;
end;

procedure TfrmEmsMain.btnStudentClick(Sender: TObject);
begin
  MessageDlg('Please visit the online application with a web browser at localhost',mtInformation,[mbOK], 1)
end;

procedure TfrmEmsMain.FormActivate(Sender: TObject);
begin
  frmAdminLogin.Hide;
end;

end.