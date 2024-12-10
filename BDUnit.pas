unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IniFiles, VCL.Forms, VCL.Dialogs;

type
  TBDModule = class(TDataModule)
    Connection: TADOConnection;
    MaterialsDS: TDataSource;
    MaterialsSQL: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Ini:TIniFile;
  end;

var
  BDModule: TBDModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure SetIniDefaults;
 Var IniLocal: TiniFile;
     ConfigPath: String;
begin
 try
 ConfigPath:= ExtractFileDir(Application.ExeName) + '\config.ini';
 IniLocal := TIniFile.Create(ConfigPath);
 IniLocal.writeString('Connection','Connection_string','');
 IniLocal.Free

 except on E:Exception do
    MessageDlg('Не удалось создать конфигурационный файл: '+ E.Message, mtError, [mbOk], 0)
 end;
end;

procedure TBDModule.DataModuleCreate(Sender: TObject);
  var ConfigPath: String;
begin
  Connection.Connected := False;
  Connection.ConnectionString := '';

  try
    ConfigPath:= ExtractFileDir(Application.ExeName) + '\config.ini';
    Ini := TIniFile.Create(ConfigPath);
  except on E:Exception do
    MessageDlg('Не удалось создать конфигурационный файл:: '+ E.Message, mtError, [mbOk], 0)
  end;
if (Not FileExists(ConfigPath))
  then begin
        SetIniDefaults;
  end;
end;



end.
