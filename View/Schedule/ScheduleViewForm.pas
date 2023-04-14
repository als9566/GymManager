unit ScheduleViewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxGDIPlusClasses, Vcl.Grids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxScrollBox, CurvyControls;

type
  TfmScheduleView = class(TForm)
    backPanel: TPanel;
    MenuNameLabel: TLabel;
    ScheduleGrid: TStringGrid;
    Image1: TImage;
    ScheduleScrollBox: TcxScrollBox;
    CurvyPanel1: TCurvyPanel;
    procedure ScheduleGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ScheduleGridMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScheduleGridMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScheduleScrollBoxMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure ScheduleScrollBoxMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmScheduleView: TfmScheduleView;

implementation

{$R *.dfm}

procedure TfmScheduleView.FormShow(Sender: TObject);
var
  I: Integer;
begin
  with ScheduleGrid do
  begin
    //TODO 동적생성으로 변경예정
    Cells[1,0] := '14일 (금)\r\n2023-04-14';
    Cells[2,0] := '15일 (토)\r\n2023-04-15';
    Cells[3,0] := '16일 (일)\r\n2023-04-16';
    Cells[4,0] := '17일 (월)\r\n2023-04-17';
    Cells[5,0] := '18일 (화)\r\n2023-04-18';
    Cells[6,0] := '19일 (수)\r\n2023-04-19';
    Cells[7,0] := '20일 (목)\r\n2023-04-20';
    //

    for I := 1 to 18 do
    begin
      Cells[0,I] := IntToStr(I+5)+ ':00';
    end;

    Cells[1,1] := '홍길동\r\n1회차';
  end;
end;

procedure TfmScheduleView.ScheduleGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  sText : String;
  iPos : Integer;
  R: TRect;
begin
  with ScheduleGrid do
  begin
    if (ACol = 1) and (ARow = 1) then
    begin
      Canvas.Brush.Color := $00FFFCE6;
      Canvas.FillRect(Rect);
    end
    else if (ACol = 2) and (ARow = 1) then
    begin
      Canvas.Brush.Color := $00E7E6FF;
      Canvas.FillRect(Rect);
    end
    else if (ACol = 2) and (ARow = 2) then
    begin
      Canvas.Brush.Color := $00FFE3F1;
      Canvas.FillRect(Rect);
    end
    else if (ACol = 3) and (ARow = 2) then
    begin
      Canvas.Brush.Color := $00D2FCFF;
      Canvas.FillRect(Rect);
    end
    else
    begin
      Canvas.Brush.Color := clWhite;
      Canvas.FillRect(Rect);
    end;

    // 셀 내용(텍스트) 출력
    sText := Cells[ACol,ARow];
    iPos := Pos('\r\n', Cells[ACol,ARow]);

    // \r\n이 없는경우는 시간 or Text 없음
    if iPos = 0 then
    begin
      Canvas.TextOut(Rect.Left+90, Rect.Top, sText);
    end
    else
    begin
      // 날짜 TEXT 출력
      if ARow = 0 then
      begin
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '맑은 고딕';
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Size := 10;
        Canvas.TextOut(Rect.Left+30, Rect.Top+5, Copy(sText, 0, iPos-1));
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '맑은 고딕';
        Canvas.Font.Style := [];
        Canvas.Font.Size := 8;
        Canvas.TextOut(Rect.Left+30, Rect.Top+23, Copy(sText, iPos + 4, Length(sText)-iPos));
      end
      // PT 시간대 회원정보 출력
      else
      begin
        R.Top := Rect.Top + 5;
        R.Left := Rect.Left + 5;
        R.Right := R.Left + 20;
        R.Bottom := R.Top + 20;
        Canvas.StretchDraw(R, Image1.Picture.Graphic);
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '맑은 고딕';
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Size := 10;
        Canvas.TextOut(Rect.Left+30, Rect.Top+5, Copy(sText, 0, iPos-1));
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '맑은 고딕';
        Canvas.Font.Style := [];
        Canvas.Font.Size := 8;
        Canvas.TextOut(Rect.Left+30, Rect.Top+23, Copy(sText, iPos + 4, Length(sText)-iPos));
      end;
    end;
  end;
end;

procedure TfmScheduleView.ScheduleGridMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScheduleScrollBox.VertScrollBar.Position := ScheduleScrollBox.VertScrollBar.Position + 20;
end;

procedure TfmScheduleView.ScheduleGridMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScheduleScrollBox.VertScrollBar.Position := ScheduleScrollBox.VertScrollBar.Position - 20;
end;

procedure TfmScheduleView.ScheduleScrollBoxMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScheduleScrollBox.VertScrollBar.Position := ScheduleScrollBox.VertScrollBar.Position + 20;
end;

procedure TfmScheduleView.ScheduleScrollBoxMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ScheduleScrollBox.VertScrollBar.Position := ScheduleScrollBox.VertScrollBar.Position - 20;
end;

end.
