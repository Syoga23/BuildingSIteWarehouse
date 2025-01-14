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
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure TAddRecDialog.Button1Click(Sender: TObject);
begin
  BDModule.MaterialsSQL.Edit;
  BDModule.MaterialsSQL.FieldByName('Photo').Clear;
end;

procedure TAddRecDialog.Button3Click(Sender: TObject);
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
          //BDModule.MaterialsSQL.Post;
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
