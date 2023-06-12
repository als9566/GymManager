unit ScheduleModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TSchedule = class
  private
    Fday         : string;
    Ftime        : Integer;
    Fmember_id   : Integer;
    Fsequence    : Integer;
  public
    property day         : string   read Fday        write Fday;
    property time        : Integer  read Ftime       write Ftime;
    property member_id   : Integer  read Fmember_id  write Fmember_id;
    property sequence    : Integer  read Fsequence   write Fsequence;
    Function Insert(ASchedule: TSchedule) :Boolean;
  end;

type
  TdmSchedule = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Function PlusDay7_Select(ADate : String) :TDataSet;
    Function PlusDay_Select(ADate : String) : String;
    Function MinusDay_Select(ADate : String) : String;
    Function Schedule_Detail_Select(ADate : String) :TDataSet;
    Function Schedule_ID_Select(ADate : String; iAddDay, iTime : Integer) : Integer;
    Function Date_Calculation_Select(ADate : String; iAddDay : Integer) : String;
  end;

var
  dmSchedule : TdmSchedule;
  Schedule   :  TSchedule;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TSchedule.Insert(ASchedule: TSchedule): Boolean;
begin

  try

    dmSchedule.FDQuery.SQL.Clear;
    dmSchedule.FDQuery.SQL.Text := 'SELECT IFNULL(MAX(sequence)+1,1) seq FROM pt_schedule ' +#13#10
                                 + ' WHERE MEMBER_ID = '+IntToStr(ASchedule.member_id);

    dmSchedule.FDQuery.Active := true;

    ASchedule.sequence := dmSchedule.FDQuery.FieldByName('seq').AsInteger;
  except
    ASchedule.sequence := 0;
  end;

  try
    dmSchedule.FDQuery.SQL.Text := 'INSERT INTO pt_schedule '
                               + '       (day, time, member_id, sequence ) '
                               + ' VALUES(:day, :time, :member_id, :sequence ) ';

    dmSchedule.FDQuery.ParamByName('day').AsString := ASchedule.day;
    dmSchedule.FDQuery.ParamByName('time').AsInteger := ASchedule.time;
    dmSchedule.FDQuery.ParamByName('member_id').AsInteger := ASchedule.member_id;
    dmSchedule.FDQuery.ParamByName('sequence').AsInteger := ASchedule.sequence;

    dmSchedule.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;

end;

Function TdmSchedule.MinusDay_Select(ADate : String) : String;
begin
  try
    dmSchedule.FDQuery.SQL.Clear;
    dmSchedule.FDQuery.SQL.Text := 'SELECT DATE(datetime('''+ ADate +''', ''-1 days'')) "DATE"';

    dmSchedule.FDQuery.Active := true;

    Result := dmSchedule.FDQuery.FieldByName('DATE').AsString;
  except
    Result := '';
  end;
end;

Function TdmSchedule.PlusDay_Select(ADate : String) : String;
begin
  try
    dmSchedule.FDQuery.SQL.Clear;
    dmSchedule.FDQuery.SQL.Text := 'SELECT DATE(datetime('''+ ADate +''', ''+1 days'')) "DATE"';

    dmSchedule.FDQuery.Active := true;

    Result := dmSchedule.FDQuery.FieldByName('DATE').AsString;
  except
    Result := '';
  end;
end;

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
             + '||''일''||'' ('''+#13#10
             + '||'+#13#10
             + ' CASE strftime(''%w'', DATE(datetime('''+ ADate +''', ''+'+ IntToStr(I) +' days''))) '+#13#10
             + '  WHEN ''0'' THEN ''일''    '+#13#10
             + '  WHEN ''1'' THEN ''월''    '+#13#10
             + '  WHEN ''2'' THEN ''화''    '+#13#10
             + '  WHEN ''3'' THEN ''수''    '+#13#10
             + '  WHEN ''4'' THEN ''목''    '+#13#10
             + '  WHEN ''5'' THEN ''금''    '+#13#10
             + '  WHEN ''6'' THEN ''토''    '+#13#10
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
             + ' (SELECT name||''\r\n''||sequence||''회차'' FROM pt_schedule                ' + #13#10
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

Function TdmSchedule.Schedule_ID_Select(ADate : String; iAddDay, iTime : Integer) : Integer;
begin
  try
    dmSchedule.FDQuery.SQL.Clear;
    dmSchedule.FDQuery.SQL.Text := 'SELECT id                         ' +#13#10
                                 + '  FROM                            ' +#13#10
                                 + ' WHERE day = DATE(datetime('''+ ADate +''', ''+'+ IntToStr(iAddDay) +' days'')) ' +#13#10
                                 + '   AND time = ' +IntToStr(iTime);

    Result := dmSchedule.FDQuery.FieldByName('id').AsInteger;
  except
    Result := 0;
  end;
end;

Function TdmSchedule.Date_Calculation_Select(ADate : String; iAddDay : Integer) : String;
begin
  try
    dmSchedule.FDQuery.SQL.Clear;
    dmSchedule.FDQuery.SQL.Text := 'SELECT DATE(datetime('''+ ADate +''', ''+'+ IntToStr(iAddDay) +' days'')) "DATE"';

    dmSchedule.FDQuery.Active := true;

    Result := dmSchedule.FDQuery.FieldByName('DATE').AsString;
  except
    Result := '';
  end;
end;

end.
