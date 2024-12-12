unit PostsRef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TPosts = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Posts: TPosts;

implementation

{$R *.dfm}

Uses BDUnit;

end.
