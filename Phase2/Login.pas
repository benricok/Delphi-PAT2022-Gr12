unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, DB, ADODB, util_u;

type
  TfrmLogin = class(TForm)
    pnlLogin: TPanel;
    btnLogin: TBitBtn;
    edtUser: TEdit;
    edtPass: TEdit;
    lblUser: TLabel;
    lblPass: TLabel;
    btnShowPass: TBitBtn;
    btnNewStudent: TButton;
    lblWeclome: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnShowPassMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnShowPassMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnNewStudentClick(Sender: TObject);
  private
    
    var
      edtConfirmPassword : TEdit;
      lblNewAcc : TLabel;
      bStateNew : boolean;
      activeUser : util_u.TUser;
      bAuth : boolean;
      conDB: TADOConnection;
      tblMusic: TADOtable;
      qry: TADOQuery;
      dsrTbl: TDataSource;
      dsrSQL: TDataSource;
      SQL: String;

  published
    Procedure logout;
    Function getUser : TUser;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

{ TfrmLogin }

uses DBConnection_u, auth_u, Staff, Students;

// -----------------------------------------------------------------------------
//
//  Copyright (C) 2021  Benrico Krog
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Affero General Public License as published
//  by the Free Software Foundation version 3 of the License.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU Affero General Public License for more details.
//
//  You should have received a copy of the GNU Affero General Public License
//  along with this program.  If not, see <https://www.gnu.org/licenses/>
//
// -----------------------------------------------------------------------------

procedure TfrmLogin.btnLoginClick(Sender: TObject);
Var
  sGender : string;
begin
  if bStateNew then begin


  end else if NOT((edtPass.Text = '') OR (edtUser.Text = '')) then begin
      tblStaff.open;
      tblStaff.First;
      if tblStaff.Locate('Username', edtUser.Text, [loCaseInsensitive]) then begin
        if tblStaff['Enabled'] = true then begin
          if tblStaff['HashedPASS'] = auth.hash(edtPass.Text) then begin
            auth.readUser(activeUser);
            util.logevent('User ' + activeUser.username + ' logged in.', TEventType.info);
            frmLogin.Hide;
          end else
            util.warn('Invalid password by user ' + edtUser.Text, true)
        end else
          util.warn('User ' + edtUser.Text + ' is disabled', true);
      end else
        util.warn(edtUser.Text + ' does not exist', true);
    end else
      util.error('Please enter your credentials before submitting', false);
end;

procedure TfrmLogin.btnNewStudentClick(Sender: TObject);
begin
  edtUser.Clear;
  edtPass.Clear;

  if bStateNew then begin
    edtConfirmPassword.Free;
    lblNewAcc.Free;
    bStateNew := false;
  end else begin
    edtConfirmPassword := TEdit.Create(pnlLogin);
    lblNewAcc := TLabel.Create(pnlLogin);

    edtConfirmPassword.Parent := pnlLogin;
    lblNewAcc.Parent := pnlLogin;

    edtConfirmPassword.Visible := True;
    lblNewAcc.Visible := True;

    edtConfirmPassword.Top := 165;
    edtConfirmPassword.Left := 75;
    edtConfirmPassword.Width := 180;
    edtConfirmPassword.TextHint := 'Confrim Password';
    edtConfirmPassword.PasswordChar := '*';

    lblNewAcc.Top := 192;
    lblNewAcc.Left := 111;
    lblNewAcc.Caption := 'New applicant account';
    bStateNew := true;
  end;
end;

procedure TfrmLogin.btnShowPassMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtPass.PasswordChar := #0;
  if bStateNew then
    edtConfirmPassword.PasswordChar := #0;
end;

procedure TfrmLogin.btnShowPassMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtPass.PasswordChar := '*';
  if bStateNew then
    edtConfirmPassword.PasswordChar := '*';
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  edtUser.SetFocus;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  cDB.connectDB;
  bStateNew := false;
end;

// Getter for active user record
function TfrmLogin.getUser: util_u.TUser;
begin
  result := activeUser;
end;

// Log out user and reset Application
procedure TfrmLogin.logout;
begin
  frmLogin.Show;
  frmStudents.Hide;
  frmStaff.Hide;
  edtUser.SetFocus;
  edtPass.Clear;
  edtUser.Clear;

  if bStateNew then begin
    edtConfirmPassword.Free;
    lblNewAcc.Free;
    bStateNew := false;
  end;
end;
end.
