unit uNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, ACBrDANFCeFortesFr, ACBrNFeDANFeESCPOS, ACBrMail,
  ACBrPosPrinter, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass, ACBrBase, ACBrDFe,
  ACBrNFe,pcnConversao,DB,ACBrNFeWebServices, ACBrTEFDClass, ACBrTEFDCliSiTef,ACBrECF,


IniFiles, ShellAPI, pcnRetConsReciNFe,
  OleCtrls, SHDocVw,
  ACBrUtil,
  XMLIntf, XMLDoc, zlib,
  Spin, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  ACBrTEFD;

type
  tEstadoEcfSimulado = (tpsLivre, tpsVenda, tpsSubTotal, tpsTotalPagar, tpsPagamento, tpsRelatorio);
  tpPagamento = (tpDinheiro, tpCartao);


  TfrmNFCe = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    P_ROMANEIO: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label8: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label18: TLabel;
    Label30: TLabel;
    Label89: TLabel;
    DBText1: TDBText;
    Label90: TLabel;
    Label91: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet5: TTabSheet;
    MemoDados: TMemo;
    TabSheet11: TTabSheet;
    MemoResp: TMemo;
    TabSheet15: TTabSheet;
    memoRespWS: TMemo;
    TabSheet16: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    TabSheet17: TTabSheet;
    WBResposta: TWebBrowser;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrMail1: TACBrMail;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    OpenDialog1: TOpenDialog;
    BtnEnviar: TBitBtn;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    PageControl4: TPageControl;
    TabSheet7: TTabSheet;
    lSSLLib: TLabel;
    lCryptLib: TLabel;
    lHttpLib: TLabel;
    lXmlSign: TLabel;
    gbCertificado: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label46: TLabel;
    sbtnGetCert: TSpeedButton;
    SpeedButton3: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button10: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Button6: TButton;
    cbAssinar: TCheckBox;
    Button7: TButton;
    Button9: TButton;
    cbSSLLib: TComboBox;
    cbCryptLib: TComboBox;
    cbHttpLib: TComboBox;
    cbXmlSignLib: TComboBox;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    sbtnPathSalvar: TSpeedButton;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    spPathSchemas: TSpeedButton;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    cbFormaEmissao: TComboBox;
    cbxAtualizarXML: TCheckBox;
    cbxExibirErroSchema: TCheckBox;
    edtFormatoAlerta: TEdit;
    cbModeloDF: TComboBox;
    cbxRetirarAcentos: TCheckBox;
    cbVersaoDF: TComboBox;
    edtIdToken: TEdit;
    edtToken: TEdit;
    edtPathSchemas: TEdit;
    TabSheet6: TTabSheet;
    GroupBox4: TGroupBox;
    Label54: TLabel;
    lTimeOut: TLabel;
    lSSLLib1: TLabel;
    cbxVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    cbxSalvarSOAP: TCheckBox;
    seTimeOut: TSpinEdit;
    cbSSLType: TComboBox;
    gbProxy: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    gbxRetornoEnvio: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    cbxAjustarAut: TCheckBox;
    edtTentativas: TEdit;
    edtIntervalo: TEdit;
    edtAguardar: TEdit;
    TabSheet12: TTabSheet;
    Label62: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    edtEmitCNPJ: TEdit;
    edtEmitIE: TEdit;
    edtEmitRazao: TEdit;
    edtEmitFantasia: TEdit;
    edtEmitFone: TEdit;
    edtEmitCEP: TEdit;
    edtEmitLogradouro: TEdit;
    edtEmitNumero: TEdit;
    edtEmitComp: TEdit;
    edtEmitBairro: TEdit;
    edtEmitCodCidade: TEdit;
    edtEmitCidade: TEdit;
    edtEmitUF: TEdit;
    TabSheet13: TTabSheet;
    sbPathNFe: TSpeedButton;
    Label76: TLabel;
    Label77: TLabel;
    sbPathCan: TSpeedButton;
    Label78: TLabel;
    sbPathCCe: TSpeedButton;
    Label79: TLabel;
    sbPathInu: TSpeedButton;
    Label80: TLabel;
    sbPathDPEC: TSpeedButton;
    Label81: TLabel;
    sbPathEvento: TSpeedButton;
    cbxSalvarArqs: TCheckBox;
    cbxPastaMensal: TCheckBox;
    cbxAdicionaLiteral: TCheckBox;
    cbxEmissaoPathNFe: TCheckBox;
    cbxSalvaPathEvento: TCheckBox;
    cbxSepararPorCNPJ: TCheckBox;
    edtPathCCe: TEdit;
    edtPathNFe: TEdit;
    edtPathCan: TEdit;
    edtPathInu: TEdit;
    edtPathDPEC: TEdit;
    edtPathEvento: TEdit;
    cbxSepararPorModelo: TCheckBox;
    TabSheet8: TTabSheet;
    Label82: TLabel;
    sbtnLogoMarca: TSpeedButton;
    edtLogoMarca: TEdit;
    rgTipoDanfe: TRadioGroup;
    TabSheet14: TTabSheet;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    DBGrid2: TDBGrid;
    Panel1: TPanel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label32: TLabel;
    Label33: TLabel;
    DBText5: TDBText;
    DBText4: TDBText;
    Label34: TLabel;
    DBText6: TDBText;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label35: TLabel;
    Label36: TLabel;
    DBText8: TDBText;
    Label37: TLabel;
    DBText9: TDBText;
    Label19: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    DBText7: TDBText;
    Label26: TLabel;
    DBText10: TDBText;
    Label27: TLabel;
    Label28: TLabel;
    DBText11: TDBText;
    BitBtn1: TBitBtn;
    sTEFDial: TShape;
    ckTEFDIAL: TCheckBox;
    sTEFDisc: TShape;
    ckTEFDISC: TCheckBox;
    ckHIPERTEF: TCheckBox;
    sHiperTEF: TShape;
    ACBrTEFD1: TACBrTEFD;
    MemoCupomTEF: TMemo;
    StatusBar1: TStatusBar;
    pMensagem: TPanel;
    pMensagemOperador: TPanel;
    lMensagemOperador: TLabel;
    Label29: TLabel;
    pMensagemCliente: TPanel;
    Label38: TLabel;
    lMensagemCliente: TLabel;
    ButtonPagarEmCartao: TButton;
    ckCliSiTef: TCheckBox;
    sCliSiTef: TShape;
    sVSPague: TShape;
    ckVSPague: TCheckBox;
    sAuttar: TShape;
    ckAuttar: TCheckBox;
    gbConfigTEF: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    bInicializar: TButton;
    ckAutoAtivar: TCheckBox;
    cbxGP: TComboBox;
    bAtivarGP: TButton;
    ckMultiplosCartoes: TCheckBox;
    ckAutoFinalizarCupom: TCheckBox;
    ckAutoEfetuarPagamento: TCheckBox;
    edEsperaSleep: TEdit;
    edEsperaSTS: TEdit;
    cbxGP1: TComboBox;
    GroupBoxFechamento: TGroupBox;
    labelDescricaoTotalRecebido: TLabel;
    Label42: TLabel;
    EditTotalPago: TEdit;
    EditSaldoRestante: TEdit;
    GroupBox1: TGroupBox;
    Label43: TLabel;
    edValorPagamento: TEdit;
    Button1: TButton;
    ButtonPagarEmDinheiro: TButton;
    bADM: TButton;
    edValorVenda: TEdit;
    Label64: TLabel;
    gbConfigECF: TGroupBox;
    Label92: TLabel;
    Label93: TLabel;
    btSerial: TSpeedButton;
    Label94: TLabel;
    Label95: TLabel;
    cbxModelo: TComboBox;
    cbxPorta: TComboBox;
    bAtivar: TButton;
    edFPGCartao: TEdit;
    edFPGCheque: TEdit;
    bFPG: TButton;
    ACBrECF1: TACBrECF;
    lECFName: TLabel;
    sECF: TShape;
    procedure FormShow(Sender: TObject);
    procedure BtnEnviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
      Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;
      var RetornoECF: string);
    procedure ButtonPagarEmCartaoClick(Sender: TObject);
    procedure cbxGPChange(Sender: TObject);
    procedure bInicializarClick(Sender: TObject);
    procedure bAtivarGPClick(Sender: TObject);
    procedure ButtonPagarEmDinheiroClick(Sender: TObject);
    procedure bADMClick(Sender: TObject);
    procedure bAtivarClick(Sender: TObject);
    procedure cbxModeloChange(Sender: TObject);
    procedure ACBrECF1MsgPoucoPapel(Sender: TObject);
  private
    { Private declarations }
    estadoSimuladoEcf : tEstadoEcfSimulado;
    IndiceTransacaoTef : Integer;


  public
    { Public declarations }
    procedure GerarNFCe(NumNFe : String);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure LerConfiguracao;
    procedure AtualizaSSLLibsCombo;

    //TEF

    procedure AvaliaTEFs;
    procedure GerarNFCeTEF(NumNFe: String; valorVenda: Currency; emissaoOffLine: Boolean);
    function verificarSaldoRestante: Currency;
    procedure EfetuaPagamento(formaPagamento: tpPagamento);
    procedure travarComponentesTEF(abriuVenda: Boolean);
    function enviarNFCeTEF(numeroNFce: string; out StrDescMensagem: string): boolean;
    procedure finalizarCupomNFCe;

  end;

var
  frmNFCe: TfrmNFCe;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uPdv,  strutils, math, TypInfo, DateUtils, synacode, blcksock, pcnNFe,
  pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL;



procedure TfrmNFCe.ACBrECF1MsgPoucoPapel(Sender: TObject);
Var
  OldTecladoBloqueado : Boolean ;
begin
  OldTecladoBloqueado := ACBrTEFD1.TecladoBloqueado;
  ACBrTEFD1.BloquearMouseTeclado(False);
  try
     ShowMessage( ACBrStr('ATEN��O. Detectada proximadade do fim da Bobina') );
  finally
    ACBrTEFD1.BloquearMouseTeclado(OldTecladoBloqueado);
  end ;

end;

procedure TfrmNFCe.ACBrTEFD1ComandaECF(Operacao: TACBrTEFDOperacaoECF;
  Resp: TACBrTEFDResp; var RetornoECF: Integer);
begin
  try
    case Operacao of
      opeAbreGerencial :
         MemoCupomTEF.Lines.Add('Abre Gerencial') {ACBrECF1.AbreRelatorioGerencial} ;

      opeFechaCupom :
         estadoSimuladoEcf := tpsLivre;

      opeSubTotalizaCupom :
         MemoCupomTEF.Lines.Add('Sub Totaliza');

      opeFechaGerencial, opeFechaVinculado :
         estadoSimuladoEcf := tpsRelatorio;

      opePulaLinhas :
        begin
          MemoCupomTEF.Lines.Add('PulaLinhas');
          Sleep(200);
        end;

      opeImprimePagamentos :
        begin
          MemoCupomTEF.Lines.Add('ImprimePagamentos');
        end;
    end;
    RetornoECF := 1 ;
  except
    RetornoECF := 0 ;
  end;

end;

procedure TfrmNFCe.ACBrTEFD1ComandaECFAbreVinculado(COO, IndiceECF: string;
  Valor: Double; var RetornoECF: Integer);
begin
  try
     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;

end;

procedure TfrmNFCe.ACBrTEFD1ComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  try
     case TipoRelatorio of
       trGerencial :
         MemoCupomTEF.Lines.Add('GERENCIAL:' + ImagemComprovante.Text);
       trVinculado :
         MemoCupomTEF.Lines.Add('VINCULADO:' + ImagemComprovante.Text);
     end;

     RetornoECF := 1 ;
  except
     RetornoECF := 0 ;
  end;

end;

procedure TfrmNFCe.ACBrTEFD1ComandaECFSubtotaliza(DescAcre: Double;
  var RetornoECF: Integer);
begin
  estadoSimuladoEcf := tpsPagamento;
  RetornoECF := 1 ;

end;

procedure TfrmNFCe.ACBrTEFD1ExibeMsg(Operacao: TACBrTEFDOperacaoMensagem;
  Mensagem: string; var AModalResult: TModalResult);
var
   Fim : TDateTime;
   OldMensagem : String;
begin
  StatusBar1.Panels[1].Text := '' ;
  StatusBar1.Panels[2].Text := '' ;

  case Operacao of

    opmOK :
       AModalResult := MessageDlg( Mensagem, mtInformation, [mbOK], 0);

    opmYesNo :
       AModalResult := MessageDlg( Mensagem, mtConfirmation, [mbYes,mbNo], 0);

    opmExibirMsgOperador, opmRemoverMsgOperador :
         lMensagemOperador.Caption := Mensagem ;

    opmExibirMsgCliente, opmRemoverMsgCliente :
         lMensagemCliente.Caption := Mensagem ;

    opmDestaqueVia :
       begin
         OldMensagem := lMensagemOperador.Caption ;
         try
            lMensagemOperador.Caption := Mensagem ;
            pMensagemOperador.Visible := True ;
            pMensagem.Visible         := True ;

            { Aguardando 3 segundos }
            Fim := IncSecond( now, 3)  ;
            repeat
               sleep(200) ;
               lMensagemOperador.Caption := Mensagem + ' ' + IntToStr(SecondsBetween(Fim,now));
               Application.ProcessMessages;
            until (now > Fim) ;

         finally
            lMensagemOperador.Caption := OldMensagem ;
         end;
       end;
  end;

  pMensagemOperador.Visible := (lMensagemOperador.Caption <> '') ;
  pMensagemCliente.Visible  := (lMensagemCliente.Caption <> '') ;

  pMensagem.Visible := pMensagemOperador.Visible or pMensagemCliente.Visible;
  Application.ProcessMessages;
end;

procedure TfrmNFCe.ACBrTEFD1InfoECF(Operacao: TACBrTEFDInfoECF;var RetornoECF: string);
var
   ASubTotal: Double;
begin
   case Operacao of
     ineSubTotal :
       begin
         ASubTotal := StringToFloatDef(DM.cdsNFCeVL_TOTAL_NOTA.Text, 0);
         //ASubTotal := ASubTotal - StringToFloatDef(EditTotalPago.Text, 0){ + Tratar Desconto e Acrescimo aqui: StringToFloatDef(edValorDescAcre.Text, 0)};
         RetornoECF := FloatToStr(ASubTotal);
         if estadoSimuladoEcf = tpsPagamento then
           RetornoECF := FloatToStr(0);
       end;

     ineTotalAPagar :
       RetornoECF := '0';

     ineEstadoECF :
       begin
         Case estadoSimuladoEcf of
           tpsLivre     : RetornoECF := 'L' ;
           tpsVenda     : RetornoECF := 'V' ;
           tpsPagamento : RetornoECF := 'P' ;
           tpsRelatorio : RetornoECF := 'R' ;
         else
           RetornoECF := 'O' ;
         end;
       end;
   end;

end;

procedure TfrmNFCe.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );

 cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;

end;

procedure TfrmNFCe.AvaliaTEFs;
begin
  if ACBrTEFD1.TEFDial.Inicializado then
     sTEFDial.Brush.Color := clLime
  else
     sTEFDial.Brush.Color := clRed ;
  ckTEFDIAL.Checked := ACBrTEFD1.TEFDial.Habilitado;

  if ACBrTEFD1.TEFDisc.Inicializado then
     sTEFDisc.Brush.Color := clLime
  else
     sTEFDisc.Brush.Color := clRed ;
  ckTEFDISC.Checked := ACBrTEFD1.TEFDisc.Habilitado;

  if ACBrTEFD1.TEFHiper.Inicializado then
     sHiperTEF.Brush.Color := clLime
  else
     sHiperTEF.Brush.Color := clRed ;
  ckHIPERTEF.Checked := ACBrTEFD1.TEFHiper.Habilitado;

  if ACBrTEFD1.TEFCliSiTef.Inicializado then
     sCliSiTef.Brush.Color := clLime
  else
     sCliSiTef.Brush.Color := clRed ;
  ckCliSiTef.Checked := ACBrTEFD1.TEFCliSiTef.Habilitado;

  if ACBrTEFD1.TEFVeSPague.Inicializado then
     sVSPague.Brush.Color := clLime
  else
     sVSPague.Brush.Color := clRed ;
  ckVSPague.Checked := ACBrTEFD1.TEFVeSPague.Habilitado;


  if ACBrTEFD1.TEFAuttar.Inicializado then
     sAuttar.Brush.Color := clLime
  else
     sAuttar.Brush.Color := clRed ;
  ckAuttar.Checked := ACBrTEFD1.TEFAuttar.Habilitado;

  cbxGP.ItemIndex  := Integer( ACBrTEFD1.GPAtual ) ;
  cbxGP1.ItemIndex := cbxGP.ItemIndex ;

end;

procedure TfrmNFCe.bADMClick(Sender: TObject);
begin
  if estadoSimuladoEcf <> tpsLivre then
    raise Exception.Create('Estado do Simulador ECF deve ser Livre');

  ACBrTEFD1.ADM(TACBrTEFDTipo(cbxGP1.ItemIndex ));
  MemoCupomTEF.Lines.Add('Administrativo TEF');

end;

procedure TfrmNFCe.bAtivarClick(Sender: TObject);
begin
  if bAtivar.Caption = 'Ativar' then
   begin
     try
        ACBrECF1.Porta := cbxPorta.Text ;

        if cbxModelo.ItemIndex = 0 then
           if not ACBrECF1.AcharECF(true,False) then
           begin
              MessageDlg('Nenhum ECF encontrado.',mtInformation,[mbOk],0) ;
              exit ;
           end ;

        ACBrECF1.Ativar ;

        MemoCupomTEF.Lines.Add( 'Ativar ECF' );
     finally
        cbxModelo.ItemIndex := Integer(ACBrECF1.Modelo) ;
        cbxPorta.Text       := ACBrECF1.Porta ;
        lECFName.Caption    := GetEnumName(TypeInfo(TACBrECFModelo), cbxModelo.ItemIndex ) ;
        if ACBrECF1.Ativo then
         begin
           sECF.Brush.Color := clLime ;
           bAtivar.Caption := 'Desativar' ;
         end
        else
           sECF.Brush.Color := clRed;

        btSerial.Enabled   := not ACBrECF1.Ativo ;
     //   gbCupomECF.Enabled := ACBrECF1.Ativo ;
     end ;
   end
  else
   begin
     ACBrECF1.Desativar ;
     bAtivar.Caption := 'Ativar' ;
     MemoCupomTEF.Lines.Add( 'Desativar ECF' );
     sECF.Brush.Color   := clRed;
     //gbCupomECF.Enabled := False ;
     btSerial.Enabled   := True ;
   end;

end;

procedure TfrmNFCe.bAtivarGPClick(Sender: TObject);
begin
  ACBrTEFD1.AtivarGP( TACBrTEFDTipo( cbxGP.ItemIndex ) );
  AvaliaTEFs;
  MemoCupomTEF.Lines.Add('AtivarGP');

end;

procedure TfrmNFCe.bInicializarClick(Sender: TObject);
begin
  if bInicializar.Caption = 'Inicializar' then
  begin
    edValorPagamento.Clear;
    travarComponentesTEF(False);
    estadoSimuladoEcf := tpsLivre;
    ACBrTEFD1.Inicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );
    //pgRespostas.ActivePage := TabSheetCupomTef;
    MemoCupomTEF.Lines.Add('Inicializar');
     bInicializar.Caption := 'DesInicializar' ;
  end
  else
  begin
    ACBrTEFD1.DesInicializar( TACBrTEFDTipo( cbxGP.ItemIndex ) );
    MemoCupomTEF.Lines.Add('ACBrTEFD.DesInicializar Executado' );
    bInicializar.Caption := 'Inicializar' ;
  end;

  AvaliaTEFs;

end;

procedure TfrmNFCe.BtnEnviarClick(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
 vChave,vProtocolo : string;
 vDataAutorizacao  : TDate;
begin
 ACBrNFe1.WebServices.StatusServico.Executar;

 MemoResp.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetWS;
 memoRespWS.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
 LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

 vAux := DM.cdsNFCEID_PDV.AsString;
 vNumLote := DM.cdsNFCEID_PDV.AsString;

//  if not(InputQuery('WebServices Enviar', 'Numero da Nota', vAux)) then
//    exit;

//  if not(InputQuery('WebServices Enviar', 'Numero do Lote', vNumLote)) then
//    exit;

  vSincrono := '1';
//  if not(InputQuery('WebServices Enviar', 'Envio S�ncrono(1=Sim, 0=N�o)', vSincrono)) then
//    exit;

  vNumLote := OnlyNumber(vNumLote);

  if Trim(vNumLote) = '' then
   begin
     MessageDlg('N�mero do Lote inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) <> '1') and
     (Trim(vSincrono) <> '0') then
   begin
     MessageDlg('Valor Inv�lido.',mtError,[mbok],0);
     exit;
   end;

  if (Trim(vSincrono) = '1') then
    Sincrono := True
  else
    Sincrono := False;

  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
  GerarNFCe(vAux);

  vProtocolo := ACBrNFe1.WebServices.Consulta.Protocolo;
  vChave     := ACBrNFe1.WebServices.Consulta.NFeChave;

    ShowMessage(''+vProtocolo+'Chave '+vChave);


  ACBrNFe1.Enviar(vNumLote,True,Sincrono);

  if not Sincrono then
  begin
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFCe');
    MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
    MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
    MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
    MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
  end
  else
  begin
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Enviar.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Enviar.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Enviar.RetWS, WBResposta);

    MemoDados.Lines.Add('');
    MemoDados.Lines.Add('Envio NFCe');
    MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Enviar.TpAmb));
    MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Enviar.verAplic);
    MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cStat));
    MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cUF));
    MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Enviar.xMotivo);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);
  end;

  DM.cdsNFCE.Edit;
  DM.cdsNFCESITUACAO.Value              := 'Autorizada';
  DM.cdsNFCECHAVE_NFE.Value             := ACBrNFe1.WebServices.Retorno.ChaveNFe;
  DM.cdsNFCEPROTOCOLO_AUTORIZACAO.Value := ACBrNFe1.WebServices.Retorno.Protocolo;
  DM.cdsNFCERECIBO.Value                := ACBrNFe1.WebServices.Retorno.Recibo;
  DM.cdsNFCEDT_AUTORIZACAO.AsDateTime   := Now;
  DM.cdsNFCESTATUS.Value :='S';
  DM.cdsNFCE.ApplyUpdates(0);

  ACBrNFe1.NotasFiscais.Clear;

end;

procedure TfrmNFCe.ButtonPagarEmCartaoClick(Sender: TObject);
begin
  EfetuaPagamento(tpCartao);
end;

procedure TfrmNFCe.ButtonPagarEmDinheiroClick(Sender: TObject);
begin
  EfetuaPagamento(tpDinheiro);
end;

procedure TfrmNFCe.cbxGPChange(Sender: TObject);
begin
  if not (Sender is TComboBox) then exit ;

  try
    ACBrTEFD1.GPAtual := TACBrTEFDTipo(  TComboBox(Sender).ItemIndex ) ;
  finally
    AvaliaTEFs;
  end;

end;

procedure TfrmNFCe.cbxModeloChange(Sender: TObject);
begin
  try
     ACBrECF1.Modelo := TACBrECFModelo( cbxModelo.ItemIndex ) ;
  except
     cbxModelo.ItemIndex := Integer( ACBrECF1.Modelo ) ;
     raise ;
  end ;

end;

procedure TfrmNFCe.EfetuaPagamento(formaPagamento: tpPagamento);
var
  StatusTransacao : Boolean;
begin

  if StrToCurrDef(Trim(EditSaldoRestante.Text), 0) <= 0 then
    raise Exception.Create('Todos os Valores foram totalizados');

  if StrToCurrDef(Trim(edValorPagamento.Text), 0) <= 0 then
    raise Exception.Create('Valores de pagamento n�o deve ser Zero');

  if formaPagamento = tpDinheiro then
  begin
    MemoCupomTEF.Lines.Add('Pagamento [Dinheiro:' + edValorPagamento.Text + ']');
    {Tratar com sua rotina em dinheiro}
  end
  else if formaPagamento = tpCartao then
  begin

    if not(ACBrTEFD1.Inicializado(TACBrTEFDTipo( cbxGP.ItemIndex ))) then
      raise Exception.Create('ACBrTEFD n�o inicializado.');

    StatusTransacao := ACBrTEFD1.CRT( StringToFloatDef(edValorPagamento.Text, 0) , '02', trim(DM.cdsNFCeNR_NFCE.Text));

    if StatusTransacao then
    begin
      Inc(IndiceTransacaoTef);

      if not(ACBrTEFD1.AutoFinalizarCupom) then
        MemoCupomTEF.Lines.Add('Pagamento [Cartao:' + edValorPagamento.Text + '][NSU:'+ACBrTEFD1.RespostasPendentes[IndiceTransacaoTef].NSU + '][Rede:'+ACBrTEFD1.RespostasPendentes[IndiceTransacaoTef].Rede+ ']');

      Application.MessageBox('Transa��o aprovada, Favor Travar o dados do comprovante', 'Informa��o', MB_OK + MB_ICONINFORMATION);
    end
    else
    begin
      MemoCupomTEF.Lines.Add('Transa��o Negada');
      Application.MessageBox('Transa��o Negada', 'Informa��o', MB_OK + MB_ICONWARNING);
      Exit;
    end;
  end;

  EditTotalPago.Text := FloatToStr(StringToFloatDef(EditTotalPago.Text, 0) + StringToFloatDef(edValorPagamento.Text, 0));

  if verificarSaldoRestante = 0 then
  begin
    finalizarCupomNFCe;
    //Limpar campos

    edValorVenda.Text       := '0';
    edValorPagamento.Text   := '0';
    EditTotalPago.Text      := '0';
    EditSaldoRestante.Text  := '0';
    MemoCupomTEF.Lines.Add('Venda Conclu�da');
    MemoCupomTEF.Lines.Add('');
    DM.cdsNFCeNR_NFCE.Text := IntToStr(StrToIntDef(DM.cdsNFCeNR_NFCE.Text, 0) + 1);
    Application.MessageBox('Venda Conclu�da', 'Informa��o', MB_OK + MB_ICONINFORMATION);
  end
  else
    edValorPagamento.Text := EditSaldoRestante.Text;

end;

function TfrmNFCe.enviarNFCeTEF(numeroNFce: string;
  out StrDescMensagem: string): boolean;
begin
  Result := False;
//  ACBrNFe1.Configuracoes.Geral.IncluirQRCodeXMLNFCe := True;
  ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;

  GerarNFCeTEF(numeroNFce, StringToFloatDef(DM.cdsNFCeVL_TOTAL_NOTA.Text, 0), False);
  try
    ACBrNFe1.Enviar(numeroNFce, True, False);
  except
    on e : Exception do
    begin
      StrDescMensagem := e.Message;
      Result := False;
      Exit;
    end;
  end;

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFCe');

  MemoResp.Lines.Text := ACBrNFe1.WebServices.Enviar.RetWS;
  memoRespWS.Lines.Text := ACBrNFe1.WebServices.Enviar.RetornoWS;
  LoadXML(ACBrNFe1.WebServices.Enviar.RetWS, WBResposta);

  MemoDados.Lines.Add('');
  MemoDados.Lines.Add('Envio NFCe');
  MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Enviar.TpAmb));
  MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Enviar.verAplic);
  MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cStat));
  MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cUF));
  MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Enviar.xMotivo);
  //MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cMsg));
  //MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Enviar.xMsg);
  MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);
  //MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Enviar.Protocolo);

  ACBrNFe1.NotasFiscais.Clear;

  Result := True;

end;

procedure TfrmNFCe.finalizarCupomNFCe;
var
  StrDescMensagem : string;
begin
  travarComponentesTEF(False);

  if not(enviarNFCeTEF(DM.cdsNFCeNR_NFCE.Text, StrDescMensagem)) {Tenta emitir a NFCe em Modo Normal}then
  begin
    Application.MessageBox(pchar('Ocorreu um erro ao enviar a NFCe em modo normal.' + sLineBreak +
                           'Sistema emitir� em modo "OFFLINE/CONTING�NCIA"  ' + sLineBreak +
                           '#Programador tratar sua aplica��o para envio das NFCes emitidas off-line para SEFAZ Estadual' + sLineBreak +
                           StrDescMensagem), 'Informa��o', MB_OK + MB_ICONERROR);

    GerarNFCeTEF(DM.cdsNFCeNR_NFCE.Text, StringToFloatDef(EditTotalPago.Text, 0), True);

    //Para offline deve Assinar e Validar e quardar o xml assinado para envio posterior
    //Imprimir NFCe em 2 vias quando offline
    MemoCupomTEF.Lines.Add('NFCe Off-Line');
    ACBrNFe1.NotasFiscais.Assinar;
    ACBrNFe1.NotasFiscais.Validar;
  end;

  MemoCupomTEF.Lines.Add('Imprimindo NFCe');
  if  Assigned( ACBrNFe1.DANFE ) then
    ACBrNFe1.NotasFiscais.Imprimir;

  MemoCupomTEF.Lines.Add('Imprimindo Transa��es/Comprovante TEF');
  ACBrTEFD1.ImprimirTransacoesPendentes;
  estadoSimuladoEcf := tpsLivre;

end;

procedure TfrmNFCe.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;
 C : TACBrTEFDTipo;


 L : TACBrTEFDTipo;
 M : TACBrECFModelo;



begin
  cbSSLLib.Items.Clear ;
  For T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) ) ;
  cbSSLLib.ItemIndex := 0 ;

  cbCryptLib.Items.Clear ;
  For U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) ) ;
  cbCryptLib.ItemIndex := 0 ;

  cbHttpLib.Items.Clear ;
  For V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) ) ;
  cbHttpLib.ItemIndex := 0 ;

  cbXmlSignLib.Items.Clear ;
  For X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) ) ;
  cbXmlSignLib.ItemIndex := 0 ;

  cbSSLType.Items.Clear ;
  For Y := Low(TSSLType) to High(TSSLType) do
    cbSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) ) ;
  cbSSLType.ItemIndex := 0 ;

  cbFormaEmissao.Items.Clear ;
  For I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) ) ;
  cbFormaEmissao.Items[0] := 'teNormal' ;
  cbFormaEmissao.ItemIndex := 0 ;

  cbModeloDF.Items.Clear ;
  For J := Low(TpcnModeloDF) to High(TpcnModeloDF) do
     cbModeloDF.Items.Add( GetEnumName(TypeInfo(TpcnModeloDF), integer(J) ) ) ;
  cbModeloDF.Items[0] := 'moNFec' ;
  cbModeloDF.ItemIndex := 0 ;

  cbVersaoDF.Items.Clear ;
  For K := Low(TpcnVersaoDF) to High(TpcnVersaoDF) do
     cbVersaoDF.Items.Add( GetEnumName(TypeInfo(TpcnVersaoDF), integer(K) ) ) ;
  cbVersaoDF.Items[0] := 've310' ;
  cbVersaoDF.ItemIndex := 0 ;

  LerConfiguracao;
//  PageControl3.ActivePage := tsNFe;
  //pgRespostas.ActivePageIndex := 2;

  cbxGP.Items.Clear ;
  For L := Low(TACBrTEFDTipo) to High(TACBrTEFDTipo) do
     cbxGP.Items.Add( GetEnumName(TypeInfo(TACBrTEFDTipo), integer(L) ) ) ;
  cbxGP.Items[0] := 'Todos' ;
  cbxGP.ItemIndex := 0 ;

  cbxModelo.Items.Clear ;
  For M := Low(TACBrECFModelo) to High(TACBrECFModelo) do
     cbxModelo.Items.Add( GetEnumName(TypeInfo(TACBrECFModelo), integer(M) ) ) ;
  cbxModelo.Items[0] := 'Procurar' ;
  cbxModelo.ItemIndex := 0 ;

  cbxGP.Items.Clear ;
  For C := Low(TACBrTEFDTipo) to High(TACBrTEFDTipo) do
     cbxGP.Items.Add( GetEnumName(TypeInfo(TACBrTEFDTipo), integer(C) ) ) ;
  cbxGP.Items[0] := 'Todos' ;
  cbxGP.ItemIndex := 1 ;

  cbxGP1.Items.Assign(cbxGP.Items);
  cbxGP1.ItemIndex := 1 ;

  travarComponentesTEF(False);


  ACBrNFe1.Configuracoes.WebServices.Salvar := true;

end;

procedure TfrmNFCe.FormShow(Sender: TObject);
Var
 idLoja : string;
begin
  idLoja := DM.LOJA;
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Open;

  DM.cdsNFCe.Close;
  DM.cdsNFCe.Params[0].AsInteger := StrToInt(idLoja);
  DM.cdsNFCe.Open;

  if DM.cdsNFCe.RecordCount > 0 then
  begin
    DM.cdsItemNFCe.Close;
    DM.cdsItemNFCe.Params[0].AsInteger := DM.cdsNFCeID_NFCE.AsInteger;
    DM.cdsItemNFCe.Open;

    DM.cdsPagamentoNFCe.Close;
    DM.cdsPagamentoNFCe.Params[0].AsInteger := DM.cdsNFCeID_NFCE.AsInteger;
    DM.cdsPagamentoNFCe.Open;

    edValorVenda.Text := FloatToStr(DM.cdsNFCeVL_TOTAL_NOTA.AsFloat);
    EditSaldoRestante.Text := FloatToStr(DM.cdsNFCeVL_TOTAL_NOTA.AsFloat);
  end;

  if Label19.Caption = '0' then
     Label19.Caption := '  Produ��o '
  else
     Label19.Caption := ' Homologa��o ';

     if (not DM.cdsPagamentoNFCe.IsEmpty) then
     begin
       BtnEnviar.Enabled := True;
     end
     else
     begin
       BtnEnviar.Enabled := False;
     end;

end;

procedure TfrmNFCe.GerarNFCe(NumNFe: String);
Var
  aNumIten : Integer;
  vSt,vTotSt, ST,TOTST   : Double;
begin
  vSt := 0;
  vTotSt := 0;

  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Ide.natOp     := 'VENDA';
     Ide.indPag    := ipVista;
     Ide.modelo    := 65;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := now;//DM.cdsNFCeDT_EMISSAO.AsDateTime;
     Ide.dSaiEnt   := now;//StrToDate(DateToStr(Date));
     Ide.hSaiEnt   := now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := teNormal;//TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     Ide.tpImp     := tiNFCe;
     Ide.indFinal  := cfConsumidorFinal;
     Ide.indPres   := pcPresencial;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

      Emit.CNPJCPF           := edtEmitCNPJ.Text; //DM.cdsEmpresaCNPJ.AsString;
      Emit.IE                := edtEmitIE.Text;//DM.cdsEmpresaINS_EST.AsString;
      Emit.xNome             := edtEmitRazao.Text; //DM.cdsEmpresaR_SOCIAL.AsString;
      Emit.xFant             := edtEmitFantasia.Text; //DM.cdsEmpresaFANTASIA.AsString;

      Emit.EnderEmit.fone    := edtEmitFone.Text; //DM.cdsEmpresaTELEFONE.AsString;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;  //DM.cdsEmpresaENDERECO.AsString;
      Emit.EnderEmit.nro     := edtEmitNumero.Text; //DM.cdsEmpresaNUMERO.AsString;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;//DM.cdsEmpresaCOMPLEMENTO.AsString;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text; //DM.cdsEmpresaBAIRRO.AsString;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text; //DM.cdsEmpresaCIDADE.AsString;
      Emit.EnderEmit.UF      := edtEmitUF.Text; //DM.cdsEmpresaUF.AsString;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
//      Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
      Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

      Dest.CNPJCPF           := '05481336000137';// DM.cdsNFCECNPJ_CPF.AsString; 'criar funcao remover ponto e virgula aqui'  //
//      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
      Dest.ISUF              := '';
      Dest.xNome             :=  DM.cdsNFCeCLIENTE.AsString; //'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    :=  '';//DM.cdsNFCETELEFONE.AsString; //'1533243333';
      Dest.EnderDest.CEP     :=  StrToInt(DM.cdsNFCECEP.AsString); //18270170;
      Dest.EnderDest.xLgr    :=  DM.cdsNFCEENDERECO.AsString; //'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     :=  DM.cdsNFCENUMERO.AsString; //'973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro :=  DM.cdsNFCEBAIRRO.AsString; //'Centro';
      Dest.EnderDest.cMun    :=  StrToInt(DM.cdsNFCECODIGO_MUNIC.AsString); //3554003;
      Dest.EnderDest.xMun    :=  DM.cdsNFCECIDADE.AsString; //'Tatu�';
      Dest.EnderDest.UF      :=  DM.cdsNFCEUF.AsString; //'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

      Dest.indIEDest  := inNaoContribuinte;

//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos

      aNumIten := 0;
      DM.cdsItemNFCE.DisableControls;
      DM.cdsItemNFCE.First;

    while not DM.cdsItemNFCE.Eof do
    begin
      Inc(aNumIten);
      with Det.Add do
       begin
         Prod.nItem    := aNumIten; //1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    :=  DM.cdsItemNFCECODIGO.AsString;   //'123456';
         Prod.cEAN     :=  DM.cdsItemNFCECD_BARRA.AsString; //'7896523206646';
         Prod.xProd    :=  DM.cdsItemNFCEDESCRICAO.AsString; // 'Descri��o do Produto';
         Prod.NCM      :=  DM.cdsItemNFCENCM.AsString;  //'94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     :=  DM.cdsItemNFCeCFOP.AsString;//'5101';
         Prod.uCom     :=  DM.cdsItemNFCEUNIDADE.AsString;  //'UN';
         Prod.qCom     :=  DM.cdsItemNFCEQUANT.AsFloat; //1 ;
         Prod.vUnCom   :=  DM.cdsItemNFCeVL_UNI.AsFloat; //100;
         Prod.vProd    :=  DM.cdsItemNFCeVL_TOTAL.AsFloat; //100 ;

         Prod.cEANTrib  := DM.cdsItemNFCECD_BARRA.AsString; //'7896523206646';
         Prod.uTrib     := DM.cdsItemNFCEUNIDADE.AsString; //'UN';
         Prod.qTrib     := DM.cdsItemNFCEQUANT.AsFloat; //1;
         Prod.vUnTrib   := DM.cdsItemNFCeVL_UNI.AsFloat; //100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         Prod.CEST := '1111111';

//         infAdProd      := 'Informa��o Adicional do Produto';

         with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;
            with ICMS do
             begin
              ICMS.orig    := oeNacional;
              if DM.cdsItemNFCeCST.Value = '101' then
                 CSOSN          := csosn101
              else
              if DM.cdsItemNFCeCST.Value = '102' then
                 CSOSN          := csosn102
              else
              if DM.cdsItemNFCeCOD_CST.Value = '10' then
                 CST          := cst10
              else
              if DM.cdsItemNFCeCOD_CST.Value = '20' then
                 CST          := cst20
              else
              if DM.cdsItemNFCeCOD_CST.Value = '30' then
                 CST          := cst30
              else
              if DM.cdsItemNFCeCOD_CST.Value = '40' then
                 CST          := cst40
              else
              if DM.cdsItemNFCeCOD_CST.Value = '41' then
                 CST          := cst41
              else
              if DM.cdsItemNFCeCOD_CST.Value = '45' then
                 CST          := cst45
              else
              if DM.cdsItemNFCeCOD_CST.Value = '50' then
                 CST          := cst50
              else
              if DM.cdsItemNFCeCOD_CST.Value = '51' then
                 CST          := cst51
              else
              if DM.cdsItemNFCeCOD_CST.Value = '60' then
                 CST          := cst60
              else
              if DM.cdsItemNFCeCOD_CST.Value = '70' then
                 CST          := cst70
              else
              if DM.cdsItemNFCeCOD_CST.Value = '80' then
                 CST          := cst80
              else
              if DM.cdsItemNFCeCOD_CST.Value = '90' then
                 CST          := cst90;

               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := DM.cdsItemNFCEVL_TOTAL.AsFloat; //100
               ICMS.pICMS   := DM.cdsItemNFCeALIQ_ICMS.AsFloat; // 18;
               ICMS.vICMS   := (DM.cdsItemNFCEVL_TOTAL.AsFloat * DM.cdsItemNFCeALIQ_ICMS.AsFloat) / 10000;
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;

               // partilha do ICMS e fundo de probreza
            {   with ICMSUFDest do
                begin
                  vBCUFDest      := 0.00;
                  pFCPUFDest     := 0.00;
                  pICMSUFDest    := 0.00;
                  pICMSInter     := 0.00;
                  pICMSInterPart := 0.00;
                  vFCPUFDest     := 0.00;
                  vICMSUFDest    := 0.00;
                  vICMSUFRemet   := 0.00;
                end;}
             end;
{            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
}
//Grupo para servi�os
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      {       end;}
          end;
       end ;

//Adicionando Servi�os
{      with Det.Add do
       begin
         Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descri��o do Servi�o';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informa��o Adicional do Servi�o';

//Grupo para servi�os
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
      Total.ICMSTot.vBC     := DM.cdsNFCeBC_VL_ICMS_ST.AsFloat; //100;
      Total.ICMSTot.vICMS   := dm.cdsNFCeVL_ICMS_ST.AsFloat; //(DM.cdsItemNFCEVL_TOTAL.AsFloat * DM.cdsItemNFCeALIQ_ICMS.AsFloat) / 10000;//18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := DM.cdsNFCeVL_TOTAL_PRODUTO.AsFloat; //100
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := DM.cdsNFCeVL_TOTAL_NOTA.AsFloat;//00;

      // partilha do icms e fundo de probreza
      Total.ICMSTot.vFCPUFDest   := 0.00;
      Total.ICMSTot.vICMSUFDest  := 0.00;
      Total.ICMSTot.vICMSUFRemet := 0.00;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}
       DM.cdsItemNFCE.Next;
    end;
      DM.cdsItemNFCE.EnableControls;

      Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

{      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;
 }
     DM.cdsPagamentoNFCe.DisableControls;
     DM.cdsPagamentoNFCe.First;
     while NOT DM.cdsPagamentoNFCe.Eof DO
     begin
      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         if (DM.cdsPagamentoNFCeID_PLANO_PAGAMENTO.AsInteger = 1) and (DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 1) then
         begin
           tPag := fpDinheiro;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 2 then
         begin
           tPag := fpDuplicataMercantil;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 3 then
         begin
           tPag := fpCheque;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 4 then
         begin
           tPag := fpCartaoCredito;
           tBand := bcHipercard;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
           tpIntegra := tiPagNaoIntegrado; //sem TEF
         end

         else if (DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger > 5) and (DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger <9 ) then
         begin
           tPag := fpCartaoDebito;
           tpIntegra := tiPagNaoIntegrado; //sem TEF
           if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 6 then
           tBand := bcVisa;
           if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 7 then
           tBand := bcMasterCard;
           if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 8 then
           tBand := bcElo;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger > 8 then
         begin
           tPag := fpCartaoCredito;
           tBand := bcMasterCard;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
           tpIntegra := tiPagNaoIntegrado; //sem TEF
         end


       end;
       DM.cdsPagamentoNFCe.Next;
     end;
     DM.cdsPagamentoNFCe.EnableControls;

{      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  'Tributos Apoximados '+FormatFloat('###,###0.00',DM.cdsNFCeVL_ALIQFED.AsFloat)+'Fed '+#13
                                                   +' '+FormatFloat('###,###0.00',DM.cdsNFCeVL_ALIQEST.AsFloat)+'Est '+#13
                                                   +' '+FormatFloat('###,###0.00',DM.cdsNFCeVL_ALIQMUN.AsFloat)+'Mun '+#13+
                                                   ' Fonte IBPT ';
 }

{      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end; }
   end;
   ACBrNFeDANFCeFortes1.vTribFed := DM.cdsNFCeVL_ALIQFED.AsFloat;
   ACBrNFeDANFCeFortes1.vTribEst := DM.cdsNFCeVL_ALIQEST.AsFloat;
   ACBrNFeDANFCeFortes1.vTribMun := DM.cdsNFCeVL_ALIQMUN.AsFloat;


   ACBrNFe1.NotasFiscais.GerarNFe;

end;



procedure TfrmNFCe.GerarNFCeTEF(NumNFe: String; valorVenda: Currency;
  emissaoOffLine: Boolean);
Var
  aNumIten : Integer;
  vSt,vTotSt, ST,TOTST   : Double;
begin
  vSt := 0;
  vTotSt := 0;

  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Ide.natOp     := 'VENDA';
     Ide.indPag    := ipVista;
     Ide.modelo    := 65;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := now;//DM.cdsNFCeDT_EMISSAO.AsDateTime;
     Ide.dSaiEnt   := now;//StrToDate(DateToStr(Date));
     Ide.hSaiEnt   := now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := teNormal;//TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     Ide.tpImp     := tiNFCe;
     Ide.indFinal  := cfConsumidorFinal;
     Ide.indPres   := pcPresencial;

     if emissaoOffLine then
     begin
       Ide.dhCont := NOW;
       Ide.xJust  := 'Problemas t�cnicos no envio do cupom eletr�nico';
       Ide.tpEmis := teOffLine;
       ACBrNFe1.Configuracoes.Geral.FormaEmissao := teOffLine;
     end
     else
     begin
       Ide.tpEmis    := teNormal;
       ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNormal;
     end;


//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

      Emit.CNPJCPF           := edtEmitCNPJ.Text; //DM.cdsEmpresaCNPJ.AsString;
      Emit.IE                := edtEmitIE.Text;//DM.cdsEmpresaINS_EST.AsString;
      Emit.xNome             := edtEmitRazao.Text; //DM.cdsEmpresaR_SOCIAL.AsString;
      Emit.xFant             := edtEmitFantasia.Text; //DM.cdsEmpresaFANTASIA.AsString;

      Emit.EnderEmit.fone    := edtEmitFone.Text; //DM.cdsEmpresaTELEFONE.AsString;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;  //DM.cdsEmpresaENDERECO.AsString;
      Emit.EnderEmit.nro     := edtEmitNumero.Text; //DM.cdsEmpresaNUMERO.AsString;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;//DM.cdsEmpresaCOMPLEMENTO.AsString;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text; //DM.cdsEmpresaBAIRRO.AsString;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text; //DM.cdsEmpresaCIDADE.AsString;
      Emit.EnderEmit.UF      := edtEmitUF.Text; //DM.cdsEmpresaUF.AsString;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
//      Emit.IM                := '2648800'; // Preencher no caso de existir servi�os na nota
//      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se � permitido
                                    // a inclus�o de servi�os na NFe
      Emit.CRT               := crtSimplesNacional;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

      Dest.CNPJCPF           := '05481336000137';// DM.cdsNFCECNPJ_CPF.AsString; 'criar funcao remover ponto e virgula aqui'  //
//      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
      Dest.ISUF              := '';
      Dest.xNome             :=  DM.cdsNFCeCLIENTE.AsString; //'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    :=  '';//DM.cdsNFCETELEFONE.AsString; //'1533243333';
      Dest.EnderDest.CEP     :=  StrToInt(DM.cdsNFCECEP.AsString); //18270170;
      Dest.EnderDest.xLgr    :=  DM.cdsNFCEENDERECO.AsString; //'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     :=  DM.cdsNFCENUMERO.AsString; //'973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro :=  DM.cdsNFCEBAIRRO.AsString; //'Centro';
      Dest.EnderDest.cMun    :=  StrToInt(DM.cdsNFCECODIGO_MUNIC.AsString); //3554003;
      Dest.EnderDest.xMun    :=  DM.cdsNFCECIDADE.AsString; //'Tatu�';
      Dest.EnderDest.UF      :=  DM.cdsNFCEUF.AsString; //'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

      Dest.indIEDest  := inNaoContribuinte;

//Use os campos abaixo para informar o endere�o de retirada quando for diferente do Remetente/Destinat�rio
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endere�o de entrega quando for diferente do Remetente/Destinat�rio
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}

//Adicionando Produtos

      aNumIten := 0;
      DM.cdsItemNFCE.DisableControls;
      DM.cdsItemNFCE.First;

    while not DM.cdsItemNFCE.Eof do
    begin
      Inc(aNumIten);
      with Det.Add do
       begin
         Prod.nItem    := aNumIten; //1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    :=  DM.cdsItemNFCECODIGO.AsString;   //'123456';
         Prod.cEAN     :=  DM.cdsItemNFCECD_BARRA.AsString; //'7896523206646';
         Prod.xProd    :=  DM.cdsItemNFCEDESCRICAO.AsString; // 'Descri��o do Produto';
         Prod.NCM      :=  DM.cdsItemNFCENCM.AsString;  //'94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     :=  DM.cdsItemNFCeCFOP.AsString;//'5101';
         Prod.uCom     :=  DM.cdsItemNFCEUNIDADE.AsString;  //'UN';
         Prod.qCom     :=  DM.cdsItemNFCEQUANT.AsFloat; //1 ;
         Prod.vUnCom   :=  DM.cdsItemNFCeVL_UNI.AsFloat; //100;
         Prod.vProd    :=  DM.cdsItemNFCeVL_TOTAL.AsFloat; //100 ;

         Prod.cEANTrib  := DM.cdsItemNFCECD_BARRA.AsString; //'7896523206646';
         Prod.uTrib     := DM.cdsItemNFCEUNIDADE.AsString; //'UN';
         Prod.qTrib     := DM.cdsItemNFCEQUANT.AsFloat; //1;
         Prod.vUnTrib   := DM.cdsItemNFCeVL_UNI.AsFloat; //100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         Prod.CEST := '1111111';

//         infAdProd      := 'Informa��o Adicional do Produto';

         with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;
            with ICMS do
             begin
              ICMS.orig    := oeNacional;
              if DM.cdsItemNFCeCST.Value = '101' then
                 CSOSN          := csosn101
              else
              if DM.cdsItemNFCeCST.Value = '102' then
                 CSOSN          := csosn102
              else
              if DM.cdsItemNFCeCOD_CST.Value = '10' then
                 CST          := cst10
              else
              if DM.cdsItemNFCeCOD_CST.Value = '20' then
                 CST          := cst20
              else
              if DM.cdsItemNFCeCOD_CST.Value = '30' then
                 CST          := cst30
              else
              if DM.cdsItemNFCeCOD_CST.Value = '40' then
                 CST          := cst40
              else
              if DM.cdsItemNFCeCOD_CST.Value = '41' then
                 CST          := cst41
              else
              if DM.cdsItemNFCeCOD_CST.Value = '45' then
                 CST          := cst45
              else
              if DM.cdsItemNFCeCOD_CST.Value = '50' then
                 CST          := cst50
              else
              if DM.cdsItemNFCeCOD_CST.Value = '51' then
                 CST          := cst51
              else
              if DM.cdsItemNFCeCOD_CST.Value = '60' then
                 CST          := cst60
              else
              if DM.cdsItemNFCeCOD_CST.Value = '70' then
                 CST          := cst70
              else
              if DM.cdsItemNFCeCOD_CST.Value = '80' then
                 CST          := cst80
              else
              if DM.cdsItemNFCeCOD_CST.Value = '90' then
                 CST          := cst90;

               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := DM.cdsItemNFCEVL_TOTAL.AsFloat; //100
               ICMS.pICMS   := DM.cdsItemNFCeALIQ_ICMS.AsFloat; // 18;
               ICMS.vICMS   := (DM.cdsItemNFCEVL_TOTAL.AsFloat * DM.cdsItemNFCeALIQ_ICMS.AsFloat) / 10000;
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;

               // partilha do ICMS e fundo de probreza
            {   with ICMSUFDest do
                begin
                  vBCUFDest      := 0.00;
                  pFCPUFDest     := 0.00;
                  pICMSUFDest    := 0.00;
                  pICMSInter     := 0.00;
                  pICMSInterPart := 0.00;
                  vFCPUFDest     := 0.00;
                  vICMSUFDest    := 0.00;
                  vICMSUFRemet   := 0.00;
                end;}
             end;
{            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
}
//Grupo para servi�os
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
      {       end;}
          end;
       end ;

//Adicionando Servi�os
{      with Det.Add do
       begin
         Prod.nItem    := 1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descri��o do Servi�o';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informa��o Adicional do Servi�o';

//Grupo para servi�os
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := 1402; // Preencha este campo usando a tabela dispon�vel
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;
}
      Total.ICMSTot.vBC     := DM.cdsNFCeBC_VL_ICMS_ST.AsFloat; //100;
      Total.ICMSTot.vICMS   := dm.cdsNFCeVL_ICMS_ST.AsFloat; //(DM.cdsItemNFCEVL_TOTAL.AsFloat * DM.cdsItemNFCeALIQ_ICMS.AsFloat) / 10000;//18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := DM.cdsNFCeVL_TOTAL_PRODUTO.AsFloat; //100
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := DM.cdsNFCeVL_TOTAL_NOTA.AsFloat;//00;

      // partilha do icms e fundo de probreza
      Total.ICMSTot.vFCPUFDest   := 0.00;
      Total.ICMSTot.vICMSUFDest  := 0.00;
      Total.ICMSTot.vICMSUFRemet := 0.00;

      Total.ISSQNtot.vServ   := 0;
      Total.ISSQNTot.vBC     := 0;
      Total.ISSQNTot.vISS    := 0;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}
       DM.cdsItemNFCE.Next;
    end;
      DM.cdsItemNFCE.EnableControls;

      Transp.modFrete := mfSemFrete; // NFC-e n�o pode ter FRETE

{      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;
 }
     DM.cdsPagamentoNFCe.DisableControls;
     DM.cdsPagamentoNFCe.First;
     while NOT DM.cdsPagamentoNFCe.Eof DO
     begin
      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         if (DM.cdsPagamentoNFCeID_PLANO_PAGAMENTO.AsInteger = 1) and (DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 1) then
         begin
           tPag := fpDinheiro;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 2 then
         begin
           tPag := fpDuplicataMercantil;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 3 then
         begin
           tPag := fpCheque;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 4 then
         begin
           tPag := fpCartaoCredito;
           tBand := bcHipercard;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
           tpIntegra := tiPagNaoIntegrado; //sem TEF
         end

         else if (DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger > 5) and (DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger <9 ) then
         begin
           tPag := fpCartaoDebito;
           tpIntegra := tiPagNaoIntegrado; //sem TEF
           if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 6 then
           tBand := bcVisa;
           if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 7 then
           tBand := bcMasterCard;
           if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger = 8 then
           tBand := bcElo;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
         end
         else if DM.cdsPagamentoNFCeID_FORMA_PAGAMENTO.AsInteger > 8 then
         begin
           tPag := fpCartaoCredito;
           tBand := bcMasterCard;
           vPag := DM.cdsPagamentoNFCeVL_PAGAMENTO.AsFloat;//100;
           tpIntegra := tiPagNaoIntegrado; //sem TEF
         end


       end;
       DM.cdsPagamentoNFCe.Next;
     end;
     DM.cdsPagamentoNFCe.EnableControls;

{      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  'Tributos Apoximados '+FormatFloat('###,###0.00',DM.cdsNFCeVL_ALIQFED.AsFloat)+'Fed '+#13
                                                   +' '+FormatFloat('###,###0.00',DM.cdsNFCeVL_ALIQEST.AsFloat)+'Est '+#13
                                                   +' '+FormatFloat('###,###0.00',DM.cdsNFCeVL_ALIQMUN.AsFloat)+'Mun '+#13+
                                                   ' Fonte IBPT ';
 }

{      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end; }
   end;
   ACBrNFeDANFCeFortes1.vTribFed := DM.cdsNFCeVL_ALIQFED.AsFloat;
   ACBrNFeDANFCeFortes1.vTribEst := DM.cdsNFCeVL_ALIQEST.AsFloat;
   ACBrNFeDANFCeFortes1.vTribMun := DM.cdsNFCeVL_ALIQMUN.AsFloat;


   ACBrNFe1.NotasFiscais.GerarNFe;


end;

procedure TfrmNFCe.LerConfiguracao;
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
     cbSSLLib.ItemIndex:= Ini.ReadInteger( 'Certificado','SSLLib' ,0) ;
     cbCryptLib.ItemIndex := Ini.ReadInteger( 'Certificado','CryptLib' , 0) ;
     cbHttpLib.ItemIndex := Ini.ReadInteger( 'Certificado','HttpLib' , 0) ;
     cbXmlSignLib.ItemIndex := Ini.ReadInteger( 'Certificado','XmlSignLib' , 0) ;
     edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
     edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
     edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
     ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := edtCaminho.Text;
     ACBrNFe1.Configuracoes.Certificados.Senha       := edtSenha.Text;
     ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;

      cbxAtualizarXML.Checked    := Ini.ReadBool(   'Geral','AtualizarXML',True) ;
      cbxExibirErroSchema.Checked    := Ini.ReadBool(   'Geral','ExibirErroSchema',True) ;
      edtFormatoAlerta.Text    := Ini.ReadString( 'Geral','FormatoAlerta'  ,'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.') ;
      cbFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      cbModeloDF.ItemIndex := Ini.ReadInteger( 'Geral','ModeloDF',0) ;
      cbVersaoDF.ItemIndex := Ini.ReadInteger( 'Geral','VersaoDF',0) ;
      edtIdToken.Text      := Ini.ReadString( 'Geral','IdToken'  ,'') ;
      edtToken.Text        := Ini.ReadString( 'Geral','Token'  ,'') ;
      ckSalvar.Checked     := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      cbxRetirarAcentos.Checked := Ini.ReadBool(   'Geral','RetirarAcentos',True) ;
      edtPathLogs.Text     := Ini.ReadString( 'Geral','PathSalvar'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Logs') ;
      edtPathSchemas.Text  := Ini.ReadString( 'Geral','PathSchemas'  ,PathWithDelim(ExtractFilePath(Application.ExeName))+'Schemas\'+GetEnumName(TypeInfo(TpcnVersaoDF), integer(cbVersaoDF.ItemIndex) )) ;

      ACBrNFe1.SSL.DescarregarCertificado;

      with ACBrNFe1.Configuracoes.Geral do
       begin
         SSLLib                := TSSLLib(cbSSLLib.ItemIndex);
         SSLCryptLib           := TSSLCryptLib(cbCryptLib.ItemIndex);
         SSLHttpLib            := TSSLHttpLib(cbHttpLib.ItemIndex);
         SSLXmlSignLib         := TSSLXmlSignLib(cbXmlSignLib.ItemIndex);
         AtualizaSSLLibsCombo;
         ExibirErroSchema := cbxExibirErroSchema.Checked;
         RetirarAcentos   := cbxRetirarAcentos.Checked;
         FormatoAlerta    := edtFormatoAlerta.Text;
         FormaEmissao     := TpcnTipoEmissao(cbFormaEmissao.ItemIndex);
         ModeloDF         := TpcnModeloDF(cbModeloDF.ItemIndex);
         VersaoDF         := TpcnVersaoDF(cbVersaoDF.ItemIndex);
         IdCSC            := edtIdToken.Text;
         CSC              := edtToken.Text;
         Salvar           := ckSalvar.Checked;
       end;

      cbUF.ItemIndex        := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','SP')) ;
      rgTipoAmb.ItemIndex   := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      Label19.Caption       := IntToStr(Ini.ReadInteger( 'WebService','Ambiente'  ,0)) ;
      cbxVisualizar.Checked  := Ini.ReadBool(    'WebService','Visualizar',False) ;
      cbxSalvarSOAP.Checked := Ini.ReadBool(    'WebService','SalvarSOAP',False) ;
      cbxAjustarAut.Checked  := Ini.ReadBool(   'WebService','AjustarAut' ,False) ;
      edtAguardar.Text       := Ini.ReadString( 'WebService','Aguardar'  ,'0') ;
      edtTentativas.Text     := Ini.ReadString( 'WebService','Tentativas','5') ;
      edtIntervalo.Text      := Ini.ReadString( 'WebService','Intervalo' ,'0') ;
      seTimeOut.Value        := Ini.ReadInteger('WebService','TimeOut'  ,5000) ;
      cbSSLType.ItemIndex    := Ini.ReadInteger('WebService','SSLType' , 0) ;
      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

      with ACBrNFe1.Configuracoes.WebServices do
       begin
         UF         := cbUF.Text;
         Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
         Visualizar := cbxVisualizar.Checked;
         Salvar     := cbxSalvarSOAP.Checked;
         AjustaAguardaConsultaRet := cbxAjustarAut.Checked;
         if NaoEstaVazio(edtAguardar.Text)then
            AguardarConsultaRet := ifThen(StrToInt(edtAguardar.Text)<1000,StrToInt(edtAguardar.Text)*1000,StrToInt(edtAguardar.Text))
         else
            edtAguardar.Text := IntToStr(AguardarConsultaRet);

         if NaoEstaVazio(edtTentativas.Text) then
            Tentativas          := StrToInt(edtTentativas.Text)
         else
            edtTentativas.Text := IntToStr(Tentativas);

         if NaoEstaVazio(edtIntervalo.Text) then
            IntervaloTentativas := ifThen(StrToInt(edtIntervalo.Text)<1000,StrToInt(edtIntervalo.Text)*1000,StrToInt(edtIntervalo.Text))
         else
            edtIntervalo.Text := IntToStr(ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas);

         TimeOut := seTimeOut.Value;
         ProxyHost := edtProxyHost.Text;
         ProxyPort := edtProxyPorta.Text;
         ProxyUser := edtProxyUser.Text;
         ProxyPass := edtProxySenha.Text;
       end;

      ACBrNFe1.SSL.SSLType := TSSLType( cbSSLType.ItemIndex );

      cbxSalvarArqs.Checked       := Ini.ReadBool(   'Arquivos','Salvar'     ,false);
      cbxPastaMensal.Checked      := Ini.ReadBool(   'Arquivos','PastaMensal',false);
      cbxAdicionaLiteral.Checked  := Ini.ReadBool(   'Arquivos','AddLiteral' ,false);
      cbxEmissaoPathNFe.Checked   := Ini.ReadBool(   'Arquivos','EmissaoPathNFe',false);
      cbxSalvaPathEvento.Checked  := Ini.ReadBool(   'Arquivos','SalvarPathEvento',false);
      cbxSepararPorCNPJ.Checked   := Ini.ReadBool(   'Arquivos','SepararPorCNPJ',false);
      cbxSepararPorModelo.Checked := Ini.ReadBool(   'Arquivos','SepararPorModelo',false);
      edtPathNFe.Text             := Ini.ReadString( 'Arquivos','PathNFe'    ,'') ;
      edtPathCan.Text             := Ini.ReadString( 'Arquivos','PathCan'    ,'') ;
      edtPathInu.Text             := Ini.ReadString( 'Arquivos','PathInu'    ,'') ;
      edtPathDPEC.Text            := Ini.ReadString( 'Arquivos','PathDPEC'   ,'') ;
      edtPathCCe.Text             := Ini.ReadString( 'Arquivos','PathCCe'   ,'') ;
      edtPathEvento.Text          := Ini.ReadString( 'Arquivos','PathEvento','') ;

      with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := cbxSalvarArqs.Checked;
         SepararPorMes      := cbxPastaMensal.Checked;
         AdicionarLiteral   := cbxAdicionaLiteral.Checked;
         EmissaoPathNFe     := cbxEmissaoPathNFe.Checked;
         SalvarEvento       := cbxSalvaPathEvento.Checked;
         SepararPorCNPJ     := cbxSepararPorCNPJ.Checked;
         SepararPorModelo   := cbxSepararPorModelo.Checked;
         PathSalvar         := edtPathLogs.Text;
         PathSchemas        := edtPathSchemas.Text;
         PathNFe            := edtPathNFe.Text;
         PathInu            := edtPathInu.Text;
         PathEvento         := edtPathEvento.Text;
       end;

      edtEmitCNPJ.Text       := Ini.ReadString( 'Emitente','CNPJ'       ,'') ;
      edtEmitIE.Text         := Ini.ReadString( 'Emitente','IE'         ,'') ;
      edtEmitRazao.Text      := Ini.ReadString( 'Emitente','RazaoSocial','') ;
      edtEmitFantasia.Text   := Ini.ReadString( 'Emitente','Fantasia'   ,'') ;
      edtEmitFone.Text       := Ini.ReadString( 'Emitente','Fone'       ,'') ;
      edtEmitCEP.Text        := Ini.ReadString( 'Emitente','CEP'        ,'') ;
      edtEmitLogradouro.Text := Ini.ReadString( 'Emitente','Logradouro' ,'') ;
      edtEmitNumero.Text     := Ini.ReadString( 'Emitente','Numero'     ,'') ;
      edtEmitComp.Text       := Ini.ReadString( 'Emitente','Complemento','') ;
      edtEmitBairro.Text     := Ini.ReadString( 'Emitente','Bairro'     ,'') ;
      edtEmitCodCidade.Text  := Ini.ReadString( 'Emitente','CodCidade'  ,'') ;
      edtEmitCidade.Text     :=Ini.ReadString( 'Emitente','Cidade'     ,'') ;
      edtEmitUF.Text         := Ini.ReadString( 'Emitente','UF'         ,'') ;

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'DANFE','Tipo'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'DANFE','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;
  finally
     Ini.Free ;
  end;
end;

procedure TfrmNFCe.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');

  if ACBrNFe1.NotasFiscais.Count > 0then
    MemoResp.Lines.Add('Empresa: '+ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);

end;

procedure TfrmNFCe.travarComponentesTEF(abriuVenda: Boolean);
begin
  {EditNumNFCe.Enabled           := not(abriuVenda);
  edValorVenda.Enabled          := not(abriuVenda);
  ButtonIniciaVenda.Enabled     := not(abriuVenda);

  ButtonCancelarVenda.Enabled   := abriuVenda;
  edValorPagamento.Enabled      := abriuVenda;
  ButtonPagarEmDinheiro.Enabled := abriuVenda;
  ButtonPagarEmCartao.Enabled   := abriuVenda;
  }
end;

function TfrmNFCe.verificarSaldoRestante: Currency;
begin
  EditSaldoRestante.Text := CurrToStr(StringToFloatDef(DM.cdsNFCeVL_TOTAL_NOTA.Text, 0) - StringToFloatDef(EditTotalPago.Text, 0));

  Result := StringToFloatDef(EditTotalPago.Text, 0);

  if StringToFloatDef(EditTotalPago.Text, 0) = StringToFloatDef(DM.cdsNFCeVL_TOTAL_NOTA.Text, 0) then
    Result := 0;

end;

end.