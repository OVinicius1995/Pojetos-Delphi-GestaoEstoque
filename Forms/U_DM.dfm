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
end
