object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object fdcConexao: TFDConnection
    Params.Strings = (
      'Database=C:\Estoque\XE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1250'
      'DriverID=FB'
      'DropDatabase=No'
      'Pooled=False')
    Connected = True
    LoginPrompt = False
    Left = 45
    Top = 32
  end
  object fdtTransacao: TFDTransaction
    Connection = fdcConexao
    Left = 123
    Top = 32
  end
  object fdpLinkConexao: TFDPhysFBDriverLink
    Left = 212
    Top = 32
  end
  object fdqLogin: TFDQuery
    Active = True
    Connection = fdcConexao
    SQL.Strings = (
      'SELECT '
      '      ID_USUARIO,'
      '      NOME,'
      '      SENHA,'
      '      TIPO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO      '
      ' ')
    Left = 72
    Top = 184
    object fdqLoginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqLoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object fdqLoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object fdqLoginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
  end
  object dsLogin: TDataSource
    DataSet = fdqLogin
    Left = 144
    Top = 184
  end
end
