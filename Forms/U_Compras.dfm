inherited frmCadastroDeCompras: TfrmCadastroDeCompras
  Caption = 'Cadastro De Compras'
  ClientHeight = 604
  ClientWidth = 918
  OnActivate = FormActivate
  ExplicitWidth = 930
  ExplicitHeight = 642
  TextHeight = 15
  inherited pnlCabecalho: TPanel
    Width = 918
  end
  inherited pnlFooter: TPanel
    Top = 571
    Width = 918
    TabOrder = 2
    ExplicitTop = 478
    ExplicitWidth = 747
  end
  inherited btnNovo: TBitBtn
    TabOrder = 3
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 4
  end
  inherited btnDeletar: TBitBtn
    TabOrder = 5
  end
  inherited btnEditar: TBitBtn
    TabOrder = 6
  end
  inherited btnGravar: TBitBtn
    TabOrder = 7
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 8
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 9
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Hints.Strings = ()
    TabOrder = 10
  end
  inherited Panel1: TPanel
    Width = 918
    Height = 172
    TabOrder = 11
    ExplicitLeft = -8
    ExplicitTop = 55
    ExplicitWidth = 918
    ExplicitHeight = 172
    object Label7: TLabel
      Left = 13
      Top = 11
      Width = 66
      Height = 15
      Caption = 'ID_COMPRA'
      FocusControl = dbIcompra
    end
    object Label8: TLabel
      Left = 13
      Top = 56
      Width = 91
      Height = 15
      Caption = 'ID_FORNECEDOR'
    end
    object Label9: TLabel
      Left = 184
      Top = 56
      Width = 49
      Height = 15
      Caption = 'USUARIO'
      FocusControl = dbUsuario
    end
    object Label10: TLabel
      Left = 13
      Top = 101
      Width = 91
      Height = 15
      Caption = 'ID_FORMA_PGTO'
      FocusControl = bdIdFormaPgto
    end
    object Label11: TLabel
      Left = 184
      Top = 101
      Width = 36
      Height = 15
      Caption = 'VALOR'
      FocusControl = dbValor
    end
    object Label12: TLabel
      Left = 184
      Top = 11
      Width = 60
      Height = 15
      Caption = 'CADASTRO'
      FocusControl = dbIdcadastro
    end
    object dbIcompra: TDBEdit
      Left = 13
      Top = 27
      Width = 154
      Height = 23
      DataField = 'ID_COMPRA'
      DataSource = dtsPadrao
      TabOrder = 0
    end
    object dbUsuario: TDBEdit
      Left = 184
      Top = 72
      Width = 154
      Height = 23
      DataField = 'USUARIO'
      DataSource = dtsPadrao
      Enabled = False
      TabOrder = 3
    end
    object bdIdFormaPgto: TDBEdit
      Left = 757
      Top = 98
      Width = 154
      Height = 23
      DataField = 'ID_FORMA_PGTO'
      DataSource = dtsPadrao
      TabOrder = 1
    end
    object dbValor: TDBEdit
      Left = 184
      Top = 117
      Width = 154
      Height = 23
      DataField = 'VALOR'
      DataSource = dtsPadrao
      TabOrder = 4
    end
    object dbIdcadastro: TDBEdit
      Left = 184
      Top = 27
      Width = 154
      Height = 23
      DataField = 'CADASTRO'
      DataSource = dtsPadrao
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Top = 501
    Width = 918
    TabOrder = 12
    ExplicitTop = 614
  end
  inherited DBGrid1: TDBGrid
    Top = 225
    Width = 918
    Height = 276
    TabOrder = 13
  end
  object cmbIdFormaPgto: TComboBox [13]
    Left = 13
    Top = 170
    Width = 154
    Height = 23
    Hint = 'Selecione o c'#243'digo do fornec.'
    Style = csDropDownList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'Selecione a forma de pgto'
  end
  object cmdIdFornec: TComboBox [14]
    Left = 13
    Top = 125
    Width = 154
    Height = 23
    Hint = 'Selecione o c'#243'digo do fornec.'
    Style = csDropDownList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    TextHint = 'Selecione um fornecedor'
  end
  inherited fdqQueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT  '
      'ID_COMPRA,'
      'ID_FORNECEDOR,'
      'USUARIO,'
      'ID_FORMA_PGTO,'
      'VALOR,'
      'CADASTRO'
      'FROM COMPRA'
      'ORDER BY ID_COMPRA')
    Left = 688
    Top = 136
    object fdqQueryPadraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqQueryPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object fdqQueryPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object fdqQueryPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqQueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited dtsPadrao: TDataSource
    Left = 696
    Top = 80
  end
  inherited q_PadraoItem: TFDQuery
    ActiveStoredUsage = [auRunTime]
    AutoCalcFields = False
    FieldOptions.PositionMode = poFieldNo
    FieldOptions.UpdatePersistent = True
    DetailFields = 'ID_FORMA_PGTO'
    Connection = dmConexao.fdcConexao
    FetchOptions.AssignedValues = [evAutoFetchAll]
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    SQL.Strings = (
      'select ID_FORNECEDOR from FORNECEDOR'
      'order by ID_FORNECEDOR asc')
    Left = 536
    Top = 80
    object q_PadraoItemID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  inherited dsPadraoItem: TDataSource
    Left = 536
    Top = 144
  end
  object fdq_FormaPgto: TFDQuery
    Connection = dmConexao.fdcConexao
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO FROM FORMA_PGTO'
      'ORDER by ID_FORMA_PGTO asc')
    Left = 424
    Top = 88
    object fdq_FormaPgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtsFormapgto: TDataSource
    Left = 424
    Top = 144
  end
end
