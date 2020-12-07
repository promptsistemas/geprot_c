unit uPrecoMalharia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls, QuickRpt, QRCtrls, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, qrpBaseCtrls ;

type
  TfrmPrecoMalharia = class(TForm)
    PCUPOM: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    Panel1: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    Label22: TLabel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Label12: TLabel;
    P_PRODUTOS: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBGrid1: TDBGrid;
    qMateriaPrima: TSQLQuery;
    dspMateriaPrima: TDataSetProvider;
    cdsMateriaPrima: TClientDataSet;
    dsMateriaPrima: TDataSource;
    P_BOTOES2: TPanel;
    BB_NOVO2: TBitBtn;
    BB_ALTERAR2: TBitBtn;
    BB_CANCELAR2: TBitBtn;
    BB_GRAVAR2: TBitBtn;
    BB_EXCLUIR2: TBitBtn;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    qMateriaPrimaID_ARTIGO: TIntegerField;
    qMateriaPrimaNOME_ARTIGO: TStringField;
    cdsMateriaPrimaID_ARTIGO: TIntegerField;
    cdsMateriaPrimaNOME_ARTIGO: TStringField;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    BB_IMPRIMIR: TBitBtn;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    SpeedButton5: TSpeedButton;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBNavigator1: TDBNavigator;
    PopupActionBar1: TPopupActionBar;
    Visualizar1: TMenuItem;
    N1: TMenuItem;
    Imprimir1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    QR_MALHARIA: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRGroup2: TQRGroup;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand6: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText1: TQRDBText;
    qrl_valor: TQRLabel;
    QRDBText4: TQRDBText;
    QRBand8: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand7: TQRBand;
    QR_PRECO1: TQRPQuickrep;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRLabel6: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BB_NOVO2Click(Sender: TObject);
    procedure BB_ALTERAR2Click(Sender: TObject);
    procedure BB_CANCELAR2Click(Sender: TObject);
    procedure BB_GRAVAR2Click(Sender: TObject);
    procedure BB_EXCLUIR2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure Visualizar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure BB_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
  public
    { Public declarations }
  end;

var
  frmPrecoMalharia: TfrmPrecoMalharia;
  Tipo,Acao : String;


implementation

uses U_LIB, UD_PESQUISA, uDm, uCadGrupo, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmPrecoMalharia.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsPrecoMalharia.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsPrecoMalharia.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  BB_IMPRIMIR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmPrecoMalharia.GerenciaBotoes2;
begin
  BB_NOVO2.Enabled := not (DM.cdsItemPreco.State in dsEditModes);
  BB_GRAVAR2.Enabled := NOT BB_NOVO2.Enabled;
  BB_EXCLUIR2.Enabled := BB_NOVO2.Enabled and not (DM.cdsItemPreco.IsEmpty);
  BB_CANCELAR2.Enabled := BB_GRAVAR2.Enabled;
  BB_ALTERAR2.Enabled := BB_EXCLUIR2.Enabled;
  P_PRODUTOS.Enabled := not BB_NOVO2.Enabled;
end;

procedure TfrmPrecoMalharia.Imprimir1Click(Sender: TObject);
begin
 // QR_MALHARIA.Prepare;
 // QR_MALHARIA.Print;
 QR_PRECO1.Prepare;
 QR_PRECO1.Print;
end;

procedure TfrmPrecoMalharia.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  qrl_valor.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsItemPrecoVL_ARTIGO.AsFloat);
end;

procedure TfrmPrecoMalharia.SpeedButton1Click(Sender: TObject);
Var
 sCondicao : String;
begin
   cdsMateriaPrima.Close;
   cdsMateriaPrima.Params[0].AsInteger :=DM.cdsPrecoMalhariaID_PRECO_MALHARIA.AsInteger;
   cdsMateriaPrima.Open;
  if Pesquisa( cdsMateriaPrima,
              ['NOME_ARTIGO','ID_ARTIGO'],
              ['Descri��o','Codigo'],
              [40,10],
              'Artigo',
              '1',
              SCondicao,
              '',
              'Artigo',
              'Artigo') Then
  begin
    DM.cdsItemPreco.Open;
    DM.cdsItemPreco.Insert;
    DM.cdsItemPrecoID_ARTIGO.AsInteger  := cdsMateriaPrimaID_ARTIGO.AsInteger;
    DM.cdsItemPrecoNOME_ARTIGO.AsString := cdsMateriaPrimaNOME_ARTIGO.AsString;
    DBEdit5.SetFocus;
  end;

{  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'ArtigoMalharia';
  frmPesquisaPadrao.CDS := cdsMateriaPrima;
  frmPesquisaPadrao.Tabela := 'TB_ARTIGO A ';
  frmPesquisaPadrao.CampoBusca := 'A.NOME_ARTIGO';
  frmPesquisaPadrao.CampoBusca2 := 'A.ID_ARTIGO';
  frmPesquisaPadrao.CampoChave  := 'A.NOME_ARTIGO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Artigo-Malharia';
  frmPesquisaPadrao.Sql            := ' SELECT A.ID_ARTIGO, A.NOME_ARTIGO ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Artigo';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_ARTIGO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_ARTIGO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);
  DM.cdsItemPreco.Open;
  DM.cdsItemPreco.Insert;
  DM.cdsItemPrecoID_ARTIGO.AsInteger  := cdsMateriaPrimaID_ARTIGO.AsInteger;
  DM.cdsItemPrecoNOME_ARTIGO.AsString := cdsMateriaPrimaNOME_ARTIGO.AsString;
  DBEdit5.SetFocus; }

end;

procedure TfrmPrecoMalharia.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.CommandText := ' SELECT  F.ID_FORNECEDOR, F.CODIGO_MUNIC, F.DT_CADASTRO, F.NOME, F.TP_LOGRADOURO, F.ENDERECO,'+
                                  ' F.COMPLEMENTO, F.NUMERO, F.BAIRRO, F.CEP, F.TELFONE, F.FAX, F.CELULAR, F.EMAIL, F.CNPJ, F.INS_EST,'+
                                  ' F.CONTATO, F.SITE, F.FANTASIA, F.SITUACAO, F.DT_ABERTURA, F.CNAE_PRINCIPAL, F.CNAE_SECUNDARIO, F.ID_CATEGORIA,'+
                                  ' M.NOME AS CIDADE, M.UF AS UF, M.DDD, C.NOME_CATEGORIA FROM TB_FORNECEDOR F '+
                                  ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
                                  ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)'+
                                  ' WHERE F.ID_CATEGORIA = 1';

  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');
  DM.cdsPrecoMalhariaID_MALHARIA.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsPrecoMalhariaMALHARIA.AsString   := DM.cdsFornecedorNOME.AsString;
  DBEdit17.SetFocus;

end;

procedure TfrmPrecoMalharia.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrecoMalharia.SpeedButton5Click(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Open;
  Pesquisa(DM.cdsGrupoEmpresa,['NOME_DO_GRUPO','ID_GRUPO_EMPRESA'],['Nome do Grupo','C�digo'],[40,4],'','','','','Grupo Empresa','Grupo Empresa');

  DM.cdsPrecoMalhariaID_GRUPO_EMPRESA.AsInteger  := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
  DM.cdsPrecoMalhariaNOME_DO_GRUPO.AsString      := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
  DM.cdsPrecoMalhariaRESPONSAVEL.AsString        := DM.cdsGrupoEmpresaRESPONSAVEL.AsString;
  BB_GRAVAR.SetFocus;

end;

procedure TfrmPrecoMalharia.SpeedButton6Click(Sender: TObject);
Var
 sSql : string;
begin
  sSql := ' SELECT C.ID_CLIENTE,C.CODIGO_MUNIC,C.DT_CADASTRO, C.TP_CLIENTE,C.CNPJ_CPF,C.INSC_RG, '+
          ' C.R_SOCIAL, C.FANTASIA,C.ENDERECO,C.COMPLEMENTO,C.NUMERO,C.BAIRRO,C.CEP, '+
          ' C.DT_NASCIMENTO,C.SEXO,C.ESTADO_CIVIL,C.VL_LIMITE,C.EMAIL,C.TELEFONE,C.CELULAR,'+
          ' C.WHATSAPP,C.CONTATO,C.OBS,C.ATIVO,C.SPC,C.DT_CONSULTA_SPC,C.VL_ULT_DESC,C.DT_ULT_COMPRA,'+
          ' C.VL_ULT_COMPRA,C.INFORMACOES,C.BLOQUEIO,C.PONTO_REF,C.id_grupo_empresa,M.uf, M.nome AS CIDADE,'+
          ' M.ddd,GE.nome_do_grupo'+
          ' FROM tb_cliente C'+
          ' JOIN tb_municipios M ON (M.codigo_munic = C.codigo_munic)'+
          ' LEFT OUTER JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = C.id_grupo_empresa)'+
          ' WHERE C.id_grupo_empresa = '+DM.cdsPrecoMalhariaID_GRUPO_EMPRESA.AsString;

  DM.cdsCliente.Close;
  DM.cdsCliente.CommandText :=sSql;
  DM.cdsCliente.Open;
  Pesquisa(DM.cdsCliente,['R_SOCIAL','ID_CLIENTE'],['C�digo','Nome do cliente'],[40,4],'','','','','Fornecedor','Fornecedor');

  DM.cdsPrecoMalhariaID_CLIENTE.AsInteger   := DM.cdsClienteID_CLIENTE.AsInteger;
  DM.cdsPrecoMalhariaR_SOCIAL.AsString      := DM.cdsClienteR_SOCIAL.AsString;
  DM.cdsPrecoMalhariaCNPJ_CPF.AsString      := DM.cdsClienteCNPJ_CPF.AsString;
  DM.cdsPrecoMalhariaINSC_RG.AsString       := DM.cdsClienteINSC_RG.AsString;
  DM.cdsPrecoMalhariaCIDADE_CLI.AsString    := DM.cdsClienteCIDADE.AsString;
  DM.cdsPrecoMalhariaUF_CLI.AsString        := DM.cdsClienteUF.AsString;
  BB_GRAVAR.SetFocus;

end;

procedure TfrmPrecoMalharia.Visualizar1Click(Sender: TObject);
begin
//  QR_MALHARIA.PreviewModal;
  QR_PRECO1.PreviewModal;
end;

procedure TfrmPrecoMalharia.FormShow(Sender: TObject);
begin
  DM.cdsPrecoMalharia.Close;
  DM.cdsPrecoMalharia.Open;

  if DM.cdsPrecoMalharia.RecordCount > 0 then
  begin
    DM.cdsItemPreco.Close;
    DM.cdsItemPreco.Params[0].AsInteger := DM.cdsPrecoMalhariaID_PRECO_MALHARIA.AsInteger;
    DM.cdsItemPreco.Open;
  end;

  GerenciaBotoes;
  GerenciaBotoes2;
end;

procedure TfrmPrecoMalharia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmPrecoMalharia.DBEdit17Exit(Sender: TObject);
begin
  if DBEdit17.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsGrupoEmpresa.Open;
  if DM.cdsGrupoEmpresa.Locate('ID_GRUPO_EMPRESA',DBEdit17.Text,[]) then
  begin
    DM.cdsPrecoMalhariaID_GRUPO_EMPRESA.AsInteger  := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
    DM.cdsPrecoMalhariaNOME_DO_GRUPO.AsString      := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
    DM.cdsPrecoMalhariaRESPONSAVEL.AsString        := DM.cdsGrupoEmpresaRESPONSAVEL.AsString;
    BB_GRAVAR.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '  Grupo N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton5Click(Self);
  end;



end;

procedure TfrmPrecoMalharia.DBEdit17KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPrecoMalharia.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '' Then
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
                                  ' WHERE F.ID_CATEGORIA = 1';

  DM.cdsFornecedor.Open;

  if DM.cdsFornecedor.Locate('ID_FORNECEDOR',DBEdit1.Text,[]) then
  begin
    DM.cdsPrecoMalhariaID_MALHARIA.AsInteger := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
    DM.cdsPrecoMalhariaMALHARIA.AsString   := DM.cdsFornecedorNOME.AsString;
    DBEdit17.SetFocus;
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

procedure TfrmPrecoMalharia.DBEdit1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPrecoMalharia.DBEdit3Exit(Sender: TObject);
begin
  DM.cdsArtigo.Close;
  DM.cdsArtigo.Open;

  if DBEdit3.Text <> '' then
  begin
    if DM.cdsArtigo.Locate('ID_ARTIGO',DM.cdsItemPrecoID_ARTIGO.AsInteger,[]) then
    begin
      DM.cdsItemPrecoID_ARTIGO.AsInteger                  := DM.cdsArtigoID_ARTIGO.AsInteger;
      DM.cdsItemPrecoNOME_ARTIGO.AsString                 := DM.cdsArtigoNOME_ARTIGO.AsString;
      DM.cdsItemPrecoLARGURA.AsFloat                      := DM.cdsArtigoLARGURA.AsFloat;
      DBEdit5.SetFocus;
    end
    else
    begin
      ShowMessage('C�digo N�o Encontrado');
      SpeedButton1Click(self);
    end;
  end;

  if DBEdit3.Text ='' then
  begin
    ShowMessage('Nehum C�digo Informado!');
    BB_CANCELAR2Click(Self);
  end;


end;

procedure TfrmPrecoMalharia.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPrecoMalharia.DBEdit6Exit(Sender: TObject);
Var
 sSql : string;
begin
  sSql := ' SELECT C.ID_CLIENTE,C.CODIGO_MUNIC,C.DT_CADASTRO, C.TP_CLIENTE,C.CNPJ_CPF,C.INSC_RG, '+
          ' C.R_SOCIAL, C.FANTASIA,C.ENDERECO,C.COMPLEMENTO,C.NUMERO,C.BAIRRO,C.CEP, '+
          ' C.DT_NASCIMENTO,C.SEXO,C.ESTADO_CIVIL,C.VL_LIMITE,C.EMAIL,C.TELEFONE,C.CELULAR,'+
          ' C.WHATSAPP,C.CONTATO,C.OBS,C.ATIVO,C.SPC,C.DT_CONSULTA_SPC,C.VL_ULT_DESC,C.DT_ULT_COMPRA,'+
          ' C.VL_ULT_COMPRA,C.INFORMACOES,C.BLOQUEIO,C.PONTO_REF,C.id_grupo_empresa,M.uf, M.nome AS CIDADE,'+
          ' M.ddd,GE.nome_do_grupo'+
          ' FROM tb_cliente C'+
          ' JOIN tb_municipios M ON (M.codigo_munic = C.codigo_munic)'+
          ' LEFT OUTER JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = C.id_grupo_empresa)'+
          ' WHERE C.id_grupo_empresa = '+DM.cdsPrecoMalhariaID_GRUPO_EMPRESA.AsString;

  if DBEdit6.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsCliente.Close;
  DM.cdsCliente.CommandText :=sSql;
  DM.cdsCliente.Open;

  if DM.cdsCliente.Locate('ID_CLIENTE',DBEdit6.Text,[]) then
  begin
    DM.cdsPrecoMalhariaID_CLIENTE.AsInteger   := DM.cdsClienteID_CLIENTE.AsInteger;
    DM.cdsPrecoMalhariaR_SOCIAL.AsString      := DM.cdsClienteR_SOCIAL.AsString;
    DM.cdsPrecoMalhariaCNPJ_CPF.AsString      := DM.cdsClienteCNPJ_CPF.AsString;
    DM.cdsPrecoMalhariaINSC_RG.AsString       := DM.cdsClienteINSC_RG.AsString;
    DM.cdsPrecoMalhariaCIDADE_CLI.AsString    := DM.cdsClienteCIDADE.AsString;
    DM.cdsPrecoMalhariaUF_CLI.AsString        := DM.cdsClienteUF.AsString;
    BB_GRAVAR.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '  Nenhum Cliente Encontrado Para o Grupo '+#13+
                '                                     ');
    SpeedButton6Click(Self);
  end;

end;

procedure TfrmPrecoMalharia.DBEdit6KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPrecoMalharia.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

procedure TfrmPrecoMalharia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsPrecoMalharia.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    DM.cdsPrecoMalharia.Close;
    DM.cdsPrecoMalharia.Close;
    DM.cdsCliente.Close;
    Action := caFree;
    frmPrecoMalharia := nil;
  end;

end;

procedure TfrmPrecoMalharia.BB_NOVO2Click(Sender: TObject);
begin
  if DM.cdsArtigo.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve A Tabela Para Incluir Artigo.');
    Abort;
  end
  else
  begin
    Acao := 'Insert';
    DM.cdsItemPreco.Open;
    DM.cdsItemPreco.Insert;
    GerenciaBotoes2;
    DBEDIT3.SetFocus;
  end;

end;

procedure TfrmPrecoMalharia.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsPrecoMalharia.Insert;

  GerenciaBotoes;
  DBEdit1.SetFocus;

end;

procedure TfrmPrecoMalharia.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsPrecoMalharia.Edit;
  GerenciaBotoes;
  DBEdit1.SetFocus;
end;

procedure TfrmPrecoMalharia.BB_ALTERAR2Click(Sender: TObject);
Var
 sCondicao : String;
begin
   Acao := 'Edit';
   cdsMateriaPrima.Close;
   cdsMateriaPrima.Params[0].AsInteger :=DM.cdsPrecoMalhariaID_PRECO_MALHARIA.AsInteger;
   cdsMateriaPrima.Open;
if Pesquisa( cdsMateriaPrima,
              ['ID_ARTIGO','NOME_ARTIGO'],
              ['Codigo','Descri��o'],
              [10,40],
              'Artigo',
              '1',
              SCondicao,
              '',
              'Artigo',
              'Artigo') Then
  begin
    DM.cdsItemPreco.Open;
    DM.cdsItemPreco.Edit;
    DM.cdsItemPrecoID_ARTIGO.AsInteger  := cdsMateriaPrimaID_ARTIGO.AsInteger;
    DM.cdsItemPrecoNOME_ARTIGO.AsString := cdsMateriaPrimaNOME_ARTIGO.AsString;
    GerenciaBotoes2;
    DBEdit5.SetFocus;
  end;
end;

procedure TfrmPrecoMalharia.BB_CANCELAR2Click(Sender: TObject);
begin
  DM.cdsItemPreco.Open;
  DM.cdsItemPreco.Cancel;
  cdsMateriaPrima.Open;
  cdsMateriaPrima.Cancel;
  GerenciaBotoes2;
end;

procedure TfrmPrecoMalharia.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsPrecoMalharia.Cancel;
  GerenciaBotoes;
end;

procedure TfrmPrecoMalharia.BB_EXCLUIR2Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente excluir este registro ? ','Confirma��o', MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
     DM.cdsItemPreco.Delete;
     DM.cdsItemPreco.ApplyUpdates(0);
     GerenciaBotoes2;
  end
  else
  begin
    ShowMessage('Exclus�o n�o Confirmada');
    BB_CANCELAR2Click(Self);
    GerenciaBotoes2;
  end;

end;

procedure TfrmPrecoMalharia.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsItemPreco.RecordCount > 0 then
  begin
    ShowMessage('Impossiv�l Excluir. Exite(m) Artigo(s) Vinculado(s) na Tabela.');
    Exit;
  end;
  if Application.MessageBox('Deseja Excluir Este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsPrecoMalharia.Delete;
    DM.cdsPrecoMalharia.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Registro N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmPrecoMalharia.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Pre�o-Malharia';
  frmPesquisaPadrao.CDS := DM.cdsPrecoMalharia;
  frmPesquisaPadrao.Tabela := 'TB_PRECO_MALHARIA PM';
  frmPesquisaPadrao.CampoBusca := 'F.NOME';
  frmPesquisaPadrao.CampoBusca2 := 'GE.nome_do_grupo';
  frmPesquisaPadrao.CampoChave  := 'F.NOME';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Pre�o-Malharia';
  frmPesquisaPadrao.Sql            := ' SELECT  PM.ID_PRECO_MALHARIA, PM.ID_CLIENTE, PM.ID_MALHARIA, PM.id_grupo_empresa, C.R_SOCIAL, '+
                                      ' C.CNPJ_CPF, C.INSC_RG, M.NOME AS CIDADE_CLI, M.UF   AS UF_CLI, F.NOME AS MALHARIA, F.CNPJ, '+
                                      ' F.INS_EST, MM.NOME AS CIDADE_FORN, MM.UF AS UF_FORN, GE.nome_do_grupo, GE.responsavel ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Malharia';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'MALHARIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Grupo Cliente';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'NOME_DO_GRUPO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);


//  Pesquisa(DM.cdsPrecoMalharia,['r_social','MALHARIA'],['NOME','MALHARIA'],
//    [20],'','','','','Cliente-Malharia','Cliente-Malharia');
end;

procedure TfrmPrecoMalharia.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsPrecoMalharia.Close;
//    Close;
//  end
//  else
//  begin
//    if Application.MessageBox('Existe(m) Grupo(s) de Produto(s) sem importar, Deseja Importar Grupo(s) de Produto(s) Agora?','Aten��o',MB_OK+MB_YESNO)= idyes then
//    begin
//      BB_EXPORTARClick(Self);
//    end
//    else
//    begin
//      DM.cdsPrecoMalharia.Close;
//      Close;
//    end;
//  end;

end;

procedure TfrmPrecoMalharia.BB_GRAVAR2Click(Sender: TObject);
begin
  if Acao = 'Insert' then
  begin
     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' SELECT MAX(MA.ID_ITEM_PRECO) FROM TB_ITEM_PRECO_MALHARIA MA';
     DM.cdsDinamica.Open;

     DM.cdsItemPrecoID_ITEM_PRECO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
     DM.cdsItemPrecoID_ARTIGO.AsInteger     := DM.cdsArtigoID_ARTIGO.AsInteger;

     DM.cdsItemPreco.ApplyUpdates(0);
     GerenciaBotoes2;
{     If Application.MessageBox('Deseja Incluir mais Registros ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = Idyes then
     begin
       BB_NOVO2Click(Self);
       SpeedButton1Click(Self);

     end
     else
     begin
       BB_CANCELAR2Click(Self);

     end;}
  end;

  if Acao = 'Edit'  then
  begin
     DM.cdsItemPreco.ApplyUpdates(0);
     GerenciaBotoes2;
  end;
end;

procedure TfrmPrecoMalharia.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PRECO_MALHARIA) FROM TB_PRECO_MALHARIA ';
    DM.cdsDinamica.Open;

    DM.cdsPrecoMalhariaID_PRECO_MALHARIA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsPrecoMalharia.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsPrecoMalharia.ApplyUpdates(0);
      DM.cdsPrecoMalharia.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsPrecoMalharia.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsPrecoMalharia.ApplyUpdates(0);
      DM.cdsPrecoMalharia.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

procedure TfrmPrecoMalharia.BB_IMPRIMIRClick(Sender: TObject);
begin
  PopupActionBar1.Popup(354+BB_IMPRIMIR.Left,125+BB_IMPRIMIR.Top);
end;

end.
