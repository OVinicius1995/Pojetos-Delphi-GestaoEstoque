program Controle_Estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {frmPrincipal},
  U_DM in '..\Forms\U_DM.pas' {dmConexao: TDataModule},
  U_padrao in '..\Forms\U_padrao.pas' {frmPadrao},
  U_Usuario in '..\Forms\U_Usuario.pas' {frmUsuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {frmCadastraEmpresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPadrao, frmPadrao);
  Application.CreateForm(TfrmUsuario, frmUsuario);
  Application.CreateForm(TfrmCadastraEmpresa, frmCadastraEmpresa);
  Application.Run;
end.
