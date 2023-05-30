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
  Vcl.Grids, cxScrollBox, dxGDIPlusClasses, Vcl.ExtCtrls;

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
// TODO 1) 디자인작업 2) 저장로직
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

  MemberListGrid.RowCount := 50 + 2;

  MemberListGrid.Height := MemberListGrid.RowCount * 40;

  for I := 1 to 50 do
  begin
    with MemberListGrid do
    begin
      Cells[1,I] := 'CODE';
      Cells[2,I] := '이름';
      Cells[3,I] := '성별';
      Cells[4,I] := '연락처';
      Cells[5,I] := '잔여 PT';
      if I = 50 then
      begin
        Cells[1,I] := 'CODE';
        Cells[2,I] := '끝';
        Cells[3,I] := '성별';
        Cells[4,I] := '연락처';
        Cells[5,I] := '끝';
      end;
    end;
  end;

  MemberListScrollBox.VertScrollBar.Range := MemberListGrid.Height;

end;

procedure TfmScheduleCreate.MemberListGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with MemberListGrid do
  begin
    Canvas.Brush.Color := clWhite;
    Canvas.FillRect(Rect);

    Canvas.Font.Color := $004D4D4D;
    Canvas.Font.Name := '맑은 고딕';
    Canvas.Font.Style := [fsBold];
    Canvas.Font.Size := 9;
    Canvas.TextOut(Rect.Left+5, Rect.Top+5, Cells[ACol,ARow]);
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

end.
