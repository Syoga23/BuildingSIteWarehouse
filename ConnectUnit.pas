unit ConnectUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, BDUnit;

type
  TConnectForm = class(TForm)
    Panel: TPanel;
    Text: TLabel;
    LoginEdit: TEdit;
    LoginButton: TButton;
    procedure LoginButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams); override;
  public
    closeVar: integer;
  end;

var
  ConnectForm: TConnectForm;

implementation

{$R *.dfm}

procedure Launch();
begin
  //SERGEIPC\SQLSERVER2008
  BDModule.Connection.ConnectionString := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=BuildingSIteWarehouse;Data Source=' + ConnectForm.LoginEdit.Text;
  try
  BDModule.Connection.Open;
  MessageDlg('Подключено успешно!', mtInformation, [mbOk], 0);
  ConnectForm.closeVar := 1;
  ConnectForm.close;
  BDModule.Ini.WriteString('Connection','Connection_string', '' + ConnectForm.LoginEdit.Text);
  BDModule.Ini.Free;
  Except on E:Exception do
    MessageDlg('Не удалось подключиться к базе данных: '+ E.Message, mtError, [mbOk], 0);

  end;

end;

procedure TConnectForm.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TConnectForm.FormShow(Sender: TObject);
begin
  LoginEdit.Text := BDModule.Ini.ReadString('Connection','Connection_string', '');
end;

procedure TConnectForm.LoginButtonClick(Sender: TObject);
begin
Launch();
end;

end.
