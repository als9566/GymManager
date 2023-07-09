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
  end;

implementation

uses
  CommonFunction, MemberModule, DashboardModule, LockerModule;

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
