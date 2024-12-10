program BuildingSiteWareHouseProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ConnectUnit in 'ConnectUnit.pas' {ConnectForm},
  BDUnit in 'BDUnit.pas' {BDModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBDModule, BDModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
