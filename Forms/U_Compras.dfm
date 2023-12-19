inherited frmCadastroDeCompras: TfrmCadastroDeCompras
  Caption = 'Cadastro De Compras'
  ClientHeight = 604
  ClientWidth = 918
  OnActivate = FormActivate
  ExplicitWidth = 930
  ExplicitHeight = 642
  TextHeight = 15
  object Label8: TLabel [0]
    Left = 15
    Top = 56
    Width = 34
    Height = 15
    Caption = 'ID'
  end
  inherited pnlCabecalho: TPanel
    Width = 918
  end
  inherited pnlFooter: TPanel
    Top = 571
    Width = 918
    ExplicitTop = 478
    ExplicitWidth = 747
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 4
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
    TabOrder = 10
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Left = 431
    Top = 575
    Hints.Strings = ()
    TabOrder = 11
    ExplicitLeft = 431
    ExplicitTop = 575
  end
  inherited Panel1: TPanel
    Width = 918
    Height = 172
    TabOrder = 12
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
    object Label9: TLabel
      Left = 288
      Top = 56
      Width = 49
      Height = 15
      Caption = 'USUARIO'
      FocusControl = dbUsuario
    end
    object Label10: TLabel
      Left = 13
      Top = 101
      Width = 201
      Height = 15
      Caption = 'ID DA FORMA DE PGTO E DESCRI'#199#195'O:'
    end
    object Label11: TLabel
      Left = 288
      Top = 101
      Width = 36
      Height = 15
      Caption = 'VALOR'
      FocusControl = dbValor
    end
    object Label12: TLabel
      Left = 288
      Top = 11
      Width = 60
      Height = 15
      Caption = 'CADASTRO'
      FocusControl = dbIdcadastro
    end
    object Label1: TLabel
      Left = 15
      Top = 56
      Width = 202
      Height = 15
      Caption = 'ID DO FORNECEDOR E  SEU NOME:'
      FocusControl = dbIcompra
    end
    object dbIcompra: TDBEdit
      Left = 13
      Top = 27
      Width = 228
      Height = 23
      DataField = 'ID_COMPRA'
      DataSource = dtsPadrao
      TabOrder = 0
    end
    object dbUsuario: TDBEdit
      Left = 288
      Top = 72
      Width = 154
      Height = 23
      DataField = 'USUARIO'
      DataSource = dtsPadrao
      Enabled = False
      TabOrder = 2
    end
    object dbValor: TDBEdit
      Left = 288
      Top = 117
      Width = 154
      Height = 23
      DataField = 'VALOR'
      DataSource = dtsPadrao
      TabOrder = 3
    end
    object dbIdcadastro: TDBEdit
      Left = 288
      Top = 27
      Width = 154
      Height = 23
      DataField = 'CADASTRO'
      DataSource = dtsPadrao
      TabOrder = 1
    end
    object edtNomeFornecedor: TEdit
      Left = 95
      Top = 72
      Width = 146
      Height = 23
      Enabled = False
      TabOrder = 4
      TextHint = 'Nome do fornecedor'
    end
    object edtFormaPGTO: TEdit
      Left = 95
      Top = 117
      Width = 146
      Height = 23
      Enabled = False
      TabOrder = 5
      TextHint = 'Descri'#231#227'o da forma de pagamento'
    end
  end
  inherited Panel2: TPanel
    Top = 501
    Width = 918
    TabOrder = 13
    ExplicitTop = 614
  end
  inherited DBGrid1: TDBGrid
    Top = 225
    Width = 918
    Height = 276
    TabOrder = 14
  end
  object cmbIdFormaPgto: TComboBox [14]
    Left = 13
    Top = 170
    Width = 76
    Height = 23
    Hint = 'Selecione o c'#243'digo do fornec.'
    Style = csDropDownList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TextHint = 'Selecione a forma de pgto'
    StyleName = 'Windows'
    OnChange = cmbIdFormaPgtoChange
  end
  object cmdIdFornec: TComboBox [15]
    AlignWithMargins = True
    Left = 13
    Top = 125
    Width = 76
    Height = 23
    Style = csDropDownList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TextHint = 'Selecione'
    StyleName = 'Windows'
    OnChange = cmdIdFornecChange
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
      'select ID_FORNECEDOR, NOME from FORNECEDOR'
      'order by ID_FORNECEDOR asc')
    Left = 536
    Top = 80
    object q_PadraoItemID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_PadraoItemNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  inherited dsPadraoItem: TDataSource
    Left = 536
    Top = 144
  end
  object fdq_FormaPgto: TFDQuery
    Connection = dmConexao.fdcConexao
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO,DESCRICAO FROM FORMA_PGTO'
      'ORDER by ID_FORMA_PGTO asc')
    Left = 840
    Top = 96
    object fdq_FormaPgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdq_FormaPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dtsFormapgto: TDataSource
    Left = 840
    Top = 152
  end
end
