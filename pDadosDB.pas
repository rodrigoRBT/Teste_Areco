unit pDadosDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dmDataBase;

type
  TfrmDadosDB = class(TForm)
    lbServer: TLabel;
    lbDatabase: TLabel;
    edServer: TEdit;
    edDatabase: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosDB: TfrmDadosDB;

implementation

{$R *.dfm}

procedure TfrmDadosDB.Button1Click(Sender: TObject);
begin

  if (trim(edServer.Text) = EmptyStr) or (trim(edDatabase.Text) = EmptyStr) then begin
    ShowMessage('Favor informar Server e Database para Conexão com Banco');
    exit;
  end;

  database := TClasseConexao.Create;

  database.DadosConn.server   := trim(edServer.Text);
  database.dadosconn.Database := trim(edDatabase.Text);

  database.conecta;

  Close;
end;

procedure TfrmDadosDB.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
