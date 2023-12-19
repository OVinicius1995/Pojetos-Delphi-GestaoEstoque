unit U_Compras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_MovimentoPadrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ComCtrls;

type
  TfrmCadastroDeCompras = class(TfrmPadraoMovimento)
    fdqQueryPadraoID_COMPRA: TIntegerField;
    fdqQueryPadraoID_FORNECEDOR: TIntegerField;
    fdqQueryPadraoUSUARIO: TStringField;
    fdqQueryPadraoID_FORMA_PGTO: TIntegerField;
    fdqQueryPadraoVALOR: TFMTBCDField;
    fdqQueryPadraoCADASTRO: TDateField;
    Label7: TLabel;
    dbIcompra: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbUsuario: TDBEdit;
    Label10: TLabel;
    bdIdFormaPgto: TDBEdit;
    Label11: TLabel;
    dbValor: TDBEdit;
    Label12: TLabel;
    dbIdcadastro: TDBEdit;
    cmbIdFormaPgto: TComboBox;
    cmdIdFornec: TComboBox;
    fdq_FormaPgto: TFDQuery;
    dtsFormapgto: TDataSource;
    q_PadraoItemID_FORNECEDOR: TIntegerField;
    fdq_FormaPgtoID_FORMA_PGTO: TIntegerField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDeCompras: TfrmCadastroDeCompras;

implementation

{$R *.dfm}

uses U_DM;

procedure TfrmCadastroDeCompras.BitBtn1Click(Sender: TObject);
begin
  inherited;
  MessageDlg('Teste do cmb' + cmdIdFornec.Text,TMsgDlgType.mtWarning,[mbOk],0);
end;

procedure TfrmCadastroDeCompras.btnGravarClick(Sender: TObject);
begin
 // inherited;
   fdqQueryPadraoID_FORNECEDOR.AsString := cmdIdFornec.Text;
   fdqQueryPadraoID_FORMA_PGTO.AsString := cmbIdFormaPgto.Text;
   fdqQueryPadrao.Post;
   Application.MessageBox('Registro gravado com sucesso!','Gravado', MB_OK + MB_ICONEXCLAMATION);
end;

procedure TfrmCadastroDeCompras.btnNovoClick(Sender: TObject);
begin
  inherited;

 { q_PadraoItemCADASTRO.AsDateTime := Date;
  q_PadraoItemUSUARIO.AsString    := 'Teste';
  }
  fdqQueryPadraoCADASTRO.AsDateTime    := Date;
  fdqQueryPadraoUSUARIO.AsString       := 'Teste';
  cmdIdFornec.SetFocus;

end;

procedure TfrmCadastroDeCompras.FormActivate(Sender: TObject);
begin
  inherited;
  //  q_PadraoItem.SQL.Clear;
  //    q_PadraoItem.SQL.Add('SELECT ID_FORMA_PGTO from FORMA_PGTO');
     q_PadraoItem.Open();
     fdq_FormaPgto.Open();
     q_PadraoItem.First;
     fdq_FormaPgto.First;

  while not q_PadraoItem.Eof do

  begin

  try

  cmdIdFornec.Items.Add(q_PadraoItemID_FORNECEDOR.Value.ToString);
  cmbIdFormaPgto.Items.Add(fdq_FormaPgtoID_FORMA_PGTO.Value.ToString);
  q_PadraoItem.Next;
  fdq_FormaPgto.Next;

  finally

  //q_PadraoItem.close();
  //fdq_FormaPgto.close();

  end;




  end;

  end;

end.


