object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Produtos'
  ClientHeight = 582
  ClientWidth = 1078
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    1078
    582)
  TextHeight = 15
  object lbListagem: TLabel
    Left = 8
    Top = 39
    Width = 124
    Height = 15
    Caption = 'Listagem dos Produtos:'
  end
  object dbGradeProdutos: TDBGrid
    Left = 8
    Top = 60
    Width = 1049
    Height = 514
    Anchors = [akLeft, akTop, akRight, akBottom]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btAtualizar: TButton
    Left = 934
    Top = 22
    Width = 124
    Height = 32
    Anchors = [akRight, akBottom]
    Caption = 'Atualizar'
    TabOrder = 1
    OnClick = btAtualizarClick
    ExplicitLeft = 930
    ExplicitTop = 21
  end
  object btCadastro: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btBotoesClick
  end
  object btEditar: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
    OnClick = btBotoesClick
  end
  object btExcluir: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
  end
end
