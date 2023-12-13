unit U_Usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TfrmUsuario = class(TfrmPadrao)
    fdqQueryPadraoID_USUARIO: TIntegerField;
    fdqQueryPadraoNOME: TStringField;
    fdqQueryPadraoSENHA: TStringField;
    fdqQueryPadraoTIPO: TStringField;
    fdqQueryPadraoCADASTRO: TDateField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeSenha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dbeCadastro: TDBEdit;
    cmbTipo: TDBComboBox;
    procedure btnNovoClick(Sender: TObject);
    procedure limparCampos();
    procedure btnGravarClick(Sender: TObject);
    procedure Abre_FormPesquisa;
    procedure btnPesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUsuario: TfrmUsuario;

implementation

{$R *.dfm}

uses U_PesqUsuario;

procedure TfrmUsuario.limparCampos;
begin
  fdqQueryPadrao.Open();
    dbeId.Clear;
    dbeNome.Clear;
    dbeSenha.Clear;
    dbeCadastro.Clear;
//    cmbTipo.Items := '';
end;

procedure TfrmUsuario.Abre_FormPesquisa;
begin
    try
    frmPesqUsuario := TfrmPesqUsuario.Create(Self);
    frmPesqUsuario.ShowModal;
    finally

    frmPesqUsuario.Free;
    frmPesqUsuario := nil;

    end;
end;

procedure TfrmUsuario.btnGravarClick(Sender: TObject);
begin
  inherited;

    dbeNome.SetFocus;

end;

procedure TfrmUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;

    dbeCadastro.Text := DateToStr(now);
    dbeNome.SetFocus;

end;


procedure TfrmUsuario.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  Abre_FormPesquisa;
end;

end.
