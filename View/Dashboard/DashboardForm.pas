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
    procedure FormShow(Sender: TObject);
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

procedure TfmDashboard.FormShow(Sender: TObject);
begin
  with TShadowBox.Create(Self) do
    Control := CurvyPanel1;
  with TShadowBox.Create(Self) do
    Control := CurvyPanel2;
end;

end.
