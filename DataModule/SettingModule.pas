unit SettingModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPriceSetting = class
  private
    Fcode  : String;
    Fprice : Integer;
  public
    property code      : String  read Fcode    write Fcode;
    property price     : Integer read Fprice   write Fprice;
    Function Insert(APriceSetting: TPriceSetting) :Boolean;
    Function Update(APriceSetting: TPriceSetting) :Boolean;
    Function Select :TDataSet;
  end;

type
  TAccountSetting = class
  private
    Fusername : String;
    Fpassword : String;
  public
    property username  : String  read Fusername   write Fusername;
    property password  : String  read Fpassword   write Fpassword;
    Function Update(AaccountSetting: TAccountSetting) :Boolean;
    Function Select :TDataSet;
  end;

type
  TdmSetting = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmSetting: TdmSetting;
  PriceSetting : TPriceSetting;
  AccountSetting : TAccountSetting;

implementation

uses
  MainModule, MainForm;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TPriceSetting.Insert(APriceSetting: TPriceSetting): Boolean;
begin
  try
    dmSetting.FDQuery.SQL.Text := 'INSERT INTO basic_price '
                               + '       ( code,  price)  '
                               + ' VALUES(:code, :price)  ';

    dmSetting.FDQuery.ParamByName('code').AsString   := APriceSetting.code;
    dmSetting.FDQuery.ParamByName('price').AsInteger := APriceSetting.price;

    dmSetting.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;
end;

Function TPriceSetting.Update(APriceSetting: TPriceSetting): Boolean;
begin
  try
    dmSetting.FDQuery.SQL.Text := 'UPDATE basic_price     '
                               + '    SET price  = :price '
                               + '  WHERE code   = :code  ';

    dmSetting.FDQuery.ParamByName('code').AsString   := APriceSetting.code;
    dmSetting.FDQuery.ParamByName('price').AsInteger := APriceSetting.price;

    dmSetting.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;
end;

Function TPriceSetting.Select :TDataSet;
begin
  try
    dmSetting.FDQuery.SQL.Text := 'SELECT code, price FROM basic_price ';

    Result := dmSetting.FDQuery;
  except
    Result := nil;
  end;
end;

Function TAccountSetting.Update(AaccountSetting: TAccountSetting): Boolean;
begin
  try
    dmSetting.FDQuery.SQL.Text := 'UPDATE user                  '
                               + '    SET password  = :password '
                               + '  WHERE username  = :username ';

    dmSetting.FDQuery.ParamByName('username').AsString  := MainForm.sUserName;
    dmSetting.FDQuery.ParamByName('password').AsString := AaccountSetting.password;

    dmSetting.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;
end;

Function TAccountSetting.Select :TDataSet;
begin
  try
    dmSetting.FDQuery.SQL.Text := 'SELECT username, password   '
                                + '  FROM user                 '
                                + ' WHERE username = :username ';

    dmSetting.FDQuery.ParamByName('username').AsString := MainForm.sUserName;

    Result := dmSetting.FDQuery;
  except
    Result := nil;
  end;
end;

end.
