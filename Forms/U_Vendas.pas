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
    Label1: TLabel;
    dbeIdVenta: TDBEdit;
    Label2: TLabel;
    dbeIdCliente: TDBEdit;
    Label3: TLabel;
    dbeIdFormaPgto: TDBEdit;
    Label4: TLabel;
    dbeUsuario: TDBEdit;
    Label5: TLabel;
    dbeValor: TDBEdit;
    Label6: TLabel;
    dbeCadastro: TDBEdit;
    fdqClientes: TFDQuery;
    fdqFormaPgto: TFDQuery;
    dsCliente: TDataSource;
    dsFormapgto: TDataSource;
    fdqClientesID_CLIENTE: TIntegerField;
    fdqClientesNOME: TStringField;
    cmdCliente: TStringField;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    cmbDesc: TStringField;
    Label8: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    fdqFormaPgtoID_FORMA_PGTO: TIntegerField;
    fdqFormaPgtoDESCRICAO: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure dbeIdClienteExit(Sender: TObject);
    procedure dbeIdFormaPgtoExit(Sender: TObject);

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
  dbeIdCliente.SetFocus;
  dbeValor.text := IntToStr(0);
end;

procedure TfrmVendas.dbeIdClienteExit(Sender: TObject);
begin

    //Valida cliente

    if not fdqClientes.Locate('ID_CLIENTE',q_PadraoItemID_CLIENTE.AsInteger) then
    begin
      MessageDlg('Cliente 404!',TMsgDlgType.mtError,[mbOk],0);
      dbeIdCliente.SetFocus;
      abort;
    end;


end;


procedure TfrmVendas.dbeIdFormaPgtoExit(Sender: TObject);
begin
    //Valida cliente

    if not fdqFormaPgto.Locate('ID_FORMA_PGTO',q_PadraoItemID_FORMA_PGTO.AsInteger) then
    begin
      MessageDlg('Forma de pagamento 404!',TMsgDlgType.mtError,[mbOk],0);
      dbeIdCliente.SetFocus;
      abort;
    end;


end;

end.
