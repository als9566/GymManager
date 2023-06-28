unit MemberController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,
     MemberInsertForm, MemberManagingForm, MemberDetailForm, Data.DB;

type
  TMemberController = class
  private

  public
    constructor MemberInsert(const AView: TfmMemberInsert; AChoiceLocker: Integer);
    constructor MemberSelect(const AView: TfmMemberManaging);
    constructor MemberDetailSelect(const AView: TfmMemberDetail; AMemberId: Integer);
    constructor MemberCount(const AView: TfmMemberManaging);
    constructor ScheduleSelect(const AView: TfmMemberDetail; AMemberId: Integer);
    constructor PaymentSelect(const AView: TfmMemberDetail; AMemberId: Integer);
  end;

implementation

uses
  CommonFunction, MemberModule, PaymentDetailsModule, ScheduleModule;

{** MemberInsert
* }
constructor TMemberController.MemberInsert(const AView: TfmMemberInsert; AChoiceLocker: Integer);
var
  Member: TMember;
  PaymentDetails : TPaymentDetails;
begin
  Member := TMember.Create;
  PaymentDetails := TPaymentDetails.Create;

  try
    Member.name := AView.NameEdit.Text;
    Member.gender := AView.GenderRadioGroup.EditValue;
    Member.birthday := AView.BirthdayDateEdit.Text;
    Member.tel := AView.Tel1Edit.Text + '-' + AView.Tel2Edit.Text + '-' + AView.Tel3Edit.Text;
    Member.address := AView.AddressEdit.Text;
    Member.start_date := AView.StartDateEdit.Text;
    Member.membership := AView.MembershipComboBox.Text;
    if AView.LockerDayRadioGroup.Buttons[0].Checked then
      Member.locker := AChoiceLocker;

    if AView.LockerDayRadioGroup.Buttons[0].Checked then
      Member.lockerEnd := AView.LockerDayEdit.Text
    else
      Member.lockerEnd := '';

    if AView.WearRadioGroup.Buttons[0].Checked then
      Member.wear := StrToInt(AView.WearEdit.Text);

    if AView.PTRadioGroup.Buttons[0].Checked then
      Member.pt := StrToInt(AView.PTEdit.Text);

    if MemberModule.Member.Insert(Member) = true then
    begin
      PaymentDetails.memberId         := MemberModule.Member.MaxIdSelect;
      PaymentDetails.paymentDetailsNo := 1;
      PaymentDetails.membership       := IntToStr(AView.MembershipComboBox.ItemIndex+1)+'����';
      PaymentDetails.membershipPrice  := StrToInt(CommaDelete(AView.MembershipPriceEdit.Text));

      if AView.PTRadioGroup.Buttons[0].Checked then
      begin
        PaymentDetails.pt      := AView.PTEdit.Text+'ȸ';
        PaymentDetails.ptPrice := StrToInt(CommaDelete(AView.PTPriceEdit.Text));
      end
      else
      begin
        PaymentDetails.pt      := '';
        PaymentDetails.ptPrice := 0;
      end;

      if AView.WearRadioGroup.Buttons[0].Checked then
      begin
        PaymentDetails.wear      := AView.WearEdit.Text+'����';
        PaymentDetails.wearPrice := StrToInt(CommaDelete(AView.WearPriceEdit.Text));
      end
      else
      begin
        PaymentDetails.wear      := '';
        PaymentDetails.wearPrice := 0;
      end;

      if AView.LockerDayRadioGroup.Buttons[0].Checked then
      begin
        PaymentDetails.locker      := AView.LockerDayEdit.Text+'����';
        PaymentDetails.lockerPrice := StrToInt(CommaDelete(AView.LockerPriceEdit.Text));
      end
      else
      begin
        PaymentDetails.locker      := '';
        PaymentDetails.lockerPrice := 0;
      end;

      if PaymentDetailsModule.PaymentDetails.Insert(PaymentDetails) = true then
      begin
        ShowMessage('���� ��ϵǾ����ϴ�.');
        AView.close;
      end;
    end
    else
    begin
      ShowMessage('����� ������ �߻��Ͽ����ϴ�.');
    end;

  finally
    Member.Free;
    PaymentDetails.Free;
  end;
end;

{** MemberSelect
* }
constructor TMemberController.MemberSelect(const AView: TfmMemberManaging);
var
  Members : TDataSet;
begin
  Members := MemberModule.dmMember.Managing_List_Select(AView.SearchEdit.Text);
  AView.MemberListShow(Members);
end;

{** MemberCount
* }
constructor TMemberController.MemberCount(const AView: TfmMemberManaging);
var
  MemberCnt : TDataSet;
begin
  MemberCnt := MemberModule.dmMember.Member_Count_Select;

  MemberCnt.Active := true;

  AView.MemberTotalCnt.Caption := FormatFloat('##,###,##0', MemberCnt.FieldByName('��ü').AsInteger);
  AView.MemberIngCnt.Caption := FormatFloat('##,###,##0', MemberCnt.FieldByName('����').AsInteger);
  AView.MemberEndCnt.Caption := FormatFloat('##,###,##0', MemberCnt.FieldByName('��ü').AsInteger
                                                        - MemberCnt.FieldByName('����').AsInteger);
end;

{** MemberDetailSelect
* }
constructor TMemberController.MemberDetailSelect(const AView: TfmMemberDetail; AMemberId: Integer);
var
  MemberDetail : TDataSet;
begin
  MemberDetail := MemberModule.dmMember.Member_Detail_Select(AMemberId);
  AView.MemberDetailShow(MemberDetail);
end;

{** ScheduleSelect
* }
constructor TMemberController.ScheduleSelect(const AView: TfmMemberDetail; AMemberId: Integer);
var
  Schedules : TDataSet;
begin
  Schedules := ScheduleModule.dmSchedule.Schedule_MemberId_Select(AMemberId);
  AView.ScheduleHistoryShow(Schedules);
end;

{** PaymentSelect
* }
constructor TMemberController.PaymentSelect(const AView: TfmMemberDetail; AMemberId: Integer);
var
  Payments : TDataSet;
begin
  Payments := PaymentDetailsModule.PaymentDetails.PaymentDetails_MemberId_Select(AMemberId);
  AView.PaymentDetailShow(Payments);
end;

end.
