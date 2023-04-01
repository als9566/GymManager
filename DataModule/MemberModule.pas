unit MemberModule;

interface

uses
  System.SysUtils, System.Classes;

type
  TMember = class
    sName : String;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TdmMember = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMember: TdmMember;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
