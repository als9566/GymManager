unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, dxGDIPlusClasses, Vcl.CategoryButtons, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxActivityIndicator, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.SQLiteVDataSet, FireDAC.Comp.UI, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, cxContainer, cxEdit, cxImage;

type
  TGymManagerForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    SV: TSplitView;
    catMenuItems: TCategoryButtons;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    imlIcons: TImageList;
    imgMenu: TImage;
    MinimizeImgBtn: TImage;
    MaximizeImgBtn: TImage;
    ColseImgBtn: TImage;
    BarBtnImageList: TImageList;
    imgBlur: TcxImage;
    procedure FormShow(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgMenuClick(Sender: TObject);
    procedure MinimizeImgBtnClick(Sender: TObject);
    procedure MaximizeImgBtnClick(Sender: TObject);
    procedure ColseImgBtnClick(Sender: TObject);
    procedure ImgBtnMouseEnter(Sender: TObject);
    procedure ImgBtnMouseLeave(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure WMNCHitTest(var message: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  GymManagerForm: TGymManagerForm;

implementation

{$R *.dfm}

uses
  MemberManagingForm, CommonFunction;

//깜빡임 제거
//로직 가운데에 넣기
//LockWindowUpdate(0);
//LockWindowUpdate(Handle);

//메뉴열기
//fmMemberManaging := TfmMemberManaging.Create(Application);

//가운데로 위치
//Panel5.Top := (self.Height - panel5.Height) div 2;
//Panel5.Left := (self.Width - panel5.Width) div 2;

//화면블러
//  imgBlur.BringToFront;
//
//  imgBlur.Visible := true;
//
//  imgBlur.Top := 0;
//  imgBlur.Left := 0;
//
//  imgBlur.Width := GymManagerForm.Width;
//  imgBlur.Height := GymManagerForm.Height;

procedure TGymManagerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TGymManagerForm.FormShow(Sender: TObject);
var
  rgn: HRGN;
  Item: TButtonItem;
begin
  GymManagerForm.Borderstyle := bsNone;

  //실행파일 위치의 SQLite DB설정
  FDConnection1.Params.Database := ExtractFilePath(Application.ExeName)+ 'test.db';

  //메뉴버튼 생성
  with FDQuery1 do
  begin
    Open('select * from menu');
    if not Eof then
    begin
      While not EOF do
      begin
        Item := catMenuItems.Categories[0].Items.Add;
        Item.Caption := FieldByName('menu_name').AsString;
        //Item.Hint := Format('Menu %d %d', [i,j]);
        //TCategoryButtons.OnButtonClicked 이벤트를 이용하면 각 TButtonItem에 이벤트를 걸지 않아도 됩니다.
        Next;
      end;
    end;

  end;

end;

{** 메뉴 열고닫기
  @param [Sender] imgMenu
* }
procedure TGymManagerForm.imgMenuClick(Sender: TObject);
begin
  if SV.Opened then
    SV.Close
  else
    SV.Open;
end;

{** Panel을 상단바로 사용하기위함
    폼 이동가능하게 하는로직
  @param [Sender] Panel1
* }
procedure TGymManagerForm.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  SendMessage(Handle, WM_NCLBUTTONDOWN, HTCAPTION, 0);
end;

procedure TGymManagerForm.WMNCHitTest(var message: TWMNCHitTest);
const
  EDGEDETECT = 7;
var
  deltaRect: TRect;
begin
  inherited;

  if BorderStyle = bsNone then
    with Message, deltaRect do
  begin
      Left   := XPos - BoundsRect.Left;
      Right  := BoundsRect.Right - XPos;
      Top    := YPos - BoundsRect.Top;
      Bottom := BoundsRect.Bottom - YPos;
      if (Top < EDGEDETECT) and (Left < EDGEDETECT) then
        Result := HTTOPLEFT
      else if (Top < EDGEDETECT) and (Right < EDGEDETECT) then
        Result := HTTOPRIGHT
      else if (Bottom < EDGEDETECT) and (Left < EDGEDETECT) then
        Result := HTBOTTOMLEFT
      else if (Bottom < EDGEDETECT) and (Right < EDGEDETECT) then
        Result := HTBOTTOMRIGHT
      else if (Top < EDGEDETECT) then
        Result := HTTOP
      else if (Left < EDGEDETECT) then
        Result := HTLEFT
      else if (Bottom < EDGEDETECT) then
        Result := HTBOTTOM
      else if (Right < EDGEDETECT) then
        Result := HTRIGHT
  end;

end;

{** 화면 최대화
  @param [Sender] MaximizeImgBtn
* }
procedure TGymManagerForm.MaximizeImgBtnClick(Sender: TObject);
begin
  if  Self.WindowState = wsMaximized  then
  begin
    Self.WindowState  :=  wsNormal;
    BarBtnImageList.GetBitmap(2,MaximizeImgBtn.Picture.Bitmap);
    MaximizeImgBtn.Refresh;
  end
  else  begin
    Self.WindowState  :=  wsMaximized;
    BarBtnImageList.GetBitmap(4,MaximizeImgBtn.Picture.Bitmap);
    MaximizeImgBtn.Refresh;
  end;
end;

{** 화면 최소화
  @param [Sender] MinimizeImgBtn
* }
procedure TGymManagerForm.MinimizeImgBtnClick(Sender: TObject);
begin
  ShowWindow(handle,SW_MINIMIZE);
end;

{** 종료
  @param [Sender] ColseImgBtn
* }
procedure TGymManagerForm.ColseImgBtnClick(Sender: TObject);
begin
  if Application.MessageBox('[*] 프로그램을 종료하시겠습니까?', '종료 확인', MB_OKCancel+MB_IConQuestion)=IDOK then
  begin
    close;
  end;
end;

{** ImgBtn MouseEnter Event
  @param [Sender] ImgBtn
* }
procedure TGymManagerForm.ImgBtnMouseEnter(Sender: TObject);
var
  iImgIndex : Integer;
begin

  if Sender is TImage then
  begin
    //이미지 변경
    if (Sender as TImage).Name = 'MinimizeImgBtn' then
      iImgIndex := 1
    else if (Sender as TImage).Name = 'MaximizeImgBtn' then
    begin
      if  Self.WindowState = wsMaximized  then
        iImgIndex := 5
      else
        iImgIndex := 3;
    end
    else if (Sender as TImage).Name = 'ColseImgBtn' then
      iImgIndex := 7;

    BarBtnImageList.GetBitmap(iImgIndex,(Sender as TImage).Picture.Bitmap);

    (Sender as TImage).Refresh;
  end;

end;

{** ImgBtn MouseLeave Event
  @param [Sender] ImgBtn
* }
procedure TGymManagerForm.ImgBtnMouseLeave(Sender: TObject);
var
  iImgIndex : Integer;
begin

  if Sender is TImage then
  begin
    //이미지 변경
    if (Sender as TImage).Name = 'MinimizeImgBtn' then
      iImgIndex := 0
    else if (Sender as TImage).Name = 'MaximizeImgBtn' then
    begin
      if  Self.WindowState = wsMaximized  then
        iImgIndex := 4
      else
        iImgIndex := 2;
    end
    else if (Sender as TImage).Name = 'ColseImgBtn' then
      iImgIndex := 6;

    BarBtnImageList.GetBitmap(iImgIndex,(Sender as TImage).Picture.Bitmap);

    (Sender as TImage).Refresh;
  end;

end;

end.
