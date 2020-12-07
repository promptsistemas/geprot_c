unit uTingimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DB, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, QRCtrls, QuickRpt,
  qrpBaseCtrls;

type
  TfrmTingimento = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    itemProcucao: TPanel;
    DBNavigator2: TDBNavigator;
    BB_INCLUIR: TBitBtn;
    BB_ALTERAR: TBitBtn;
    BB_CANC: TBitBtn;
    BB_EXC: TBitBtn;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label12: TLabel;
    p_item: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    P_PRODUCAO: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    P_BOTOES: TPanel;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBEdit17: TDBEdit;
    Faturado: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    BB_SALVAR: TBitBtn;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBEdit16: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    SpeedButton6: TSpeedButton;
    Label21: TLabel;
    Label22: TLabel;
    qDinamicaFios: TSQLQuery;
    dspDinamicaFios: TDataSetProvider;
    cdsDinamicaFios: TClientDataSet;
    dsDinamicaFios: TDataSource;
    P_SALDO_FIOS: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    BB_CONFIRMAR: TBitBtn;
    B_CANCELAR: TBitBtn;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    BB_INC_PAG: TBitBtn;
    BB_EXC_PAG: TBitBtn;
    BB_VOL_PAG: TBitBtn;
    L_SALDO: TLabel;
    L_AVISO: TLabel;
    DBEdit8: TDBEdit;
    Label6: TLabel;
    DBEdit18: TDBEdit;
    Label8: TLabel;
    BB_CONCLUIR: TBitBtn;
    qDinamicaFiosID_ARTIGO: TIntegerField;
    qDinamicaFiosNOME_ARTIGO: TStringField;
    qDinamicaFiosID_CORES: TIntegerField;
    qDinamicaFiosDESCRICAO: TStringField;
    qDinamicaFiosQUANT: TFMTBCDField;
    qDinamicaFiosPESO: TFMTBCDField;
    qDinamicaFiosCOD_ESTAMPA: TStringField;
    qDinamicaFiosCOD_VARIANTE: TStringField;
    qDinamicaFiosVL_UNIT: TFMTBCDField;
    qDinamicaFiosNR_NOTA: TIntegerField;
    qDinamicaFiosNR_NOTA_REMESSA: TIntegerField;
    cdsDinamicaFiosID_ARTIGO: TIntegerField;
    cdsDinamicaFiosNOME_ARTIGO: TStringField;
    cdsDinamicaFiosID_CORES: TIntegerField;
    cdsDinamicaFiosDESCRICAO: TStringField;
    cdsDinamicaFiosQUANT: TFMTBCDField;
    cdsDinamicaFiosPESO: TFMTBCDField;
    cdsDinamicaFiosCOD_ESTAMPA: TStringField;
    cdsDinamicaFiosCOD_VARIANTE: TStringField;
    cdsDinamicaFiosVL_UNIT: TFMTBCDField;
    cdsDinamicaFiosNR_NOTA: TIntegerField;
    cdsDinamicaFiosNR_NOTA_REMESSA: TIntegerField;
    qDinamicaFiosQT_PRG: TFMTBCDField;
    qDinamicaFiosSALDO_PRG: TFMTBCDField;
    cdsDinamicaFiosQT_PRG: TFMTBCDField;
    cdsDinamicaFiosSALDO_PRG: TFMTBCDField;
    qDinamicaFiosID_ITEM_PRG: TIntegerField;
    cdsDinamicaFiosID_ITEM_PRG: TIntegerField;
    qDinamicaFiosID_PRG_TINTURARIA: TIntegerField;
    cdsDinamicaFiosID_PRG_TINTURARIA: TIntegerField;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    qContasPagar: TSQLDataSet;
    qContasPagarID_CONTAS_PAGAR: TIntegerField;
    qContasPagarID_PRODUCAO: TIntegerField;
    qContasPagarID_CLIENTE: TIntegerField;
    qContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    qContasPagarID_USUARIO: TIntegerField;
    qContasPagarID_LOJA: TIntegerField;
    qContasPagarDT_EMISSAO: TDateField;
    qContasPagarDT_VENCIMENTO: TDateField;
    qContasPagarDT_PAGAMENTO: TDateField;
    qContasPagarQT_DIAS: TIntegerField;
    qContasPagarQT_DIAS_ATRAZO: TIntegerField;
    qContasPagarQT_PARCELA: TIntegerField;
    qContasPagarNR_DOC: TStringField;
    qContasPagarVL_COMPRA: TFMTBCDField;
    qContasPagarVL_PARCELA: TFMTBCDField;
    qContasPagarNR_PARCELA: TStringField;
    qContasPagarSTATUS: TStringField;
    qContasPagarDESCRICAO_PAGAMENTO: TStringField;
    qContasPagarCLIENTE: TStringField;
    qContasPagarFORNECEDOR: TStringField;
    qContasPagarFORN_REMESSA: TStringField;
    qContasPagarNOME_USUARIO: TStringField;
    qContasPagarEMPRESA: TStringField;
    qContasPagarID_FORNECEDOR: TIntegerField;
    qContasPagarID_FORN_REM: TIntegerField;
    qContasPagarNR_NOTA_FISCAL: TIntegerField;
    qContasPagarNR_NF_REMESSA: TIntegerField;
    qContasPagarORIGEM: TStringField;
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarID_CONTAS_PAGAR: TIntegerField;
    cdsContasPagarID_PRODUCAO: TIntegerField;
    cdsContasPagarID_CLIENTE: TIntegerField;
    cdsContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    cdsContasPagarID_USUARIO: TIntegerField;
    cdsContasPagarID_LOJA: TIntegerField;
    cdsContasPagarDT_EMISSAO: TDateField;
    cdsContasPagarDT_VENCIMENTO: TDateField;
    cdsContasPagarDT_PAGAMENTO: TDateField;
    cdsContasPagarQT_DIAS: TIntegerField;
    cdsContasPagarQT_DIAS_ATRAZO: TIntegerField;
    cdsContasPagarQT_PARCELA: TIntegerField;
    cdsContasPagarNR_DOC: TStringField;
    cdsContasPagarVL_COMPRA: TFMTBCDField;
    cdsContasPagarVL_PARCELA: TFMTBCDField;
    cdsContasPagarNR_PARCELA: TStringField;
    cdsContasPagarSTATUS: TStringField;
    cdsContasPagarDESCRICAO_PAGAMENTO: TStringField;
    cdsContasPagarCLIENTE: TStringField;
    cdsContasPagarFORNECEDOR: TStringField;
    cdsContasPagarFORN_REMESSA: TStringField;
    cdsContasPagarNOME_USUARIO: TStringField;
    cdsContasPagarEMPRESA: TStringField;
    cdsContasPagarID_FORNECEDOR: TIntegerField;
    cdsContasPagarID_FORN_REM: TIntegerField;
    cdsContasPagarNR_NOTA_FISCAL: TIntegerField;
    cdsContasPagarNR_NF_REMESSA: TIntegerField;
    cdsContasPagarORIGEM: TStringField;
    dsContasPagar: TDataSource;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    BB_ALTERAR_RET: TBitBtn;
    BB_INCLUIR_RET: TBitBtn;
    BB_EXCLUIR_RET: TBitBtn;
    BB_SAIR_RET: TBitBtn;
    P_NF_RETORNO: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBGrid6: TDBGrid;
    P_NR_QUEBRA: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    BB_INCLUIR_QUEB: TBitBtn;
    BB_ALTERAR_QUEB: TBitBtn;
    BB_EXCLUIR_QUEB: TBitBtn;
    BB_VOLTAR: TBitBtn;
    qCor: TSQLQuery;
    qCorID_CORES: TIntegerField;
    qCorID_ARTIGO: TIntegerField;
    qCorVALOR: TFMTBCDField;
    qCorCODIGO: TIntegerField;
    qCorDESCRICAO: TStringField;
    qCorNOME_ARTIGO: TStringField;
    dspCor: TDataSetProvider;
    cdsCor: TClientDataSet;
    cdsCorID_CORES: TIntegerField;
    cdsCorID_ARTIGO: TIntegerField;
    cdsCorVALOR: TFMTBCDField;
    cdsCorCODIGO: TIntegerField;
    cdsCorDESCRICAO: TStringField;
    cdsCorNOME_ARTIGO: TStringField;
    dsCor: TDataSource;
    SpeedButton7: TSpeedButton;
    BB_IMPRIMIR: TBitBtn;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    QR_TINTURARIA: TQRPQuickrep;
    QRBand1: TQRBand;
    Label29: TLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRShape6: TQRShape;
    QRDBText2: TQRDBText;
    QRShape7: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape9: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape12: TQRShape;
    QRLabel2: TQRLabel;
    QRShape15: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText26: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel37: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel18: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape8: TQRShape;
    QRGroup1: TQRGroup;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand2: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand8: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand7: TQRBand;
    QRDBText13: TQRDBText;
    QRShape11: TQRShape;
    QRDBText12: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRL_SALDO: TQRLabel;
    QRPQuickrep1: TQRPQuickrep;
    QRBand3: TQRBand;
    Label30: TLabel;
    QRShape4: TQRShape;
    QRLabel20: TQRLabel;
    QRShape10: TQRShape;
    QRDBText16: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel22: TQRLabel;
    QRShape18: TQRShape;
    QRDBText18: TQRDBText;
    QRShape19: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText32: TQRDBText;
    QRShape21: TQRShape;
    QRLabel36: TQRLabel;
    QRShape22: TQRShape;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRLabel44: TQRLabel;
    QRDBText39: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText40: TQRDBText;
    QRShape24: TQRShape;
    QRDBText41: TQRDBText;
    QRLabel47: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRBand4: TQRBand;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRBand5: TQRBand;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRBand6: TQRBand;
    QRDBText53: TQRDBText;
    QRShape26: TQRShape;
    QRDBText54: TQRDBText;
    QRLabel61: TQRLabel;
    QRDBText56: TQRDBText;
    QRShape20: TQRShape;
    QRLabel49: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape23: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText57: TQRDBText;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRShape25: TQRShape;
    QRLabel69: TQRLabel;
    QRDBText62: TQRDBText;
    procedure SpeedButton3Click(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure BB_SALVARClick(Sender: TObject);
    procedure BB_INCLUIRClick(Sender: TObject);
    procedure BB_CANCClick(Sender: TObject);
    procedure BB_ALTERARClick(Sender: TObject);
    procedure BB_EXCClick(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure B_CANCELARClick(Sender: TObject);
    procedure BB_CONFIRMARClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BB_VOL_PAGClick(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure BB_CONCLUIRClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BB_INC_PAGClick(Sender: TObject);
    procedure BB_EXC_PAGClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure BB_INCLUIR_RETClick(Sender: TObject);
    procedure BB_ALTERAR_RETClick(Sender: TObject);
    procedure BB_EXCLUIR_RETClick(Sender: TObject);
    procedure BB_SAIR_RETClick(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure BB_INCLUIR_QUEBClick(Sender: TObject);
    procedure BB_ALTERAR_QUEBClick(Sender: TObject);
    procedure BB_EXCLUIR_QUEBClick(Sender: TObject);
    procedure BB_VOLTARClick(Sender: TObject);
    procedure DBEdit36Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand7BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure SomaTotal;
    Procedure Somapagamentos;
    Procedure GerenciaBotoesRet;
    Procedure GerenciaBotoesQueb;
    Procedure VerificaNFRemessa;
  public
    { Public declarations }
  end;

var
  frmTingimento: TfrmTingimento;
  Tipo, Tp_operacao,Tp_Retorno,Tp_Quebra,dCorAlterada : string;
  sSaldo,sPrg,qtDel : Double;
  Resultdo       : Boolean;





implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uContasPagarMalharia, uPesquisaPadrao,
  uRemessaProducao, uContasPagarTingimento;

Procedure TfrmTingimento.VerificaNFRemessa;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText:=' SELECT P.NR_NOTA_REMESSA FROM TB_ITEM_PRG IP'+
                              ' JOIN TB_PRG_TINTURARIA P ON (P.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                              ' WHERE IP.SALDO_PRG > 0'+
                              ' AND P.ID_FOR_TINTURARIA = '+DM.cdsTingimentoID_FOR_TINGIMENTO.AsString+
                              ' AND P.ID_CLIENTE = '+DM.cdsTingimentoID_CLIENTE.AsString+
                              ' AND P.STATUS =''F'''+
                              ' AND P.NR_NOTA_REMESSA = '+DM.cdsTingimentoNR_NF_TINGIMENTO.AsString+
                              ' GROUP BY P.NR_NOTA_REMESSA';
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    ShowMessage('Nota Fiscal N�o Encontrada!');
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText:=' SELECT P.NR_NOTA_REMESSA FROM TB_ITEM_PRG IP'+
                                ' JOIN TB_PRG_TINTURARIA P ON (P.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                ' WHERE IP.SALDO_PRG > 0'+
                                ' AND P.ID_FOR_TINTURARIA = '+DM.cdsTingimentoID_FOR_TINGIMENTO.AsString+
                                ' AND P.ID_CLIENTE = '+DM.cdsTingimentoID_CLIENTE.AsString+
                                ' AND P.STATUS =''F'''+
                                ' GROUP BY P.NR_NOTA_REMESSA';
    DM.cdsDinamica.Open;

    Pesquisa(DM.cdsDinamica,['NR_NOTA_REMESSA'],['N� Nota Fiscal'],[20],'','','','','Nota Fiscal','Nota Fiscal');
    DM.cdsTingimentoNR_NF_TINGIMENTO.AsString := DM.cdsDinamica.Fields[0].AsString;
  end
  else
  begin
     BB_GRAVARClick(Self);
  end;
end;

procedure TfrmTingimento.BB_ALTERARClick(Sender: TObject);
begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  tp_operacao := 'Edit';
  DM.cdsItemTingimento.Edit;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmTingimento.BB_ALTERAR_QUEBClick(Sender: TObject);
begin
  Tp_Quebra := 'Edit';

  DM.cdsNotaQuebra.Edit;
  GerenciaBotoesQueb;
  DBEdit34.SetFocus;
end;

procedure TfrmTingimento.BB_ALTERAR_RETClick(Sender: TObject);
begin
  Tp_Retorno := 'Edit';

  DM.cdsNotaRetorno.Edit;
  GerenciaBotoesRet;
  DBEdit25.SetFocus;
end;

procedure TfrmTingimento.BB_CANCClick(Sender: TObject);
begin
  DM.cdsItemTingimento.Cancel;
  SomaTotal;
  GerenciaBotoes2;

end;

procedure TfrmTingimento.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsTingimento.Cancel;
  GerenciaBotoes;
end;

procedure TfrmTingimento.BB_EDITARClick(Sender: TObject);
begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Edit';

  DM.cdsTingimento.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmTingimento.BB_EXCClick(Sender: TObject);
Var
 NR_NOTA_FISCAL, ID_MATERIA, ID_FORNECEDOR, ID_CLIENTE, ID_PRODUCAO : Integer;

begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

    NR_NOTA_FISCAL := DM.cdsItemTingimentoNR_NOTA_FISCAL.AsInteger;
    ID_MATERIA     := DM.cdsItemTingimentoID_MATERIA.AsInteger;
    ID_FORNECEDOR  := DM.cdsItemTingimentoID_FORNECEDOR.AsInteger;
    ID_CLIENTE     := DM.cdsItemTingimentoID_CLIENTE.AsInteger;
    ID_PRODUCAO    := DM.cdsItemTingimentoID_PRODUCAO.AsInteger;
    qtDel          := DM.cdsItemTingimentoQUANT_FATURADO.AsFloat;

  if Application.MessageBox('Deseja Realmente Excluir. S/N ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = IDYES Then
  begin
   { sPrg := sPrg+DM.cdsItemTingimentoQUANT_FATURADO.AsFloat;
    cdsDinamicaFios.Open;
    cdsDinamicaFios.Edit;
    cdsDinamicaFiosQT_PRG.AsFloat := sPrg;
    cdsDinamicaFios.ApplyUpdates(0);}

    DM.cdsItemTingimento.Delete;
    DM.cdsItemTingimento.ApplyUpdates(0);
//    cdsDinamicaFios.Close;
    SomaTotal;
  End
  else
  begin
    ShowMessage('Registro n�o Exclu�do');
    GerenciaBotoes2;
  end;


end;

procedure TfrmTingimento.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if DM.cdsItemTingimento.RecordCount > 0  then
  begin
    ShowMessage('Impossiv�l Excluir Nota. Existe(m) Registro(s) Vinculado(s). Exclua o(s) Registro(s) Antes de Excluir a Nota. ');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsTingimento.Delete;
    DM.cdsTingimento.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Registro N�o Exclu�do');
  end;
    GerenciaBotoes;

{  if DM.cdsTingimento.RecordCount > 0 then
  begin
    cdsItemNotaFiscal.Close;
    cdsItemNotaFiscal.Open;
  end;
 }

end;

procedure TfrmTingimento.BB_EXCLUIR_QUEBClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Excluir. S/N ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = IDYES Then
  begin
    DM.cdsNotaQuebra.Delete;
    DM.cdsNotaQuebra.ApplyUpdates(0);
    GerenciaBotoesQueb
  end;

end;

procedure TfrmTingimento.BB_EXCLUIR_RETClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Excluir. S/N ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = IDYES Then
  begin
    DM.cdsNotaRetorno.Delete;
    DM.cdsNotaRetorno.ApplyUpdates(0);
    GerenciaBotoesRet
  end;
end;

procedure TfrmTingimento.BB_EXC_PAGClick(Sender: TObject);
begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;
  if cdsContasPagar.RecordCount > 0 then
  begin
    ShowMessage('Imposs�vel Excluir Registro. Exite(m) Pagamento(s) Vinculados. ');
    exit;
  end;

  if Application.MessageBox('Deseja Excluir Este(s) Registro(s) ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' delete from TB_CONTAS_PAGAR CP '+
                                  ' WHERE CP.ID_CLIENTE = '+DM.cdsTingimentoID_CLIENTE.AsString+
                                  ' AND   CP.ID_PRODUCAO = '+DM.cdsTingimentoID_TINGIMENTO.AsString;
    DM.cdsDinamica.Execute;
    cdsContasPagar.ApplyUpdates(0);
    cdsContasPagar.Refresh;
    ShowMessage('Registro(s) Exclu�do(s) Com Sucesso.');
  end
  else
  begin
    ShowMessage('Registro(s) N�o Exclu�do(s)');
  end;


end;

procedure TfrmTingimento.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
//    if DBEdit19.Text = '' then
//    begin
//      ShowMessage('Favor Informar Tinturaria.');
//      DBEdit19.SetFocus;
//      Exit;
//    end;
   { if DBEdit16.Text = '' then
    begin
      ShowMessage('Favor Informar N� NF Remessa.');
      DBEdit16.SetFocus;
      Exit;
    end;}
    if DBEdit3.Text = '' then
    begin
      ShowMessage('Favor Informar Malharia.');
      DBEdit3.SetFocus;
      Exit;
    end;

    if DBEdit20.Text = '' then
    begin
      ShowMessage('Favor Informar Cliente.');
      DBEdit20.SetFocus;
      Exit;
    end;


    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText :=' SELECT MAX(ID_TINGIMENTO) FROM TB_TINGIMENTO';
    DM.cdsDinamica.Open;

    DM.cdsTingimentoID_TINGIMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

    if DM.cdsTingimento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsTingimento.DisableControls;
      DM.cdsTingimento.ApplyUpdates(0);
//      DM.cdsTingimento.Refresh;
      DM.cdsTingimento.EnableControls;
      GerenCiaBotoes;
      GerenciaBotoes2;
     { if DM.cdsTingimento.RecordCount > 0 then
      begin
        cdsItemNotaFiscal.Close;
        cdsItemNotaFiscal.Open;
      end;}

      BB_INCLUIRClick(Self);
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsTingimento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsTingimento.ApplyUpdates(0);
//      DM.cdsItemTingimento.Refresh;
      GerenCiaBotoes;
      GerenciaBotoes2;
      BB_INCLUIRClick(Self);
    end;
  end;

end;

procedure TfrmTingimento.BB_IMPRIMIRClick(Sender: TObject);
begin
 // QRPQuickrep1.Prepare;
  QRPQuickrep1.Preview;
end;

procedure TfrmTingimento.BB_INCLUIRClick(Sender: TObject);
begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  Tp_Operacao := 'Insert';

  if DM.cdsTingimento.RecordCount = 0 then
  begin
    ShowMessage('N�o Existe Notas Cadastradas para este Lan�amento.');
    exit;
    BB_CANCClick(Self);
  end;

  DM.cdsItemTingimento.Append;
  DM.cdsItemTingimento.Open;
  GerenciaBotoes2;
  DBEdit14.SetFocus;

end;

procedure TfrmTingimento.BB_INCLUIR_QUEBClick(Sender: TObject);
begin
  Tp_Quebra := 'Insert';

  DM.cdsNotaQuebra.Append;
  DM.cdsNotaQuebra.Open;
  DM.cdsNotaQuebraID_FOR_TINGIMENTO.AsInteger := DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger;
  DM.cdsNotaQuebraID_FOR_TINT.AsInteger       := DM.cdsTingimentoID_FORN_TINT.AsInteger;
  DM.cdsNotaQuebraID_CLIENTE.AsInteger        := DM.cdsTingimentoID_CLIENTE.AsInteger;
  DM.cdsNotaQuebraNR_NOTA_FISCAL.AsInteger    := DM.cdsTingimentoNR_NOTA_FISCAL.AsInteger;
  DM.cdsNotaQuebraNR_NF_TINGIMENTO.AsInteger  := DM.cdsTingimentoNR_NF_TINGIMENTO.AsInteger;
  DM.cdsNotaQuebraFORN_TINGIMENTO.AsString    := DM.cdsTingimentoNOME_MALHARIA.AsString;
  DM.cdsNotaQuebraFORN_TINTURARIA.AsString    := DM.cdsTingimentoTITURARIA.AsString;
  DM.cdsNotaQuebraCLIENTE.AsString            := DM.cdsTingimentoCLIENTE.AsString;
  GerenciaBotoesQueb;
  DBEdit34.SetFocus;

end;

procedure TfrmTingimento.BB_INCLUIR_RETClick(Sender: TObject);
begin
  Tp_Retorno := 'Insert';

  DM.cdsNotaRetorno.Append;
  DM.cdsNotaRetorno.Open;
  DM.cdsNotaRetornoID_FOR_TINGIMENTO.AsInteger := DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger;
  DM.cdsNotaRetornoID_FOR_TINT.AsInteger       := DM.cdsTingimentoID_FORN_TINT.AsInteger;
  DM.cdsNotaRetornoID_CLIENTE.AsInteger        := DM.cdsTingimentoID_CLIENTE.AsInteger;
  DM.cdsNotaRetornoNR_NOTA_FISCAL.AsInteger    := DM.cdsTingimentoNR_NOTA_FISCAL.AsInteger;
  DM.cdsNotaRetornoNR_NF_TINGIMENTO.AsInteger  := DM.cdsTingimentoNR_NF_TINGIMENTO.AsInteger;
  DM.cdsNotaRetornoFORN_TINGIMENTO.AsString    := DM.cdsTingimentoNOME_MALHARIA.AsString;
  DM.cdsNotaRetornoFORN_TINTURARIA.AsString    := DM.cdsTingimentoTITURARIA.AsString;
  DM.cdsNotaRetornoCLIENTE.AsString            := DM.cdsTingimentoCLIENTE.AsString;

  GerenciaBotoesRet;
  DBEdit25.SetFocus;
end;

procedure TfrmTingimento.BB_INC_PAGClick(Sender: TObject);
begin
  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if frmContasPagarTingimento = nil then
  begin
    frmContasPagarTingimento := TfrmContasPagarTingimento.Create(Application);
    frmContasPagarTingimento.ShowModal;
  end;
end;

procedure TfrmTingimento.BB_NOVOClick(Sender: TObject);
begin
  DM.cdsTingimento.Open;
  PageControl1.ActivePage := TabSheet1;
  Tipo := 'Insert';

  DM.cdsTingimento.Insert;
  DM.cdsTingimentoSTATUS.Value := 'A';
  DM.cdsTingimentoQUANT_NF.AsFloat := 0;
  DM.cdsTingimentoQUANT_FATURADO.AsFloat := 0;
  DM.cdsTingimentoQUANT_SALDO.AsFloat := 0;
  DM.cdsTingimentoVL_NOTA.AsFloat := 0;
  DM.cdsTingimentoVL_POR_FORA.AsFloat := 0;
  DM.cdsTingimentoVL_TOTAL_NF.AsFloat := 0;
{  cdsItemNotaFiscal.Close;
  cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
  cdsItemNotaFiscal.Open;

  if DM.cdsTingimento.RecordCount >0 then
  begin
    cdsItemNotaFiscal.Close;
    cdsItemNotaFiscal.Params[0].AsInteger := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
    cdsItemNotaFiscal.Open;
  end;
 }

  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmTingimento.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Nota Fiscal Tingimento';
  frmPesquisaPadrao.CDS := DM.cdsTingimento;
  frmPesquisaPadrao.Tabela := 'TB_TINGIMENTO RP ';
  frmPesquisaPadrao.CampoBusca := 'C.R_SOCIAL';
  frmPesquisaPadrao.CampoBusca2 := 'FF.NOME ';
  frmPesquisaPadrao.CampoBusca3 := 'RP.NR_NOTA_FISCAL';
  frmPesquisaPadrao.CampoChave  := 'FF.NOME';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta Nota Fiscal Tingimento';
  frmPesquisaPadrao.L_PESQUISA.Caption := 'Consulta Nota Fiscal Tingimento';
  frmPesquisaPadrao.Sql            := ' SELECT RP.ID_TINGIMENTO, RP.ID_FOR_TINGIMENTO, RP.STATUS, RP.QUANT_NF, RP.QUANT_FATURADO, RP.QUANT_SALDO, '+
                                      ' RP.ID_CLIENTE, RP.ID_FORNECEDOR, RP.DT_EMISSAO, RP.NR_NOTA_FISCAL, RP.VL_NOTA, RP.VL_POR_FORA, RP.VL_TOTAL_NF, '+
                                      ' RP.ID_FORN_TINT, RP.NR_NF_TINGIMENTO, RP.TOTAL_ROLOS, C.R_SOCIAL AS CLIENTE, F.NOME AS FORNECEDOR, FF.NOME AS NOME_MALHARIA, '+
                                      ' FT.NOME AS TITURARIA ';


  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Cliente';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'CLIENTE';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 220;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Tinturaria';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'NOME_MALHARIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'N� Nota Fiscal';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'NR_NOTA_FISCAL';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 100;


  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);
end;

procedure TfrmTingimento.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTingimento.BB_SAIR_RETClick(Sender: TObject);
begin
  DM.cdsNotaRetorno.Cancel;
  GerenciaBotoesRet;
  TabSheet4.PageControl.ActivePage:=TabSheet3;

end;

procedure TfrmTingimento.BB_SALVARClick(Sender: TObject);
begin
  DM.cdsItemTingimento.Cancel;
  SomaTotal;
  GerenciaBotoes2;
end;

procedure TfrmTingimento.BB_VOLTARClick(Sender: TObject);
begin
  DM.cdsNotaQuebra.Cancel;
  GerenciaBotoesQueb;
  TabSheet4.PageControl.ActivePage:=TabSheet3;
end;

procedure TfrmTingimento.BB_VOL_PAGClick(Sender: TObject);
begin
  TabSheet4.PageControl.ActivePage:=TabSheet3;
end;

procedure TfrmTingimento.BB_CONCLUIRClick(Sender: TObject);
begin
  if DM.cdsItemTingimento.RecordCount = 0 then
  begin
   ShowMessage('Nenhum Item Lan�ado Para Este Lan�amento. Impossiv�l Finalizar');
   Exit
  end;

  if cdsContasPagar.RecordCount = 0 then
  begin
   ShowMessage('Nenhum Pagamento Lan�ado Para Este Lan�amento. Impossiv�l Finalizar');
   Exit
  end;

  if DM.cdsNotaRetorno.RecordCount = 0 then
  begin
   ShowMessage('Nenhuma Nota de Retorno Lan�ada Para Este Lan�amento. Impossiv�l Finalizar');
   Exit
  end;
  {if DM.cdsNotaQuebra.RecordCount = 0 then
  begin
   ShowMessage('Nenhuma Nota de Quebra Lan�ada Para Este Lan�amento. Impossiv�l Finalizar');
   Exit
  end;}


  if DM.cdsTingimentoSTATUS.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

    if Resultdo = True then
    begin
      Exit;
    end
    else
    begin
      DM.cdsTingimento.Edit;
      DM.cdsTingimentoSTATUS.Value := 'F';
      DM.cdsTingimento.ApplyUpdates(0);
      DM.cdsTingimento.Refresh;
      ShowMessage('Registro Finalizado Com Sucesso');
    end;

end;

procedure TfrmTingimento.BB_CONFIRMARClick(Sender: TObject);
Var
 idEmpresa : string;
 iPegaID   : integer;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := ' SELECT C.ID_GRUPO_EMPRESA FROM TB_CLIENTE C '+
                                ' WHERE C.ID_CLIENTE = '+DM.cdsTingimentoID_CLIENTE.AsString;
  DM.cdsDinamica.Open;

  idEmpresa := DM.cdsDinamica.Fields[0].AsString;

  DM.cdsItemTingimentoID_TINGIMENTO.AsInteger    := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
  DM.cdsItemTingimentoID_ARTIGO.AsInteger        := cdsDinamicaFiosID_ARTIGO.AsInteger;
  DM.cdsItemTingimentoID_CLIENTE.AsInteger       := DM.cdsTingimentoID_CLIENTE.AsInteger;
  DM.cdsItemTingimentoID_FORNECEDOR.AsInteger    := DM.cdsTingimentoID_FORNECEDOR.AsInteger;
  DM.cdsItemTingimentoNOME_ARTIGO.AsString       := cdsDinamicaFiosNOME_ARTIGO.AsString;
  DM.cdsItemTingimentoID_FORN_MALHARIA.AsInteger := DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger;
  DM.cdsItemTingimentoNR_NOTA_FISCAL.AsInteger   := DM.cdsTingimentoNR_NOTA_FISCAL.AsInteger;
  DM.cdsItemTingimentoNR_NF_TINGIMENTO.AsInteger := DM.cdsTingimentoNR_NF_TINGIMENTO.AsInteger;
  DM.cdsItemTingimentoID_PRODUCAO.AsInteger      := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
  DM.cdsItemTingimentoID_ITEM_PRG.AsInteger      := cdsDinamicaFiosID_ITEM_PRG.AsInteger;
  DM.cdsItemTingimentoID_PRG_TINTURARIA.AsInteger:= cdsDinamicaFiosID_PRG_TINTURARIA.AsInteger;
  DM.cdsItemTingimentoQT_ROLOS_PRG.AsFloat       := cdsDinamicaFiosQUANT.AsFloat;
  DM.cdsItemTingimentoPESO_PRG.AsFloat           := cdsDinamicaFiosPESO.AsFloat;
  DM.cdsItemTingimentoVL_UNIT.AsFloat            := cdsDinamicaFiosVL_UNIT.AsFloat;
  DM.cdsItemTingimentoID_CORES.AsInteger         := cdsDinamicaFiosID_CORES.AsInteger;
  DM.cdsItemTingimentoNOME_COR.AsString          := cdsDinamicaFiosDESCRICAO.AsString;
  DM.cdsItemTingimentoCOR_ALTERADA.AsString      := dCorAlterada;
  sSaldo                                         := cdsDinamicaFiosSALDO_PRG.AsFloat;
  sPrg                                           := cdsDinamicaFiosQT_PRG.AsFloat;


//  cdsDinamicaFios.Close;

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT IP.VL_ARTIGO FROM TB_ITEM_PRECO_MALHARIA IP '+
                                ' JOIN TB_PRECO_MALHARIA M ON (M.ID_PRECO_MALHARIA = IP.ID_PRECO_MALHARIA)'+
                                ' JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IP.ID_ARTIGO)'+
                                ' WHERE M.ID_MALHARIA = '+DM.cdsTingimentoID_FOR_TINGIMENTO.AsString+
                                ' AND M.ID_GRUPO_EMPRESA = '+idEmpresa+
                                ' AND IP.ID_ARTIGO =       '+DM.cdsItemTingimentoID_ARTIGO.AsString;
  DM.cdsDinamica.Open;

  //DM.cdsItemTingimentoVL_UNIT_REAL.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;

  P_SALDO_FIOS.Visible := False;
  iPegaID := cdsDinamicaFiosID_ITEM_PRG.AsInteger;
//  ShowMessage('Linha '+IntToStr(iPegaID));
  DBEdit17.SetFocus;
end;

procedure TfrmTingimento.B_CANCELARClick(Sender: TObject);
begin
 cdsDinamicaFios.Close;
 P_SALDO_FIOS.Visible := False;
 DBEdit14.SelectAll;
 DBEdit14.SetFocus;
 DBEdit14.ClearSelection;
end;

procedure TfrmTingimento.DBEdit12Exit(Sender: TObject);
begin
  //.cdsItemTingimentoVL_TOTAL.AsFloat := (DM.cdsItemTingimentoQUANT_FATURADO.AsFloat*DM.cdsItemTingimentoVL_UNIT.AsFloat);
end;

procedure TfrmTingimento.DBEdit13Enter(Sender: TObject);
begin
  if NOT(DM.cdsItemTingimentoQUANT_FATURADO.IsNull) then
  begin
    DM.cdsItemTingimentoVL_TOTAL_REAL.AsFloat := (DM.cdsItemTingimentoQUANT_FATURADO.AsFloat*DM.cdsItemTingimentoVL_UNIT_REAL.AsFloat);
    DM.cdsItemTingimentoVL_TOTAL.AsFloat      := (DM.cdsItemTingimentoQUANT_FATURADO.AsFloat*DM.cdsItemTingimentoVL_UNIT.AsFloat);

  end;

end;

procedure TfrmTingimento.DBEdit13Exit(Sender: TObject);
var
 iPegaID : Integer;
begin
  iPegaID := cdsDinamicaFiosID_ITEM_PRG.AsInteger;
  if tp_operacao = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(ID_ITEM_TINGIMENTO) FROM TB_ITEM_TINGIMENTO ';
      DM.cdsDinamica.Open;
      DM.cdsItemTingimentoID_ITEM_TINGIMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      if DM.cdsItemTingimento.ApplyUpdates(0) <> 0 then
      begin
         ShowMessage('Erro ao Gravar Registro. Consulte o Suporte! ');
      end
      else
      begin
//        ShowMessage('Linha '+IntToStr(iPegaID));
        sPrg := sPrg+DM.cdsItemTingimentoQUANT_FATURADO.AsFloat;
        cdsDinamicaFios.Edit;
        cdsDinamicaFiosQT_PRG.AsFloat := sPrg;
        cdsDinamicaFios.ApplyUpdates(0);
        DM.cdsItemTingimento.ApplyUpdates(0);
        cdsDinamicaFios.Close;
        SomaTotal;
        BB_INCLUIRClick(Self);
      end;
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      BB_CANCClick(Self);
    end;
  end;
  if tp_operacao = 'Edit' then
  begin
    if Application.MessageBox('Confirma Altera��o deste Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsItemTingimentoVL_TOTAL_REAL.AsFloat := (DM.cdsItemTingimentoQUANT_FATURADO.AsFloat * DM.cdsItemTingimentoVL_UNIT_REAL.AsFloat);
      DM.cdsItemTingimento.ApplyUpdates(0);

      cdsDinamicaFios.Close;

      cdsDinamicaFios.Close;
      SomaTotal;
      BB_CANCClick(Self);
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      BB_CANCClick(Self);
    end;
  end;

end;

procedure TfrmTingimento.DBEdit14Exit(Sender: TObject);
Var
 icount : string;

begin
  if DBEdit14.Text = '' Then
  begin
    BB_CANC.SetFocus;
    exit;
  end;
end;

procedure TfrmTingimento.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton5Click(self);
  end;

end;

procedure TfrmTingimento.DBEdit16Exit(Sender: TObject);
begin
  if DBEdit16.Text = '' then
  begin
    ShowMessage('Favor Informa N� NF Remessa');
    DBEdit16.SetFocus;
    Exit
  end
  else
  begin
    VerificaNFRemessa;
  end;
end;

procedure TfrmTingimento.DBEdit17Exit(Sender: TObject);
begin
  if Tp_operacao = 'Insert' then
    begin
    if DM.cdsItemTingimentoQUANT_FATURADO.AsFloat > cdsDinamicaFiosSALDO_PRG.AsFloat then
    begin
      ShowMessage(' Saldo Indiponiv�l Para a Quantidade Informada.');
      ShowMessage('Saldo...  '+cdsDinamicaFiosSALDO_PRG.AsString);
      DBEdit12.SetFocus;
    end;

    if cdsDinamicaFiosSALDO_PRG.AsFloat <=0 then
    begin
      ShowMessage(' Quantidade Informada Indisponiv�l.'+#13+' Saldo Disponiv�l  : '+QuotedStr(FormatFloat('###,###0.000',sSaldo)));
      if Application.MessageBox('Deseja Informar Nova Quantidade ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
      begin
        DBEdit17.SetFocus;
        Exit;
      end
      else
      begin
        sSaldo := 0;
        BB_CANCClick(Self);
      end;
    end;
  end;
end;

procedure TfrmTingimento.DBEdit19Exit(Sender: TObject);
begin
  if DBEdit19.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 3';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DBEdit19.Text,[]) then
  begin
    DM.cdsTingimentoID_FORN_TINT.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsTingimentoTITURARIA.AsString     := DM.cdsFornecedorNOME.AsString;
    DBEdit16.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Tituraria N�o Encontrada          '+#13+
                '                                     ');
    SpeedButton4Click(Self);
  end;

end;

procedure TfrmTingimento.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton4Click(self);
  end;

end;

procedure TfrmTingimento.DBEdit20Exit(Sender: TObject);
begin
  if DBEdit20.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsCliente.Open;
  if DM.cdsCliente.Locate('ID_CLIENTE',DBEdit20.Text,[]) then
  begin
    DM.cdsTingimentoID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
    DM.cdsTingimentoCLIENTE.AsString     := DM.cdsClienteR_SOCIAL.AsString;
    DBEdit7.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Cliente N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton6Click(Self);
  end;
end;

procedure TfrmTingimento.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton6Click(self);
  end;

end;

procedure TfrmTingimento.DBEdit27Exit(Sender: TObject);
begin
  if Tp_Retorno = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(ID_NOTA_RETORNO) FROM TB_NOTA_RETORNO ';
      DM.cdsDinamica.Open;
      DM.cdsNotaRetornoID_NOTA_RETORNO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      if DM.cdsNotaRetorno.ApplyUpdates(0) <> 0 then
      begin
         ShowMessage('Erro ao Gravar Registro. Consulte o Suporte! ');
      end
      else
      begin
        DM.cdsNotaRetorno.ApplyUpdates(0);
        GerenciaBotoesRet;
      end;
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      DM.cdsNotaRetorno.Cancel;
      GerenciaBotoesRet;
    end;
  end;
  if Tp_Retorno = 'Edit' then
  begin
    if Application.MessageBox('Confirma Altera��o deste Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsNotaRetorno.ApplyUpdates(0);
      GerenciaBotoesRet;
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      DM.cdsNotaRetorno.ApplyUpdates(0);
      GerenciaBotoesRet;
    end;
  end;

end;

procedure TfrmTingimento.DBEdit2Exit(Sender: TObject);
begin
{  if DBEdit2.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsProducao.Open;
  if DM.cdsProducao.Locate('NR_NOTA_FISCAL',DBEdit2.Text,[]) then
  begin
    DM.cdsTingimentoID_FORNECEDOR.AsInteger         := DM.cdsProducaoID_FORNCEDOR.AsInteger;
    DM.cdsTingimentoFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsTingimentoID_PRODUCAO.AsInteger           := DM.cdsProducaoID_PRODUCAO.AsInteger;
    DM.cdsTingimentoNR_NOTA_FISCAL.AsInteger        := DM.cdsProducaoNR_NOTA_FISCAL.AsInteger;
    DM.cdsTingimentoID_CLIENTE.AsInteger            := DM.cdsProducaoID_CLIENTE.AsInteger;
    DM.cdsTingimentoCLIENTE.AsString                := DM.cdsProducaoCLIENTE.AsString;
    DM.cdsTingimentoFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsTingimentoDT_EMISSAO.AsDateTime           := DM.cdsProducaoDT_EMISSAO.AsDateTime;
    DM.cdsTingimentoQUANT.AsFloat                   := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsTingimentoQUANT_NF.AsFloat                := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsTingimentoVL_NOTA.AsFloat                 := DM.cdsProducaoVL_NOTA.AsFloat;
    DM.cdsTingimentoVL_POR_FORA.AsFloat             := DM.cdsProducaoVL_POR_FORA.AsFloat;
    DM.cdsTingimentoVL_TOTAL.AsFloat                := DM.cdsProducaoVL_TOTAL.AsFloat;
    DBEDIT3.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Nota Fiscal N�o Encontrada         '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end; }


end;

procedure TfrmTingimento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton1Click(self);
  end;

end;

procedure TfrmTingimento.DBEdit36Exit(Sender: TObject);
begin
  if Tp_Quebra = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(ID_NOTA_QUEBRA) FROM TB_NOTA_QUEBRA ';
      DM.cdsDinamica.Open;
      DM.cdsNotaQuebraID_NOTA_QUEBRA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

      if DM.cdsNotaQuebra.ApplyUpdates(0) <> 0 then
      begin
         ShowMessage('Erro ao Gravar Registro. Consulte o Suporte! ');
      end
      else
      begin
        DM.cdsNotaQuebra.ApplyUpdates(0);
        GerenciaBotoesQueb;
      end;
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      DM.cdsNotaQuebra.Cancel;
      GerenciaBotoesQueb;
    end;
  end;
  if Tp_Quebra = 'Edit' then
  begin
    if Application.MessageBox('Confirma Altera��o deste Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsNotaQuebra.ApplyUpdates(0);
      GerenciaBotoesQueb;
    end
    else
    begin
      ShowMessage('Registro n�o salvo');
      DM.cdsNotaQuebra.ApplyUpdates(0);
      GerenciaBotoesQueb;
    end;
  end;

end;

procedure TfrmTingimento.DBEdit3Exit(Sender: TObject);
begin
  if DBEdit3.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 2';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DBEdit3.Text,[]) then
  begin
    DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsTingimentoID_FORN_TINT.AsInteger      := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsTingimentoNOME_MALHARIA.AsString   := DM.cdsFornecedorNOME.AsString;
    DBEdit4.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Fornecedor N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton2Click(Self);
  end;

end;

procedure TfrmTingimento.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton2Click(self);
  end;

end;

procedure TfrmTingimento.DBGrid3DblClick(Sender: TObject);
begin
//  ShowMessage('Linha Selecionada '+cdsDinamicaFiosID_ITEM_PRG.AsString);
  BB_CONFIRMARClick(Self);
end;

procedure TfrmTingimento.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    BB_CONFIRMARClick(Self);
  end;
  if Key = #27 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    B_CANCELARClick(Self);
  end;

end;

procedure TfrmTingimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsTingimento.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsFornecedor.Close;
    DM.cdsCliente.Close;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmRemessaProducao := NIL;
  end;
  if DM.cdsItemTingimento.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsFornecedor.Close;
    DM.cdsCliente.Close;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    Action := caFree;
    frmTingimento := NIL;
  end;



end;

procedure TfrmTingimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmTingimento.FormShow(Sender: TObject);
begin
//  DM.cdsTingimento.Close;
  DM.cdsTingimento.Open;

  DM.cdsItemTingimento.Close;
  DM.cdsItemTingimento.Params[0].AsInteger := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
  DM.cdsItemTingimento.Open;

  if DM.cdsTingimento.RecordCount >0 then
  begin
    DM.cdsNotaRetorno.Close;
    DM.cdsNotaRetorno.Params[0].AsInteger := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
    DM.cdsNotaRetorno.Open;


    DM.cdsNotaQuebra.Close;
    DM.cdsNotaQuebra.Params[0].AsInteger := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
    DM.cdsNotaQuebra.Open;

    cdsContasPagar.Close;
    cdsContasPagar.Params[0].AsInteger := StrToInt(DM.cdsTingimentoID_CLIENTE.AsString);
    cdsContasPagar.Params[1].AsDate    := StrToDate(DM.cdsTingimentoDT_EMISSAO.AsString);
    cdsContasPagar.Params[2].AsInteger := StrToInt(DM.cdsTingimentoID_FORN_TINT.AsString);
  //  cdsContasPagar.Params[3].AsInteger := StrToInt(DM.cdsTingimentoNR_NOTA_FISCAL.AsString);
    cdsContasPagar.Open;
    Somapagamentos;
  end;

  GerenciaBotoes;
  GerenciaBotoes2;
  GerenciaBotoesRet;
  GerenciaBotoesQueb;
  TabSheet4.PageControl.ActivePage:=TabSheet3;
end;

procedure TfrmTingimento.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsTingimento.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsTingimento.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_CONCLUIR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  BB_IMPRIMIR.Enabled := BB_EXCLUIR.Enabled;
  P_PRODUCAO.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmTingimento.GerenciaBotoes2;
begin
  BB_INCLUIR.Enabled       := not (DM.cdsItemTingimento.State in dsEditModes);
  BB_SALVAR.Enabled        := NOT BB_INCLUIR.Enabled;
  BB_EXC.Enabled           := BB_INCLUIR.Enabled and not (DM.cdsItemTingimento.IsEmpty);
  BB_CANC.Enabled          := BB_SALVAR.Enabled;
  BB_ALTERAR.Enabled       := BB_EXC.Enabled;
  p_item.Enabled        := not BB_INCLUIR.Enabled;

end;

procedure TfrmTingimento.GerenciaBotoesRet;
begin
  BB_INCLUIR_RET.Enabled       := not (DM.cdsNotaRetorno.State in dsEditModes);
  BB_EXCLUIR_RET.Enabled       := BB_INCLUIR_RET.Enabled and not (DM.cdsNotaRetorno.IsEmpty);
  BB_ALTERAR_RET.Enabled       := BB_EXCLUIR_RET.Enabled;
  P_NF_RETORNO.Enabled         := not BB_INCLUIR_RET.Enabled;
end;


procedure TfrmTingimento.GerenciaBotoesQueb;
begin
  BB_INCLUIR_QUEB.Enabled       := not (DM.cdsNotaQuebra.State in dsEditModes);
  BB_EXCLUIR_QUEB.Enabled       := BB_INCLUIR_QUEB.Enabled and not (DM.cdsNotaQuebra.IsEmpty);
  BB_ALTERAR_QUEB.Enabled       := BB_EXCLUIR_QUEB.Enabled;
  P_NR_QUEBRA.Enabled           := not BB_INCLUIR_QUEB.Enabled;
end;


procedure TfrmTingimento.PageControl2Change(Sender: TObject);
begin
  if DM.cdsTingimento.RecordCount > 0 then
  begin
    DM.cdsItemTingimento.Close;
    DM.cdsItemTingimento.Params[0].AsInteger := DM.cdsTingimentoID_TINGIMENTO.AsInteger;
    DM.cdsItemTingimento.Open;
  end;

  cdsContasPagar.Close;
  cdsContasPagar.Params[0].AsInteger := StrToInt(DM.cdsTingimentoID_CLIENTE.AsString);
  cdsContasPagar.Params[1].AsDate    := StrToDate(DM.cdsTingimentoDT_EMISSAO.AsString);
  cdsContasPagar.Params[2].AsInteger := StrToInt(DM.cdsTingimentoID_FORN_TINT.AsString);
//  cdsContasPagar.Params[3].AsInteger := StrToInt(DM.cdsTingimentoNR_NOTA_FISCAL.AsString);
  cdsContasPagar.Open;
  Somapagamentos;
  if cdsContasPagar.IsEmpty then
    L_AVISO.Visible := True
  else
    L_AVISO.Visible := False;
end;

procedure TfrmTingimento.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  VAR sS : Boolean;
begin

  if DM.cdsItemTingimentoCOR_ALTERADA.AsString = '' then
    sS := True
  else
    sS := False;

  if sS = False then
    QRDBText9.Color := clYellow
  else
    QRDBText9.Color := clWindow;

end;

procedure TfrmTingimento.QRBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRL_SALDO.Caption := FloatToStr(DM.cdsTingimentoQUANT_NF.AsFloat-DM.cdsTingimentoQUANT_FATURADO.AsFloat);
end;

procedure TfrmTingimento.Somapagamentos;
Var
 sSql : string;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT CP.VL_COMPRA, SUM(CP.VL_PARCELA), '+
                                ' CP.VL_COMPRA -SUM(CP.VL_PARCELA)  '+
                                ' FROM TB_CONTAS_PAGAR CP '+
                                ' WHERE CP.ID_FORNECEDOR = '+DM.cdsTingimentoID_FOR_TINGIMENTO.AsString+
                                ' AND CP.NR_NOTA_FISCAL = '+DM.cdsTingimentoNR_NOTA_FISCAL.AsString+
                                ' GROUP BY CP.VL_COMPRA ';
  DM.cdsDinamica.Open;


  if DM.cdsDinamica.IsEmpty then
  begin
    L_SALDO.Caption := 'Total R$ 0,00';
    SaldoPagamento := 0;
  end
  else
  begin
    L_SALDO.Caption := 'Total R$ '+FormatFloat('###,###0.000',DM.cdsDinamica.Fields[1].AsFloat);
    SaldoPagamento := DM.cdsDinamica.Fields[2].AsFloat;

    if SaldoPagamento < 0 then
    begin
      L_SALDO.Font.Color := clRed;
    end;

    if DM.cdsDinamica.Fields[1].AsFloat < DM.cdsProducaoVL_NOTA.AsFloat then
    begin
      L_SALDO.Font.Color := $00A3DBF3;
    end;

    if DM.cdsDinamica.Fields[1].AsFloat = DM.cdsProducaoVL_NOTA.AsFloat then
    begin
      L_SALDO.Font.Color := clGreen;
    end;
  end;

end;

procedure TfrmTingimento.SomaTotal;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText :=' SELECT SUM(IR.VL_TOTAL),SUM(IR.QT_ROLOS),SUM(IR.VL_TOTAL_REAL), SUM(IR.QUANT_FATURADO), SUM(IR.PESO_PRG),SUM(IR.QT_ROLOS), SUM(IR.QT_ROLOS_PRG) FROM TB_ITEM_TINGIMENTO IR'+
                               ' WHERE IR.ID_TINGIMENTO = '+DM.cdsTingimentoID_TINGIMENTO.AsString;
  DM.cdsDinamica.Open;


  DM.cdsTingimento.Edit;
//  DM.cdsTingimentoVL_NOTA.AsFloat       := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsTingimentoTOTAL_ROLOS.AsInteger := DM.cdsDinamica.Fields[1].AsInteger;
  DM.cdsTingimentoVL_POR_FORA.AsFloat   := (DM.cdsDinamica.Fields[0].AsFloat -  DM.cdsTingimentoVL_NOTA.AsFloat);
  DM.cdsTingimentoVL_TOTAL_NF.AsFloat   := (DM.cdsTingimentoVL_POR_FORA.AsFloat + DM.cdsTingimentoVL_NOTA.AsFloat);
  DM.cdsTingimentoQUANT_NF.AsFloat      := DM.cdsDinamica.Fields[4].AsFloat;
  DM.cdsTingimentoQT_PROGRAMADO.AsFloat := DM.cdsDinamica.Fields[6].AsFloat;
  DM.cdsTingimentoQUANT_FATURADO.AsFloat:= DM.cdsDinamica.Fields[3].AsFloat;
  DM.cdsTingimento.ApplyUpdates(0);


end;

procedure TfrmTingimento.SpeedButton1Click(Sender: TObject);
begin
{  DM.cdsProducao.Close;
  DM.cdsProducao.Open;
  Pesquisa(DM.cdsProducao,['NR_NOTA_FISCAL','FORNECEDOR'],['N� Nota Fiscal','Fornecedor'],[10,40],'','','','','Nota Fiscal','Nota Fiscal');
    DM.cdsTingimentoID_FORNCEDOR.AsInteger          := DM.cdsProducaoID_FORNCEDOR.AsInteger;
    DM.cdsTingimentoFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsTingimentoID_PRODUCAO.AsInteger           := DM.cdsProducaoID_PRODUCAO.AsInteger;
    DM.cdsTingimentoNR_NOTA_FISCAL.AsInteger        := DM.cdsProducaoNR_NOTA_FISCAL.AsInteger;
    DM.cdsTingimentoID_CLIENTE.AsInteger            := DM.cdsProducaoID_CLIENTE.AsInteger;
    DM.cdsTingimentoCLIENTE.AsString                := DM.cdsProducaoCLIENTE.AsString;
    DM.cdsTingimentoFORNECEDOR.AsString             := DM.cdsProducaoFORNECEDOR.AsString;
    DM.cdsTingimentoDT_EMISSAO.AsDateTime           := DM.cdsProducaoDT_EMISSAO.AsDateTime;
    DM.cdsTingimentoQUANT.AsFloat                   := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsTingimentoQUANT_NF.AsFloat                := DM.cdsProducaoQUANT.AsFloat;
    DM.cdsTingimentoVL_NOTA.AsFloat                 := DM.cdsProducaoVL_NOTA.AsFloat;
    DM.cdsTingimentoVL_POR_FORA.AsFloat             := DM.cdsProducaoVL_POR_FORA.AsFloat;
    DM.cdsTingimentoVL_TOTAL.AsFloat                := DM.cdsProducaoVL_TOTAL.AsFloat;
    DBEDIT3.SetFocus; }
end;

procedure TfrmTingimento.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 2';

  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');
  DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsTingimentoID_FORN_TINT.AsInteger      := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsTingimentoNOME_MALHARIA.AsString   := DM.cdsFornecedorNOME.AsString;
  DBEdit4.SetFocus;

end;

procedure TfrmTingimento.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTingimento.SpeedButton4Click(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 3';

  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');

    DM.cdsTingimentoID_FORN_TINT.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsTingimentoTITURARIA.AsString     := DM.cdsFornecedorNOME.AsString;
    DBEdit16.SetFocus;

end;

procedure TfrmTingimento.SpeedButton5Click(Sender: TObject);
var
 gpEmpresa : string;
begin
    cdsDinamicaFios.Close;
    cdsDinamicaFios.Params[0].AsInteger := DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger;
    cdsDinamicaFios.Params[1].AsInteger := DM.cdsTingimentoID_CLIENTE.AsInteger;
    cdsDinamicaFios.Params[2].AsInteger := DM.cdsTingimentoNR_NF_TINGIMENTO.AsInteger;
    cdsDinamicaFios.Open;

    if cdsDinamicaFios.IsEmpty then
    begin
      ShowMessage('Nenhum Artigo Programado Para O Cliente '+DM.cdsTingimentoCLIENTE.AsString+ ' e a Tinturaria '+DM.cdsTingimentoTITURARIA.AsString );
      P_SALDO_FIOS.Visible := False;
      BB_CANCClick(Self);
      Exit;
    end
    else
    begin
      P_SALDO_FIOS.Visible := True;
      DBGrid3.SetFocus;
    end;
end;

procedure TfrmTingimento.SpeedButton6Click(Sender: TObject);
begin
  DM.cdsCliente.Close;
  DM.cdsCliente.Open;
  Pesquisa(DM.cdsCliente,['R_SOCIAL','ID_CLIENTE'],['Nome do Cliente','C�digo'],[40,4],'','','','','Cliente','Cliente');
  DM.cdsTingimentoID_CLIENTE.AsInteger := DM.cdsClienteID_CLIENTE.AsInteger;
  DM.cdsTingimentoCLIENTE.AsString     := DM.cdsClienteR_SOCIAL.AsString;
  DBEdit7.SetFocus;

end;

procedure TfrmTingimento.SpeedButton7Click(Sender: TObject);
begin
 dCorAlterada := cdsDinamicaFiosDESCRICAO.AsString;
  if not (DBGrid3.Columns.Grid.Focused) then
  begin
    ShowMessage('Favor Selecionar uma Cor Para Altera.');
    DBGrid3.SetFocus;
    exit
  end;

  cdsCor.Close;
  cdsCor.Params[0].AsInteger := DM.cdsTingimentoID_GRUPO_EMPRESA.AsInteger;
  cdsCor.Params[1].AsInteger := DM.cdsTingimentoID_FOR_TINGIMENTO.AsInteger;
  cdsCor.Open;



  Pesquisa(cdsCor,['DESCRICAO','CODIGO','VALOR'],['Cor','C�digo','Valor'],[30,6,8],'','','','','Cores','Cores');

  if Application.MessageBox('Confirma a Mudan�a de Cor ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes  then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexName:='';
    DM.cdsDinamica.CommandText := ' UPDATE TB_ITEM_PRG I SET I.ID_CORES = '+cdsCorID_CORES.AsString+
                                  ', I.STATUS = ''A'' '+
                                  ' WHERE I.ID_ITEM_PRG    = '+cdsDinamicaFiosID_ITEM_PRG.AsString+
                                  ' AND I.ID_PRG_TINTURARIA= '+cdsDinamicaFiosID_PRG_TINTURARIA.AsString+
                                  ' AND I.ID_ARTIGO        = '+cdsDinamicaFiosID_ARTIGO.AsString+
                                  ' AND I.ID_CLIENTE       = '+DM.cdsTingimentoID_CLIENTE.AsString+
                                  ' AND I.ID_GRUPO_EMPRESA = '+DM.cdsTingimentoID_GRUPO_EMPRESA.AsString;
    DM.cdsDinamica.Execute;

    try
      cdsDinamicaFios.Open;
      cdsDinamicaFios.Refresh;
      ShowMessage('Cor Alterada Com Sucesso!');
    except
   on E: Exception do
      ShowMessage('Erro:' + E.Message );
    end;
  end
  else
  begin
    ShowMessage('Mudan�a de Cor Cancelada.');
  end;


end;

end.
