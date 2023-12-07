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
  TfrmPesqUsuario = class(TfrmPesquisaPadrao)
    fdqPesquisaPadraoID_USUARIO: TIntegerField;
    fdqPesquisaPadraoNOME: TStringField;
    fdqPesquisaPadraoTIPO: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    procedure bbtnPesquisaClick(Sender: TObject);
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

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.SQL.Add('WHERE NOME LIKE :NOME');
fdqPesquisaPadrao.ParamByName('NOME').AsString := edtNome.Text + '%';
fdqPesquisaPadrao.Open();

end;

2:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.SQL.Add('WHERE CADASTRO  =:CADCLI');
fdqPesquisaPadrao.ParamByName('CADCLI').AsDate := strTodate(mkeDataInicio.Text);
fdqPesquisaPadrao.Open();

end;

3:begin

if strTodate(mkeDataInicio.Text) > strTodate(mkeDataFim.Text) then
begin
  MessageDlg('A data inicial n�o pode ser anterior a final!',TMsgDlgType.mtInformation,[mbOk],0);
  abort;
end

else

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from USUARIO');
fdqPesquisaPadrao.SQL.Add('WHERE CADASTRO  BETWEEN :CADCLIINICIO AND :CADCLIFIM');
fdqPesquisaPadrao.ParamByName('CADCLIINICIO').AsDate := strTodate(mkeDataInicio.Text);
fdqPesquisaPadrao.ParamByName('CADCLIFIM').AsDate := strTodate(mkeDataFim.Text);
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