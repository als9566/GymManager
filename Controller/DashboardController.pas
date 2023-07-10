unit DashboardController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,
     DashboardForm, Data.DB;

type
  TDashboardController = class
  private

  public
    constructor GetMemberCnt(const AView: TfmDashboard; ADate: String);
    constructor GetDay7(const AView: TfmDashboard; ADate: String);
    constructor GetMemberGender(const AView: TfmDashboard; ADate: String);
    constructor GetLockerCnt(const AView: TfmDashboard);
    constructor GetPTCnt(const AView: TfmDashboard; ADate: String);
    constructor GetPayment(const AView: TfmDashboard; ADate: String);
    constructor GetPaymentPercent(const AView: TfmDashboard; ADate: String);
  end;

implementation

uses
  CommonFunction, MemberModule, DashboardModule, LockerModule,
  ScheduleModule, PaymentDetailsModule;

{** GetMemberCnt
* }
constructor TDashboardController.GetMemberCnt(const AView: TfmDashboard; ADate: String);
var
  MemberCnt : TDataSet;
begin
  MemberCnt := MemberModule.dmMember.Member_Count_Dash(ADate);
  AView.MemberCntShow(MemberCnt);
end;

{** GetMemberGender
* }
constructor TDashboardController.GetMemberGender(const AView: TfmDashboard; ADate: String);
var
  Gender : TDataSet;
begin
  Gender := MemberModule.dmMember.Member_Gender_Dash(ADate);
  AView.GenderShow(Gender);
end;

{** GetLockerCnt
* }
constructor TDashboardController.GetLockerCnt(const AView: TfmDashboard);
var
  LockerCnt : TDataSet;
begin
  LockerCnt := LockerModule.Locker.Count_Select;
  AView.LockerCntShow(LockerCnt);
end;

{** GetPTCnt
* }
constructor TDashboardController.GetPTCnt(const AView: TfmDashboard; ADate: String);
var
  PTCnt : TDataSet;
begin
  PTCnt := ScheduleModule.dmSchedule.Member_Gender_Dash(ADate);
  AView.PTCntShow(PTCnt);
end;

{** GetPayment
* }
constructor TDashboardController.GetPayment(const AView: TfmDashboard; ADate: String);
var
  Payment : TDataSet;
begin
  Payment := PaymentDetailsModule.PaymentDetails.Payment_Dash(ADate);
  AView.PaymentShow(Payment);
end;

{** GetPaymentPercent
* }
constructor TDashboardController.GetPaymentPercent(const AView: TfmDashboard; ADate: String);
var
  Payment : TDataSet;
begin
  Payment := PaymentDetailsModule.PaymentDetails.Payment_Percent_Dash(ADate);
  AView.PaymentPercentShow(Payment);
end;

{** GetDay7
* }
constructor TDashboardController.GetDay7(const AView: TfmDashboard; ADate: String);
var
  Day : TDataSet;
begin
  Day := DashboardModule.dmDashboard.Day7_Select(ADate);
  AView.setDay(Day);
end;

end.
