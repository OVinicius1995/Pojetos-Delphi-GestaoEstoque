unit U_Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_MovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmVendas = class(TfrmPadraoMovimento)
    q_PadraoItemID_VENDA: TIntegerField;
    q_PadraoItemID_CLIENTE: TIntegerField;
    q_PadraoItemID_FORMA_PGTO: TIntegerField;
    q_PadraoItemUSUARIO: TStringField;
    q_PadraoItemVALOR: TFMTBCDField;
    q_PadraoItemCADASTRO: TDateField;
    fdqClientes: TFDQuery;
    fdqFormaPgto: TFDQuery;
    dsCliente: TDataSource;
    dsFormapgto: TDataSource;
    fdqClientesID_CLIENTE: TIntegerField;
    fdqClientesNOME: TStringField;
    cmdCliente: TStringField;
    cmbDesc: TStringField;
    fdqFormaPgtoID_FORMA_PGTO: TIntegerField;
    fdqFormaPgtoDESCRICAO: TStringField;
    fdqQueryPadraoID_VENDA: TIntegerField;
    fdqQueryPadraoID_CLIENTE: TIntegerField;
    fdqQueryPadraoID_FORMA_PGTO: TIntegerField;
    fdqQueryPadraoUSUARIO: TStringField;
    fdqQueryPadraoVALOR: TFMTBCDField;
    fdqQueryPadraoCADASTRO: TDateField;
    fdqQueryPadraoCLIENTE: TStringField;
    fdqQueryPadraoDESCRICAO: TStringField;
    Label1: TLabel;
    dbeIdVendas: TDBEdit;
    Label2: TLabel;
    dbIdClientes: TDBEdit;
    Label3: TLabel;
    dbeIdformaPgto: TDBEdit;
    Label4: TLabel;
    dbeUsuario: TDBEdit;
    Label5: TLabel;
    dbeValor: TDBEdit;
    Label6: TLabel;
    dbeCadastro: TDBEdit;
    Label7: TLabel;
    cmbCliente: TDBLookupComboBox;
    Label8: TLabel;
    cmbDescricao: TDBLookupComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure dbeIdFormaPgtoExit(Sender: TObject);
    procedure dbIdClientesExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

{$R *.dfm}

uses U_DM;

procedure TfrmVendas.btnNovoClick(Sender: TObject);
begin
  inherited;

  dbeCadastro.Text := DateToStr(Date);
  dbeUsuario.Text  := dmConexao.usuario;
  dbIdClientes.SetFocus;
  dbeValor.text := IntToStr(0);
end;



procedure TfrmVendas.dbeIdFormaPgtoExit(Sender: TObject);
begin
  dbeUsuario.Text  := dmConexao.usuario;
    //Valida cliente

    if not fdqFormaPgto.Locate('ID_FORMA_PGTO',fdqQueryPadraoID_FORMA_PGTO.AsInteger) then
    begin
      MessageDlg('Forma de pagamento 404!',TMsgDlgType.mtError,[mbOk],0);
      dbeIdFormaPgto.SetFocus;
      abort;
    end;


end;

procedure TfrmVendas.dbIdClientesExit(Sender: TObject);
begin

      dbeUsuario.Text  := dmConexao.usuario;
    //Valida cliente

    if not fdqClientes.Locate('ID_CLIENTE',fdqQueryPadraoID_CLIENTE.AsInteger) then
    begin
      MessageDlg('Cliente 404!',TMsgDlgType.mtError,[mbOk],0);
      dbIdClientes.SetFocus;
      abort;
    end;

end;

end.
