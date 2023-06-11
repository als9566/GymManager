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
    constructor Schedule_Create(const AView: TfmScheduleCreate; ARow : Integer);
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

end.
