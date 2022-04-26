unit Webserver;

interface

uses System.SysUtils, System.Classes, util_statemachine;

type
  TWebServer = class(Tobject)
    protected
      Var
        iPort : integer;
        bRunning: boolean;
        dtStartup, dtLastStatusReport : TDateTime;
      function GetHealth : THealth;
    public
      property Health : THealth read GetHealth;
      property Port : integer read iPort;
      property Running : boolean read bRunning;
      property Started : TDateTime read dtStartup;
      property LastStatusReport : TDateTime read dtLastStatusReport;
      procedure requestStatusReport;

      constructor Create(Port: integer);
      function launch : THealth;
  end;
implementation

end.
