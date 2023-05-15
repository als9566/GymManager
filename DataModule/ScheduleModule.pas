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
    Function Schedule_Detail_Select(ADate : String) :TDataSet;
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

Function TdmSchedule.Schedule_Detail_Select(ADate : String) :TDataSet;
var
  I : Integer;
  sSelect : String;
  txtFile : TextFile;
  sFileName : string;
begin

  sSelect := '';

  for I := 0 to 6 do
  begin
    if sSelect <> '' then
      sSelect := sSelect + ',';

    sSelect := sSelect
             + ' (SELECT name||''\r\n''||sequence||''ȸ��'' FROM pt_schedule                ' + #13#10
             + '   INNER JOIN member on pt_schedule.member_id = member.id                   ' + #13#10
             + '   WHERE DAY = DATE(datetime('''+ ADate +''', ''+'+ IntToStr(I) +' days'')) ' + #13#10
             + '     AND pt_schedule.time = a.time) ''' + IntToStr(I+1) + '''               ' + #13#10;

  end;

  try
    dmSchedule.FDQuery.SQL.Clear;
    dmSchedule.FDQuery.SQL.Text := 'SELECT                            ' +#13#10
                                 +  sSelect                             +#13#10
                                 + '  FROM                            ' +#13#10
                                 + ' (SELECT time FROM pt_time_set) a ' +#13#10
                                 + ' ORDER BY time ';

    Result := dmSchedule.FDQuery;
  except
    Result := nil;
  end;
end;

end.
