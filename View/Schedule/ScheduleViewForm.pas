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
  dxSkinXmas2008Blue, cxScrollBox, CurvyControls, Data.DB;

type
  TfmScheduleView = class(TForm)
    backPanel: TPanel;
    MenuNameLabel: TLabel;
    ScheduleGrid: TStringGrid;
    Image1: TImage;
    ScheduleScrollBox: TcxScrollBox;
    CurvyPanel1: TCurvyPanel;
    procedure ShowDay(ADay: TDataSet);
    procedure ShowSchedule(ASchedule: TDataSet);
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
  Colors: array[0..3] of TColor = ($00FFFCE6, $00E7E6FF, $00FFE3F1, $00D2FCFF);

implementation

uses
  CommonFunction, MainForm, ScheduleController;

{$R *.dfm}
// TODO ����迭�� ����7�� �ְ� ������������ �����
// �������� �ϴϱ� ��ũ�� �� Ŭ���Ҷ����� ������ �ٲ�.... ;;
procedure TfmScheduleView.FormShow(Sender: TObject);
var
  I: Integer;
begin
  ScheduleController.TScheduleController.DayLoad(self, formatDateTime('yyyy-mm-dd',now));

  with ScheduleGrid do
  begin
    for I := 1 to 18 do
    begin
      Cells[0,I] := IntToStr(I+5)+ ':00';
    end;
    ScheduleController.TScheduleController.ScheduleLoad(self, formatDateTime('yyyy-mm-dd',now));
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
//    if (ACol = 1) and (ARow = 1) then
//    begin
//      Canvas.Brush.Color := $00FFFCE6;
//      Canvas.FillRect(Rect);
//    end
//    else if (ACol = 2) and (ARow = 1) then
//    begin
//      Canvas.Brush.Color := $00E7E6FF;
//      Canvas.FillRect(Rect);
//    end
//    else if (ACol = 2) and (ARow = 2) then
//    begin
//      Canvas.Brush.Color := $00FFE3F1;
//      Canvas.FillRect(Rect);
//    end
//    else if (ACol = 3) and (ARow = 2) then
//    begin
//      Canvas.Brush.Color := $00D2FCFF;
//      Canvas.FillRect(Rect);
//    end
//    else
//    begin
      Canvas.Brush.Color := clWhite;
      Canvas.FillRect(Rect);
//    end;

    // �� ����(�ؽ�Ʈ) ���
    sText := Cells[ACol,ARow];
    iPos := Pos('\r\n', Cells[ACol,ARow]);

    // \r\n�� ���°��� �ð� or Text ����
    if iPos = 0 then
    begin
      Canvas.TextOut(Rect.Left+90, Rect.Top, sText);
    end
    else
    begin
      // ��¥ TEXT ���
      if ARow = 0 then
      begin
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '���� ���';
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Size := 10;
        Canvas.TextOut(Rect.Left+30, Rect.Top+5, Copy(sText, 0, iPos-1));
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '���� ���';
        Canvas.Font.Style := [];
        Canvas.Font.Size := 8;
        Canvas.TextOut(Rect.Left+30, Rect.Top+23, Copy(sText, iPos + 4, Length(sText)-iPos));
      end
      // PT �ð��� ȸ������ ���
      else
      begin
        //Edit1.Color := Colors[3];
        //Canvas.Brush.Color := $00D2FCFF;
        Canvas.Brush.Color := Colors[random(3)];
        Canvas.FillRect(Rect);

        R.Top := Rect.Top + 5;
        R.Left := Rect.Left + 5;
        R.Right := R.Left + 20;
        R.Bottom := R.Top + 20;
        Canvas.StretchDraw(R, Image1.Picture.Graphic);
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '���� ���';
        Canvas.Font.Style := [fsBold];
        Canvas.Font.Size := 10;
        Canvas.TextOut(Rect.Left+30, Rect.Top+5, Copy(sText, 0, iPos-1));
        Canvas.Font.Color := $004D4D4D;
        Canvas.Font.Name := '���� ���';
        Canvas.Font.Style := [];
        Canvas.Font.Size := 8;
        Canvas.TextOut(Rect.Left+30, Rect.Top+23, Copy(sText, iPos + 4, Length(sText)-iPos));
      end;
    end;
  end;
end;

{** ������ ��¥ ����
  @param [Sender] TDataSet
* }
procedure TfmScheduleView.ShowDay(ADay: TDataSet);
var
  I : Integer;
begin
  ADay.Active := true;

  for I := 0 to 6 do
  begin
    ScheduleGrid.Cells[I+1,0] := ADay.FieldByName(IntToStr(I)).AsString;
  end;
end;

{** ������ �ؽ�Ʈ ����
  @param [Sender] TDataSet
* }
procedure TfmScheduleView.ShowSchedule(ASchedule: TDataSet);
var
  I, J : Integer;
begin
  ASchedule.Active := true;
  I := 0;

  While Not ASchedule.Eof do
  begin
    for J := 0 to 6 do
      ScheduleGrid.Cells[J+1,I+1] := ASchedule.FieldByName(IntToStr(J+1)).AsString;
    ASchedule.Next;
    Inc(I);
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
