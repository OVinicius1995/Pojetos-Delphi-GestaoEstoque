program Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {frmPrincipal},
  U_DM in '..\Forms\U_DM.pas' {dmConexao: TDataModule},
  U_padrao in '..\Forms\U_padrao.pas' {frmPadrao},
  U_Usuario in '..\Forms\U_Usuario.pas' {frmUsuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {frmCadastraEmpresa},
  U_Cliente in '..\Forms\U_Cliente.pas' {frmClientes},
  U_Fornecedores in '..\Forms\U_Fornecedores.pas' {frmFornecedores},
  U_Produtos in '..\Forms\U_Produtos.pas' {frmProdutos},
  U_FormaPgto in '..\Forms\U_FormaPgto.pas' {frmFormapgto},
  U_PesquisaPadrao in '..\Forms\U_PesquisaPadrao.pas' {frmPesquisa},
  U_PesqUsuario in '..\Forms\U_PesqUsuario.pas' {frmPesqUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.CreateForm(TfrmPesqUsuario, frmPesqUsuario);
  Application.Run;
end.
