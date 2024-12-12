unit MaterialNamesUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, BDUnit, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TMaterialNames = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNames: TMaterialNames;

implementation

{$R *.dfm}

procedure TMaterialNames.Button1Click(Sender: TObject);
begin
Close;
end;

end.
