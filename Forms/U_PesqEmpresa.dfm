inherited frmPesquisaEmpresa: TfrmPesquisaEmpresa
  Caption = 'Pesquisa de empresa'
  OnCreate = FormCreate
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitWidth = 881
  end
  inherited dbgPesquisa: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_EMPRESA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    ExplicitWidth = 881
  end
  inherited bbtnPesquisa: TBitBtn
    OnClick = bbtnPesquisaClick
  end
  inherited fdqPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      'ID_EMPRESA,'
      'RAZAO_SOCIAL,'
      'N_FANTASIA,'
      'ENDERECO,'
      'NUMERO,'
      'BAIRRO,'
      'CIDADE,'
      'UF,'
      'TELEFONE,'
      'CPF_CNPJ,'
      'EMAIL,'
      'CADASTRO,'
      'CEP,'
      'LOGO'
      'FROM EMPRESA')
    object fdqPesquisaPadraoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPesquisaPadraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object fdqPesquisaPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object fdqPesquisaPadraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
    end
    object fdqPesquisaPadraoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object fdqPesquisaPadraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object fdqPesquisaPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object fdqPesquisaPadraoLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
  end
end
