unit U_PesqCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, frCoreClasses, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmPesqComrpa = class(TfrmPesquisaPadrao)
    fdqPesquisaPadraoID_COMPRA: TIntegerField;
    fdqPesquisaPadraoID_FORNECEDOR: TIntegerField;
    fdqPesquisaPadraoID_FORMA_PGTO: TIntegerField;
    fdqPesquisaPadraoUSUARIO: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    fdqPesquisaPadraoVALOR: TFMTBCDField;
    procedure bbtnPesquisaClick(Sender: TObject);
    procedure bbtnTransferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesqComrpa: TfrmPesqComrpa;

implementation

{$R *.dfm}

procedure TfrmPesqComrpa.bbtnPesquisaClick(Sender: TObject);
begin

case cmbChavePesquisa.ItemIndex of

0:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT A.ID_COMPRA, A.ID_FORNECEDOR,B.NOME,A.ID_FORMA_PGTO,A.USUARIO,A.VALOR,A.CADASTRO FROM COMPRA A   '
+ 'JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR    '
+ 'JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO');
fdqPesquisaPadrao.SQL.Add('WHERE A.ID_COMPRA =:IdCompra');
fdqPesquisaPadrao.ParamByName('IdCompra').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();


end;

1:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT A.ID_COMPRA, A.ID_FORNECEDOR,B.NOME,A.ID_FORMA_PGTO,A.USUARIO,A.VALOR,A.CADASTRO FROM COMPRA A   '
+ 'JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR    '
+ 'JOIN FORMA_PGTO C ON C.ID_FORMA_PGTO = A.ID_FORMA_PGTO');
fdqPesquisaPadrao.SQL.Add('WHERE A.USUARIO LIKE :USUARIO');
fdqPesquisaPadrao.ParamByName('USUARIO').AsString := edtNome.Text + '%';
fdqPesquisaPadrao.Open();

end;


end;

if fdqPesquisaPadrao.IsEmpty then

begin

  MessageDlg('Registro não encontrado!',TMsgDlgType.mtInformation,[mbOk],0);

end

else

abort;
end;

procedure TfrmPesqComrpa.bbtnTransferirClick(Sender: TObject);
begin
  inherited;
  try
    if fdqPesquisaPadrao.RecordCount > 0 then
    begin
      codigo := fdqPesquisaPadraoID_COMPRA.AsInteger;
    end;

  finally

  end;
end;

end.
