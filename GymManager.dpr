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
  MainModule in 'DataModule\MainModule.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TGymManagerForm, GymManagerForm);
  Application.CreateForm(TfmMemberManaging, fmMemberManaging);
  Application.CreateForm(TfmMemberInsert, fmMemberInsert);
  Application.CreateForm(TfmBlur, fmBlur);
  Application.CreateForm(TdmMember, dmMember);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
