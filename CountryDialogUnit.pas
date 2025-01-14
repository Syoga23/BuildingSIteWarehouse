unit CountryDialogUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, BDUnit;

type
  TCountryDialog = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CountryDialog: TCountryDialog;

implementation

{$R *.dfm}

procedure TCountryDialog.Button1Click(Sender: TObject);
begin
Close();
end;

procedure TCountryDialog.Button2Click(Sender: TObject);
begin
if not(BDModule.MaterialsSQL.State in [dsEdit])
  then BDModule.MaterialsSQL.Edit;
BDModule.MaterialsSQL.FieldByName('MadeCountry_Key').Value:= BDModule.CountryDialog.FieldByName('Country_ID').Value;
Close();
end;

end.
