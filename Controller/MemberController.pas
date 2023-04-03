unit MemberController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs, MemberInsertForm;

type
  TMemberController = class
  private

  public
    constructor MemberInsert(const AView: TfmMemberInsert);
  end;

implementation

uses
  CommonFunction, MemberModule;

{** MemberInsert
* }
constructor TMemberController.MemberInsert(const AView: TfmMemberInsert);
var
  Member: TMember;
begin
  Member := TMember.Create;
  try
    Member.name := AView.NameEdit.Text;
    Member.gender := AView.GenderRadioGroup.EditValue;
    Member.birthday := AView.BirthdayDateEdit.Text;
    Member.tel := AView.Tel1Edit.Text + '-' + AView.Tel2Edit.Text + '-' + AView.Tel3Edit.Text;
    Member.address := AView.AddressEdit.Text;
    Member.start_date := AView.StartDateEdit.Text;
    Member.membership := StrToInt(AView.MembershipComboBox.Text);

    if AView.LockerDayRadioGroup.Buttons[0].Checked then
      Member.locker := StrToInt(AView.LockerDayEdit.Text);

    if AView.WearRadioGroup.Buttons[0].Checked then
      Member.wear := StrToInt(AView.WearEdit.Text);

    if AView.PTRadioGroup.Buttons[0].Checked then
      Member.pt := StrToInt(AView.PTEdit.Text);

    if MemberModule.Member.Insert(Member) = true then
    begin
      ShowMessage('정상 등록되었습니다.');
      AView.close;
    end
    else
    begin
      ShowMessage('등록중 에러가 발생하였습니다.');
    end;

  finally
    Member.Free;
  end;
end;

end.
