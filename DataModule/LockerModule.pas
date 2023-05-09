unit LockerModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TLocker = class
  private
    Fid  : Integer;
    Fnum : Integer;
    Fx   : Integer;
    Fy   : Integer;
  public
    property id      : Integer read Fid    write Fid;
    property num     : Integer read Fnum   write Fnum;
    property x       : Integer read Fx     write Fx;
    property y       : Integer read Fy     write Fy;
    Function Insert(ALocker: TLocker) :Boolean;
    Function Update(ALocker: TLocker) :Boolean;
    Function Delete(ALocker: TLocker) :Boolean;
    Function Select :TDataSet;
    Function Max_Select_X : Integer;
    Function Max_Select_Y : Integer;
  end;

type
  TdmLocker = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLocker: TdmLocker;
  Locker : TLocker;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TLocker.Insert(ALocker: TLocker): Boolean;
begin

  try
    dmLocker.FDQuery.SQL.Text := 'INSERT INTO locker '
                               + '       ( num,  x,  y) '
                               + ' VALUES(:num, :x, :y) ';

    dmLocker.FDQuery.ParamByName('num').AsInteger := ALocker.num;
    dmLocker.FDQuery.ParamByName('x').AsInteger := ALocker.x;
    dmLocker.FDQuery.ParamByName('y').AsInteger := ALocker.y;

    dmLocker.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;

end;

Function TLocker.Update(ALocker: TLocker): Boolean;
begin
  try
    dmLocker.FDQuery.SQL.Text := ' UPDATE locker      '
                               + '    SET num  = :num '
                               + '      , x    = :x   '
                               + '      , y    = :y   '
                               + '  WHERE id   = :id  ';

    dmLocker.FDQuery.ParamByName('id').AsInteger  := ALocker.id;
    dmLocker.FDQuery.ParamByName('num').AsInteger := ALocker.num;
    dmLocker.FDQuery.ParamByName('x').AsInteger   := ALocker.x;
    dmLocker.FDQuery.ParamByName('y').AsInteger   := ALocker.y;

    dmLocker.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;
end;

Function TLocker.Delete(ALocker: TLocker): Boolean;
begin
  try
    dmLocker.FDQuery.SQL.Text := ' DELETE FROM locker      '
                               + '  WHERE x > :x OR y > :y  ';

    dmLocker.FDQuery.ParamByName('x').AsInteger   := ALocker.x;
    dmLocker.FDQuery.ParamByName('y').AsInteger   := ALocker.y;

    dmLocker.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;
end;

Function TLocker.Select :TDataSet;
begin
  try
    dmLocker.FDQuery.SQL.Text := 'SELECT locker.id, locker.num, locker.x, locker.y                                               '
                               + '     , member.name                                                                             '
                               + '     , julianday(locker_end) - julianday(strftime(''%Y-%m-%d'', ''now'')) "locker_end"         '
                               + '  FROM locker                                                                                  '
                               + '  LEFT OUTER JOIN (SELECT * FROM member                                                        '
                               + '                    WHERE julianday(locker_end) >= julianday(strftime(''%Y-%m-%d'', ''now''))  '
                               + '                   ) member                                                                    '
                               + '    ON locker.id = member.locker                                                               '
                               + ' ORDER BY locker.y, locker.x                                                                   ';

    Result := dmLocker.FDQuery;
  except
    Result := nil;
  end;
end;

Function TLocker.Max_Select_X : Integer;
begin
  try
    dmLocker.FDQuery.SQL.Text := 'SELECT max(x) "MaxX"'
                              + '  FROM locker        ';

    dmLocker.FDQuery.Active := true;
    Result := dmLocker.FDQuery.FieldByName('MaxX').AsInteger;

  except
    Result := 0;
  end;
end;

Function TLocker.Max_Select_Y : Integer;
begin
  try
    dmLocker.FDQuery.SQL.Text := 'SELECT max(y) "MaxY"'
                              + '  FROM locker        ';

    dmLocker.FDQuery.Active := true;
    Result := dmLocker.FDQuery.FieldByName('MaxY').AsInteger;

  except
    Result := 0;
  end;
end;

end.
