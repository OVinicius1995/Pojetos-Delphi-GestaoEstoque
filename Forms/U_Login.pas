unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    edtNome: TEdit;
    edtSenha: TEdit;
    cmbTipo: TComboBox;
    btnLogar: TBitBtn;
    btnCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnLogarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses U_DM, U_Principal;

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfrmLogin.btnLogarClick(Sender: TObject);
begin

    if (edtNome.Text = '') then
    begin
         Application.MessageBox('Minha joia cê deixou o usuário em branco, dá essa força aí pra nóis!','Copera irmão!', MB_OK + MB_ICONASTERISK);
         abort;
    end

    else

    if (edtSenha.Text = '') then
    begin
         Application.MessageBox('Meu consagrado agora cê deixou a senha em branco, cê tá é me tirando irmão, prestenção no que tu bota aí, se não botam nocê!','Copera irmão!', MB_OK + MB_ICONASTERISK);
         abort;
    end

    else

    dmConexao.fdqLogin.Close;
    dmConexao.fdqLogin.SQL.Add('');
    dmConexao.fdqLogin.SQL.Clear();
    dmConexao.fdqLogin.SQL.Add('SELECT * FROM USUARIO');
    dmConexao.fdqLogin.SQL.Add('WHERE NOME =:UNOME AND SENHA =:USENHA');
    dmConexao.fdqLogin.ParamByName('UNOME').AsString   := edtNome.Text;
    dmConexao.fdqLogin.ParamByName('USENHA').AsInteger := strtoint(edtSenha.Text);
   // dmConexao.fdqLogin.ParamByName('UTIPO').AsString  := cmbTipo.Text;

    dmConexao.fdqLogin.Open;


      if dmConexao.fdqLogin.RecordCount = 0 then
    begin
      Application.MessageBox('Nome ou senha incorretos.','Zoia!', MB_OK + MB_ICONWARNING);
      abort;
    end

    else
    begin

        dmConexao.usuario      := dmConexao.fdqLogin.FieldByName('NOME').AsString;
        dmConexao.tipo_usuario := dmConexao.fdqLogin.FieldByName('TIPO').AsString;

        MessageDlg('Cola no baguio' + ' ' + dmConexao.usuario + ' ' + 'tu é bem vindo aqui!', mtConfirmation, [mbOk],0);


         frmPrincipal := TfrmPrincipal.Create(Self);
         frmPrincipal.Show;
         frmLogin.Hide;
    end;





end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
    edtNome.SetFocus();
end;

end.
