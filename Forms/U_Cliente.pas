unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmClientes = class(TfrmPadrao)
    fdqQueryPadraoID_CLIENTE: TFDAutoIncField;
    fdqQueryPadraoNOME: TStringField;
    fdqQueryPadraoENDERECO: TStringField;
    fdqQueryPadraoNUMERO: TIntegerField;
    fdqQueryPadraoBAIRRO: TStringField;
    fdqQueryPadraoCIDADE: TStringField;
    fdqQueryPadraoUF: TStringField;
    fdqQueryPadraoCEP: TStringField;
    fdqQueryPadraoTELTEFONE: TStringField;
    fdqQueryPadraoCPF: TStringField;
    fdqQueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    dbCadastro: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    tmrdata: TTimer;
    procedure tmrdataTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}



procedure TfrmClientes.tmrdataTimer(Sender: TObject);
begin
  inherited;
      FormatDateTime('hh:nn', now);

      dbCadastro.Text := FormatDateTime('dd/mm/yyyy',now);
end;

end.
