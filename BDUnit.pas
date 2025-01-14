unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IniFiles, VCL.Forms, VCL.Dialogs,
  Vcl.Menus, System.Notification, System.ImageList, Vcl.ImgList, Vcl.Controls,
  CountriesNamesRef, MaterialTypesRef, MeasuresRef, PostsRef, Vcl.ExtDlgs,
  AboutUnit, EmployeeRef, SuppliersRef, ReceivedDialog, DeliveriesDialog;

type
  TBDModule = class(TDataModule)
    Connection: TADOConnection;
    MaterialsDS: TDataSource;
    MaterialsSQL: TADOQuery;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    MaterialNamesDS: TDataSource;
    MaterialNamesSQL: TADOQuery;
    MeasureTypesDS: TDataSource;
    MeasureTypesSQL: TADOQuery;
    MaterialTypesDS: TDataSource;
    MaterialTypesSQL: TADOQuery;
    CountriesDS: TDataSource;
    CountriesSQL: TADOQuery;
    RecievedDS: TDataSource;
    RecievedSQL: TADOQuery;
    DeliveriesDS: TDataSource;
    DeliveriesSQL: TADOQuery;
    EmployeeDS: TDataSource;
    EmployeeSQL: TADOQuery;
    PostsDS: TDataSource;
    PostsSQL: TADOQuery;
    ImageList1: TImageList;
    MaterialsSQLMaterial_ID: TIntegerField;
    MaterialsSQLName_Key: TIntegerField;
    MaterialsSQLMaterialType_Key: TIntegerField;
    MaterialsSQLQuantity: TIntegerField;
    MaterialsSQLMeasurementType_Key: TIntegerField;
    MaterialsSQLCharacteristics: TWideStringField;
    MaterialsSQLMadeCountry_Key: TIntegerField;
    MaterialsSQLPhoto: TBlobField;
    MaterialNamesSQLName_ID: TIntegerField;
    MaterialNamesSQLName: TWideStringField;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    MaterialsSQLMaterialType: TStringField;
    MaterialsSQLMeasures: TStringField;
    MaterialsSQLName: TStringField;
    DSNamesDialog: TDataSource;
    NamesDialogSQL: TADOQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    MeasureTypesSQLMeasurementType_ID: TAutoIncField;
    MeasureTypesSQLMeasureName: TWideStringField;
    MaterialTypesSQLMaterialType_ID: TAutoIncField;
    MaterialTypesSQLTypeName: TWideStringField;
    CountriesSQLCountry_ID: TAutoIncField;
    CountriesSQLCountryName: TWideStringField;
    DeliveriesSQLdelivery_ID: TAutoIncField;
    DeliveriesSQLmaterial_Key: TIntegerField;
    DeliveriesSQLquantity: TIntegerField;
    DeliveriesSQLdelivery_date: TWideStringField;
    EmployeeSQLEmployee_ID: TAutoIncField;
    EmployeeSQLFamilia: TWideStringField;
    EmployeeSQLImya: TWideStringField;
    EmployeeSQLOtchestvo: TWideStringField;
    EmployeeSQLPost_Key: TIntegerField;
    EmployeeSQLBirthDate: TWideStringField;
    EmployeeSQLPhone: TWideStringField;
    EmployeeSQLEmail: TWideStringField;
    PostsSQLPost_ID: TAutoIncField;
    PostsSQLName: TWideStringField;
    CountryDialog: TADOQuery;
    CountryDialogDS: TDataSource;
    CountryDialogCountry_ID: TAutoIncField;
    CountryDialogCountryName: TWideStringField;
    MaterialsSQLMadeCountry: TStringField;
    PicDialog: TOpenPictureDialog;
    SuppliersDS: TDataSource;
    SuppliersSQL: TADOQuery;
    SuppliersSQLID: TAutoIncField;
    SuppliersSQLCompanyName: TWideStringField;
    SuppliersSQLFam: TWideStringField;
    SuppliersSQLImya: TWideStringField;
    SuppliersSQLOtec: TWideStringField;
    SuppliersSQLPhone: TWideStringField;
    SuppliersSQLEmail: TWideStringField;
    DeliveriesSQLMaterialName: TStringField;
    EmployeeSQLPost: TStringField;
    RecievedSQLMaterial_Key: TIntegerField;
    RecievedSQLQuantity: TIntegerField;
    RecievedSQLrecieve_date: TWideStringField;
    RecievedSQLRecieved_ID: TAutoIncField;
    RecievedSQLsupplier_Key: TIntegerField;
    RecievedSQLemployee_Key: TIntegerField;
    RecievedSQLdelivery_Key: TIntegerField;
    RecievedSQLMaterialName: TStringField;
    RecievedSQLПоставщик: TStringField;
    RecievedSQLEmployee: TStringField;
    DeliveriesSQLemployee_Key: TIntegerField;
    DeliveriesSQLEmployee: TStringField;
    N3: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    popupReceived: TPopupMenu;
    popupDeliveries: TPopupMenu;
    D1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    procedure DataModuleCreate(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure MaterialNamesDSDataChange(Sender: TObject; Field: TField);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
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



procedure TBDModule.MaterialNamesDSDataChange(Sender: TObject; Field: TField);
begin
MaterialsSQL.Close;
MaterialsSQL.Parameters.ParamByName('NameKey').Value := MaterialNamesSQL.FieldByName('Name_Id').Value;
MaterialsSQL.Open;
end;

procedure TBDModule.N4Click(Sender: TObject);
begin
AboutForm.Show();
end;

procedure TBDModule.N5Click(Sender: TObject);
begin
MaterialTypes.Show();
end;

procedure TBDModule.N6Click(Sender: TObject);
begin
Measures.Show();
end;

procedure TBDModule.N7Click(Sender: TObject);
begin
Countries.Show();
end;

procedure TBDModule.N8Click(Sender: TObject);
begin
Posts.Show();
end;

procedure TBDModule.N9Click(Sender: TObject);
begin
Suppliers.Show();
end;

procedure TBDModule.N10Click(Sender: TObject);
begin
ReceivedForm.Show();
end;

procedure TBDModule.N11Click(Sender: TObject);
begin
DeliveriesForm.Show();
end;

procedure TBDModule.D1Click(Sender: TObject);
begin
if MessageDlg('Вы точно хотите навсегда удалить выбранную запись?', mtWarning, [mbYes, mbNo], 0) = mrYes
      then RecievedSQL.Delete;
end;

procedure TBDModule.N12Click(Sender: TObject);
begin
RecievedSQL.Edit;
end;

procedure TBDModule.N13Click(Sender: TObject);
begin
if RecievedSQL.State in [dsEdit]
  then RecievedSQL.Post;
end;

procedure TBDModule.N14Click(Sender: TObject);
begin
RecievedSQL.Cancel;
end;

procedure TBDModule.N15Click(Sender: TObject);
begin
if MessageDlg('Вы точно хотите навсегда удалить выбранную запись?', mtWarning, [mbYes, mbNo], 0) = mrYes
      then DeliveriesSQL.Delete;
end;

procedure TBDModule.N16Click(Sender: TObject);
begin
DeliveriesSQL.Cancel;
end;

procedure TBDModule.N17Click(Sender: TObject);
begin
DeliveriesSQL.Edit;
end;

procedure TBDModule.N18Click(Sender: TObject);
begin
if DeliveriesSQL.State in [dsEdit]
  then DeliveriesSQL.Post;
end;

procedure TBDModule.N20Click(Sender: TObject);
begin
//приемка
end;

procedure TBDModule.N21Click(Sender: TObject);
begin
//сдача
end;

procedure TBDModule.N3Click(Sender: TObject);
begin
Employee.Show();
end;

end.
