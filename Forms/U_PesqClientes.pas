unit U_PesqClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frCoreClasses, frxExportBaseDialog, frxExportPDF;

type
  TfrmPesquisaClientes = class(TfrmPesquisaPadrao)
    fdqPesquisaPadraoID_CLIENTE: TIntegerField;
    fdqPesquisaPadraoNOME: TStringField;
    fdqPesquisaPadraoENDERECO: TStringField;
    fdqPesquisaPadraoNUMERO: TIntegerField;
    fdqPesquisaPadraoBAIRRO: TStringField;
    fdqPesquisaPadraoCIDADE: TStringField;
    fdqPesquisaPadraoUF: TStringField;
    fdqPesquisaPadraoCEP: TStringField;
    fdqPesquisaPadraoTELTEFONE: TStringField;
    fdqPesquisaPadraoCPF: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    procedure bbtnPesquisaClick(Sender: TObject);
    procedure bbtnTransferirClick(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;

implementation

{$R *.dfm}

procedure TfrmPesquisaClientes.bbtnImprimirClick(Sender: TObject);
var caminho :string;
begin

 try

  caminho := ExtractFilePath(Application.ExeName);

  if frmPesquisaClientes.Rel_Pes.LoadFromFile(caminho + 'RelPesPadrao.fr3') then
  begin
  Rel_Pes.Clear;
  Rel_Pes.LoadFromFile(ExtractFilePath(Application.ExeName) + 'RelPesqPadraoClientes.fr3');
  Rel_Pes.PrepareReport(true);
  Rel_Pes.ShowPreparedReport;
  end

  else

  MessageDlg('Relat�rio n�o encontrado', TMsgDlgType.mtError,[mbOk],0);

  finally


  end;


end;

procedure TfrmPesquisaClientes.bbtnPesquisaClick(Sender: TObject);
begin

  case cmbChavePesquisa.ItemIndex of

0:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from CLIENTE');
fdqPesquisaPadrao.SQL.Add('WHERE ID_CLIENTE =:IdCliente');
fdqPesquisaPadrao.ParamByName('IdCliente').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();

end;

1:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from CLIENTE');
fdqPesquisaPadrao.SQL.Add('WHERE NOME LIKE :NOME');
fdqPesquisaPadrao.ParamByName('NOME').AsString := edtNome.Text + '%';
fdqPesquisaPadrao.Open();

end;

2:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from CLIENTE');
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


procedure TfrmPesquisaClientes.bbtnTransferirClick(Sender: TObject);
begin
  inherited;
  try
    if fdqPesquisaPadrao.RecordCount > 0 then
    begin

        codigo := fdqPesquisaPadraoID_CLIENTE.AsInteger;

    end

    else
    begin
      abort;
    end;

  finally

  end;
end;

end.
