unit MaterialsDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, BDUnit;

type
  TMaterialNamesDialog = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNamesDialog: TMaterialNamesDialog;

implementation

{$R *.dfm}

uses MainUnit;

procedure TMaterialNamesDialog.Button1Click(Sender: TObject);
begin
Close();
end;

procedure TMaterialNamesDialog.Button2Click(Sender: TObject);
begin
BDModule.MaterialsSQL.Edit;
BDModule.MaterialsSQL.FieldByName('Name_Key').Value:= BDModule.NamesDialogSQL.FieldByName('Name_ID').Value;
//BDModule.MaterialsSQL.Post;
end;

end.
