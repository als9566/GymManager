unit MemberController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs, MemberInsertForm;

type
  TMemberController = class
  private
    FView: TfmMemberInsert;
  public
    constructor Create(const AView: TfmMemberInsert);
  end;

// MemberInsert
//procedure MemberInsert();

implementation

uses
  CommonFunction, MemberModule;

constructor TMemberController.Create(const AView: TfmMemberInsert);
begin
  FView := AView;

  ShowMEssage(FView.NameEdit.Text);

  //FView.btnLogin.OnClick := Login;
end;

{** MemberInsert
* }
//procedure MemberInsert();
//begin
//  { TODO insert ����
//    �����͸�⿡ type class �����ؼ� ����ϱ�
//
//    ex )
//    MemberModule.pas
//    type
//      TMember = class
//        sName : String;
//      ....
//
//    MemberController.ps
//    TMember.sName := ;
//
//  }
//  //ShowMessage(MemberInsertForm.fmMemberInsert.NameEdit.Text);
//  //ShowMessage(MemberInsertForm.fmMemberInsert.NameEdit.text);
//  //MemberInsertForm.TfmMemberInsert.UnitName;
//end;

end.
