unit MemberManagingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, math,
  Vcl.WinXCtrls, dxGDIPlusClasses, CurvyControls, Vcl.Grids, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxButtons, BlurForm;

type
  TfmMemberManaging = class(TForm)
    backPanel: TPanel;
    MenuNameLabel: TLabel;
    Shape1: TShape;
    MemberCntLabel1: TLabel;
    MemberCntLabel2: TLabel;
    MemberCntLabel3: TLabel;
    MemberTotalCnt: TLabel;
    MemberIngCnt: TLabel;
    MemberEndCnt: TLabel;
    MemberCntPanel: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    SearchPanel: TCurvyPanel;
    SearchBtn: TImage;
    SearchEdit: TEdit;
    GridPanel: TPanel;
    MemberGrid: TStringGrid;
    NewInsertBtn: TcxButton;
    //procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure MemberGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
    procedure NewInsertBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberManaging : TfmMemberManaging;
  fmBlur: TfmBlur;

implementation

uses CommonFunction, MainForm;

{$R *.dfm}

procedure TfmMemberManaging.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmMemberManaging.FormResize(Sender: TObject);
var h,w : double;
   p : integer;
begin
  DrawRounded(backPanel, 50);
end;

procedure TfmMemberManaging.FormShow(Sender: TObject);
var
  I: Integer;
begin
  DrawRounded(backPanel, 50);

  // StringGrid
  with MemberGrid do
  begin
    ColCount := 10;

    FixedCols := 1;
    FixedRows := 1;

    DefaultRowHeight := 20;
    DefaultColWidth := 80;

    Cells[00,0] := '1';
    Cells[01,0] := '2';
    Cells[02,0] := '3';
    Cells[03,0] := '4';
    Cells[04,0] := '5';
    Cells[05,0] := '6';

    for I := 0 to 5 do
    begin
      MemberGrid.Cells[0,i+1] := IntToStr(2 + I);
      MemberGrid.Cells[1,i+1] := IntToStr(3 + I);
      MemberGrid.Cells[2,i+1] := IntToStr(4 + I);
      MemberGrid.Cells[3,i+1] := IntToStr(5 + I);
      MemberGrid.Cells[4,i+1] := IntToStr(6 + I);
      MemberGrid.Cells[5,i+1] := IntToStr(7 + I);
    end;

  end;
end;

//StringGrid DefaultDrawing := False 방법
procedure TfmMemberManaging.MemberGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin

     // 셀 그리기
     // 고정 셀은 버튼 모양으로
     if(State = [gdFixed]) then
     begin
         MemberGrid.Canvas.Brush.Color := clWhite;
         MemberGrid.Canvas.Font.Color := clBlack;
         MemberGrid.Canvas.FillRect(Rect);
         //Frame3D(MemberGrid.Canvas, Rect, clBtnHighlight, clBtnShadow, 1);
     end
     // 선택된 셀은 하이라이트 색
     else if (State = [gdSelected]) then
     begin
//         MemberGrid.Canvas.Brush.Color := clHighlight;
//         MemberGrid.Canvas.Font.Color := clHighlightText;
//         MemberGrid.Canvas.FillRect(Rect);
         MemberGrid.Canvas.Brush.Color := clWhite;
         MemberGrid.Canvas.Font.Color := clBlack;
         MemberGrid.Canvas.FillRect(Rect);
     end
     // 나머지 셀은 기본 색으로
     else
     begin
//         MemberGrid.Canvas.Brush.Color := StringGrid1.Color;
//         MemberGrid.Canvas.Font.Color := StringGrid1.Font.Color;
//         MemberGrid.Canvas.FillRect(Rect);
         MemberGrid.Canvas.Brush.Color := clWhite;
         MemberGrid.Canvas.Font.Color := clBlack;
         MemberGrid.Canvas.FillRect(Rect);
     end;

     // 셀 내용(텍스트) 출력
     MemberGrid.Canvas.TextRect(Rect, Rect.Left, Rect.Top, MemberGrid.Cells[ACol,ARow]);

end;

{** 신규버튼 이벤트 (신규회원 등록창 띄우기)
  @param [Sender] NewInsertBtn
* }
procedure TfmMemberManaging.NewInsertBtnClick(Sender: TObject);
begin

//  fmMemberInsert := TfmMemberInsert.Create(nil);
//
//  //DrawRounded(fmMemberInsert,250);
//
//  GymManagerForm.imgBlur.BringToFront;
//  GymManagerForm.imgBlur.Top := 0;
//  GymManagerForm.imgBlur.Left := 0;
//  GymManagerForm.imgBlur.Width := GymManagerForm.Width;
//  GymManagerForm.imgBlur.Height := GymManagerForm.Height;
//  GymManagerForm.imgBlur.Visible := true;
//
//  fmMemberInsert.ShowModal;
//
//  fmMemberInsert.Free;
//  GymManagerForm.imgBlur.Visible := false;

  fmBlur := TfmBlur.Create(Self);
  fmBlur.Top := GymManagerForm.Top;
  fmBlur.Left := GymManagerForm.Left;
  fmBlur.Height := GymManagerForm.Height;
  fmBlur.Width := GymManagerForm.Width;
  fmBlur.imgBlur.Tag := 1;
  fmBlur.Show;


end;

end.
