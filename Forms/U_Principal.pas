unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls;

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
    procedure tmrDataHoraTimer(Sender: TObject);

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

      //stbDataHora.Panels[0].Text := '' + UpperCase(FormatDateTime('dddd","dd" de "mmmm" de "yyyy',now),loInvariantLocale);
      stbDataHora.Panels[1].Text := 'Seja Bem Vindo ao Sistema';
      stbDataHora.Panels[2].Text := '' + FormatDateTime('hh:nn', now);
      stbDataHora.Panels[2].Text := TimeToStr(time);

//        if FormatDateTime('dddd',now) = 'segunda-feira' then
//        begin
//
//        end;
//
//             if FormatDateTime('dddd',now) = 'terça-feira' then
//        begin
//
//        end;
//
//             if FormatDateTime('dddd',now) = 'quarta-feira' then
//        begin
//
//        end;
//
//             if FormatDateTime('dddd',now) = 'quinta-feira' then
//        begin
//
//        end;
//
//             if FormatDateTime('dddd',now) = 'sexta-feira' then
//        begin
//
//        end;
//
//             if FormatDateTime('dddd',now) = 'sabado' then
//        begin
//
//        end;
//
//             if FormatDateTime('dddd',now) = 'doming' then
//        begin
//
//        end;

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

end.
