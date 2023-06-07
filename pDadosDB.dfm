object frmDadosDB: TfrmDadosDB
  Left = 0
  Top = 0
  Caption = 'Banco de Dados'
  ClientHeight = 112
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbServer: TLabel
    Left = 24
    Top = 24
    Width = 35
    Height = 15
    Caption = 'Server:'
  end
  object lbDatabase: TLabel
    Left = 208
    Top = 24
    Width = 51
    Height = 15
    Caption = 'Database:'
  end
  object edServer: TEdit
    Left = 24
    Top = 45
    Width = 178
    Height = 23
    TabOrder = 0
  end
  object edDatabase: TEdit
    Left = 208
    Top = 45
    Width = 177
    Height = 23
    TabOrder = 1
  end
  object Button1: TButton
    Left = 229
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 310
    Top = 74
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button2Click
  end
end
