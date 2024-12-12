unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ConnectUnit,
  BDUnit, Data.DB, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList, MaterialNamesUnit,
  MaterialsDialog;

type
  TMainForm = class(TForm)
    LeftPanel: TPanel;
    Splitter1: TSplitter;
    RightPanelAll: TPanel;
    Splitter2: TSplitter;
    TopPanel: TPanel;
    DBGrid1: TDBGrid;
    ToolBar1: TToolBar;
    DBMemo1: TDBMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NamesRefButton: TButton;
    DBLookupComboBox2: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    CountryRefButton: TButton;
    Label11: TLabel;
    DBImage1: TDBImage;
    Button2: TButton;
    Button3: TButton;
    TabSheet5: TTabSheet;
    DBGrid5: TDBGrid;
    Label12: TLabel;
    PencilButtonNames: TButton;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure PencilButtonNamesClick(Sender: TObject);
    procedure NamesRefButtonClick(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;
  closeVar: integer;

implementation

{$R *.dfm}


procedure ActivateQueries();
begin
  BDModule.MaterialNamesSQL.Active:= true;
  BDModule.MaterialsSQL.Active:= true;
  BDModule.CountriesSQL.Active:= true;
  BDModule.MeasureTypesSQL.Active:= true;
  BDModule.MaterialTypesSQL.Active:= true;
  BDModule.NamesDialogSQL.Active:= true;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ConnectForm:= TConnectForm.Create(Self);
  ConnectForm.ShowModal;
  closeVar:=ConnectForm.closeVar;
  if(closeVar = 0) then Application.Terminate;
  ActivateQueries();
end;

procedure TMainForm.NamesRefButtonClick(Sender: TObject);
begin
  MaterialNamesDialog.ShowModal();
end;

procedure TMainForm.PencilButtonNamesClick(Sender: TObject);
begin
  MaterialNames.Show();
end;

end.
