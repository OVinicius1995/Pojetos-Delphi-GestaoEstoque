inherited frmVendas: TfrmVendas
  Caption = 'Vendas'
  ClientWidth = 747
  OnActivate = FormActivate
  ExplicitWidth = 759
  TextHeight = 15
  inherited pnlCabecalho: TPanel
    Width = 747
    ExplicitWidth = 743
  end
  inherited pnlFooter: TPanel
    Width = 747
    ExplicitTop = 733
    ExplicitWidth = 743
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Top = 481
    Hints.Strings = ()
    ExplicitTop = 481
  end
  inherited Panel1: TPanel
    Width = 747
    Height = 260
    ExplicitLeft = -8
    ExplicitTop = 21
    ExplicitHeight = 260
    object Label1: TLabel
      Left = 56
      Top = 32
      Width = 54
      Height = 15
      Caption = 'ID_VENDA'
      FocusControl = dbeIdVenta
    end
    object Label2: TLabel
      Left = 56
      Top = 80
      Width = 60
      Height = 15
      Caption = 'ID_CLIENTE'
      FocusControl = dbeIdCliente
    end
    object Label3: TLabel
      Left = 56
      Top = 128
      Width = 91
      Height = 15
      Caption = 'ID_FORMA_PGTO'
      FocusControl = dbeIdFormaPgto
    end
    object Label4: TLabel
      Left = 228
      Top = 32
      Width = 49
      Height = 15
      Caption = 'USUARIO'
      FocusControl = dbeUsuario
    end
    object Label5: TLabel
      Left = 228
      Top = 125
      Width = 36
      Height = 15
      Caption = 'VALOR'
      FocusControl = dbeValor
    end
    object Label6: TLabel
      Left = 228
      Top = 75
      Width = 60
      Height = 15
      Caption = 'CADASTRO'
      FocusControl = dbeCadastro
    end
    object Label7: TLabel
      Left = 489
      Top = 32
      Width = 44
      Height = 15
      Caption = 'CLIENTE'
      FocusControl = DBLookupComboBox1
    end
    object Label8: TLabel
      Left = 489
      Top = 75
      Width = 63
      Height = 15
      Caption = 'DESCRICAO'
      FocusControl = DBLookupComboBox2
    end
    object dbeIdVenta: TDBEdit
      Left = 56
      Top = 48
      Width = 154
      Height = 23
      DataField = 'ID_VENDA'
      DataSource = dsPadraoItem
      TabOrder = 0
    end
    object dbeIdCliente: TDBEdit
      Left = 56
      Top = 99
      Width = 154
      Height = 23
      DataField = 'ID_CLIENTE'
      DataSource = dsPadraoItem
      TabOrder = 1
    end
    object dbeIdFormaPgto: TDBEdit
      Left = 56
      Top = 144
      Width = 154
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = dsPadraoItem
      TabOrder = 2
    end
    object dbeUsuario: TDBEdit
      Left = 228
      Top = 48
      Width = 255
      Height = 23
      DataField = 'USUARIO'
      DataSource = dsPadraoItem
      TabOrder = 3
    end
    object dbeValor: TDBEdit
      Left = 228
      Top = 144
      Width = 255
      Height = 23
      DataField = 'VALOR'
      DataSource = dsPadraoItem
      TabOrder = 4
    end
    object dbeCadastro: TDBEdit
      Left = 228
      Top = 96
      Width = 255
      Height = 23
      DataField = 'CADASTRO'
      DataSource = dsPadraoItem
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 489
      Top = 48
      Width = 150
      Height = 23
      DataField = 'CLIENTE'
      DataSource = dsPadraoItem
      TabOrder = 6
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 489
      Top = 96
      Width = 150
      Height = 23
      DataField = 'DESCRICAO'
      DataSource = dsPadraoItem
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Width = 747
    ExplicitTop = 663
    ExplicitWidth = 743
  end
  inherited DBGrid1: TDBGrid
    Top = 248
    Width = 747
    Height = 193
    Align = alNone
  end
  inherited fdqQueryPadrao: TFDQuery
    Left = 688
    Top = 376
  end
  inherited dtsPadrao: TDataSource
    Left = 656
    Top = 328
  end
  inherited q_PadraoItem: TFDQuery
    Active = True
    Connection = dmConexao.fdcConexao
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
      '     CADASTRO'
      'FROM VENDA'
      'ORDER BY ID_VENDA')
    Left = 688
    Top = 96
    object q_PadraoItemID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object q_PadraoItemID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object q_PadraoItemID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object q_PadraoItemUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object q_PadraoItemVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object q_PadraoItemCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object cmdCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = fdqClientes
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object cmbDesc: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = fdqFormaPgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
  end
  inherited dsPadraoItem: TDataSource
    Left = 680
    Top = 160
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
    Left = 144
    Top = 272
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
    Left = 224
    Top = 272
  end
  object dsCliente: TDataSource
    DataSet = fdqClientes
    Left = 144
    Top = 328
  end
  object dsFormapgto: TDataSource
    DataSet = fdqFormaPgto
    Left = 220
    Top = 328
  end
end
