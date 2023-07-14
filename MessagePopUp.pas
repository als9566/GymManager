unit MessagePopUp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  CurvyControls;

type
  TfmMessagePopUp = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Shape1: TShape;
    CurvyPanel1: TCurvyPanel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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

procedure TfmMessagePopUp.Button1Click(Sender: TObject);
begin
  ModalResult := MROK;
end;

procedure TfmMessagePopUp.Button2Click(Sender: TObject);
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

end.
