unit MemberDetailForm;

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
  dxSkinXmas2008Blue, cxControls, Vcl.ExtCtrls, cxScrollBox, Vcl.StdCtrls,
  cxButtons, CurvyControls, dxGDIPlusClasses, Vcl.Grids, Data.DB;

type
  TfmMemberDetail = class(TForm)
    backPanel: TCurvyPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    MemberInfoPanel: TCurvyPanel;
    MemberNameLabel: TLabel;
    MemberTelLabel: TLabel;
    MemberGenderLabel: TLabel;
    Label4: TLabel;
    BirthdayLabel: TLabel;
    Label6: TLabel;
    AddressLabel: TLabel;
    Label8: TLabel;
    StartDayLabel: TLabel;
    ProductPanel: TCurvyPanel;
    Label7: TLabel;
    PTLabel: TLabel;
    Label2: TLabel;
    WearLabel: TLabel;
    Label5: TLabel;
    LockerLabel: TLabel;
    EditPanel: TcxScrollBox;
    PTRecordPanel: TCurvyPanel;
    Label11: TLabel;
    PTRecordScrollBox: TcxScrollBox;
    PaymentRecodePanel: TCurvyPanel;
    Label16: TLabel;
    CurvyPanel1: TCurvyPanel;
    PaymentRecodeScrollBox: TcxScrollBox;
    PaymentRecodeGrid: TStringGrid;
    CloseBtnPanel: TCurvyPanel;
    CloseBtn: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PaymentRecodeGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MemberDetailShow(AMember: TDataSet);
    procedure ScheduleHistoryShow(ASchedule: TDataSet);
    procedure PaymentDetailShow(APayment: TDataSet);
    procedure PaymentRecodeGridMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure PaymentRecodeGridMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure EditPanelMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure EditPanelMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure CloseBtnClick(Sender: TObject);
    procedure CloseBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnMouseLeave(Sender: TObject);
    procedure CloseBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CloseBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberDetail: TfmMemberDetail;

implementation

uses
  CommonFunction, MemberController;

{$R *.dfm}
procedure TfmMemberDetail.CloseBtnClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfmMemberDetail.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfmMemberDetail.CloseBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CloseBtnPanel.Color := $00FFF2E6;
end;

procedure TfmMemberDetail.CloseBtnMouseLeave(Sender: TObject);
begin
  CloseBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmMemberDetail.CloseBtnMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  CloseBtnPanel.BorderColor := $00747474;
end;

procedure TfmMemberDetail.CloseBtnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CloseBtnPanel.Color := clWhite;
end;

procedure TfmMemberDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
  Action := CaFree;
end;

procedure TfmMemberDetail.FormShow(Sender: TObject);
begin
  DrawRounded(Self,50);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);

  with PaymentRecodeGrid do
  begin
    Cells[1,0] := '결제일';
    Cells[2,0] := '상품이름';
    Cells[3,0] := '결제금액';
  end;

  MemberController.TMemberController.MemberDetailSelect(self, self.Tag);
  MemberController.TMemberController.ScheduleSelect(self, self.Tag);
  MemberController.TMemberController.PaymentSelect(self, self.Tag);

  cxButton1.Visible := false;

end;

procedure TfmMemberDetail.PaymentRecodeGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with PaymentRecodeGrid do
  begin
    Canvas.Brush.Color := clWhite;
    Canvas.FillRect(Rect);

    Canvas.Font.Color := $004D4D4D;
    Canvas.Font.Name := '맑은 고딕';
    Canvas.Font.Style := [fsBold];
    Canvas.Font.Size := 9;
    Canvas.TextOut(Rect.Left+20, Rect.Top+5, Cells[ACol,ARow]);
  end;
end;



{** MemberDetailShow
  회원정보 및 잔여정보 불러오기
* }
procedure TfmMemberDetail.MemberDetailShow(AMember: TDataSet);
begin
  AMember.Active := true;

  // 이름
  MemberNameLabel.Caption   := AMember.FieldByName('name').AsString;
  // 성별
  MemberGenderLabel.Caption := AMember.FieldByName('gender').AsString;
  // 전화번호
  MemberTelLabel.Caption    := AMember.FieldByName('tel').AsString;
  // 생년월일
  BirthdayLabel.Caption     := AMember.FieldByName('birthday').AsString;
  // 시작일자
  StartDayLabel.Caption     := AMember.FieldByName('start_date').AsString;
  // 주소
  AddressLabel.Caption      := AMember.FieldByName('address').AsString;

  // PT 잔여
  PTLabel.Caption := AMember.FieldByName('pt잔여').AsString;
  // 운동복 잔여
  WearLabel.Caption := '잔여 : ' + AMember.FieldByName('운동복 잔여').AsString
                     + '일 / ' + AMember.FieldByName('운동복 만료일').AsString;
  // 락커 잔여
  LockerLabel.Caption := '잔여 : ' + AMember.FieldByName('락커 잔여일').AsString
                     + '일 / ' + AMember.FieldByName('락커 만료일').AsString;
end;

{** ScheduleHistoryShow
  PT 기록 불러오기
* }
procedure TfmMemberDetail.ScheduleHistoryShow(ASchedule: TDataSet);
var
  I : Integer;
  sLabel : TLabel;
begin
  ASchedule.Active := true;

  if ASchedule.RecordCount = 0 then
  begin
    sLabel := TLabel.Create(Self);
    with sLabel do
    begin
      Parent := PTRecordScrollBox;
      Left := 4;
      Top := 5;
      Name := Format('ScheduleLabel_%d',[0]);
      AutoSize := true;
      Font.Name := '맑은고딕';
      Font.Color := $00625E5E;
      Font.Style := [fsBold];
      Font.Size := 9;
      Caption := '수강내역이 없습니다.';
    end;
  end
  else
  begin
    for I := 0 to ASchedule.RecordCount - 1 do
    begin
      sLabel := TLabel.Create(Self);
      with sLabel do
      begin
        Parent := PTRecordScrollBox;
        Left := 4;
        Top := 5 + (I*20);
        Name := Format('ScheduleLabel_%d',[I]);
        AutoSize := true;
        Font.Name := '맑은고딕';
        Font.Color := $00625E5E;
        Font.Style := [fsBold];
        Font.Size := 9;
        Caption := '['+IntToStr(I+1)+'] '+ ASchedule.FieldByName('day').AsString
                 + ' ' + ASchedule.FieldByName('time').AsString + ':00';
      end;
      ASchedule.Next;
    end;
    PTRecordScrollBox.VertScrollBar.Range := 5 + (I*20) + 10;
  end;
end;

{** PaymentDetailShow
  결제내역 불러오기
* }
procedure TfmMemberDetail.PaymentDetailShow(APayment: TDataSet);
var
  I,J : Integer;
begin
  J := 1;

  APayment.Active := true;

  if APayment.RecordCount = 0 then
  begin
    PaymentRecodePanel.visible := false;
  end
  else
  begin
    for I := 0 to APayment.RecordCount - 1 do
    begin
      with PaymentRecodeGrid do
      begin
        Cells[1,J] := APayment.FieldByName('input_date').AsString;
        Cells[2,J] := '회원권 '+APayment.FieldByName('membership').AsString;
        Cells[3,J] := APayment.FieldByName('membership_price').AsString;
        if APayment.FieldByName('pt').AsString <> '' then
        begin
          Inc(J);
          RowCount := J + 1;
          Cells[1,J] := APayment.FieldByName('input_date').AsString;
          Cells[2,J] := 'PT '+APayment.FieldByName('pt').AsString;
          Cells[3,J] := APayment.FieldByName('pt_price').AsString;
        end;
        if APayment.FieldByName('wear').AsString <> '' then
        begin
          Inc(J);
          RowCount := J + 1;
          Cells[1,J] := APayment.FieldByName('input_date').AsString;
          Cells[2,J] := '회원복 '+APayment.FieldByName('wear').AsString;
          Cells[3,J] := APayment.FieldByName('wear_price').AsString;
        end;
        if APayment.FieldByName('locker').AsString <> '' then
        begin
          Inc(J);
          RowCount := J + 1;
          Cells[1,J] := APayment.FieldByName('input_date').AsString;
          Cells[2,J] := '락커 '+APayment.FieldByName('locker').AsString;
          Cells[3,J] := APayment.FieldByName('locker_price').AsString;
        end;
      end;
      APayment.Next;
    end;
    PaymentRecodeGrid.Height := (PaymentRecodeGrid.RowCount+1) * 40;
    PaymentRecodeScrollBox.VertScrollBar.Range := PaymentRecodeGrid.Height;
  end;

end;

procedure TfmMemberDetail.PaymentRecodeGridMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  PaymentRecodeScrollBox.VertScrollBar.Position := PaymentRecodeScrollBox.VertScrollBar.Position + 20;
end;

procedure TfmMemberDetail.PaymentRecodeGridMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  PaymentRecodeScrollBox.VertScrollBar.Position := PaymentRecodeScrollBox.VertScrollBar.Position - 20;
end;

procedure TfmMemberDetail.EditPanelMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  EditPanel.VertScrollBar.Position := EditPanel.VertScrollBar.Position + 20;
end;

procedure TfmMemberDetail.EditPanelMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  EditPanel.VertScrollBar.Position := EditPanel.VertScrollBar.Position - 20;
end;

end.
