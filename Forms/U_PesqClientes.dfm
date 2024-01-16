inherited frmPesquisaClientes: TfrmPesquisaClientes
  Caption = 'Pesquisa Clientes'
  ClientWidth = 1158
  ExplicitWidth = 1170
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
    ExplicitWidth = 1154
  end
  inherited bbtnPesquisa: TBitBtn
    OnClick = bbtnPesquisaClick
  end
  inherited bbtnTransferir: TBitBtn
    OnClick = bbtnTransferirClick
  end
  inherited bbtnImprimir: TBitBtn
    OnClick = bbtnImprimirClick
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
  inherited Rel_Pes: TfrxReport
    ReportOptions.CreateDate = 45273.433206643500000000
    ReportOptions.LastChange = 45273.504867407410000000
    Datasets = <
      item
        DataSet = DS_Pesq_Relatorio
        DataSetName = 'frxDBDatasetPesqCliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Titulo: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 37.574829060000000000
          Width = 718.110717773437500000
          Height = 30.236241670000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Bahnschrift'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'ario de clientes')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 234.330860000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = DS_Pesq_Relatorio
        DataSetName = 'frxDBDatasetPesqCliente'
        RowCount = 0
        object frxDBDatasetPesqClienteID_CLIENTE: TfrxMemoView
          IndexTag = 11
          AllowVectorExport = True
          Top = 39.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_CLIENTE'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."ID_CLIENTE"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteNOME: TfrxMemoView
          IndexTag = 10
          AllowVectorExport = True
          Left = 81.929190000000000000
          Top = 39.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NOME'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."NOME"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 40.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NUMERO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."NUMERO"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteCPF: TfrxMemoView
          IndexTag = 3
          AllowVectorExport = True
          Left = 245.228510000000000000
          Top = 39.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CPF'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."CPF"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteTELTEFONE: TfrxMemoView
          IndexTag = 4
          AllowVectorExport = True
          Left = 327.819110000000000000
          Top = 40.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'TELTEFONE'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."TELTEFONE"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteCEP: TfrxMemoView
          IndexTag = 5
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 41.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CEP'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."CEP"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteUF: TfrxMemoView
          IndexTag = 6
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 41.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'UF'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."UF"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteCIDADE: TfrxMemoView
          IndexTag = 7
          AllowVectorExport = True
          Left = 578.268090000000000000
          Top = 41.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CIDADE'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."CIDADE"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteBAIRRO: TfrxMemoView
          IndexTag = 8
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 104.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'BAIRRO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."BAIRRO"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteENDERECO: TfrxMemoView
          IndexTag = 9
          AllowVectorExport = True
          Left = 211.433210000000000000
          Top = 105.236240000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ENDERECO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."ENDERECO"]')
          ParentFont = False
        end
        object frxDBDatasetPesqClienteCADASTRO: TfrxMemoView
          IndexTag = 2
          AllowVectorExport = True
          Left = 573.268090000000000000
          Top = 105.456710000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CADASTRO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBDatasetPesqCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetPesqCliente."CADASTRO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 45.354360050000000000
          Top = 78.795308150000000000
          Width = 56.692946440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 289.433210000000000000
          Top = 78.795300000000000000
          Width = 64.252006440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 578.425480000000000000
          Top = 78.795300000000000000
          Width = 128.504016440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Data de Cadastro')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Top = 133.047310000000000000
          Width = 718.110696440000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '--------------------------------------------------')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 0.000002279999999993
          Width = 49.133893590000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 92.606370330000000000
          Top = 0.000002279999999993
          Width = 68.031478980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 179.535560330000000000
          Top = 0.000002279999999993
          Width = 64.251948980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 258.905690330000000000
          Top = 0.000002279999999993
          Width = 64.251948980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF ')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 330.716760330000000000
          Top = 0.000002279999999993
          Width = 64.251948980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 430.630180330000000000
          Top = 0.000002279999999993
          Width = 64.251948980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 506.220780330000000000
          Top = 0.000002279999999993
          Width = 64.251948980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 589.370440330000000000
          Top = 0.000002279999999993
          Width = 64.251948980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
          VAlign = vaBottom
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
      end
    end
  end
  inherited DS_Pesq_Relatorio: TfrxDBDataset
    UserName = 'frxDBDatasetPesqCliente'
  end
end
