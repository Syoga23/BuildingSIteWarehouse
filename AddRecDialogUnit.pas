unit AddRecDialogUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB;

type
  TAddRecDialog = class(TForm)
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    NamesRefButton: TButton;
    Label7: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    AddButton: TButton;
    DBImage1: TDBImage;
    Button2: TButton;
    Button3: TButton;
    CountryRefButton: TButton;
    Button1: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button4: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NamesRefButtonClick(Sender: TObject);
    procedure CountryRefButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AddRecDialog: TAddRecDialog;

implementation

{$R *.dfm}

Uses BDUnit, MaterialsDialog, MaterialNamesUnit, CountryDialogUnit;

procedure TAddRecDialog.AddButtonClick(Sender: TObject);
begin
BDModule.MaterialsSQL.Post;
BDModule.MaterialNamesSQL.Refresh;
Close();
end;

procedure TAddRecDialog.Button4Click(Sender: TObject);
begin
BDModule.MaterialsSQL.Cancel;
Close();
end;

procedure TAddRecDialog.CountryRefButtonClick(Sender: TObject);
begin
  CountryDialog.Show();
end;

procedure TAddRecDialog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BDModule.MaterialsSQL.Cancel;
end;

procedure TAddRecDialog.FormShow(Sender: TObject);
begin
BDModule.MaterialsSQL.Append;
end;

procedure TAddRecDialog.NamesRefButtonClick(Sender: TObject);
begin
MaterialNamesDialog.ShowModal();
end;

end.
