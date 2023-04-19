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
    Fwear       : Integer;
    Fpt         : Integer;
  public
    property name       : string  read FName       write FName;
    property gender     : string  read Fgender     write Fgender;
    property birthday   : string  read Fbirthday   write Fbirthday;
    property tel        : string  read Ftel        write Ftel;
    property address    : string  read Faddress    write Faddress;
    property start_date : string  read Fstart_date write Fstart_date;
    property membership : string read Fmembership write Fmembership;
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
begin

  try
    dmMember.FDQuery.SQL.Text := 'INSERT INTO member '
                               + '       (name, gender, birthday, tel, address,     '
                               + '       start_date, membership, locker, wear, pt) '
                               + ' VALUES(:name, :gender, :birthday, :tel, :address, '
                               + '        :start_date, :membership, :locker, :wear, :pt) ';

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

end.
