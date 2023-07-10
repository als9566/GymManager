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
    Function PaymentDetails_MemberId_Select(Aid : Integer) :TDataSet;
    Function Payment_Dash(ADate : String) :TDataSet;
    Function Payment_Percent_Dash(ADate : String) :TDataSet;
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
                                       + '         pt,  pt_price,  wear,  wear_price,  locker,  locker_price,     '
                                       + '         input_date )    '
                                       + ' VALUES(:member_id, :payment_detail_no, :membership, :membership_price, '
                                       + '        :pt, :pt_price, :wear, :wear_price, :locker, :locker_price,     '
                                       + '        date(''now''))    ';

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

Function TPaymentDetails.PaymentDetails_MemberId_Select(Aid : Integer) :TDataSet;
begin
  try
    dmPaymentDetails.FDQuery.SQL.Clear;
    dmPaymentDetails.FDQuery.SQL.Text := 'SELECT * FROM payment_details ' +#13#10
                                       + ' WHERE member_id = :id    ';

    dmPaymentDetails.FDQuery.ParamByName('id').AsInteger := Aid;

    Result := dmPaymentDetails.FDQuery;
  except
    Result := nil;
  end;
end;

Function TPaymentDetails.Payment_Dash(ADate : String) :TDataSet;
begin
  try
    dmPaymentDetails.FDQuery.SQL.Clear;
    dmPaymentDetails.FDQuery.SQL.Text := 'select input_date                                               '
                                       + '      ,sum(membership_price) ''membership''                     '
                                       + '      ,sum(pt_price)         ''pt''                             '
                                       + '      ,sum(wear_price)       ''wear''                           '
                                       + '      ,sum(locker_price)     ''locker''                         '
                                       + '  from payment_details                                          '
                                       + ' where date(input_date) <= date('''+ADate+''', ''-0 days'')     '
                                       + '   and date(input_date) >= date('''+ADate+''', ''-6 days'')     '
                                       + ' group by input_date                                            '
                                       + ' order by input_date                                            ';

    Result := dmPaymentDetails.FDQuery;
  except
    Result := nil;
  end;
end;

Function TPaymentDetails.Payment_Percent_Dash(ADate : String) :TDataSet;
begin
  try
    dmPaymentDetails.FDQuery.SQL.Clear;
    dmPaymentDetails.FDQuery.SQL.Text := 'select input_date                                               '
                                       + '      ,sum(membership_price) ''membership''                     '
                                       + '      ,sum(pt_price)         ''pt''                             '
                                       + '      ,sum(wear_price)       ''wear''                           '
                                       + '      ,sum(locker_price)     ''locker''                         '
                                       + '  from payment_details                                          '
                                       + ' where date(input_date) = date('''+ADate+''')                   '
                                       + ' group by input_date                                            ';

    Result := dmPaymentDetails.FDQuery;
  except
    Result := nil;
  end;
end;

end.
