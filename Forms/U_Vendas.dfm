inherited frmVendas: TfrmVendas
  Caption = 'Vendas'
  ClientHeight = 579
  ClientWidth = 870
  ExplicitWidth = 882
  ExplicitHeight = 617
  TextHeight = 15
  inherited Panel2: TPanel [0]
    Top = 464
    Width = 870
    Height = 67
    ExplicitTop = 464
    ExplicitWidth = 870
    ExplicitHeight = 67
    object Label10: TLabel
      Left = 221
      Top = 10
      Width = 69
      Height = 15
      Caption = 'ID_PRODUTO'
      FocusControl = dbIdProduto
    end
    object Label15: TLabel
      Left = 316
      Top = 10
      Width = 28
      Height = 15
      Caption = 'QTDE'
      FocusControl = dbQtde
    end
    object Label16: TLabel
      Left = 468
      Top = 10
      Width = 56
      Height = 15
      Caption = 'VL_VENDA'
      FocusControl = dbVlCusto
    end
    object Label17: TLabel
      Left = 591
      Top = 10
      Width = 60
      Height = 15
      Caption = 'DESCONTO'
      FocusControl = dbDesconto
    end
    object Label18: TLabel
      Left = 740
      Top = 10
      Width = 63
      Height = 15
      Caption = 'TOTAL_ITEM'
      FocusControl = dbTotalItem
    end
    object dbIdProduto: TDBEdit
      Left = 147
      Top = 31
      Width = 154
      Height = 23
      AutoSelect = False
      DataField = 'ID_PRODUTO'
      DataSource = dsPadraoItem
      TabOrder = 0
      OnExit = dbIdProdutoExit
    end
    object dbQtde: TDBEdit
      Left = 307
      Top = 31
      Width = 145
      Height = 23
      DataField = 'QTDE'
      DataSource = dsPadraoItem
      TabOrder = 1
    end
    object dbVlCusto: TDBEdit
      Left = 458
      Top = 31
      Width = 117
      Height = 23
      DataField = 'VL_VENDA'
      DataSource = dsPadraoItem
      TabOrder = 2
    end
    object dbDesconto: TDBEdit
      Left = 581
      Top = 31
      Width = 153
      Height = 23
      DataField = 'DESCONTO'
      DataSource = dsPadraoItem
      TabOrder = 3
    end
    object dbTotalItem: TDBEdit
      Left = 740
      Top = 31
      Width = 130
      Height = 23
      DataField = 'TOTAL_ITEM'
      DataSource = dsPadraoItem
      TabOrder = 4
    end
  end
  inherited pnlCabecalho: TPanel [1]
    Width = 870
    ExplicitWidth = 743
  end
  inherited pnlFooter: TPanel [2]
    Top = 531
    Width = 870
    Height = 48
    ExplicitTop = 1088
    ExplicitWidth = 870
    ExplicitHeight = 48
    inherited bibItem: TBitBtn
      OnClick = bibItemClick
    end
    inherited bibOk: TBitBtn
      OnClick = bibOkClick
    end
    inherited bibExcluir: TBitBtn
      OnClick = bibExcluirClick
    end
  end
  inherited btnNovo: TBitBtn [3]
  end
  inherited btnAtualizar: TBitBtn [4]
  end
  inherited btnDeletar: TBitBtn [5]
  end
  inherited btnEditar: TBitBtn [6]
  end
  inherited btnGravar: TBitBtn [7]
  end
  inherited btnCancelar: TBitBtn [8]
  end
  inherited btnPesquisar: TBitBtn [9]
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator [10]
    Left = 0
    Top = 439
    Width = 870
    Align = alBottom
    Hints.Strings = ()
    ExplicitLeft = 522
    ExplicitTop = 1085
  end
  inherited Panel1: TPanel [11]
    Width = 870
    Height = 212
    ExplicitWidth = 870
    ExplicitHeight = 212
    object Label1: TLabel
      Left = 37
      Top = 6
      Width = 54
      Height = 15
      Caption = 'ID_VENDA'
      FocusControl = dbeIdVendas
    end
    object Label2: TLabel
      Left = 37
      Top = 56
      Width = 60
      Height = 15
      Caption = 'ID_CLIENTE'
      FocusControl = dbIdClientes
    end
    object Label3: TLabel
      Left = 37
      Top = 103
      Width = 91
      Height = 15
      Caption = 'ID_FORMA_PGTO'
      FocusControl = dbeIdformaPgto
    end
    object Label4: TLabel
      Left = 37
      Top = 152
      Width = 49
      Height = 15
      Caption = 'USUARIO'
      FocusControl = dbeUsuario
    end
    object Label5: TLabel
      Left = 280
      Top = 8
      Width = 36
      Height = 15
      Caption = 'VALOR'
      FocusControl = dbeValor
    end
    object Label6: TLabel
      Left = 281
      Top = 55
      Width = 60
      Height = 15
      Caption = 'CADASTRO'
      FocusControl = dbeCadastro
    end
    object Label7: TLabel
      Left = 280
      Top = 103
      Width = 44
      Height = 15
      Caption = 'CLIENTE'
      FocusControl = cmbCliente
    end
    object Label8: TLabel
      Left = 280
      Top = 152
      Width = 63
      Height = 15
      Caption = 'DESCRICAO'
      FocusControl = cmbDescricao
    end
    object Label9: TLabel
      Left = 448
      Top = 152
      Width = 49
      Height = 15
      Caption = 'PARCELA'
      FocusControl = dbeParcela
    end
    object dbeIdVendas: TDBEdit
      Left = 37
      Top = 26
      Width = 200
      Height = 23
      DataField = 'ID_VENDA'
      DataSource = dtsPadrao
      TabOrder = 0
    end
    object dbIdClientes: TDBEdit
      Left = 37
      Top = 74
      Width = 200
      Height = 23
      DataField = 'ID_CLIENTE'
      DataSource = dtsPadrao
      TabOrder = 1
      OnExit = dbIdClientesExit
    end
    object dbeIdformaPgto: TDBEdit
      Left = 37
      Top = 119
      Width = 200
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = dtsPadrao
      TabOrder = 2
      OnExit = dbeIdFormaPgtoExit
    end
    object dbeUsuario: TDBEdit
      Left = 37
      Top = 168
      Width = 200
      Height = 23
      DataField = 'USUARIO'
      DataSource = dtsPadrao
      Enabled = False
      TabOrder = 3
    end
    object dbeValor: TDBEdit
      Left = 280
      Top = 26
      Width = 154
      Height = 23
      DataField = 'VALOR'
      DataSource = dtsPadrao
      TabOrder = 4
    end
    object dbeCadastro: TDBEdit
      Left = 280
      Top = 74
      Width = 154
      Height = 23
      DataField = 'CADASTRO'
      DataSource = dtsPadrao
      TabOrder = 5
    end
    object cmbCliente: TDBLookupComboBox
      Left = 280
      Top = 119
      Width = 150
      Height = 23
      DataField = 'CLIENTE'
      DataSource = dtsPadrao
      TabOrder = 6
    end
    object cmbDescricao: TDBLookupComboBox
      Left = 280
      Top = 168
      Width = 150
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = dtsPadrao
      TabOrder = 7
    end
    object dbeParcela: TDBEdit
      Left = 448
      Top = 168
      Width = 154
      Height = 23
      DataField = 'PARCELA'
      DataSource = dtsPadrao
      TabOrder = 8
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 265
    Width = 870
    Height = 174
    DataSource = dsPadraoItem
  end
  inherited fdqQueryPadrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT '
      '     ID_VENDA,'
      '     ID_CLIENTE,'
      '     ID_FORMA_PGTO,'
      '     USUARIO,'
      '     VALOR,'
      '     CADASTRO,'
      '     PARCELA,'
      '     DINHEIRO,'
      '     TROCO'
      'FROM VENDA'
      'ORDER BY ID_VENDA')
    Left = 648
    Top = 64
    object fdqQueryPadraoID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqQueryPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object fdqQueryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object fdqQueryPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqQueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object fdqQueryPadraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = fdqClientes
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object fdqQueryPadraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = fdqFormaPgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
    object fdqQueryPadraoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object fdqQueryPadraoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqQueryPadraoTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited dtsPadrao: TDataSource
    Left = 648
    Top = 112
  end
  inherited q_PadraoItem: TFDQuery
    Active = True
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = dmConexao.fdcConexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT '
      '   ID_SEQUENCIA,'
      '   ID_VENDA,'
      '   ID_PRODUTO,'
      '   QTDE,'
      '   VL_VENDA,'
      '   DESCONTO,'
      '   TOTAL_ITEM'
      'FROM ITEM_VENDA'
      'WHERE ID_VENDA=:ID_VENDA'
      'ORDER BY ID_SEQUENCIA')
    Left = 800
    Top = 88
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object q_PadraoItemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_PadraoItemID_VENDA: TFDAutoIncField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object q_PadraoItemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object q_PadraoItemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_PadraoItemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_PadraoItemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_PadraoItemVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_PadraoItemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited dsPadraoItem: TDataSource
    Left = 816
    Top = 144
  end
  object fdqClientes: TFDQuery
    Active = True
    Connection = dmConexao.fdcConexao
    SQL.Strings = (
      'SELECT '
      '   ID_CLIENTE,'
      '   NOME'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE   ')
    Left = 472
    Top = 64
    object fdqClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object fdqFormaPgto: TFDQuery
    Active = True
    Connection = dmConexao.fdcConexao
    SQL.Strings = (
      'SELECT '
      '     ID_FORMA_PGTO,'
      '     DESCRICAO'
      'FROM FORMA_PGTO'
      'order by ID_FORMA_PGTO')
    Left = 552
    Top = 64
    object fdqFormaPgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqFormaPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsCliente: TDataSource
    DataSet = fdqClientes
    Left = 480
    Top = 112
  end
  object dsFormapgto: TDataSource
    DataSet = fdqFormaPgto
    Left = 556
    Top = 112
  end
  object fdq_Produto: TFDQuery
    Active = True
    Connection = dmConexao.fdcConexao
    SQL.Strings = (
      'SELECT     '
      'ID_PRODUTO,'
      'DESCRICAO,'
      'ESTOQUE,'
      'VL_VENDA'
      'FROM PRODUTO'
      'ORDER BY ID_PRODUTO')
    Left = 640
    Top = 176
    object fdq_ProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdq_ProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object fdq_ProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdq_ProdutoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dsProduto: TDataSource
    DataSet = fdq_Produto
    Left = 640
    Top = 232
  end
end
