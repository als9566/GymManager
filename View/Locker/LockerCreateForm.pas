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
    ScrollBox: TcxScrollBox;
    LockerPanel: TPanel;
    XPlusBtn: TCurvyPanel;
    YPlusBtn: TCurvyPanel;
    Label2: TLabel;
    Label3: TLabel;
    SaveBtnPanel: TCurvyPanel;
    SaveBtn: TLabel;
    CloseBtnPanel: TCurvyPanel;
    CloseBtn: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure XPlusBtnClick(Sender: TObject);
    procedure YPlusBtnClick(Sender: TObject);
    procedure XMinusBtnClick(Sender: TObject);
    procedure YMinusBtnClick(Sender: TObject);
    procedure MinusBtnCreate(pXY : String; pN : Integer);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure SaveBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SaveBtnMouseLeave(Sender: TObject);
    procedure SaveBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SaveBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CloseBtnMouseLeave(Sender: TObject);
    procedure CloseBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CloseBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
  CommonFunction, ShadowBox, LockerController;

{$R *.dfm}

procedure TfmLockerCreate.SaveBtnClick(Sender: TObject);
begin
  LockerController.TLockerController.LockerInsert(self,LockerX,LockerY);
end;

procedure TfmLockerCreate.CloseBtnClick(Sender: TObject);
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

  with TShadowBox.Create(Self) do
    Control := XPlusBtn;
  with TShadowBox.Create(Self) do
    Control := YPlusBtn;
end;

{** X축 락커생성
  @param [Sender] XPlusBtn
* }
procedure TfmLockerCreate.XPlusBtnClick(Sender: TObject);
var
  LockerCnt : Integer;
  I : Integer;
  J : Integer;
  sCurvyPanel : TCurvyPanel;
begin
  LockWindowUpdate(Handle);

  if (LockerX = 0) and (LockerY = 0) then
  begin
    Inc(LockerX); Inc(LockerY);
    sCurvyPanel := TCurvyPanel.Create(Self);
    with sCurvyPanel do
    begin
      Parent := LockerPanel;
      Height := 60;
      Width := 80;
      Left := 10;
      Top := 15;
      Name := Format('LockerPanel_%d_%d',[1,1]);
      BorderColor := $00EEEEEE;
      Color := $00EEEEEE;
      Rounding := 4;

      XPlusBtn.Left := Left + Width + 20;
      XPlusBtn.Top := 15;
      XPlusBtn.Height := Height-5;
      XPlusBtn.Width := 25;

      YPlusBtn.Left := Left;
      YPlusBtn.Top := Top + Height + 20;
      YPlusBtn.Height := 25;
      YPlusBtn.Width := Width-5;
    end;
    with TEdit.Create(Self) do
    begin
        Parent := sCurvyPanel;
        Alignment := taCenter;
        BorderStyle := bsNone;
        Width := 80;
        Left := 0;
        Top := 20;
        Color := $00EEEEEE;
        Name := Format('LockerEdit_%d_%d',[1,1]);
        Text := '';
    end;

    MinusBtnCreate('X', 1);
  end
  else
  begin
    J := 0;
    LockerCnt := (LockerX + 1) * LockerY;

    for I := (LockerX * LockerY) to LockerCnt-1 do
    begin
      sCurvyPanel := TCurvyPanel.Create(Self);
      with sCurvyPanel do begin
        Parent := LockerPanel;
        Height := 60;
        Width := 80;
        Left := 10 + (88 * LockerX);
        Top := 15 + (68 * J);
        Name := Format('LockerPanel_%d_%d',[LockerX+1,J+1]);
        BorderColor := $00EEEEEE;
        Color := $00EEEEEE;
        Rounding := 4;

        XPlusBtn.Left := Left + Width + 20;
        XPlusBtn.Top := 15;
        XPlusBtn.Height := Top + Height-5;
        XPlusBtn.Width := 25;

        YPlusBtn.Width := Left + Width-5;
      end;
      with TEdit.Create(Self) do
      begin
          Parent := sCurvyPanel;
          Alignment := taCenter;
          BorderStyle := bsNone;
          Width := 80;
          Left := 0;
          Top := 20;
          Color := $00EEEEEE;
          Name := Format('LockerEdit_%d_%d',[LockerX+1,J+1]);
          Text := '';
      end;
      Inc(J);
    end;

    MinusBtnCreate('X', LockerX+1);

    Inc(LockerX);
  end;

  LockerPanel.Width  := 10 + (88 * LockerX) + 80;
  LockerPanel.Height := 15 + (LockerY * 68) + 60;

  LockWindowUpdate(0);
end;

{** Y축 락커생성
  @param [Sender] YPlusBtn
* }
procedure TfmLockerCreate.YPlusBtnClick(Sender: TObject);
var
  LockerCnt : Integer;
  I : Integer;
  J : Integer;
  sCurvyPanel : TCurvyPanel;
begin
  LockWindowUpdate(Handle);

  if (LockerX = 0) and (LockerY = 0) then
  begin
    Inc(LockerX); Inc(LockerY);
    sCurvyPanel := TCurvyPanel.Create(Self);
    with sCurvyPanel do
    begin
      Parent := LockerPanel;
      Height := 60;
      Width := 80;
      Left := 10;
      Top := 15;
      Name := Format('LockerPanel_%d_%d',[1,1]);
      BorderColor := $00EEEEEE;
      Color := $00EEEEEE;
      Rounding := 4;

      YPlusBtn.Left := Left;
      YPlusBtn.Top := Top + Height + 20;
      YPlusBtn.Height := 25;
      YPlusBtn.Width := Width-5;

      XPlusBtn.Left := Left + Width + 20;
      XPlusBtn.Top := 15;
      XPlusBtn.Height := Height-5;
      XPlusBtn.Width := 25;
    end;
    with TEdit.Create(Self) do
    begin
        Parent := sCurvyPanel;
        Alignment := taCenter;
        BorderStyle := bsNone;
        Width := 80;
        Left := 0;
        Top := 20;
        Color := $00EEEEEE;
        Name := Format('LockerEdit_%d_%d',[1,1]);
        Text := '';
    end;

    MinusBtnCreate('Y', 1);
  end
  else
  begin
    J := 0;
    LockerCnt := LockerX * (LockerY + 1);

    for I := (LockerX * LockerY) to LockerCnt-1 do
    begin
      sCurvyPanel := TCurvyPanel.Create(Self);
      with sCurvyPanel do begin
        Parent := LockerPanel;
        Height := 60;
        Width := 80;
        Left := 10 + (88 * J);
        Top := 15 + (68 * LockerY);
        Name := Format('LockerPanel_%d_%d',[J+1,LockerY+1]);
        BorderColor := $00EEEEEE;
        Color := $00EEEEEE;
        Rounding := 4;

        YPlusBtn.Left := 10;
        YPlusBtn.Top := Top + Height + 20;
        YPlusBtn.Height := 25;
        YPlusBtn.Width := Left + Width-5;

        XPlusBtn.Height := Top + Height-5;
      end;
      with TEdit.Create(Self) do
      begin
          Parent := sCurvyPanel;
          Alignment := taCenter;
          BorderStyle := bsNone;
          Width := 80;
          Left := 0;
          Top := 20;
          Color := $00EEEEEE;
          Name := Format('LockerEdit_%d_%d',[J+1,LockerY+1]);
          Text := '';
      end;
      Inc(J);
    end;

    MinusBtnCreate('Y', LockerY+1);

    Inc(LockerY);
  end;

  LockerPanel.Width  := 10 + (88 * LockerX) + 80;
  LockerPanel.Height := 15 + (LockerY * 68) + 60;

  LockWindowUpdate(0);
end;

{** X축 락커삭제
  @param [Sender] XMinusBtn
* }
procedure TfmLockerCreate.XMinusBtnClick(Sender: TObject);
var
  I, J : integer;
  arrStr: TArray<string>;
  sStr: string;
  sComponent : TComponent;
begin

  sStr := TCurvyPanel(Sender).Name;
  arrStr := sStr.Split(['_']);

  TLabel(Sender).Free;

  for I := 1 to LockerY do
  begin
    sComponent := FindComponent(Format('LockerPanel_%d_%d',[StrToInt(arrStr[1]),I]));
    TCurvyPanel(sComponent).Free;
  end;

  for I := StrToInt(arrStr[1])+1 to LockerX do
  begin
    for J := 1 to LockerY do
    begin
      sComponent := FindComponent(Format('LockerPanel_%d_%d',[i,j]));
      TCurvyPanel(sComponent).Name := Format('LockerPanel_%d_%d',[i-1,j]);
      TCurvyPanel(sComponent).Left := TCurvyPanel(sComponent).Left - 88;

      sComponent := FindComponent(Format('LockerEdit_%d_%d',[i,j]));
      TEdit(sComponent).Name := Format('LockerEdit_%d_%d',[i-1,j]);
    end;
    sComponent := FindComponent(Format('MinusBtnX_%d',[i]));
    TLabel(sComponent).Name := Format('MinusBtnX_%d',[i-1]);
    TLabel(sComponent).Left := TCurvyPanel(sComponent).Left - 88;
  end;

  YPlusBtn.Width := YPlusBtn.Width - 88;
  XPlusBtn.Left := XPlusBtn.Left - 88;

  LockerX := LockerX - 1;

  if LockerX = 0 then
  begin
    for I := 1 to LockerY do
    begin
      sComponent := FindComponent(Format('MinusBtnY_%d',[I]));
      TLabel(sComponent).Free;
    end;
    LockerY := 0;
    XPlusBtn.Left := 10; XPlusBtn.Top := 10;
    YPlusBtn.Left := 10; YPlusBtn.Top := 10;
    XPlusBtn.Width := 80; XPlusBtn.Height := 60;
    YPlusBtn.Width := 80; YPlusBtn.Height := 60;
  end;

end;

{** Y축 락커삭제
  @param [Sender] YMinusBtn
* }
procedure TfmLockerCreate.YMinusBtnClick(Sender: TObject);
var
  I, J : integer;
  arrStr: TArray<string>;
  sStr: string;
  sComponent : TComponent;
begin

  sStr := TCurvyPanel(Sender).Name;
  arrStr := sStr.Split(['_']);

  TLabel(Sender).Free;

  for I := 1 to LockerX do
  begin
    sComponent := FindComponent(Format('LockerPanel_%d_%d',[I,StrToInt(arrStr[1])]));
    TCurvyPanel(sComponent).Free;
  end;

  for I := StrToInt(arrStr[1])+1 to LockerY do
  begin
    for J := 1 to LockerX do
    begin
      sComponent := FindComponent(Format('LockerPanel_%d_%d',[J,I]));
      TCurvyPanel(sComponent).Name := Format('LockerPanel_%d_%d',[J,I-1]);
      TCurvyPanel(sComponent).Top := TCurvyPanel(sComponent).Top - 68;

      sComponent := FindComponent(Format('LockerEdit_%d_%d',[J,I]));
      TEdit(sComponent).Name := Format('LockerEdit_%d_%d',[J,I-1]);
    end;
    sComponent := FindComponent(Format('MinusBtnY_%d',[I]));
    TLabel(sComponent).Name := Format('MinusBtnY_%d',[I-1]);
    TLabel(sComponent).Top := TCurvyPanel(sComponent).Top - 68;
  end;

  YPlusBtn.Top := YPlusBtn.Top - 68;
  XPlusBtn.Height := XPlusBtn.Height - 68;

  LockerY := LockerY - 1;

  if LockerY = 0 then
  begin
    for I := 1 to LockerX do
    begin
      sComponent := FindComponent(Format('MinusBtnX_%d',[I]));
      TLabel(sComponent).Free;
    end;
    LockerX := 0;
    XPlusBtn.Left := 10; XPlusBtn.Top := 10;
    YPlusBtn.Left := 10; YPlusBtn.Top := 10;
    XPlusBtn.Width := 80; XPlusBtn.Height := 60;
    YPlusBtn.Width := 80; YPlusBtn.Height := 60;
  end;

end;

{** X,Y 축 삭제버튼 생성
  @param [pXY] : 축(X,Y)
         [pN ] : 축의 자리
* }
procedure TfmLockerCreate.MinusBtnCreate(pXY : String; pN : Integer);
begin

  if (pXY = 'x') or (pXY = 'X') then
  begin
    with TLabel.Create(Self) do
    begin
      Parent := LockerPanel;
      Height := 20;
      Width := 20;
      Left := 47 + (88 * (pN-1));
      Top := 0;
      Name := Format('MinusBtnX_%d',[pN]);
      Caption := '-';
      Alignment := taCenter;
      Layout := tlCenter;
      ParentFont := False;
      Font.Style := [fsBold];
      Cursor := crHandPoint;
      OnClick := XMinusBtnClick;
    end;
    if pN = 1 then
    begin
      with TLabel.Create(Self) do
      begin
        Parent := LockerPanel;
        Height := 20;
        Width := 20;
        Left := 0;
        Top := 38 + (68 * (pN-1));
        Name := Format('MinusBtnY_%d',[pN]);
        Caption := '-';
        Alignment := taCenter;
        Layout := tlCenter;
        ParentFont := False;
        Font.Style := [fsBold];
        Cursor := crHandPoint;
        OnClick := YMinusBtnClick;
      end;
    end;
  end
  else if (pXY = 'y') or (pXY = 'Y') then
  begin
    with TLabel.Create(Self) do
    begin
      Parent := LockerPanel;
      Height := 20;
      Width := 20;
      Left := 0;
      Top := 38 + (68 * (pN-1));
      Name := Format('MinusBtnY_%d',[pN]);
      Caption := '-';
      Alignment := taCenter;
      Layout := tlCenter;
      ParentFont := False;
      Font.Style := [fsBold];
      Cursor := crHandPoint;
      OnClick := YMinusBtnClick;
    end;
    if pN = 1 then
    begin
      with TLabel.Create(Self) do
      begin
        Parent := LockerPanel;
        Height := 20;
        Width := 20;
        Left := 47 + (88 * (pN-1));
        Top := 0;
        Name := Format('MinusBtnX_%d',[pN]);
        Caption := '-';
        Alignment := taCenter;
        Layout := tlCenter;
        ParentFont := False;
        Font.Style := [fsBold];
        Cursor := crHandPoint;
        OnClick := XMinusBtnClick;
      end;
    end;
  end;

end;

procedure TfmLockerCreate.SaveBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SaveBtnPanel.Color := $00FFF2E6;
end;

procedure TfmLockerCreate.SaveBtnMouseLeave(Sender: TObject);
begin
  SaveBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmLockerCreate.SaveBtnMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  SaveBtnPanel.BorderColor := $00747474;
end;

procedure TfmLockerCreate.SaveBtnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  SaveBtnPanel.Color := clWhite;
end;

procedure TfmLockerCreate.CloseBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CloseBtnPanel.Color := $00FFF2E6;
end;

procedure TfmLockerCreate.CloseBtnMouseLeave(Sender: TObject);
begin
  CloseBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmLockerCreate.CloseBtnMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  CloseBtnPanel.BorderColor := $00747474;
end;

procedure TfmLockerCreate.CloseBtnMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  CloseBtnPanel.Color := clWhite;
end;

end.
