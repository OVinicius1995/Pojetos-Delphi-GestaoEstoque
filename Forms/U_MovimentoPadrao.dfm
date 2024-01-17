inherited frmPadraoMovimento: TfrmPadraoMovimento
  Caption = 'Formul'#225'rio Padrao Movimento'
  ClientHeight = 512
  ClientWidth = 751
  ExplicitHeight = 550
  TextHeight = 15
  inherited pnlCabecalho: TPanel
    Width = 751
  end
  inherited pnlFooter: TPanel
    Top = 479
    Width = 751
    Height = 33
    ExplicitTop = 478
    ExplicitHeight = 33
    object bibItem: TBitBtn
      Left = 4
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Item'
      TabOrder = 0
    end
    object bibOk: TBitBtn
      Left = 85
      Top = 4
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
    end
    object bibExcluir: TBitBtn
      Left = 166
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
    end
    object bibImprimir: TBitBtn
      Left = 247
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 3
    end
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Left = 451
    Top = 479
    Width = 300
    Hints.Strings = ()
    ExplicitLeft = 451
    ExplicitTop = 479
    ExplicitWidth = 300
  end
  object Panel1: TPanel [10]
    Left = 0
    Top = 53
    Width = 751
    Height = 110
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 10
    ExplicitWidth = 747
  end
  object Panel2: TPanel [11]
    Left = 0
    Top = 409
    Width = 751
    Height = 70
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 11
    ExplicitTop = 408
    ExplicitWidth = 747
  end
  object DBGrid1: TDBGrid [12]
    Left = 0
    Top = 163
    Width = 751
    Height = 246
    Align = alClient
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  inherited fdqQueryPadrao: TFDQuery
    Left = 664
    Top = 296
  end
  inherited dtsPadrao: TDataSource
    Left = 688
    Top = 240
  end
  object q_PadraoItem: TFDQuery
    MasterSource = dtsPadrao
    Left = 344
    Top = 240
  end
  object dsPadraoItem: TDataSource
    DataSet = q_PadraoItem
    Left = 352
    Top = 312
  end
end
