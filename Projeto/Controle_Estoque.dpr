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
  U_PesquisaPadrao in '..\Forms\U_PesquisaPadrao.pas' {frmPesquisaPadrao},
  U_PesqUsuario in '..\Forms\U_PesqUsuario.pas' {frmPesqUsuario},
  U_PesqClientes in '..\Forms\U_PesqClientes.pas' {frmPesquisaClientes},
  U_PesqEmpresa in '..\Forms\U_PesqEmpresa.pas' {frmPesquisaEmpresa},
  U_PesqFornecedores in '..\Forms\U_PesqFornecedores.pas' {frmPesquisaFornecedores},
  U_PesqProdutos in '..\Forms\U_PesqProdutos.pas' {frmPesquisaProdutos},
  U_MovimentoPadrao in '..\Forms\U_MovimentoPadrao.pas' {frmPadraoMovimento},
  U_Compras in '..\Forms\U_Compras.pas' {frmCadastroDeCompras},
  U_PesqCompra in '..\Forms\U_PesqCompra.pas' {frmPesqComrpa},
  U_Login in '..\Forms\U_Login.pas' {frmLogin},
  u_Tipo in '..\Forms\u_Tipo.pas' {frmSelecionaTipo},
  U_Vendas in '..\Forms\U_Vendas.pas' {frmVendas},
  U_PesqVendas in '..\Forms\U_PesqVendas.pas' {frmPesquisaVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmSelecionaTipo, frmSelecionaTipo);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.CreateForm(TfrmPesquisaVenda, frmPesquisaVenda);
  Application.Run;
end.
