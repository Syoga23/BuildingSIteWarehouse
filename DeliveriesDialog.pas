unit DeliveriesDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TDeliveriesForm = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliveriesForm: TDeliveriesForm;

implementation

{$R *.dfm}

Uses BDUnit;

procedure TDeliveriesForm.Button1Click(Sender: TObject);
begin
BDModule.DeliveriesSQL.Post;
Close();
end;

procedure TDeliveriesForm.Button2Click(Sender: TObject);
begin
Close();
end;

procedure TDeliveriesForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BDModule.DeliveriesSQL.Cancel;
end;

procedure TDeliveriesForm.FormShow(Sender: TObject);
begin
BDModule.DeliveriesSQL.Append;
end;

end.
