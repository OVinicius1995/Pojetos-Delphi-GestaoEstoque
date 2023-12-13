unit U_PesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls, frxClass, frxDBSet,
  frCoreClasses;

type
  TfrmPesquisaPadrao = class(TForm)
    Panel1: TPanel;
    cmbChavePesquisa: TComboBox;
    lblOpcoesPesquisa: TLabel;
    edtNome: TEdit;
    mkeDataInicio: TMaskEdit;
    mkeDataFim: TMaskEdit;
    lblNome: TLabel;
    lblDtinico: TLabel;
    lblDtfim: TLabel;
    dbgPesquisa: TDBGrid;
    Panel2: TPanel;
    bbtnPesquisa: TBitBtn;
    bbtnTransferir: TBitBtn;
    bbtnImprimir: TBitBtn;
    fdqPesquisaPadrao: TFDQuery;
    dsPesquisaPadrao: TDataSource;
    Rel_Pes: TfrxReport;
    DS_Pesq_Relatorio: TfrxDBDataset;
    procedure cmbChavePesquisaChange(Sender: TObject);
    procedure dbgPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo :Integer;
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TfrmPesquisaPadrao.cmbChavePesquisaChange(Sender: TObject);
begin
case cmbChavePesquisa.ItemIndex of
    0:begin
      mkeDataInicio.Enabled := false;
      mkeDataFim.Enabled := false;
      lblNome.Caption := 'Pesquisar pelo Código do usuário';
      edtNome.Enabled := true;
      edtNome.SetFocus;
    end;

    1:begin
      mkeDataInicio.Enabled := false;
      mkeDataFim.Enabled := false;
      lblNome.Caption := 'Pesquisar pelo Nome do usuário';
      edtNome.Enabled := true;
      edtNome.SetFocus;
    end;

    2:begin
      mkeDataInicio.Enabled := true;
      mkeDataFim.Enabled := false;
      lblNome.Caption := 'Pesquisar pelo data de cadastro';
      edtNome.Enabled := false;
      mkeDataInicio.SetFocus;
    end;

    3:begin
      mkeDataInicio.Enabled := true;
      mkeDataFim.Enabled := true;
      lblNome.Caption := 'Pesquisar por período de cadastro';
      edtNome.Enabled := false;
      mkeDataInicio.SetFocus;
    end;
end;

end;

procedure TfrmPesquisaPadrao.dbgPesquisaDblClick(Sender: TObject);
begin
      bbtnTransferir.Click;
end;

end.
