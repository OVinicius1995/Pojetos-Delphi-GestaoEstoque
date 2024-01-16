inherited frmPesqComrpa: TfrmPesqComrpa
  Caption = 'Pesquisa de Comrpas'
  TextHeight = 15
  inherited Panel1: TPanel
    inherited cmbChavePesquisa: TComboBox
      Items.Strings = (
        'C'#243'digo da compra'
        'Usu'#225'rio'
        'C'#243'digo do fornecedor'
        'ID da forma PGTO'
        'Cadastro'
        'Per'#237'odo')
    end
  end
  inherited bbtnPesquisa: TBitBtn
    OnClick = bbtnPesquisaClick
  end
  inherited bbtnTransferir: TBitBtn
    OnClick = bbtnTransferirClick
  end
  inherited fdqPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      'A.ID_COMPRA,'
      'A.ID_FORNECEDOR,'
      'A.ID_FORMA_PGTO,'
      'A.USUARIO,'
      'A.CADASTRO,'
      'A.VALOR'
      'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C  '
      'WHERE A.ID_FORNECEDOR = B.ID_FORNECEDOR'
      'AND C.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'ORDER BY A.ID_COMPRA')
    object fdqPesquisaPadraoID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPesquisaPadraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object fdqPesquisaPadraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object fdqPesquisaPadraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object fdqPesquisaPadraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  inherited Rel_Pes: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
