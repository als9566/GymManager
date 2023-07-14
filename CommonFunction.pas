unit CommonFunction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, MessagePopUp;

// Control �𼭸� �ձ۰� �����
procedure DrawRounded(Control: TWinControl; N: Integer);
// ���ڿ� �޸����
function NumberComma(number : string): String;
// �޸�����
function CommaDelete(number : string): String;
// �޽��� ���â ����
function Gym_MessageBox(AContents, ATitle : String; AType : Integer) : Integer;

implementation

uses
  MainForm;

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

{** Gym_MessageBox
** �޼��� Modal ���� **
  @param [Sender]
   AContents : ����
   ATitle : ����
   AType : ��ưŸ�� 1) Ȯ�� 2) ��+ �ƴϿ�
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
    fmMessagePopUp.OKBtn.Caption := 'Ȯ��';
    fmMessagePopUp.CancelPanel.Visible := false;
   end;
   2 :
   begin
    fmMessagePopUp.OKPanel.Visible := true;
    fmMessagePopUp.OKPanel.Left := 53;
    fmMessagePopUp.OKBtn.Caption := '��';
    fmMessagePopUp.CancelPanel.Visible := true;
    fmMessagePopUp.CancelBtn.Caption := '�ƴϿ�';
   end;
  Else
    fmMessagePopUp.OKPanel.Visible := true;
    fmMessagePopUp.OKBtn.Caption := 'Ȯ��';
    fmMessagePopUp.CancelPanel.Visible := false;
  End;

  Result := fmMessagePopUp.ShowModal;
end;

end.
