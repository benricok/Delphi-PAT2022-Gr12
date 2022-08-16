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
    procedure FormActivate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure btnShowPassMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnShowPassMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    
    var
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

uses DBConnection_u, auth_u, Staff, Launch;

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
  if NOT((edtPass.Text = '') OR (edtUser.Text = '')) then begin
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

procedure TfrmLogin.btnShowPassMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtPass.PasswordChar := #0;
end;

procedure TfrmLogin.btnShowPassMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtPass.PasswordChar := '*';
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
  edtUser.SetFocus;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLaunch.Show;
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
  //frmMain.Hide;
  edtUser.SetFocus;
  edtPass.Clear;
end;
end.
