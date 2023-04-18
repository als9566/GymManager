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
    PriceSaveBtn: TButton;
    AccountSaveBtn: TButton;
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
    procedure PriceSaveBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AccountSaveBtnClick(Sender: TObject);
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

end.
