unit LockerCreateForm;

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
  dxSkinXmas2008Blue, cxControls, cxScrollBox, Vcl.StdCtrls, cxButtons,
  CurvyControls, Vcl.ExtCtrls;

type
  TfmLockerCreate = class(TForm)
    backPanel: TCurvyPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    Button1: TButton;
    ScrollBox: TcxScrollBox;
    XMinusBtn: TButton;
    YMinusBtn: TButton;
    LockerPanel: TPanel;
    XPlusBtn: TCurvyPanel;
    YPlusBtn: TCurvyPanel;
    Label2: TLabel;
    Label3: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure XPlusBtnClick(Sender: TObject);
    procedure YPlusBtnClick(Sender: TObject);
    procedure XMinusBtnClick(Sender: TObject);
    procedure YMinusBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    arrCurvyPanel : Array of TCurvyPanel;
  end;

var
  fmLockerCreate: TfmLockerCreate;
  LockerX : Integer = 0;
  LockerY : Integer = 0;

implementation

uses
  CommonFunction;

{$R *.dfm}

procedure TfmLockerCreate.cxButton1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfmLockerCreate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  LockerX := 0; LockerY := 0;
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
  Action := CaFree;
end;

procedure TfmLockerCreate.FormShow(Sender: TObject);
begin
  DrawRounded(Self,50);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);
end;

{** X축 락커생성
  @param [Sender] XPlusBtn
* }
procedure TfmLockerCreate.XPlusBtnClick(Sender: TObject);
var
  LockerCnt : Integer;
  I : Integer;
  J : Integer;
begin
  if (LockerX = 0) and (LockerY = 0) then
  begin
    Inc(LockerX); Inc(LockerY);
    with TCurvyPanel.Create(Self) do
    begin
      Parent := LockerPanel;
      Height := 60;
      Width := 80;
      Left := 10;
      Top := 10;
      Name := Format('LockerPanel_%d_%d',[1,1]);
      BorderColor := $00E7E7E7;
      Color := $00E3E3E3;
      Rounding := 4;

      XPlusBtn.Left := Left + Width + 20;
      XPlusBtn.Top := 10;
      XPlusBtn.Height := Height-5;
      XPlusBtn.Width := 25;

      YPlusBtn.Left := Left;
      YPlusBtn.Top := Top + Height + 20;
      YPlusBtn.Height := 25;
      YPlusBtn.Width := Width-5;
    end;
  end
  else
  begin
    J := 0;
    LockerCnt := (LockerX + 1) * LockerY;

    for I := (LockerX * LockerY) to LockerCnt-1 do
    begin
      with TCurvyPanel.Create(Self) do begin
        Parent := LockerPanel;
        Height := 60;
        Width := 80;
        Left := 10 + (88 * LockerX);
        Top := 10 + (68 * J);
        Name := Format('LockerPanel_%d_%d',[LockerX+1,J+1]);
        BorderColor := $00E7E7E7;
        Color := $00E3E3E3;
        Rounding := 4;

        XPlusBtn.Left := Left + Width + 20;
        XPlusBtn.Top := 10;
        XPlusBtn.Height := Top + Height-5;
        XPlusBtn.Width := 25;

        YPlusBtn.Width := Left + Width-5;
      end;
      Inc(J);
    end;

    Inc(LockerX);
  end;

  LockerPanel.Width  := 10 + (88 * LockerX) + 80;
  LockerPanel.Height := 10 + (LockerY * 68) + 60;
end;

{** Y축 락커생성
  @param [Sender] YPlusBtn
* }
procedure TfmLockerCreate.YPlusBtnClick(Sender: TObject);
var
  LockerCnt : Integer;
  I : Integer;
  J : Integer;
begin

  if (LockerX = 0) and (LockerY = 0) then
  begin
    Inc(LockerX); Inc(LockerY);
    with TCurvyPanel.Create(Self) do
    begin
      Parent := LockerPanel;
      Height := 60;
      Width := 80;
      Left := 10;
      Top := 10;
      Name := Format('LockerPanel_%d_%d',[1,1]);
      BorderColor := $00E7E7E7;
      Color := $00E3E3E3;
      Rounding := 4;

      YPlusBtn.Left := Left;
      YPlusBtn.Top := Top + Height + 20;
      YPlusBtn.Height := 25;
      YPlusBtn.Width := Width-5;

      XPlusBtn.Left := Left + Width + 20;
      XPlusBtn.Top := 10;
      XPlusBtn.Height := Height-5;
      XPlusBtn.Width := 25;
    end;
  end
  else
  begin
    J := 0;
    LockerCnt := LockerX * (LockerY + 1);

    for I := (LockerX * LockerY) to LockerCnt-1 do
    begin
      with TCurvyPanel.Create(Self) do begin
        Parent := LockerPanel;
        Height := 60;
        Width := 80;
        Left := 10 + (88 * J);
        Top := 10 + (68 * LockerY);
        Name := Format('LockerPanel_%d_%d',[J+1,LockerY+1]);
        BorderColor := $00E7E7E7;
        Color := $00E3E3E3;
        Rounding := 4;

        YPlusBtn.Left := 10;
        YPlusBtn.Top := Top + Height + 20;
        YPlusBtn.Height := 25;
        YPlusBtn.Width := Left + Width-5;

        XPlusBtn.Height := Top + Height-5;
      end;
      Inc(J);
    end;
    Inc(LockerY);
  end;

  LockerPanel.Width  := 10 + (88 * LockerX) + 80;
  LockerPanel.Height := 10 + (LockerY * 68) + 60;
end;

{** X축 락커삭제
  @param [Sender] XMinusBtn
* }
procedure TfmLockerCreate.XMinusBtnClick(Sender: TObject);
var
  I : integer;
begin
  for I := 0 to TCurvyPanel(Sender).Parent.ControlCount - 1 do
  begin
    //TODO 컴포넌트 이름이 LockerX축이라면 삭제
    if TCurvyPanel(Sender).Parent.Controls[i].Name = '' then
    begin
      TCurvyPanel(Sender).Parent.Controls[i].Free;
    end;
  end;
end;

{** Y축 락커삭제
  @param [Sender] YMinusBtn
* }
procedure TfmLockerCreate.YMinusBtnClick(Sender: TObject);
var
  I : integer;
begin
  for I := 0 to TCurvyPanel(Sender).Parent.ControlCount - 1 do
  begin
    //TODO 컴포넌트 이름이 LockerY축이라면 삭제
    if TCurvyPanel(Sender).Parent.Controls[i].Name = '' then
    begin
      TCurvyPanel(Sender).Parent.Controls[i].Free;
    end;
  end;
end;

end.
