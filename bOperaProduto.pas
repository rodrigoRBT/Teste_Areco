unit bOperaProduto;

interface

uses
  TEntidade,
  Vcl.StdCtrls,
  Vcl.Dialogs,
  System.StrUtils,
  System.SysUtils,
  pOperaProduto,
  bCRUD;

type
  TOperaProduto = class(TObject)

  CRUD : TCRUD;
  // Representa o business principal do projeto
  produto  : TProduto;
  mproduto : TfrmOperacoes;
  private

  public
    // Cria o formulário para cadastro ou edição do Produto
    procedure criaCadOuEditaProd(funcao : TObject);
  end;

implementation

{ TOperaProduto }

procedure TOperaProduto.criaCadOuEditaProd(funcao: TObject);

var id,qtde : Integer;
    nome : string;
    valor : double;

begin
  try
    try
      // Cria o Objeto
      mProduto := TfrmOperacoes.Create(Nil);

      // De acordo com o Botão inicializa o form de operar produto de forma diferente
      if (funcao as TButton).Name = 'btCadastro' then begin

        mProduto.Caption      := 'Cadastrar Produto';
        mProduto.lbID.Visible := False;
        mProduto.edID.Visible := False;
      end else if (funcao as TButton).Name = 'btEditar' then begin

        // Localiza o Produto
//        CRUD.manager.find<Tproduto>(base.mDataSet.FieldByName('ID').AsInteger);

        // Não deixo alterar a ID do Produto
        mProduto.lbID.Enabled := False;

        mProduto.Caption           := 'Editar Produto';

        {Trecho abaixo comentado para não dar problemas}
        // Preenche os campos da tela com os dados do Produto
//        mProduto.edID.Text         := CRUD.produto.Id.ToString;
//        mProduto.edNome.Text       := CRUD.produto.nome;
//        mProduto.edQuantidade.Text := CRUD.produto.qtde.ToString;
//        mProduto.edValor.Text      := CRUD.produto.valor.ToString;
      end;

      mProduto.ShowModal;

      if mProduto.ModalResult = 0 then begin
        exit;
      end else begin
        {Comentado para não dar erro}
//        if id >= 0 then begin
//          CRUD.produto.Id := mProduto.edID.Text;
//        end;

//        CRUD.produto.nome  := mProduto.edNome.Text
//        CRUD.produto.qtde  := mProduto.edQuantidade.Text
//        CRUD.produto.valor := mProduto.edValor.Text

//        // Grava inclusão ou alteração
//        if CRUD.manipulaProd(id,nome,qtde,valor) then begin
//          ShowMessage('Gravado/Alterado com Sucesso.');
//        end;
      end;
    except
      raise Exception.Create('Erro ao Criar/Alterar produto.');
    end;
  finally
    // libera o objeto
    mProduto.Free;
  end;
end;

end.
