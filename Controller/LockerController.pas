unit LockerController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs,
     Data.DB, LockerCreateForm, LockerManagingForm;

type
  TLockerController = class
  private

  public
    constructor LockerInsert(const AView: TfmLockerCreate; maxX,maxY : Integer);
    constructor LockerArraySelect(const AView: TfmLockerManaging);
  end;

implementation

uses
  CommonFunction, LockerModule;

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
          ShowMessage('등록중 에러가 발생하였습니다.');
          Abort;
        end;
      end;
    end;

    ShowMessage('정상 등록되었습니다.');

  finally
    Locker.Free;
    AView.close;
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

end.
