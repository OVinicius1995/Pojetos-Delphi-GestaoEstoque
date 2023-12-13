unit U_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmFornecedores = class(TfrmPadrao)
    fdqQueryPadraoID_FORNECEDOR: TFDAutoIncField;
    fdqQueryPadraoNOME: TStringField;
    fdqQueryPadraoENDERECO: TStringField;
    fdqQueryPadraoNUMERO: TIntegerField;
    fdqQueryPadraoBAIRRO: TStringField;
    fdqQueryPadraoCIDADE: TStringField;
    fdqQueryPadraoUF: TStringField;
    fdqQueryPadraoCEP: TStringField;
    fdqQueryPadraoTELEFONE: TStringField;
    fdqQueryPadraoCNPJ: TStringField;
    fdqQueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeIdfornecedor: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeEndereco: TDBEdit;
    Label4: TLabel;
    dbeNumero: TDBEdit;
    Label5: TLabel;
    dbeBairro: TDBEdit;
    Label6: TLabel;
    dbeCidade: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    dbeCep: TDBEdit;
    Label9: TLabel;
    dbeTelefone: TDBEdit;
    Label10: TLabel;
    dbeCnpj: TDBEdit;
    Label11: TLabel;
    dbeCadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
    procedure Abre_Tela_PesquisaFornecedores();
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

{$R *.dfm}

uses U_PesqFornecedores;

procedure TfrmFornecedores.Abre_Tela_PesquisaFornecedores;
begin
try
   frmPesquisaFornecedores := TfrmPesquisaFornecedores.Create(Self);
   frmPesquisaFornecedores.ShowModal();
finally
      frmPesquisaFornecedores.Free;

end;
end;

procedure TfrmFornecedores.btnNovoClick(Sender: TObject);
begin
  inherited;
  dbeCadastro.Text := DateToStr(Now);
  dbeNome.SetFocus;
end;

procedure TfrmFornecedores.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  try
    Abre_Tela_PesquisaFornecedores;
    if frmPesquisaFornecedores.codigo > 0 then
    begin

      fdqQueryPadrao.Open;
      fdqQueryPadrao.Locate('ID_FORNECEDOR',frmPesquisaFornecedores.codigo)

    end;

  finally

  end;
end;

end.
