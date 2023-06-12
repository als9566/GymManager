unit ScheduleCreateForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, CurvyControls, cxControls,
  Vcl.Grids, cxScrollBox, dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB;

type
  TfmScheduleCreate = class(TForm)
    backPanel: TCurvyPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    DayEdit: TEdit;
    TimeEdit: TEdit;
    parameter1: TEdit;
    parameter2: TEdit;
    parameter3: TEdit;
    DayLabel: TLabel;
    TimeLabel: TLabel;
    MemberListPanel: TCurvyPanel;
    Label16: TLabel;
    CurvyPanel1: TCurvyPanel;
    MemberListScrollBox: TcxScrollBox;
    MemberListGrid: TStringGrid;
    SearchPanel: TCurvyPanel;
    SearchBtn: TImage;
    SearchEdit: TEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure MemberListGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MemberListGridMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure MemberListGridMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SearchBtnClick(Sender: TObject);
    procedure MemberListShow(AMember: TDataSet);
    procedure SearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure MemberListGridMouseLeave(Sender: TObject);
    procedure MemberListGridMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MemberListGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmScheduleCreate: TfmScheduleCreate;

implementation

uses
  CommonFunction, ScheduleController;

{$R *.dfm}
procedure TfmScheduleCreate.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfmScheduleCreate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
  Action := CaFree;
end;

procedure TfmScheduleCreate.FormShow(Sender: TObject);
var
  I: Integer;
begin
  DrawRounded(Self,50);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);

  TimeEdit.Text := IntToStr((StrToInt(parameter2.Text) + 5));
  ScheduleController.TScheduleController.Date_Calculation(Self, parameter3.Text, StrToInt(parameter1.Text));
  TimeLabel.Caption := IntToStr((StrToInt(parameter2.Text) + 5)) + ':00';
  DayLabel.Caption := DayEdit.Text;

  ScheduleController.TScheduleController.Member_Find(self, '');

end;

procedure TfmScheduleCreate.MemberListGridDblClick(Sender: TObject);
var
  P: TPoint;
  iColumn, iRow: Longint;

begin
  GetCursorPos(P);
  with MemberListGrid do
  begin
    P := ScreenToClient(P);
    MouseToCell(P.X, P.Y, iColumn, iRow);

    if (iColumn = 0) or (iRow = 0) then
      abort;

    if Application.MessageBox( PChar(DayLabel.Caption + ' ' + Cells[2,iRow] + ' 회원을 PT 등록 하시겠습니까?'), '등록확인', MB_YESNO+MB_IconQuestion) = IDNO  then
    begin
      Abort;
    end;

    ScheduleController.TScheduleController.Schedule_Create(self, iRow);

  end;
end;

procedure TfmScheduleCreate.MemberListGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with MemberListGrid do
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

    Canvas.Font.Color := $004D4D4D;
    Canvas.Font.Name := '맑은 고딕';
    Canvas.Font.Style := [fsBold];
    Canvas.Font.Size := 9;
    Canvas.TextOut(Rect.Left+10, Rect.Top+5, Cells[ACol,ARow]);
  end;
end;

procedure TfmScheduleCreate.MemberListGridMouseLeave(Sender: TObject);
var
  I, J : Integer;
begin
  with MemberListGrid do
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

procedure TfmScheduleCreate.MemberListGridMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  pntCurPos :TPoint;
  iCol      :integer;
  iRow      :integer;
  I, J      : Integer;
begin
  with MemberListGrid do
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
      for I := 0 to MemberListGrid.ColCount-1 do
      begin
        Objects[I, iRow-1] := nil;
      end;
    end;

    if iRow <> RowCount-1 then
    begin
      for I := 0 to MemberListGrid.ColCount-1 do
      begin
        Objects[I, iRow+1] := nil;
      end;
    end;

    for I := 0 to MemberListGrid.ColCount-1 do
    begin
      Objects[I, iRow] := TObject($00D8D8D8);
    end;

  end;
end;

procedure TfmScheduleCreate.MemberListGridMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  MemberListScrollBox.VertScrollBar.Position := MemberListScrollBox.VertScrollBar.Position + 20;
end;

procedure TfmScheduleCreate.MemberListGridMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  MemberListScrollBox.VertScrollBar.Position := MemberListScrollBox.VertScrollBar.Position - 20;
end;

procedure TfmScheduleCreate.SearchBtnClick(Sender: TObject);
begin
  ScheduleController.TScheduleController.Member_Find(self, SearchEdit.Text);
end;

procedure TfmScheduleCreate.SearchEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    ScheduleController.TScheduleController.Member_Find(self, SearchEdit.Text);
end;

procedure TfmScheduleCreate.MemberListShow(AMember: TDataSet);
var
  I : Integer;
begin

  for I := 0 to MemberListGrid.ColCount - 1 do
    MemberListGrid.Cols[I].Clear;

  AMember.Active := true;

  MemberListGrid.RowCount := AMember.RecordCount + 1;

  MemberListGrid.Height := MemberListGrid.RowCount * 40 + 10;

  I := 1;
  While Not AMember.Eof do
  begin
    with MemberListGrid do
    begin
      Cells[1,I] := AMember.FieldByName('ID').AsString;
      Cells[2,I] := AMember.FieldByName('NAME').AsString;
      Cells[3,I] := AMember.FieldByName('GENDER').AsString;
      Cells[4,I] := AMember.FieldByName('TEL').AsString;
      Cells[5,I] := '잔여PT : '+AMember.FieldByName('PT').AsString+'회';
      AMember.Next;
      Inc(I);
    end;
  end;

  MemberListScrollBox.VertScrollBar.Range := MemberListGrid.Height;

end;

end.
