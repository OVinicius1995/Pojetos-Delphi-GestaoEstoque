inherited frmClientes: TfrmClientes
  Caption = 'Cadastra Clientes'
  ClientHeight = 410
  ClientWidth = 840
  ExplicitWidth = 852
  ExplicitHeight = 448
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 40
    Top = 72
    Width = 60
    Height = 15
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 40
    Top = 120
    Width = 35
    Height = 15
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 402
    Top = 70
    Width = 59
    Height = 19
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 402
    Top = 118
    Width = 41
    Height = 19
    Caption = 'BAIRRO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 402
    Top = 166
    Width = 41
    Height = 19
    Caption = 'CIDADE'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 695
    Top = 70
    Width = 14
    Height = 15
    Caption = 'UF'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 402
    Top = 216
    Width = 21
    Height = 15
    Caption = 'CEP'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 252
    Top = 120
    Width = 59
    Height = 15
    Caption = 'TELTEFONE'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 40
    Top = 166
    Width = 21
    Height = 15
    Caption = 'CPF'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 228
    Top = 72
    Width = 60
    Height = 15
    Caption = 'CADASTRO'
    FocusControl = dbCadastro
  end
  object Label11: TLabel [10]
    Left = 631
    Top = 70
    Width = 50
    Height = 15
    Caption = 'NUMERO'
    FocusControl = DBEdit11
  end
  inherited pnlCabecalho: TPanel
    Width = 840
    ExplicitWidth = 743
  end
  inherited pnlFooter: TPanel
    Top = 352
    Width = 840
    TabOrder = 12
    ExplicitLeft = -248
    ExplicitTop = 521
    ExplicitWidth = 1110
  end
  inherited btnNovo: TBitBtn
    TabOrder = 13
  end
  inherited btnAtualizar: TBitBtn
    TabOrder = 14
  end
  inherited btnDeletar: TBitBtn
    TabOrder = 15
  end
  inherited btnEditar: TBitBtn
    TabOrder = 16
  end
  inherited btnGravar: TBitBtn
    TabOrder = 17
  end
  inherited btnCancelar: TBitBtn
    TabOrder = 18
  end
  inherited btnPesquisar: TBitBtn
    TabOrder = 19
  end
  inherited dbnNavegacaoDadosBD: TDBNavigator
    Left = 204
    Top = 368
    Hints.Strings = ()
    TabOrder = 20
    ExplicitLeft = 204
    ExplicitTop = 368
  end
  object DBEdit1: TDBEdit [21]
    Left = 40
    Top = 88
    Width = 154
    Height = 27
    TabStop = False
    DataField = 'ID_CLIENTE'
    DataSource = dtsPadrao
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [22]
    Left = 40
    Top = 136
    Width = 201
    Height = 27
    DataField = 'NOME'
    DataSource = dtsPadrao
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [23]
    Left = 402
    Top = 86
    Width = 223
    Height = 27
    DataField = 'ENDERECO'
    DataSource = dtsPadrao
    TabOrder = 6
  end
  object DBEdit4: TDBEdit [24]
    Left = 402
    Top = 134
    Width = 400
    Height = 27
    DataField = 'BAIRRO'
    DataSource = dtsPadrao
    TabOrder = 9
  end
  object DBEdit5: TDBEdit [25]
    Left = 402
    Top = 182
    Width = 400
    Height = 27
    DataField = 'CIDADE'
    DataSource = dtsPadrao
    TabOrder = 10
  end
  object DBEdit6: TDBEdit [26]
    Left = 695
    Top = 86
    Width = 58
    Height = 27
    DataField = 'UF'
    DataSource = dtsPadrao
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [27]
    Left = 402
    Top = 232
    Width = 400
    Height = 27
    DataField = 'CEP'
    DataSource = dtsPadrao
    TabOrder = 11
  end
  object DBEdit8: TDBEdit [28]
    Left = 247
    Top = 136
    Width = 135
    Height = 27
    DataField = 'TELTEFONE'
    DataSource = dtsPadrao
    TabOrder = 4
  end
  object DBEdit9: TDBEdit [29]
    Left = 40
    Top = 182
    Width = 304
    Height = 27
    DataField = 'CPF'
    DataSource = dtsPadrao
    TabOrder = 5
  end
  object dbCadastro: TDBEdit [30]
    Left = 228
    Top = 88
    Width = 154
    Height = 27
    DataField = 'CADASTRO'
    DataSource = dtsPadrao
    Enabled = False
    TabOrder = 2
  end
  object DBEdit11: TDBEdit [31]
    Left = 631
    Top = 86
    Width = 58
    Height = 27
    DataField = 'NUMERO'
    DataSource = dtsPadrao
    TabOrder = 7
  end
  inherited fdqQueryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'select'
      '   ID_CLIENTE,'
      '   NOME,'
      '   ENDERECO,'
      '   NUMERO,'
      '   BAIRRO,'
      '   CIDADE,'
      '   UF,'
      '   CEP,'
      '   TELTEFONE,'
      '   CPF,'
      '   CADASTRO'
      ' from cliente'
      ' order by ID_CLIENTE'
      ' ')
    Left = 64
    Top = 240
    object fdqQueryPadraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object fdqQueryPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object fdqQueryPadraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object fdqQueryPadraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00000\-999;0;_'
    end
    object fdqQueryPadraoTELTEFONE: TStringField
      FieldName = 'TELTEFONE'
      Origin = 'TELTEFONE'
      EditMask = '!\(999\)0000-0000;0;_'
    end
    object fdqQueryPadraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '000\-000\-000\-00;0;_'
    end
    object fdqQueryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object fdqQueryPadraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
  end
  inherited dtsPadrao: TDataSource
    Left = 264
    Top = 296
  end
  object tmrdata: TTimer
    OnTimer = tmrdataTimer
    Left = 200
    Top = 232
  end
end
