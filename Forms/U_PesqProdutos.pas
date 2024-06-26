unit U_PesqProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, frCoreClasses;

type
  TfrmPesquisaProdutos = class(TfrmPesquisaPadrao)
    fdqPesquisaPadraoID_PRODUTO: TIntegerField;
    fdqPesquisaPadraoDESCRICAO: TStringField;
    fdqPesquisaPadraoVL_CUSTO: TFMTBCDField;
    fdqPesquisaPadraoVL_VENDA: TFMTBCDField;
    fdqPesquisaPadraoESTOQUE: TFMTBCDField;
    fdqPesquisaPadraoUNIDADE: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    fdqPesquisaPadraoNOME: TStringField;
    procedure bbtnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbtnTransferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProdutos: TfrmPesquisaProdutos;

implementation

{$R *.dfm}

procedure TfrmPesquisaProdutos.bbtnPesquisaClick(Sender: TObject);
begin
  inherited;
case cmbChavePesquisa.ItemIndex of

0:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT p.ID_PRODUTO,p.DESCRICAO,p.VL_CUSTO,p.VL_VENDA,p.ESTOQUE,p.Unidade,p.Cadastro,f.nome from produto p');
fdqPesquisaPadrao.SQL.Add('Join fornecedor f on p.ID_FORNECEDOR=f.ID_FORNECEDOR');
fdqPesquisaPadrao.SQL.Add('WHERE p.ID_PRODUTO =:IdID_PRODUTO');
fdqPesquisaPadrao.ParamByName('IdID_PRODUTO').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();


end;

1:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT p.ID_PRODUTO,p.DESCRICAO,p.VL_CUSTO,p.VL_VENDA,p.ESTOQUE,p.Unidade,p.Cadastro,f.nome from produto p');
fdqPesquisaPadrao.SQL.Add('Join fornecedor f on p.ID_FORNECEDOR=f.ID_FORNECEDOR');
fdqPesquisaPadrao.SQL.Add('WHERE p.DESCRICAO LIKE :DESCRICAO');
fdqPesquisaPadrao.ParamByName('DESCRICAO').AsString := edtNome.Text + '%';
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

procedure TfrmPesquisaProdutos.bbtnTransferirClick(Sender: TObject);
begin
  inherited;
  try
    if fdqPesquisaPadrao.RecordCount > 0 then
    begin
      codigo := fdqPesquisaPadraoID_PRODUTO.AsInteger;
    end;

  finally

  end;
end;

procedure TfrmPesquisaProdutos.FormCreate(Sender: TObject);
begin
 // inherited;

 fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT p.ID_PRODUTO,p.DESCRICAO,p.VL_CUSTO,p.VL_VENDA,p.ESTOQUE,p.Unidade,p.Cadastro,f.nome from produto p');
fdqPesquisaPadrao.SQL.Add('Join fornecedor f on p.ID_FORNECEDOR=f.ID_FORNECEDOR');
fdqPesquisaPadrao.Open();

end;

end.
