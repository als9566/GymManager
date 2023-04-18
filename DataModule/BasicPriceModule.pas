unit BasicPriceModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TBasicPrice = class
  private
    Fcode       : string;
    Fprice         : Integer;
  public
    property code       : string  read Fcode       write Fcode;
    property price     : Integer  read Fprice     write Fprice;
    Function Select :TDataSet;
  end;

type
  TdmBasicPrice = class(TDataModule)
    FDQuery: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmBasicPrice: TdmBasicPrice;
  BasicPrice : TBasicPrice;

implementation

uses
  MainModule;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Function TBasicPrice.Select :TDataSet;
begin
  try
    dmBasicPrice.FDQuery.SQL.Text := 'SELECT code, price   '
                                   + '  FROM basic_price   ';

    Result := dmBasicPrice.FDQuery;
  except
    Result := nil;
  end;
end;

end.
