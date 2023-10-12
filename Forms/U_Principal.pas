unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    spbUsuario: TSpeedButton;
    spbEmpresa: TSpeedButton;
    spbClientes: TSpeedButton;
    spbFornecedores: TSpeedButton;
    spbProdutos: TSpeedButton;
    spbFormaPgto: TSpeedButton;
    spbCompras: TSpeedButton;
    spdVendas: TSpeedButton;
    spbTrocaUsuarios: TSpeedButton;
    spbFechar: TSpeedButton;
    stbDataHora: TStatusBar;
    tmrDataHora: TTimer;
    mmuMenus: TMainMenu;
    mmuCadastro: TMenuItem;
    mmuUsuario: TMenuItem;
    mmuSp: TMenuItem;
    mmuEmpresa: TMenuItem;
    N1: TMenuItem;
    mmuClientes: TMenuItem;
    N2: TMenuItem;
    mmuFornecedores: TMenuItem;
    N3: TMenuItem;
    mmuProdutos: TMenuItem;
    N4: TMenuItem;
    mmuFormasPgto: TMenuItem;
    N5: TMenuItem;
    mmuSair: TMenuItem;
    mmuMovimentos: TMenuItem;
    mmuCompras: TMenuItem;
    N6: TMenuItem;
    mmuVendas: TMenuItem;
    mmuRelatorios: TMenuItem;
    mmuListaUsuarios: TMenuItem;
    N7: TMenuItem;
    mmuListaFornecedores: TMenuItem;
    N8: TMenuItem;
    Listadeclientes1: TMenuItem;
    N9: TMenuItem;
    mmuListaProdutos: TMenuItem;
    N10: TMenuItem;
    mmuListaCompras: TMenuItem;
    N11: TMenuItem;
    mmuListaVendas: TMenuItem;
    mmuAbout: TMenuItem;
    mmuAboutInfo: TMenuItem;
    procedure tmrDataHoraTimer(Sender: TObject);
    procedure spbFecharClick(Sender: TObject);
    procedure mmuSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses StrUtils;


procedure TfrmPrincipal.tmrDataHoraTimer(Sender: TObject);
begin

      stbDataHora.Panels[1].Text := 'Seja Bem Vindo ao Sistema';
      stbDataHora.Panels[2].Text := '' + FormatDateTime('hh:nn', now);
      stbDataHora.Panels[2].Text := TimeToStr(time);


        case AnsiIndexStr(FormatDateTime('dddd',now), ['segunda-feira','terça-feira','quarta-feira','quinta-feira','sexta','sábado','domingo']) of

          0 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('s','S');
          1 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('t','T');
          2 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('q','Q');
          3 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('q','Q');
          4 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('s','S');
          5 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('s','S');
          6 : stbDataHora.Panels[0].Text := '' + FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now).Replace('d','D');

        end;

end;


procedure TfrmPrincipal.spbFecharClick(Sender: TObject);
begin
    close;
end;

procedure TfrmPrincipal.mmuSairClick(Sender: TObject);
begin
    close;
end;

end.
