unit LoginController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs, LoginForm;

type
  TLoginController = class
  private

  public
    constructor LoginCheck(const AView: TfmLogin);
  end;

implementation

uses
  CommonFunction, LoginModule;

{** LoginCheck
* }
constructor TLoginController.LoginCheck(const AView: TfmLogin);
var
  Login: TLogin;
begin

  Login := TLogin.Create;

  try
    Login.username := AView.NameEdit.Text;
    Login.password := AView.PasswordEdit.Text;

    if LoginModule.Login.Check(Login) = False then
    begin
      AView.msgLabel.Caption := '���̵� �� ��й�ȣ�� Ȯ�����ּ���...';
      AView.bcheck := False;
    end
    else
    begin
      AView.bcheck := true;
    end;

  finally
    Login.Free;
  end;

end;

end.
