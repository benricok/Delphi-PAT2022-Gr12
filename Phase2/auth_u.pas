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

unit auth_u;

interface

uses SysUtils, Classes, Vcl.Forms, Vcl.Dialogs, System.Variants, util_u, DBUsers_u, System.Hash;

type
  Tauth = class(TComponent)
    Procedure writeUser(const user : TUser);
    Procedure readUser(var user : TUser);
    function checkGender(var sReason : string; iIndex : integer): boolean;
    Procedure importUsers(var arrUsers : array of TUser);
    Function hash(sString : string) : string;
  end;

Var
  auth : Tauth;

implementation

Function Tauth.hash(sString : string) : string;
begin
  // Hash password
  result := THashMD5.GetHashString(sString);
end;

function Tauth.checkGender(var sReason : string; iIndex : integer): boolean;
begin
  // Check if gender is selected
  result := true;
  if iIndex = -1 then
    result := false;
  sReason := sReason + 'No gender were selected';
end;

Procedure Tauth.readUser(var user : TUser);
Var
  sGender : string;
begin
  with user do begin
    tblUserInfo.recNo := tblUsers.RecNo;
    username := tblUsers['Username'];
    privilege := tblUsers['Privilege'];
    enabled := tblUsers['Enabled'];
    if NOT(tblUserInfo['Fullname'] = '') then
      fullname := tblUserInfo['Fullname']
    else
      fullname := 'N/A';
    if NOT(tblUserInfo['Surname'] = '') then
      Surname := tblUserInfo['Surname']
    else
      Surname := 'N/A';
    if NOT(tblUserInfo['Cellphone'] = '') then
      Cellphone := tblUserInfo['Cellphone']
    else
      Cellphone := 'N/A';
    if NOT(tblUserInfo['Gender'] = '') then begin
      sGender := tblUserInfo['Gender'];
      gender := sGender[1]; // Why doesn't activeUser.gender := tblUserInfo['Gender'][1]; work???
    end else
      gender := 'N';
    if NOT(tblUserInfo['Email'] = '') then
      email := tblUserInfo['Email']
    else
      email := 'N/A';
  end;
end;

Procedure Tauth.writeUser(const user : Tuser);
begin
  with user do begin
    tblUsers['Username'] := username;
    tblUserInfo['Username'] := username;
    tblUsers['Privilege'] := privilege;
    if NOT(fullname = 'N/A') then
      tblUserInfo['Fullname'] := fullname
    else
      tblUserInfo['Fullname'] := Null;
    if NOT(surname = 'N/A') then
      tblUserInfo['Surname'] := surname
    else
      tblUserInfo['Surname'] := Null;
    if NOT(cellPhone = 'N/A') then
      tblUserInfo['CellPhone'] := cellPhone
    else
      tblUserInfo['CellPhone'] := Null;
    if NOT(tblUserInfo['Gender'] = 'N') then
      tblUserInfo['Gender'] := gender
    else
      tblUserInfo['Gender'] := Null;
    if NOT(tblUserInfo['Email'] = 'N/A') then
      tblUserInfo['Email'] := email
    else
      tblUserInfo['Email'] := Null;
    tblUsers['Enabled'] := enabled;
  end;
end;

Procedure Tauth.importUsers(var arrUsers : array of TUser);
Var
  i : integer;
  tempUser : Tuser;
begin
  // import users
  tblUsers.Open;
  tblUserInfo.Open;
  tblUsers.First;
  tblUserInfo.First;
    for i := 1 to tblUsers.RecordCount do begin
      readUser(tempUser);
      arrUsers[i-1] := tempUser;
      tblUsers.Next;
      tblUserInfo.Next;
    end;
end;

end.