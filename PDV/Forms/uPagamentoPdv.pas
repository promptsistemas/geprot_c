unit uPagamentoPdv;

interface

uses
  Windows, Messages, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, FMTBcd, DB, DBClient, Provider,
  SqlExpr, DBCtrls, Mask, Grids, DBGrids, DateUtils, Vcl.Imaging.jpeg,
  ACBrDANFCeFortesFr, ACBrNFeDANFeESCPOS, ACBrMail,
  ACBrPosPrinter, ACBrNFeDANFEClass, ACBrNFeDANFeRLClass, ACBrBase, ACBrDFe,
  ACBrNFe,pcnConversao,Spin, Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw, pcnRetConsReciNFe,
  XMLIntf, XMLDoc, zlib, ACBrUtil,IniFiles,System.SysUtils, System.Variants, System.Classes,


  pcnNFe,
  pcnConversaoNFe, ACBrDFeConfiguracoes, pcnAuxiliar, ACBrDFeSSL, pcnNFeRTXT,
  FileCtrl,ACBrNFeNotasFiscais, ACBrDFeOpenSSL,ShellAPI;



type
  TfrmPagamentoPdv = class(TForm)
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    L_VALOR_PAGO: TLabel;
    Label12: TLabel;
    L_VALOR_DIFERENCA: TLabel;
    Label10: TLabel;
    BB_CANCELAR: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    GB_ESPECIE: TGroupBox;
    Label7: TLabel;
    DBText1: TDBText;
    DBEdit6: TDBEdit;
    Edit6: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BB_CF: TBitBtn;
    GB_FORMA_PAGAMENTO: TGroupBox;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    P_TROCO: TPanel;
    L_TROCO: TLabel;
    Label9: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    qTipoPagamento: TSQLQuery;
    dspTipoPagamento: TDataSetProvider;
    cdsTipoPagamento: TClientDataSet;
    dsTipoPagamento: TDataSource;
    qContasReceber: TSQLQuery;
    qContasReceberID_CONTAS_RECEBER: TIntegerField;
    qContasReceberID_PEDIDO: TIntegerField;
    qContasReceberID_CLIENTE: TIntegerField;
    qContasReceberID_VENDEDOR: TIntegerField;
    qContasReceberID_USUARIO: TIntegerField;
    qContasReceberDT_EMISSAO: TDateField;
    qContasReceberDT_VENCIMENTO: TDateField;
    qContasReceberDT_PAGAMENTO: TDateField;
    qContasReceberQT_DIAS: TIntegerField;
    qContasReceberQT_PARCELA: TIntegerField;
    qContasReceberNR_DOC: TStringField;
    qContasReceberVL_COMPRA: TFMTBCDField;
    qContasReceberVL_PARCELA: TFMTBCDField;
    qContasReceberNR_PARCELA: TStringField;
    qContasReceberSTATUS: TStringField;
    qContasReceberCLIENTE: TStringField;
    qContasReceberVENEDOR: TStringField;
    qContasReceberID_FORMA_PAGAMENTO: TIntegerField;
    qContasReceberFORMA_PAGAMENTO: TStringField;
    dspContasReceber: TDataSetProvider;
    cdsContasReceber: TClientDataSet;
    cdsContasReceberID_CONTAS_RECEBER: TIntegerField;
    cdsContasReceberID_PEDIDO: TIntegerField;
    cdsContasReceberID_CLIENTE: TIntegerField;
    cdsContasReceberID_VENDEDOR: TIntegerField;
    cdsContasReceberID_USUARIO: TIntegerField;
    cdsContasReceberDT_EMISSAO: TDateField;
    cdsContasReceberDT_VENCIMENTO: TDateField;
    cdsContasReceberDT_PAGAMENTO: TDateField;
    cdsContasReceberQT_DIAS: TIntegerField;
    cdsContasReceberQT_PARCELA: TIntegerField;
    cdsContasReceberNR_DOC: TStringField;
    cdsContasReceberVL_COMPRA: TFMTBCDField;
    cdsContasReceberVL_PARCELA: TFMTBCDField;
    cdsContasReceberNR_PARCELA: TStringField;
    cdsContasReceberSTATUS: TStringField;
    cdsContasReceberCLIENTE: TStringField;
    cdsContasReceberVENEDOR: TStringField;
    cdsContasReceberID_FORMA_PAGAMENTO: TIntegerField;
    cdsContasReceberFORMA_PAGAMENTO: TStringField;
    dsContasReceber: TDataSource;
    DBGrid3: TDBGrid;
    qTipoPagamentoID_FORMA_PAGAMENTO: TIntegerField;
    qTipoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    cdsTipoPagamentoID_FORMA_PAGAMENTO: TIntegerField;
    cdsTipoPagamentoDESCRICAO_PAGAMENTO: TStringField;
    qContasReceberID_PLANO_PAGAMENTO: TIntegerField;
    cdsContasReceberID_PLANO_PAGAMENTO: TIntegerField;
    qContasReceberID_LOJA: TIntegerField;
    cdsContasReceberID_LOJA: TIntegerField;
    qContasReceberQT_DIAS_ATRAZO: TIntegerField;
    cdsContasReceberQT_DIAS_ATRAZO: TIntegerField;
    spSaidaEstoqueCupom: TSQLStoredProc;
    dspSaidaEstoqueCupom: TDataSetProvider;
    cdsSaidaEstoqueCupom: TClientDataSet;
    btnCriarEnviarNFCe: TButton;
    ACBrNFe1: TACBrNFe;
    ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
    ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
    ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
    ACBrMail1: TACBrMail;
    ACBrPosPrinter1: TACBrPosPrinter;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet4: TTabSheet;
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
    TabSheet2: TTabSheet;
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
    TabSheet3: TTabSheet;
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
    PageControl3: TPageControl;
    tsNFe: TTabSheet;
    btnImprimir: TButton;
    btnConsultar: TButton;
    btnValidarXML: TButton;
    btnStatusServ: TButton;
    btnCancNF: TButton;
    btnCriarEnviar: TButton;
    btnInutilizar: TButton;
    btnGerarNFE: TButton;
    btnConsCad: TButton;
    btnGerarPDF: TButton;
    btnEnviarEmail: TButton;
    btnConsultarRecibo: TButton;
    btnImportarXML: TButton;
    btnConsultarChave: TButton;
    btnCancelarChave: TButton;
    btnGerarTXT: TButton;
    btnAdicionarProtNFe: TButton;
    btnCarregarXMLEnviar: TButton;
    btnCartadeCorrecao: TButton;
    btnValidarAssinatura: TButton;
    btnManifDestConfirmacao: TButton;
    btnNfeDestinadas: TButton;
    btnImprimirCCe: TButton;
    btnEnviarEvento: TButton;
    btnDistribuicaoDFe: TButton;
    btnInutilizarImprimir: TButton;
    btnValidarRegrasNegocio: TButton;
    tsNFCe: TTabSheet;
    Button1: TButton;
    PMENU: TPanel;
    SpeedButton1: TSpeedButton;
    BB_ENCERRAR: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    pgRespostas: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    TabSheet10: TTabSheet;
    memoRespWS: TMemo;
    Dados: TTabSheet;
    MemoDados: TMemo;
    TabSheet11: TTabSheet;
    TreeViewRetornoConsulta: TTreeView;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure BB_CFClick(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure dspContasReceberGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: string);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure btnCriarEnviarNFCeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_ENCERRARClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    Procedure SomaValorPago;
  public
    { Public declarations }
    Enviado : string;
   Procedure GerarParcelas;
    Procedure GravarVendaAvista;
    Procedure GravaEstoque;
    function UltimoDia: integer;
    procedure GeraCupomFiscal;
    procedure GerarNFCe(NumNFe : String);
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    procedure LerConfiguracao ;
    procedure AtualizaSSLLibsCombo;



  end;

var
  frmPagamentoPdv: TfrmPagamentoPdv;
  Diferenca : Double;
  DiasDoMes : TDate;

implementation

uses U_LIB, UD_PESQUISA, uDm, uPdv, uMenuCaixa, uConfigParamentros,
strutils, math, TypInfo, synacode, blcksock;



{$R *.dfm}

procedure TfrmPagamentoPdv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Enviado := '';
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  cdsContasReceber.Close;
  frmPdv.L_PRODUTO.Caption:='';
  frmPagamentoPdv := nil;
  Action := caFree;
end;

procedure TfrmPagamentoPdv.FormCreate(Sender: TObject);
var
 T : TSSLLib;
 I : TpcnTipoEmissao ;
 J : TpcnModeloDF;
 K : TpcnVersaoDF;
 U: TSSLCryptLib;
 V: TSSLHttpLib;
 X: TSSLXmlSignLib;
 Y: TSSLType;

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

  ACBrNFe1.Configuracoes.WebServices.Salvar := true;

end;

procedure TfrmPagamentoPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_CANCELARClick(Self);
    frmPdv.L_INCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f8 then
  begin
    BB_CFClick(Self);
  end;

end;

procedure TfrmPagamentoPdv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if P_TROCO.Visible = True then
    begin
      Timer1.Enabled := True;
      Timer2.Enabled := True;
      P_TROCO.Visible := False;
    end;
  end;
end;

procedure TfrmPagamentoPdv.FormShow(Sender: TObject);
begin
  Enviado := '';
  DBGrid1.Enabled := True;
  DBGrid1.SetFocus;
  L_VALOR_PAGO.Caption := '0,00';
  L_VALOR_DIFERENCA.Caption := FormatFloat('###,###0.00',dm.cdsPdvVL_LIQ.AsFloat);
  cdsTipoPagamento.Close;
  cdsTipoPagamento.Open;
  DM.cdsPdv.Open;
  DBGrid1.SetFocus;

  DM.cdsPagamentoPdv.Close;
  DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
  DM.cdsPagamentoPdv.Open;

  BB_CANCELAR.Visible := True;
  BB_CF.Visible := True;
end;

procedure TfrmPagamentoPdv.GeraCupomFiscal;
var arq: TextFile;
linha,cnpj , aliquota,vlVenda: String;
item: Integer;
Var
    StrX : String;
begin

  InputQuery('','C.P.F', StrX);

    if StrX = '' then
  begin
    cnpj:=''
  end
  else
  begin
    cnpj:= StrX ;
 end;


  if DM.cdsPDVID_CLIENTE.AsInteger = 1 then
  begin
    cnpj:= StrX
  end
  else
  begin
    cnpj:= DM.cdsPDVCNPJ_CPF.AsString;
  end;

  try
    AssignFile (arq,DM.EXPORTA+DM.cdsPDVID_PDV.AsString+'.djp');
    Rewrite ( arq );
    Write ( arq,('PRE|'+DM.cdsPDVID_PDV.AsString+'|'
                       +FormatDateTime('DDMMYYYY',StrToDate(DM.cdsPDVDT_VENDA.AsString))
                       +FormatDateTime('HHMMSS',StrToTime(DM.cdsPDVHR_VENDA.AsString)))+'|'
                       +DM.cdsPDVID_CLIENTE.AsString+'|'+DM.cdsPDVR_SOCIAL.AsString+'|'
                       +cnpj+'|'+DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsString+'|'
                       +FormatFloat('###0.00',DM.cdsPDVVL_VENDA.AsFloat)+'|'
                       +FormatFloat('###0.00',DM.cdsPDVVL_DESC.AsFloat)+'|'
                       +FormatFloat('###0.00',0)+'|'//ACRESCIMO
                       +FormatFloat('###0.00',0)+'|'// TOTAL ITENS
                       +DM.cdsPDVID_VENDEDOR.AsString+'|'   //cod.vendedor
                       +''+'|'   //obs
                       +''+'|'   //RG/Inscri��o Estadual
                       +''+'|'  //Endere�o
                       +''+'|'  //N�mero
                       +''+'|'  // complemento
                       +''+'|'  // Bairro
                       +''+'|'  //cidade
                       +''+'|'  // uf
                       +''+'|'  // cep
                       +''+'|'  // nivel credito

          );

    item := 1;
    DM.cdsItemPdv.First;
    while not DM.cdsItemPdv.Eof do
    begin
      WriteLn ( arq );
      Write ( arq,('PIT|'+IntToStr(item)+'|'+DM.cdsItemPdvREFERENCIA.AsString+'|'
              +FormatFloat('###0.000',DM.cdsItemPdvQUANT.AsFloat)+'|'
              +FormatFloat('###0.00',DM.cdsItemPdvVL_UNIT.AsFloat)+'|'
              +FormatFloat('###0.00',0)+'|'
              +FormatFloat('###0.00',0)+'|'
              +FormatFloat('###0.00',DM.cdsItemPdvVL_TOTAL.AsFloat)+'|'
              +DM.cdsItemPdvCD_BARRA.AsString+'|'
              +DM.cdsItemPdvDESCRICAO.AsString+'|'
              +''+'|'
              +DM.cdsItemPdvUNIDADE.AsString+'|'
              +DM.cdsItemPdvTIPO_ALIQ.AsString+'|'
              +FormatFloat('###0.00',DM.cdsItemPdvALIQUOTA.AsFloat)+'|'
              +'N'+'|'
              +'N'+'|'
              +'N'+'|'
              +'N'+'|'
              +FormatFloat('###0.00',DM.cdsItemPdvESTOQUE_1.AsFloat)+'|'
              +'0.00'+'|'
              +DM.cdsPDVID_VENDEDOR.AsString+'|'
              +DM.cdsPDVVENDEDOR.AsString+'|'
              +''+'|' //23 Gtin Cont�bil AN Tamanho m�ximo de 20 caracteres
              +''+'|' //24 Ext IPI AN Tamanho m�ximo de 20 caracteres
              +''+'|' //25 Gtin Tribut�vel AN Tamanho m�ximo de 20 caracteres
              +''+'|' //26 ID ICMS N Chave estrangeira para a Tabela de ICMS. (NFe)M�ximo de 6 d�gitos.
              +''+'|' //27 ID IPI N Chave estrangeira para a Tabela de IPI. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //28 ID ISSQN N Chave estrangeira para a Tabela de ISSQN. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //29 ID II N Chave estrangeira para a Tabela de Impostos de Importa��o. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //30 ID PIS N Chave estrangeira para a Tabela de PIS. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //31 ID PIS ST N Chave estrangeira para a Tabela de PIS ST. (NFe) M�ximo de 6 d�gitos.
              +''+'|' //32 ID COFINS N Chave estrangeira para a Tabela de COFINS. (NFe) M�ximo de 6 d�gitos.
              +''+'|'  //33 ID CONFINS ST N
              +DM.cdsItemPdvNCM.AsString+'|'//34 NCM AN Tamanho m�ximo de 20 caracteres. Atualiza��o de layout na vers�o 0.3.19 do DJIntegra��o.
              +'N'+'|' //35 KIT AN Informe 'S' caso este produto seja um Kit.
              +'N'+'|' //36 Prazo Devolu��o. AN Prazo para a devolu��o de um item especifico. Para
                        //marcar no item sem prazo de devolu��o, informar o
                        //valor �0�; para marcar no item n�o � poss�vel devolver,
                        //informar o valor �-1�. Lembrando que o prazo de
                        //devolu��o pode ser configurado nos par�metros do
                        //DJMonitor.
              +IntToStr(0)+'|'  //37 CEST N Obrigat�rio para produtos com Substitui��o Tribut�ria
                        //a partir de 01/04/2016
          //    +'S'+'|' //38 Controla Estoque AN 'S' ou ' ' (vazio) para Controlar o Estoque e 'N' para
                        //N�o Controlar Estoque
         //     +''+'|' //39 ANP N C�digo ANP (Ag�ncia Nacional de Petr�leo).
              )
      );
      DM.cdsItemPdv.Next;
      item := item+1;
    end;
    WriteLn ( arq );
    CloseFile ( arq );
//   try
//      DM.cdsProduto.Open;
//      cdsSaidaEstoqueCupom.Params[0].AsInteger := DM.cdsPDVID_PDV.AsInteger;
//      cdsSaidaEstoqueCupom.Execute;
//      DM.cdsProduto.ApplyUpdates(0);
//    except
//      ShowMessage('Erro Ao Gravar Estoque Fiscal, Tente Novamente');
//      Exit;
//    end;
    ShowMessage('Cupom Exportado Com Sucesso!!');
  except
    ShowMessage('Erro ao Enviar Cupom Fiscal, Verifique o Caminho/IP  nas Configura��es e Tente Novamente.');
    Exit;
  end;
end;

procedure TfrmPagamentoPdv.GerarNFCe(NumNFe: String);
Var
  aNumIten : Integer;
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso n�o seja preenchido ser� gerado um n�mero aleat�rio pelo componente
     Ide.natOp     := 'VENDA';
     Ide.indPag    := ipVista;
     Ide.modelo    := 65;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := now;
     Ide.dSaiEnt   := now;
     Ide.hSaiEnt   := now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := TpcnTipoEmissao(cbFormaEmissao.ItemIndex); ;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.verProc   := '2.0d'; //Vers�o do seu sistema
     Ide.cUF       := UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     Ide.tpImp     := tiNFCe;
//  if  Assigned( ACBrNFe1.DANFE ) then
//     Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

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
      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

      Dest.CNPJCPF           :=  TiraPontos(DM.cdsPDVCNPJ_CPF.AsString);   //'05481336000137';
//      Dest.IE                := '687138770110'; //NFC-e n�o aceita IE
      Dest.ISUF              := '';
      Dest.xNome             :=  DM.cdsPDVR_SOCIAL.AsString; //'D.J. COM. E LOCA��O DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    :=  DM.cdsPDVTELEFONE.AsString; //'1533243333';
//      Dest.EnderDest.CEP     :=  //StrToInt(DM.cdsPDVCEP.AsString); //18270170;
      Dest.EnderDest.xLgr    :=  DM.cdsPDVENDERECO.AsString; //'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     :=  DM.cdsPDVNUMERO.AsString; //'973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro :=  DM.cdsPDVBAIRRO.AsString; //'Centro';
      Dest.EnderDest.cMun    :=  StrToInt(DM.cdsPDVCODIGO_MUNIC.AsString); //3554003;
      Dest.EnderDest.xMun    :=  DM.cdsPDVCIDADE.AsString; //'Tatu�';
      Dest.EnderDest.UF      :=  DM.cdsPDVUF.AsString; //'SP';
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
      DM.cdsItemPdv.DisableControls;
      DM.cdsItemPdv.First;

    while not DM.cdsItemPdv.Eof do
    begin
      Inc(aNumIten);
      with Det.Add do
       begin
         Prod.nItem    := aNumIten; //1; // N�mero sequencial, para cada item deve ser incrementado
         Prod.cProd    :=  DM.cdsItemPdvCODIGO.AsString;   //'123456';
         Prod.cEAN     :=  DM.cdsItemPdvCD_BARRA.AsString; //'7896523206646';
         Prod.xProd    :=  DM.cdsItemPdvDESCRICAO.AsString; // 'Descri��o do Produto';
         Prod.NCM      :=  DM.cdsItemPdvNCM.AsString;  //'94051010'; // Tabela NCM dispon�vel em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5101';
         Prod.uCom     :=  DM.cdsItemPdvUNIDADE.AsString;  //'UN';
         Prod.qCom     :=  DM.cdsItemPdvQUANT.AsFloat; //1 ;
         Prod.vUnCom   :=  DM.cdsItemPdvVL_UNIT.AsFloat; //100;
         Prod.vProd    :=  DM.cdsItemPdvVL_TOTAL.AsFloat; //100 ;

         Prod.cEANTrib  := DM.cdsItemPdvCD_BARRA.AsString; //'7896523206646';
         Prod.uTrib     := DM.cdsItemPdvUNIDADE.AsString; //'UN';
         Prod.qTrib     := DM.cdsItemPdvQUANT.AsFloat; //1;
         Prod.vUnTrib   := DM.cdsItemPdvVL_UNIT.AsFloat; //100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         //Prod.CEST := '1111111';

//         infAdProd      := 'Informa��o Adicional do Produto';

         with Imposto do
          begin

            // lei da transparencia nos impostos
            vTotTrib := 0;
            with ICMS do
             begin

               CST     := cst00;
///***               ICMS.CSOSN   := csosn102;  //corrigir aqui
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := DM.cdsItemPdvVL_TOTAL.AsFloat; //100
               ICMS.pICMS   := DM.cdsItemPdvALIQUOTA.AsFloat; // 18;
               ICMS.vICMS   := (DM.cdsItemPdvVL_TOTAL.AsFloat * Dm.cdsItemPdvALIQUOTA.AsFloat) / 100;
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;

               // partilha do ICMS e fundo de probreza
               with ICMSUFDest do
                begin
                  vBCUFDest      := 0.00;
                  pFCPUFDest     := 0.00;
                  pICMSUFDest    := 0.00;
                  pICMSInter     := 0.00;
                  pICMSInterPart := 0.00;
                  vFCPUFDest     := 0.00;
                  vICMSUFDest    := 0.00;
                  vICMSUFRemet   := 0.00;
                end;
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
       end;

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
      Total.ICMSTot.vBC     :=  DM.cdsPDVVL_LIQ.AsFloat; //100;
      Total.ICMSTot.vICMS   := (DM.cdsPDVVL_LIQ.AsFloat * Dm.cdsItemPdvALIQUOTA.AsFloat) / 100;//18;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := DM.cdsPDVVL_LIQ.AsFloat; //100
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := DM.cdsPDVVL_LIQ.AsFloat;

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
       Dm.cdsItemPdv.Next;
    end;
      DM.cdsItemPdv.EnableControls;

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

      with pag.Add do //PAGAMENTOS apenas para NFC-e
       begin
         tPag := fpDinheiro;
         vPag := DM.cdsPDVVL_LIQ.AsFloat;
       end;

      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';

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

   ACBrNFe1.NotasFiscais.GerarNFe;

end;

procedure TfrmPagamentoPdv.GerarParcelas;
var
i,dias: Byte;
Valor : Double;
ultimaData : Tdate;
begin
//Abro o Banco
  cdsContasReceber.Close;
  cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
  cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvDT_VENDA.AsString);
  cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvID_PDV.AsString);
  cdsContasReceber.Open;
  //Chamo um procedimento para verificar se tem presta��o pendente
  //verificaparcela;
  // Minha vari�vel no caso i inicialmente � 0
  i:=0;
  // minha vari�vel recebe 1 do numero de parcelas no caso o digitado dentro de edParcela.Text
  for i := 1 to StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString) do
  begin
//  if cdsContasReceber.RecordCount < i then
//     cdsContasReceber.Insert
//  else
    cdsContasReceber.Insert;

    if i = 1 then
    begin
      dias := DM.cdsPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA.AsInteger;
      if DiasDoMes <  now  then
      begin
       DiasDoMes := DM.cdsPdvDT_VENDA.AsDateTime+dias;
      end;
       if UltimoDia = 28 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;
       end;
       if UltimoDia = 29 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;

       end;
       if UltimoDia = 30 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;
       end;
       if UltimoDia = 31 then
       begin
         if ultimaData <> DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+1;
         end;
       end;
    end
    else
    begin
      dias := DM.cdsPlanoPagamentoQT_DIAS_ENTRE_PARCELAS.AsInteger;
      DiasDoMes := ultimaData;
//      DiasDoMes := DiasDoMes+dias;
      if DiasDoMes <  now  then
      begin
       //DiasDoMes := DM.cdsPdvDT_VENDA.AsDateTime+dias;
      end;
       if UltimoDia = 28then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias;
         end;
       end;
       if UltimoDia = 29 then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias;
         end;
       end;
       if UltimoDia = 30 then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias;
         end;
       end;
       if UltimoDia = 31 then
       begin
         if ultimaData = DiasDoMes then
         begin
           DiasDoMes := DiasDoMes+dias+1;
         end;
       end;
    end;


    Valor := (StrToFloat(StringReplace(Edit6.Text,'.','',[rfReplaceAll])));
    //-(StrToFloat(EdtEntrada.Text)));
    cdsContasReceber.FieldByName('NR_PARCELA').Value      := IntToStr(i)+'/'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('QT_PARCELA').Value      := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('ID_LOJA').Value         := DM.cdsPDVID_LOJA.AsInteger;
    cdsContasReceber.FieldByName('VL_PARCELA').Value      := Valor /(StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString));
    cdsContasReceber.FieldByName('VL_COMPRA').Value       := DM.cdsPdvVL_LIQ.AsFloat ;
//    cdsContasReceber.FieldByName('DT_VENCIMENTO').Value   := IncMonth(DM.cdsPdvDT_VENDA.AsDateTime, i - 0);
    cdsContasReceber.FieldByName('DT_VENCIMENTO').Value   := DiasDoMes; //DM.cdsPdvDT_VENDA.AsDateTime+dias;
    cdsContasReceber.FieldByName('NR_DOC').Value          := DM.cdsPdvID_PDV.AsString +'/'+IntToStr(i)+'-'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('ID_CLIENTE').Value      := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
    cdsContasReceber.FieldByName('DT_EMISSAO').Value      := DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('QT_DIAS').Value         := IncMonth(DM.cdsPdvDT_VENDA.AsDateTime, i - 0) -DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('ID_FORMA_PAGAMENTO').Value  := cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PLANO_PAGAMENTO').Value  := DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PEDIDO').Value  := DM.cdsPdvID_PDV.AsInteger;
    cdsContasReceber.FieldByName('ID_VENDEDOR').Value  := DM.cdsPdvID_VENDEDOR.AsInteger;
    cdsContasReceber.FieldByName('ID_USUARIO').Value  := frmPdv.recInformacoes.id_Usuario;
    cdsContasReceber.FieldByName('QT_PARCELA').Value  := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('STATUS').Value  := 'A';


    cdsContasReceber.Post;
    DiasDoMes := cdsContasReceberDT_VENCIMENTO.AsDateTime;
    ultimaData := DiasDoMes;
    Next;
    //bb_confirmar.Enabled := True;
  end;
end;

procedure TfrmPagamentoPdv.GravaEstoque;
begin
  try
    DM.cdsEstoque.Open;

    DM.cdsGravaEstoque.Params[0].AsInteger := DM.cdsPDVID_LOJA.AsInteger;
    DM.cdsGravaEstoque.Params[1].AsString  := DM.cdsPDVID_PDV.AsString;
    DM.cdsGravaEstoque.Params[2].AsDate    := DM.cdsPDVDT_VENDA.AsDateTime;
    DM.cdsGravaEstoque.Params[3].AsString  := 'S';
    DM.cdsGravaEstoque.Execute;

    DM.cdsEstoque.ApplyUpdates(0);
    DM.cdsEstoque.Close;
  Except
    ShowMessage('Erro Ao Gravar Estoque');
  end;
end;

procedure TfrmPagamentoPdv.GravarVendaAvista;
Var
i : Byte;
Valor : Double;
begin
  //Abro o Banco
    cdsContasReceber.Close;
    cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
    cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvDT_VENDA.AsString);
    cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvID_PDV.AsString);
    cdsContasReceber.Open;

    i := StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString);
    cdsContasReceber.Insert;
    Valor := (StrToFloat(StringReplace(Edit6.Text,'.','',[rfReplaceAll])));
    //-(StrToFloat(EdtEntrada.Text)));
    cdsContasReceber.FieldByName('NR_PARCELA').Value      := IntToStr(i)+'/'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('QT_PARCELA').Value      := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('ID_LOJA').Value         := DM.cdsPDVID_LOJA.AsInteger;
    cdsContasReceber.FieldByName('VL_PARCELA').Value      := Valor /(StrToInt(DM.cdsPlanoPagamentoQT_PARCELAS.AsString));
    cdsContasReceber.FieldByName('VL_COMPRA').Value       := DM.cdsPdvVL_LIQ.AsFloat ;
    cdsContasReceber.FieldByName('DT_PAGAMENTO').Value    := DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('DT_VENCIMENTO').Value   := DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('NR_DOC').Value          := DM.cdsPdvID_PDV.AsString +'/'+IntToStr(i)+'-'+DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('ID_CLIENTE').Value      := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
    cdsContasReceber.FieldByName('DT_EMISSAO').Value      := DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('QT_DIAS').Value         := 0;//IncMonth(DM.cdsPdvDT_VENDA.AsDateTime, i - 0) -DM.cdsPdvDT_VENDA.AsDateTime;
    cdsContasReceber.FieldByName('QT_DIAS_ATRAZO').Value         := 0;
    cdsContasReceber.FieldByName('ID_FORMA_PAGAMENTO').Value  := cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PLANO_PAGAMENTO').Value  := DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger;
    cdsContasReceber.FieldByName('ID_PEDIDO').Value  := DM.cdsPdvID_PDV.AsInteger;
    cdsContasReceber.FieldByName('ID_VENDEDOR').Value  := DM.cdsPdvID_VENDEDOR.AsInteger;
    cdsContasReceber.FieldByName('ID_USUARIO').Value  := frmPdv.recInformacoes.id_Usuario;
    cdsContasReceber.FieldByName('QT_PARCELA').Value  := DM.cdsPlanoPagamentoQT_PARCELAS.AsString;
    cdsContasReceber.FieldByName('STATUS').Value  := 'B';

    cdsContasReceber.ApplyUpdates(0);
end;

procedure TfrmPagamentoPdv.LerConfiguracao;
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

procedure TfrmPagamentoPdv.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
begin
  ACBrUtil.WriteToTXT( PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml',
                        ACBrUtil.ConverteXMLtoUTF8( RetWS ), False, False);
  MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(application.ExeName))+'temp.xml');

  if ACBrNFe1.NotasFiscais.Count > 0then
    MemoResp.Lines.Add('Empresa: '+ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome);

end;

procedure TfrmPagamentoPdv.AtualizaSSLLibsCombo;
begin
 cbSSLLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLLib );
 cbCryptLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLCryptLib );
 cbHttpLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLHttpLib );
 cbXmlSignLib.ItemIndex := Integer( ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib );

 cbSSLType.Enabled := (ACBrNFe1.Configuracoes.Geral.SSLHttpLib in [httpWinHttp, httpOpenSSL]) ;

end;

procedure TfrmPagamentoPdv.BB_CANCELARClick(Sender: TObject);
begin
  if DM.cdsPagamentoPdv.RecordCount>0 then
  begin
    if Application.MessageBox('      Aten��o! Se retornar a tela de vendas    '+#13
                              +'ser�o cancelados todos os pagamentos efetuados'+#13+
                               '         Deseja Cancelar mesmo assim?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      DM.cdsPagamentoPdv.Open;
      DM.cdsPagamentoPdv.Cancel;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames;
      DM.cdsDinamica.CommandText := ' DELETE FROM tb_pagamento_pdv P '+
                                    ' WHERE P.id_pdv ='+DM.cdsPdvID_PDV.AsString;
      DM.cdsDinamica.Execute;
      DM.cdsPagamentoPdv.ApplyUpdates(0);
      DM.cdsPagamentoPdv.Refresh;
      DM.cdsPagamentoPdv.Close;
      DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
      DM.cdsPagamentoPdv.Open;
  //    ShowMessage('Pagamento(s) Cancelado(s)!');
      DM.cdsDinamica.IndexFieldNames;
      DM.cdsDinamica.CommandText := ' DELETE FROM TB_CONTAS_RECEBER P '+
                                    ' WHERE P.ID_PEDIDO ='+DM.cdsPdvID_PDV.AsString;
      DM.cdsDinamica.Execute;

      GB_ESPECIE.Visible := False;
      GB_FORMA_PAGAMENTO.Visible := False;
      frmPagamentoPdv.Close;
    end
    else
    begin
       DBGrid1.SetFocus;
    end;
  end
  else
  begin
    DM.cdsPagamentoPDV.Cancel;
    GB_ESPECIE.Visible := False;
//    GB_FORMA_PAGAMENTO.Visible := False;
    frmPagamentoPdv.Close;
  end;

end;

procedure TfrmPagamentoPdv.SomaValorPago;
Var
 SOMA : Double;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(P.vl_pagamento) FROM tb_pagamento_pdv P '+
                                ' WHERE P.id_pdv = '+DM.cdsPdvID_PDV.AsString;
  DM.cdsDinamica.Open;

  L_VALOR_PAGO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
  SOMA := (DM.cdsPdvVL_LIQ.AsFloat - DM.cdsDinamica.Fields[0].AsFloat);

  L_VALOR_DIFERENCA.Caption := FormatFloat('###,,###0.00',SOMA);
end;

procedure TfrmPagamentoPdv.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPagamentoPdv.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  TDbGrid(Sender).Canvas.font.Color:= clBlue; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=clMoneyGreen; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

procedure TfrmPagamentoPdv.DBGrid1KeyPress(Sender: TObject; var Key: Char);
Var
Valor,ValorNovo : string;
begin
  if Key = #13 then
  begin
{    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);}
    if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1 then
    begin
      GB_FORMA_PAGAMENTO.Visible := True;
      DM.cdsPlanoPagamento.Open;
      DM.cdsPlanoPagamento.Next;
      if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 2 then
      begin
        DBLookupComboBox1.KeyValue:=DM.cdsPlanoPagamento.FieldByName('ID_PLANO_PAGAMENTO').AsInteger;
        DBLookupComboBox1.KeyValue:=4;
      end;


      if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 1 then
      begin
        DBLookupComboBox1.KeyValue:=DM.cdsPlanoPagamento.FieldByName('ID_PLANO_PAGAMENTO').AsInteger;
        DBLookupComboBox1.KeyValue:=1;
      end;

      if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 4 then
      begin
        DBLookupComboBox1.KeyValue:=DM.cdsPlanoPagamento.FieldByName('ID_PLANO_PAGAMENTO').AsInteger;
        DBLookupComboBox1.KeyValue:=2;
      end;

      if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 5 then
      begin
        DBLookupComboBox1.KeyValue:=DM.cdsPlanoPagamento.FieldByName('ID_PLANO_PAGAMENTO').AsInteger;
        DBLookupComboBox1.KeyValue:=3;
      end;


      DBLookupComboBox1.SetFocus;
      if Diferenca = 0 then
      begin
        Diferenca := DM.cdsPdvVL_LIQ.AsFloat;
      end
      else
      begin
        Valor:= L_VALOR_DIFERENCA.Caption;
        valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
        Diferenca :=StrToFloat(ValorNovo);
      end;

      DBGrid1.Enabled := False;
      DM.cdsPagamentoPdv.Close;
      DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
      DM.cdsPagamentoPdv.Open;

      DM.cdsPagamentoPdv.Append;
      DM.cdsPagamentoPdvID_FORMA_PAGAMENTO.AsInteger := cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger;
      DM.cdsPagamentoPdvID_LOJA.AsInteger := DM.cdsPdvID_LOJA.AsInteger;
      DM.cdsPagamentoPdvID_PDV.AsInteger  := DM.cdsPdvID_PDV.AsInteger;
      Edit6.Text := FormatFloat('###,###0.00',Diferenca);

    end;
    if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 1 then
    begin
//      GB_ESPECIE.Visible := True;
      GB_FORMA_PAGAMENTO.Visible := True;
      DM.cdsPlanoPagamento.Open;
      DBLookupComboBox1.KeyValue:=DM.cdsPlanoPagamento.FieldByName('ID_PLANO_PAGAMENTO').AsInteger;
      DBLookupComboBox1.KeyValue:=1;
      DBLookupComboBox1.SetFocus;

      if Diferenca = 0 then
      begin
        Diferenca := DM.cdsPdvVL_LIQ.AsFloat;
      end
      else
      begin
        Valor:= L_VALOR_DIFERENCA.Caption;
        valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
        Diferenca :=StrToFloat(ValorNovo);
      end;

      DBGrid1.Enabled := False;
      DM.cdsPagamentoPdv.Close;
      DM.cdsPagamentoPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
      DM.cdsPagamentoPdv.Open;

      DM.cdsPagamentoPdv.Append;
      DM.cdsPagamentoPdvID_PLANO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger;
      DM.cdsPagamentoPdvID_FORMA_PAGAMENTO.AsInteger := cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger;
      DM.cdsPagamentoPdvID_LOJA.AsInteger := DM.cdsPdvID_LOJA.AsInteger;
      DM.cdsPagamentoPdvID_PDV.AsInteger  := DM.cdsPdvID_PDV.AsInteger;
      Edit6.Text := FormatFloat('###,###0.00',Diferenca);
     // Edit6.SetFocus;
    end;

  end;

end;

procedure TfrmPagamentoPdv.DBLookupComboBox1Exit(Sender: TObject);
begin
  DM.cdsPagamentoPdvID_PLANO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger;
  DiasDoMes := date-1;

end;

procedure TfrmPagamentoPdv.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    if (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 1) and (DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger > 1) then
    begin
      ShowMessage('Plano de Pagamento Inv�lido Para Forma de Pagamento '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
      DBLookupComboBox1.SetFocus;
      Exit;
    end;
    if (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1) and (DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger = 1) then
    begin
      ShowMessage('Plano de Pagamento Inv�lido Para Forma de Pagamento '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
      DBLookupComboBox1.SetFocus;
      Exit;
    end;
      GB_FORMA_PAGAMENTO.Visible:= False;
      GB_ESPECIE.Visible:= True;
      Edit6.SetFocus;
  end;
end;

procedure TfrmPagamentoPdv.dspContasReceberGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: string);
begin
  TableName := 'TB_CONTAS_RECEBER';
end;

procedure TfrmPagamentoPdv.Timer1Timer(Sender: TObject);
begin
//  P_TROCO.Visible := False;
  Label1.Visible := True;
  Label8.Visible := True;
  Label11.Visible := True;
  Label12.Visible := True;
  L_VALOR_PAGO.Visible := True;
  L_VALOR_DIFERENCA.Visible := True;
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  frmPagamentoPdv.Close;
  frmPdv.BB_CONFIRMAClick(Self);

end;

procedure TfrmPagamentoPdv.Timer2Timer(Sender: TObject);
begin
  if DM.cdsPagamentoPdv.RecordCount > 0 then
  begin
    P_TROCO.Visible := False;
    Label1.Visible := True;
    Label8.Visible := True;
    Label11.Visible := True;
    Label12.Visible := True;
    L_VALOR_PAGO.Visible := True;
    L_VALOR_DIFERENCA.Visible := True;
    Timer1.Enabled := False;
    Timer2.Enabled := False;
    frmPagamentoPdv.Close;
    frmPdv.BB_CONFIRMAClick(Self);
  end;

end;

function TfrmPagamentoPdv.UltimoDia: integer;
var Date: TDateTime;
begin
  Date:= EndOfTheMonth(DiasDoMes);
  Result:= StrToInt(Copy(DateToStr(Date),0,2));
end;

procedure TfrmPagamentoPdv.Edit6Exit(Sender: TObject);
var
Troco : Double;
Valor,ValorNovo : string;
begin
  if Edit6.Text<>'' then
  begin
    SomaValorPago;
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);

    cdsContasReceber.Close;
    cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
    cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvDT_VENDA.AsString);
    cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvID_PDV.AsString);
    cdsContasReceber.Open;

    if (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1) AND (cdsContasReceber.RecordCount >= 0) then
    begin
      frmPagamentoPdv.ClientHeight := 471;
      GerarParcelas;
    end
    else
    begin
      frmPagamentoPdv.ClientHeight := 471;
      GravarVendaAvista;
    end;

    //    Diferenca := StrToFloat(L_VALOR_DIFERENCA.Caption);
    if Application.MessageBox('Confirma��o','Confirma?',MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PAGAMENTO_PDV) FROM tb_pagamento_pdv';
      DM.cdsDinamica.Open;
      Valor := Edit6.Text;
      valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
      DM.cdsPagamentoPdvID_PAGAMENTO_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsPagamentoPdvDT_MOV.AsDateTime          := DM.cdsPdvDT_VENDA.AsDateTime;
      DM.cdsPagamentoPdvCAIXA.AsString             := DM.CAIXA;
      DM.cdsPagamentoPDVID_USUARIO.AsInteger       := frmPdv.recInformacoes.id_Usuario;
      DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat       := DM.cdsPDVVL_LIQ.AsFloat;
      DM.cdsPagamentoPDVVL_RECEBIDO.AsFloat        := StrToFloat(ValorNovo);
      DM.cdsDinamica.Close;


      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;

      if (DM.cdsPagamentoPDVVL_RECEBIDO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;

      if (DM.cdsPagamentoPDVVL_RECEBIDO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 1)then
      begin
        Troco := (DM.cdsPagamentoPDVVL_RECEBIDO.AsFloat - Diferenca);
        L_TROCO.Caption := FormatFloat('###,###0.00',Troco);
        if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_DEFBUTTON2) = idyes then
        begin
          frmPdv.ImprimirTermica;
 //         cdsContasReceber.Close;
        end;
{        P_TROCO.Visible := True;
        DBGrid2.SetFocus;
        P_TROCO.Align   := alClient;
        L_TROCO.Caption := ' T R O C O    '+FormatFloat('###,###0.00',Troco);
/////        Timer1.Enabled := True;
        Label1.Visible := False;
        Label8.Visible := False;
        Label11.Visible := False;
        Label12.Visible := False;
        L_VALOR_PAGO.Visible := False;
        L_VALOR_DIFERENCA.Visible := False;
        BB_CANCELAR.Visible := False;
        BB_CF.Visible := False;}



            P_TROCO.Visible := True;
            DBGrid2.SetFocus;
            P_TROCO.Align   := alClient;
            L_TROCO.Caption := 'R$ '+FormatFloat('###,###0.00',Troco);
//////            Timer1.Enabled := True;
            Label1.Visible := False;
            Label8.Visible := False;
            Label11.Visible := False;
            Label12.Visible := False;
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
            BB_CF.Visible := False;

      {  DM.cdsDinamica.Close;
        DM.cdsDinamica.IndexFieldNames:='';
        DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PAGAMENTO_PDV) FROM tb_pagamento_pdv';
        DM.cdsDinamica.Open;
        Valor := Edit6.Text;
        valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));

        DM.cdsPagamentoPDV.Insert;
        DM.cdsPagamentoPdvID_PAGAMENTO_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
        DM.cdsPagamentoPdvDT_MOV.AsDateTime          := DM.cdsPdvDT_VENDA.AsDateTime;
        DM.cdsPagamentoPdvCAIXA.AsString             := DM.CAIXA;
        DM.cdsPagamentoPDVID_USUARIO.AsInteger       := frmPdv.recInformacoes.id_Usuario;
        DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat       := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);}
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;



        cdsContasReceber.Close;
        cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
        cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvDT_VENDA.AsString);
        cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvID_PDV.AsString);
        cdsContasReceber.Open;



            DM.cdsDinamica.Close;
            DM.cdsDinamica.IndexFieldNames:='';
            DM.cdsDinamica.CommandText := ' UPDATE TB_MESA M SET M.STATUS =''L'' WHERE M.STATUS = ''R''';
            DM.cdsDinamica.Execute;
            DM.cdsDinamica.Close;


        if (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1) AND (cdsContasReceber.RecordCount >= 0) then
        begin
           DM.cdsPagamentoPdvID_FORMA_PAGAMENTO.AsInteger := cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger;
           cdsContasReceber.ApplyUpdates(0);
           cdsContasReceber.Refresh;
        end;

        SomaValorPago;
      end
      else
      begin
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;

        GravaEstoque;
        //ESSE N�O
{        cdsContasReceber.Close;
        cdsContasReceber.Params[0].AsInteger := StrToInt(DM.cdsPdvID_CLIENTE.AsString);
        cdsContasReceber.Params[1].AsDate    := StrToDate(DM.cdsPdvDT_VENDA.AsString);
        cdsContasReceber.Params[2].AsInteger := StrToInt(DM.cdsPdvID_PDV.AsString);
        cdsContasReceber.Open;}


        if (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1) AND (cdsContasReceber.RecordCount >= 0) then
        begin
          // GerarParcelas;
           cdsContasReceber.ApplyUpdates(0);
           cdsContasReceber.Refresh;
        end;
        SomaValorPago;
        if L_VALOR_DIFERENCA.Caption = '0,00' then
        begin
          L_TROCO.Caption := '0,00';
    //    if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_DEFBUTTON2) = idyes then
    //    begin
             //Corre��o
            if cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 2 then
            begin
//              if Application.MessageBox('Deseja Imprimir Conv�nio?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
//              begin
                frmPdv.ImprimirTermicaconvenio;
                cdsContasReceber.Close;
//              end;
            end
            else
            begin
              if Application.MessageBox('Deseja Imprimir Venda?','Confirma��o',MB_YESNO+MB_DEFBUTTON2) = idyes then
              begin
                frmPdv.ImprimirTermica;
                cdsContasReceber.Close;
              end;
            end;

     //   end;

            P_TROCO.Visible := True;
            DBGrid2.SetFocus;
            P_TROCO.Align   := alClient;
            L_TROCO.Caption := '.';
//////            Timer1.Enabled := True;
            Label1.Visible := False;
            Label8.Visible := False;
            Label11.Visible := False;
            Label12.Visible := False;
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
            BB_CF.Visible := False;
            cdsContasReceber.Close;

            DM.cdsDinamica.Close;
            DM.cdsDinamica.IndexFieldNames:='';
            DM.cdsDinamica.CommandText := ' UPDATE TB_MESA M SET M.STATUS =''L'' WHERE M.STATUS = ''R''';
            DM.cdsDinamica.Execute;
            DM.cdsDinamica.Close;

        end;
      end;
    end
    else
    begin
      cdsContasReceber.Close;
      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;
    end;
  end;
  frmPagamentoPdv.ClientHeight:= 341;
end;

procedure TfrmPagamentoPdv.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    DM.cdsPagamentoPdv.Cancel;
    Edit6.Clear;
    BB_CANCELARClick(Self);
  end;
end;

procedure TfrmPagamentoPdv.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPagamentoPdv.DBEdit6Exit(Sender: TObject);
var
Troco : Double;
Valor,ValorNovo : string;
begin
    SomaValorPago;
    Valor:= L_VALOR_DIFERENCA.Caption;
    valornovo := Trim(StringReplace(Valor,'.','',[rfReplaceAll]));
    Diferenca :=StrToFloat(ValorNovo);
    if Application.MessageBox('Confirma��o','Confirma?',MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PAGAMENTO_PDV) FROM tb_pagamento_pdv';
      DM.cdsDinamica.Open;

      DM.cdsPagamentoPdvID_PAGAMENTO_PDV.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsDinamica.Close;


      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger > 1)then
      begin
        ShowMessage('N�o � Permitido Pagamento a mais para a Modalidade '+cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Exit;
      end;

      if (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat > Diferenca) AND (cdsTipoPagamentoID_FORMA_PAGAMENTO.AsInteger = 1)then
      begin
        Troco := (DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Diferenca);
        P_TROCO.Visible := True;
        P_TROCO.Align   := alClient;
        L_TROCO.Caption := ' T R O C O    '+FormatFloat('###,###0.00',Troco);
//////        Timer1.Enabled := True;
        Label1.Visible := False;
        Label8.Visible := False;
        Label11.Visible := False;
        Label12.Visible := False;
        L_VALOR_PAGO.Visible := False;
        L_VALOR_DIFERENCA.Visible := False;
        BB_CANCELAR.Visible := False;
        BB_CF.Visible := False;        
       // Diferenca := (Diferenca - DM.cdsPdvVL_LIQUIDO.AsFloat);
        DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat := ( DM.cdsPagamentoPdvVL_PAGAMENTO.AsFloat - Troco);
        DM.cdsPagamentoPdvDT_MOV.AsDateTime          := DM.cdsPdvDT_VENDA.AsDateTime;
        DM.cdsPagamentoPDVID_USUARIO.AsInteger       := frmPdv.recInformacoes.id_Usuario;
        DM.cdsPagamentoPdvCAIXA.AsString             := DM.CAIXA;
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;
        SomaValorPago;
        {DM.cdsPdv.Edit;
        DM.cdsPdvSTATUS.Value:='F';
        DM.cdsPdv.ApplyUpdates(0);
        DM.cdsPdv.Refresh;}

      end
      else
      begin
        //Diferenca := (DM.cdsPdvVL_LIQUIDO.AsFloat - Diferenca);
        DM.cdsPagamentoPdvDT_MOV.AsDateTime          := DM.cdsPdvDT_VENDA.AsDateTime;
        DM.cdsPagamentoPDVID_USUARIO.AsInteger       := frmPdv.recInformacoes.id_Usuario;
        DM.cdsPagamentoPdvCAIXA.AsString             := DM.CAIXA;
        DM.cdsPagamentoPdv.ApplyUpdates(0);
        DM.cdsPagamentoPdv.Refresh;
        SomaValorPago;
        {DM.cdsPdv.Edit;
        DM.cdsPdvSTATUS.Value:='F';
        DM.cdsPdv.ApplyUpdates(0);
        DM.cdsPdv.Refresh;}
        if L_VALOR_DIFERENCA.Caption = '0,00' then
        begin
            P_TROCO.Visible := True;
            P_TROCO.Align   := alClient;
            L_TROCO.Caption := '.';
//////            Timer1.Enabled := True;
            Label1.Visible := False;
            Label8.Visible := False;
            Label11.Visible := False;
            Label12.Visible := False;
            L_VALOR_PAGO.Visible := False;
            L_VALOR_DIFERENCA.Visible := False;
            BB_CANCELAR.Visible := False;
            BB_CF.Visible := False;
        end;
      end;
    end
    else
    begin
      GB_ESPECIE.Visible := False;
      DBGrid1.Enabled := True;
      DBGrid1.SetFocus;
    end;

end;

procedure TfrmPagamentoPdv.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPagamentoPdv.BB_CFClick(Sender: TObject);
begin

  if (GB_ESPECIE.Visible = False) and (GB_FORMA_PAGAMENTO.Visible = False)  then
  begin
    ShowMessage('Favor Selecionar Forma Pagamento');
    DBGrid1.SetFocus;
    Exit;
  end;

  if (DM.cdsPDVCUPOM.AsString = 'S') or (Enviado = 'S') then
  begin
    ShowMessage('Cupom J� Emitido!');
    DBLookupComboBox1.SetFocus;
  end
  else
  begin
    GeraCupomFiscal;
    Enviado := 'S';
    DBLookupComboBox1.SetFocus;
  end;
end;

procedure TfrmPagamentoPdv.BB_ENCERRARClick(Sender: TObject);
begin
  Timer1.Enabled := True;
  Timer2.Enabled := True;
end;

procedure TfrmPagamentoPdv.btnCriarEnviarNFCeClick(Sender: TObject);
var
 vAux, vNumLote, vSincrono : String;
 Sincrono : boolean;
begin
 ACBrNFe1.WebServices.StatusServico.Executar;

 MemoResp.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetWS;
 memoRespWS.Lines.Text := ACBrNFe1.WebServices.StatusServico.RetornoWS;
 LoadXML(ACBrNFe1.WebServices.StatusServico.RetornoWS, WBResposta);

 vAux := DM.cdsPDVID_PDV.AsString;
 vNumLote := DM.cdsPDVID_PDV.AsString;

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

//  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
//  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310;
  GerarNFCe(vAux);

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
    //MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Enviar.cMsg));
    //MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Enviar.xMsg);
    MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Enviar.Recibo);
    //MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Enviar.Protocolo);
  end;
  ACBrNFe1.NotasFiscais.Clear;
end;

end.