unit CommonFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, MessagePopUp;

// Control 모서리 둥글게 만들기
procedure DrawRounded(Control: TWinControl; N: Integer);
// 숫자에 콤마찍기
function NumberComma(number : string): String;
// 콤마제거
function CommaDelete(number : string): String;
// 메시지 모달창 띄우기
function Gym_MessageBox(AContents, ATitle : String; AType : Integer) : Integer;

implementation

uses
  MainForm;

{** Control 모서리를 둥글게 만든다.
  @param [Control] 둥글게 만들 컨트롤
  @param [   N   ] 둥근정도
* }
procedure DrawRounded(Control: TWinControl; N: Integer);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, N, N) ;
    Perform(EM_GETRECT, 0, lParam(@r)) ;
    InflateRect(r, - 4, - 4) ;
    Perform(EM_SETRECTNP, 0, lParam(@r)) ;
    SetWindowRgn(Handle, rgn, True) ;
    Invalidate;
  end;
end;

{** 받은 숫자텍스트에 콤마를 찍어 반환.
  @param [number] 콤마를 찍을 숫자텍스트
* }
function NumberComma(number : string) : String;
begin
  Result := FormatFloat('#,##0', StrToInt(number));
end;

{** 받은 숫자텍스트에 콤마를 제거한 후 반환.
  @param [number] 콤마를 제거할 숫자텍스트
* }
function CommaDelete(number : string) : String;
begin
  Result := StringReplace(number, ',' ,'',[rfReplaceAll]);
end;

{** Gym_MessageBox
** 메세지 Modal 띄우기 **
  @param [Sender]
   AContents : 문구
   ATitle : 제목
   AType : 버튼타입 1) 확인 2) 예+ 아니요
* }
function Gym_MessageBox(AContents, ATitle : String; AType : Integer) : Integer;
begin
  fmMessagePopUp  := TfmMessagePopUp.Create(Application);

  fmMessagePopUp.Top := (GymManagerForm.Height - fmMessagePopUp.Height) div 2 + GymManagerForm.Top;
  fmMessagePopUp.Left := (GymManagerForm.Width - fmMessagePopUp.Width) div 2 + GymManagerForm.Left;

  fmMessagePopUp.TitleLabel.Caption := ATitle;
  fmMessagePopUp.ContentsLabel.Caption := AContents;

  Case AType of
   1 :
   begin
    fmMessagePopUp.OKPanel.Visible := true;
    fmMessagePopUp.OKPanel.Left := 120;
    fmMessagePopUp.OKBtn.Caption := '확인';
    fmMessagePopUp.CancelPanel.Visible := false;
   end;
   2 :
   begin
    fmMessagePopUp.OKPanel.Visible := true;
    fmMessagePopUp.OKPanel.Left := 53;
    fmMessagePopUp.OKBtn.Caption := '예';
    fmMessagePopUp.CancelPanel.Visible := true;
    fmMessagePopUp.CancelBtn.Caption := '아니요';
   end;
  Else
    fmMessagePopUp.OKPanel.Visible := true;
    fmMessagePopUp.OKBtn.Caption := '확인';
    fmMessagePopUp.CancelPanel.Visible := false;
  End;

  Result := fmMessagePopUp.ShowModal;
end;

end.
