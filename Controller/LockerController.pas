unit LockerController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,Vcl.StdCtrls,
     Data.DB, LockerCreateForm, LockerManagingForm, MemberInsertForm, LockerModifyForm;

type
  TLockerController = class
  private

  public
    constructor LockerInsert(const AView: TfmLockerCreate; maxX,maxY : Integer);
    constructor LockerModify(const AView: TfmLockerModify; maxX,maxY : Integer);
    constructor LockerArraySelect(const AView: TfmLockerManaging);
    constructor MemberLockerSelect(const AView: TfmMemberInsert);
    constructor LockerModifySelect(const AView: TfmLockerModify);
    constructor CountSelect(const AView: TfmLockerManaging);
  end;

implementation

uses
  CommonFunction, LockerModule, MainModule;

{** LockerInsert
* }
constructor TLockerController.LockerInsert(const AView: TfmLockerCreate; maxX,maxY : Integer);
var
  Locker: TLocker;
  I, J : Integer;
  iNumCnt : Integer;
begin
  iNumCnt := 0;

  Locker := TLocker.Create;
  try
    for I := 1 to maxY do
    begin
      for J := 1 to maxX do
      begin
        inc(iNumCnt);
        Locker.num := iNumCnt;
        Locker.x := J;
        Locker.Y := I;
        if LockerModule.Locker.Insert(Locker) = false then
        begin
          Gym_MessageBox('등록중 에러가 발생하였습니다.','알림',1);
          Abort;
        end;
      end;
    end;

    Gym_MessageBox('정상 등록되었습니다.','알림',1);

  finally
    Locker.Free;
    AView.close;
  end;
end;

{** LockerModify
* }
constructor TLockerController.LockerModify(const AView: TfmLockerModify; maxX,maxY : Integer);
var
  Locker: TLocker;
  I, J : Integer;
  sComponent : TComponent;
begin

  Locker := TLocker.Create;
  try
    for I := 1 to maxY do
    begin
      for J := 1 to maxX do
      begin
        sComponent := AView.FindComponent(Format('LockerEdit_%d_%d',[J,I]));

        if TEdit(sComponent).Text = '' then
        begin
          MainModule.dmMain.GymConnection.Rollback;
          Gym_MessageBox('락커번호를 입력해주세요.','알림',1);
          Abort;
        end;


        Locker.num := StrToInt(TEdit(sComponent).Text);
        Locker.x := J;
        Locker.Y := I;

        sComponent := AView.FindComponent(Format('LockerPanel_%d_%d',[J,I]));

        if sComponent.Tag <> 0 then
        begin
          Locker.id := sComponent.Tag;
          if LockerModule.Locker.Update(Locker) = false then
          begin
            Gym_MessageBox('등록중 에러가 발생하였습니다.','알림',1);
            Abort;
          end;
        end
        else
        begin
          if LockerModule.Locker.Insert(Locker) = false then
          begin
            Gym_MessageBox('등록중 에러가 발생하였습니다.','알림',1);
            Abort;
          end;
        end;
      end;
    end;

    //Delete
    Locker.x := maxX;
    Locker.y := maxY;

    if LockerModule.Locker.Delete(Locker) = false then
    begin
      Gym_MessageBox('등록중 에러가 발생하였습니다.','알림',1);
      Abort;
    end;

    Gym_MessageBox('정상 등록되었습니다.','알림',1);
    AView.close;

  finally
    Locker.Free;
  end;
end;

constructor TLockerController.LockerArraySelect(const AView: TfmLockerManaging);
var
  Locker : TDataSet;
begin
  LockerManagingForm.iMaxX := LockerModule.Locker.Max_Select_X;
  LockerManagingForm.iMaxY := LockerModule.Locker.Max_Select_Y;
  Locker := LockerModule.Locker.Select();
  AView.ShowData(Locker);
end;

constructor TLockerController.MemberLockerSelect(const AView: TfmMemberInsert);
var
  Locker : TDataSet;
begin
  MemberInsertForm.iMaxX := LockerModule.Locker.Max_Select_X;
  MemberInsertForm.iMaxY := LockerModule.Locker.Max_Select_Y;
  Locker := LockerModule.Locker.Select();
  AView.ShowLockerData(Locker);
end;

constructor TLockerController.LockerModifySelect(const AView: TfmLockerModify);
var
  Locker : TDataSet;
begin
  LockerModifyForm.LockerX := LockerModule.Locker.Max_Select_X;
  LockerModifyForm.LockerY := LockerModule.Locker.Max_Select_Y;
  Locker := LockerModule.Locker.Select();
  AView.ShowData(Locker);
end;

constructor TLockerController.CountSelect(const AView: TfmLockerManaging);
var
  LockerCnt : TDataSet;
begin
  LockerCnt := LockerModule.Locker.Count_Select;
  AView.BaseSetting(LockerCnt);
end;

end.
