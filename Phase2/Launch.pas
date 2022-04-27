unit Launch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLaunch = class(TForm)
    btnStudents: TBitBtn;
    btnStaff: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    Panel2: TPanel;
    lblWeclome: TLabel;
    procedure btnStaffClick(Sender: TObject);
    procedure btnStudentsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLaunch: TfrmLaunch;

implementation

{$R *.dfm}

uses login;

procedure TfrmLaunch.btnStaffClick(Sender: TObject);
begin
  frmLaunch.Hide;
  frmLogin.frmConfigure(staff);
  frmLogin.Show;
end;

procedure TfrmLaunch.btnStudentsClick(Sender: TObject);
begin
  frmLaunch.Hide;
  frmLogin.frmConfigure(students);
  frmLogin.Show;
end;

end.
