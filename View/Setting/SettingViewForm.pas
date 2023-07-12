unit SettingViewForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  CurvyControls;

type
  TfmSettingView = class(TForm)
    backPanel: TPanel;
    MenuNameLabel: TLabel;
    CurvyPanel1: TCurvyPanel;
    PriceSetMenuLabel: TLabel;
    PTPriceLabel: TLabel;
    Label2: TLabel;
    WearPriceLabel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LockerPriceLabel: TLabel;
    CurvyPanel2: TCurvyPanel;
    AccountLabel: TLabel;
    UsernameLabel: TLabel;
    PasswordLabel: TLabel;
    PTPricePanel: TCurvyPanel;
    PTPriceEdit: TEdit;
    WearPricePanel: TCurvyPanel;
    WearPriceEdit: TEdit;
    LockerPricePanel: TCurvyPanel;
    LockerPriceEdit: TEdit;
    UsernamePanel: TCurvyPanel;
    UsernameEdit: TEdit;
    PasswordPanel: TCurvyPanel;
    PasswordEdit: TEdit;
    MembershipPriceLabel: TLabel;
    Label3: TLabel;
    MembershipPricePanel: TCurvyPanel;
    MembershipPriceEdit: TEdit;
    Shape1: TShape;
    PriceSaveBtnPanel: TCurvyPanel;
    PriceSaveBtn: TLabel;
    AccountSaveBtnPanel: TCurvyPanel;
    AccountSaveBtn: TLabel;
    procedure FormShow(Sender: TObject);
    procedure PriceSaveBtnClick(Sender: TObject);
    procedure AccountSaveBtnClick(Sender: TObject);
    procedure PriceSaveBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PriceSaveBtnMouseLeave(Sender: TObject);
    procedure PriceSaveBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PriceSaveBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AccountSaveBtnMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure AccountSaveBtnMouseLeave(Sender: TObject);
    procedure AccountSaveBtnMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure AccountSaveBtnMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmSettingView: TfmSettingView;

implementation

uses
  CommonFunction, ShadowBox, SettingController;

{$R *.dfm}

procedure TfmSettingView.AccountSaveBtnClick(Sender: TObject);
begin
  SettingController.TSettingController.AccountUpdate(self);
end;

procedure TfmSettingView.FormShow(Sender: TObject);
begin
  SettingController.TSettingController.BasicPriceSelect(self);
  SettingController.TSettingController.AccountSelect(self);
end;

procedure TfmSettingView.PriceSaveBtnClick(Sender: TObject);
begin
  SettingController.TSettingController.BasicPriceUpdate(self);
end;

procedure TfmSettingView.PriceSaveBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PriceSaveBtnPanel.Color := $00FFF2E6;
end;

procedure TfmSettingView.PriceSaveBtnMouseLeave(Sender: TObject);
begin
  PriceSaveBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmSettingView.PriceSaveBtnMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  PriceSaveBtnPanel.BorderColor := $00747474;
end;

procedure TfmSettingView.PriceSaveBtnMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  PriceSaveBtnPanel.Color := clWhite;
end;

procedure TfmSettingView.AccountSaveBtnMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AccountSaveBtnPanel.Color := $00FFF2E6;
end;

procedure TfmSettingView.AccountSaveBtnMouseLeave(Sender: TObject);
begin
  AccountSaveBtnPanel.BorderColor := $00B5B5B5;
end;

procedure TfmSettingView.AccountSaveBtnMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  AccountSaveBtnPanel.BorderColor := $00747474;
end;

procedure TfmSettingView.AccountSaveBtnMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AccountSaveBtnPanel.Color := clWhite;
end;

end.
