inherited frmPesquisaProdutos: TfrmPesquisaProdutos
  Caption = 'Pesquisa de Produtos'
  OnCreate = FormCreate
  ExplicitWidth = 889
  ExplicitHeight = 720
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitWidth = 873
    inherited cmbChavePesquisa: TComboBox
      Items.Strings = (
        'C'#243'digo'
        'Nome')
    end
  end
  inherited dbgPesquisa: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRICAO DO PROD.'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    ExplicitTop = 614
    ExplicitWidth = 873
  end
  inherited bbtnPesquisa: TBitBtn
    OnClick = bbtnPesquisaClick
  end
  inherited bbtnTransferir: TBitBtn
    OnClick = bbtnTransferirClick
  end
  inherited fdqPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'select '
      ''
      'p.ID_PRODUTO,'
      'p.DESCRICAO,'
      'p.VL_CUSTO,'
      'p.VL_VENDA,'
      'p.ESTOQUE,'
      'p.Unidade,'
      'p.Cadastro,'
      'f.Nome'
      'from produto p'
      'Join fornecedor f on p.ID_FORNECEDOR=f.ID_FORNECEDOR')
    object fdqPesquisaPadraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPesquisaPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqPesquisaPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqPesquisaPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqPesquisaPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 6
    end
    object fdqPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
    end
    object fdqPesquisaPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
