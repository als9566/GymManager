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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, CurvyControls;

type
  TfmScheduleCreate = class(TForm)
    backPanel: TCurvyPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    Button1: TButton;
    DayEdit: TEdit;
    TimeEdit: TEdit;
    parameter1: TEdit;
    parameter2: TEdit;
    parameter3: TEdit;
    DayLabel: TLabel;
    TimeLabel: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
begin
  DrawRounded(Self,50);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);

  TimeEdit.Text := IntToStr((StrToInt(parameter2.Text) + 5));
  ScheduleController.TScheduleController.Date_Calculation(Self, parameter3.Text, StrToInt(parameter1.Text));
  TimeLabel.Caption := IntToStr((StrToInt(parameter2.Text) + 5)) + ':00';
  DayLabel.Caption := DayEdit.Text;
end;

end.
