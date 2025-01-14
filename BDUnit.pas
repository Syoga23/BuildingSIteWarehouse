unit BDUnit;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, IniFiles, VCL.Forms, VCL.Dialogs,
  Vcl.Menus, System.Notification, System.ImageList, Vcl.ImgList, Vcl.Controls,
  CountriesNamesRef, MaterialTypesRef, MeasuresRef, PostsRef;

type
  TBDModule = class(TDataModule)
    Connection: TADOConnection;
    MaterialsDS: TDataSource;
    MaterialsSQL: TADOQuery;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
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
    H1: TMenuItem;
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
    RecievedSQLReturn_ID: TAutoIncField;
    RecievedSQLMaterial_Key: TIntegerField;
    RecievedSQLQuantity: TIntegerField;
    RecievedSQLrecieve_date: TWideStringField;
    RecievedSQLdelivery_Key: TIntegerField;
    RecievedSQLreciever_Key: TIntegerField;
    DeliveriesSQLdelivery_ID: TAutoIncField;
    DeliveriesSQLmaterial_Key: TIntegerField;
    DeliveriesSQLquantity: TIntegerField;
    DeliveriesSQLdelivery_date: TWideStringField;
    DeliveriesSQLsupplier_Key: TIntegerField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure MaterialNamesDSDataChange(Sender: TObject; Field: TField);
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

end.
