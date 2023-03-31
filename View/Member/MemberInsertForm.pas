unit MemberInsertForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CurvyControls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls, cxScrollBox,
  dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker, Vcl.ComCtrls,
  Vcl.Mask, AdvEdit, AdvMEdBtn, PlannerMaskDatePicker, Vcl.WinXPickers,
  VCLTee.TeCanvas, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGroupBox, cxRadioGroup, AdvDetailDropDown, DBAdvDetailDropDown,
  AdvTrackBarDropDown, AdvCalculatorDropdown, AdvDropDown, AdvControlDropDown,
  AdvCustomGridDropDown, AdvGridDropDown, Vcl.Menus, cxButtons;

type

  TMycxComboBox = class (TcxComboBox)

  protected
    procedure Loaded; override;
  end;

  TcxComboBox = class (TMycxComboBox);

  TfmMemberInsert = class(TForm)
    backPanel: TCurvyPanel;
    EditPanel: TcxScrollBox;
    NamePanel: TCurvyPanel;
    NameEdit: TEdit;
    NameLabel: TLabel;
    AddressLabel: TLabel;
    AddressPanel: TCurvyPanel;
    AddressEdit: TEdit;
    BirthdayLabel: TLabel;
    BirthdayPanel: TCurvyPanel;
    BirthdayDateEdit: TcxDateEdit;
    Label5: TLabel;
    TelLabel: TLabel;
    StartLabel: TLabel;
    StartPanel: TCurvyPanel;
    StartDateEdit: TcxDateEdit;
    MembershipLabel: TLabel;
    MembershipPanel: TCurvyPanel;
    MembershipRadioGroup: TcxRadioGroup;
    GenderRadioGroup: TcxRadioGroup;
    LockerDayPanel: TCurvyPanel;
    LockerDayDateEdit: TcxDateEdit;
    LockerDayLabel: TLabel;
    WearLabel: TLabel;
    WearPanel: TCurvyPanel;
    WearDateEdit: TcxDateEdit;
    LockerDayRadioGroup: TcxRadioGroup;
    WearRadioGroup: TcxRadioGroup;
    Tel1Panel: TCurvyPanel;
    Tel1Edit: TEdit;
    Tel2Panel: TCurvyPanel;
    Tel2Edit: TEdit;
    Tel3Panel: TCurvyPanel;
    Tel3Edit: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    MembershipComboBox: TcxComboBox;
    Label1: TLabel;
    cxButton1: TcxButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MembershipComboBoxPropertiesDrawItem(AControl: TcxCustomComboBox;
      ACanvas: TcxCanvas; AIndex: Integer; const ARect: TRect;
      AState: TOwnerDrawState);
    procedure EditBorderFocusIn(Sender: TObject);
    procedure EditBorderFocusOut(Sender: TObject);
    procedure MembershipComboBoxPropertiesInitPopup(Sender: TObject);
    procedure DoCustomDrawBorder(AViewInfo: TcxContainerViewInfo; ACanvas: TcxCanvas; const R: TRect; var AHandled: Boolean;
      out ABorderWidth: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberInsert: TfmMemberInsert;

implementation

uses CommonFunction;

{$R *.dfm}

procedure TfmMemberInsert.Button1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfmMemberInsert.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
  Action := CaFree;
end;

procedure TfmMemberInsert.FormShow(Sender: TObject);
begin
  DrawRounded(Self,50);
  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);
end;

{** �޺��ڽ� PopUp ��Ŀ�� ���� �� ���� Ŀ����
* }
procedure TfmMemberInsert.MembershipComboBoxPropertiesDrawItem(
  AControl: TcxCustomComboBox; ACanvas: TcxCanvas; AIndex: Integer;
  const ARect: TRect; AState: TOwnerDrawState);
begin
  with ACanvas.Canvas do
  begin
    if (odSelected in AState) or (odFocused in AState) then
    begin
      Brush.Color := $00D2D2D2;
      Font.Color := clBlack;
    end
    else
      begin
        Brush.Color := clWhite;
        Font.Color := clBlack;
      end;
    FillRect(ARect);
    Font.Size := 9;
    TextOut(ARect.Left + 13 , ARect.Top, AControl.Properties.Items[AIndex]);
  end;
end;

{** ComboBox PopUpBorder ����
* }
procedure TfmMemberInsert.MembershipComboBoxPropertiesInitPopup(
  Sender: TObject);
begin
  TcxComboBoxPopupWindow(TcxComboBox(Sender).PopupWindow).ViewInfo.OnCustomDrawBorder := DoCustomDrawBorder;
end;
procedure TfmMemberInsert.DoCustomDrawBorder(AViewInfo: TcxContainerViewInfo;
  ACanvas: TcxCanvas; const R: TRect; var AHandled: Boolean;
  out ABorderWidth: Integer);
begin
  AHandled := True;
  ABorderWidth := 1;
  ACanvas.FrameRect(R, clNone);
end;

{** ��Ŀ�� IN ������ �г��׵θ� ���� ����
  @param [Sender] TObject
* }
procedure TfmMemberInsert.EditBorderFocusIn(Sender: TObject);
var
  MyComponent : TComponent;
  sTempName : String;
begin

  if Sender is TEdit then
    sTempName := Copy(TEdit(Sender).Name, 0, Pos('Edit',TEdit(Sender).Name)-1)
  else if Sender is TcxDateEdit then
    sTempName := Copy(TcxDateEdit(Sender).Name, 0, Pos('DateEdit',TcxDateEdit(Sender).Name)-1)
  else if Sender is TcxComboBox then
    sTempName := Copy(TcxComboBox(Sender).Name, 0, Pos('ComboBox',TcxComboBox(Sender).Name)-1);

  MyComponent := FindComponent(sTempName+'Panel');

  TCurvyPanel(MyComponent).BorderColor := clBlack;

end;

{** ��Ŀ�� OUT ������ �г��׵θ� ���� ����
  @param [Sender] TObject
* }
procedure TfmMemberInsert.EditBorderFocusOut(Sender: TObject);
var
  MyComponent : TComponent;
  sTempName : String;
begin

  if Sender is TEdit then
    sTempName := Copy(TEdit(Sender).Name, 0, Pos('Edit',TEdit(Sender).Name)-1)
  else if Sender is TcxDateEdit then
    sTempName := Copy(TcxDateEdit(Sender).Name, 0, Pos('DateEdit',TcxDateEdit(Sender).Name)-1)
  else if Sender is TcxComboBox then
    sTempName := Copy(TcxComboBox(Sender).Name, 0, Pos('ComboBox',TcxComboBox(Sender).Name)-1);

  MyComponent := FindComponent(sTempName+'Panel');

  TCurvyPanel(MyComponent).BorderColor := clMedGray;

end;

procedure TMycxComboBox.Loaded;
begin
  inherited;
  ContentParams.Offsets.Left := 20;
end;

end.
