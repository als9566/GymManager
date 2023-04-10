unit LockerController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs, LockerCreateForm;

type
  TLockerController = class
  private

  public
    constructor LockerInsert(const AView: TfmLockerCreate; maxX,maxY : Integer);
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
          ShowMessage('����� ������ �߻��Ͽ����ϴ�.');
          Abort;
        end;
      end;
    end;

    ShowMessage('���� ��ϵǾ����ϴ�.');

  finally
    Locker.Free;
    AView.close;
  end;

end;

end.
