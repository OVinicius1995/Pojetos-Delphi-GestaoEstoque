unit U_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmProdutos = class(TfrmPadrao)
    fdqQueryPadraoID_PRODUTO: TIntegerField;
    fdqQueryPadraoDESCRICAO: TStringField;
    fdqQueryPadraoVL_CUSTO: TFMTBCDField;
    fdqQueryPadraoVL_VENDA: TFMTBCDField;
    fdqQueryPadraoESTOQUE: TFMTBCDField;
    fdqQueryPadraoUNIDADE: TStringField;
    fdqQueryPadraoCADASTRO: TDateField;
    fdqQueryPadraoID_FORNECEDOR: TIntegerField;
    fdqQueryPadraoNOME: TStringField;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label3: TLabel;
    dbeVlCusto: TDBEdit;
    Label4: TLabel;
    dbeVlvenda: TDBEdit;
    Label5: TLabel;
    dbeEstoque: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    dbeCadastro: TDBEdit;
    Label9: TLabel;
    dbeNome: TDBEdit;
    dbcUnidade: TDBComboBox;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure Abre_Tela_PesquisaProdutos();
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

uses U_PesqProdutos;

procedure TfrmProdutos.Abre_Tela_PesquisaProdutos;
begin
    try
      frmPesquisaProdutos := TfrmPesquisaProdutos.Create(Self);
      frmPesquisaProdutos.ShowModal;
    finally
      frmPesquisaProdutos.Free;
    end;
end;

procedure TfrmProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text := DateToStr(Now);
  //dbeIdProduto.SetFocus;
end;

procedure TfrmProdutos.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  try
      Abre_Tela_PesquisaProdutos;
      if frmPesquisaProdutos.codigo > 0 then
      begin
        fdqQueryPadrao.Open;
        fdqQueryPadrao.Locate('ID_PRODUTO',frmPesquisaProdutos.codigo)
      end;
  finally

  end;
end;

end.
