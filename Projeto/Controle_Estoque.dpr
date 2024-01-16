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
  U_Compras in '..\Forms\U_Compras.pas' {frmCadastroDeCompras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPesquisaPadrao, frmPesquisaPadrao);
  Application.CreateForm(TfrmPesqUsuario, frmPesqUsuario);
  Application.CreateForm(TfrmPesquisaClientes, frmPesquisaClientes);
  Application.CreateForm(TfrmPesquisaEmpresa, frmPesquisaEmpresa);
  Application.CreateForm(TfrmPesquisaFornecedores, frmPesquisaFornecedores);
  Application.CreateForm(TfrmPesquisaProdutos, frmPesquisaProdutos);
  Application.CreateForm(TfrmPadraoMovimento, frmPadraoMovimento);
  Application.CreateForm(TfrmCadastroDeCompras, frmCadastroDeCompras);
  Application.Run;
end.
