unit BasicPriceController;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Controls, Dialogs, Data.DB, MemberInsertForm;

type
  TBasicPriceController = class
  private

  public
    constructor BasicPriceSelect(const AView: TfmMemberInsert);
  end;

implementation

uses
  CommonFunction, BasicPriceModule;

{** BasicPriceSelect
* }
constructor TBasicPriceController.BasicPriceSelect(const AView: TfmMemberInsert);
var
  BasicPrice : TDataSet;
  sCode : String;
begin
  BasicPrice := BasicPriceModule.BasicPrice.Select;

  BasicPrice.Active := true;

  while not BasicPrice.Eof do
  begin
    sCode := BasicPrice.FieldByName('code').AsString;

    if sCode = 'PT' then
      MemberInsertForm.iBasicPT         := BasicPrice.FieldByName('price').AsInteger
    else if sCode = 'WEAR' then
      MemberInsertForm.iBasicWear       := BasicPrice.FieldByName('price').AsInteger
    else if sCode = 'LOCKER' then
      MemberInsertForm.iBasicLocker     := BasicPrice.FieldByName('price').AsInteger
    else if sCode = 'MEMBERSHIP' then
      MemberInsertForm.iBasicMembership := BasicPrice.FieldByName('price').AsInteger;

    BasicPrice.Next;
  end;
end;

end.
