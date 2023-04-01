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
//  { TODO insert 로직
//    데이터모듈에 type class 생성해서 사용하기
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
