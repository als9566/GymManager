unit DashboardModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Messages, Dialogs;

type
  TdmDashboard = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Function Day7_Select(ADate : String) :TDataSet;
  end;

var
  dmDashboard: TdmDashboard;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TdmDashboard.Day7_Select(ADate : String) :TDataSet;
var
  sSelect : String;
  I : Integer;
begin
  sSelect := 'date(strftime(''%Y-%m-%d'', '''+ADate+'''), ''-0 DAY'') "0" ';
  for I := 1 to 6 do
  begin
    sSelect := sSelect
    + ', date(strftime(''%Y-%m-%d'', '''+ADate+'''), ''-'+IntToStr(I)+' DAY'') "'+IntToStr(I)+'" ';
  end;

  try
    dmDashboard.FDQuery.SQL.Clear;
    //dmDashboard.FDQuery.SQL.Clear;
    dmDashboard.FDQuery.SQL.Text := 'SELECT '
                               +  sSelect;

    Result := dmDashboard.FDQuery;
  except
    Result := nil;
  end;
end;

end.
