unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ConnectUnit,
  BDUnit, Data.DB, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask, System.ImageList, Vcl.ImgList, MaterialNamesUnit,
  MaterialsDialog, CountryDialogUnit, AddRecDialogUnit;

type
  TMainForm = class(TForm)
    LeftPanel: TPanel;
    Splitter1: TSplitter;
    RightPanelAll: TPanel;
    Splitter2: TSplitter;
    TopPanel: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
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
    PencilButtonNames: TButton;
    AddButton: TButton;
    EditButton: TButton;
    DelButton: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label13: TLabel;
    DBGrid6: TDBGrid;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    Label3: TLabel;
    DBGrid3: TDBGrid;
    TabSheet5: TTabSheet;
    Label12: TLabel;
    DBGrid5: TDBGrid;
    TabSheet7: TTabSheet;
    Label14: TLabel;
    DBGrid7: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure PencilButtonNamesClick(Sender: TObject);
    procedure NamesRefButtonClick(Sender: TObject);
    procedure CountryRefButtonClick(Sender: TObject);
    procedure AddButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  BDModule.MaterialsSQL.Active:= true;
  BDModule.MaterialNamesSQL.Active:= true;
  BDModule.MeasureTypesSQL.Active:= true;
  BDModule.MaterialTypesSQL.Active:= true;
  BDModule.CountriesSQL.Active:= true;
  BDModule.RecievedSQL.Active := true;
  BDModule.DeliveriesSQL.Active := true;
  BDModule.EmployeeSQL.Active := true;
  BDModule.PostsSQL.Active := true;
  BDModule.NamesDialogSQL.Active:= true;
  BDModule.CountryDialog.Active := true;
  BDModule.SuppliersSQL.Active := true;
end;

procedure TMainForm.AddButtonClick(Sender: TObject);
begin
AddRecDialog.Show();
end;

procedure TMainForm.EditButtonClick(Sender: TObject);
begin
BDModule.MaterialsSQL.Edit;
BDModule.MaterialsSQL.Post;
end;

procedure TMainForm.DelButtonClick(Sender: TObject);
begin
if BDModule.MaterialsSQL.RecordCount <> 0
  then begin
    if MessageDlg('Вы точно хотите навсегда удалить выбранную запись?', mtWarning, [mbYes, mbNo], 0) = mrYes
      then BDModule.MaterialsSQL.Delete;
  end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
begin
  BDModule.MaterialsSQL.Edit;
  BDModule.MaterialsSQL.FieldByName('Photo').Clear;
  BDModule.MaterialsSQL.Post;
end;

procedure TMainForm.Button3Click(Sender: TObject);
var
    BlobStream: TMemoryStream;
    Field: TBlobField;
    pict: TPicture;
  const
    MAX_WIDTH = 480;
    MAX_HEIGHT = 480;
begin
  try
    if BDModule.PicDialog.Execute then
    begin
      pict := TPicture.Create;
      pict.LoadFromFile(BDModule.PicDialog.FileName);
      if (pict.Width<=MAX_WIDTH)and(pict.Height<=MAX_HEIGHT)
       then
     begin
      Pict.Free;
      BlobStream := TMemoryStream.Create;
      try
        BlobStream.LoadFromFile(BDModule.PicDialog.FileName);
        BlobStream.Position := 0;
        DBImage1.Picture.LoadFromStream(BlobStream);
        if BDModule.MaterialsSQL.Active then
        begin
          BDModule.MaterialsSQL.Edit;
          Field := TBLobField(BDModule.MaterialsSQL.FieldByName('Photo'));
          Field.LoadFromStream(BlobStream);
          BDModule.MaterialsSQL.Post;
        end;
      finally
        BlobStream.Free;
      end;
     end
     else begin
       ShowMessage('Выбранное фото превышает максимальное разрешение: ' + IntToStr(MAX_WIDTH) + 'x' + IntToStr(MAX_HEIGHT) + '.');
       Pict.Free;
     end;
    end;
  finally
  end;
end;

procedure TMainForm.CountryRefButtonClick(Sender: TObject);
begin
  CountryDialog.Show();
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  ConnectForm:= TConnectForm.Create(Self);
  ConnectForm.ShowModal;
  closeVar:=ConnectForm.closeVar;
  if(closeVar = 0) then Application.Terminate;
  ActivateQueries();
  PageControl1.TabIndex := 0;
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
