inherited frmPesqUsuario: TfrmPesqUsuario
  Caption = 'Pesquisa Usu'#225'rio'
  OnCreate = FormCreate
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitLeft = 0
    ExplicitTop = -6
    ExplicitWidth = 881
    inherited cmbChavePesquisa: TComboBox
      OnChange = cmbChavePesquisaChange
      Items.Strings = (
        'C'#243'digo'
        'Nome'
        'Cadastro'
        'Per'#237'odo')
    end
  end
  inherited dbgPesquisa: TDBGrid
    DataSource = dsPesquisaPadrao
    Columns = <
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'ID_USUARIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Source Code Pro'
        Font.Style = []
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'NOME'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Source Code Pro'
        Font.Style = []
        Width = 312
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Source Code Pro'
        Font.Style = []
        Width = 158
        Visible = True
      end
      item
        Alignment = taCenter
        ButtonStyle = cbsEllipsis
        Expanded = False
        FieldName = 'CADASTRO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Source Code Pro'
        Font.Style = []
        Width = 103
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    ExplicitTop = 615
    ExplicitWidth = 877
  end
  inherited bbtnPesquisa: TBitBtn
    OnClick = bbtnPesquisaClick
  end
  inherited fdqPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'select '
      ' ID_USUARIO,'
      ' NOME,'
      ' TIPO,'
      ' CADASTRO'
      ' from usuario')
    object fdqPesquisaPadraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqPesquisaPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object fdqPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
