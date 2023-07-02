unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.WinXCtrls, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls, CurvyControls;

type
  TfmLogin = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    CurvyPanel1: TCurvyPanel;
    Image1: TImage;
    NameEdit: TEdit;
    CurvyPanel2: TCurvyPanel;
    Image2: TImage;
    PasswordEdit: TEdit;
    CurvyPanel3: TCurvyPanel;
    SingInBtn: TLabel;
    loadingAI: TActivityIndicator;
    msgLabel: TLabel;
    procedure SingInBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PasswordEditKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    bcheck :Boolean;
  end;

type
  TLoginThread = class(TThread)
  private
    sUsername: String;
    sPassword: String;
    procedure Execute; override;
    destructor Destroy; override;
    procedure FormCreate;
    procedure LoginCheck;
  end;

var
  fmLogin: TfmLogin;
  LoginThread: TLoginThread;

implementation

uses
  MainForm, CommonFunction, ShadowBox, LoginController;

{$R *.dfm}

procedure TLoginThread.FormCreate;
begin
  MainForm.GymManagerForm.LockMDIChild(true);
  MainForm.GymManagerForm.MENU_CREATE(2);
  MainForm.GymManagerForm.LockMDIChild(False);
end;

procedure TLoginThread.LoginCheck;
begin
  LoginController.TLoginController.LoginCheck(fmLogin);
end;

procedure TLoginThread.Execute;
begin

  fmLogin.bcheck := true;

  Sleep(1000);

  Synchronize(LoginCheck);

  if sPassword = '' then
  begin
    fmLogin.msgLabel.Caption := '비밀번호를 입력해주세요...';
    fmLogin.bcheck := False;
  end;

  if sUsername = '' then
  begin
    fmLogin.msgLabel.Caption := '아이디를 입력해주세요...';
    fmLogin.bcheck := False;
  end;

  if fmLogin.bcheck then
  begin
    MainForm.bLogin := true;
    MainForm.sUserName := fmLogin.NameEdit.Text;
    //GymManagerForm.SV.CloseStyle := svcCompact;
    GymManagerForm.imgMenu.Visible := True;
    LoginThread := nil;
    fmLogin.Close;
    Synchronize(FormCreate);
  end
  else
  begin
    LoginThread := nil;
    fmLogin.loadingAI.Animate := False;
    fmLogin.NameEdit.Enabled := True;
    fmLogin.PassWordEdit.Enabled := True;
    fmLogin.SingInBtn.Enabled := True;
  end;

end;

destructor TLoginThread.Destroy;
begin
  inherited;
end;

procedure TfmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TfmLogin.FormShow(Sender: TObject);
begin
  DrawRounded(Panel1, 30);
  GymManagerForm.SV.CloseStyle := svcCollapse;
  GymManagerForm.imgMenu.Visible := False;
  with TShadowBox.Create(Self) do
    Control := Panel1;
end;

procedure TfmLogin.PasswordEditKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then   //엔터키
  begin
    SingInBtnClick(self);
  end;
end;

procedure TfmLogin.SingInBtnClick(Sender: TObject);
begin
  loadingAI.Animate := true;

  msgLabel.Caption := '';

  NameEdit.Enabled := False;
  PassWordEdit.Enabled := False;
  SingInBtn.Enabled := False;

  LoginThread :=  TLoginThread.Create(True);
  LoginThread.FreeOnTerminate := True;
  LoginThread.sUsername := NameEdit.Text;
  LoginThread.sPassword := PasswordEdit.Text;
  LoginThread.Resume;

end;

end.
