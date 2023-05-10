unit ScheduleModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmSchedule = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Function PlusDay7_Select(ADate : String) :TDataSet;
  end;

var
  dmSchedule: TdmSchedule;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TdmSchedule.PlusDay7_Select(ADate : String) :TDataSet;
var
  I : Integer;
  sSelect : String;
begin

  sSelect := '';

  for I := 0 to 6 do
  begin
    if sSelect <> '' then
      sSelect := sSelect + ',';

    sSelect := sSelect
             + 'strftime(''%d'', DATE(datetime(''' + ADate + ''', ''+' + IntToStr(I) + ' days''))) '+#13#10
             + '||''��''||'' ('''+#13#10
             + '||'+#13#10
             + ' CASE strftime(''%w'', DATE(datetime('''+ ADate +''', ''+'+ IntToStr(I) +' days''))) '+#13#10
             + '  WHEN ''0'' THEN ''��''    '+#13#10
             + '  WHEN ''1'' THEN ''��''    '+#13#10
             + '  WHEN ''2'' THEN ''ȭ''    '+#13#10
             + '  WHEN ''3'' THEN ''��''    '+#13#10
             + '  WHEN ''4'' THEN ''��''    '+#13#10
             + '  WHEN ''5'' THEN ''��''    '+#13#10
             + '  WHEN ''6'' THEN ''��''    '+#13#10
             + ' END '+#13#10
             + '||'')\r\n''||DATE(datetime('''+ ADate +''', ''+'+ IntToStr(I) +' days'')) '''+ IntToStr(I) +''''+#13#10;
  end;

  try
    dmSchedule.FDQuery.SQL.Text := 'SELECT ' +#13#10
                                 +  sSelect;

    Result := dmSchedule.FDQuery;
  except
    Result := nil;
  end;
end;

end.
