unit u_Tipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmSelecionaTipo = class(TForm)
    cmbTipo: TComboBox;
    Label3: TLabel;
    btnOk: TBitBtn;
    fdqPegaTipoUser: TFDQuery;
    dsPegaTipoUser: TDataSource;
    fdqPegaTipoUserTIPO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaTipo: TfrmSelecionaTipo;

implementation

{$R *.dfm}

uses U_DM, U_Login, U_Principal;

procedure TfrmSelecionaTipo.FormShow(Sender: TObject);

begin
      fdqPegaTipoUser.Open();
      fdqPegaTipoUser.First;

        fdqPegaTipoUser.SQL.Text := 'SELECT TIPO FROM USUARIO WHERE NOME=:NOME_USUARIO';
        fdqPegaTipoUser.ParamByName('NOME_USUARIO').Value:= dmConexao.usuario;
        fdqPegaTipoUser.Open();


      while fdqPegaTipoUser.Eof do
      begin

          cmbTipo.Items.Add(fdqPegaTipoUserTIPO.ToString);
          fdqPegaTipoUser.Next;
      end;

end;

procedure TfrmSelecionaTipo.btnOkClick(Sender: TObject);
begin
         dmConexao.tipo_usuario := cmbTipo.Text;
         MessageDlg('Cola no baguio' + ' ' + dmConexao.usuario + ' ' + 'tu � bem vindo aqui!', mtConfirmation, [mbOk],0);
         frmPrincipal := TfrmPrincipal.Create(Self);
         frmPrincipal.Show;
end;

end.
