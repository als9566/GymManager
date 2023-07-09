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
  end;

implementation

uses
  CommonFunction, MemberModule, DashboardModule;

{** GetMemberCnt
* }
constructor TDashboardController.GetMemberCnt(const AView: TfmDashboard; ADate: String);
var
  MemberCnt : TDataSet;
begin
  MemberCnt := MemberModule.dmMember.Member_Count_Dash(ADate);
  AView.MemberCntShow(MemberCnt);
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