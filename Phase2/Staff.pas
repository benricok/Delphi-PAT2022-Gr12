unit Staff;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Menus;

type
  TfrmStaff = class(TForm)
    tabCtrl: TTabControl;
    pnlQuickAcess: TPanel;
    BitBtn1: TBitBtn;
    btnLogout: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStaff: TfrmStaff;

implementation

{$R *.dfm}

end.