object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object fdcConexao: TFDConnection
    Left = 48
    Top = 32
  end
  object fdtTransacao: TFDTransaction
    Connection = fdcConexao
    Left = 136
    Top = 40
  end
end
