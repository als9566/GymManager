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
    ModifyBtn: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NewInsertBtnClick(Sender: TObject);
    procedure ShowData(ALocker: TDataSet);
    procedure ModifyBtnClick(Sender: TObject);
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

//TODO 새로고침 버튼로직 만들기
//TODO 락커수정 로직만들기(락커가 하나도 없다면 추가view, 등록되어있다면 수정view)

procedure TfmLockerManaging.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmLockerManaging.FormShow(Sender: TObject);
begin
  LockerController.TLockerController.LockerArraySelect(Self);
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
            Caption := '잔여 '+IntToStr(ALocker.FieldByName('locker_end').AsInteger)+'일';
      end;
      ALocker.Next;
    end;
  end;
  LockWindowUpdate(0);
end;

end.
