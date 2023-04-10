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
    Fnum : Integer;
    Fx   : Integer;
    Fy   : Integer;
  public
    property num     : Integer read Fnum   write Fnum;
    property x       : Integer read Fx     write Fx;
    property y       : Integer read Fy     write Fy;
    Function Insert(ALocker: TLocker) :Boolean;
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

end.
