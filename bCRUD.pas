unit bCRUD;

interface

uses
  TEntidade,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Engine.ObjectManager,
  Aurelius.Drivers.Interfaces,
  ConnectionModule,
  System.SysUtils,
  Aurelius.Bind.Dataset;

type
  TDadosConn =  record
    server   : string;
    Database : string;
  end;

type
  TCRUD = class(TObject)
    produto   : TProduto;
    mDataSet  : TAureliusDataset;
    strConn   : string;
    dadosConn : TDadosConn;
    conn      : IDBConnection;

  private
    manager : TObjectManager;

  public
    function manipulaProd: Boolean;
    function excluiProd: Boolean;
    procedure conecta;
    procedure atualiza;
  end;

implementation

procedure TCRUD.atualiza;
begin
  {Deixei comentado porque sem conexão dá problema}
//  mDataSet.Close;
//  mDataSet.Manager := manager;
//  mDataSet.setSourceCriteria(manager.Find<TProduto>);
//  mDataSet.Open;
end;

procedure TCRUD.conecta;
begin
  {Deu problema para conectar e não identifiquei a causa}
//  conn    := TMSSQLConnection.CreateConnection;
//  manager := TObjectManager.Create(conn);
//
//  // Atualiza conexão
//  TDatabaseManager.Update(conn);
end;

function TCRUD.excluiProd: Boolean;
begin
  {Comando para remover registro, deixei comentado pq dá erro por não haver conexão}
//  Manager.Remove(Manager.Find<TProduto>(mDataSet.FieldByName('ID').AsInteger));
end;

function TCRUD.manipulaProd: Boolean;
begin
  {não comentei pq não chamo esse método no business da tela principal}
  Result := False;
  try
    manager.SaveOrUpdate(produto);
  except
    on E : Exception do begin
      raise Exception.Create('Erro ao gravar em Banco de Dados');
    end;
  end;
  Result := True;
end;

end.
