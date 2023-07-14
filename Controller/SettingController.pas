unit SettingController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,
     Data.DB, SettingViewForm;

type
  TSettingController = class
  private

  public
    constructor BasicPriceUpdate(const AView: TfmSettingView);
    constructor BasicPriceSelect(const AView: TfmSettingView);
    constructor AccountUpdate(const AView: TfmSettingView);
    constructor AccountSelect(const AView: TfmSettingView);
  end;

implementation

uses
  CommonFunction, SettingModule;

{** BasicPriceUpdate
* }
constructor TSettingController.BasicPriceUpdate(const AView: TfmSettingView);
var
  PriceSetting: TPriceSetting;
  sSqlCheck: Boolean;
begin
  PriceSetting := TPriceSetting.Create;
  try
    //PT Price
    PriceSetting.code  := 'PT';
    PriceSetting.price := StrToInt(AView.PTPriceEdit.Text);
    sSqlCheck := SettingModule.PriceSetting.Update(PriceSetting);
    //Wear Price
    PriceSetting.code  := 'WEAR';
    PriceSetting.price := StrToInt(AView.WearPriceEdit.Text);
    sSqlCheck := SettingModule.PriceSetting.Update(PriceSetting);
    //Locker Price
    PriceSetting.code  := 'LOCKER';
    PriceSetting.price := StrToInt(AView.LockerPriceEdit.Text);
    sSqlCheck := SettingModule.PriceSetting.Update(PriceSetting);
    //Membership Price
    PriceSetting.code  := 'MEMBERSHIP';
    PriceSetting.price := StrToInt(AView.MembershipPriceEdit.Text);
    sSqlCheck := SettingModule.PriceSetting.Update(PriceSetting);

    if sSqlCheck = true then
      Gym_MessageBox('정상 등록되었습니다.','알림',1);
  finally
    PriceSetting.Free;
  end;
end;

{** BasicPriceSelect
* }
constructor TSettingController.BasicPriceSelect(const AView: TfmSettingView);
var
  Price : TDataSet;
  sCode : String;
  iPrice : Integer;
begin
  Price := SettingModule.PriceSetting.Select;

  Price.Active := true;

  while not Price.Eof do
  begin
    sCode := Price.FieldByName('code').AsString;
    iPrice := Price.FieldByName('price').AsInteger;
    if sCode = 'PT' then
      AView.PTPriceEdit.Text := IntToStr(iPrice)
    else if sCode = 'WEAR' then
      AView.WearPriceEdit.Text := IntToStr(iPrice)
    else if sCode = 'LOCKER' then
      AView.LockerPriceEdit.Text := IntToStr(iPrice)
    else if sCode = 'MEMBERSHIP' then
      AView.MembershipPriceEdit.Text := IntToStr(iPrice);

    Price.Next;
  end;
end;

{** AccountUpdate
* }
constructor TSettingController.AccountUpdate(const AView: TfmSettingView);
var
  AccountSetting: TAccountSetting;
begin
  AccountSetting := TAccountSetting.Create;
  try
    AccountSetting.username := AView.UsernameEdit.Text;
    AccountSetting.password := AView.PasswordEdit.Text;
    if SettingModule.AccountSetting.Update(AccountSetting) then
      Gym_MessageBox('정상 등록되었습니다.','알림',1)
    else
      Gym_MessageBox('등록 오류.','알림',1);
  finally
    AccountSetting.Free;
  end;
end;

{** AccountSelect
* }
constructor TSettingController.AccountSelect(const AView: TfmSettingView);
var
  Account : TDataSet;
begin
  Account := SettingModule.AccountSetting.Select;

  Account.Active := true;

  AView.UsernameEdit.Text := Account.FieldByName('username').AsString;
  AView.PasswordEdit.Text := Account.FieldByName('password').AsString;
end;

end.
