unit pProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, bCRUD, bOperaProduto;

type
  TfrmProdutos = class(TForm)
    CRUD : TCRUD;

    OpProduto : TOperaProduto;
    dbGradeProdutos: TDBGrid;
    btAtualizar: TButton;
    lbListagem: TLabel;
    btCadastro: TButton;
    btEditar: TButton;
    btExcluir: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAtualizarClick(Sender: TObject);
    procedure btBotoesClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

procedure TfrmProdutos.btAtualizarClick(Sender: TObject);
begin
  CRUD.atualiza;
end;

procedure TfrmProdutos.btBotoesClick(Sender: TObject);
begin
  OpProduto := TOperaProduto.Create;
  OpProduto.criaCadOuEditaProd(Sender);
  OpProduto.Free;
end;

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Close;
end;

end.
