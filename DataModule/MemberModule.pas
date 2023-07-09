unit MemberModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Messages, Dialogs;


type
  TMember = class
  private
    Fname       : string;
    Fgender     : string;
    Fbirthday   : string;
    Ftel        : string;
    Faddress    : string;
    Fstart_date : string;
    Fmembership : string;
    Flocker     : Integer;
    FlockerEnd  : string;
    Fwear       : Integer;
    Fpt         : Integer;
  public
    property name       : string  read FName       write FName;
    property gender     : string  read Fgender     write Fgender;
    property birthday   : string  read Fbirthday   write Fbirthday;
    property tel        : string  read Ftel        write Ftel;
    property address    : string  read Faddress    write Faddress;
    property start_date : string  read Fstart_date write Fstart_date;
    property membership : string  read Fmembership write Fmembership;
    property lockerEnd  : string  read FlockerEnd  write FlockerEnd;
    property locker     : Integer read Flocker     write Flocker;
    property wear       : Integer read Fwear       write Fwear;
    property pt         : Integer read Fpt         write Fpt;
    Function Insert(AMember: TMember) :Boolean;
    Function MaxIdSelect : Integer;
  end;

type
  TdmMember = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    Function Member_List_Select(AName : String) :TDataSet;
    Function Managing_List_Select(AName : String) :TDataSet;
    Function Member_Detail_Select(AId : Integer) :TDataSet;
    Function Member_Count_Select :TDataSet;
    Function Member_Count_Dash(ADate : String) :TDataSet;
  end;

var
  dmMember: TdmMember;
  Member : TMember;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TMember.Insert(AMember: TMember): Boolean;
var
  sLockerEnd : String;
begin

  try

    //Result := dmMember.FDQuery.FieldByName('MaxId').AsInteger;

  except
    //Result := 0;
  end;

  try

    if AMember.lockerEnd <> '' then
    begin
      dmMember.FDQuery.SQL.Text := 'select date(''' + AMember.start_date +''', ''+'+AMember.lockerEnd+' months'') "End"';
      dmMember.FDQuery.Active := true;

      sLockerEnd := dmMember.FDQuery.FieldByName('End').AsString;
    end;

    dmMember.FDQuery.SQL.Text := 'INSERT INTO member '
                               + '       (name, gender, birthday, tel, address,     '
                               + '       start_date, membership, locker, wear, pt,  '
                               + '       locker_end )                               '
                               + ' VALUES(:name, :gender, :birthday, :tel, :address, '
                               + '        :start_date, :membership, :locker, :wear, :pt, '
                               + '        :locker_end )';

    dmMember.FDQuery.ParamByName('name').AsString := AMember.name;
    dmMember.FDQuery.ParamByName('gender').AsString := AMember.gender;
    dmMember.FDQuery.ParamByName('birthday').AsString := AMember.birthday;
    dmMember.FDQuery.ParamByName('tel').AsString := AMember.tel;
    dmMember.FDQuery.ParamByName('address').AsString := AMember.address;
    dmMember.FDQuery.ParamByName('start_date').AsString := AMember.start_date;
    dmMember.FDQuery.ParamByName('membership').AsString := AMember.membership;
    dmMember.FDQuery.ParamByName('locker').AsInteger := AMember.locker;
    dmMember.FDQuery.ParamByName('wear').AsInteger := AMember.wear;
    dmMember.FDQuery.ParamByName('pt').AsInteger := AMember.pt;

    if AMember.lockerEnd <> '' then
      dmMember.FDQuery.ParamByName('locker_end').AsString := sLockerEnd
    else
      dmMember.FDQuery.ParamByName('locker_end').AsString := '';

    dmMember.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;

end;

Function TMember.MaxIdSelect : Integer;
begin
  try
    dmMember.FDQuery.SQL.Text := 'SELECT max(id) "MaxId"'
                              + '  FROM member        ';

    dmMember.FDQuery.Active := true;
    Result := dmMember.FDQuery.FieldByName('MaxId').AsInteger;

  except
    Result := 0;
  end;
end;

Function TdmMember.Member_List_Select(AName : String) :TDataSet;
begin
  try
    dmMember.FDQuery.SQL.Clear;
    dmMember.FDQuery.SQL.Text := 'SELECT ID, NAME, GENDER, TEL, PT   ' +#13#10
                               + '  FROM MEMBER                      ' +#13#10
                               + ' WHERE NAME LIKE ''%'+ AName +'%'' ';

    Result := dmMember.FDQuery;
  except
    Result := nil;
  end;
end;

Function TdmMember.Member_Count_Select :TDataSet;
begin
  try
    dmMember.FDQuery.SQL.Clear;
    dmMember.FDQuery.SQL.Text := 'SELECT                                                                                              '
	                             + '      COUNT(*) "전체"                                                                               '
                               + '      ,sum(                                                                                         '
                               + '        case                                                                                        '
                               + '           when julianday(date(START_DATE, ''+''||replace(membership, ''개월'', '''')||'' months''))  '
                               + '                  - julianday(strftime(''%Y-%m-%d'', ''now'')) > 0 THEN  1                          '
                               + '           else 0                                                                                   '
                               + '        end                                                                                         '
                               + '       ) "진행"                                                                                     '
                               + '  FROM MEMBER';

    Result := dmMember.FDQuery;
  except
    Result := nil;
  end;
end;

Function TdmMember.Managing_List_Select(AName : String) :TDataSet;
begin
  try
    dmMember.FDQuery.SQL.Clear;
    dmMember.FDQuery.SQL.Text := 'SELECT id                                                                                                                                                    ' +#13#10
                               + '      ,name                                                                                                                                                  ' +#13#10
                               + '      ,gender                                                                                                                                                ' +#13#10
                               + '      ,birthday                                                                                                                                              ' +#13#10
                               + '      ,tel                                                                                                                                                   ' +#13#10
                               + '      ,date(START_DATE, ''+''||replace(membership, ''개월'', '''')||'' months'') "회원만료일"                                                                ' +#13#10
                               + '      ,case                                                                                                                                                  ' +#13#10
                               + '         when julianday(date(START_DATE, ''+''||replace(membership, ''개월'', '''')||'' months'')) - julianday(strftime(''%Y-%m-%d'', ''now'')) > 0 THEN     ' +#13#10
                               + '            julianday(date(START_DATE, ''+''||replace(membership, ''개월'', '''')||'' months'')) - julianday(strftime(''%Y-%m-%d'', ''now''))                ' +#13#10
                               + '         else 0                                                                                                                                              ' +#13#10
                               + '       end as "회원 잔여 일수"                                                                                                                               ' +#13#10
                               + '      ,case                                                                                                                                                  ' +#13#10
                               + '         when pt > 0 then pt||''회''                                                                                                                         ' +#13#10
                               + '         else ''X''                                                                                                                                          ' +#13#10
                               + '       end as "PT 잔여 횟수"                                                                                                                                 ' +#13#10
                               + '      ,(select num from locker                                                                                                                               ' +#13#10
                               + '        where id = locker) "락커넘버"                                                                                                                        ' +#13#10
                               + '      ,case                                                                                                                                                  ' +#13#10
                               + '         when wear > 0 THEN date(START_DATE, ''+''||replace(wear, ''개월'', '''')||'' months'')                                                              ' +#13#10
                               + '         else ''X''                                                                                                                                          ' +#13#10
                               + '       end as "운동복 만료일"                                                                                                                                ' +#13#10
                               + '      ,case                                                                                                                                                  ' +#13#10
                               + '         when julianday(date(START_DATE, ''+''||replace(wear, ''개월'', '''')||'' months'')) - julianday(strftime(''%Y-%m-%d'', ''now'')) > 0 THEN           ' +#13#10
                               + '            julianday(date(START_DATE, ''+''||replace(wear, ''개월'', '''')||'' months'')) - julianday(strftime(''%Y-%m-%d'', ''now''))                      ' +#13#10
                               + '         else 0                                                                                                                                              ' +#13#10
                               + '       end as "운동복 잔여 일수"                                                                                                                             ' +#13#10
                               + '      ,(select sum(membership_price)                                                                                                                         ' +#13#10
                               + '             + sum(pt_price)                                                                                                                                 ' +#13#10
                               + '             + sum(locker_price)                                                                                                                             ' +#13#10
                               + '          from payment_details                                                                                                                               ' +#13#10
                               + '         where id = member_id) "총결제금액"                                                                                                                  ' +#13#10
                               + '  FROM MEMBER                                                                                                                                                ' +#13#10
                               + ' WHERE NAME LIKE ''%'+ AName +'%'' ';

    Result := dmMember.FDQuery;
  except
    Result := nil;
  end;
end;

Function TdmMember.Member_Detail_Select(AId : Integer) :TDataSet;
begin
  try
    dmMember.FDQuery.SQL.Clear;
    dmMember.FDQuery.SQL.Text := 'SELECT name        '
                               + '     , gender      '
                               + '     , tel         '
                               + '     , birthday    '
                               + '     , start_date  '
                               + '     , address     '
                               + '     , ''잔여 : ''|| pt||''회, 진행 : ''||     '
                               + '       (select count(*) from pt_schedule   '
                               + '         where member_id = :id) "pt잔여"   '
                               + '     ,case                                 '
                               + '        when julianday(date(START_DATE, ''+''||replace(wear, ''개월'', '''')||'' months'')) - julianday(strftime(''%Y-%m-%d'', ''now'')) > 0 THEN  '
                               + '          julianday(date(START_DATE, ''+''||replace(wear, ''개월'', '''')||'' months'')) - julianday(strftime(''%Y-%m-%d'', ''now''))              '
                               + '        else 0                             '
                               + '      end as "운동복 잔여"                 '
                               + '     ,case                                 '
                               + '        when wear > 0 THEN date(START_DATE, ''+''||replace(wear, ''개월'', '''')||'' months'')  '
                               + '        else ''X''                         '
                               + '      end as "운동복 만료일"               '
                               + '     ,case                                 '
                               + '        when julianday(locker_end) - julianday(strftime(''%Y-%m-%d'', ''now'')) > 0 THEN        '
                               + '          julianday(locker_end) - julianday(strftime(''%Y-%m-%d'', ''now''))                    '
                               + '        else 0                             '
                               + '      end as "락커 잔여일"                 '
                               + '     ,case                                 '
                               + '        when locker_end is null THEN       '
                               + '          ''X''                            '
                               + '        else locker_end                    '
                               + '      end as "락커 만료일"                 '
                               + '  FROM member      '
                               + ' WHERE id = :id    ';

    dmMember.FDQuery.ParamByName('id').AsInteger := AId;

    Result := dmMember.FDQuery;
  except
    Result := nil;
  end;
end;

Function TdmMember.Member_Count_Dash(ADate : String) :TDataSet;
var
  sSelect : String;
  I : Integer;
begin

  sSelect := '(SELECT SUM(date(START_DATE) <= date(strftime(''%Y-%m-%d'', '''+ADate+'''), ''-0 DAY''))) "0" ';
  for I := 1 to 6 do
  begin
    sSelect := sSelect
    + ', (SELECT SUM(date(START_DATE) <= date(strftime(''%Y-%m-%d'', '''+ADate+'''), ''-'+IntToStr(I)+' DAY''))) "'+IntToStr(I)+'" ';
  end;

  try
    dmMember.FDQuery.SQL.Clear;
    dmMember.FDQuery.SQL.Text := 'SELECT '
                               +  sSelect
                               + ' FROM MEMBER';

    Result := dmMember.FDQuery;
  except
    Result := nil;
  end;
end;

end.
