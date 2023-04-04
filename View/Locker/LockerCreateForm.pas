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
  CurvyControls;

type
  TfmLockerCreate = class(TForm)
    backPanel: TCurvyPanel;
    Label1: TLabel;
    cxButton1: TcxButton;
    Button1: TButton;
    LockerPanel: TcxScrollBox;
    LockerX: TCurvyEdit;
    Label2: TLabel;
    LockerY: TCurvyEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure LockerCreateXY(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    arrCurvyPanel : Array of TCurvyPanel;
  end;

var
  fmLockerCreate: TfmLockerCreate;

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
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
  Action := CaFree;
end;

procedure TfmLockerCreate.FormShow(Sender: TObject);
begin
  DrawRounded(Self,50);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);
end;

{** X x Y 락커 동적 생성 이벤트
  @param [Sender] LockerX, LockerY
* }
procedure TfmLockerCreate.LockerCreateXY(Sender: TObject);
var
  itemp : Integer;
  X, Y : Integer;
  iCount : Integer;
begin
  iCount := 0;

  if (LockerX.Text <> '') and (LockerY.Text <> '') then
  begin
    for X := 0 to Length(arrCurvyPanel)-1 do
    begin
      arrCurvyPanel[X].Free;
    end;

    itemp := StrToInt(LockerX.Text) * StrToInt(LockerY.Text);
    SetLength(arrCurvyPanel, itemp);

    for Y := 0 to StrToInt(LockerY.Text)-1 do
    begin
      for X := 0 to StrToInt(LockerX.Text)-1 do
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
            Caption := 'OOO' + IntToStr(iCount);
            BorderColor := $00E7E7E7;
            Color := $00E3E3E3;
            Rounding := 4;
            //OnClick := GetCtrlName;
        end;
        Inc(iCount);
      end;
    end;
  end;
end;

end.
