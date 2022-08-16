unit DBConnection_u;

interface

uses ADODB, SysUtils, Classes, DB, VCL.Dialogs;

type
  TcDB = class(TComponent)
  private
    var
      SQL: String;
  published
    Procedure connectDB;
    procedure runSQL(sSQL: string);
  end;

var
  cDB : TcDB;
  dbConnection: TADOConnection;
  tblApplications, tblCourses, tblStaff: TADOtable;
  tblUserInfo : TADOtable;
  dsrTbl: TDataSource;
  qryMain : TADOQuery;

implementation

// Connect to database
Procedure TcDB.connectDB;
begin
  dbConnection := TADOConnection.Create(Self);

  dbConnection.ConnectionString :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\..\Web application.mdb;' +
    'Mode=ReadWrite;Persist Security Info=False';

  dbConnection.LoginPrompt := false;
  dbConnection.Connected := true;

  qryMain := TADOQuery.Create(Self);
  qryMain.Connection := dbConnection;

  //Create tblApplications object and assign it to the Users tabel in the DB
  tblApplications := TADOtable.Create(Self);
  tblApplications.Connection := dbConnection;

  tblApplications.TableName := 'Applications';
  tblApplications.Active := true;

  //Create tblCourses object and assign it to the Users tabel in the DB
  tblCourses := TADOTable.Create(Self);
  tblCourses.Connection := dbConnection;

  tblCourses.TableName := 'Courses';
  tblCourses.Active := true;

  //Create tblCourses object and assign it to the Users tabel in the DB
  tblStaff := TADOTable.Create(Self);
  tblStaff.Connection := dbConnection;

  tblStaff.TableName := 'Staff';
  tblStaff.Active := true;

  //tblUsersinfo
  //tblUserInfo := TADOtable.Create(Self);
  //tblUserInfo.Connection := conDB;

  //tblUserInfo.TableName := 'UserInfo';
  //tblUserInfo.Active := true;

  // Create datasource object
  //dsrTbl := TDataSource.Create(Self);
  //dsrTbl.DataSet := tblUserInfo;
end;
procedure TcDB.runSQL(sSQL: string);
begin
  if length(sSQL) <> 0 then
  begin
    qryMain.Close;
    qryMain.SQL.Text := sSQL;
    qryMain.Open;
  end
  else
    Showmessage('No SQL statement entered');
end;

end.
