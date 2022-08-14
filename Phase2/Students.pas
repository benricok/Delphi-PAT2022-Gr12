unit Students;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmStudents = class(TForm)
    pnlQuickAcess: TPanel;
    BitBtn1: TBitBtn;
    btnLogout: TButton;
    tbcStudents: TPageControl;
    tabMyInfo: TTabSheet;
    tabNewApplication: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Memo1: TMemo;
    btnSubmitnew: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    edtStudentNotiEmail: TEdit;
    rgpCurriculum: TRadioGroup;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    ComboBox2: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudents: TfrmStudents;

implementation

uses util_u;

{$R *.dfm}

procedure TfrmStudents.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TfrmStudents.FormActivate(Sender: TObject);
begin
  util.notify('Please note progress cannot be saved, thus fill in application and submit immediately');
end;

end.
