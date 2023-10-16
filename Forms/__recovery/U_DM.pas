unit U_DM;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmConexao = class(TDataModule)
    fdcConexao: TFDConnection;
    fdtTransacao: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
