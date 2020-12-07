unit uReativaRemessa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask;

type
  TfrmReativaRemessa = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Label12: TLabel;
    dsReativaRemessa: TDataSource;
    cdsReativaRemessa: TClientDataSet;
    dspReativaRemessa: TDataSetProvider;
    qReativaRemessa: TSQLQuery;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    dsItemProducao: TDataSource;
    cdsItemProducao: TClientDataSet;
    dspItemProducao: TDataSetProvider;
    qItemProducao: TSQLQuery;
    edtPesquisa: TEdit;
    Label1: TLabel;
    BB_PESQUISAR: TBitBtn;
    SB_REATIVAR: TSpeedButton;
    qReativaRemessaID_REMESSA: TIntegerField;
    qReativaRemessaID_FOR_REMESSA: TIntegerField;
    qReativaRemessaSTATUS: TStringField;
    qReativaRemessaQUANT_NF: TFMTBCDField;
    qReativaRemessaQUANT_FATURADO: TFMTBCDField;
    qReativaRemessaQUANT_SALDO: TFMTBCDField;
    qReativaRemessaID_CLIENTE: TIntegerField;
    qReativaRemessaID_FORNECEDOR: TIntegerField;
    qReativaRemessaDT_EMISSAO: TDateField;
    qReativaRemessaNR_NOTA_FISCAL: TIntegerField;
    qReativaRemessaVL_NOTA: TFMTBCDField;
    qReativaRemessaVL_POR_FORA: TFMTBCDField;
    qReativaRemessaVL_TOTAL_NF: TFMTBCDField;
    qReativaRemessaID_FORN_TINT: TIntegerField;
    qReativaRemessaNR_NF_REMESSA: TIntegerField;
    qReativaRemessaTOTAL_ROLOS: TIntegerField;
    qReativaRemessaNF_QUEBRA: TStringField;
    qReativaRemessaCLIENTE: TStringField;
    qReativaRemessaFORNECEDOR: TStringField;
    qReativaRemessaNOME_MALHARIA: TStringField;
    qReativaRemessaTITURARIA: TStringField;
    cdsReativaRemessaID_REMESSA: TIntegerField;
    cdsReativaRemessaID_FOR_REMESSA: TIntegerField;
    cdsReativaRemessaSTATUS: TStringField;
    cdsReativaRemessaQUANT_NF: TFMTBCDField;
    cdsReativaRemessaQUANT_FATURADO: TFMTBCDField;
    cdsReativaRemessaQUANT_SALDO: TFMTBCDField;
    cdsReativaRemessaID_CLIENTE: TIntegerField;
    cdsReativaRemessaID_FORNECEDOR: TIntegerField;
    cdsReativaRemessaDT_EMISSAO: TDateField;
    cdsReativaRemessaNR_NOTA_FISCAL: TIntegerField;
    cdsReativaRemessaVL_NOTA: TFMTBCDField;
    cdsReativaRemessaVL_POR_FORA: TFMTBCDField;
    cdsReativaRemessaVL_TOTAL_NF: TFMTBCDField;
    cdsReativaRemessaID_FORN_TINT: TIntegerField;
    cdsReativaRemessaNR_NF_REMESSA: TIntegerField;
    cdsReativaRemessaTOTAL_ROLOS: TIntegerField;
    cdsReativaRemessaNF_QUEBRA: TStringField;
    cdsReativaRemessaCLIENTE: TStringField;
    cdsReativaRemessaFORNECEDOR: TStringField;
    cdsReativaRemessaNOME_MALHARIA: TStringField;
    cdsReativaRemessaTITURARIA: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit16: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    qItemProducaoID_ITEM_REMESSA: TIntegerField;
    qItemProducaoID_REMESSA: TIntegerField;
    qItemProducaoID_ARTIGO: TIntegerField;
    qItemProducaoQUANT_FATURADO: TFMTBCDField;
    qItemProducaoVL_UNIT: TFMTBCDField;
    qItemProducaoVL_TOTAL: TFMTBCDField;
    qItemProducaoID_CLIENTE: TIntegerField;
    qItemProducaoID_FORNECEDOR: TIntegerField;
    qItemProducaoID_MATERIA: TIntegerField;
    qItemProducaoID_FORN_MALHARIA: TIntegerField;
    qItemProducaoNR_NOTA_FISCAL: TIntegerField;
    qItemProducaoNR_NF_REMESSA: TIntegerField;
    qItemProducaoID_PRODUCAO: TIntegerField;
    qItemProducaoVL_UNIT_REAL: TFMTBCDField;
    qItemProducaoVL_TOTAL_REAL: TFMTBCDField;
    qItemProducaoQT_ROLOS: TIntegerField;
    qItemProducaoNOME_ARTIGO: TStringField;
    qItemProducaoR_SOCIAL: TStringField;
    qItemProducaoFORNECEDOR: TStringField;
    qItemProducaoMALHARIA: TStringField;
    qItemProducaoNOME_MATERIA: TStringField;
    cdsItemProducaoID_ITEM_REMESSA: TIntegerField;
    cdsItemProducaoID_REMESSA: TIntegerField;
    cdsItemProducaoID_ARTIGO: TIntegerField;
    cdsItemProducaoQUANT_FATURADO: TFMTBCDField;
    cdsItemProducaoVL_UNIT: TFMTBCDField;
    cdsItemProducaoVL_TOTAL: TFMTBCDField;
    cdsItemProducaoID_CLIENTE: TIntegerField;
    cdsItemProducaoID_FORNECEDOR: TIntegerField;
    cdsItemProducaoID_MATERIA: TIntegerField;
    cdsItemProducaoID_FORN_MALHARIA: TIntegerField;
    cdsItemProducaoNR_NOTA_FISCAL: TIntegerField;
    cdsItemProducaoNR_NF_REMESSA: TIntegerField;
    cdsItemProducaoID_PRODUCAO: TIntegerField;
    cdsItemProducaoVL_UNIT_REAL: TFMTBCDField;
    cdsItemProducaoVL_TOTAL_REAL: TFMTBCDField;
    cdsItemProducaoQT_ROLOS: TIntegerField;
    cdsItemProducaoNOME_ARTIGO: TStringField;
    cdsItemProducaoR_SOCIAL: TStringField;
    cdsItemProducaoFORNECEDOR: TStringField;
    cdsItemProducaoMALHARIA: TStringField;
    cdsItemProducaoNOME_MATERIA: TStringField;
    DBGrid2: TDBGrid;
    SpeedButton1: TSpeedButton;
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
  frmReativaRemessa: TfrmReativaRemessa;

implementation

{$R *.dfm}

uses U_LIB, uDM;

procedure TfrmReativaRemessa.BB_PESQUISARClick(Sender: TObject);
Var
 sSql : string;
begin

  sSql := ' SELECT RP.ID_REMESSA, RP.ID_FOR_REMESSA, RP.STATUS, RP.QUANT_NF, RP.QUANT_FATURADO, RP.QUANT_SALDO,  '+
          ' RP.ID_CLIENTE, RP.ID_FORNECEDOR, RP.DT_EMISSAO, RP.NR_NOTA_FISCAL, RP.VL_NOTA, RP.VL_POR_FORA,         '+
          ' RP.VL_TOTAL_NF, RP.ID_FORN_TINT, RP.NR_NF_REMESSA, RP.TOTAL_ROLOS, RP.NF_QUEBRA, C.R_SOCIAL AS CLIENTE,'+
          ' F.NOME AS FORNECEDOR, FF.NOME AS NOME_MALHARIA, FT.NOME AS TITURARIA                                   '+
          ' FROM TB_REMESSA_PRODUCAO RP                                                                            '+
          ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FORNECEDOR)                                '+
          ' JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = RP.ID_FOR_REMESSA)                                        '+
          ' JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = RP.ID_FORN_TINT)                                          '+
          ' JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)                                                    '+
          ' WHERE RP.NF_QUEBRA = ''N''                                                                             '+
          ' AND RP.status = ''F''                                                                                  ';
  if edtPesquisa.Text <> '' then
  begin
    cdsReativaRemessa.Close;
    cdsReativaRemessa.CommandText := sSql+' AND RP.nr_nota_fiscal = '+QuotedStr(edtPesquisa.Text);
    cdsReativaRemessa.Open;

    if cdsReativaRemessa.IsEmpty then
    begin
      ShowMessage('Nota Fiscal N�o Encontrada');
      cdsReativaRemessa.Close;
      cdsReativaRemessa.CommandText:=sSql;
      cdsReativaRemessa.Open;

      Pesquisa(cdsReativaRemessa,['NR_NOTA_FISCAL','TITURARIA'],['N� Nota Fiscal','Tinturaria'],[16,40],'','','','','Reativar Nota','Reativar Nota');
      edtPesquisa.Text := cdsReativaRemessaNR_NOTA_FISCAL.AsString;
      cdsItemProducao.Close;
      cdsItemProducao.Params[0].AsInteger := cdsReativaRemessaID_REMESSA.AsInteger;
      cdsItemProducao.Open;
      SB_REATIVAR.Enabled := True;
    end
    else
    begin
     cdsItemProducao.Close;
     cdsItemProducao.Params[0].AsInteger := cdsReativaRemessaID_REMESSA.AsInteger;
     cdsItemProducao.Open;
     SB_REATIVAR.Enabled := True;
    end;
  end;
end;

procedure TfrmReativaRemessa.edtPesquisaExit(Sender: TObject);
begin
  if edtPesquisa.Text <>'' then
  begin
    BB_PESQUISAR.SetFocus;
  end;
end;

procedure TfrmReativaRemessa.edtPesquisaKeyPress(Sender: TObject;
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

procedure TfrmReativaRemessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmReativaRemessa := NIL;
end;

procedure TfrmReativaRemessa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmReativaRemessa.FormShow(Sender: TObject);
begin
  edtPesquisa.SetFocus;
end;

procedure TfrmReativaRemessa.SB_REATIVARClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Reativar Nota?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = idyes then
  begin
    cdsReativaRemessa.Edit;
    cdsReativaRemessaSTATUS.Value := 'A';
    cdsReativaRemessa.ApplyUpdates(0);

    ShowMessage(' Nota Fiscal Reativada!');
    cdsReativaRemessa.Close;
    edtPesquisa.Clear;
    edtPesquisa.SetFocus;

  end;

end;

procedure TfrmReativaRemessa.SpeedButton1Click(Sender: TObject);
Var
 sSql : string;
begin

  sSql := ' SELECT RP.ID_REMESSA, RP.ID_FOR_REMESSA, RP.STATUS, RP.QUANT_NF, RP.QUANT_FATURADO, RP.QUANT_SALDO,  '+
          ' RP.ID_CLIENTE, RP.ID_FORNECEDOR, RP.DT_EMISSAO, RP.NR_NOTA_FISCAL, RP.VL_NOTA, RP.VL_POR_FORA,         '+
          ' RP.VL_TOTAL_NF, RP.ID_FORN_TINT, RP.NR_NF_REMESSA, RP.TOTAL_ROLOS, RP.NF_QUEBRA, C.R_SOCIAL AS CLIENTE,'+
          ' F.NOME AS FORNECEDOR, FF.NOME AS NOME_MALHARIA, FT.NOME AS TITURARIA                                   '+
          ' FROM TB_REMESSA_PRODUCAO RP                                                                            '+
          ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FORNECEDOR)                                '+
          ' JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = RP.ID_FOR_REMESSA)                                        '+
          ' JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = RP.ID_FORN_TINT)                                          '+
          ' JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)                                                    '+
          ' WHERE RP.NF_QUEBRA = ''N''                                                                             '+
          ' AND RP.status = ''F''                                                                                  ';
      cdsReativaRemessa.Close;
      cdsReativaRemessa.CommandText:=sSql;
      cdsReativaRemessa.Open;

      Pesquisa(cdsReativaRemessa,['NR_NOTA_FISCAL','TITURARIA'],['N� Nota Fiscal','Tinturaria'],[16,40],'','','','','Reativar Nota','Reativar Nota');
      edtPesquisa.Text := cdsReativaRemessaNR_NOTA_FISCAL.AsString;
      cdsItemProducao.Close;
      cdsItemProducao.Params[0].AsInteger := cdsReativaRemessaID_REMESSA.AsInteger;
      cdsItemProducao.Open;
      SB_REATIVAR.Enabled := True;
end;

procedure TfrmReativaRemessa.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.