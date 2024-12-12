program BuildingSiteWareHouseProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ConnectUnit in 'ConnectUnit.pas' {ConnectForm},
  BDUnit in 'BDUnit.pas' {BDModule: TDataModule},
  CountriesNamesRef in 'CountriesNamesRef.pas' {Countries},
  MaterialTypesRef in 'MaterialTypesRef.pas' {MaterialTypes},
  MeasuresRef in 'MeasuresRef.pas' {Measures},
  PostsRef in 'PostsRef.pas' {Posts};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBDModule, BDModule);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TCountries, Countries);
  Application.CreateForm(TMaterialTypes, MaterialTypes);
  Application.CreateForm(TMeasures, Measures);
  Application.CreateForm(TPosts, Posts);
  Application.Run;
end.
