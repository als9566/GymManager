unit PaymentDetailsModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPaymentDetails = class
  private
    FmemberId         : Integer;
    FpaymentDetailsNo : Integer;
    Fmembership       : string;
    FmembershipPrice  : Integer;
    Fpt               : string;
    FptPrice          : Integer;
    Fwear             : string;
    FwearPrice        : Integer;
    Flocker           : string;
    FlockerPrice      : Integer;
  public
    property memberId         : Integer  read FmemberId         write FmemberId;
    property paymentDetailsNo : Integer  read FpaymentDetailsNo write FpaymentDetailsNo;
    property membership       : string   read Fmembership       write Fmembership;
    property membershipPrice  : Integer  read FmembershipPrice  write FmembershipPrice;
    property pt               : string   read Fpt               write Fpt;
    property ptPrice          : Integer  read FptPrice          write FptPrice;
    property wear             : string   read Fwear             write Fwear;
    property wearPrice        : Integer  read FwearPrice        write FwearPrice;
    property locker           : string   read Flocker           write Flocker;
    property lockerPrice      : Integer  read FlockerPrice      write FlockerPrice;
    Function Insert(APaymentDetails: TPaymentDetails) :Boolean;
  end;

type
  TdmPaymentDetails = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPaymentDetails: TdmPaymentDetails;
  PaymentDetails : TPaymentDetails;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TPaymentDetails.Insert(APaymentDetails: TPaymentDetails): Boolean;
begin

  try
    dmPaymentDetails.FDQuery.SQL.Text := 'INSERT INTO payment_details                                             '
                                       + '       ( member_id,  payment_detail_no,  membership,  membership_price, '
                                       + '         pt,  pt_price,  wear,  wear_price,  locker,  locker_price )    '
                                       + ' VALUES(:member_id, :payment_detail_no, :membership, :membership_price, '
                                       + '        :pt, :pt_price, :wear, :wear_price, :locker, :locker_price )    ';

    dmPaymentDetails.FDQuery.ParamByName('member_id'        ).AsInteger := APaymentDetails.memberId;
    dmPaymentDetails.FDQuery.ParamByName('payment_detail_no').AsInteger := APaymentDetails.paymentDetailsNo;
    dmPaymentDetails.FDQuery.ParamByName('membership'       ).AsString  := APaymentDetails.membership;
    dmPaymentDetails.FDQuery.ParamByName('membership_price' ).AsInteger := APaymentDetails.membershipPrice;
    dmPaymentDetails.FDQuery.ParamByName('pt'               ).AsString  := APaymentDetails.pt;
    dmPaymentDetails.FDQuery.ParamByName('pt_price'         ).AsInteger := APaymentDetails.ptPrice;
    dmPaymentDetails.FDQuery.ParamByName('wear'             ).AsString  := APaymentDetails.wear;
    dmPaymentDetails.FDQuery.ParamByName('wear_price'       ).AsInteger := APaymentDetails.wearPrice;
    dmPaymentDetails.FDQuery.ParamByName('locker'           ).AsString  := APaymentDetails.locker;
    dmPaymentDetails.FDQuery.ParamByName('locker_price'     ).AsInteger := APaymentDetails.lockerPrice;

    dmPaymentDetails.FDQuery.ExecSQL;

    MainModule.dmMain.GymConnection.Commit;

    Result := true;
  except
    MainModule.dmMain.GymConnection.Rollback;
    Result := false;
  end;

end;

end.
