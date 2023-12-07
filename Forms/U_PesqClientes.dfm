inherited frmPesquisaClientes: TfrmPesquisaClientes
  Caption = 'Pesquisa Clientes'
  ClientWidth = 1158
  ExplicitWidth = 1170
  ExplicitHeight = 720
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1158
    ExplicitWidth = 1154
  end
  inherited dbgPesquisa: TDBGrid
    Width = 1158
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'ID DO CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 402
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
        Width = 285
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELTEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 1158
    ExplicitTop = 614
    ExplicitWidth = 1154
  end
  inherited bbtnPesquisa: TBitBtn
    OnClick = bbtnPesquisaClick
  end
  inherited fdqPesquisaPadrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT '
      'ID_CLIENTE,'
      'NOME,'
      'ENDERECO,'
      'NUMERO,'
      'BAIRRO,'
      'CIDADE,'
      'UF,'
      'CEP,'
      'TELTEFONE,'
      'CPF,'
      'CADASTRO'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE'
      '')
    object fdqPesquisaPadraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
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
      FixedChar = True
      Size = 2
    end
    object fdqPesquisaPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object fdqPesquisaPadraoTELTEFONE: TStringField
      FieldName = 'TELTEFONE'
      Origin = 'TELTEFONE'
    end
    object fdqPesquisaPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object fdqPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
