unit ConnectionModule;

interface

uses
  Aurelius.Drivers.Interfaces,
  Aurelius.Drivers.MSSQL, 
  System.SysUtils, System.Classes, Aurelius.Comp.Connection;

type
  TMSSQLConnection = class(TDataModule)
    AureliusConnection: TAureliusConnection;
  private
  public
    class function CreateConnection: IDBConnection;
    class function CreateFactory: IDBConnectionFactory;

  end;

var
  MSSQLConnection: TMSSQLConnection;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses 
  Aurelius.Drivers.Base;

{$R *.dfm}

{ TMyConnectionModule }

class function TMSSQLConnection.CreateConnection: IDBConnection;
begin 
  Result := MSSQLConnection.AureliusConnection.CreateConnection;
end;

class function TMSSQLConnection.CreateFactory: IDBConnectionFactory;
begin
  Result := TDBConnectionFactory.Create(
    function: IDBConnection
    begin
      Result := CreateConnection;
    end
  );
end;



end.
