inherited frmFormapgto: TfrmFormapgto
  Caption = 'Forma pgto'
  ExplicitWidth = 759
  ExplicitHeight = 479
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 96
    Top = 96
    Width = 91
    Height = 15
    Caption = 'ID_FORMA_PGTO'
    FocusControl = dbeIdformapgto
  end
  object Label2: TLabel [1]
    Left = 96
    Top = 144
    Width = 63
    Height = 15
    Caption = 'DESCRICAO'
    FocusControl = dbeDescricao
  end
  object Label3: TLabel [2]
    Left = 256
    Top = 96
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  inherited pnlCabecalho: TPanel
    ExplicitWidth = 743
  end
  inherited pnlFooter: TPanel
    TabOrder = 4
    ExplicitTop = 382
    ExplicitWidth = 743
  end
  inherited btnNovo: TBitBtn
    TabOrder = 5
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 6
  end
  inherited btnDeletar: TBitBtn
    TabOrder = 7
  end
  inherited btnEditar: TBitBtn
    TabOrder = 8
  end
  inherited btnGravar: TBitBtn
    TabOrder = 9
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 10
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 11
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Hints.Strings = ()
    TabOrder = 12
  end
  object dbeIdformapgto: TDBEdit [13]
    Left = 96
    Top = 112
    Width = 154
    Height = 23
    DataField = 'ID_FORMA_PGTO'
    DataSource = dtsPadrao
    Enabled = False
    TabOrder = 1
  end
  object dbeDescricao: TDBEdit [14]
    Left = 96
    Top = 160
    Width = 400
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = dtsPadrao
    TabOrder = 3
  end
  object dbeCadastro: TDBEdit [15]
    Left = 256
    Top = 112
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = dtsPadrao
    Enabled = False
    TabOrder = 2
  end
  inherited fdqQueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMAS_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'select '
      ''
      'ID_FORMA_PGTO,'
      'DESCRICAO,'
      'CADASTRO'
      ''
      'from forma_pgto'
      '')
    Left = 640
    Top = 120
    object fdqQueryPadraoID_FORMA_PGTO: TFDAutoIncField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdqQueryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dtsPadrao: TDataSource
    Left = 648
    Top = 224
  end
end
