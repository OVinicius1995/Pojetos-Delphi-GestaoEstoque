inherited frmPesquisaEmpresa: TfrmPesquisaEmpresa
  Caption = 'Pesquisa de empresa'
  OnCreate = FormCreate
  TextHeight = 15
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
  inherited Rel_Pes: TfrxReport
    ReportOptions.CreateDate = 45273.433206643500000000
    ReportOptions.LastChange = 45273.482659143520000000
    Datasets = <
      item
        DataSet = DS_Pesq_Relatorio
        DataSetName = 'frxDBRelEmpresas'
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
            'Relat'#243'ario de empresas')
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
        Height = 147.401670000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        DataSet = DS_Pesq_Relatorio
        DataSetName = 'frxDBRelEmpresas'
        RowCount = 0
        object frxDBRelEmpresasENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ENDERECO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Malgun Gothic'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelEmpresas."ENDERECO"]')
          ParentFont = False
        end
        object frxDBRelEmpresasN_FANTASIA: TfrxMemoView
          IndexTag = 10
          AllowVectorExport = True
          Left = 117.165430000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'N_FANTASIA'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Malgun Gothic'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelEmpresas."N_FANTASIA"]')
          ParentFont = False
        end
        object frxDBRelEmpresasNUMERO: TfrxMemoView
          IndexTag = 9
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'NUMERO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelEmpresas."NUMERO"]')
          ParentFont = False
        end
        object frxDBRelEmpresasRAZAO_SOCIAL: TfrxMemoView
          IndexTag = 11
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'RAZAO_SOCIAL'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Malgun Gothic'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelEmpresas."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object frxDBRelEmpresasID_EMPRESA: TfrxMemoView
          IndexTag = 12
          AllowVectorExport = True
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID_EMPRESA'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Malgun Gothic'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelEmpresas."ID_EMPRESA"]')
          ParentFont = False
        end
        object frxDBRelEmpresasCADASTRO: TfrxMemoView
          IndexTag = 2
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'CADASTRO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = '@Malgun Gothic'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBRelEmpresas."CADASTRO"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 143.622135510000000000
          Top = 68.031530280000000000
          Width = 113.385900730000000000
          Height = 79.370154560000000000
          DataField = 'LOGO'
          DataSet = DS_Pesq_Relatorio
          DataSetName = 'frxDBRelEmpresas'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590100000000000
          Top = 98.488248770000000000
          Width = 124.724489780000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Logo da empresa')
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
        object Memo2: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 2.338589670000000000
          Top = 3.779535296547852000
          Width = 94.488253590000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo3: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779535296547852000
          Width = 94.488188980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo4: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 3.779535296547852000
          Width = 94.488188980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo5: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 3.779535296547852000
          Width = 94.488188980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo6: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779535296547852000
          Width = 94.488188980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Raz'#227'o Social')
          ParentFont = False
          VAlign = vaBottom
        end
        object Memo8: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 3.779535296547852000
          Width = 113.385838980000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data de cadastro')
          ParentFont = False
          VAlign = vaBottom
        end
      end
    end
  end
  inherited DS_Pesq_Relatorio: TfrxDBDataset
    UserName = 'frxDBRelEmpresas'
  end
end
