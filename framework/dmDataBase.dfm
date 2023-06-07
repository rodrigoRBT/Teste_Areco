object MSSQLConnection: TMSSQLConnection
  Height = 198
  Width = 282
  object AureliusConnection: TAureliusConnection
    DriverName = 'MSSQL'
    Params.Strings = (
      'Server=STEVE-PC'
      'Database=produtos'
      'TrustedConnection=True')
    Left = 64
    Top = 64
  end
end
