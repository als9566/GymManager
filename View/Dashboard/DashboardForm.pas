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
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
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
    cxStyleRepository4: TcxStyleRepository;
    LineValue: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle7: TcxStyle;
    Label1: TLabel;
    Label2: TLabel;
    CurvyPanel3: TCurvyPanel;
    Label3: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBChartView1: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridLevel1: TcxGridLevel;
    CurvyPanel4: TCurvyPanel;
    Label4: TLabel;
    cxGrid4: TcxGrid;
    cxGridDBChartView3: TcxGridDBChartView;
    cxGridDBChartSeries3: TcxGridDBChartSeries;
    cxGridLevel3: TcxGridLevel;
    CurvyPanel5: TCurvyPanel;
    Label5: TLabel;
    cxGrid5: TcxGrid;
    cxGridDBChartView4: TcxGridDBChartView;
    cxGridDBChartSeries4: TcxGridDBChartSeries;
    cxGridLevel4: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBChartView5: TcxGridDBChartView;
    cxGridDBChartSeries5: TcxGridDBChartSeries;
    cxGridLevel5: TcxGridLevel;
    cxGridDBChartView4Series1: TcxGridDBChartSeries;
    cxGridDBChartView4Series4: TcxGridDBChartSeries;
    cxGridDBChartView4Series5: TcxGridDBChartSeries;
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

  End_Date.Text := formatDateTime('yyyy-mm-dd',now);

  DashboardController.TDashboardController.GetDay7(Self, End_Date.Text);
  DashboardController.TDashboardController.GetMemberCnt(Self, End_Date.Text); 
  DashboardController.TDashboardController.GetMemberGender(Self, End_Date.Text); 
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

procedure TfmDashboard.refreshBtnClick(Sender: TObject);
begin
  DashboardController.TDashboardController.GetMemberCnt(Self, End_Date.Text);
  DashboardController.TDashboardController.GetMemberGender(Self, End_Date.Text); 
end;

{** 일주일 날짜 세팅
  @param [Sender] TDataSet
* }
procedure TfmDashboard.setDay(ADay: TDataSet);
begin
  dsDay := ADay;
  dsDay.Active := true;
end;

end.
