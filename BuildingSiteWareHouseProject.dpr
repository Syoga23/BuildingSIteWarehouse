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
  AddRecDialogUnit in 'AddRecDialogUnit.pas' {AddRecDialog},
  AboutUnit in 'AboutUnit.pas' {AboutForm},
  EmployeeRef in 'EmployeeRef.pas' {Employee},
  SuppliersRef in 'SuppliersRef.pas' {Suppliers},
  ReceivedDialog in 'ReceivedDialog.pas' {ReceivedForm},
  DeliveriesDialog in 'DeliveriesDialog.pas' {DeliveriesForm},
  RecievedReport in 'RecievedReport.pas' {Form1};

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
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TEmployee, Employee);
  Application.CreateForm(TSuppliers, Suppliers);
  Application.CreateForm(TReceivedForm, ReceivedForm);
  Application.CreateForm(TDeliveriesForm, DeliveriesForm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
