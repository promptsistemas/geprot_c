unit uPdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg, Grids, DBGrids, Mask, DBCtrls, FMTBcd,
  DB, DBClient, Provider, SqlExpr,midaslib, Buttons, RDprint, Printers,WinSpool;

type
  TNumeroStr = string;
  TfrmPdv = class(TForm)
    P_SISTEMA: TPanel;
    P_CLIENTE: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    P_DATA_HORA: TPanel;
    L_DATA_HORA: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    P_ITEM: TPanel;
    DBGrid1: TDBGrid;
    P_ORCAMENTO: TPanel;
    Label7: TLabel;
    DBText1: TDBText;
    P_MENU: TPanel;
    L_NOVA_VENDA: TLabel;
    Label9: TLabel;
    L_CANCELAR_VENDA: TLabel;
    Label11: TLabel;
    L_ENCERRAR_VENDA: TLabel;
    L_EXCLUIR_ITEM: TLabel;
    Label15: TLabel;
    L_INCLUIR_ITEM: TLabel;
    Label17: TLabel;
    L_PAGAMENTO: TLabel;
    Label19: TLabel;
    L_TROCAR_USUARIO: TLabel;
    Label21: TLabel;
    P_SITUACAO_VENDA: TPanel;
    L_SITUACAO_VENDA: TLabel;
    Label22: TLabel;
    P_CODIGO: TPanel;
    Label23: TLabel;
    P_QUANT: TPanel;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    P_UNID: TPanel;
    Label25: TLabel;
    DBEdit4: TDBEdit;
    P_VL_UNI: TPanel;
    Label26: TLabel;
    DBEdit5: TDBEdit;
    P_VL_TOTAL_ITEM: TPanel;
    Label27: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    P_DESC_ITEM: TPanel;
    Label29: TLabel;
    DBEdit8: TDBEdit;
    P_DADOS_SISTEMA: TPanel;
    L_INFORMACOES: TLabel;
    DBEdit10: TDBEdit;
    Label31: TLabel;
    L_USUARIO: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    L_CAIXA: TLabel;
    qDinamica: TSQLQuery;
    dspDinamica: TDataSetProvider;
    cdsDinamica: TClientDataSet;
    dsDinamica: TDataSource;
    Label8: TLabel;
    L_OPCOES: TLabel;
    Label12: TLabel;
    L_SAIR: TLabel;
    P_DATA_VENDA: TPanel;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    spCancelaItem: TSQLStoredProc;
    dspCancelaItem: TDataSetProvider;
    cdsCancelaItem: TClientDataSet;
    L_NOME_LOJA: TLabel;
    L_ID_GRUPO: TLabel;
    DBEdit2: TDBEdit;
    I_LOGO: TImage;
    Label1: TLabel;
    RDprint1: TRDprint;
    P_CPF_CLIENTE: TPanel;
    Label2: TLabel;
    DBEdit13: TDBEdit;
    edtProduto: TEdit;
    sqlReativarVenda: TSQLDataSet;
    dspReativarVenda: TDataSetProvider;
    cdsReativarVenda: TClientDataSet;
    dsReativarVenda: TDataSource;
    sqlReativarVendaID_PDV: TIntegerField;
    sqlReativarVendaID_CLIENTE: TIntegerField;
    sqlReativarVendaID_FORMA_PAGAMENTO: TIntegerField;
    sqlReativarVendaID_TIPO_PAGAMENTO: TIntegerField;
    sqlReativarVendaDT_VENDA: TDateField;
    sqlReativarVendaVL_VENDA: TFMTBCDField;
    sqlReativarVendaVL_DESC: TFMTBCDField;
    sqlReativarVendaVL_LIQ: TFMTBCDField;
    sqlReativarVendaPERC_DESC: TFMTBCDField;
    sqlReativarVendaSTATUS: TStringField;
    sqlReativarVendaCAIXA: TIntegerField;
    sqlReativarVendaR_SOCIAL: TStringField;
    sqlReativarVendaCNPJ_CPF: TStringField;
    sqlReativarVendaFORMA_PAGAMENTO: TStringField;
    sqlReativarVendaTIPO_PAGAMENTO: TStringField;
    cdsReativarVendaID_PDV: TIntegerField;
    cdsReativarVendaID_CLIENTE: TIntegerField;
    cdsReativarVendaID_FORMA_PAGAMENTO: TIntegerField;
    cdsReativarVendaID_TIPO_PAGAMENTO: TIntegerField;
    cdsReativarVendaDT_VENDA: TDateField;
    cdsReativarVendaVL_VENDA: TFMTBCDField;
    cdsReativarVendaVL_DESC: TFMTBCDField;
    cdsReativarVendaVL_LIQ: TFMTBCDField;
    cdsReativarVendaPERC_DESC: TFMTBCDField;
    cdsReativarVendaSTATUS: TStringField;
    cdsReativarVendaCAIXA: TIntegerField;
    cdsReativarVendaR_SOCIAL: TStringField;
    cdsReativarVendaCNPJ_CPF: TStringField;
    cdsReativarVendaFORMA_PAGAMENTO: TStringField;
    cdsReativarVendaTIPO_PAGAMENTO: TStringField;
    BB_REATIVARVENDA: TBitBtn;
    sqlPesquisaLetra: TSQLDataSet;
    dsPesquisaLetra: TDataSource;
    cdsPesquisaLetra: TClientDataSet;
    dspPesquisaLetra: TDataSetProvider;
    sqlPesquisaLetraCD_BARRA: TStringField;
    sqlPesquisaLetraDESCRICAO: TStringField;
    sqlPesquisaLetraVL_VENDA_VARE: TFMTBCDField;
    cdsPesquisaLetraCD_BARRA: TStringField;
    cdsPesquisaLetraDESCRICAO: TStringField;
    cdsPesquisaLetraVL_VENDA_VARE: TFMTBCDField;
    sqlPesquisaLetraREFERENCIA: TStringField;
    cdsPesquisaLetraREFERENCIA: TStringField;
    Label20: TLabel;
    Label34: TLabel;
    P_MENU1: TPanel;
    Label13: TLabel;
    Label36: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    L_PRODUTO: TLabel;
    L_DESCONTO: TLabel;
    P_TOTAL_VENDA: TPanel;
    Label6: TLabel;
    L_TOTAL_VENDA: TLabel;
    Label28: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    L_TOTAL_DESC_ENTRADA: TLabel;
    L_TOTAL_LIQUIDO: TLabel;
    P_PESQUISA: TPanel;
    Label40: TLabel;
    Label44: TLabel;
    DBGrid4: TDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Edit1: TEdit;
    P_VENDEDOR: TPanel;
    Label59: TLabel;
    DBEdit9: TDBEdit;
    spCancelaPagamento: TSQLStoredProc;
    dspCancelaPagamento: TDataSetProvider;
    cdsCancelaPagamento: TClientDataSet;
    Memo4: TMemo;
    BB_CONFIRMA: TBitBtn;
    BB_CANCELAR: TBitBtn;
    bb_imprimir: TBitBtn;
    BB_CF: TBitBtn;
    Label14: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel6: TBevel;
    Bevel5: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    L_FISCO: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    PMENU: TPanel;
    SpeedButton3: TSpeedButton;
    Memo2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure L_NOVA_VENDAClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure L_ENCERRAR_VENDAClick(Sender: TObject);
    procedure L_INCLUIR_ITEMClick(Sender: TObject);
    procedure L_CANCELAR_VENDAClick(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNavigator1DblClick(Sender: TObject);
    procedure L_EXCLUIR_ITEMClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure L_PAGAMENTOClick(Sender: TObject);
    procedure BB_CONFIRMAClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure L_OPCOESClick(Sender: TObject);
    procedure L_SAIRClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bb_imprimirClick(Sender: TObject);
    procedure edtValorPagoEnter(Sender: TObject);
    procedure L_TROCAR_USUARIOClick(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Change(Sender: TObject);
    procedure L_DESCONTOClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure MakeRounded(Control: TWinControl);
    Procedure PesquisaProduto;
    Procedure ChecaUsuario(nivel :integer);
    Procedure ImprimiCuponNaoFiscal;
    Procedure ImprimirConvenio;
    Procedure GravaReceber;
    Procedure FechaVendaPrint;
    Procedure PesquisaLetra;
    Procedure ExportaVendaPDV;
    Procedure IBPT;
    function IsAphaNumerico(S: string): Boolean;
    Function VersaoExe: String;
  public
    { Public declarations }
      recInformacoes: record
      login: String;
      id_Usuario:Integer;
      nm_Usuario: String;
      Nivel: Integer;
      lojaCredenciada,Fisco : String;
      GrupoLoja       : Integer;
      NomeGrupo       : String;
  end;
      sNovo,sNovoAnt,sNome_Novo: String;
      bPesquisa,bSenha: Boolean;
      VlVenda         : Integer;
    Procedure ImprimirCaixa;
    Procedure ImprimirTermica;
    Procedure ImprimirTermicaconvenio;
    Procedure ImprimirMemo(Memo: TMemo);
    Procedure VerificaCaixaAberto;
    Procedure InsertItemVenda;
    Procedure InformarCliente;
    Procedure NovoCadastro;
    Procedure NovoAcesso;
    Procedure SomaTotais;


  end;


var
  frmPdv: TfrmPdv;
  SituacaoVenda : String;
  MULTI : Boolean;
  CaminhoImpressora: String;
  PageDown : Boolean;
  Enter    : Boolean;
  Orcamento : Integer;

const
  Unidades: array[1..19] of TNumeroStr = ('um', 'dois', 'tr�s', 'quatro','cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze',
  'treze', 'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito','dezenove');
  Dezenas: array[1..9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta','cinq�enta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array[1..9] of TNumeroStr = ('cem', 'duzentos', 'trezentos','quatrocentos', 'quinhentos', 'seiscentos', 'setecentos','oitocentos','novecentos');
  ErrorString = 'Valor fora da faixa';
  Min = 0.01;
  Maxi = 4294967295.99;
  Moeda = ' real ';
  Moedas = ' reais ';
  Centesimo = ' centavo ';
  Centesimos = ' centavos ';
function NumeroParaExtenso(parmNumero: Real): string;
function ConversaoRecursiva(N: LongWord): string;

implementation

uses uDm, U_LIB, UD_PESQUISA, uSenha, ComCtrls, uPagamentoPdv,
  uFrmAberturaCaixa, uMenuCaixa, uDesconto, uCadCliente, uConfigParamentros,
  uRecebimentoComanda;

{$R *.dfm}

{ TfrmPdv }

function DiaSemana(Data:TDateTime): String;
{Retorna dia da semana}
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String[13];
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Ter�a-feira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'S�bado';
  NoDia:=DayOfWeek(Data);
  DiaSemana:=DiaDasemana[NoDia];
end;

function TiraPontoeVirgula(sTexto:String):String;
//
// Remove ponto ou virgula de um valor num�rico
//
var
Temp_01 : string;
Temp_03, conta: Integer;
begin
Conta := 0;
Temp_03 := length(sTexto);
while conta < temp_03 do
      begin
      Conta := Conta + 1;
      Temp_01 := Copy(Stexto,conta,1);
      if Temp_01 = '.' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      if Temp_01 = '/' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      if Temp_01 = '-' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      if Temp_01 = '(' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      if Temp_01 = ')' then
         begin
         sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
         end;
      end;
Result := sTexto;
end;

procedure TfrmPdv.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
with Control do
begin
  R := ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 40, 40);
  Perform(EM_GETRECT, 0, lParam(@r));
  InflateRect(r, - 30, - 30);
  Perform(EM_SETRECTNP, 0, lParam(@r));
  SetWindowRgn(Handle, rgn, True);
  Invalidate;
end;
end;

procedure TfrmPdv.FormCreate(Sender: TObject);
begin
  MakeRounded(P_SISTEMA);
  MakeRounded(P_CLIENTE);
  MakeRounded(P_DATA_HORA);
  MakeRounded(P_ITEM);
  MakeRounded(P_TOTAL_VENDA);
  MakeRounded(P_ORCAMENTO);
  MakeRounded(P_SITUACAO_VENDA);
  MakeRounded(P_CODIGO);
  MakeRounded(P_QUANT);
  MakeRounded(P_UNID);
  MakeRounded(P_VL_UNI);
  MakeRounded(P_VL_TOTAL_ITEM);
  MakeRounded(P_DESC_ITEM);
  MakeRounded(P_DADOS_SISTEMA);
  MakeRounded(P_DATA_VENDA);
  MakeRounded(P_CPF_CLIENTE);
//  MakeRounded(P_MENU);
//  MakeRounded(P_MENU1);
  MakeRounded(P_PESQUISA);
  MakeRounded(P_VENDEDOR);


end;

procedure TfrmPdv.Timer1Timer(Sender: TObject);
begin
  L_DATA_HORA.Caption := DateToStr(StrToDate(FormatDateTime('DD/MM/YYYY',Date)))+' '+TimeToStr(Time);
end;

procedure TfrmPdv.FormShow(Sender: TObject);
Var
Loja,Fisco,CaixaFechado,sSql : string;
begin
 if DM.CONFIGURADO = 'N' then
 begin
   MessageDlg('Arquivo de Inicializa��o N�o Configurado, Favor Configurar! ', mtInformation, [mbOK], 0);
   frmConfigParametros := TfrmConfigParametros.Create(Application);
   frmConfigParametros.ShowModal;
 end
 else
 begin
  NovoAcesso; //ATIVAR QUANDO USAR SO O PDV
  CaminhoImpressora := DM.IMPRESSORA;
  L_CAIXA.Caption := DM.CAIXA;
  L_FISCO.Caption := DM.FISCO;
  I_LOGO.Picture.LoadFromFile(DM.LOGO);
  frmPdv.recInformacoes.lojaCredenciada := DM.LOJA;
  Loja := frmPdv.recInformacoes.lojaCredenciada;
  Fisco := DM.FISCO;

  VerificaCaixaAberto;
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText :='SELECT STATUS FROM TB_REG_OPEN_CLOSE_CAIXA WHERE DT_ABERTURA ='+QuotedStr(FormatDateTime('MM/DD/YYYY',Date))+
                               ' AND STATUS =''A'' AND CAIXA = '+L_CAIXA.Caption+' AND ID_LOJA = '+frmPdv.recInformacoes.lojaCredenciada ;
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    Application.MessageBox('Caixa do dia N�o Foi Aberto','Aten��o',MB_ICONEXCLAMATION);
    frmAberturaCaixa.ShowModal;
  end
  else
  begin
    DM.cdsPdv.Close;
    DM.cdsPdv.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
    DM.cdsPdv.Params[1].AsInteger := StrToInt(Loja);
    DM.cdsPdv.Open;

    DM.cdsItemPdv.Close;
    DM.cdsItemPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
    DM.cdsItemPdv.Open;
    L_TOTAL_VENDA.Caption        := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_VENDA.AsFloat);
    L_TOTAL_DESC_ENTRADA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_DESC.AsFloat);
    L_TOTAL_LIQUIDO.Caption      := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_LIQ.AsFloat);

    if DM.cdsPdv.RecordCount > 0 then
      L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
    else
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
      L_USUARIO.Caption := frmPdv.recInformacoes.nm_Usuario;


{    if DM.cdsItemPdv.RecordCount > 0 then
      L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
    else
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
      L_USUARIO.Caption := frmMenu.recInformacoes.nm_Usuario;}

    DM.cdsProduto.Close;
    DM.cdsProduto.Open;

    if Loja <> '' then
    begin
      DM.cdsLojaUsuario.Close;
      DM.cdsLojaUsuario.Params[0].AsInteger := StrToInt(Loja);
      DM.cdsLojaUsuario.Open;
      L_NOME_LOJA.Caption := Loja+' - '+DM.cdsLojaUsuario.FieldByName('FANTASIA').AsString;
    end;
    frmPdv.SetFocus;
  end;
    DM.cdsProduto.Close;
    DM.cdsProduto.Open;
    L_PRODUTO.Caption:= '';
 end;
  edtProduto.SetFocus;
end;

procedure TfrmPdv.L_NOVA_VENDAClick(Sender: TObject);
Var
 InformarVendedor : string;
begin
   InformarVendedor := DM.VENDEDOR;
   L_PRODUTO.Caption := '';
   PageDown := False;
   Enter    := False;
   MULTI := False;
   DM.cdsPlanoPagamento.Close;
   DM.cdsFormaPagamento.Close;
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    Application.MessageBox('Nova Venda n�o Permitida. Finalize a Venda em Andamento'+#13+
                           '           Para Come�ar uma nova venda.','Aten��o',MB_OK+MB_ICONWARNING);
    Exit;
  end;

  if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
  begin
    Application.MessageBox('Nova Venda n�o Permitida. Receba a Venda em Andamento'+#13+
                           '           Para Come�ar uma nova venda.','Aten��o',MB_OK+MB_ICONWARNING);
    Exit;
  end;
  L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
  DM.cdsPdv.Close;
  DM.cdsPdv.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPdv.Params[1].AsInteger := StrToInt(recInformacoes.lojaCredenciada);
  DM.cdsPdv.Open;

  DM.cdsPdv.Insert;
  DM.cdsPdvSTATUS.Value := 'A';
  DM.cdsPdvVL_DESC.AsFloat := 0;
  DM.cdsPdvVL_VENDA.AsFloat:= 0;
  DM.cdsPDVPERC_DESC.AsFloat:= 0;
  DM.cdsPdvDT_VENDA.AsDateTime := Date;
  DM.cdsPdvHR_VENDA.AsDateTime := Time;
  DM.cdsPdvCAIXA.AsInteger := StrToInt(L_CAIXA.Caption);
  DM.cdsPDVID_LOJA.AsInteger := StrToInt(DM.LOJA);
  DM.cdsPdvID_USUARIO.AsInteger := frmPdv.recInformacoes.id_Usuario;

  DM.CdsCliente.Open;
  DM.cdsCliente.Refresh;
  DM.cdsPdvID_CLIENTE.AsInteger := 1;
  if DM.CdsCliente.Locate('ID_CLIENTE',DM.cdsPdvID_CLIENTE.AsInteger,[])then
  begin
    DM.cdsPdvR_SOCIAL.AsString    := DM.CdsClienteR_SOCIAL.AsString;
    DM.cdsPdvCNPJ_CPF.AsString    := DM.CdsClienteCNPJ_CPF.AsString;
  end;

  DM.cdsVendedor.Close;
  DM.cdsVendedor.Open;
  if InformarVendedor = 'S' then
  begin
    if Pesquisa(DM.cdsVendedor,['NOME','ID_VENDEDOR'],
                                   ['',''],[30,2],'','0','','Vendedor','Vendedor','Vendedor') then
    begin
      DM.cdsPdvID_VENDEDOR.AsInteger  := DM.cdsVendedorID_VENDEDOR.AsInteger;
      DM.cdsPdvVENDEDOR.Value         := DM.cdsVendedorNOME.Value;
    end;
  end
  else
  begin
    DM.cdsPDVID_VENDEDOR.AsInteger := 1;
    if DM.cdsVendedor.Locate('ID_VENDEDOR',DM.cdsPDVID_VENDEDOR.AsInteger,[])then
    begin
      DM.cdsPdvID_VENDEDOR.AsInteger  := DM.cdsVendedorID_VENDEDOR.AsInteger;
      DM.cdsPdvVENDEDOR.Value         := DM.cdsVendedorNOME.Value;
    end;
  end;


  cdsDinamica.Close;
  cdsDinamica.IndexFieldNames :='';
  cdsDinamica.CommandText := 'SELECT MAX(ID_PDV) FROM TB_PDV';
  cdsDinamica.Open;
  DM.cdsPdvID_PDV.AsInteger := cdsDinamica.Fields[0].AsInteger+1;

  if DM.cdsPdv.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
  end
  else
  begin
    DM.cdsPdv.ApplyUpdates(0);
    DM.cdsItemPdv.Close;
    DM.cdsItemPdv.Open;
    InsertItemVenda;
  end;
end;

procedure TfrmPdv.InformarCliente;
begin
  MULTI := False;
  DM.CdsCliente.Close;
  DM.CdsCliente.Open;
  DM.cdsPdv.Edit;
  if Pesquisa(DM.CdsCliente,['R_SOCIAL','ID_CLIENTE','CIDADE'],
                            ['Nome do Cliente','C�d.Cliente','Cidade'],[35,10,30],'','','','','Cliente','Cliente') Then
  begin
    DM.cdsPdvID_CLIENTE.AsInteger := DM.CdsClienteID_CLIENTE.AsInteger;
    DM.cdsPdvR_SOCIAL.AsString    := DM.CdsClienteR_SOCIAL.AsString;
    DM.cdsPdvCNPJ_CPF.AsString    := DM.CdsClienteCNPJ_CPF.AsString;
  end;

  if Application.MessageBox('Deseja Realmente Informar Este Cliente ?','Aten��o!!!',MB_OK+MB_YESNO ) = idyes then
  begin
    DM.cdsPdv.ApplyUpdates(0);
    L_INCLUIR_ITEMClick(Self);
  end
  else
  begin
    DM.cdsPdv.Cancel;
  end;
end;

procedure TfrmPdv.InsertItemVenda;
begin
  DM.cdsProduto.Refresh;
  MULTI := False;
  DM.cdsItemPdv.Append;
  DM.cdsItemPdvID_PDV.AsInteger       := DM.cdsPdvID_PDV.AsInteger;
//  edtProduto.Clear;
//  edtProduto.SetFocus;
  MULTI := False;
end;

procedure TfrmPdv.DBEdit2Exit(Sender: TObject);
var
aux: integer;
quant: string;
codigo,codigoPesado: string;
convertQuantFloat : Double;

begin
  if multi = True then
  begin
  aux := 0;
  aux := Pos('*',edtProduto.Text);
  if aux = 0 then
  begin
  aux := Pos('X',edtProduto.Text);
  if aux = 0 then
  aux := Pos('x',edtProduto.Text);
  quant := Copy(edtProduto.Text,1,aux-1);
  convertQuantFloat := StrToFloat(quant);
      if convertQuantFloat > 789 then
      begin
        ShowMessage('Quantidade N�o Permitida.');
        edtProduto.Clear;
        edtProduto.SetFocus;
        MULTI := False;
        Exit;
      end;

  codigo := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
  end;
    if SituacaoVenda = 'Encerrada' then
    begin
      Exit;
    end;
      if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) then
      begin
        DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString;// CODIGO;
        DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
        DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
        DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
        DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
        DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
        if VlVenda = 1 then
          DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
        if VlVenda = 2 then
          DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

        DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
        DM.cdsItemPdvQUANT.AsFloat                    := StrToFloat(QUANT);
        L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
      end
      else
      begin
        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                    '                                     '+#13+
                    '   C�digo N�o Encontrado             '+#13+
                    '                                     ');
        DBEdit2.SetFocus;
      end;
  end
  else
  begin
  end;
end;

procedure TfrmPdv.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPdv.DBEdit3Exit(Sender: TObject);
begin
  if DBEdit3.Text = '' then
  begin
    Exit;
  end;
  if (not DM.cdsItemPdvQUANT.IsNull) then
  begin
    DM.cdsItemPdvVL_TOTAL.AsFloat :=
      DM.cdsItemPdvQUANT.AsFloat *
      DM.cdsItemPdvVL_UNIT.AsFloat;

   DM.cdsItemPdvVL_ALIQFED.AsFloat := (DM.cdsItemPdvVL_TOTAL.AsFloat*DM.cdsItemPdvALIQFED.AsFloat)/100;
   DM.cdsItemPdvVL_ALIQEST.AsFloat := (DM.cdsItemPdvVL_TOTAL.AsFloat*DM.cdsItemPdvALIQEST.AsFloat)/100;
   DM.cdsItemPdvVL_ALIQMUN.AsFloat := (DM.cdsItemPdvVL_TOTAL.AsFloat*DM.cdsItemPdvALIQMUN.AsFloat)/100;

  end;
    cdsDinamica.Close;
    cdsDinamica.IndexFieldNames :='';
    cdsDinamica.CommandText := 'SELECT MAX(ID_ITEM_PDV) FROM TB_ITEM_PDV';
    cdsDinamica.Open;
    DM.cdsItemPdvID_ITEM_PDV.AsInteger := cdsDinamica.Fields[0].AsInteger+1;

    if DM.cdsItemPdv.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      DM.cdsItemPdv.ApplyUpdates(0);
      SomaTotais;
      edtProduto.Clear;
      edtProduto.SetFocus;
      InsertItemVenda;
    end;
end;

procedure TfrmPdv.SomaTotais;
begin
  cdsDinamica.Close;
  cdsDinamica.IndexFieldNames :='';
  cdsDinamica.CommandText :=    ' SELECT SUM(IP.VL_TOTAL),SUM(IP.VL_ALIQFED),SUM(IP.VL_ALIQEST),SUM(IP.VL_ALIQMUN)'+
                                ' FROM TB_ITEM_PDV IP '+
                                ' WHERE IP.ID_PDV = '+DM.cdsPdvID_PDV.AsString;
                                //COLOCAR LOJA TAMBEM
  cdsDinamica.Open;

  DM.cdsPdv.Edit;
  DM.cdsPdvVL_VENDA.AsFloat := cdsDinamica.Fields[0].AsFloat;
  DM.cdsPdvVL_LIQ.AsFloat   := (DM.cdsPdvVL_VENDA.AsFloat - DM.cdsPdvVL_DESC.AsFloat);
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_VENDA.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_DESC.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_LIQ.AsFloat);
  DM.cdsPDVVL_ALIQFED.AsFloat := cdsDinamica.Fields[1].AsFloat;
  DM.cdsPDVVL_ALIQEST.AsFloat := cdsDinamica.Fields[2].AsFloat;
  DM.cdsPDVVL_ALIQMUN.AsFloat := cdsDinamica.Fields[3].AsFloat;
  DM.cdsPdv.ApplyUpdates(0);
end;

procedure TfrmPdv.SpeedButton3Click(Sender: TObject);
begin
//  Application.Terminate;
  Close;
end;

procedure TfrmPdv.L_ENCERRAR_VENDAClick(Sender: TObject);
begin
  MULTI := False;
  if not (DM.cdsItemPdv.State in dsEditmodes) then
  begin
    ShowMessage('N�o Exite Venda Para Encerra. Favor Verifique');
    Exit;
  end;
    SituacaoVenda := 'Encerrada';
    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
    DM.cdsItemPdv.Cancel;
    edtProduto.SetFocus;
    Exit;
    SituacaoVenda := '';
end;

procedure TfrmPdv.L_INCLUIR_ITEMClick(Sender: TObject);
begin
  MULTI := False;
  L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
  SituacaoVenda := 'LAN�ANDO VENDA(S)';
  if DM.cdsItemPdv.State in dsEditModes then
  begin
    ShowMessage('Venda j� se Encontra em Modo de Inser��o.');
  end
  else
  begin
    if DM.cdsPdv.RecordCount = 0 then
    begin
      ShowMessage('N�o Exite Venda Aberta. Para Incluir Itens');
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
    end
    else
    begin
      if DM.cdsPdv.RecordCount > 0 then
      begin
        L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
        edtProduto.SetFocus;
        InsertItemVenda;
      end
    end;
  end;
end;

procedure TfrmPdv.L_CANCELAR_VENDAClick(Sender: TObject);
Var
 Loja : string;
begin
  MULTI := False;
  if DM.cdsPdv.RecordCount = 0 then
  begin
    ShowMessage('N�o Exite Venda para Cancelar');
    Exit;
  end;
  if DM.cdsItemPdv.State in dsEditModes then
  begin
    ShowMessage('Favor Encerre a Venda para Fazer o Cancelamento.');
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Cancelar esta Venda?','Confirma��o',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      cdsCancelaItem.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
      cdsCancelaItem.Execute;
      if DM.cdsPdv.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('O Sistema N�o Conseguiu Cancelar Esta Venda. Tente Novamente ou Contate o Suporte.');
      end
      else
      begin
        if DM.cdsPDVID_MESA.AsInteger > 0  then
        begin
          DM.cdsDinamica.Close;
          DM.cdsDinamica.IndexFieldNames:='';
          DM.cdsDinamica.CommandText := ' UPDATE TB_MESA M SET M.STATUS = ''O'' WHERE M.ID_MESA ='+DM.cdsPDVID_MESA.AsString;
          DM.cdsDinamica.Execute;
          DM.cdsDinamica.Close;

          DM.cdsDinamica.IndexFieldNames:='';
          DM.cdsDinamica.CommandText := 'UPDATE TB_COMANDA C SET C.STATUS = ''O'' WHERE C.ID_COMANDA = '+DM.cdsPDVID_COMANDA.AsString;
          DM.cdsDinamica.Execute;
          DM.cdsDinamica.Close;

        end;
        DM.cdsPdv.ApplyUpdates(0);
        ShowMessage('Venda Cancelada com Sucesso.');
        Loja := frmPdv.recInformacoes.lojaCredenciada;
        DM.cdsPdv.Refresh;
        DM.cdsPdv.Close;
        DM.cdsPdv.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
        DM.cdsPdv.Params[1].AsInteger := StrToInt(Loja);
        DM.cdsPdv.Open;

        DM.cdsItemPdv.Close;
        DM.cdsItemPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
        DM.cdsItemPdv.Open;

        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
        L_TOTAL_VENDA.Caption:='R$ 0,00';
        L_TOTAL_DESC_ENTRADA.Caption := 'R$ 0,00';
        L_TOTAL_LIQUIDO.Caption := 'R$ 0,00';
        edtProduto.SetFocus;
        SituacaoVenda :='';
        Exit;
      end;
    end
    else
    begin
      ShowMessage('Venda N�o Foi Cancelada.');
      edtProduto.SetFocus;
      Exit;
    end;
  end;
end;

procedure TfrmPdv.L_DESCONTOClick(Sender: TObject);
begin
  MULTI := False;
//  L_ENCERRAR_VENDAClick(Self);

 if L_SITUACAO_VENDA.Caption ='Caixa Livre' then
 begin
   ShowMessage('N�o Existe Venda Para Efetuar Desconto.');
   Exit;
 end;

 if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
 begin
  MULTI := False;
  if not (DM.cdsItemPdv.State in dsEditmodes) then
  begin
    ShowMessage('N�o Exite Venda Para Efetuar Desconto. Favor Verifique');
    Exit;
  end;
    SituacaoVenda := 'Encerrada';
    L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
    DM.cdsItemPdv.Cancel;
    //DBGrid1.SetFocus;
    edtProduto.SetFocus;
   // Exit;
    SituacaoVenda := '';
 end;

  if DM.cdsPdvVL_LIQ.AsFloat = 0 then
  begin
    ShowMessage('Impossiv�l Efetuar Desconto da Venda. O Valor da Venda Esta Zerado.');
    if DM.cdsPdv.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda :='';
      edtProduto.SetFocus;
      InsertItemVenda;
    end;
  end;
  if DM.cdsPdvVL_LIQ.AsFloat > 0 then
  begin
    frmDesconto.ShowModal;
    edtProduto.SetFocus;
    MULTI := False;
    L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
    SituacaoVenda := 'LAN�ANDO VENDA(S)';
    InsertItemVenda;
  end;

end;

procedure TfrmPdv.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_f1 then
  begin
    PesquisaProduto;
  end;
  if Key = Vk_f2 then
  begin
    L_NOVA_VENDAClick(Self);
  end;
  if Key = Vk_f3 then
  begin
    L_CANCELAR_VENDAClick(Self);
  end;
  if Key = Vk_f4 then
  begin
    L_ENCERRAR_VENDAClick(Self);
  end;
  if Key = Vk_f5 then
  begin
    L_EXCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f6 then
  begin
    L_INCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f7 then
  begin
    L_DESCONTOClick(Self);
  end;
  if Key = Vk_f8 then
  begin
    L_TROCAR_USUARIOClick(Self);
  end;
  if Key = Vk_f9 then
  begin
    L_OPCOESClick(Self);
  end;
  if Key = Vk_f10 then
  begin
    L_SAIRClick(Self);
  end;

end;

procedure TfrmPdv.PesquisaProduto;
begin
 if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
 begin
   ShowMessage('Situa��o da Venda Esperando Pagamento, ou F6+Item(s)');
   edtProduto.SetFocus;
   edtProduto.Clear;
   Exit;
 end;

  if Pesquisa(DM.cdsProduto,['DESCRICAO','REFERENCIA','VL_VENDA_VARE'],['Descri��o do Produto''C�digo','Valor'],
    [30,13,10],'','','','','Produto','Produto') then
  begin
    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString;
    DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
    if VlVenda = 1 then
      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
    if VlVenda = 2 then
      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
    DM.cdsItemPdvCD_BARRA.Value              := DM.cdsProdutoREFERENCIA.Value;
    edtProduto.Text                               := edtProduto.Text+DM.cdsProdutoCD_BARRA.AsString;
    L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;

    IBPT;
    edtProdutoExit(Self);
  end;
end;


procedure TfrmPdv.ChecaUsuario(nivel: integer);
begin
 //
end;

procedure TfrmPdv.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_VENDA.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_DESC.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_LIQ.AsFloat);
  
end;

procedure TfrmPdv.DBNavigator1DblClick(Sender: TObject);
begin
  L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_VENDA.AsFloat);
  L_TOTAL_DESC_ENTRADA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_DESC.AsFloat);
  L_TOTAL_LIQUIDO.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_LIQ.AsFloat);
  
end;

procedure TfrmPdv.L_EXCLUIR_ITEMClick(Sender: TObject);
begin
  MULTI := False;
  if DM.cdsItemPdv.RecordCount = 0 then
  begin
    ShowMessage('N�o Exite(m) Registro(s) Para Excluir.');
    Exit;
  end;
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    Application.MessageBox('    Impossiv�l Excluir Iten(s) com a Venda em Andamento'+#13+
                           'Por Favor Encerre a Venda e Selecione o Item que deseja Excluir','Aten��o',MB_OK+MB_ICONWARNING);
    Exit;
  end
  else
  begin
    if Application.MessageBox('Deseja Realmente Excluir Este Item?','Confirma��o',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      if DM.cdsItemPdv.ApplyUpdates(0) <> 0 then
      begin
        ShowMessage('O Sistema N�o Conseguiu Cancelar Esta Venda. Tente Novamente ou Contate o Suporte.');
      end
      else
      begin
        DM.cdsItemPdv.Delete;
        DM.cdsItemPdv.ApplyUpdates(0);
        SomaTotais;
        DM.cdsItemPdv.Refresh;
       Application.MessageBox('Item Excluido Com Sucesso.','Aten��o',MB_OK);
      end;
    end
    else
    begin
      Application.MessageBox('Exclus�o do Item Cancelada.','Aten��o',MB_OK);
    end;
  end;
end;

procedure TfrmPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_f2 then
  begin
    L_NOVA_VENDAClick(Self);
  end;
  if Key = Vk_f3 then
  begin
    L_CANCELAR_VENDAClick(Self);
  end;
  if Key = Vk_f4 then
  begin
    L_ENCERRAR_VENDAClick(Self);
  end;
  if Key = Vk_f5 then
  begin
    L_EXCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f6 then
  begin
    L_INCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f7 then
  begin
    L_DESCONTOClick(Self);
  end;
  if Key = Vk_f8 then
  begin
    L_TROCAR_USUARIOClick(Self);
  end;
  if Key = Vk_f9 then
  begin
    L_OPCOESClick(Self);
  end;

  if Key = Vk_f10 then
  begin
    L_SAIRClick(Self);
  end;
  if Key = Vk_f11 then
  begin
    if DM.cdsPDV.RecordCount = 0  then
    begin
      L_NOVA_VENDAClick(Self);
      L_ENCERRAR_VENDAClick(Self);
      if frmRecebeComanda = nil then
      begin
        frmRecebeComanda := TfrmRecebeComanda.Create(Application);
        frmRecebeComanda.ShowModal;
      end;
    end
    else
    begin
      if frmRecebeComanda = nil then
      begin
        frmRecebeComanda := TfrmRecebeComanda.Create(Application);
        frmRecebeComanda.ShowModal;
      end;
    end;

  end;

end;

procedure TfrmPdv.L_PAGAMENTOClick(Sender: TObject);
begin
  MULTI := False;
  L_ENCERRAR_VENDAClick(Self);

  if DM.cdsPdvDT_VENDA.AsDateTime <> Date then
  begin
    ShowMessage('    A Data da Venda Est� Diferente da Data Atual !! '+#13+
                ' Data da Venda : '+DBEdit11.Text+' Data Atual : '+DateToStr(Date) );
    if Application.MessageBox('Deseja Alterar a Venda Para a Data Atual?','Aten��o!!!',MB_YESNO+MB_ICONQUESTION) = idyes then
    begin
      DM.cdsPdv.Edit;
      DM.cdsPdvDT_VENDA.AsDateTime := Date;
      DM.cdsPdv.ApplyUpdates(0);
      DM.cdsPdv.Refresh;
      ShowMessage('Data Alterada Com Sucesso!!!');
    end
    else
    begin
      Exit;
    end;
  end;

  if DM.cdsItemPdv.State in dsEditModes then
  begin
    ShowMessage('Encerre a Venda Para Efetuar o Recebimento.');
    if DM.cdsPdv.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda :='';
      edtProduto.SetFocus;
      Exit;
    end;
  end;
  if (DM.cdsPdvVL_LIQ.AsFloat <= 0) and (DM.cdsItemPdv.IsEmpty ) then
  begin
    ShowMessage('Impossiv�l Receber Esta Venda. O Valor da Venda Esta Zerado Ou Negativo.');
    if DM.cdsPdv.RecordCount > 0 then
    begin
      L_SITUACAO_VENDA.Caption := 'LAN�ANDO VENDA(S)';
      SituacaoVenda :='';
      edtProduto.SetFocus;
      InsertItemVenda;
    end;
  end;
  if (DM.cdsPdvVL_LIQ.AsFloat >= 0) and (DM.cdsItemPdv.RecordCount >0) then
  begin
    if frmPagamentoPdv = nil then
    begin
      frmPagamentoPdv :=TfrmPagamentoPdv.Create(Application);
      frmPagamentoPdv.ShowModal;
    end;
  end;

end;

procedure TfrmPdv.BB_CONFIRMAClick(Sender: TObject);
begin

    DM.cdsPdv.Edit;

    if frmPagamentoPdv.Enviado = 'S' then
      DM.cdsPDVCUPOM.AsString :='S'
    else
      DM.cdsPDVCUPOM.AsString :='N';

    DM.cdsPdvSTATUS.AsString := 'F';
    if DM.cdsPdv.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Gravar Esta Venda. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      {if (DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger = 1) OR (DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger = 2) then
      begin
        if Application.MessageBox('Grava no Contas a Receber?','Aten��o',MB_YESNO+MB_ICONQUESTION) = idyes then
        begin
          GravaReceber;
        end;
      end;}

      DM.cdsPdv.ApplyUpdates(0);
      DM.cdsPdv.Refresh;
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
      L_TOTAL_VENDA.Caption:=' R$ 0,00 ';
      L_TOTAL_DESC_ENTRADA.Caption := 'R$ 0,00';
      L_TOTAL_LIQUIDO.Caption := 'R$ 0,00';
      MULTI := False;
      SituacaoVenda :='';

      if DM.cdsPdv.RecordCount > 0 then
        L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
      else
        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
        MULTI := False;

        DM.cdsPdv.Close;
        DM.cdsPdv.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
        DM.cdsPdv.Params[1].AsInteger := StrToInt(frmPdv.recInformacoes.lojaCredenciada);
        DM.cdsPdv.Open;

        DM.cdsItemPdv.Close;
        DM.cdsItemPdv.Params[0].AsInteger := DM.cdsPdvID_PDV.AsInteger;
        DM.cdsItemPdv.Open;
        L_TOTAL_VENDA.Caption        := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_VENDA.AsFloat);
        L_TOTAL_DESC_ENTRADA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_DESC.AsFloat);
        L_TOTAL_LIQUIDO.Caption      := 'R$ '+FormatFloat('###,###0.00',DM.cdsPdvVL_LIQ.AsFloat);

    end;
  MULTI := False;


end;

procedure TfrmPdv.BB_CANCELARClick(Sender: TObject);
begin
  MULTI := False;
end;

procedure TfrmPdv.L_OPCOESClick(Sender: TObject);
begin
  {if frmPdv.recInformacoes.Nivel >= 0 then
  begin
    MULTI := False;
    if DM.cdsItemPdv.State in dsEditModes then
    begin
      ShowMessage('Encerre a Venda Para Efetuar o Resumo.');
    end
    else
    begin
      if frmMenuCaixa = nil then
      begin
        frmMenuCaixa:= TfrmMenuCaixa.Create(Application);
        frmMenuCaixa.ShowModal;
      end;
    end;
  end
  else
  begin
    ShowMessage(' Usu�rio Sem Permiss�o. Consulte o Gerente !!! ');
  end; }

  if frmMenuCaixa = nil then
  begin
    frmMenuCaixa:= TfrmMenuCaixa.Create(Application);
    frmMenuCaixa.ShowModal;
  end;

end;

procedure TfrmPdv.L_SAIRClick(Sender: TObject);
begin
  if DM.cdsItemPdv.State in dsEditModes then
  begin
    ShowMessage('Favor Encerre a Venda Para Sair Do PDV');
    Exit;
  end;

  if Application.MessageBox('Deseja Fechar o PDV?','Aten��o',MB_YESNO+MB_ICONQUESTION)= idyes then
  begin
    Close;
  end
  else
  begin
    ShowMessage('Fechamento Cancelado');
  end;
end;

procedure TfrmPdv.Edit1Exit(Sender: TObject);
begin
  DBGrid4.SetFocus;
end;

procedure TfrmPdv.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key in ['*'] then
  begin
  if Length(DBEdit2.Text) <=0 then
  begin
   key := #0;
   exit;
  end;
  if multi = False then
   multi := True
  else begin
   key := #0;
   exit;
  end;
  end;
  if not (key in ['0'..'9',#8,'*']) then key := #0;
end;

procedure TfrmPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    ShowMessage('Favor Encerre a Venda Antes de Fechar o PDV!');
    Abort;
  end
  else
  begin
    DM.cdsProduto.Close;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmPdv := nil;
    Application.Terminate;
  end;


end;

procedure TfrmPdv.IBPT;
Var
 ALIQNAC, ALIQEST,ALIQMUN : Double;
 CHAVE : string;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT P.NCM,P.CODIGO,P.CD_BARRA, A.DESCRICAO, A.ALIQNAC, A.ALIQEST,A.ALIQMUN,A.CHAVE '+
                                ' FROM TB_PRODUTO P '+
                                ' JOIN TB_ALIQ_IBPT A ON (A.ID_NCM = P.ID_NCM )'+
                                ' WHERE P.ID_PRODUTO ='+DM.cdsItemPdvID_PRODUTO.AsString +' AND P.ID_GRUPO_PRODUTO =  '+DM.cdsItemPdvID_GRUPO_PRODUTO.AsString;
 DM.cdsDinamica.Open;

 if DM.cdsDinamica.IsEmpty then
 begin
   ShowMessage('Produto Sem NCM com Base Na Tabela IBPT');
 end
 else
 begin
   ALIQNAC := DM.cdsDinamica.Fields[4].AsFloat;
   ALIQEST := DM.cdsDinamica.Fields[5].AsFloat;
   ALIQMUN := DM.cdsDinamica.Fields[6].AsFloat;
   CHAVE   := DM.cdsDinamica.Fields[7].AsString;
   DM.cdsItemPdvALIQFED.AsFloat := ALIQNAC;
   DM.cdsItemPdvALIQEST.AsFloat := ALIQEST;
   DM.cdsItemPdvALIQMUN.AsFloat := ALIQMUN;
 end;

end;

procedure TfrmPdv.ImprimiCuponNaoFiscal;
var
     subtotal, total,Quant : currency;
     linha : integer;
     traco,valorPago,ValorTroco : string;
begin
     DM.cdsEmpresa.Open;
     total    := 0;
     Traco    := '-------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 45;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := S10cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := False;

     // Cabe�alho do Cupom...
     with rdprint1 do
        begin
        abrir;
        imp (06,01,'N� ' +FormatFloat('#00000000',DM.cdsPdvID_PDV.AsFloat)+
                   '   ' + DM.cdsPdvDT_VENDA.AsString+
                   '    Op.: ' + L_USUARIO.Caption);

        // Dados do Cliente...
        imp (07,01,traco);
        impf(08,01,DM.cdsPdvID_CLIENTE.AsString+' - '+DM.cdsPdvR_SOCIAL.AsString,[comp12]);
        impf(09,01,'CPF/CNPJ '+DM.cdsPdvCNPJ_CPF.AsString,[comp12]);
        // Titulo dos Itens...
        imp (10,01,traco);
        imp (11,01,'    Qte   Descri��o dos Produtos UN Unit�rio Sub-Total');
        imp (12,01,traco);
        end;

     // Imprime itens do pedido...
     linha := 13;
     DM.cdsItemPdv.first;
     while not DM.cdsItemPdv.eof do
        begin
        with rdprint1 do
           begin
           Quant := DM.cdsItemPdvQUANT.AsFloat;
           ImpVal (linha,01,'#,###0.000',Quant,[]);
           impf  (linha,14,DM.cdsItemPdvDESCRICAO.Value,[]);
           impf  (linha,35,DM.cdsItemPdvUNIDADE.AsString,  []);
           impval(linha,37,'#,##0.00', DM.cdsItemPdvVL_UNIT.AsFloat,[]);
           subtotal := (DM.cdsItemPdvVL_TOTAL.AsFloat);
           total    := total + subtotal;
           impval(linha,47,'##,##0.00', subtotal, []);
           inc(linha);
           end;
        DM.cdsItemPdv.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,01,'Total Geral do Cupom');
        impval(linha,43,'###,###,##0.00',total,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
        impval(linha,43,'-##,###,##0.00',strtofloat(DM.cdsPdvVL_DESC.AsString),[]);
        // Total Liquido...
        inc (linha);
        impf(linha,01,'VALOR A PAGAR R$',[]);
        impval(linha,43,'###,###,##0.00',Total - strtofloat(DM.cdsPdvVL_DESC.AsString),[]);
        inc (linha);
        imp (linha,01,'Valor Pago');
//           valorPago := TiraPontoeVirgula(edtValorPago.Text);
        impval(linha,43,'###,###,##0.00',StrToFloat(valorPago),[]);
        inc (linha);
        ImpF(linha,01,'Troco',[comp12,negrito]);
//           ValorTroco := TiraPontoeVirgula(edtTroco.Text);
        impval(linha,33,'###,###,##0.00',strtofloat(ValorTroco),[comp12,negrito]);
        inc (linha);
        imp   (linha,01,traco);
        inc (linha);
        imp (linha,01,'Tipo Pagamento '+DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString);
        inc (linha);
        imp (linha,01,'Forma Pagamento '+DM.cdsFormaPagamentoDESCRICAO_PAGAMENTO.AsString);

        // Final...
        inc (linha);
        imp (linha,01,traco);
        inc (linha);
        impc(linha,28,'Obrigado pela prefer�ncia',[comp12]);
        inc (linha);
        inc (linha);
        impc(linha,28,'VOLTE SEMPRE',[Normal]);
        inc (linha);
        inc (linha);
        impc(linha,28,'***  SEM VALOR FISCAL  ***',[]);

        // Avan�a 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para for�ar impress�o da p�gina

   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, N�O ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      rdprint1.OpcoesPreview.Preview := False;                            {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;
    // Restaura valores normais para imprimir Cupom N�o Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;
end;

procedure TfrmPdv.bb_imprimirClick(Sender: TObject);
begin
   ImprimirTermica;
   FechaVendaPrint;
   MULTI := False;
end;

procedure TfrmPdv.ImprimirConvenio;
var
     subtotal, total,Quant : currency;
     linha : integer;
     valorPago,ValorTroco,traco,Valor,vlExtenso,vlExtenso1,DtExtenso,DtExtenso1,DtExtenso2,TextoDtVenc : string;
     Vencimeto : TDate;

begin
     DM.cdsEmpresa.Open;
     total    := 0;
     Traco    := '-------------------------------------------------------';
     // Parametros para o CUPOM FISCAL
     rdprint1.TamanhoQteLinhas      := 1;      // Linhas (deve ser 1 quando for CUPOM)
     rdprint1.TamanhoQteColunas     := 45;     // Largura da Bobina aprox. 7 cm (7 / 2.54 * 20)
     rdprint1.FonteTamanhoPadrao    := s10cpp; // Fonte Comprimido em 20 cpp
     rdprint1.OpcoesPreview.Preview := false;

     // Cabe�alho do Cupom...
     with rdprint1 do
        begin
        abrir;
        // Dados do Cliente...
        imp (07,01,traco);
        impf(08,01,DM.cdsPdvID_CLIENTE.AsString+' - '+DM.cdsPdvR_SOCIAL.AsString,[comp12]);
        impf(09,01,'CPF/CNPJ '+DM.cdsPdvCNPJ_CPF.AsString,[comp12]);
        // Titulo dos Itens...
        imp (10,01,traco);
        imp (11,01,'    Qte   Descri��o dos Produtos UN Unit�rio Sub-Total');
        imp (12,01,traco);
        end;

     // Imprime itens do pedido...
     linha := 13;
     DM.cdsItemPdv.first;
     while not DM.cdsItemPdv.eof do
        begin
        with rdprint1 do
           begin
           Quant := DM.cdsItemPdvQUANT.AsFloat;
           ImpVal (linha,01,'#,###0.000',Quant,[]);
           impf  (linha,14,DM.cdsItemPdvDESCRICAO.Value,[]);
           impf  (linha,35,DM.cdsItemPdvUNIDADE.AsString,  []);
           impval(linha,37,'#,##0.00', DM.cdsItemPdvVL_UNIT.AsFloat,[]);
           subtotal := (DM.cdsItemPdvVL_TOTAL.AsFloat);
           total    := total + subtotal;
           impval(linha,47,'##,##0.00', subtotal, []);
           inc(linha);
           end;
        DM.cdsItemPdv.next;
        end;

     // Parte final do Cupom... (daqui pra frente continuo incrementando a LINHA
     with rdprint1 do
        begin
        // Total...
        imp   (linha,01,traco);
        inc   (linha);
        imp   (linha,01,'Total Geral do Cupom');
        impval(linha,43,'###,###,##0.00',total,[]);
        // Desconto Global
        inc (linha);
        imp (linha,01,'(-) Desconto Global');
        impval(linha,43,'-##,###,##0.00',strtofloat(DM.cdsPdvVL_DESC.AsString),[]);
        // Total Liquido...
        inc (linha);
        impf(linha,01,'VALOR A PAGAR R$',[]);
        impval(linha,43,'###,###,##0.00',Total - strtofloat(DM.cdsPdvVL_DESC.AsString),[]);
        inc (linha);
        imp (linha,01,'Valor Pago');
//           valorPago := TiraPontoeVirgula(edtValorPago.Text);
//        impval(linha,43,'###,###,##0.00',StrToFloat(valorPago),[]);
        inc (linha);
        ImpF(linha,01,'Troco',[comp12,negrito]);
//           ValorTroco := TiraPontoeVirgula(edtTroco.Text);
        impval(linha,33,'###,###,##0.00',strtofloat(ValorTroco),[comp12,negrito]);
        inc (linha);
        imp   (linha,01,traco);
        inc (linha);
        imp (linha,01,'Tipo Pagamento '+DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString);
        inc (linha);
        imp (linha,01,'Forma Pagamento '+DM.cdsFormaPagamentoDESCRICAO_PAGAMENTO.AsString);
        // Final...
        inc (linha);
        imp (linha,01,traco);
        inc (linha);
        impc(linha,28,'Obrigado pela prefer�ncia',[normal]);
        inc (linha);
        impc(linha,28,'VOLTE SEMPRE',[Normal]);
        inc (linha);
        inc (linha);
        impc(linha,28,'***  SEM VALOR FISCAL  ***',[comp12,negrito]);

        // Convenio
        inc (linha);
        inc (linha);
        imp (linha,01,traco);
        inc (linha);
        inc (linha);
        inc (linha);
        impc(linha,15,'    NOTA PROMISSORIA     ',[normal,negrito]);
        inc (linha);
        inc (linha);
        impc(linha,01,'N�'+FormatFloat('#000000000',DM.cdsPdvID_PDV.AsFloat),[normal,negrito]);
        inc (linha);
        impc(linha,01,'Cliente = '+DM.cdsPdvID_CLIENTE.AsString+' - '+DM.cdsPdvR_SOCIAL.AsString,[]);
        inc (linha);
        impc(linha,01,'CPF/CNPJ= '+DM.cdsPdvCNPJ_CPF.AsString,[]);
        impc(linha,40,'R$'+FormatFloat('###,###0.00',DM.cdsPdvVL_LIQ.AsFloat),[normal,negrito]);
        inc (linha);
        Vencimeto := DM.cdsPdvDT_VENDA.AsDateTime + DM.cdsPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA.AsInteger;
        TextoDtVenc := 'Aos '+DataExtenso(Vencimeto)+' pagarei por esta unica NOTA PROMISSORIA A '+L_NOME_LOJA.Caption +' ou a sua ordem a quantia de :';
        DtExtenso  := copy(TextoDtVenc,1,52);
        impc(linha,01,DtExtenso,[]);
        inc (linha);
        DtExtenso1 := copy(TextoDtVenc,53,53);
        impc(linha,01,DtExtenso1,[]);
        inc (linha);
        DtExtenso2 := copy(TextoDtVenc,105,106);
        impc(linha,01,DtExtenso2,[]);
        inc (linha);
        Valor := NumeroParaExtenso(StrToFloat(valorPago));
        vlExtenso := copy(Valor,1,45);
        vlExtenso1 := copy(Valor,46,99);
        ImpC(linha,01,vlExtenso,[]);
        inc (linha);
        ImpC(linha,01,vlExtenso1,[]);
        inc (linha);
        inc (linha);
        impc(linha,01,'Data Emiss�o '+DM.cdsPdvDT_VENDA.AsString,[negrito]);
        inc (linha);
        inc (linha);
        inc (linha);
        impc(linha,10,'______________________',[normal]);
        inc (linha);
        inc (linha);
        impc(linha,10,'   ASSINATURA     ',[normal]);

        // Avan�a 7 linhas em Branco...
        linha := linha + 7;
        imp (linha,01,' '); // Para for�ar impress�o da p�gina

   {===========================================================================}
   {        Mostra preview com tamanho variavel de um cupom nao Fiscal         }
   {                                                                           }
   {              ISTO NAO DEVERIA SER FEITO, N�O ESTA PREVISTO NOS            }
   {               RECURSOS DO RDPRINT,  USE POR SUA CONTA E RISCO...          }
   {===========================================================================}
   {}      rdprint1.OpcoesPreview.Preview := False;                            {}
   {}      rdprint1.TamanhoQteLinhas      := linha; // Qte de linhas do cupom {}
   {===========================================================================}

        fechar;
        end;
    // Restaura valores normais para imprimir Cupom N�o Fiscal...
    rdprint1.OpcoesPreview.Preview := false;
    rdprint1.TamanhoQteLinhas      := 1;
end;
function NumeroParaExtenso(parmNumero: Real): string;
begin
  if (parmNumero >= Min) and (parmNumero <= Maxi) then
  begin
  {Tratar reais}
        Result := ConversaoRecursiva(Round(Int(parmNumero)));
        if Round(Int(parmNumero)) = 1 then
            Result := Result + Moeda
        else
            if Round(Int(parmNumero)) <> 0 then
               Result := Result + Moedas;
            {Tratar centavos}
            if not(Frac(parmNumero) = 0.00) then
            begin
                    if Round(Int(parmNumero)) <> 0 then
                        Result := Result + ' e ';
                        Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
                        if (Round(Frac(parmNumero) * 100) = 1) then
                            Result := Result + centesimo
                            else
                                    Result := Result + centesimos;
                        end;
                    end
            else
            raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',[parmNumero, Min, Maxi]);
end;
function ConversaoRecursiva(N: LongWord): string;
begin
  case N of
      1..19:
              Result := Unidades[N];
      20, 30, 40, 50, 60, 70, 80, 90:
              Result := Dezenas[N div 10] + ' ';
      21..29, 31..39, 41..49, 51..59, 61..69, 71..79, 81..89, 91..99:
              Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
      100, 200, 300, 400, 500, 600, 700, 800, 900:
              Result := Centenas[N div 100] + ' ';
      101..199:
              Result := ' cento e ' + ConversaoRecursiva(N mod 100);
      201..299, 301..399, 401..499, 501..599, 601..699, 701..799, 801..899, 901..999:
              Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
      1000..999999:
              Result := ConversaoRecursiva(N div 1000) + ' mil ' + ConversaoRecursiva(N mod 1000);
      1000000..1999999:
              Result := ConversaoRecursiva(N div 1000000) + ' milh�o '+ ConversaoRecursiva(N mod 1000000);
      2000000..999999999:
              Result := ConversaoRecursiva(N div 1000000) + ' milh�es '+ ConversaoRecursiva(N mod 1000000);
      1000000000..1999999999:
              Result := ConversaoRecursiva(N div 1000000000) + ' bilh�o ' + ConversaoRecursiva(N mod 1000000000);
      2000000000..4294967295:
              Result := ConversaoRecursiva(N div 1000000000) + ' bilh�es ' + ConversaoRecursiva(N mod 1000000000);
  end;
end;
procedure TfrmPdv.edtValorPagoEnter(Sender: TObject);
begin
  DM.cdsPdv.Edit;
  DM.cdsPdv.ApplyUpdates(0);
end;

procedure TfrmPdv.GravaReceber;
var
i: Byte;
Valor : Double;
begin
//Abro o Banco
  {DM.cdsContasReceber.Close;
  DM.cdsContasReceber.Open;
//Chamo um procedimento para verificar se tem presta��o pendente
  //verificaparcela;
// Minha vari�vel no caso i inicialmente � 0
  i:=0;
  // minha vari�vel recebe 1 do numero de parcelas no caso o digitado dentro de edParcela.Text
  for i := 1 to dm.cdsFormaPagamentoQT_PARCELAS.AsInteger do
  begin
      DM.cdsContasReceber.Insert;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :='SELECT MAX(ID_CONTAS_RECEBER) FROM TB_CONTAS_RECEBER';
      DM.cdsDinamica.Open;

      DM.cdsContasReceberID_CONTAS_RECEBER.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;
      DM.cdsContasReceberDT_EMISSAO.AsDateTime       := DM.cdsPdvDT_VENDA.AsDateTime;
      DM.cdsContasReceberDT_VENCIMENTO.AsDateTime    := DM.cdsPdvDT_VENDA.AsDateTime + DM.cdsFormaPagamentoQT_DIAS_PRIMEIRA_PARCELA.AsInteger;
      DM.cdsContasReceberNR_DOC.Value                := DM.cdsPdvID_PDV.AsString;
      DM.cdsContasReceberID_TIPO_PAGAMENTO.AsInteger := DM.cdsPlanoPagamentoID_TIPO_PAGAMENTO.AsInteger;
      DM.cdsContasReceberID_FORMA_PAGAMENTO.AsInteger := DM.cdsFormaPagamentoID_FORMA_PAGAMENTO.AsInteger;
      DM.cdsContasReceberID_CLIENTE.AsInteger        := DM.cdsPdvID_CLIENTE.AsInteger;
      DM.cdsContasReceberQT_DIAS.AsInteger           := round(DM.cdsContasReceberDT_VENCIMENTO.AsDateTime - DM.cdsPdvDT_VENDA.AsDateTime);
      DM.cdsContasReceberVL_PARCELA.AsFloat           := DM.cdsPdvVL_LIQ.AsFloat;
      DM.cdsContasReceberSTATUS.Value                :='A';
      DM.cdsContasReceberID_LOJA.AsInteger           := 1;
      DM.cdsContasReceber.Post;
      Next;
    end;
    if  DM.cdsContasReceber.ApplyUpdates(0) <> 0 then
    begin
       Application.MessageBox('Houve Um Erro de Processamento. Favor Tente Novamente ou Contate o Suporte','Aten��o....',MB_OK);
       DM.cdsPdv.Cancel;
       DM.cdsContasReceber.Cancel;
       Exit;
    end
    else
    begin
      DM.cdsContasReceber.ApplyUpdates(0);
      DM.cdsContasReceber.Refresh;
      DM.cdsContasReceber.Close;
    end;}
end;

procedure TfrmPdv.ImprimirCaixa;
begin
end;

procedure TfrmPdv.L_TROCAR_USUARIOClick(Sender: TObject);
begin
  // informar cliente
  if L_SITUACAO_VENDA.Caption = 'Caixa Livre' then
  begin
    ShowMessage('Favor Comece Uma Venda Para Informar Cliente');
    Exit;
  end;

  if L_SITUACAO_VENDA.Caption <> 'ESPERANDO PAGAMENTO' then
  begin
    ShowMessage('Favor Pressione F4 Para Encerrar a Venda');
    Exit;
  end;
    DM.cdsPdv.Edit;
    DM.CdsCliente.Close;
    DM.CdsCliente.Open;
    if Pesquisa(DM.CdsCliente,['R_SOCIAL','ID_CLIENTE','CIDADE'],
                              ['Nome do Cliente','C�d.Cliente','Cidade'],[35,10,30],'','','','','Cliente','Cliente') Then
    begin
      DM.cdsPdvID_CLIENTE.AsInteger := DM.CdsClienteID_CLIENTE.AsInteger;
      DM.cdsPdvR_SOCIAL.AsString    := DM.CdsClienteR_SOCIAL.AsString;
      DM.cdsPdvCNPJ_CPF.AsString    := DM.CdsClienteCNPJ_CPF.AsString;
    end;

    if Application.MessageBox('Deseja Realmente Informar Este Cliente ?','Aten��o!!!',MB_OK+MB_YESNO ) = idyes then
    begin
      DM.cdsPdv.ApplyUpdates(0);
      L_INCLUIR_ITEMClick(Self);
    end
    else
    begin
      DM.cdsPdv.Cancel;
    end;

 // sincronizar produtos
{  if L_SITUACAO_VENDA.Caption = 'LAN�ANDO VENDA(S)' then
  begin
    ShowMessage('Favor Encerre a Venda Para Sincronizar');
    Exit;
  end
  else
  begin
    MULTI := False;
    DM.cdsProduto.Close;
    DM.cdsProduto.Open;
    DM.cdsProduto.Refresh;
    ShowMessage('Produtos Sincronizados com Sucesso!!!!');
  end;}

end;

procedure TfrmPdv.edtProdutoExit(Sender: TObject);
var
aux: integer;
quant: String;
codigo,CodigoPesado,codigoInterno: string;
convertQuantFloat : Double;
PrimeiraLetra,ProdutoPesado : string;
QuantPesado : Double;
Item    : Integer;
begin

  if DM.cdsPDVID_PDV.AsInteger = 0 then
  begin
      L_NOVA_VENDAClick(Self);
  end;

 if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
 begin
//   ShowMessage('Situa��o da Venda Esperando Pagamento, ou F6+Item(s)');
//   edtProduto.SetFocus;
   edtProduto.Clear;
   DBGrid1.SetFocus;
   Exit;
 end;

//  DM.cdsAliqIBPT.Close;
//  DM.cdsAliqIBPT.Open;
  VlVenda := StrToInt(DM.TABELA_PRECO);
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText:=' SELECT MAX(I.ITEM) FROM TB_ITEM_PDV I WHERE I.ID_PDV = '+DM.cdsPdvID_PDV.AsString;
  DM.cdsDinamica.Open;

  Item := DM.cdsDinamica.Fields[0].AsInteger +1;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';

  if Enter = true then
  begin
    L_PAGAMENTOClick(Self);
    Enter := False;
    Exit;
  end;

  if PageDown = false then
  begin
    if IsAphaNumerico(edtProduto.Text) then
    begin
      PesquisaLetra;
    end
    else
    begin
    if multi = True then
    begin
      aux := 0;
      aux := Pos('*',edtProduto.Text);

      if aux <> 0 then
      begin
        aux := Pos('*',edtProduto.Text);

        quant := Copy(edtProduto.Text,1,aux-1);
        convertQuantFloat := StrToFloat(quant);
        if convertQuantFloat > 789 then
        begin
          ShowMessage('Quantidade N�o Permitida.');
          edtProduto.Clear;
          edtProduto.SetFocus;
          MULTI := False;
          Exit;
        end;
        codigo := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
        codigoInterno := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
        if SituacaoVenda = 'Encerrada' then
        begin
          Exit;
        end;
                PrimeiraLetra := Copy(codigo,1,1);
                if PrimeiraLetra = '2'  then
                begin
                    ProdutoPesado :='S';
                    CodigoPesado := Copy(edtProduto.Text, 2, 6);
                    QuantPesado := StrToFloat(Copy(edtProduto.Text,8,5))/100;
                end;

                if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) OR DM.cdsProduto.Locate('CODIGO',codigo,[])  then
                begin
                  DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                  DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                  DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                  DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                  DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                  DM.cdsItemPdvREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                  DM.cdsItemPdvITEM.AsInteger              := Item;
                  DM.cdsItemPdvALIQUOTA.AsFloat            := DM.cdsProdutoALIQUOTA.AsFloat;
                  DM.cdsItemPdvTIPO_ALIQ.AsString          := DM.cdsProdutoTIPO_ALIQ.AsString;
                  DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                  IBPT;
                  if DM.cdsProdutoATIVO.AsString = 'N' then
                  begin
                    ShowMessage('Produto Inativo Para Venda!');
                    edtProduto.SetFocus;
                    edtProduto.Clear;
                    Exit;
                  end;

                  if DM.cdsProdutoESTOQUE.AsFloat <= 0 then
                  begin
                    ShowMessage('Produto Com Estoque Negativo '+FloatToStr(DM.cdsProdutoESTOQUE.AsFloat));
                  end;

                  L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
                  if (DM.cdsProdutoBALANCA.AsString = 'S') and (ProdutoPesado = 'S') then
                  begin
                    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //edtProduto.Text;
                    DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                    if VlVenda = 1 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    if VlVenda = 2 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                    quant := FloatToStr(QuantPesado / DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                    DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                    DBEdit3Exit(Self);
                  end
                  else
                  begin
                    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //codigo;
                    DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                    if VlVenda = 1 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    if VlVenda = 2 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                    DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                    DM.cdsItemPdvITEM.AsInteger              := Item;
                    DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;


                    //quant := '1';
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                    DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);

                    DBEdit3Exit(Self);
                  end;
                end
                else
                begin
                      //OUTROS C�DIGOS
                      DM.cdsBarras.Close;
                      DM.cdsBarras.Params[0].Value := codigo;
                      DM.cdsBarras.Open;

                      codigo := DM.cdsBarrasCODBARRAS.AsString;

                      if DM.cdsBarras.IsEmpty then
                      begin
                        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                                    '                                     '+#13+
                                    '   C�digo N�o Encontrado             '+#13+
                                    '                                     ');
                        edtProduto.SetFocus;
                        edtProduto.Clear;
                      end
                      else
                      begin
                        if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) OR DM.cdsProduto.Locate('CODIGO',codigo,[])  then
                        begin
                          DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                          DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                          DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                          DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                          DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                          DM.cdsItemPdvREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                          DM.cdsItemPdvITEM.AsInteger              := Item;
                          DM.cdsItemPdvALIQUOTA.AsFloat            := DM.cdsProdutoALIQUOTA.AsFloat;
                          DM.cdsItemPdvTIPO_ALIQ.AsString          := DM.cdsProdutoTIPO_ALIQ.AsString;
                          DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                          IBPT;
                          if DM.cdsProdutoATIVO.AsString = 'N' then
                          begin
                            ShowMessage('Produto Inativo Para Venda!');
                            edtProduto.SetFocus;
                            edtProduto.Clear;
                            Exit;
                          end;

                          if DM.cdsProdutoESTOQUE.AsFloat <= 0 then
                          begin
                            ShowMessage('Produto Com Estoque Negativo '+FloatToStr(DM.cdsProdutoESTOQUE.AsFloat));
                          end;

                          L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
                          if (DM.cdsProdutoBALANCA.AsString = 'S') and (ProdutoPesado = 'S') then
                          begin
                            DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //edtProduto.Text;
                            DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                            if VlVenda = 1 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                            if VlVenda = 2 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                            DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                            quant := FloatToStr(QuantPesado ); // DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                            convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                            DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                            DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                            DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                            DBEdit3Exit(Self);
                          end
                          else
                          begin
                            DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //codigo;
                            DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                            if VlVenda = 1 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                            if VlVenda = 2 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                            DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                            DM.cdsItemPdvITEM.AsInteger              := Item;

                            //quant := '1';
                            convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                            DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                            DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);

                            DBEdit3Exit(Self);
                          end;

                      end;
                end;
                end;
      end
      else
      begin
        if SituacaoVenda = 'Encerrada' then
        begin
          Exit;
        end;
                PrimeiraLetra := Copy(codigo,1,1);
                if PrimeiraLetra = '2' then
                begin
                  ProdutoPesado :='S';
                    CodigoPesado := Copy(edtProduto.Text, 2, 6);
                    QuantPesado := StrToFloat(Copy(edtProduto.Text,8,5))/100;
                end;

                if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) OR DM.cdsProduto.Locate('CODIGO',codigo,[])  then
                begin
                  DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                  DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                  DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                  DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                  DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                  DM.cdsItemPdvALIQUOTA.AsFloat            := DM.cdsProdutoALIQUOTA.AsFloat;
                  DM.cdsItemPdvTIPO_ALIQ.AsString          := DM.cdsProdutoTIPO_ALIQ.AsString;
                  DM.cdsItemPdvREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                  DM.cdsItemPdvITEM.AsInteger              := Item;
                  DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                  L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
                  IBPT;

                  if DM.cdsProdutoATIVO.AsString = 'N' then
                  begin
                    ShowMessage('Produto Inativo Para Venda!');
                    edtProduto.SetFocus;
                    edtProduto.Clear;
                    Exit;
                  end;


                  if DM.cdsProdutoESTOQUE.AsFloat <= 0 then
                  begin
                    ShowMessage('Produto Com Estoque Negativo '+FloatToStr(DM.cdsProdutoESTOQUE.AsFloat));
                  end;


                  if (DM.cdsProdutoBALANCA.AsString = 'S') and (ProdutoPesado = 'S') then
                  begin
                    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //edtProduto.Text;
                    if VlVenda = 1 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    if VlVenda = 2 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                    DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                    quant := FloatToStr(QuantPesado / DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                    DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                    DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                    DBEdit3Exit(Self);
                  end
                  else
                  begin
                    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //CODIGO;
                    if VlVenda = 1 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    if VlVenda = 2 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                    DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                    //quant := '1';
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                    DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                    DBEdit3Exit(Self);
                  end;
                end
                else
                begin
                      //OUTROS C�DIGOS
                      DM.cdsBarras.Close;
                      DM.cdsBarras.Params[0].Value := codigo;
                      DM.cdsBarras.Open;

                      codigo := DM.cdsBarrasCODPRODUTO.AsString;


                      if DM.cdsBarras.IsEmpty then
                      begin
                        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                                    '                                     '+#13+
                                    '   C�digo N�o Encontrado             '+#13+
                                    '                                     ');
                        edtProduto.SetFocus;
                        edtProduto.Clear;
                      end
                      else
                      begin
                        if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) OR DM.cdsProduto.Locate('CODIGO',codigo,[])  then
                        begin
                          DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                          DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                          DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                          DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                          DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                          DM.cdsItemPdvREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                          DM.cdsItemPdvITEM.AsInteger              := Item;
                          DM.cdsItemPdvALIQUOTA.AsFloat            := DM.cdsProdutoALIQUOTA.AsFloat;
                          DM.cdsItemPdvTIPO_ALIQ.AsString          := DM.cdsProdutoTIPO_ALIQ.AsString;
                          DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;

                          if DM.cdsProdutoATIVO.AsString = 'N' then
                          begin
                            ShowMessage('Produto Inativo Para Venda!');
                            edtProduto.SetFocus;
                            edtProduto.Clear;
                            Exit;
                          end;

                          if DM.cdsProdutoESTOQUE.AsFloat <= 0 then
                          begin
                            ShowMessage('Produto Com Estoque Negativo '+FloatToStr(DM.cdsProdutoESTOQUE.AsFloat));
                          end;

                          L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
                          if (DM.cdsProdutoBALANCA.AsString = 'S') and (ProdutoPesado = 'S') then
                          begin
                            DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //edtProduto.Text;
                            DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                            if VlVenda = 1 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                            if VlVenda = 2 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                            DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                            quant := FloatToStr(QuantPesado / DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                            convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                            DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                            DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                            DBEdit3Exit(Self);
                          end
                          else
                          begin
                            DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //codigo;
                            DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                            if VlVenda = 1 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                            if VlVenda = 2 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                            DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                            DM.cdsItemPdvITEM.AsInteger              := Item;

                            //quant := '1';
                            convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                            DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                            DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);

                            DBEdit3Exit(Self);
                          end;

                      end;
                end;
                end;


      end;
      end
      else
      begin
        if multi = False then
        begin
          if SituacaoVenda = 'Encerrada' then
          begin
            Exit;
          end;
                codigo := edtProduto.Text;
                codigoInterno := edtProduto.Text;

                PrimeiraLetra := Copy(codigo,1,1);
                if PrimeiraLetra = '2' then
                begin
                  ProdutoPesado :='S';
                    CodigoPesado := Copy(edtProduto.Text, 2, 6);
                    QuantPesado := StrToFloat(Copy(edtProduto.Text,8,5))/100;
                end;

                if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) OR DM.cdsProduto.Locate('CODIGO',codigo,[])  then
                begin
                  DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                  DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                  DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                  DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                  DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                  DM.cdsItemPdvALIQUOTA.AsFloat            := DM.cdsProdutoALIQUOTA.AsFloat;
                  DM.cdsItemPdvTIPO_ALIQ.AsString          := DM.cdsProdutoTIPO_ALIQ.AsString;
                  DM.cdsItemPdvREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                  DM.cdsItemPdvITEM.AsInteger              := Item;
                  DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                  L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
                  IBPT;
                  if DM.cdsProdutoATIVO.AsString = 'N' then
                  begin
                    ShowMessage('Produto Inativo Para Venda!');
                    edtProduto.SetFocus;
                    edtProduto.Clear;
                    Exit;
                  end;


                  if DM.cdsProdutoESTOQUE.AsFloat <= 0 then
                  begin
                    ShowMessage('Produto Com Estoque Negativo '+FloatToStr(DM.cdsProdutoESTOQUE.AsFloat));
                  end;



                  if (DM.cdsProdutoBALANCA.AsString = 'S') and (ProdutoPesado = 'S') then
                  begin
                    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //edtProduto.Text;
                    if VlVenda = 1 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    if VlVenda = 2 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                    DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                    quant := FloatToStr(QuantPesado/DM.cdsItemPdvVL_UNIT.AsFloat); // DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                    DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                    DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                    DBEdit3Exit(Self);
                  end
                  else
                  begin
                    DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //CODIGO;
                    if VlVenda = 1 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    if VlVenda = 2 then
                      DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                    DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                    quant := '1';
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                    DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                    DBEdit3Exit(Self);
                  end;
                  end
                  else
                  begin
                      //OUTROS C�DIGOS
                      DM.cdsBarras.Close;
                      DM.cdsBarras.Params[0].Value := codigo;
                      DM.cdsBarras.Open;

                      codigo := DM.cdsBarrasCODPRODUTO.AsString;



                      if DM.cdsBarras.IsEmpty then
                      begin
                        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                                    '                                     '+#13+
                                    '   C�digo N�o Encontrado             '+#13+
                                    '                                     ');
                        edtProduto.SetFocus;
                        edtProduto.Clear;
                      end
                      else
                      begin
                        if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) OR DM.cdsProduto.Locate('CODIGO',codigo,[])  then
                        begin
                          DM.cdsItemPdvID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                          DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                          DM.cdsItemPdvDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                          DM.cdsItemPdvUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                          DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                          DM.cdsItemPdvREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                          DM.cdsItemPdvITEM.AsInteger              := Item;
                          DM.cdsItemPdvALIQUOTA.AsFloat            := DM.cdsProdutoALIQUOTA.AsFloat;
                          DM.cdsItemPdvTIPO_ALIQ.AsString          := DM.cdsProdutoTIPO_ALIQ.AsString;
                          DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                          IBPT;
                          if DM.cdsProdutoATIVO.AsString = 'N' then
                          begin
                            ShowMessage('Produto Inativo Para Venda!');
                            edtProduto.SetFocus;
                            edtProduto.Clear;
                            Exit;
                          end;

                          if DM.cdsProdutoESTOQUE.AsFloat <= 0 then
                          begin
                            ShowMessage('Produto Com Estoque Negativo '+FloatToStr(DM.cdsProdutoESTOQUE.AsFloat));
                          end;

                          L_PRODUTO.Caption                             := DM.cdsProdutoDESCRICAO.AsString;
                          if (DM.cdsProdutoBALANCA.AsString = 'S') and (ProdutoPesado = 'S') then
                          begin
                            DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsBarrasCODBARRAS.AsString;//DM.cdsProdutoCD_BARRA.AsString; //edtProduto.Text;
                            DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                            if VlVenda = 1 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                            if VlVenda = 2 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                            DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                            quant := FloatToStr(QuantPesado/DM.cdsItemPdvVL_UNIT.AsFloat); // DM.cdsProdutoVL_VENDA_ATAC.AsFloat);

        //                    quant := FloatToStr(QuantPesado ); // DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                            convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                            DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                            DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                            DM.cdsItemPdvICMS.AsFloat                := DM.cdsProdutoALIQUOTA.AsFloat;
                            DBEdit3Exit(Self);
                          end
                          else
                          begin
                            DM.cdsItemPdvCD_BARRA.AsString           := DM.cdsProdutoCD_BARRA.AsString; //codigo;
                            DM.cdsItemPdvNCM.AsString                := DM.cdsProdutoNCM.AsString;
                            if VlVenda = 1 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                            if VlVenda = 2 then
                              DM.cdsItemPdvVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;

                            DM.cdsItemPdvID_PDV.AsInteger            := DM.cdsPdvID_PDV.AsInteger;
                            DM.cdsItemPdvITEM.AsInteger              := Item;
                            quant := '1';
                            convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                            DM.cdsItemPdvQUANT.AsFloat               := convertQuantFloat;
                            DM.cdsItemPdvVL_TOTAL.AsFloat := (DM.cdsItemPdvQUANT.AsFloat*DM.cdsItemPdvVL_UNIT.AsFloat);
                            DBEdit3Exit(Self);
                          end;

                      end;
                end;
                end;

                  end;
        end;
    end;
  end;
end;

procedure TfrmPdv.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    MULTI := False;
  end;
  if Key = Vk_f1 then
  begin
    PesquisaProduto;
  end;
  if Key = Vk_f2 then
  begin
    L_NOVA_VENDAClick(Self);
  end;
  if Key = Vk_f3 then
  begin
    L_CANCELAR_VENDAClick(Self);
  end;
  if Key = Vk_f4 then
  begin
    L_ENCERRAR_VENDAClick(Self);
  end;
  if Key = Vk_f5 then
  begin
    L_EXCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f6 then
  begin
    L_INCLUIR_ITEMClick(Self);
  end;
  if Key = Vk_f7 then
  begin
    L_DESCONTOClick(Self);
  end;
  if Key = Vk_f8 then
  begin
   L_TROCAR_USUARIOClick(Self);
  end;
  if Key = Vk_f9 then
  begin
    L_OPCOESClick(Self);
  end;
  if Key = Vk_f10 then
  begin
    L_SAIRClick(Self);
  end;
  if KEY = VK_NEXT then
  begin
    if not IsAphaNumerico(edtProduto.Text) then
    begin
      PageDown := True;
      if L_SITUACAO_VENDA.Caption = 'ESPERANDO PAGAMENTO' then
      begin
        PageDown := False;
        ShowMessage('Situa��o da Venda Esperando Pagamento, ou F6+Item(s)');
        edtProduto.SetFocus;
        edtProduto.Clear;
        Exit;
      end;
      P_PESQUISA.Visible := True;
      Edit1.Clear;
      Edit1.SetFocus;
      PageDown := False;
    end
  end;


  if KEY = VK_RETURN then
  begin
    if edtProduto.Text = '' then
    begin
      Enter := True;
      PageDown := False;
    end
    else
    begin
      Enter := False;
    end;
  end;

end;

procedure TfrmPdv.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    //SpeedButton5Click(self);
  end;

  if key = #8 then
  begin
    MULTI := False;
  end;
  if key = #46 then
  begin
    MULTI := False;
  end;
  if key = #32 then
  begin
    MULTI := False;
  end;
  if key = '' then
  begin
    MULTI := False;
  end;

if key in ['*','x','X'] then
begin
  if Length(edtProduto.Text) <=0 then
  begin
    key := #0;
    exit;
  end;

  if multi = False then
    multi := True
  else
  begin
    key := #0;
    exit;
  end;
end;
if not (key in ['-','0'..'9',#8,'*',',','.','X','x','a'..'z','A'..'Z',' ']) then
key := #0;
end;

procedure TfrmPdv.ImprimirTermica;
var
  Arquivo : TextFile;
  iCount, iCount2,iCount3,iCount4, iProdutos, iQuantas,iQuantasPag,iPagamentos, iVezes,iPag: integer;
  valorPago,ValorTroco,dValor,dDesconto,dLiquido,TotalGeral,Troco  : Double;
  convertFloat,convertTroco : Double;
begin
  Memo2.Clear;
  if printer.printers.count=0 then
  showmessage('nao tem impressora instalada');


  with DM do
  begin
      dValor :=0;
    iQuantas :=0;
    iQuantasPag := 0;
    dDesconto:=0;
    dLiquido :=0;
    iProdutos := cdsItemPdv.RecordCount;
    iPagamentos := DM.cdsPagamentoPDV.RecordCount;
    iVezes := Trunc(iProdutos/10000);
    if Round(iProdutos) > 0 then
      iVezes := iVezes +1;
    cdsItemPdv.First;

    if Round(iPagamentos) > 0 then
      iPag := iPag +1;
    DM.cdsPagamentoPDV.First;

    for iCount := 1 to iVezes do
    begin

      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('Orcamento N.'+DefineTamanhoString(cdsPdvID_PDV.AsString,8,0)
        +'  OPERADOR CAIXA:  '+L_USUARIO.Caption);
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('DATA ...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsPdvDT_VENDA.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));

                                       //Cabe�alho de Clientes
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('CLIENTE...: '+DefineTamanhoString(cdsPdvR_SOCIAL.AsString,16,0));
      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('                  *** S E M   V A L O R   F I S C A L ***                     ');
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('ITEM COD DESCRICAO QTD VL_UNIT(R$) TOTAL(R$)     ');
      Memo2.Lines.Add('-----------------------------------------------------------------------');

      //INICIA OS PRODUTOS
      FOR iCount2 := 1 to 10000 do
      begin
        inc(iQuantas);
        if iQuantas <= iProdutos then
        begin
          Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsItemPdvCD_BARRA.AsString,15,0)
           +''+DefineTamanhoString(cdsItemPdvDESCRICAO.AsString,25,0));
           Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0.000',cdsItemPdvQUANT.AsFloat),5,1)
            +DM.cdsItemPdvUNIDADE.AsString +'X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvVL_UNIT.AsFloat),6,1)
            +'              '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvVL_TOTAL.AsFloat),8,1));

          dValor :=  dValor + cdsItemPdvVL_TOTAL.AsFloat;
          dDesconto := cdsPdvVL_DESC.AsFloat;
          TotalGeral :=  cdsPdvVL_VENDA.AsFloat;
          dLiquido   := cdsPdvVL_LIQ.AsFloat;
          ValorPago  :=  StrToFloat(StringReplace(frmPagamentoPdv.Edit6.Text,'.','',[rfReplaceAll]));
          Troco      :=  StrToFloat(StringReplace(frmPagamentoPdv.L_TROCO.Caption,'.','',[rfReplaceAll]));
          cdsItemPdv.Next;
        end;
      end;
        Memo2.Lines.Add('-----------------------------------------------------------------------');
        Memo2.Lines.Add('TOTAL BRUTO R$...:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
        Memo2.Lines.Add('DESCONTO    R$...:'+DefineTamanhoString(FormatFloat('###,###,##0.00',dDesconto),10,1));
        Memo2.Lines.Add('TOTAL LIQ.  R$...:'+DefineTamanhoString(FormatFloat('###,###,##0.00',dLiquido),10,1));
        Memo2.Lines.Add('VL PAG DINH R$...:'+DefineTamanhoString(FormatFloat('###,###,##0.00',ValorPago),10,1));
        Memo2.Lines.Add('TROCO       R$...:'+DefineTamanhoString(FormatFloat('###,###,##0.00',Troco),10,1));
        Memo2.Lines.Add('-----------------------------------------------------------------------');
        Memo2.Lines.Add('       ***       FORMA PAGAMENTO /  VALOR R$    ***                    ');
        Memo2.Lines.Add('-----------------------------------------------------------------------');
      //INICIA OS PRODUTOS
      FOR iCount4 := 1 to 10000 do
      begin
        inc(iQuantasPag);
        if iQuantasPag <= iPagamentos then
        begin
          Memo2.Lines.Add(DefineTamanhoString(DM.cdsPagamentoPDVFORMA_PAGAMENTO.AsString,15,1)
          +'     R$ '+DefineTamanhoString(FormatFloat('###,###,##0.00',DM.cdsPagamentoPDVVL_PAGAMENTO.AsFloat),8,16));
          DM.cdsPagamentoPDV.Next;
        end;
      end;
        Memo2.Lines.Add('-----------------------------------------------------------------------');
           //CONTA QUANT DE REGISTROS DA VENDA
        Memo2.Lines.Add('');
        Memo2.Lines.Add('                         OBRIGADO PELA PREFER�NCIA     ');
        Memo2.Lines.Add('                                      ');
        Memo2.Lines.Add('                        **    V O L T E    S E M P R E  ** ');

        dValor := 0;
      end;
  end;
  AssignFile(Arquivo,CaminhoImpressora);
  Rewrite(Arquivo);
  ImprimirMemo(Memo2);
  CloseFile(Arquivo);
end;

procedure TfrmPdv.ImprimirMemo(Memo: TMemo);
var
  I: integer;
  F: TextFile;
begin
  { Usa na impressora a mesma fonte do memo }
  Printer.Canvas.Font.Assign(Memo.Font);

  AssignPrn(F);
  Rewrite(F);
  try
    for I := 0 to Memo.Lines.Count -1 do
      WriteLn(F, Memo.Lines[I]);
  finally
    CloseFile(F);
  end;
end;

procedure TfrmPdv.ImprimirTermicaconvenio;
var
  Arquivo : TextFile;
  iCount, iCount2, iProdutos, iQuantas, iVezes,iPag: integer;
  valorPago,ValorTroco,dValor,dDesconto,dLiquido,TotalGeral : Double;
  convertFloat,convertTroco : Double;
  Vencimeto : TDate;
  TextoDtVenc ,DtExtenso,DtExtenso1,DtExtenso2,valor,valorpagor,
  vlExtenso,vlExtenso1 : String;
begin
  Memo2.Clear;
  if printer.printers.count=0 then
  showmessage('nao tem impressora instalada');

  with DM do
  begin
      dValor :=0;
    iQuantas :=0;
    dDesconto:=0;
    dLiquido :=0;
    iProdutos := cdsItemPdv.RecordCount;
    iVezes := Trunc(iProdutos/10000);
    if Round(iProdutos) > 0 then
      iVezes := iVezes +1;
    cdsItemPdv.First;
    for iCount := 1 to iVezes do
    begin
      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('Orcamento N.'+DefineTamanhoString(cdsPdvID_PDV.AsString,8,0)
        +'  OPERADOR CAIXA:  '+L_USUARIO.Caption);
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('DATA ...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsPdvDT_VENDA.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));

                                       //Cabe�alho de Clientes
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('CLIENTE...: '+DefineTamanhoString(cdsPdvR_SOCIAL.AsString,30,0));
      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('                  *** S E M   V A L O R   F I S C A L ***                     ');
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('ITEM COD DESCRICAO QTD VL_UNIT(R$) TOTAL(R$)     ');
      Memo2.Lines.Add('-----------------------------------------------------------------------');

      //INICIA OS PRODUTOS
      FOR iCount2 := 1 to 10000 do
      begin
        inc(iQuantas);
        if iQuantas <= iProdutos then
        begin
          Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsItemPdvCD_BARRA.AsString,15,0)
           +''+DefineTamanhoString(cdsItemPdvDESCRICAO.AsString,25,0));
//            +' '+DefineTamanhoString(CDS_CUPON_PRODUTOcl_ds_unidade.AsString,4,0)
           Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0.000',cdsItemPdvQUANT.AsFloat),5,1)
            +DM.cdsItemPdvUNIDADE.AsString +'X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvVL_UNIT.AsFloat),6,1)
            +'              '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemPdvVL_TOTAL.AsFloat),8,1));

          dValor :=  dValor + cdsItemPdvVL_TOTAL.AsFloat;
          dDesconto := cdsPdvVL_DESC.AsFloat;
          TotalGeral :=  cdsPdvVL_VENDA.AsFloat;
          dLiquido   := cdsPdvVL_LIQ.AsFloat;
          cdsItemPdv.Next;
        end;
      end;


        Memo2.Lines.Add('-----------------------------------------------------------------------');
        Memo2.Lines.Add('TOTAL R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
        Memo2.Lines.Add('DESC/ENTRADA R$..:'+DefineTamanhoString(FormatFloat('###,###,##0.00',dDesconto),10,1));
        Memo2.Lines.Add('VALOR LIQUIDO R$.:'+DefineTamanhoString(FormatFloat('###,###,##0.00',dLiquido),10,1));
        Memo2.Lines.Add('VALOR PAGO R$....:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
        Memo2.Lines.Add('TROCO R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',convertTroco),10,1));
        Memo2.Lines.Add('-----------------------------------------------------------------------');
        Memo2.Lines.Add('Tipo Pagamento          '+DM.cdsPlanoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Memo2.Lines.Add('Forma Pagamento          '+frmPagamentoPdv.cdsTipoPagamentoDESCRICAO_PAGAMENTO.AsString);
        Memo2.Lines.Add('-----------------------------------------------------------------------');

        Memo2.Lines.Add('');

        Memo2.Lines.Add('                         OBRIGADO PELA PREFER�NCIA     ');
        Memo2.Lines.Add('                                      ');
        Memo2.Lines.Add('                        **    V O L T E    S E M P R E  ** ');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('-----------------------------------------------------------------------');
        dValor := 0;
      end;
  end;
  AssignFile(Arquivo,CaminhoImpressora);
  Rewrite(Arquivo);
  ImprimirMemo(Memo2);
  CloseFile(Arquivo);

        //INICIA IMPRESSAO DUPLICATA
        Memo2.Clear;
        Memo2.Lines.Add('');
        Memo2.Lines.Add('    NOTA PROMISSORIA     '+'N� '+DefineTamanhoString(FormatFloat('##########0000000000',DM.cdsPdvID_PDV.AsFloat),10,1));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('Cliente = '+DefineTamanhoString(DM.cdsPdvID_CLIENTE.AsString+' - '+DM.cdsPdvR_SOCIAL.AsString,35,0));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('CPF/CNPJ= '+DefineTamanhoString(DM.cdsPdvCNPJ_CPF.AsString,20,0));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('R$'+DefineTamanhoString(FormatFloat('###,###,##0.00',DM.cdsPdvVL_LIQ.AsFloat),10,1));
        Memo2.Lines.Add('');
        Vencimeto := DM.cdsPdvDT_VENDA.AsDateTime + DM.cdsPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA.AsInteger;
        TextoDtVenc := 'Aos '+DataExtenso(Vencimeto)+' pagarei por esta unica NOTA PROMISSORIA A '
                             +L_NOME_LOJA.Caption +' ou a sua ordem a quantia de :';
        DtExtenso  := copy(TextoDtVenc,1,52);
        Memo2.Lines.Add(''+DtExtenso);
        DtExtenso1 := copy(TextoDtVenc,53,53);
        Memo2.Lines.Add(''+DtExtenso1);
        DtExtenso2 := copy(TextoDtVenc,105,106);
        Memo2.Lines.Add(''+DtExtenso2);
        Memo2.Lines.Add('');
        Valor := NumeroParaExtenso(StrToFloat(DM.cdsPdvVL_LIQ.AsString));
        vlExtenso := copy(Valor,1,45);
        vlExtenso1 := copy(Valor,46,99);
        Memo2.Lines.Add(''+vlExtenso);
        Memo2.Lines.Add(''+vlExtenso1);
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('Data Emiss�o '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',DM.cdsPdvDT_VENDA.AsDateTime),10,0));
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('______________________________________');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('');
        Memo2.Lines.Add('   ASSINATURA     ');

  AssignFile(Arquivo,CaminhoImpressora);
  Rewrite(Arquivo);
  ImprimirMemo(Memo2);
  CloseFile(Arquivo);


end;

procedure TfrmPdv.FechaVendaPrint;
begin
    DM.cdsPdv.Edit;
    DM.cdsPdvSTATUS.Value := 'F';
    if DM.cdsPdv.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Gravar Esta Venda. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      if (DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger = 1) OR (DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger = 2) then
      begin
        if Application.MessageBox('Grava no Contas a Receber?','Aten��o',MB_YESNO+MB_ICONQUESTION) = idyes then
        begin
          GravaReceber;
        end;
      end;

      DM.cdsPdv.ApplyUpdates(0);
      DM.cdsPdv.Refresh;
      ShowMessage('Recebimento Efetuado com Sucesso.');
      L_SITUACAO_VENDA.Caption := 'Caixa Livre';
      L_TOTAL_VENDA.Caption:=' R$ 0,00 ';
      L_TOTAL_DESC_ENTRADA.Caption := 'R$ 0,00';
      L_TOTAL_LIQUIDO.Caption := 'R$ 0,00';
      MULTI := False;
      SituacaoVenda :='';

      if DM.cdsPdv.RecordCount > 0 then
        L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO'
      else
        L_SITUACAO_VENDA.Caption := 'Caixa Livre';
        MULTI := False;
    end;
  MULTI := False;
end;

procedure TfrmPdv.PesquisaLetra;
var
aux : Integer;
sql : String;
begin
   aux := Pos('*',edtProduto.Text);
   if aux <> 0 then
   begin
     sql := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
     cdsPesquisaLetra.Close;
     cdsPesquisaLetra.IndexFieldNames:='';
     cdsPesquisaLetra.Params[0].AsString := sql+'%';
     cdsPesquisaLetra.Open;
   end
   else
   begin
     cdsPesquisaLetra.Close;
     cdsPesquisaLetra.IndexFieldNames:='';
     cdsPesquisaLetra.Params[0].AsString := edtProduto.Text+'%';
     cdsPesquisaLetra.Open;

   end;

   if cdsPesquisaLetra.IsEmpty then
   begin
     ShowMessage('Nenhum Produto Encontrado.');
     edtProduto.SetFocus;
   end
   else
   begin
     P_PESQUISA.Visible := True;
     Edit1.SetFocus;
     Edit1.Text := edtProduto.Text;
     Edit1.SelectAll;
     cdsPesquisaLetra.Close;
   end;
end;

procedure TfrmPdv.BitBtn4Click(Sender: TObject);
var
aux : Integer;
codigo_texto,quant : String;
begin
   PageDown := False;
   aux := Pos('*',edtProduto.Text);
   if aux <> 0 then
   begin
     quant := Copy(edtProduto.Text,1,aux-1);
     codigo_texto := quant+'*'+cdsPesquisaLetraCD_BARRA.AsString;
     edtProduto.Text := codigo_texto;
     edtProduto.SetFocus;
     MULTI := True;
     P_PESQUISA.Visible := False;
     edtProdutoExit(Self);
   end
   else
   begin
     codigo_texto := cdsPesquisaLetraCD_BARRA.AsString;
     edtProduto.SetFocus;
     edtProduto.Text := codigo_texto;
     MULTI := False;
     P_PESQUISA.Visible := False;
     edtProdutoExit(Self);
   end;
end;

procedure TfrmPdv.BitBtn5Click(Sender: TObject);
begin
  PageDown := False;
  P_PESQUISA.Visible := False;
  edtProduto.SetFocus;
end;

function TfrmPdv.IsAphaNumerico(S: string): Boolean;
var
  i: Integer;
begin
  for i := 1 to Length(S) do
    if (S[i] in ['A' .. 'Z']) then
    begin
      Result := True;
      Exit;
    end;
  Result := False;
end;

procedure TfrmPdv.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    BitBtn4Click(Self);
  end;
end;

procedure TfrmPdv.DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

procedure TfrmPdv.DBGrid1CellClick(Column: TColumn);
begin
  L_PRODUTO.Caption := DM.cdsItemPdvDESCRICAO.AsString;
end;

procedure TfrmPdv.DBGrid1ColEnter(Sender: TObject);
begin
  L_PRODUTO.Caption := DM.cdsItemPdvDESCRICAO.AsString;
end;

procedure TfrmPdv.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  L_PRODUTO.Caption := DM.cdsItemPdvDESCRICAO.AsString;
end;

procedure TfrmPdv.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  L_PRODUTO.Caption := DM.cdsItemPdvDESCRICAO.AsString;
end;

procedure TfrmPdv.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
{  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);}

end;

procedure TfrmPdv.ExportaVendaPDV;
begin
  // insere cabecalho
{  cdsPdvDincash.Close;
  cdsPdvDincash.Open;
  cdsPdvDincash.Insert;
  cdsPdvDincashID_PDV.AsInteger := DM.cdsPdvID_PDV.AsInteger;
  cdsPdvDincashID_CLIENTE.AsInteger := DM.cdsPdvID_CLIENTE.AsInteger;
  cdsPdvDincashID_FORMA_PAGAMENTO.AsInteger := DM.cdsPdvID_FORMA_PAGAMENTO.AsInteger;
  cdsPdvDincashID_PLANO_PAGAMENTO.AsInteger  := DM.cdsPdvID_PLANO_PAGAMENTO.AsInteger;
  cdsPdvDincashDT_VENDA.AsDateTime          := DM.cdsPdvDT_VENDA.AsDateTime;
  cdsPdvDincashVL_VENDA.AsFloat             := DM.cdsPdvVL_VENDA.AsFloat;
  cdsPdvDincashVL_DESC.AsFloat              := DM.cdsPdvVL_DESC.AsFloat;
  cdsPdvDincashVL_LIQ.AsFloat               := DM.cdsPdvVL_LIQ.AsFloat;
  cdsPdvDincashPERC_DESC.AsFloat            := DM.cdsPdvPERC_DESC.AsFloat;
  cdsPdvDincashSTATUS.AsString              := DM.cdsPdvSTATUS.AsString;
  cdsPdvDincashCAIXA.AsInteger              := DM.cdsPdvCAIXA.AsInteger;

  if cdsPdvDincash.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('Ocorreu Um Erro Na Exporta��o Para a ECF. Tente novamente ou contate o Suporte.');
  end
  else
  begin
    cdsPdvDincash.ApplyUpdates(0);
  end;

  // insere item da venda
  cdsItemPdvDincash.Close;
  cdsItemPdvDincash.Open;
  DM.cdsItemPdv.DisableControls;
  DM.cdsItemPdv.First;
  while NOT DM.cdsItemPdv.Eof do
  begin
    cdsItemPdvDincash.Open;
    cdsItemPdvDincash.Insert;
    cdsItemPdvDincashID_ITEM_PDV.AsInteger      := DM.cdsItemPdvID_ITEM_PDV.AsInteger;
    cdsItemPdvDincashID_PDV.AsInteger           := DM.cdsItemPdvID_PDV.AsInteger;
    cdsItemPdvDincashID_PRODUTO.AsInteger       := DM.cdsItemPdvID_PRODUTO.AsInteger;
    cdsItemPdvDincashID_GRUPO_PRODUTO.AsInteger := DM.cdsItemPdvID_GRUPO_PRODUTO.AsInteger;
    cdsItemPdvDincashQUANT.AsFloat              := DM.cdsItemPdvQUANT.AsFloat;
    cdsItemPdvDincashVL_UNIT.AsFloat            := DM.cdsItemPdvVL_UNIT.AsFloat;
    cdsItemPdvDincashVL_TOTAL.AsFloat           := DM.cdsItemPdvVL_TOTAL.AsFloat;
    cdsItemPdvDincashREFERENCIA.AsString        := DM.cdsItemPdvREFERENCIA.AsString;
    cdsItemPdvDincashDESCRICAO.AsString         := DM.cdsItemPdvDESCRICAO.AsString;

    if cdsItemPdvDincash.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('Ocorreu Um Erro Na Exporta��o Para a ECF. Tente novamente ou contate o Suporte.'+#13+
                  'Exite(m) Iten(s) N�o Cadastrado(s) No Dincash. Favor Verificar!!!!!'+
                  ' PRODUTO  : '+DM.cdsItemPdvDESCRICAO.AsString +#13+
                  ' CODIGO   : '+DM.cdsItemPdvREFERENCIA.AsString );
      DM.cdsItemPdv.EnableControls;
      Exit;
    end
    else
    begin
      cdsItemPdvDincash.ApplyUpdates(0);
      DM.cdsItemPdv.Next;
    end;

  end;
    DM.cdsItemPdv.EnableControls;  }
end;

procedure TfrmPdv.NovoAcesso;
Var
Loja : String;
begin
  if frmSenha.Fecha = True then
  begin
    Application.Terminate;
  end;
  bSenha := False;
  Application.CreateForm(TfrmSenha, frmSenha);
  frmSenha.ShowModal;
  Loja :=recInformacoes.lojaCredenciada;//DM.LOJA;
  ChecaUsuario(recInformacoes.Nivel);
  L_USUARIO.Caption := recInformacoes.nm_Usuario;

  if Loja <> '' then
  begin
    DM.cdsEmpresa.Close;
    DM.cdsEmpresa.CommandText :=  ' SELECT L.ID_LOJA, L.R_SOCIAL, L.FANTASIA, L.ENDERECO, L.COMPLEMENTO, '+
                                  ' L.NUMERO, L.BAIRRO, L.CEP, L.CONTATO, L.CPF_CONTATO, L.CNPJ, L.INS_EST,'+
                                  ' L.TELEFONE, L.FAX, L.EMAIL, L.DT_CADASTRO, L.SITUACAO, L.DT_ABERTURA,'+
                                  ' L.CNAE_PRINCIPAL, L.CNAE_SECUNDARIO, L.CODIGO_MUNIC, M.NOME AS CIDADE, M.UF'+
                                  ' FROM TB_LOJAS L'+
                                  ' LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = L.CODIGO_MUNIC)'+
                                  ' WHERE L.ID_LOJA = '+Loja;

//    DM.cdsEmpresa.Params[0].AsInteger := StrToInt(recInformacoes.lojaCredenciada);
    DM.cdsEmpresa.Open;
    L_NOME_LOJA.Caption := DM.cdsEmpresaID_LOJA.AsString+' - '+DM.cdsEmpresaFANTASIA.AsString;

    DM.cds_Tabela.Close;
    DM.cds_Tabela.CommandText :=
      'SELECT L.ID_LOJA,L.CODIGO_MUNIC,L.R_SOCIAL,L.FANTASIA,M.NOME,M.UF,L.ID_LOJA FROM TB_LOJAS L '
      + 'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = L.CODIGO_MUNIC) '
      + 'WHERE L.ID_LOJA = ' + Loja;
    DM.cds_Tabela.Open;
    PMENU.Caption :='Prompt-PDV         '+DM.cds_Tabela.Fields[4].AsString+'-'+DM.cds_Tabela.Fields[5].AsString+'                    '+DiaSemana(StrToDate(DateToStr(Date)))+'                        '+DateToStr(Date);
    L_INFORMACOES.Caption :='Informa��es do Sistema : PromptPdv Vers�o '+VersaoExe;
  end
  else
  begin
    L_NOME_LOJA.Caption := 'USUARIO MASTER';
  end;

end;

procedure TfrmPdv.NovoCadastro;
begin
  if sNovo = 'Cliente' then
  begin
   if frmCadCliente = nil then
   begin
     frmCadCliente := TfrmCadCliente.Create(Application);
     frmCadCliente.ShowModal;
   end;
   DM.CdsCliente.Close;
   DM.CdsCliente.Open;
  end;

end;

procedure TfrmPdv.Edit1Change(Sender: TObject);
var i :integer;
temnumero,temletra : Boolean;
begin
  temnumero := false;
  temletra := false;

  if Edit1.Text <>'' then
  begin
    for i := 1 to length(trim(Edit1.Text)) do
    begin
      if (Edit1.Text[i] in ['0'..'9']) then
      begin
        temnumero := true;
      end
      else
      begin
        temletra := true;
      end;
    end;

    if temnumero then
    begin
      cdsPesquisaLetra.Close;
      cdsPesquisaLetra.CommandText := ' SELECT P.REFERENCIA,P.CD_BARRA,P.DESCRICAO,P.VL_VENDA_VARE FROM TB_PRODUTO P '+
                                      ' WHERE p.cd_barra like '+QuotedStr('%'+Edit1.Text+'%');
      cdsPesquisaLetra.Open;
    end;

    if temletra then
    begin
      cdsPesquisaLetra.Close;
      cdsPesquisaLetra.CommandText := ' SELECT P.REFERENCIA,P.CD_BARRA,P.DESCRICAO,P.VL_VENDA_VARE FROM TB_PRODUTO P '+
                                      ' WHERE P.DESCRICAO LIKE '+QuotedStr('%'+Edit1.Text+'%');
      cdsPesquisaLetra.Open;
    end;

  end;
  if Edit1.Text = '' then
  begin
    cdsPesquisaLetra.Close;
  end;
end;

procedure TfrmPdv.VerificaCaixaAberto;
begin
  if frmSenha.Fecha = true then
  begin
    Application.Terminate;
    Exit;
  end;

  DM.cdsFechaCaixa.Close;
  DM.cdsFechaCaixa.CommandText := ' SELECT OCC.ID_REG, OCC.ID_USUARIO, OCC.ID_LOJA, OCC.CAIXA, '+
                                  ' OCC.DT_ABERTURA, OCC.HORA_ABERTURA, OCC.DT_FECHAMENTO, OCC.HORA_FECHAMENTO,'+
                                  ' OCC.STATUS, U.NOME_USUARIO, L.R_SOCIAL, L.FANTASIA'+
                                  ' FROM TB_REG_OPEN_CLOSE_CAIXA OCC '+
                                  ' JOIN TB_USUARIO U ON (U.id_USUARIO = OCC.id_USUARIO)'+
                                  ' JOIN TB_LOJAS   L ON (L.ID_LOJA    = OCC.ID_LOJA)'+
                                  ' WHERE OCC.STATUS =''A'' AND OCC.CAIXA = '+L_CAIXA.Caption+
                                  ' AND OCC.ID_LOJA = '+frmPdv.recInformacoes.lojaCredenciada+
                                  ' AND OCC.dt_abertura < '+QuotedStr(FormatDateTime('MM/DD/YYYY',Date));
  DM.cdsFechaCaixa.Open;


  if (not DM.cdsFechaCaixa.IsEmpty) then
  begin
    if Application.MessageBox('N�o Foi Encontrado o Fechamento do Ultimo Caixa'+#13
                               +'            Deseja Fechar Caixa Agora ?','Aten��o',MB_YESNO+MB_ICONEXCLAMATION) = idyes then
    begin

      ShowMessage('OI');
    end;


    if Application.MessageBox('N�o Foi Encontrado o Fechamento do Ultimo Caixa'+#13
                             +'            Deseja Fechar Caixa Agora ?','Aten��o',MB_YESNO+MB_ICONEXCLAMATION) = idyes then
    begin
      DM.cdsFechaCaixa.Edit;
      DM.cdsFechaCaixaStatus.Value := 'F';
      DM.cdsFechaCaixaDT_FECHAMENTO.AsDateTime := Date;
      DM.cdsFechaCaixaHORA_FECHAMENTO.AsDateTime := Time;
      DM.cdsFechaCaixa.ApplyUpdates(0);
      ShowMessage('Caixa Fechado Com Sucesso!!!');
      FormShow(nil);
    end
    else
    begin
      DM.cdsFechaCaixa.Cancel;
      Application.Terminate; //s� pdv
      //Close;
    end;
  end;
end;

function TfrmPdv.VersaoExe: String;
type
   PFFI = ^vs_FixedFileInfo;
var
   F       : PFFI;
   Handle  : Dword;
   Len     : Longint;
   Data    : Pchar;
   Buffer  : Pointer;
   Tamanho : Dword;
   Parquivo: Pchar;
   Arquivo : String;
begin
   Arquivo  := Application.ExeName;
   Parquivo := StrAlloc(Length(Arquivo) + 1);
   StrPcopy(Parquivo, Arquivo);
   Len := GetFileVersionInfoSize(Parquivo, Handle);
   Result := '';
   if Len > 0 then
   begin
      Data:=StrAlloc(Len+1);
      if GetFileVersionInfo(Parquivo,Handle,Len,Data) then
      begin
         VerQueryValue(Data, '',Buffer,Tamanho);
         F := PFFI(Buffer);
         Result := Format('%d.%d.%d.%d',
                          [HiWord(F^.dwFileVersionMs),
                           LoWord(F^.dwFileVersionMs),
                           HiWord(F^.dwFileVersionLs),
                           Loword(F^.dwFileVersionLs)]
                         );
      end;
      StrDispose(Data);
   end;
   StrDispose(Parquivo);

end;

end.

