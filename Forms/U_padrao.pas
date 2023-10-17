unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls;

type
  TfrmPadrao = class(TForm)
    pnlCabecalho: TPanel;
    pnlFooter: TPanel;
    btnNovo: TBitBtn;
    btnAtualizar: TBitBtn;
    btnDeletar: TBitBtn;
    btnEditar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnPesquisar: TBitBtn;
    dbnNavegacaoDadosBD: TDBNavigator;
    fdqQueryPadrao: TFDQuery;
    dtsPadrao: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure trataBotoes();

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadrao: TfrmPadrao;

implementation

{$R *.dfm}

uses U_DM;


procedure TfrmPadrao.trataBotoes;
begin
//Habilita e desabilita botões
     btnNovo.Enabled      := not btnNovo.Enabled;
     btnDeletar.Enabled   := not btnDeletar.Enabled;
     btnEditar.Enabled    := not btnEditar.Enabled;
     btnGravar.Enabled    := not btnGravar.Enabled;
     btnAtualizar.Enabled := not btnAtualizar.Enabled

end;

procedure TfrmPadrao.btnNovoClick(Sender: TObject);
begin
//Cria um novo registro
fdqQueryPadrao.Open();
    trataBotoes;
    fdqQueryPadrao.Append;
end;


procedure TfrmPadrao.btnDeletarClick(Sender: TObject);
begin
//Deleta registro
    trataBotoes;

    if Application.MessageBox('Deseja excluir o registro?','Exclusão', MB_YESNO + MB_ICONQUESTION) = mrYes then

     begin

     fdqQueryPadrao.Delete;
     Application.MessageBox('Registro excluído com sucesso!','Exclusão',MB_OK + MB_ICONINFORMATION);
     trataBotoes;

     end

     else
     begin
     trataBotoes;
       Abort;
     end;

end;

procedure TfrmPadrao.btnEditarClick(Sender: TObject);
begin
//Edita o registro
    trataBotoes;
     if Application.MessageBox('Deseja editar o registro?','Editando o registro.',MB_YESNOCANCEL + MB_ICONQUESTION) = mrYes then
     begin

       fdqQueryPadrao.Edit;

     end

     else
     begin
     trataBotoes;
       Abort;
     end;

end;


procedure TfrmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
      if key = #13 then
      begin
          key :=#0;
          Perform(WM_NEXTDLGCTL,0,0);
      end;
end;


procedure TfrmPadrao.btnGravarClick(Sender: TObject);
begin
//Grava o registro
    trataBotoes;
      fdqQueryPadrao.Post;
      Application.MessageBox('Registro gravado com sucesso!','Gravado', MB_OK + MB_ICONEXCLAMATION);
end;


procedure TfrmPadrao.btnCancelarClick(Sender: TObject);
begin
//Cancela a ação
    trataBotoes;
     fdqQueryPadrao.Cancel;
     Application.MessageBox('Ação cancelada!','Atenção', + MB_OK + MB_ICONWARNING);
end;

procedure TfrmPadrao.btnAtualizarClick(Sender: TObject);
begin
//Atualiza o registro
    trataBotoes;
       fdqQueryPadrao.Refresh;
      Application.MessageBox('Registro atualizado com sucesso!','Atualizado', + MB_OK + MB_ICONINFORMATION);
end;


end.
