unit ScheduleController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,Vcl.StdCtrls,
     Data.DB, ScheduleViewForm;

type
  TScheduleController = class
  private

  public
    constructor DayLoad(const AView: TfmScheduleView; ADate : String);
  end;

implementation

uses
  CommonFunction, ScheduleModule, MainModule;

constructor TScheduleController.DayLoad(const AView: TfmScheduleView; ADate : String);
var
  Day : TDataSet;
begin
  Day := ScheduleModule.dmSchedule.PlusDay7_Select(ADate);
  AView.ShowDay(Day);
end;

end.
