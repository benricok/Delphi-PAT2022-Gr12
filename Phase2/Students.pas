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
    edtEduInstitution: TEdit;
    Label7: TLabel;
    edtFullNames: TEdit;
    Label1: TLabel;
    edtPrefName: TEdit;
    edtSurname: TEdit;
    edtInitials: TEdit;
    ComboBox2: TComboBox;
    Label8: TLabel;
    Edit1: TEdit;
    Label9: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btnNext: TBitBtn;
    lblSub1: TLabel;
    lblSub2: TLabel;
    lblSub3: TLabel;
    lblSub4: TLabel;
    lblSub5: TLabel;
    lblSub6: TLabel;
    lblSub7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtFullNamesChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
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


procedure TfrmStudents.btnNextClick(Sender: TObject);
begin
  tbcStudents.ActivePageIndex := 1;
end;

procedure TfrmStudents.ComboBox1Change(Sender: TObject);
begin
  //
end;

procedure TfrmStudents.edtFullNamesChange(Sender: TObject);
Var
  sTemp, sBuild : string;
  iPos : integer;
begin
  sTemp := edtFullNames.Text;
  iPos := Pos(' ', sTemp);
  sBuild := Uppercase(sTemp[1] + sTemp[iPos+1]);


end;

procedure TfrmStudents.FormActivate(Sender: TObject);
begin
  util.notify('Please note progress cannot be saved, thus fill in application and submit immediately');
end;

end.
