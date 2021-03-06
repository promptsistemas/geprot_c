unit uManutencaoContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.FMTBcd, Vcl.Grids, Vcl.DBGrids, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.DBCtrls;

type
  TfrmManutencaoContasPagar = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    SpeedButton3: TSpeedButton;
    qContasPagar: TSQLDataSet;
    qContasPagarID_CONTAS_PAGAR: TIntegerField;
    qContasPagarID_PRODUCAO: TIntegerField;
    qContasPagarID_CLIENTE: TIntegerField;
    qContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    qContasPagarID_USUARIO: TIntegerField;
    qContasPagarID_LOJA: TIntegerField;
    qContasPagarID_FORNECEDOR: TIntegerField;
    qContasPagarID_FORN_REM: TIntegerField;
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
    qContasPagarNR_NOTA_FISCAL: TIntegerField;
    qContasPagarNR_NF_REMESSA: TIntegerField;
    qContasPagarORIGEM: TStringField;
    qContasPagarVL_PAGO: TFMTBCDField;
    qContasPagarOBS: TStringField;
    qContasPagarDESCRICAO_PAGAMENTO: TStringField;
    qContasPagarCLIENTE: TStringField;
    qContasPagarFORNECEDOR: TStringField;
    qContasPagarFORN_REMESSA: TStringField;
    qContasPagarNOME_USUARIO: TStringField;
    qContasPagarEMPRESA: TStringField;
    qContasPagarDIAS_ATRASO: TIntegerField;
    qContasPagarTP_MOV: TStringField;
    dspContasPagar: TDataSetProvider;
    cdsContasPagar: TClientDataSet;
    cdsContasPagarID_CONTAS_PAGAR: TIntegerField;
    cdsContasPagarID_PRODUCAO: TIntegerField;
    cdsContasPagarID_CLIENTE: TIntegerField;
    cdsContasPagarID_PLANO_PAGAMENTO: TIntegerField;
    cdsContasPagarID_USUARIO: TIntegerField;
    cdsContasPagarID_LOJA: TIntegerField;
    cdsContasPagarID_FORNECEDOR: TIntegerField;
    cdsContasPagarID_FORN_REM: TIntegerField;
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
    cdsContasPagarNR_NOTA_FISCAL: TIntegerField;
    cdsContasPagarNR_NF_REMESSA: TIntegerField;
    cdsContasPagarORIGEM: TStringField;
    cdsContasPagarVL_PAGO: TFMTBCDField;
    cdsContasPagarOBS: TStringField;
    cdsContasPagarDESCRICAO_PAGAMENTO: TStringField;
    cdsContasPagarCLIENTE: TStringField;
    cdsContasPagarFORNECEDOR: TStringField;
    cdsContasPagarFORN_REMESSA: TStringField;
    cdsContasPagarNOME_USUARIO: TStringField;
    cdsContasPagarEMPRESA: TStringField;
    cdsContasPagarDIAS_ATRASO: TIntegerField;
    cdsContasPagarTP_MOV: TStringField;
    dsContasPagar: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    edtCli: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    lblCliente: TLabel;
    Label3: TLabel;
    edtBusca: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    BB_NOVO: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    BB_EDITAR: TBitBtn;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCliExit(Sender: TObject);
    procedure edtCliKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscaChange(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_EDITARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    tpMov : string;
  end;

var
  frmManutencaoContasPagar: TfrmManutencaoContasPagar;

  sSql : string;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uInsertEditContas;

procedure TfrmManutencaoContasPagar.BB_EDITARClick(Sender: TObject);
begin
  if edtCli.Text = '' then
  begin
    ShowMessage('Favor Informar uma Loja!');
    edtCli.Color := clYellow;
    edtCli.SetFocus;
    Exit;
  end
  else
  begin
    tpMov := 'Edit';
    if frmInsertEditContas = nil then
    begin
      frmInsertEditContas := TfrmInsertEditContas.Create(Application);
      frmInsertEditContas.ShowModal;
    end;
  end;

end;

procedure TfrmManutencaoContasPagar.BB_NOVOClick(Sender: TObject);
begin
  if edtCli.Text = '' then
  begin
    ShowMessage('Favor Informar uma Loja!');
    edtCli.Color := clYellow;
    edtCli.SetFocus;
    Exit;
  end
  else
  begin
    tpMov := 'Insert';
    if frmInsertEditContas = nil then
    begin
      frmInsertEditContas := TfrmInsertEditContas.Create(Application);
      frmInsertEditContas.ShowModal;
    end;
  end;
end;

procedure TfrmManutencaoContasPagar.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmManutencaoContasPagar.edtBuscaChange(Sender: TObject);
begin
  sSql :=' SELECT CP.ID_CONTAS_PAGAR,CP.ID_PRODUCAO,CP.ID_CLIENTE,CP.ID_PLANO_PAGAMENTO ,'+
         ' CP.ID_USUARIO,CP.ID_LOJA,CP.ID_FORNECEDOR,CP.ID_FORN_REM,CP.DT_EMISSAO,CP.DT_VENCIMENTO, CP.TP_MOV,'+
         ' CP.DT_PAGAMENTO,CP.QT_DIAS,CP.QT_DIAS_ATRAZO,CP.QT_PARCELA,CP.NR_DOC,CP.VL_COMPRA,CP.VL_PARCELA,'+
         ' CP.NR_PARCELA,CP.STATUS,CP.NR_NOTA_FISCAL,CP.NR_NF_REMESSA, CP.ORIGEM,CP.VL_PAGO, CP.OBS, PP.DESCRICAO_PAGAMENTO,'+
         ' C.R_SOCIAL AS CLIENTE , F.NOME AS FORNECEDOR ,FR.NOME AS FORN_REMESSA,U.NOME_USUARIO,L.R_SOCIAL AS EMPRESA,'+
         ' (current_date - CP.DT_VENCIMENTO) AS DIAS_ATRASO '+
         ' FROM TB_CONTAS_PAGAR CP '+
         ' JOIN TB_PLANO_PAGAMENTO PP ON (PP.ID_PLANO_PAGAMENTO = CP.ID_PLANO_PAGAMENTO)'+
         ' JOIN TB_CLIENTE C ON (C.ID_CLIENTE = CP.ID_CLIENTE)'+
         ' JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = CP.ID_FORNECEDOR)'+
         ' JOIN TB_FORNECEDOR FR ON (FR.ID_FORNECEDOR = CP.ID_FORN_REM)'+
         ' JOIN TB_PRODUCAO P ON (P.ID_PRODUCAO = CP.ID_PRODUCAO)'+
         ' JOIN TB_USUARIO U ON (U.ID_USUARIO = CP.ID_USUARIO)'+
         ' JOIN TB_LOJAS L ON (L.ID_LOJA = CP.ID_LOJA)';

  if edtCli.Text = '' then
  begin
    ShowMessage('Favor Informar um Cliente Para Busca');
    edtCli.SetFocus;
    Exit;
  end
  else
  begin
   sSql := sSql+' WHERE F.NOME LIKE '+QuotedStr('%'+edtBusca.Text+'%')+
   ' or F.NOME LIKE '+QuotedStr('%'+edtBusca.Text+'%')+' or CP.NR_DOC LIKE '+QuotedStr('%'+edtBusca.Text+'%')+
   ' or CP.VL_PARCELA LIKE'+QuotedStr('%'+edtBusca.Text+'%');
   cdsContasPagar.Close;
   cdsContasPagar.CommandText := sSql;
   cdsContasPagar.Open;
  end;
end;

procedure TfrmManutencaoContasPagar.edtCliExit(Sender: TObject);
begin
  if edtCli.Text = '' Then
  begin
    exit;
  end;
  DM.cdsCliente.Open;
  if DM.cdsCliente.Locate('ID_CLIENTE',edtCli.Text,[]) then
  begin
    edtCli.Text        := DM.cdsClienteID_CLIENTE.AsString;
    lblCliente.Caption := DM.cdsClienteR_SOCIAL.AsString;
    edtBusca.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Cliente N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end;

end;

procedure TfrmManutencaoContasPagar.edtCliKeyPress(Sender: TObject;
  var Key: Char);
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

procedure TfrmManutencaoContasPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmManutencaoContasPagar := nil;
end;

procedure TfrmManutencaoContasPagar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmManutencaoContasPagar.FormShow(Sender: TObject);
begin
  edtCli.SetFocus;
end;

procedure TfrmManutencaoContasPagar.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsCliente.Close;
  DM.cdsCliente.Open;
  Pesquisa(DM.cdsCliente,['R_SOCIAL','ID_CLIENTE'],['Nome do Cliente','C�digo'],[40,4],'','','','','Cliente','Cliente');
  edtCli.Text        := DM.cdsClienteID_CLIENTE.AsString;
  lblCliente.Caption := DM.cdsClienteR_SOCIAL.AsString;
  edtBusca.SetFocus;

end;

procedure TfrmManutencaoContasPagar.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.
