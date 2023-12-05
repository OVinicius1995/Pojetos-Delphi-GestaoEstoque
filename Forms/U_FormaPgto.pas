unit U_FormaPgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmFormapgto = class(TfrmPadrao)
    fdqQueryPadraoID_FORMA_PGTO: TFDAutoIncField;
    fdqQueryPadraoDESCRICAO: TStringField;
    fdqQueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeIdformapgto: TDBEdit;
    Label2: TLabel;
    dbeDescricao: TDBEdit;
    Label3: TLabel;
    dbeCadastro: TDBEdit;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormapgto: TfrmFormapgto;

implementation

{$R *.dfm}

procedure TfrmFormapgto.btnNovoClick(Sender: TObject);
begin
  inherited;

  dbeCadastro.Text := DateToStr(Now);
  dbeDescricao.SetFocus;

end;

end.
