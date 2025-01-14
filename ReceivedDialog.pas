unit ReceivedDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TReceivedForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReceivedForm: TReceivedForm;

implementation

{$R *.dfm}

Uses BDUnit;

procedure TReceivedForm.Button1Click(Sender: TObject);
begin
BDModule.RecievedSQL.Post;
Close();
end;

procedure TReceivedForm.Button2Click(Sender: TObject);
begin
Close();
end;

procedure TReceivedForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
BDModule.RecievedSQL.Cancel;
end;

procedure TReceivedForm.FormShow(Sender: TObject);
begin
BDModule.RecievedSQL.Append;
end;

end.
