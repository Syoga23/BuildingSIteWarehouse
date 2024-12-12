unit MaterialTypesRef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TMaterialTypes = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTypes: TMaterialTypes;

implementation

{$R *.dfm}

Uses BDUnit;

procedure TMaterialTypes.Button1Click(Sender: TObject);
begin
Close;
end;

end.
