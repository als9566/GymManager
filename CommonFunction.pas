unit CommonFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls;

// Control 모서리 둥글게 만들기
procedure DrawRounded(Control: TWinControl; N: Integer);
// 숫자에 콤마찍기
function NumberComma(number : string): String;
// 콤마제거
function CommaDelete(number : string): String;

implementation


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

end.
