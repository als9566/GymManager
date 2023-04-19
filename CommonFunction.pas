unit CommonFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls;

// Control �𼭸� �ձ۰� �����
procedure DrawRounded(Control: TWinControl; N: Integer);
// ���ڿ� �޸����
function NumberComma(number : string): String;
// �޸�����
function CommaDelete(number : string): String;

implementation


{** Control �𼭸��� �ձ۰� �����.
  @param [Control] �ձ۰� ���� ��Ʈ��
  @param [   N   ] �ձ�����
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


{** ���� �����ؽ�Ʈ�� �޸��� ��� ��ȯ.
  @param [number] �޸��� ���� �����ؽ�Ʈ
* }
function NumberComma(number : string) : String;
begin
  Result := FormatFloat('#,##0', StrToInt(number));
end;

{** ���� �����ؽ�Ʈ�� �޸��� ������ �� ��ȯ.
  @param [number] �޸��� ������ �����ؽ�Ʈ
* }
function CommaDelete(number : string) : String;
begin
  Result := StringReplace(number, ',' ,'',[rfReplaceAll]);
end;

end.
