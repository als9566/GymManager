unit LockerManagingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxScrollBox, CurvyControls, Vcl.Menus, cxButtons, BlurForm;

type
  TfmLockerManaging = class(TForm)
    backPanel: TPanel;
    MenuNameLabel: TLabel;
    Shape1: TShape;
    MemberCntPanel: TPanel;
    LockerCntLabel2: TLabel;
    LockerCntLabel3: TLabel;
    LockerEndCnt: TLabel;
    LockerIngCnt: TLabel;
    LockerTotalCnt: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    LockerPanel: TcxScrollBox;
    NewInsertBtn: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NewInsertBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    arrCurvyPanel : Array of TCurvyPanel;
  end;

var
  fmLockerManaging: TfmLockerManaging;
  fmBlur: TfmBlur;

implementation

uses
  CommonFunction, MainForm;

{$R *.dfm}

procedure TfmLockerManaging.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmLockerManaging.FormShow(Sender: TObject);
var
  X, Y : Integer;
  iCount : Integer;
begin
  iCount := 0;

  SetLength(arrCurvyPanel, 50);

  for Y := 0 to 4 do
  begin
    for X := 0 to 9 do
    begin
      arrCurvyPanel[iCount] := TCurvyPanel.Create(nil);
      with arrCurvyPanel[iCount] do
      begin
          //Parent := Self;
          Parent := LockerPanel;
          Height := 60;
          Width := 80;
          Left := 10 + (88 * X);
          Top := 10 + (68 * Y);
          Name := Format('LockerPanel_%d',[iCount]);
          BorderColor := $00E7E7E7;
          Color := $00E3E3E3;
          Rounding := 4;
          //OnClick := GetCtrlName;
      end;
      Inc(iCount);
    end;
  end;

end;

{** 신규버튼 이벤트 (락커생성창 띄우기)
  @param [Sender] NewInsertBtn
* }
procedure TfmLockerManaging.NewInsertBtnClick(Sender: TObject);
begin
  fmBlur := TfmBlur.Create(Self);
  fmBlur.Top := GymManagerForm.Top;
  fmBlur.Left := GymManagerForm.Left;
  fmBlur.Height := GymManagerForm.Height;
  fmBlur.Width := GymManagerForm.Width;
  fmBlur.imgBlur.Tag := 2;
  fmBlur.Show;
end;

end.
