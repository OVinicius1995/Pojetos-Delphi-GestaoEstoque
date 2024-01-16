unit U_MovimentoPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPadraoMovimento = class(TfrmPadrao)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    bibItem: TBitBtn;
    bibOk: TBitBtn;
    bibExcluir: TBitBtn;
    bibImprimir: TBitBtn;
    q_PadraoItem: TFDQuery;
    dsPadraoItem: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPadraoMovimento: TfrmPadraoMovimento;

implementation

{$R *.dfm}

end.
