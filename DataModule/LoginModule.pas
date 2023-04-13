unit LoginModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TLogin = class
  private
    Fusername : String;
    Fpassword : String;
  public
    property username  : String read Fusername  write Fusername;
    property password  : String read Fpassword  write Fpassword;
    Function Check(ALogin: TLogin) :Boolean;
  end;

type
  TdmLogin = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLogin: TdmLogin;
  Login : TLogin;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TLogin.Check(ALogin: TLogin): Boolean;
begin
  try
    dmLogin.FDQuery.SQL.Text := 'SELECT username'
                              + '  FROM user    '
                              + ' WHERE username = :username '
                              + '   AND password = :password ';

    dmLogin.FDQuery.ParamByName('username').AsString := ALogin.username;
    dmLogin.FDQuery.ParamByName('password').AsString := ALogin.password;

    dmLogin.FDQuery.Active := true;

    if dmLogin.FDQuery.RecordCount = 1 then
      Result := true
    else
      Result := false;
  except
    Result := false;
  end;
end;

end.
