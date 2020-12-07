unit uReativaPrgTinturaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmReativaPrgTinturaria = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    dsReativaProgramacao: TDataSource;
    cdsReativaProgramacao: TClientDataSet;
    dspReativaProgramacao: TDataSetProvider;
    qReativaProgramacao: TSQLQuery;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    dsItemProducao: TDataSource;
    dspItemProducao: TDataSetProvider;
    qItemProducao: TSQLQuery;
    edtPesquisa: TEdit;
    Label1: TLabel;
    BB_PESQUISAR: TBitBtn;
    SB_REATIVAR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    cdsItemProducao: TClientDataSet;
    qReativaProgramacaoID_PRG_TINTURARIA: TIntegerField;
    qReativaProgramacaoID_FOR_TINTURARIA: TIntegerField;
    qReativaProgramacaoID_CLIENTE: TIntegerField;
    qReativaProgramacaoSTATUS: TStringField;
    qReativaProgramacaoQT_ROLOS: TIntegerField;
    qReativaProgramacaoDT_EMISSAO: TDateField;
    qReativaProgramacaoNR_NOTA: TIntegerField;
    qReativaProgramacaoNR_NOTA_REMESSA: TIntegerField;
    qReativaProgramacaoVL_NOTA: TFMTBCDField;
    qReativaProgramacaoNR_NOTA_MALHARIA: TIntegerField;
    qReativaProgramacaoID_REMESSA: TIntegerField;
    qReativaProgramacaoID_GRUPO_EMPRESA: TIntegerField;
    qReativaProgramacaoESTAMPADO: TStringField;
    qReativaProgramacaoTIPO_ESTAMPA: TStringField;
    qReativaProgramacaoOBS: TStringField;
    qReativaProgramacaoID_LOTE: TIntegerField;
    qReativaProgramacaoQT_PRG_ROLOS: TIntegerField;
    qReativaProgramacaoQT_PROGRAMADO: TIntegerField;
    qReativaProgramacaoQT_SALDO_PROGRAMAR: TIntegerField;
    qReativaProgramacaoID_TRANSPORTADORA: TIntegerField;
    qReativaProgramacaoCLIENTE: TStringField;
    qReativaProgramacaoCODIGO_MUNIC: TStringField;
    qReativaProgramacaoCNPJ_CPF: TStringField;
    qReativaProgramacaoINSC_RG: TStringField;
    qReativaProgramacaoENDERECO: TStringField;
    qReativaProgramacaoCOMPLEMENTO: TStringField;
    qReativaProgramacaoNUMERO: TStringField;
    qReativaProgramacaoBAIRRO: TStringField;
    qReativaProgramacaoCIDADE: TStringField;
    qReativaProgramacaoUF: TStringField;
    qReativaProgramacaoTITURARIA: TStringField;
    qReativaProgramacaoNOME_TRANSPORTADORA: TStringField;
    cdsReativaProgramacaoID_PRG_TINTURARIA: TIntegerField;
    cdsReativaProgramacaoID_FOR_TINTURARIA: TIntegerField;
    cdsReativaProgramacaoID_CLIENTE: TIntegerField;
    cdsReativaProgramacaoSTATUS: TStringField;
    cdsReativaProgramacaoQT_ROLOS: TIntegerField;
    cdsReativaProgramacaoDT_EMISSAO: TDateField;
    cdsReativaProgramacaoNR_NOTA: TIntegerField;
    cdsReativaProgramacaoNR_NOTA_REMESSA: TIntegerField;
    cdsReativaProgramacaoVL_NOTA: TFMTBCDField;
    cdsReativaProgramacaoNR_NOTA_MALHARIA: TIntegerField;
    cdsReativaProgramacaoID_REMESSA: TIntegerField;
    cdsReativaProgramacaoID_GRUPO_EMPRESA: TIntegerField;
    cdsReativaProgramacaoESTAMPADO: TStringField;
    cdsReativaProgramacaoTIPO_ESTAMPA: TStringField;
    cdsReativaProgramacaoOBS: TStringField;
    cdsReativaProgramacaoID_LOTE: TIntegerField;
    cdsReativaProgramacaoQT_PRG_ROLOS: TIntegerField;
    cdsReativaProgramacaoQT_PROGRAMADO: TIntegerField;
    cdsReativaProgramacaoQT_SALDO_PROGRAMAR: TIntegerField;
    cdsReativaProgramacaoID_TRANSPORTADORA: TIntegerField;
    cdsReativaProgramacaoCLIENTE: TStringField;
    cdsReativaProgramacaoCODIGO_MUNIC: TStringField;
    cdsReativaProgramacaoCNPJ_CPF: TStringField;
    cdsReativaProgramacaoINSC_RG: TStringField;
    cdsReativaProgramacaoENDERECO: TStringField;
    cdsReativaProgramacaoCOMPLEMENTO: TStringField;
    cdsReativaProgramacaoNUMERO: TStringField;
    cdsReativaProgramacaoBAIRRO: TStringField;
    cdsReativaProgramacaoCIDADE: TStringField;
    cdsReativaProgramacaoUF: TStringField;
    cdsReativaProgramacaoTITURARIA: TStringField;
    cdsReativaProgramacaoNOME_TRANSPORTADORA: TStringField;
    qItemProducaoID_ITEM_PRG: TIntegerField;
    qItemProducaoID_PRG_TINTURARIA: TIntegerField;
    qItemProducaoID_ARTIGO: TIntegerField;
    qItemProducaoID_CLIENTE: TIntegerField;
    qItemProducaoID_GRUPO_EMPRESA: TIntegerField;
    qItemProducaoID_CORES: TIntegerField;
    qItemProducaoQUANT: TFMTBCDField;
    qItemProducaoPESO: TFMTBCDField;
    qItemProducaoCOD_ESTAMPA: TStringField;
    qItemProducaoCOD_VARIANTE: TStringField;
    qItemProducaoID_LOTE: TIntegerField;
    qItemProducaoVL_UNIT: TFMTBCDField;
    qItemProducaoSTATUS: TStringField;
    qItemProducaoNOME_ARTIGO: TStringField;
    qItemProducaoLARGURA: TFMTBCDField;
    qItemProducaoGRAMATURA: TFMTBCDField;
    qItemProducaoCOMPOSICAO: TStringField;
    qItemProducaoTUBULAR: TStringField;
    qItemProducaoFELPAR: TStringField;
    qItemProducaoCORTA_AUREOLAS: TStringField;
    qItemProducaoCODIGO: TIntegerField;
    qItemProducaoCOR: TStringField;
    qItemProducaoCOD_COR: TStringField;
    cdsItemProducaoID_ITEM_PRG: TIntegerField;
    cdsItemProducaoID_PRG_TINTURARIA: TIntegerField;
    cdsItemProducaoID_ARTIGO: TIntegerField;
    cdsItemProducaoID_CLIENTE: TIntegerField;
    cdsItemProducaoID_GRUPO_EMPRESA: TIntegerField;
    cdsItemProducaoID_CORES: TIntegerField;
    cdsItemProducaoQUANT: TFMTBCDField;
    cdsItemProducaoPESO: TFMTBCDField;
    cdsItemProducaoCOD_ESTAMPA: TStringField;
    cdsItemProducaoCOD_VARIANTE: TStringField;
    cdsItemProducaoID_LOTE: TIntegerField;
    cdsItemProducaoVL_UNIT: TFMTBCDField;
    cdsItemProducaoSTATUS: TStringField;
    cdsItemProducaoNOME_ARTIGO: TStringField;
    cdsItemProducaoLARGURA: TFMTBCDField;
    cdsItemProducaoGRAMATURA: TFMTBCDField;
    cdsItemProducaoCOMPOSICAO: TStringField;
    cdsItemProducaoTUBULAR: TStringField;
    cdsItemProducaoFELPAR: TStringField;
    cdsItemProducaoCORTA_AUREOLAS: TStringField;
    cdsItemProducaoCODIGO: TIntegerField;
    cdsItemProducaoCOR: TStringField;
    cdsItemProducaoCOD_COR: TStringField;
    DBEdit21: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit19: TDBEdit;
    DBE_tipo_estampa: TDBEdit;
    lbl_tipo_estampa: TLabel;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label25: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SB_REATIVARClick(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReativaPrgTinturaria: TfrmReativaPrgTinturaria;

implementation

{$R *.dfm}

uses U_LIB, uDM;

procedure TfrmReativaPrgTinturaria.BB_PESQUISARClick(Sender: TObject);
Var
 sSql : string;
begin

  sSql := ' SELECT  RP.ID_PRG_TINTURARIA, RP.ID_FOR_TINTURARIA, RP.ID_CLIENTE, RP.STATUS, RP.QT_ROLOS, RP.DT_EMISSAO, RP.NR_NOTA, RP.NR_NOTA_REMESSA,'+
          ' RP.VL_NOTA, RP.NR_NOTA_MALHARIA, RP.ID_REMESSA, RP.ID_GRUPO_EMPRESA, RP.ESTAMPADO, RP.TIPO_ESTAMPA, RP.OBS, RP.ID_LOTE, RP.QT_PRG_ROLOS, '+
          ' RP.QT_PROGRAMADO, RP.QT_SALDO_PROGRAMAR, RP.ID_TRANSPORTADORA, C.R_SOCIAL AS CLIENTE, C.CODIGO_MUNIC, C.CNPJ_CPF, C.INSC_RG, C.ENDERECO, '+
          ' C.COMPLEMENTO, C.NUMERO, C.BAIRRO, M.NOME AS CIDADE, M.UF, F.NOME AS TITURARIA, T.NOME_TRANSPORTADORA                                    '+
          ' FROM TB_PRG_TINTURARIA RP                                                                                                                '+
          ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FOR_TINTURARIA)                                                              '+
          ' LEFT OUTER JOIN TB_TRANSPORTADORA T ON (T.ID_TRANSPORTADORA = RP.ID_TRANSPORTADORA)                                                      '+
          ' JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)                                                                                      '+
          ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MUNIC)                                                                                '+
          ' WHERE RP.status =''F''';
  if edtPesquisa.Text <> '' then
  begin
    cdsReativaProgramacao.Close;
    cdsReativaProgramacao.CommandText := sSql+' AND RP.nr_nota = '+QuotedStr(edtPesquisa.Text);
    cdsReativaProgramacao.Open;

    if cdsReativaProgramacao.IsEmpty then
    begin
      ShowMessage('Nota Fiscal N�o Encontrada');
      cdsReativaProgramacao.Close;
      cdsReativaProgramacao.CommandText:=sSql;
      cdsReativaProgramacao.Open;

      Pesquisa(cdsReativaProgramacao,['NR_NOTA_FISCAL','TITURARIA'],['N� Nota Fiscal','Tinturaria'],[16,40],'','','','','Reativar Nota','Reativar Nota');
      edtPesquisa.Text := cdsReativaProgramacaoNR_NOTA.AsString;
      cdsItemProducao.Close;
      cdsItemProducao.Params[0].AsInteger := cdsReativaProgramacaoID_PRG_TINTURARIA.AsInteger;
      cdsItemProducao.Open;
      SB_REATIVAR.Enabled := True;
    end
    else
    begin
     cdsItemProducao.Close;
     cdsItemProducao.Params[0].AsInteger := cdsReativaProgramacaoID_REMESSA.AsInteger;
     cdsItemProducao.Open;
     SB_REATIVAR.Enabled := True;
    end;
  end;
end;

procedure TfrmReativaPrgTinturaria.edtPesquisaExit(Sender: TObject);
begin
  if edtPesquisa.Text <>'' then
  begin
    BB_PESQUISAR.SetFocus;
  end;
end;

procedure TfrmReativaPrgTinturaria.edtPesquisaKeyPress(Sender: TObject;
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

procedure TfrmReativaPrgTinturaria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmReativaPrgTinturaria := NIL;
end;

procedure TfrmReativaPrgTinturaria.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmReativaPrgTinturaria.FormShow(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

procedure TfrmReativaPrgTinturaria.SB_REATIVARClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Reativar Nota?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = idyes then
  begin
    cdsReativaProgramacao.Edit;
    cdsReativaProgramacaoSTATUS.Value := 'A';
    cdsReativaProgramacao.ApplyUpdates(0);

    ShowMessage(' Nota Fiscal Reativada!');
    cdsReativaProgramacao.Close;
    edtPesquisa.Clear;
    edtPesquisa.SetFocus;

  end;

end;

procedure TfrmReativaPrgTinturaria.SpeedButton1Click(Sender: TObject);
Var
 sSql : string;
begin

  sSql := ' SELECT  RP.ID_PRG_TINTURARIA, RP.ID_FOR_TINTURARIA, RP.ID_CLIENTE, RP.STATUS, RP.QT_ROLOS, RP.DT_EMISSAO, RP.NR_NOTA, RP.NR_NOTA_REMESSA,'+
          ' RP.VL_NOTA, RP.NR_NOTA_MALHARIA, RP.ID_REMESSA, RP.ID_GRUPO_EMPRESA, RP.ESTAMPADO, RP.TIPO_ESTAMPA, RP.OBS, RP.ID_LOTE, RP.QT_PRG_ROLOS, '+
          ' RP.QT_PROGRAMADO, RP.QT_SALDO_PROGRAMAR, RP.ID_TRANSPORTADORA, C.R_SOCIAL AS CLIENTE, C.CODIGO_MUNIC, C.CNPJ_CPF, C.INSC_RG, C.ENDERECO, '+
          ' C.COMPLEMENTO, C.NUMERO, C.BAIRRO, M.NOME AS CIDADE, M.UF, F.NOME AS TITURARIA, T.NOME_TRANSPORTADORA                                    '+
          ' FROM TB_PRG_TINTURARIA RP                                                                                                                '+
          ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FOR_TINTURARIA)                                                              '+
          ' LEFT OUTER JOIN TB_TRANSPORTADORA T ON (T.ID_TRANSPORTADORA = RP.ID_TRANSPORTADORA)                                                      '+
          ' JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)                                                                                      '+
          ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MUNIC)                                                                                '+
          ' WHERE RP.status =''F''';

      cdsReativaProgramacao.Close;
      cdsReativaProgramacao.CommandText:=sSql;
      cdsReativaProgramacao.Open;

      Pesquisa(cdsReativaProgramacao,['NR_NOTA','TITURARIA'],['N� Nota Fiscal','Tinturaria'],[16,40],'','','','','Reativar Nota','Reativar Nota');
      edtPesquisa.Text := cdsReativaProgramacaoNR_NOTA.AsString;
      cdsItemProducao.Close;
      cdsItemProducao.Params[0].AsInteger := cdsReativaProgramacaoID_PRG_TINTURARIA.AsInteger;
      cdsItemProducao.Open;
      SB_REATIVAR.Enabled := True;
end;

procedure TfrmReativaPrgTinturaria.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.