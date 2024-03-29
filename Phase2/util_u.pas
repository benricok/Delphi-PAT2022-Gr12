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

unit util_u;

interface

uses SysUtils, Classes, Vcl.Forms, Vcl.Dialogs, System.Variants, Winapi.ShellApi, Winapi.Windows;

type
  Tsc = set of char;
  TEventType = (error, info, warning);
  TUtil = class(TObject)
    Function noSpace(sString : string) : string;
    procedure error(sError: string; log : boolean);
    Procedure initFile(const sFileName : string; var tFile : Textfile);
    Procedure logevent(sEvent : string; EventType: TEventType);
    Procedure deleteFile(const sFileName : string);
    Procedure warn(sWarn : string; log : boolean);
    Procedure notify(sMessage : string);
    Procedure openHelp;
  end;

Var
  util : TUtil;

implementation

uses DBConnection_u;

procedure TUtil.initFile(const sFileName: string; var tFile : Textfile);
begin
  AssignFile(tFile, sFileName);
  if NOT(FileExists(sFileName)) then
    Rewrite(tFile);
end;

//Event logger
procedure TUtil.logevent(sEvent: string; EventType: TEventType);
Var
  tFile : TextFile;
begin
  initFile('.\Data\Events.log', tFile);
  Append(tFile);
  case EventType of
    {error} TEventType.error: Writeln(tfile, DateToStr(Now) + ' ' + TimeToStr(Now) + ';[ Error ];' + sEvent);
    {info} TEventType.info: Writeln(tfile, DateToStr(Now) + ' ' + TimeToStr(Now) + ';[ Info ];' + sEvent);
    {warning} TEventType.warning: Writeln(tfile, DateToStr(Now) + ' ' + TimeToStr(Now) + ';[ Warning ];' + sEvent);
  end;
  CloseFile(tFile);
end;

procedure TUtil.deleteFile(const sFileName: string);
begin
  // First check if file exist, then procede with deleting the file
  if FileExists(sFileName) then
    DeleteFile(sFileName)
  else
    error(sFileName + ' does not exist', false);
end;

// Remove spaces in string
Function TUtil.noSpace(sString : string) : string;
Var
  i : integer;
begin
  result := '';
  for i := 1 to length(sString) do
    if NOT(sString[i] = ' ') then
      result := result + sString[i];
end;

procedure TUtil.error(sError: string; log : boolean);
begin
  MessageDlg(sError, mtError, [mbOK], 0);
  if log then
    logevent(sError, TEventType.error); // Log event in event logger
end;

Procedure TUtil.warn(sWarn : string; log : boolean);
begin
  MessageDlg(sWarn, mtWarning, [mbOK], 0);
  if log then
    logevent(sWarn, TEventType.warning); // Log event in event logger
end;

Procedure TUtil.notify(sMessage : string);
begin
  MessageDlg(sMessage, mtInformation, [mbOK], 0);
end;

//Show Help Readme text file in notepad
Procedure TUtil.openHelp;
begin
  ShellExecute(0,'open', 'c:\windows\notepad.exe', '.\Help.md', nil, SW_SHOWNORMAL) ;
end;

end.
