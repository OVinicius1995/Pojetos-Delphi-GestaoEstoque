inherited frmUsuario: TfrmUsuario
  Caption = 'Cadastro de usu'#225'rios'
  ClientHeight = 442
  ClientWidth = 751
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 8
    Top = 128
    Width = 65
    Height = 15
    Caption = 'ID_USUARIO'
    FocusControl = dbeId
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 178
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = dbeNome
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 226
    Width = 38
    Height = 15
    Caption = 'SENHA'
    FocusControl = dbeSenha
  end
  object Label4: TLabel [3]
    Left = 176
    Top = 228
    Width = 25
    Height = 15
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 343
    Top = 228
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  inherited pnlCabecalho: TPanel
    Width = 751
    TabOrder = 11
  end
  inherited pnlFooter: TPanel
    Top = 384
    Width = 751
    TabOrder = 13
  end
  inherited btnNovo: TBitBtn
    TabOrder = 5
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 10
  end
  inherited btnDeletar: TBitBtn
    TabOrder = 6
  end
  inherited btnEditar: TBitBtn
    TabOrder = 7
  end
  inherited btnGravar: TBitBtn
    TabOrder = 8
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 9
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 12
    OnClick = btnPesquisarClick
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Hints.Strings = ()
    TabOrder = 14
  end
  object dbeId: TDBEdit [15]
    Left = 8
    Top = 149
    Width = 154
    Height = 23
    TabStop = False
    DataField = 'ID_USUARIO'
    DataSource = dtsPadrao
    Enabled = False
    ReadOnly = True
    TabOrder = 0
  end
  object dbeNome: TDBEdit [16]
    Left = 8
    Top = 197
    Width = 478
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = dtsPadrao
    TabOrder = 1
  end
  object dbeSenha: TDBEdit [17]
    Left = 8
    Top = 247
    Width = 154
    Height = 23
    DataField = 'SENHA'
    DataSource = dtsPadrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object dbeCadastro: TDBEdit [18]
    Left = 343
    Top = 247
    Width = 154
    Height = 23
    TabStop = False
    DataField = 'CADASTRO'
    DataSource = dtsPadrao
    TabOrder = 3
  end
  object cmbTipo: TDBComboBox [19]
    Left = 176
    Top = 247
    Width = 154
    Height = 23
    DataField = 'TIPO'
    DataSource = dtsPadrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 4
  end
  inherited fdqQueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select '
      'io.ID_USUARIO,'
      'io.nome,'
      'io.senha,'
      'io.tipo,'
      'io.cadastro  '
      'from usuario io'
      'ORDER BY io.ID_USUARIO')
    Left = 689
    Top = 333
    object fdqQueryPadraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdqQueryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object fdqQueryPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object fdqQueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dtsPadrao: TDataSource
    Left = 608
    Top = 333
  end
end
