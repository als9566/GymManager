unit ScheduleController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,Vcl.StdCtrls,
     Data.DB, ScheduleViewForm, ScheduleCreateForm;

type
  TScheduleController = class
  private

  public
    constructor DayLoad(const AView: TfmScheduleView; ADate : String);
    constructor ScheduleLoad(const AView: TfmScheduleView; ADate : String);
    constructor Date_Calculation(const AView: TfmScheduleCreate; ADate : String; iAddDay : Integer);
    constructor Member_Find(const AView: TfmScheduleCreate; AName : String);
  end;

implementation

uses
  CommonFunction, ScheduleModule, MainModule, MemberModule;

constructor TScheduleController.DayLoad(const AView: TfmScheduleView; ADate : String);
var
  Day : TDataSet;
begin
  Day := ScheduleModule.dmSchedule.PlusDay7_Select(ADate);
  AView.ShowDay(Day);
end;

constructor TScheduleController.ScheduleLoad(const AView: TfmScheduleView; ADate : String);
var
  Schedule : TDataSet;
begin
  Schedule := ScheduleModule.dmSchedule.Schedule_Detail_Select(ADate);
  AView.ShowSchedule(Schedule);
end;

constructor TScheduleController.Date_Calculation(const AView: TfmScheduleCreate; ADate : String; iAddDay : Integer);
begin
  AView.DayEdit.Text := ScheduleModule.dmSchedule.Date_Calculation_Select(ADate, iAddDay-1);
end;

constructor TScheduleController.Member_Find(const AView: TfmScheduleCreate; AName : String);
var
  Members : TDataSet;
begin
  Members := MemberModule.dmMember.Member_List_Select(AName);
  AView.MemberListShow(Members);
end;

end.
