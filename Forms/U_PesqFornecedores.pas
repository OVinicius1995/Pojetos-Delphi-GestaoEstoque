unit U_PesqFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesquisaFornecedores = class(TfrmPesquisaPadrao)
    fdqPesquisaPadraoID_FORNECEDOR: TIntegerField;
    fdqPesquisaPadraoNOME: TStringField;
    fdqPesquisaPadraoENDERECO: TStringField;
    fdqPesquisaPadraoNUMERO: TIntegerField;
    fdqPesquisaPadraoBAIRRO: TStringField;
    fdqPesquisaPadraoCIDADE: TStringField;
    fdqPesquisaPadraoUF: TStringField;
    fdqPesquisaPadraoCEP: TStringField;
    fdqPesquisaPadraoTELEFONE: TStringField;
    fdqPesquisaPadraoCNPJ: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    procedure bbtnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaFornecedores: TfrmPesquisaFornecedores;

implementation

{$R *.dfm}

procedure TfrmPesquisaFornecedores.bbtnPesquisaClick(Sender: TObject);
begin
  inherited;
begin

  case cmbChavePesquisa.ItemIndex of

0:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from FORNECEDOR');
fdqPesquisaPadrao.SQL.Add('WHERE ID_FORNECEDOR =:IdFornecedor');
fdqPesquisaPadrao.ParamByName('IdFornecedor').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();

end;

1:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from FORNECEDOR');
fdqPesquisaPadrao.SQL.Add('WHERE NOME LIKE :NOME');
fdqPesquisaPadrao.ParamByName('NOME').AsString := edtNome.Text + '%';
fdqPesquisaPadrao.Open();

end;

2:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from FORNECEDOR');
fdqPesquisaPadrao.SQL.Add('WHERE CADASTRO  =:CADFornec');
fdqPesquisaPadrao.ParamByName('CADFornec').AsDate := strTodate(mkeDataInicio.Text);
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
fdqPesquisaPadrao.SQL.Add('SELECT * from FORNECEDOR');
fdqPesquisaPadrao.SQL.Add('WHERE CADASTRO  BETWEEN :CADFORNECINICIO AND :CADFORNECIM');
fdqPesquisaPadrao.ParamByName('CADFORNECINICIO').AsDate := strTodate(mkeDataInicio.Text);
fdqPesquisaPadrao.ParamByName('CADFORNECIM').AsDate := strTodate(mkeDataFim.Text);
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

end;

procedure TfrmPesquisaFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
begin
fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from FORNECEDOR');
fdqPesquisaPadrao.Open();
end;
end;

end.
