unit bBaseProjeto;

interface

uses
  TEntidade,
  System.SysUtils,
  Vcl.StdCtrls,
  bProdutos,
  bOperaProduto,
  bCRUD;

type
  TBaseProjeto = class(TObject)
    princProd : TProdutos;
    operProd  : TOperaProduto;
    CRUD      : TCRUD;
  private
  public
    constructor create;
    destructor destroy; override;
  end;

var
  base: TBaseProjeto;

implementation

constructor TBaseProjeto.create;
begin
  CRUD      := TCRUD.Create;
  princProd := Tprodutos.create;
  operProd  := TOperaProduto.create;
end;

destructor TBaseProjeto.destroy;
begin
  CRUD.Free;
  princProd.Free;
  operProd.Free;
end;

initialization
  base := TBaseProjeto.Create;

finalization
  base.Free;
end.
