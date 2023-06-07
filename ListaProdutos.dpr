program ListaProdutos;

uses
  Vcl.Forms,
  pProdutos in 'pProdutos.pas' {frmProdutos},
  TEntidade in 'framework\TEntidade.pas',
  bProdutos in 'bProdutos.pas',
  pOperaProduto in 'pOperaProduto.pas' {frmOperacoes},
  bOperaProduto in 'bOperaProduto.pas',
  bBaseProjeto in 'bBaseProjeto.pas',
  bCRUD in 'bCRUD.pas',
  ConnectionModule in 'ConnectionModule.pas' {MSSQLConnection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMSSQLConnection, MSSQLConnection);
  Application.Run;
end.
