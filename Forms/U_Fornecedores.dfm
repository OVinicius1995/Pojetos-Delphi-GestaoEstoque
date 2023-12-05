inherited frmFornecedores: TfrmFornecedores
  Caption = 'Cadastro de fornecedores'
  ClientHeight = 397
  ClientWidth = 751
  ExplicitHeight = 435
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 56
    Top = 56
    Width = 91
    Height = 15
    Caption = 'ID_FORNECEDOR'
    FocusControl = dbeIdfornecedor
  end
  object Label2: TLabel [1]
    Left = 56
    Top = 104
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = dbeNome
  end
  object Label3: TLabel [2]
    Left = 101
    Top = 149
    Width = 59
    Height = 15
    Caption = 'ENDERECO'
    FocusControl = dbeEndereco
  end
  object Label4: TLabel [3]
    Left = 446
    Top = 146
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = dbeNumero
  end
  object Label5: TLabel [4]
    Left = 61
    Top = 244
    Width = 41
    Height = 17
    Caption = 'BAIRRO'
    FocusControl = dbeBairro
  end
  object Label6: TLabel [5]
    Left = 272
    Top = 195
    Width = 59
    Height = 15
    Caption = 'CIDADE'
    FocusControl = dbeCidade
  end
  object Label7: TLabel [6]
    Left = 56
    Top = 149
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 56
    Top = 200
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = dbeCep
  end
  object Label9: TLabel [8]
    Left = 263
    Top = 104
    Width = 54
    Height = 15
    Caption = 'TELEFONE'
    FocusControl = dbeTelefone
  end
  object Label10: TLabel [9]
    Left = 446
    Top = 104
    Width = 27
    Height = 15
    Caption = 'CNPJ'
    FocusControl = dbeCnpj
  end
  object Label11: TLabel [10]
    Left = 221
    Top = 56
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = dbeCadastro
  end
  inherited pnlCabecalho: TPanel
    Width = 751
  end
  inherited pnlFooter: TPanel
    Top = 339
    Width = 751
    TabOrder = 12
  end
  inherited btnNovo: TBitBtn
    TabOrder = 13
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 14
  end
  inherited btnDeletar: TBitBtn
    TabOrder = 15
  end
  inherited btnEditar: TBitBtn
    TabOrder = 16
  end
  inherited btnGravar: TBitBtn
    TabOrder = 17
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 18
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 19
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Left = 164
    Top = 355
    Hints.Strings = ()
    TabOrder = 20
    ExplicitLeft = 164
    ExplicitTop = 355
  end
  object dbeIdfornecedor: TDBEdit [21]
    Left = 56
    Top = 72
    Width = 154
    Height = 23
    DataField = 'ID_FORNECEDOR'
    DataSource = dtsPadrao
    Enabled = False
    TabOrder = 1
  end
  object dbeNome: TDBEdit [22]
    Left = 56
    Top = 120
    Width = 201
    Height = 23
    DataField = 'NOME'
    DataSource = dtsPadrao
    TabOrder = 3
  end
  object dbeEndereco: TDBEdit [23]
    Left = 101
    Top = 165
    Width = 339
    Height = 23
    DataField = 'ENDERECO'
    DataSource = dtsPadrao
    TabOrder = 7
  end
  object dbeNumero: TDBEdit [24]
    Left = 446
    Top = 165
    Width = 166
    Height = 23
    DataField = 'NUMERO'
    DataSource = dtsPadrao
    TabOrder = 8
  end
  object dbeBairro: TDBEdit [25]
    Left = 58
    Top = 261
    Width = 554
    Height = 23
    DataField = 'BAIRRO'
    DataSource = dtsPadrao
    TabOrder = 11
  end
  object dbeCidade: TDBEdit [26]
    Left = 272
    Top = 216
    Width = 340
    Height = 23
    DataField = 'CIDADE'
    DataSource = dtsPadrao
    TabOrder = 10
  end
  object DBEdit7: TDBEdit [27]
    Left = 56
    Top = 165
    Width = 35
    Height = 23
    DataField = 'UF'
    DataSource = dtsPadrao
    TabOrder = 6
  end
  object dbeCep: TDBEdit [28]
    Left = 56
    Top = 216
    Width = 201
    Height = 23
    DataField = 'CEP'
    DataSource = dtsPadrao
    TabOrder = 9
  end
  object dbeTelefone: TDBEdit [29]
    Left = 263
    Top = 120
    Width = 177
    Height = 23
    DataField = 'TELEFONE'
    DataSource = dtsPadrao
    TabOrder = 4
  end
  object dbeCnpj: TDBEdit [30]
    Left = 446
    Top = 117
    Width = 166
    Height = 23
    DataField = 'CNPJ'
    DataSource = dtsPadrao
    TabOrder = 5
  end
  object dbeCadastro: TDBEdit [31]
    Left = 216
    Top = 72
    Width = 154
    Height = 23
    DataField = 'CADASTRO'
    DataSource = dtsPadrao
    Enabled = False
    TabOrder = 2
  end
  inherited fdqQueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'select '
      '   ID_FORNECEDOR,'
      '   NOME,'
      '   ENDERECO,'
      '   NUMERO,'
      '   BAIRRO,'
      '   CIDADE,'
      '   UF,'
      '   CEP,'
      '   TELEFONE,'
      '   CNPJ,'
      '   CADASTRO'
      'from fornecedor')
    Left = 688
    Top = 112
    object fdqQueryPadraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdqQueryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdqQueryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object fdqQueryPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 100
    end
    object fdqQueryPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)0000-00000;0;_'
      Size = 100
    end
    object fdqQueryPadraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000-00;0;_'
      Size = 100
    end
    object fdqQueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dtsPadrao: TDataSource
    Left = 688
    Top = 176
  end
end
