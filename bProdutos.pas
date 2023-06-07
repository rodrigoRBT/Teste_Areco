unit bProdutos;

interface

uses
  TEntidade,
  pProdutos,
  System.SysUtils,
  bCRUD;

type
  TProdutos = Class(TObject)
    pProd       : TfrmProdutos;
    produto     : TProduto;
    CRUD        : TCRUD;
  private
  public
    constructor create;

  End;

implementation

{ TProdutos }

constructor TProdutos.create;
begin
  CRUD.conecta;
  pProd := TfrmProdutos.Create(nil);
  pProd.ShowModal;
end;

end.
