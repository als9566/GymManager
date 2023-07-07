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
  cxGridCustomView, cxGrid, dxmdaset, cxClasses, Vcl.ExtCtrls, Vcl.StdCtrls;

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
    cxGrid1: TcxGrid;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid1Level1: TcxGridLevel;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
    cxStyleRepository6: TcxStyleRepository;
    cxStyle6: TcxStyle;
    cxStyleRepository7: TcxStyleRepository;
    cxStyle7: TcxStyle;
    Label1: TLabel;
    Label2: TLabel;
    cxGrid3: TcxGrid;
    cxGridDBChartView2: TcxGridDBChartView;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridLevel2: TcxGridLevel;
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
    procedure FormShow(Sender: TObject);
    procedure cxGridDBChartView1DiagramPieCustomDrawValue(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
    procedure cxGridDBChartView1DiagramPieCustomDrawLegendItem(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
    procedure DashboardScrollBoxMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DashboardScrollBoxMouseWheelUp(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmDashboard: TfmDashboard;

implementation

uses
  CommonFunction, MainForm, ShadowBoxMain;

{$R *.dfm}

procedure TfmDashboard.cxGridDBChartView1DiagramPieCustomDrawLegendItem(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartLegendItemViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Index = 0 then
  begin
    AViewInfo.LegendKeyParams.Color := clBlack;
  end;
  if AViewInfo.Index = 1 then
  begin
    AViewInfo.LegendKeyParams.Color := clBlack;
  end;
end;

procedure TfmDashboard.cxGridDBChartView1DiagramPieCustomDrawValue(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
begin
  if AViewInfo.ValueIndex = 0 then
  begin
    ACanvas.Brush.Color := clBlack;
  end;
  if AViewInfo.ValueIndex = 1 then
  begin
    ACanvas.Brush.Color := clBlack;
  end;
end;

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
end;

end.
