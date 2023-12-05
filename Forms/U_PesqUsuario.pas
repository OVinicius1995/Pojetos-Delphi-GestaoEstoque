unit U_PesqUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesqUsuario = class(TfrmPesquisa)
    fdqPesquisaPadraoID_USUARIO: TIntegerField;
    fdqPesquisaPadraoNOME: TStringField;
    fdqPesquisaPadraoTIPO: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    procedure bbtnPesquisaClick(Sender: TObject);
    procedure cmbChavePesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqUsuario: TfrmPesqUsuario;

implementation

{$R *.dfm}

procedure TfrmPesqUsuario.bbtnPesquisaClick(Sender: TObject);
begin
{
fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.SQL.Add('WHERE ID_USUARIO =:IdUsuario');
fdqPesquisaPadrao.ParamByName('IdUsuario').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();
}
case cmbChavePesquisa.ItemIndex of

0:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.SQL.Add('WHERE ID_USUARIO =:IdUsuario');
fdqPesquisaPadrao.ParamByName('IdUsuario').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();

end;

1:begin
MessageDlg('OPAAAAAAAAAAAAAAAAAAAAA PASSEI AQUI!',TMsgDlgType.mtConfirmation,[mbOk],0);
fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.SQL.Add('WHERE NOME LIKE :NOME');
fdqPesquisaPadrao.ParamByName('NOME').AsString := edtNome.Text + '%';
fdqPesquisaPadrao.Open();

end;


end;

if fdqPesquisaPadrao.IsEmpty then

begin

  MessageDlg('Registro n�o encontrado!',TMsgDlgType.mtInformation,[mbOk],0);

end

else

abort;

end;


procedure TfrmPesqUsuario.cmbChavePesquisaChange(Sender: TObject);
begin

case cmbChavePesquisa.ItemIndex of
    0:begin
      lblNome.Caption := 'Pesquisar pelo C�digo do usu�rio';
      edtNome.Enabled := true;
      edtNome.SetFocus;
      mkeDataInicio.Enabled := false;
      mkeDataFim.Enabled := false;
    end;

    1:begin
      lblNome.Caption := 'Pesquisar pelo Nome do usu�rio';
      edtNome.Enabled := true;
      edtNome.SetFocus;
      mkeDataInicio.Enabled := false;
      mkeDataFim.Enabled := false;
    end;

    2:begin
      lblNome.Caption := 'Pesquisar pelo per�odo de cadastro';
      edtNome.Enabled := false;
      mkeDataInicio.SetFocus;
      mkeDataInicio.Enabled := true;
      mkeDataFim.Enabled := true;
    end;

    3:begin
      lblNome.Caption := 'Pesquisar por data de cadastro';
      edtNome.Enabled := false;
      mkeDataInicio.SetFocus;
      mkeDataInicio.Enabled := true;
      mkeDataFim.Enabled := false;
    end;

end;

end;


procedure TfrmPesqUsuario.FormCreate(Sender: TObject);
begin
  fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.Open();
end;

end.
