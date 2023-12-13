unit U_PesqEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PesquisaPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frCoreClasses;

type
  TfrmPesquisaEmpresa = class(TfrmPesquisaPadrao)
    fdqPesquisaPadraoID_EMPRESA: TIntegerField;
    fdqPesquisaPadraoRAZAO_SOCIAL: TStringField;
    fdqPesquisaPadraoN_FANTASIA: TStringField;
    fdqPesquisaPadraoENDERECO: TStringField;
    fdqPesquisaPadraoNUMERO: TIntegerField;
    fdqPesquisaPadraoBAIRRO: TStringField;
    fdqPesquisaPadraoCIDADE: TStringField;
    fdqPesquisaPadraoUF: TStringField;
    fdqPesquisaPadraoTELEFONE: TStringField;
    fdqPesquisaPadraoCPF_CNPJ: TStringField;
    fdqPesquisaPadraoEMAIL: TStringField;
    fdqPesquisaPadraoCADASTRO: TDateField;
    fdqPesquisaPadraoCEP: TStringField;
    fdqPesquisaPadraoLOGO: TBlobField;
    procedure bbtnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbtnTransferirClick(Sender: TObject);
    procedure bbtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaEmpresa: TfrmPesquisaEmpresa;

implementation

{$R *.dfm}

procedure TfrmPesquisaEmpresa.bbtnImprimirClick(Sender: TObject);
var caminho :string;
begin

 try

  caminho := ExtractFilePath(Application.ExeName);

  if frmPesquisaEmpresa.Rel_Pes.LoadFromFile(caminho + 'RelPesPadrao.fr3') then
  begin
  Rel_Pes.Clear;
  Rel_Pes.LoadFromFile(ExtractFilePath(Application.ExeName) + 'RelPesqPadraoEmpresas.fr3');
  Rel_Pes.PrepareReport(true);
  Rel_Pes.ShowPreparedReport;
  end

  else

  MessageDlg('Relatório não encontrado', TMsgDlgType.mtError,[mbOk],0);

  finally


  end;
end;

procedure TfrmPesquisaEmpresa.bbtnPesquisaClick(Sender: TObject);
begin
begin

  case cmbChavePesquisa.ItemIndex of

0:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from EMPRESA');
fdqPesquisaPadrao.SQL.Add('WHERE ID_EMPRESA =:IdEmpresa');
fdqPesquisaPadrao.ParamByName('IdEmpresa').AsString:=edtNome.Text;
fdqPesquisaPadrao.Open();

end;

1:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from EMPRESA');
fdqPesquisaPadrao.SQL.Add('WHERE NOME LIKE :NOME');
fdqPesquisaPadrao.ParamByName('NOME').AsString := edtNome.Text + '%';
fdqPesquisaPadrao.Open();

end;

2:begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from EMPRESA');
fdqPesquisaPadrao.SQL.Add('WHERE CADASTRO  =:CADCLI');
fdqPesquisaPadrao.ParamByName('CADCLI').AsDate := strTodate(mkeDataInicio.Text);
fdqPesquisaPadrao.Open();

end;

3:begin

if strTodate(mkeDataInicio.Text) > strTodate(mkeDataFim.Text) then
begin
  MessageDlg('A data inicial não pode ser anterior a final!',TMsgDlgType.mtInformation,[mbOk],0);
  abort;
end

else

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO from EMPRESA');
fdqPesquisaPadrao.SQL.Add('WHERE CADASTRO  BETWEEN :CADEMPINICIO AND :CADEMPFIM');
fdqPesquisaPadrao.ParamByName('CADEMPINICIO').AsDate := strTodate(mkeDataInicio.Text);
fdqPesquisaPadrao.ParamByName('CADEMPFIM').AsDate := strTodate(mkeDataFim.Text);
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

end;

procedure TfrmPesquisaEmpresa.bbtnTransferirClick(Sender: TObject);
begin
  inherited;
  if fdqPesquisaPadrao.RecordCount > 0 then
  begin
    codigo := fdqPesquisaPadraoID_EMPRESA.AsInteger;
  end;

end;

procedure TfrmPesquisaEmpresa.FormCreate(Sender: TObject);
begin

fdqPesquisaPadrao.Close;
fdqPesquisaPadrao.SQL.Add('');
fdqPesquisaPadrao.Params.Clear;
fdqPesquisaPadrao.SQL.Clear;
fdqPesquisaPadrao.SQL.Add('SELECT * from EMPRESA');
fdqPesquisaPadrao.Open();
end;

end.
