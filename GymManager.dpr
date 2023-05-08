program GymManager;

uses
  Vcl.Forms,
  MainForm in 'MainForm.pas' {GymManagerForm},
  MemberManagingForm in 'View\Member\MemberManagingForm.pas' {fmMemberManaging},
  CommonFunction in 'CommonFunction.pas',
  MemberInsertForm in 'View\Member\MemberInsertForm.pas' {fmMemberInsert},
  BlurForm in 'View\BlurForm.pas' {fmBlur},
  MemberController in 'Controller\MemberController.pas',
  MemberModule in 'DataModule\MemberModule.pas' {dmMember: TDataModule},
  MainModule in 'DataModule\MainModule.pas' {dmMain: TDataModule},
  LockerManagingForm in 'View\Locker\LockerManagingForm.pas' {fmLockerManaging},
  LockerCreateForm in 'View\Locker\LockerCreateForm.pas' {fmLockerCreate},
  GBlur2 in 'Function\GBlur2.pas',
  ShadowBox in 'Function\ShadowBox.pas',
  LockerController in 'Controller\LockerController.pas',
  LockerModule in 'DataModule\LockerModule.pas' {dmLocker: TDataModule},
  LoginForm in 'View\Login\LoginForm.pas' {fmLogin},
  LoginController in 'Controller\LoginController.pas',
  LoginModule in 'DataModule\LoginModule.pas' {dmLogin: TDataModule},
  ScheduleViewForm in 'View\Schedule\ScheduleViewForm.pas' {fmScheduleView},
  SettingViewForm in 'View\Setting\SettingViewForm.pas' {fmSettingView},
  SettingController in 'Controller\SettingController.pas',
  SettingModule in 'DataModule\SettingModule.pas' {dmSetting: TDataModule},
  BasicPriceController in 'Controller\BasicPriceController.pas',
  BasicPriceModule in 'DataModule\BasicPriceModule.pas' {dmBasicPrice: TDataModule},
  PaymentDetailsModule in 'DataModule\PaymentDetailsModule.pas' {dmPaymentDetails: TDataModule},
  LockerModifyForm in 'View\Locker\LockerModifyForm.pas' {fmLockerModify};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGymManagerForm, GymManagerForm);
  Application.CreateForm(TdmMember, dmMember);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TdmLocker, dmLocker);
  Application.CreateForm(TdmLogin, dmLogin);
  Application.CreateForm(TdmSetting, dmSetting);
  Application.CreateForm(TdmBasicPrice, dmBasicPrice);
  Application.CreateForm(TdmPaymentDetails, dmPaymentDetails);
  Application.CreateForm(TfmLockerManaging, fmLockerManaging);
  Application.CreateForm(TfmLockerModify, fmLockerModify);
  Application.Run;
end.
