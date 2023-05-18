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
  cxButtons, CurvyControls, dxGDIPlusClasses, Vcl.Grids;

type
  TfmMemberDetail = class(TForm)
    backPanel: TCurvyPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    MemberInfoPanel: TCurvyPanel;
    Image1: TImage;
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
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    PaymentRecodePanel: TCurvyPanel;
    Label16: TLabel;
    CurvyPanel1: TCurvyPanel;
    PaymentRecodeScrollBox: TcxScrollBox;
    PaymentRecodeGrid: TStringGrid;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PaymentRecodeGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberDetail: TfmMemberDetail;

implementation

uses
  CommonFunction;

{$R *.dfm}
// TODO 받은 파라미터 id로 맴버디테일 가져오는 로직
procedure TfmMemberDetail.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
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

end.
