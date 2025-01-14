program BuildingSiteWareHouseProject;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {MainForm},
  ConnectUnit in 'ConnectUnit.pas' {ConnectForm},
  BDUnit in 'BDUnit.pas' {BDModule: TDataModule},
  CountriesNamesRef in 'CountriesNamesRef.pas' {Countries},
  MaterialTypesRef in 'MaterialTypesRef.pas' {MaterialTypes},
  MeasuresRef in 'MeasuresRef.pas' {Measures},
  PostsRef in 'PostsRef.pas' {Posts},
  MaterialNamesUnit in 'MaterialNamesUnit.pas' {MaterialNames},
  MaterialsDialog in 'MaterialsDialog.pas' {MaterialNamesDialog},
  CountryDialogUnit in 'CountryDialogUnit.pas' {CountryDialog},
  AddRecDialogUnit in 'AddRecDialogUnit.pas' {AddRecDialog};

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
  Application.CreateForm(TMaterialNames, MaterialNames);
  Application.CreateForm(TMaterialNamesDialog, MaterialNamesDialog);
  Application.CreateForm(TCountryDialog, CountryDialog);
  Application.CreateForm(TAddRecDialog, AddRecDialog);
  Application.Run;
end.
