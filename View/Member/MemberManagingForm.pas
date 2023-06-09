unit MemberManagingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, math,
  Vcl.WinXCtrls, dxGDIPlusClasses, CurvyControls, Vcl.Grids, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, BlurForm, cxControls, cxScrollBox, Data.DB;

type
  TfmMemberManaging = class(TForm)
    backPanel: TPanel;
    MenuNameLabel: TLabel;
    Shape1: TShape;
    MemberCntLabel1: TLabel;
    MemberCntLabel2: TLabel;
    MemberCntLabel3: TLabel;
    MemberTotalCnt: TLabel;
    MemberIngCnt: TLabel;
    MemberEndCnt: TLabel;
    MemberCntPanel: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    SearchPanel: TCurvyPanel;
    SearchBtn: TImage;
    SearchEdit: TEdit;
    GridPanel: TPanel;
    MemberListPanel: TCurvyPanel;
    MemberListScrollBox: TcxScrollBox;
    MemberGrid: TStringGrid;
    NewInsertBtnPanel: TCurvyPanel;
    NewInsertBtn: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure MemberGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
    procedure NewInsertBtnClick(Sender: TObject);
    procedure MemberGridMouseLeave(Sender: TObject);
    procedure MemberGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MemberGridMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure MemberGridMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure MemberListShow(AMember: TDataSet);
    procedure SearchBtnClick(Sender: TObject);
    procedure SearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure MemberGridDblClick(Sender: TObject);
    procedure NewInsertBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NewInsertBtnMouseLeave(Sender: TObject);
    procedure NewInsertBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure NewInsertBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberManaging : TfmMemberManaging;
  fmBlur: TfmBlur;

implementation

uses
  CommonFunction, MainForm, MemberController;

{$R *.dfm}

procedure TfmMemberManaging.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmMemberManaging.FormResize(Sender: TObject);
var h,w : double;
   p : integer;
begin
  //DrawRounded(backPanel, 50);
end;

procedure TfmMemberManaging.FormShow(Sender: TObject);
begin
  MemberController.TMemberController.MemberSelect(self);
  MemberController.TMemberController.MemberCount(self);
end;

//StringGrid DefaultDrawing := False 방법
procedure TfmMemberManaging.MemberGridDblClick(Sender: TObject);
var
  P: TPoint;
  iColumn, iRow: Longint;
begin
  GetCursorPos(P);
  with MemberGrid do
  begin
    P := ScreenToClient(P);
    MouseToCell(P.X, P.Y, iColumn, iRow);

    if (iColumn = 0) or (iRow = 0) then
      abort;

    fmBlur := TfmBlur.Create(Self);
    fmBlur.Top := GymManagerForm.Top;
    fmBlur.Left := GymManagerForm.Left;
    fmBlur.Height := GymManagerForm.Height;
    fmBlur.Width := GymManagerForm.Width;
    fmBlur.imgBlur.Tag := 4;
    fmBlur.parameter1.Text := Cells[0,iRow];
    fmBlur.Show;
  end;
end;

procedure TfmMemberManaging.MemberGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  with MemberGrid do
  begin
    // 셀 별 어브젝트가 설정되었는지 확인
    if Assigned(Objects[ACol, ARow]) then
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := TColor(Objects[ACol, ARow]);
      Canvas.FillRect(Rect);
    end
    else
    begin
      // 색을 셀에 채우기
      Canvas.Brush.Color := clWhite;
      Canvas.FillRect(Rect);
    end;

    if ARow = 0 then
    begin
      Canvas.Font.Color := $004D4D4D;
      Canvas.Font.Name := '맑은 고딕';
      Canvas.Font.Style := [fsBold];
      Canvas.Font.Size := 9;
    end
    else
    begin
      Canvas.Font.Color := $004D4D4D;
      if Cells[ACol,ARow] = '만료' then
        Canvas.Font.Color := clRed
      else if Cells[ACol,ARow] = '정상' then
        Canvas.Font.Color := clBlue;
      Canvas.Font.Name := '맑은 고딕';
      Canvas.Font.Size := 8;
    end;
    Canvas.TextOut(Rect.Left+10, Rect.Top+5, Cells[ACol,ARow]);
  end;
end;

procedure TfmMemberManaging.MemberGridMouseLeave(Sender: TObject);
var
  I,J : Integer;
begin
  with MemberGrid do
  begin
      for I := 0 to ColCount-1 do
      begin
        for J := 0 to RowCount-1 do
        begin
          Objects[I, J] := nil;
        end;
      end;
      Abort;
  end;
end;

procedure TfmMemberManaging.MemberGridMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  pntCurPos :TPoint;
  iCol      :integer;
  iRow      :integer;
  I, J      : Integer;
begin
  with MemberGrid do
  begin
    pntCurPos := ScreenToClient(Mouse.CursorPos);
    MouseToCell(pntCurPos.x, pntCurPos.y, iCol, iRow);

    if (iCol = -1) and (iRow = -1) then
    begin
      for I := 0 to ColCount-1 do
      begin
        for J := 0 to RowCount-1 do
        begin
          Objects[I, J] := nil;
        end;
      end;
      Abort;
    end;

    if iRow > 0 then
    begin
      for I := 0 to MemberGrid.ColCount-1 do
      begin
        Objects[I, iRow-1] := nil;
      end;
    end;

    if iRow <> RowCount-1 then
    begin
      for I := 0 to MemberGrid.ColCount-1 do
      begin
        Objects[I, iRow+1] := nil;
      end;
    end;

    if iRow <> 0 then
    begin
      for I := 0 to MemberGrid.ColCount-1 do
        Objects[I, iRow] := TObject($00D8D8D8);
    end;

  end;
end;

procedure TfmMemberManaging.MemberGridMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  I, J : Integer;
begin
  MemberListScrollBox.VertScrollBar.Position := MemberListScrollBox.VertScrollBar.Position + 20;
  with MemberGrid do
  begin
    for I := 0 to ColCount-1 do
    begin
      for J := 0 to RowCount-1 do
      begin
        Objects[I, J] := nil;
      end;
    end;
  end;
end;

procedure TfmMemberManaging.MemberGridMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  I, J : Integer;
begin
  MemberListScrollBox.VertScrollBar.Position := MemberListScrollBox.VertScrollBar.Position - 20;
  with MemberGrid do
  begin
    for I := 0 to ColCount-1 do
    begin
      for J := 0 to RowCount-1 do
      begin
        Objects[I, J] := nil;
      end;
    end;
  end;
end;

{** 신규버튼 이벤트 (신규회원 등록창 띄우기)
  @param [Sender] NewInsertBtn
* }
procedure TfmMemberManaging.NewInsertBtnClick(Sender: TObject);
begin

  fmBlur := TfmBlur.Create(Self);
  fmBlur.Top := GymManagerForm.Top;
  fmBlur.Left := GymManagerForm.Left;
  fmBlur.Height := GymManagerForm.Height;
  fmBlur.Width := GymManagerForm.Width;
  fmBlur.imgBlur.Tag := 1;
  fmBlur.Show;

  MemberController.TMemberController.MemberSelect(self);

end;

procedure TfmMemberManaging.SearchBtnClick(Sender: TObject);
begin
  MemberController.TMemberController.MemberSelect(self);
end;

procedure TfmMemberManaging.SearchEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    MemberController.TMemberController.MemberSelect(self);
end;

procedure TfmMemberManaging.MemberListShow(AMember: TDataSet);
var
  I : Integer;
begin

  with MemberGrid do
  begin
    for I := 0 to ColCount - 1 do
      Cols[I].Clear;

    Cells[1,0]  := '이름';
    Cells[2,0]  := '성별';
    Cells[3,0]  := '전화번호';
    Cells[4,0]  := '회원 만료일';
    Cells[5,0]  := '회원 잔여 일수';
    Cells[6,0]  := '상태';
    Cells[7,0]  := 'PT 잔여 횟수';
    Cells[8,0]  := '락커넘버';
    Cells[9,0]  := '운동복 만료일';
    Cells[10,0] := '운동복 잔여 일수';
    Cells[11,0] := '총결제금액';

    MemberListScrollBox.HorzScrollBar.Range := Width - 130;

    AMember.Active := true;

    RowCount := AMember.RecordCount + 1;

    I := 1;
    While Not AMember.Eof do
    begin
      Cells[0,I] := AMember.FieldByName('id').AsString;
      Cells[1,I] := AMember.FieldByName('name').AsString;
      Cells[2,I] := AMember.FieldByName('gender').AsString;
      Cells[3,I] := AMember.FieldByName('tel').AsString;
      Cells[4,I] := AMember.FieldByName('회원만료일').AsString;
      Cells[5,I] := AMember.FieldByName('회원 잔여 일수').AsString;

      if AMember.FieldByName('회원 잔여 일수').AsInteger > 0  then
        Cells[6,I] := '정상'
      else
        Cells[6,I] := '만료';
      Cells[7,I] := AMember.FieldByName('PT 잔여 횟수').AsString;

      if AMember.FieldByName('락커넘버').AsString = '' then
        Cells[8,I] := '-'
      else
        Cells[8,I] := AMember.FieldByName('락커넘버').AsString;

      Cells[9,I] := AMember.FieldByName('운동복 만료일').AsString;
      Cells[10,I] := AMember.FieldByName('운동복 잔여 일수').AsString;

      if (AMember.FieldByName('총결제금액').AsString = '') or
         (AMember.FieldByName('총결제금액').AsString = '0') then
        Cells[11,I] := ''
      else
        Cells[11,I] := FormatFloat('##,###,##0', AMember.FieldByName('총결제금액').AsInteger);

      AMember.Next;
      Inc(I);
    end;

    Height := RowCount * 40 + 130;
    MemberListScrollBox.VertScrollBar.Range := Height;
  end;

end;

procedure TfmMemberManaging.NewInsertBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NewInsertBtnPanel.Color := $00FFF2E6;
end;

procedure TfmMemberManaging.NewInsertBtnMouseLeave(Sender: TObject);
begin
  NewInsertBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmMemberManaging.NewInsertBtnMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  NewInsertBtnPanel.BorderColor := $00747474;
end;

procedure TfmMemberManaging.NewInsertBtnMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  NewInsertBtnPanel.Color := clWhite;
end;

end.
