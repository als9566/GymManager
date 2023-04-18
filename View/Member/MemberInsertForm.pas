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
  AdvCustomGridDropDown, AdvGridDropDown, Vcl.Menus, cxButtons, Data.DB;

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
    GenderRadioGroup: TcxRadioGroup;
    LockerDayPanel: TCurvyPanel;
    LockerDayLabel: TLabel;
    WearLabel: TLabel;
    WearPanel: TCurvyPanel;
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
    Button1: TButton;
    LockerDayEdit: TEdit;
    LockerHiddenLabel: TLabel;
    WearEdit: TEdit;
    WearHiddenLabel: TLabel;
    PTLabel: TLabel;
    PTPanel: TCurvyPanel;
    PTEdit: TEdit;
    PTHiddenLabel: TLabel;
    PTRadioGroup: TcxRadioGroup;
    LockerCurvy: TCurvyPanel;
    LockerChoicePanel: TcxScrollBox;
    PTPricePanel: TPanel;
    Label3: TLabel;
    PTPriceEdit: TEdit;
    Shape1: TShape;
    WearPricePanel: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    WearPriceEdit: TEdit;
    LockerPricePanel: TPanel;
    Label4: TLabel;
    Shape3: TShape;
    LockerPriceEdit: TEdit;
    MembershipPricePanel: TPanel;
    Label6: TLabel;
    Shape4: TShape;
    MembershipPriceEdit: TEdit;
    procedure cxButton1Click(Sender: TObject);
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
    procedure Button1Click(Sender: TObject);
    procedure RadioGroupPropertiesEditValueChanged(Sender: TObject);
    procedure ShowLockerData(ALocker: TDataSet);
    procedure EditPanelMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure EditPanelMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure LockerChoice(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PTEditChange(Sender: TObject);
    procedure WearEditChange(Sender: TObject);
    procedure LockerDayEditChange(Sender: TObject);
    procedure MembershipComboBoxPropertiesChange(Sender: TObject);
    procedure EditOnlyNumberKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMemberInsert: TfmMemberInsert;
  iMaxX, iMaxY : Integer;
  iChoiceLocker : Integer = 0;
  iBasicPT, iBasicWear, iBasicLocker, iBasicMembership : Integer;

implementation

uses
   CommonFunction, MemberController, LockerController, BasicPriceController;

// TODO [PriceEdit 원 콤마처리]
// TODO [사용중인 락커는 선택불가]
{$R *.dfm}

procedure TfmMemberInsert.Button1Click(Sender: TObject);
begin
  //MemberController.MemberInsert();
  if NameEdit.Text = '' then
    ShowMessage('이름을 입력해주세요...')
  else if BirthdayDateEdit.Text = '' then
    ShowMessage('생년월일을 입력해주세요...')
  else if (Tel1Edit.Text = '') or (Tel2Edit.Text = '') or (Tel3Edit.Text = '') then
    ShowMessage('전화번호를 입력해주세요...')
  else if StartDateEdit.Text = '' then
    ShowMessage('시작일자를 입력해주세요...')
  else if MembershipComboBox.ItemIndex = -1 then
    ShowMessage('회원권을 선택해주세요...')
  else
    //ShowMessage('정상저장');
    MemberController.TMemberController.MemberInsert(self);
end;

procedure TfmMemberInsert.cxButton1Click(Sender: TObject);
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
  LockerController.TLockerController.MemberLockerSelect(Self);
  BasicPriceController.TBasicPriceController.BasicPriceSelect(Self);

  // 1회 or 한달가격 edit에 입력
  PTPriceEdit.Text         := IntToStr(iBasicPT);
  WearPriceEdit.Text       := IntToStr(iBasicWear);
  LockerPriceEdit.Text     := IntToStr(iBasicLocker);
end;

{** 라디오버튼 입력값에 따라 히든입력창 visible 설정이벤트
  @param [Sender] TObject
* }
procedure TfmMemberInsert.RadioGroupPropertiesEditValueChanged(
  Sender: TObject);
begin
  if TcxRadioGroup(Sender).Name = 'LockerDayRadioGroup' then
  begin
    LockerDayPanel.Visible    := LockerDayRadioGroup.Buttons[0].Checked;
    LockerDayEdit.Visible     := LockerDayRadioGroup.Buttons[0].Checked;
    LockerHiddenLabel.Visible := LockerDayRadioGroup.Buttons[0].Checked;
    LockerCurvy.Visible       := LockerDayRadioGroup.Buttons[0].Checked;
    LockerPricePanel.Visible  := LockerDayRadioGroup.Buttons[0].Checked;
    if LockerDayRadioGroup.Buttons[0].Checked then
    begin
      EditPanel.VertScrollBar.Range := 650;
      EditPanel.VertScrollBar.Position := EditPanel.VertScrollBar.Position + 650;
    end
    else
      EditPanel.VertScrollBar.Range := 400;
  end
  else if TcxRadioGroup(Sender).Name = 'WearRadioGroup' then
  begin
    WearPanel.Visible       := WearRadioGroup.Buttons[0].Checked;
    WearEdit.Visible        := WearRadioGroup.Buttons[0].Checked;
    WearHiddenLabel.Visible := WearRadioGroup.Buttons[0].Checked;
    WearPricePanel.Visible  := WearRadioGroup.Buttons[0].Checked;
  end
  else if TcxRadioGroup(Sender).Name = 'PTRadioGroup' then
  begin
    PTPanel.Visible       := PTRadioGroup.Buttons[0].Checked;
    PTEdit.Visible        := PTRadioGroup.Buttons[0].Checked;
    PTHiddenLabel.Visible := PTRadioGroup.Buttons[0].Checked;
    PTPricePanel.Visible  := PTRadioGroup.Buttons[0].Checked;
  end;
end;

{** 콤보박스 PopUp 포커스 색상 및 배경색 커스텀
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

{** ComboBox PopUpBorder 설정
* }
procedure TfmMemberInsert.MembershipComboBoxPropertiesInitPopup(
  Sender: TObject);
begin
  TcxComboBoxPopupWindow(TcxComboBox(Sender).PopupWindow).ViewInfo.OnCustomDrawBorder := DoCustomDrawBorder;
end;

procedure TfmMemberInsert.WearEditChange(Sender: TObject);
begin
  // Wear Total 가격계산
  if WearEdit.Text = '' then
    WearPriceEdit.Text := '0'
  else
    WearPriceEdit.Text := IntToStr(iBasicWear * StrToInt(WearEdit.Text));
end;

procedure TfmMemberInsert.PTEditChange(Sender: TObject);
begin
  // PT Total 가격계산
  if PTEdit.Text = '' then
    PTPriceEdit.Text := '0'
  else
    PTPriceEdit.Text := IntToStr(iBasicPT * StrToInt(PTEdit.Text));
end;

procedure TfmMemberInsert.LockerDayEditChange(Sender: TObject);
begin
  // Locker Total 가격계산
  if LockerDayEdit.Text = '' then
    LockerPriceEdit.Text := '0'
  else
    LockerPriceEdit.Text := IntToStr(iBasicLocker * StrToInt(LockerDayEdit.Text));
end;

procedure TfmMemberInsert.MembershipComboBoxPropertiesChange(Sender: TObject);
begin
  // 회원권 Total 가격계산
  if MembershipComboBox.ItemIndex = -1 then
    MembershipPriceEdit.Text := '0'
  else
    MembershipPriceEdit.Text := IntToStr(iBasicMembership * (MembershipComboBox.ItemIndex+1));
end;

procedure TfmMemberInsert.DoCustomDrawBorder(AViewInfo: TcxContainerViewInfo;
  ACanvas: TcxCanvas; const R: TRect; var AHandled: Boolean;
  out ABorderWidth: Integer);
begin
  AHandled := True;
  ABorderWidth := 1;
  ACanvas.FrameRect(R, clNone);
end;

{** 포커스 IN 했을때 패널테두리 색상 변경
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

{** 포커스 OUT 했을때 패널테두리 색상 변경
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

{** Locker선택 시 이벤트
  @param [Sender] TObject
* }
procedure TfmMemberInsert.LockerChoice(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  I, J : Integer;
  AComponent : TComponent;
begin
  for I := 1 to iMaxY do
  begin
    for J := 1 to iMaxX do
    begin
      AComponent := FindComponent(Format('LockerPanel_%d_%d',[J,I]));
      TCurvyPanel(AComponent).BorderColor := $00EEEEEE;
      TCurvyPanel(AComponent).Color := $00EEEEEE;
    end;
  end;

  TCurvyPanel(Sender).BorderColor := $00FFD78C;
  TCurvyPanel(Sender).Color := $00FFECC8;
  iChoiceLocker := TCurvyPanel(Sender).Tag;
end;

procedure TfmMemberInsert.EditPanelMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  EditPanel.VertScrollBar.Position := EditPanel.VertScrollBar.Position + 20;
end;
procedure TfmMemberInsert.EditPanelMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  EditPanel.VertScrollBar.Position := EditPanel.VertScrollBar.Position - 20;
end;

{** 락커동적 생성
  @param [Sender] TDataSet
* }
procedure TfmMemberInsert.ShowLockerData(ALocker: TDataSet);
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
        Parent := LockerChoicePanel;
        Height := 45;
        Width := 65;
        Left := 5 + (73 * (J-1));
        Top := 10 + (53 * (I-1));
        Name := Format('LockerPanel_%d_%d',[J,I]);
        Tag := ALocker.FieldByName('id').AsInteger;
        BorderColor := $00EEEEEE;
        Color := $00EEEEEE;
        Rounding := 4;
        Cursor := crHandPoint;
        OnMouseDown := LockerChoice;
      end;
      with TLabel.Create(Self) do
      begin
          Parent := sCurvyPanel;
          Alignment := taCenter;
          AutoSize := False;
          Caption := ALocker.FieldByName('num').AsString;
          Font.Color := $00707070;
          Font.Name := '맑은 고딕';
          Font.Size := 10;
          Font.Style := [fsBold];
          ParentFont := False;
          Height := 22;
          Width := 22;
          Left := 5;
          Top := 5;
          Name := Format('LockerNum_%d_%d',[J,I]);
      end;
      ALocker.Next;
    end;
  end;
  LockWindowUpdate(0);
end;

procedure TMycxComboBox.Loaded;
begin
  inherited;
  ContentParams.Offsets.Left := 20;
end;

//숫자만 입력가능
procedure TfmMemberInsert.EditOnlyNumberKeyPress(Sender: TObject; var Key: Char);
begin
  if (key in ['0'..'9']) or (Key = #8) then
  else
    Key := #0;
end;

end.
