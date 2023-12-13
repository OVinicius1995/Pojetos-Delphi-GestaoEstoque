inherited frmPesqUsuario: TfrmPesqUsuario
  Caption = 'Pesquisa Usu'#225'rio'
  OnCreate = FormCreate
  ExplicitWidth = 889
  ExplicitHeight = 720
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitWidth = 873
  end
  inherited mkeDataInicio: TMaskEdit
    Width = 116
    ExplicitWidth = 116
  end
  inherited mkeDataFim: TMaskEdit
    TabOrder = 5
  end
  inherited dbgPesquisa: TDBGrid
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
    TabOrder = 6
    ExplicitWidth = 873
  end
  inherited bbtnPesquisa: TBitBtn
    TabOrder = 2
    OnClick = bbtnPesquisaClick
  end
  inherited bbtnTransferir: TBitBtn
    TabOrder = 3
    OnClick = bbtnTransferirClick
  end
  inherited bbtnImprimir: TBitBtn
    TabOrder = 4
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
