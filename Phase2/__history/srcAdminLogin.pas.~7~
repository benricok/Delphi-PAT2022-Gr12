unit srcAdminLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmAdminLogin = class(TForm)
    edtUser: TEdit;
    edtPassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnLogin: TBitBtn;
    pnlLogin: TPanel;
    pnlStatus: TPanel;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    redStatus: TRichEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdminLogin: TfrmAdminLogin;

implementation

{$R *.dfm}

uses EMSmain;

procedure TfrmAdminLogin.BitBtn1Click(Sender: TObject);
begin
  frmAdminLogin.Hide;
  frmEMSMain.Show;
end;

end.
