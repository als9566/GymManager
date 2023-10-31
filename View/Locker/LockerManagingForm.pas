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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,Data.DB,
  dxSkinXmas2008Blue, cxScrollBox, CurvyControls, Vcl.Menus, cxButtons, BlurForm,
  dxGDIPlusClasses;

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
    GuideText: TLabel;
    refreshBtn: TImage;
    Label1: TLabel;
    LockerCreateBtnPanel: TCurvyPanel;
    LockerCreateBtn: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NewInsertBtnClick(Sender: TObject);
    procedure ShowData(ALocker: TDataSet);
    procedure ModifyBtnClick(Sender: TObject);
    procedure BaseSetting(ALocker: TDataSet);
    procedure refreshBtnClick(Sender: TObject);
    procedure LockerCreateBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LockerCreateBtnMouseLeave(Sender: TObject);
    procedure LockerCreateBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure LockerCreateBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    arrCurvyPanel : Array of TCurvyPanel;
  end;

var
  fmLockerManaging: TfmLockerManaging;
  fmBlur: TfmBlur;
  iMaxX, iMaxY : Integer;

implementation

uses
  CommonFunction, MainForm, LockerController;

{$R *.dfm}
procedure TfmLockerManaging.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmLockerManaging.FormShow(Sender: TObject);
begin
  LockerController.TLockerController.LockerArraySelect(Self);
  LockerController.TLockerController.CountSelect(Self);
end;

procedure TfmLockerManaging.LockerCreateBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LockerCreateBtnPanel.Color := $00FFF2E6;
end;

procedure TfmLockerManaging.LockerCreateBtnMouseLeave(Sender: TObject);
begin
  LockerCreateBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmLockerManaging.LockerCreateBtnMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  LockerCreateBtnPanel.BorderColor := $00747474;
end;

procedure TfmLockerManaging.LockerCreateBtnMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  LockerCreateBtnPanel.Color := clWhite;
end;

{** 수정버튼 이벤트 (락커수정창 띄우기)
  @param [Sender] NewInsertBtn
* }
procedure TfmLockerManaging.ModifyBtnClick(Sender: TObject);
begin
  fmBlur := TfmBlur.Create(Self);
  fmBlur.Top := GymManagerForm.Top;
  fmBlur.Left := GymManagerForm.Left;
  fmBlur.Height := GymManagerForm.Height;
  fmBlur.Width := GymManagerForm.Width;
  fmBlur.imgBlur.Tag := 3;
  fmBlur.Show;
  refreshBtnClick(Self);
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
  refreshBtnClick(Self);
end;

{** 새로고침
* }
procedure TfmLockerManaging.refreshBtnClick(Sender: TObject);
var
  tempComponent : TComponent;
  I, J : Integer;
begin
  for I := 1 to iMaxY do
  begin
    for J := 1 to iMaxX do
    begin
      tempComponent := FindComponent(Format('LockerPanel_%d_%d',[J,I]));
      TCurvyPanel(tempComponent).Destroy;
    end;
  end;
  LockerController.TLockerController.LockerArraySelect(Self);
  LockerController.TLockerController.CountSelect(Self);
end;

{** 락커동적 생성
  @param [Sender] TDataSet
* }
procedure TfmLockerManaging.ShowData(ALocker: TDataSet);
var
  sCurvyPanel : TCurvyPanel;
  I, J : Integer;
begin
  ALocker.Active := true;

  LockWindowUpdate(Handle);
  for I := 1 to iMaxY do
  begin
    for J := 1 to iMaxX do
    begin
      sCurvyPanel := TCurvyPanel.Create(Self);
      with sCurvyPanel do begin
        Parent := LockerPanel;
        Height := 75;
        Width := 95;
        Left := 10 + (103 * (J-1));
        Top := 15 + (83 * (I-1));
        Name := Format('LockerPanel_%d_%d',[J,I]);
        Tag := ALocker.FieldByName('id').AsInteger;
        BorderColor := $00EEEEEE;
        Color := $00EEEEEE;
        Rounding := 4;
      end;
      with TLabel.Create(Self) do
      begin
          Parent := sCurvyPanel;
          Alignment := taCenter;
          AutoSize := False;
          Caption := ALocker.FieldByName('num').AsString;
          Font.Color := $00707070;
          Font.Name := '맑은 고딕';
          Font.Size := 12;
          Font.Style := [fsBold];
          ParentFont := False;
          Height := 22;
          Width := 22;
          Left := 5;
          Top := 5;
          Name := Format('LockerNum_%d_%d',[J,I]);
      end;
      with TLabel.Create(Self) do
      begin
          Parent := sCurvyPanel;
          Alignment := taCenter;
          AutoSize := False;
          Font.Color := $00707070;
          Font.Name := '맑은 고딕';
          Font.Size := 12;
          Font.Style := [fsBold];
          ParentFont := False;
          Height := 21;
          Width := 95;
          Left := 0;
          Top := 27;
          Name := Format('LockerName_%d_%d',[J,I]);
          if ALocker.FieldByName('name').AsString = '' then
            Caption := ''
          else
            Caption := ALocker.FieldByName('name').AsString;
      end;
      with TLabel.Create(Self) do
      begin
          Parent := sCurvyPanel;
          Alignment := taCenter;
          AutoSize := False;
          Font.Color := $00959595;
          Font.Name := '맑은 고딕';
          Font.Size := 8;
          Font.Style := [fsBold];
          ParentFont := False;
          Height := 13;
          Width := 95;
          Left := 0;
          Top := 55;
          Name := Format('LockerDay_%d_%d',[J,I]);
          if ALocker.FieldByName('locker_end').AsString = '' then
            Caption := ''
          else
            Caption := '잔여 '+FloatToStr(ALocker.FieldByName('locker_end').AsFloat)+'일';
      end;
      ALocker.Next;
    end;
  end;
  LockWindowUpdate(0);
end;

{** 락커 수 및 버튼 동적 적용
  @param [Sender] TDataSet
* }
procedure TfmLockerManaging.BaseSetting(ALocker: TDataSet);
begin
  ALocker.Active := true;

  LockWindowUpdate(Handle);

  LockerTotalCnt.Caption := ALocker.FieldByName('전체').AsString;
  LockerIngCnt.Caption := ALocker.FieldByName('사용').AsString;
  LockerEndCnt.Caption := IntToStr(ALocker.FieldByName('전체').AsInteger - ALocker.FieldByName('사용').AsInteger);

  if ALocker.FieldByName('전체').AsInteger = 0 then
  begin
    LockerCreateBtn.Caption := '락커생성';
    LockerCreateBtn.OnClick := NewInsertBtnClick;
    GuideText.Visible := true;
  end
  else
  begin
    LockerCreateBtn.Caption := '락커수정';
    LockerCreateBtn.OnClick := ModifyBtnClick;
    GuideText.Visible := false;
  end;

  LockWindowUpdate(0);
end;

end.
