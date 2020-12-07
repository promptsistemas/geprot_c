unit uConsultaEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, StdCtrls,
  Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TfrmConsultaEstoque = class(TForm)
    dspConsultaEstoque: TDataSetProvider;
    cdsConsultaEstoque: TClientDataSet;
    dsConsultaEstoque: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    BitBtn1: TBitBtn;
    qConsultaEstoque: TSQLQuery;
    qConsultaEstoqueGRUPO: TStringField;
    qConsultaEstoqueCODIGO: TStringField;
    qConsultaEstoqueCD_BARRA: TStringField;
    qConsultaEstoqueDESCRICAO: TStringField;
    qConsultaEstoqueUNIDADE: TStringField;
    qConsultaEstoqueEMBALGEM: TStringField;
    qConsultaEstoqueESTOQUE: TFMTBCDField;
    qConsultaEstoqueVL_CUSTO: TFMTBCDField;
    qConsultaEstoqueENTRADA: TFMTBCDField;
    qConsultaEstoqueSAIDAS: TFMTBCDField;
    qConsultaEstoqueTOTAL: TFMTBCDField;
    cdsConsultaEstoqueGRUPO: TStringField;
    cdsConsultaEstoqueCODIGO: TStringField;
    cdsConsultaEstoqueCD_BARRA: TStringField;
    cdsConsultaEstoqueDESCRICAO: TStringField;
    cdsConsultaEstoqueUNIDADE: TStringField;
    cdsConsultaEstoqueEMBALGEM: TStringField;
    cdsConsultaEstoqueESTOQUE: TFMTBCDField;
    cdsConsultaEstoqueVL_CUSTO: TFMTBCDField;
    cdsConsultaEstoqueENTRADA: TFMTBCDField;
    cdsConsultaEstoqueSAIDAS: TFMTBCDField;
    cdsConsultaEstoqueTOTAL: TFMTBCDField;
    BB_PESQUISAR: TBitBtn;
    P_PESQUISA: TPanel;
    Label12: TLabel;
    DBGrid1: TDBGrid;
    BB_OK: TBitBtn;
    edtProduto: TEdit;
    BB_CANCELAR: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_OKClick(Sender: TObject);
    procedure edtProdutoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtProdutoExit(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BB_PESQUISARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaEstoque: TfrmConsultaEstoque;

implementation

uses U_LIB, UD_PESQUISA, uDM;

{$R *.dfm}

procedure TfrmConsultaEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmConsultaEstoque := nil;
end;

procedure TfrmConsultaEstoque.BB_OKClick(Sender: TObject);
begin
 P_PESQUISA.Visible := False;
end;

procedure TfrmConsultaEstoque.edtProdutoChange(Sender: TObject);
var
 sSql : String;
begin
  if edtProduto.Text <> '' then
  begin
    sSql := ' SELECT GP.DESCRICAO AS GRUPO, p.CODIGO, p.CD_BARRA, p.DESCRICAO, P.UNIDADE, P.EMBALGEM, P.ESTOQUE, P.VL_CUSTO,'+
            ' (select SUM(N.QUANTIDADE) FROM TB_ITEM_ENTRADA_NF N WHERE N.ID_GRUPO_PRODUTO = P.ID_GRUPO_PRODUTO AND N.ID_PRODUTO = P.ID_PRODUTO) AS ENTRADA,'+
            ' (select SUM(N.QUANTIDADE) FROM TB_ITEM_ENTRADA_NF N WHERE N.ID_GRUPO_PRODUTO = P.ID_GRUPO_PRODUTO AND N.ID_PRODUTO = P.ID_PRODUTO) - P.ESTOQUE  AS SAIDAS,'+
            ' P.ESTOQUE * P.VL_CUSTO AS TOTAL'+
            ' FROM TB_PRODUTO P'+
            ' LEFT OUTER JOIN TB_GRUPO_PRODUTO GP ON (GP.ID_GRUPO_PRODUTO = P.ID_GRUPO_PRODUTO)'+
            ' WHERE P.DESCRICAO LIKE '+QuotedStr(edtProduto.Text+'%')+
            ' ORDER BY P.DESCRICAO';
    cdsConsultaEstoque.Close;
    cdsConsultaEstoque.CommandText := sSql;
    cdsConsultaEstoque.Open;
    P_PESQUISA.Visible := True;
  end
  else
  begin
  end;
end;

procedure TfrmConsultaEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmConsultaEstoque.edtProdutoExit(Sender: TObject);
begin
  BB_OK.SetFocus; 
end;

procedure TfrmConsultaEstoque.BB_CANCELARClick(Sender: TObject);
begin
  P_PESQUISA.Visible := False;
end;

procedure TfrmConsultaEstoque.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsultaEstoque.BB_PESQUISARClick(Sender: TObject);
begin
  cdsConsultaEstoque.Close;
  P_PESQUISA.Visible := True;
  edtProduto.Clear;
  edtProduto.SetFocus;

end;

procedure TfrmConsultaEstoque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui é definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui é definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

end.
