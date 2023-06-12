unit ScheduleController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,Vcl.StdCtrls,
     Data.DB, ScheduleViewForm, ScheduleCreateForm;

type
  TScheduleController = class
  private

  public
    constructor DayLoad(const AView: TfmScheduleView; ADate : String);
    constructor PlusDayLoad(const AView: TfmScheduleView; ADate : String);
    constructor MinusDayLoad(const AView: TfmScheduleView; ADate : String);
    constructor ScheduleLoad(const AView: TfmScheduleView; ADate : String);
    constructor Date_Calculation(const AView: TfmScheduleCreate; ADate : String; iAddDay : Integer);
    constructor Member_Find(const AView: TfmScheduleCreate; AName : String);
    constructor Schedule_Create(const AView: TfmScheduleCreate; ARow : Integer);
    constructor Schedule_Delete(const AView: TfmScheduleView; iAddDay, iTime : Integer);
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

constructor TScheduleController.MinusDayLoad(const AView: TfmScheduleView; ADate : String);
begin
  AView.First_Date.Text := ScheduleModule.dmSchedule.MinusDay_Select(ADate);
end;

constructor TScheduleController.PlusDayLoad(const AView: TfmScheduleView; ADate : String);
begin
  AView.First_Date.Text := ScheduleModule.dmSchedule.PlusDay_Select(ADate);
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

constructor TScheduleController.Schedule_Create(const AView: TfmScheduleCreate; ARow : Integer);
var
  Schedule: TSchedule;
begin
  Schedule := TSchedule.Create;

  try
    Schedule.day       := AView.DayEdit.Text;
    Schedule.time      := StrToInt(AView.TimeEdit.Text);
    Schedule.member_id := StrToInt(AView.MemberListGrid.Cells[1,ARow]);

    if ScheduleModule.Schedule.Insert(Schedule) = true then
    begin
      ShowMessage('정상 등록되었습니다.');
      AView.close;
    end
    else
    begin
      ShowMessage('등록중 에러가 발생하였습니다.');
    end;

  finally
    Schedule.Free;
  end;
end;

constructor TScheduleController.Schedule_Delete(const AView: TfmScheduleView; iAddDay, iTime : Integer);
var
  Schedule: TSchedule;
begin
  Schedule := TSchedule.Create;

  Schedule.id := ScheduleModule.dmSchedule.Schedule_ID_Select(AView.First_Date.Text, iAddDay, iTime);

  try
    if ScheduleModule.Schedule.Delete(Schedule) = true then
    begin
      ShowMessage('정상 삭제되었습니다.');
    end
    else
    begin
      ShowMessage('삭제중 에러가 발생하였습니다.');
    end;
  finally
    Schedule.Free;
  end;
end;

end.
