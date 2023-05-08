unit BlurForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage,
  MemberInsertForm, LockerCreateForm, LockerModifyForm;

type
  TfmBlur = class(TForm)
    imgBlur: TcxImage;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBlur: TfmBlur;
  fmMemberInsert: TfmMemberInsert;
  fmLockerCreate: TfmLockerCreate;
  fmLockerModify: TfmLockerModify;

implementation

uses MainForm;

{$R *.dfm}

procedure TfmBlur.FormActivate(Sender: TObject);
begin

  {** 이미지 태그값마다 다르게 모달창 생성
  @imgBlur.Tag
   : 1 == MemberInsertForm [회원등록]
   : 2 == LockerCreateForm [락커생성]
   : 3 == LockerModifyForm [락커수정]
  * }
  if imgBlur.Tag = 1 then
  begin
    fmMemberInsert := TfmMemberInsert.Create(Self);
    fmMemberInsert.Top := (GymManagerForm.Height - fmMemberInsert.Height) div 2 + GymManagerForm.Top;
    fmMemberInsert.Left := (GymManagerForm.Width - fmMemberInsert.Width) div 2 + GymManagerForm.Left;
    fmMemberInsert.ShowModal;
  end
  else if imgBlur.Tag = 2 then
  begin
    fmLockerCreate := TfmLockerCreate.Create(Self);
    fmLockerCreate.Top := (GymManagerForm.Height - fmLockerCreate.Height) div 2 + GymManagerForm.Top;
    fmLockerCreate.Left := (GymManagerForm.Width - fmLockerCreate.Width) div 2 + GymManagerForm.Left;
    fmLockerCreate.ShowModal;
  end
  else if imgBlur.Tag = 3 then
  begin
    fmLockerModify := TfmLockerModify.Create(Self);
    fmLockerModify.Top := (GymManagerForm.Height - fmLockerModify.Height) div 2 + GymManagerForm.Top;
    fmLockerModify.Left := (GymManagerForm.Width - fmLockerModify.Width) div 2 + GymManagerForm.Left;
    fmLockerModify.ShowModal;
  end;

  close;
end;

procedure TfmBlur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
