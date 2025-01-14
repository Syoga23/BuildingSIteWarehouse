unit AboutUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.AppEvnts;

type
  TAboutForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    ApplicationEvents1: TApplicationEvents;
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

{$R *.dfm}

procedure TAboutForm.ApplicationEvents1Message(var Msg: tagMSG;
  var Handled: Boolean);
begin
if Msg.message = WM_LBUTTONDOWN then
  begin
  Close();
  end;
end;

end.
