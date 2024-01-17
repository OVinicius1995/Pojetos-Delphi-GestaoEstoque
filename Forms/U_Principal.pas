unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    spbUsuario: TSpeedButton;
    spbEmpresa: TSpeedButton;
    spbClientes: TSpeedButton;
    spbFornecedores: TSpeedButton;
    spbProdutos: TSpeedButton;
    spbFormaPgto: TSpeedButton;
    spbCompras: TSpeedButton;
    spdVendas: TSpeedButton;
    spbTrocaUsuarios: TSpeedButton;
    spbFechar: TSpeedButton;
    stbDataHora: TStatusBar;
    tmrDataHora: TTimer;
    mmuMenus: TMainMenu;
    mmuCadastro: TMenuItem;
    mmuUsuario: TMenuItem;
    mmuSp: TMenuItem;
    mmuEmpresa: TMenuItem;
    N1: TMenuItem;
    mmuClientes: TMenuItem;
    N2: TMenuItem;
    mmuFornecedores: TMenuItem;
    N3: TMenuItem;
    mmuProdutos: TMenuItem;
    N4: TMenuItem;
    mmuFormasPgto: TMenuItem;
    N5: TMenuItem;
    mmuSair: TMenuItem;
    mmuMovimentos: TMenuItem;
    mmuCompras: TMenuItem;
    N6: TMenuItem;
    mmuVendas: TMenuItem;
    mmuRelatorios: TMenuItem;
    mmuListaUsuarios: TMenuItem;
    N7: TMenuItem;
    mmuListaFornecedores: TMenuItem;
    N8: TMenuItem;
    Listadeclientes1: TMenuItem;
    N9: TMenuItem;
    mmuListaProdutos: TMenuItem;
    N10: TMenuItem;
    mmuListaCompras: TMenuItem;
    N11: TMenuItem;
    mmuListaVendas: TMenuItem;
    mmuAbout: TMenuItem;
    mmuAboutInfo: TMenuItem;
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure spbFecharClick(Sender: TObject);
    procedure mmuSairClick(Sender: TObject);
    procedure abreTelaUsuario();
    procedure spbUsuarioClick(Sender: TObject);
    procedure spbEmpresaClick(Sender: TObject);
    procedure spbClientesClick(Sender: TObject);
    procedure Abre_Tela_Cliente;
    procedure Abre_Tela_Fornecedores;
    procedure Abre_Tela_Produtos;
    procedure Abre_Tela_FormaPGTO;
    procedure mmuClientesClick(Sender: TObject);
    procedure mmuEmpresaClick(Sender: TObject);
    procedure mmuUsuarioClick(Sender: TObject);
    procedure mmuFornecedoresClick(Sender: TObject);
    procedure spbFornecedoresClick(Sender: TObject);
    procedure mmuProdutosClick(Sender: TObject);
    procedure spbProdutosClick(Sender: TObject);
    procedure spbFormaPgtoClick(Sender: TObject);
    procedure mmuFormasPgtoClick(Sender: TObject);
    procedure Abre_Tela_Compras();
    procedure spbComprasClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses StrUtils, U_Usuario, U_Empresa, U_Cliente, U_Fornecedores, U_Produtos,
  U_FormaPgto, U_Compras, U_DM;


procedure TfrmPrincipal.tmrDataHoraTimer(Sender: TObject);
begin

      stbDataHora.Panels[1].Text := 'Seja Bem Vindo ao Sistema' + '  ' + dmConexao.usuario;
      stbDataHora.Panels[2].Text := '' + FormatDateTime('hh:nn', now);
      stbDataHora.Panels[2].Text := TimeToStr(time);
      stbDataHora.Panels[3].Text := 'Tipo de usu�rio' + '  ' + dmConexao.tipo_usuario;


        case AnsiIndexStr(FormatDateTime('dddd',now), ['segunda-feira','ter�a-feira','quarta-feira','quinta-feira','sexta-feira','s�bado','domingo']) of

          0 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('s','S');
          1 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('t','T');
          2 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('q','Q');
          3 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('q','Q');
          4 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('s','S');
          5 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('s','S');
          6 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('d','D');

        end;

end;


procedure TfrmPrincipal.spbClientesClick(Sender: TObject);
begin
    Abre_Tela_Cliente;
end;

procedure TfrmPrincipal.spbComprasClick(Sender: TObject);
begin
  Abre_Tela_Compras;
end;

procedure TfrmPrincipal.spbEmpresaClick(Sender: TObject);
begin
      frmCadastraEmpresa := TfrmCadastraEmpresa.Create(self);
      frmCadastraEmpresa.ShowModal();
end;

procedure TfrmPrincipal.spbFecharClick(Sender: TObject);
begin

  if Application.MessageBox('Deseja encerrar o sistema?','Saindo do sistema.',MB_YESNOCANCEL + MB_ICONQUESTION) = mrYes then

     begin

     Application.Terminate;

     end

     else

     begin

     end;

end;


procedure TfrmPrincipal.spbFormaPgtoClick(Sender: TObject);
begin
    Abre_Tela_FormaPGTO;
end;

procedure TfrmPrincipal.spbFornecedoresClick(Sender: TObject);
begin
  Abre_Tela_Fornecedores;
end;

procedure TfrmPrincipal.spbProdutosClick(Sender: TObject);
begin
  Abre_Tela_Produtos
end;

procedure TfrmPrincipal.abreTelaUsuario;
begin

    try

    frmUsuario := TfrmUsuario.Create(self);
    frmUsuario.ShowModal;

    finally

    frmUsuario.Free;
    frmUsuario := nil;

    end;
end;

procedure TfrmPrincipal.spbUsuarioClick(Sender: TObject);
begin
     abreTelaUsuario();
end;


procedure TfrmPrincipal.Abre_Tela_Cliente;
begin
    try
      frmClientes := TfrmClientes.Create(self);
      frmClientes.ShowModal;
    finally

    frmClientes.Free;
    frmClientes := nil;

    end;
end;


procedure TfrmPrincipal.Abre_Tela_Compras;
begin
    try
      frmCadastroDeCompras := TfrmCadastroDeCompras.Create(Self);
      frmCadastroDeCompras.ShowModal;
    finally

    frmCadastroDeCompras.Free;
    frmCadastroDeCompras := nil;

    end;
end;

procedure TfrmPrincipal.Abre_Tela_FormaPGTO;
begin
     try
       frmFormaPgto := TfrmFormaPgto.Create(self);
       frmFormaPgto.ShowModal;
     finally

     frmFormaPgto.Free;
     frmFormaPgto := nil;

     end;
end;

procedure TfrmPrincipal.Abre_Tela_Fornecedores;
begin
     try
       frmFornecedores := TfrmFornecedores.Create(self);
       frmFornecedores.ShowModal;
     finally

     frmFornecedores.Free;
     frmFornecedores := nil;

     end;
end;

procedure TfrmPrincipal.Abre_Tela_Produtos;
begin
     try
       frmProdutos := TfrmProdutos.Create(self);
       frmProdutos.ShowModal;
     finally

     frmProdutos.Free;
     frmProdutos := nil;

     end;
end;

procedure TfrmPrincipal.mmuClientesClick(Sender: TObject);
begin
Abre_Tela_Cliente;
end;

procedure TfrmPrincipal.mmuEmpresaClick(Sender: TObject);
begin
Abre_Tela_Cliente;
end;

procedure TfrmPrincipal.mmuFormasPgtoClick(Sender: TObject);
begin
Abre_Tela_FormaPGTO;
end;

procedure TfrmPrincipal.mmuFornecedoresClick(Sender: TObject);
begin
       Abre_Tela_Fornecedores;
end;

procedure TfrmPrincipal.mmuProdutosClick(Sender: TObject);
begin
Abre_Tela_Produtos;
end;

procedure TfrmPrincipal.mmuSairClick(Sender: TObject);
begin
    close;
end;

procedure TfrmPrincipal.mmuUsuarioClick(Sender: TObject);
begin
        abreTelaUsuario;
end;

end.
