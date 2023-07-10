unit DashboardForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinXmas2008Blue, cxScrollBox, cxStyles, cxCustomData, Data.DB, cxDBData,
  CurvyControls, cxGridLevel, cxGridChartView, cxGridDBChartView,
  cxGridCustomView, cxGrid, dxmdaset, cxClasses, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxGDIPlusClasses,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfmDashboard = class(TForm)
    DashboardScrollBox: TcxScrollBox;
    DashboardPanel: TPanel;
    CurvyPanel2: TCurvyPanel;
    CurvyPanel1: TCurvyPanel;
    DataSource1: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1Legends: TStringField;
    dxMemData1Values1: TIntegerField;
    dxMemData1Values2: TIntegerField;
    dxMemData1Values3: TIntegerField;
    dxMemData1Values4: TIntegerField;
    dxMemData1FloatValues: TFloatField;
    cxStyleRepository: TcxStyleRepository;
    LineValue: TcxStyle;
    Label1: TLabel;
    Label2: TLabel;
    CurvyPanel3: TCurvyPanel;
    Label3: TLabel;
    CurvyPanel4: TCurvyPanel;
    Label4: TLabel;
    CurvyPanel5: TCurvyPanel;
    Label5: TLabel;
    MenuNameLabel: TLabel;
    Shape1: TShape;
    FirstDatePanel: TCurvyPanel;
    End_Date: TcxDateEdit;
    refreshBtn: TImage;
    MemberCntGrid: TcxGrid;
    MemberCntChartView: TcxGridChartView;
    cxGrid2Level2: TcxGridLevel;
    LineCategoryAxis: TcxStyle;
    LineGridLine: TcxStyle;
    LineValueAxis: TcxStyle;
    GenderGrid: TcxGrid;
    GenderChartView: TcxGridChartView;
    cxGridLevel2: TcxGridLevel;
    PieValue: TcxStyle;
    PieValueCaption: TcxStyle;
    LockerGrid: TcxGrid;
    LockerChartView: TcxGridChartView;
    cxGridLevel1: TcxGridLevel;
    StackValue: TcxStyle;
    PTGrid: TcxGrid;
    PTChartView: TcxGridChartView;
    cxGridLevel6: TcxGridLevel;
    PaymentGrid: TcxGrid;
    PaymentChartView: TcxGridChartView;
    cxGridLevel3: TcxGridLevel;
    StackSeriesValue1: TcxStyle;
    StackSeriesValue2: TcxStyle;
    StackSeriesValue3: TcxStyle;
    StackSeriesValue4: TcxStyle;
    PaymentPercentGrid: TcxGrid;
    PaymentPercentChartView: TcxGridChartView;
    cxGridLevel4: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure DashboardScrollBoxMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DashboardScrollBoxMouseWheelUp(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure MemberCntShow(AMemberCnt: TDataSet);
    procedure GenderShow(AGender: TDataSet);
    procedure setDay(ADay: TDataSet);
    procedure refreshBtnClick(Sender: TObject);
    procedure GenderChartViewDiagramPieCustomDrawLegendItem(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
    procedure GenderChartViewDiagramPieCustomDrawValue(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
    procedure LockerCntShow(ALocker: TDataSet);
    procedure LockerChartViewDiagramPieCustomDrawLegendItem(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
    procedure LockerChartViewDiagramPieCustomDrawValue(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
    procedure PTCntShow(APt: TDataSet);
    procedure PaymentShow(APayment: TDataSet);
    procedure PaymentPercentShow(APayment: TDataSet);
    procedure PaymentPercentChartViewDiagramPieCustomDrawLegendItem(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
    procedure PaymentPercentChartViewDiagramPieCustomDrawValue(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDashboard: TfmDashboard;
  dsDay: TDataSet;

implementation

uses
  CommonFunction, MainForm, ShadowBoxMain, DashboardController;

{$R *.dfm}

procedure TfmDashboard.DashboardScrollBoxMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  DashboardScrollBox.VertScrollBar.Position := DashboardScrollBox.VertScrollBar.Position + 20;
end;

procedure TfmDashboard.DashboardScrollBoxMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  DashboardScrollBox.VertScrollBar.Position := DashboardScrollBox.VertScrollBar.Position - 20;
end;

procedure TfmDashboard.FormShow(Sender: TObject);
begin
  with TShadowBox.Create(Self) do
    Control := CurvyPanel1;
  with TShadowBox.Create(Self) do
    Control := CurvyPanel2;
  with TShadowBox.Create(Self) do
    Control := CurvyPanel3;
  with TShadowBox.Create(Self) do
    Control := CurvyPanel4;
  with TShadowBox.Create(Self) do
    Control := CurvyPanel5;

  End_Date.Text := formatDateTime('yyyy-mm-dd',now);

  DashboardController.TDashboardController.GetDay7(Self, End_Date.Text);
  DashboardController.TDashboardController.GetMemberCnt(Self, End_Date.Text); 
  DashboardController.TDashboardController.GetMemberGender(Self, End_Date.Text);
  DashboardController.TDashboardController.GetLockerCnt(Self);
  DashboardController.TDashboardController.GetPTCnt(Self, End_Date.Text);
  DashboardController.TDashboardController.GetPayment(Self, End_Date.Text);
  DashboardController.TDashboardController.GetPaymentPercent(Self, End_Date.Text);
end;

{** 회원수 차트 불러오기
  @param [Sender] TDataSet
* }
procedure TfmDashboard.MemberCntShow(AMemberCnt: TDataSet);
Var
  I, iMax, iMin : Integer;
begin
  AMemberCnt.Active := true;

  iMax := AMemberCnt.FieldByName('6').AsInteger;
  iMin := AMemberCnt.FieldByName('6').AsInteger;

  MemberCntChartView.ViewData.CategoryCount := 7;
  MemberCntChartView.ClearSeries;
  MemberCntChartView.BeginUpdate;

  MemberCntChartView.CreateSeries;
  MemberCntChartView.Series[MemberCntChartView.SeriesCount-1].DisplayText := '';
  MemberCntChartView.Series[MemberCntChartView.SeriesCount-1].ValueCaptionFormat := '#,###';

  For I := 6 DownTo 0 Do
  Begin
    MemberCntChartView.ViewData.Categories[abs(I-6)] := dsDay.FieldByName(IntToStr(I)).AsString;
    
    MemberCntChartView.ViewData.Values[0, abs(I-6)] := AMemberCnt.FieldByName(IntToStr(I)).AsFloat;
    if iMax < AMemberCnt.FieldByName(IntToStr(I)).AsInteger then
      iMax := AMemberCnt.FieldByName(IntToStr(I)).AsInteger;
    if iMin > AMemberCnt.FieldByName(IntToStr(I)).AsInteger then
      iMin := AMemberCnt.FieldByName(IntToStr(I)).AsInteger;  
  End;

  if iMax < iMin + 6 then
  begin
    iMin := iMax - 6;
    if iMin < 0 then
      iMin := 0;
  end;

  if iMin <> 0 then
    iMin := iMin - 1;
    
  MemberCntChartView.DiagramLine.AxisValue.MaxValue := iMax;
  MemberCntChartView.DiagramLine.AxisValue.MinValue := iMin;

  MemberCntChartView.EndUpdate;
end;

{** 성별 차트 불러오기
  @param [Sender] TDataSet
* }
procedure TfmDashboard.GenderShow(AGender: TDataSet);
begin
  AGender.Active := true;

  GenderChartView.ViewData.CategoryCount := 2;
  GenderChartView.ClearSeries;
  GenderChartView.BeginUpdate;

  GenderChartView.CreateSeries;
  GenderChartView.Series[GenderChartView.SeriesCount-1].DisplayText := '';
  GenderChartView.Series[GenderChartView.SeriesCount-1].ValueCaptionFormat := '#,###';

  GenderChartView.ViewData.Categories[0] := '남';
  GenderChartView.ViewData.Categories[1] := '여';

  GenderChartView.ViewData.Values[0, 0] := AGender.FieldByName('남자').AsFloat;
  GenderChartView.ViewData.Values[0, 1] := AGender.FieldByName('여자').AsFloat;

  GenderChartView.EndUpdate;
end;

{** 락커 차트 불러오기
  @param [Sender] TDataSet
* }
procedure TfmDashboard.LockerCntShow(ALocker: TDataSet);
begin
  ALocker.Active := true;

  LockerChartView.ViewData.CategoryCount := 2;
  LockerChartView.ClearSeries;
  LockerChartView.BeginUpdate;

  LockerChartView.CreateSeries;
  LockerChartView.Series[LockerChartView.SeriesCount-1].DisplayText := '';
  LockerChartView.Series[LockerChartView.SeriesCount-1].ValueCaptionFormat := '#,###';

  LockerChartView.ViewData.Categories[0] := '사용';
  LockerChartView.ViewData.Categories[1] := '미사용';

  LockerChartView.ViewData.Values[0, 0] := ALocker.FieldByName('사용').AsFloat;
  LockerChartView.ViewData.Values[0, 1] := ALocker.FieldByName('전체').AsFloat - ALocker.FieldByName('사용').AsFloat;

  LockerChartView.EndUpdate;
end;

{** PT 차트 불러오기
  @param [Sender] TDataSet
* }
procedure TfmDashboard.PTCntShow(APt: TDataSet);
var
  I: Integer;
  iMax, iMin : Integer;
begin
  APt.Active := true;

  iMax := 0; iMin := 0;

  PTChartView.ViewData.CategoryCount := 7;
  PTChartView.ClearSeries;
  PTChartView.BeginUpdate;

  PTChartView.CreateSeries;
  PTChartView.Series[PTChartView.SeriesCount-1].DisplayText := '';
  PTChartView.Series[PTChartView.SeriesCount-1].ValueCaptionFormat := '#,###';

  for I := 6 DownTo 0 do
  begin
    PTChartView.ViewData.Categories[abs(I-6)] := dsDay.FieldByName(IntToStr(I)).AsString;
  end;

  for I := 0 to 6 do
  begin
    if PTChartView.ViewData.Categories[I] = APt.FieldByName('day').AsString then
    begin
      PTChartView.ViewData.Values[0, I] := APt.FieldByName('cnt').AsFloat;
      if iMax < APt.FieldByName('cnt').AsInteger then
        iMax := APt.FieldByName('cnt').AsInteger;
      if iMin > APt.FieldByName('cnt').AsInteger then
        iMin := APt.FieldByName('cnt').AsInteger;
      APt.Next;
    end;
  end;

  if iMax < iMin + 6 then
    iMax := iMin + 6;

  PTChartView.DiagramStackedColumn.AxisValue.MaxValue := iMax;
  PTChartView.DiagramStackedColumn.AxisValue.MinValue := iMin;

  PTChartView.EndUpdate;
end;

{** 매출 차트 불러오기
  @param [Sender] TDataSet
* }
procedure TfmDashboard.PaymentShow(APayment: TDataSet);
Var
  I : Integer;
begin
  APayment.Active := true;

  PaymentChartView.ViewData.CategoryCount := 7;
  PaymentChartView.ClearSeries;
  PaymentChartView.BeginUpdate;

  PaymentChartView.CreateSeries;
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].DisplayText := '회원권';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].ValueCaptionFormat := '#,###';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].Styles.Values := StackSeriesValue1;

  for I := 6 DownTo 0 do
  begin
    PaymentChartView.ViewData.Categories[abs(I-6)] := dsDay.FieldByName(IntToStr(I)).AsString;
  end;

  for I := 0 to 6 do
  begin
    if PaymentChartView.ViewData.Categories[I] = APayment.FieldByName('input_date').AsString then
    begin
      PaymentChartView.ViewData.Values[PaymentChartView.SeriesCount-1, I] := APayment.FieldByName('membership').AsFloat;
      APayment.Next;
    end;
  end;

  PaymentChartView.CreateSeries;
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].DisplayText := 'PT';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].ValueCaptionFormat := '#,###';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].Styles.Values := StackSeriesValue2;

  APayment.First;

  for I := 0 to 6 do
  begin
    if PaymentChartView.ViewData.Categories[I] = APayment.FieldByName('input_date').AsString then
    begin
      PaymentChartView.ViewData.Values[PaymentChartView.SeriesCount-1, I] := APayment.FieldByName('pt').AsFloat;
      APayment.Next;
    end;
  end;

  PaymentChartView.CreateSeries;
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].DisplayText := '운동복';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].ValueCaptionFormat := '#,###';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].Styles.Values := StackSeriesValue3;

  APayment.First;

  for I := 0 to 6 do
  begin
    if PaymentChartView.ViewData.Categories[I] = APayment.FieldByName('input_date').AsString then
    begin
      PaymentChartView.ViewData.Values[PaymentChartView.SeriesCount-1, I] := APayment.FieldByName('wear').AsFloat;
      APayment.Next;
    end;
  end;

  PaymentChartView.CreateSeries;
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].DisplayText := '락커';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].ValueCaptionFormat := '#,###';
  PaymentChartView.Series[PaymentChartView.SeriesCount-1].Styles.Values := StackSeriesValue4;

  APayment.First;

  for I := 0 to 6 do
  begin
    if PaymentChartView.ViewData.Categories[I] = APayment.FieldByName('input_date').AsString then
    begin
      PaymentChartView.ViewData.Values[PaymentChartView.SeriesCount-1, I] := APayment.FieldByName('locker').AsFloat;
      APayment.Next;
    end;
  end;

  PaymentChartView.EndUpdate;

end;

{** 매출 퍼센트 차트 불러오기
  @param [Sender] TDataSet
* }
procedure TfmDashboard.PaymentPercentShow(APayment: TDataSet);
begin
  APayment.Active := true;

  PaymentPercentChartView.ViewData.CategoryCount := 4;
  PaymentPercentChartView.ClearSeries;
  PaymentPercentChartView.BeginUpdate;

  PaymentPercentChartView.CreateSeries;
  PaymentPercentChartView.Series[PaymentPercentChartView.SeriesCount-1].DisplayText := '';
  PaymentPercentChartView.Series[PaymentPercentChartView.SeriesCount-1].ValueCaptionFormat := '#,###';

  PaymentPercentChartView.ViewData.Categories[0] := '회원권';
  PaymentPercentChartView.ViewData.Categories[1] := 'PT';
  PaymentPercentChartView.ViewData.Categories[2] := '운동복';
  PaymentPercentChartView.ViewData.Categories[3] := '락커';

  if APayment.RecordCount <> 0 then
  begin
    PaymentPercentChartView.ViewData.Values[0, 0] := APayment.FieldByName('membership').AsFloat;
    PaymentPercentChartView.ViewData.Values[0, 1] := APayment.FieldByName('pt').AsFloat;
    PaymentPercentChartView.ViewData.Values[0, 2] := APayment.FieldByName('wear').AsFloat;
    PaymentPercentChartView.ViewData.Values[0, 3] := APayment.FieldByName('locker').AsFloat;
  end;

  PaymentPercentChartView.EndUpdate;

end;

procedure TfmDashboard.refreshBtnClick(Sender: TObject);
begin
  DashboardController.TDashboardController.GetDay7(Self, End_Date.Text);
  DashboardController.TDashboardController.GetMemberCnt(Self, End_Date.Text);
  DashboardController.TDashboardController.GetMemberGender(Self, End_Date.Text); 
  DashboardController.TDashboardController.GetLockerCnt(Self);
  DashboardController.TDashboardController.GetPTCnt(Self, End_Date.Text);
  DashboardController.TDashboardController.GetPayment(Self, End_Date.Text);
  DashboardController.TDashboardController.GetPaymentPercent(Self, End_Date.Text);
end;

{** 일주일 날짜 세팅
  @param [Sender] TDataSet
* }
procedure TfmDashboard.setDay(ADay: TDataSet);
begin
  dsDay := ADay;
  dsDay.Active := true;
end;

procedure TfmDashboard.GenderChartViewDiagramPieCustomDrawLegendItem(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Index = 0 then
  begin                                
    AViewInfo.LegendKeyParams.Color := $00995A4A;
  end;
  if AViewInfo.Index = 1 then
  begin
    AViewInfo.LegendKeyParams.Color := $00B5B860;
  end;
end;

procedure TfmDashboard.GenderChartViewDiagramPieCustomDrawValue(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
begin
  if AViewInfo.ValueIndex = 0 then
  begin                            
    ACanvas.Brush.Color := $00995A4A;    
  end;
  if AViewInfo.ValueIndex = 1 then
  begin
    ACanvas.Brush.Color := $00B5B860; 
  end;
end;

procedure TfmDashboard.LockerChartViewDiagramPieCustomDrawLegendItem(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Index = 0 then
  begin
    AViewInfo.LegendKeyParams.Color := $0064CE95;
  end;
  if AViewInfo.Index = 1 then
  begin
    AViewInfo.LegendKeyParams.Color := $00FDB727;
  end;
end;

procedure TfmDashboard.LockerChartViewDiagramPieCustomDrawValue(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
begin
  if AViewInfo.ValueIndex = 0 then
  begin
    ACanvas.Brush.Color := $0064CE95;
  end;
  if AViewInfo.ValueIndex = 1 then
  begin
    ACanvas.Brush.Color := $00FDB727;
  end;
end;

procedure TfmDashboard.PaymentPercentChartViewDiagramPieCustomDrawLegendItem(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Index = 0 then
  begin
    AViewInfo.LegendKeyParams.Color := $00B6DA00;
  end
  else if AViewInfo.Index = 1 then
  begin
    AViewInfo.LegendKeyParams.Color := $001DCAFF;
  end
  else if AViewInfo.Index = 2 then
  begin
    AViewInfo.LegendKeyParams.Color := $009456F3;
  end
  else if AViewInfo.Index = 3 then
  begin
    AViewInfo.LegendKeyParams.Color := $00FE5370;
  end;
end;

procedure TfmDashboard.PaymentPercentChartViewDiagramPieCustomDrawValue(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
begin
  if AViewInfo.ValueIndex = 0 then
  begin
    ACanvas.Brush.Color := $00B6DA00;
  end
  else if AViewInfo.ValueIndex = 1 then
  begin
    ACanvas.Brush.Color := $001DCAFF;
  end
  else if AViewInfo.ValueIndex = 2 then
  begin
    ACanvas.Brush.Color := $009456F3;
  end
  else if AViewInfo.ValueIndex = 3 then
  begin
    ACanvas.Brush.Color := $00FE5370;
  end;
end;

end.
