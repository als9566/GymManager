unit MessagePopUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  CurvyControls;

type
  TfmMessagePopUp = class(TForm)
    TitleLabel: TLabel;
    Shape1: TShape;
    CurvyPanel1: TCurvyPanel;
    ContentsLabel: TLabel;
    OKPanel: TCurvyPanel;
    Shape2: TShape;
    CancelPanel: TCurvyPanel;
    OKBtn: TLabel;
    CancelBtn: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMessagePopUp: TfmMessagePopUp;

implementation

uses
  CommonFunction;

{$R *.dfm}

procedure TfmMessagePopUp.CancelBtnClick(Sender: TObject);
begin
  ModalResult := MRCancel;
end;

procedure TfmMessagePopUp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AnimateWindow(Self.Handle, 200, AW_HIDE or AW_BLEND);
  Action := CaFree;
end;

procedure TfmMessagePopUp.FormShow(Sender: TObject);
begin
  DrawRounded(Self,10);

  AnimateWindow(Self.Handle, 200, AW_ACTIVATE or AW_BLEND);
end;

procedure TfmMessagePopUp.OKBtnClick(Sender: TObject);
begin
  ModalResult := MROK;
end;

end.
