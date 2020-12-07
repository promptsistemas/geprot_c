unit uEntradaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  ComCtrls, Mask, DBCtrls,db,FMTBcd, SqlExpr,
  DBClient, Provider;

type
  TfrmEntradaProduto = class(TForm)
    P_ENTRADA: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    DBEdit26: TDBEdit;
    Label26: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    P_PRODUTO: TPanel;
    Label22: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    SpeedButton5: TSpeedButton;
    Label30: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    P_ULT_PRODUTO: TPanel;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Label34: TLabel;
    sqlMovEstoqueDincash: TSQLDataSet;
    dsplMovEstoqueDincash: TDataSetProvider;
    cdslMovEstoqueDincash: TClientDataSet;
    dslMovEstoqueDincash: TDataSource;
    sqlItemEstoqueDincash: TSQLDataSet;
    dspItemEstoqueDincash: TDataSetProvider;
    cdsItemEstoqueDincash: TClientDataSet;
    dsItemEstoqueDincash: TDataSource;
    sqlValidacaoDTO: TSQLDataSet;
    dspValidacaoDTO: TDataSetProvider;
    cdsValidacaoDTO: TClientDataSet;
    dsValidacaoDTO: TDataSource;
    spInsertEstoqueDincash: TSQLStoredProc;
    dspInsertEstoqueDincash: TDataSetProvider;
    cdsInsertEstoqueDincash: TClientDataSet;
    dsInsertEstoqueDincash: TDataSource;
    DBEdit27: TDBEdit;
    Edit2: TEdit;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    TabSheet4: TTabSheet;
    DBEdit17: TDBEdit;
    Label6: TLabel;
    GB_VALORES: TGroupBox;
    Label36: TLabel;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Shape8: TShape;
    DBEdit40: TDBEdit;
    Label44: TLabel;
    DBNavigator2: TDBNavigator;
    Panel1: TPanel;
    BB_NOVO: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_SAIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    Panel2: TPanel;
    BB_INCLUIR: TBitBtn;
    BB_SALVAR: TBitBtn;
    BB_EXC: TBitBtn;
    BB_CANC: TBitBtn;
    BB_ALTERAR: TBitBtn;
    BB_COBRANCA: TBitBtn;
    BB_FINALIZAR: TBitBtn;
    BB_VALORES: TBitBtn;
    BB_CONFIRMA_CALCULOS: TBitBtn;
    BB_CANCELA_CALCULOS: TBitBtn;
    sqlMovEstoqueDincashMOVIMENTACAOESTOQUEDTO_ID: TLargeintField;
    sqlMovEstoqueDincashCODLOJA: TFloatField;
    sqlMovEstoqueDincashDATAOPER: TStringField;
    sqlMovEstoqueDincashDOCRETAG: TStringField;
    sqlMovEstoqueDincashID: TStringField;
    sqlMovEstoqueDincashNUMDOC: TStringField;
    sqlMovEstoqueDincashOBSERVA: TStringField;
    sqlMovEstoqueDincashSITREG: TStringField;
    sqlMovEstoqueDincashTIPDOC: TStringField;
    sqlMovEstoqueDincashTIPOPER: TStringField;
    sqlMovEstoqueDincashTOT_ITEM: TFloatField;
    cdslMovEstoqueDincashMOVIMENTACAOESTOQUEDTO_ID: TLargeintField;
    cdslMovEstoqueDincashCODLOJA: TFloatField;
    cdslMovEstoqueDincashDATAOPER: TStringField;
    cdslMovEstoqueDincashDOCRETAG: TStringField;
    cdslMovEstoqueDincashID: TStringField;
    cdslMovEstoqueDincashNUMDOC: TStringField;
    cdslMovEstoqueDincashOBSERVA: TStringField;
    cdslMovEstoqueDincashSITREG: TStringField;
    cdslMovEstoqueDincashTIPDOC: TStringField;
    cdslMovEstoqueDincashTIPOPER: TStringField;
    cdslMovEstoqueDincashTOT_ITEM: TFloatField;
    sqlItemEstoqueDincashITEMESTOQUEDTO_ID: TLargeintField;
    sqlItemEstoqueDincashCODLOJA: TFloatField;
    sqlItemEstoqueDincashCODRETAG: TStringField;
    sqlItemEstoqueDincashDOCRETAG: TStringField;
    sqlItemEstoqueDincashID: TStringField;
    sqlItemEstoqueDincashPCOPROD: TFloatField;
    sqlItemEstoqueDincashQTDEMBAL: TFloatField;
    sqlItemEstoqueDincashQTDPROD: TFloatField;
    sqlItemEstoqueDincashUNIDMEDI: TStringField;
    sqlItemEstoqueDincashUNIDREFE: TStringField;
    cdsItemEstoqueDincashITEMESTOQUEDTO_ID: TLargeintField;
    cdsItemEstoqueDincashCODLOJA: TFloatField;
    cdsItemEstoqueDincashCODRETAG: TStringField;
    cdsItemEstoqueDincashDOCRETAG: TStringField;
    cdsItemEstoqueDincashID: TStringField;
    cdsItemEstoqueDincashPCOPROD: TFloatField;
    cdsItemEstoqueDincashQTDEMBAL: TFloatField;
    cdsItemEstoqueDincashQTDPROD: TFloatField;
    cdsItemEstoqueDincashUNIDMEDI: TStringField;
    cdsItemEstoqueDincashUNIDREFE: TStringField;
    sqlValidacaoDTOVALIDACAODTO_ID: TLargeintField;
    sqlValidacaoDTOCODLOJA: TFloatField;
    sqlValidacaoDTOID: TStringField;
    cdsValidacaoDTOVALIDACAODTO_ID: TLargeintField;
    cdsValidacaoDTOCODLOJA: TFloatField;
    cdsValidacaoDTOID: TStringField;
    BB_FECHAR: TBitBtn;
    LabelPiscanteSOUTO1: TLabel;
    DBEdit3: TDBEdit;
    eValorUnit: TDBEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BB_REPLICAR: TBitBtn;
    BB_CONCLUIR: TBitBtn;
    DBText1: TDBText;
    Label13: TLabel;
    P_REPLICAR: TPanel;
    Label14: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label15: TLabel;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DbText2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit26Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure eValorUnitExit(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure BB_INCLUIRClick(Sender: TObject);
    procedure BB_CANCClick(Sender: TObject);
    procedure BB_ALTERARClick(Sender: TObject);
    procedure BB_EXCClick(Sender: TObject);
    procedure BB_FINALIZARClick(Sender: TObject);
    procedure BB_SALVARClick(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBEdit17Enter(Sender: TObject);
    procedure BB_VALORESClick(Sender: TObject);
    procedure BB_CANCELA_CALCULOSClick(Sender: TObject);
    procedure BB_CONFIRMA_CALCULOSClick(Sender: TObject);
    procedure DBEdit38Enter(Sender: TObject);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure BB_CONCLUIRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BB_REPLICARClick(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure BB_COBRANCAClick(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure SomaTotal;
    Procedure VerificarNotaExiste;
  public
    { Public declarations }
  end;

var
  frmEntradaProduto: TfrmEntradaProduto;
  Tipo,Tp_Operacao : String;

implementation

uses uCadGrupo, uCadPro, UD_PESQUISA, uDM, U_LIB;

{$R *.dfm}

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
      if Temp_01 = ',' then
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


procedure TfrmEntradaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  DM.cdsEmpresa.Close;
  frmEntradaProduto := nil;
end;

procedure TfrmEntradaProduto.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsEntradaNF.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsEntradaNF.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_REPLICAR.Enabled := BB_EXCLUIR.Enabled;
  BB_CONCLUIR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  TabSheet1.Enabled := not BB_NOVO.Enabled;

end;

procedure TfrmEntradaProduto.FormShow(Sender: TObject);
begin
  P_ENTRADA.ActivePage := TabSheet1;
  DM.cdsEntradaNF.Close;
  DM.cdsEntradaNF.Open;

  DM.cdsItemEntrada.Close;
  DM.cdsItemEntrada.Params[0].AsInteger := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
  DM.cdsItemEntrada.Open;
  DM.cdsEmpresa.Close;
  DM.cdsEmpresa.Open;

  GerenciaBotoes;
  GerenciaBotoes2;

  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;


  DBGrid2.SetFocus;

end;

procedure TfrmEntradaProduto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmEntradaProduto.DBComboBox1Click(Sender: TObject);
begin
  DbText2.Caption := DM.cdsEmpresaID_LOJA.AsString;
end;

procedure TfrmEntradaProduto.DBComboBox1Exit(Sender: TObject);
begin
  DbText2.Caption := DM.cdsEmpresaID_LOJA.AsString;
end;

procedure TfrmEntradaProduto.DBEdit10Enter(Sender: TObject);
begin
  DM.cdsCfop.Close;
  DM.cdsCfop.Open;
  Pesquisa(DM.cdsCfop,['CFCOD','CFNOME'],['CFOP','Natureza da Opera��o'],[6,40],'','','','','CFOP','CFOP');
  DM.cdsEntradaNFCFOP.AsInteger         := DM.cdsCfopCFCOD.AsInteger;
  DM.cdsEntradaNFDES_CFOP.AsString      := DM.cdsCfopCFNOME.AsString;
  DBEdit26.SetFocus;
end;

procedure TfrmEntradaProduto.DBEdit26Enter(Sender: TObject);
begin
  DM.cdsFornecedor.Close;
  DM.cdsFornecedor.Open;
  Pesquisa(DM.cdsFornecedor,['NOME','ID_FORNECEDOR'],['Nome do Fornecedor','C�digo'],[40,4],'','','','','Fornecedor','Fornecedor');

  DM.cdsEntradaNFID_FORNECEDOR.AsInteger                   := DM.cdsFornecedorID_FORNECEDOR.AsInteger;
  DM.cdsEntradaNFNOME.AsString                             := DM.cdsFornecedorNOME.AsString;
  DM.cdsEntradaNFINS_EST.AsString                          := DM.cdsFornecedorINS_EST.AsString;
  DM.cdsEntradaNFINSC.AsString                             := TiraPontoeVirgula(DM.cdsFornecedorINS_EST.AsString);
  DM.cdsEntradaNFCNPJ.AsString                             := TiraPontoeVirgula(DM.cdsFornecedorCNPJ.AsString);
  DM.cdsEntradaNFCNPJ_1.AsString                           := DM.cdsFornecedorCNPJ.AsString;
  DM.cdsEntradaNFUF.AsString                               := DM.cdsFornecedorUF.AsString;
  DM.cdsEntradaNFUF_1.AsString                             := DM.cdsFornecedorUF.AsString;
  DM.cdsEntradaNFCIDADE.AsString                           := DM.cdsFornecedorCIDADE.AsString;
  VerificarNotaExiste;
end;

procedure TfrmEntradaProduto.DBEdit11Exit(Sender: TObject);
begin
  if (DM.cdsEntradaNFEMITENTE.AsString <> 'P') AND ( DM.cdsEntradaNFEMITENTE.AsString <> 'T')   then
  begin
    ShowMessage('Informe "P - Proprio " ou "T - Terceiros "');
    DBEdit11.SetFocus;
    EXIT;
  end;

end;

procedure TfrmEntradaProduto.DBEdit18Exit(Sender: TObject);
begin
  if (DM.cdsEntradaNFSITUACAO.AsString <> 'N') AND ( DM.cdsEntradaNFSITUACAO.AsString <> 'S')   then
  begin
    ShowMessage('Informe "N - Normal " ou "S - Cancelada"');
    DBEdit18.SetFocus;
    EXIT;
  end
  else
  begin
    if DBEdit8.Text = '' then
    begin
     ShowMessage('Campo   '+Label8.Caption +'  N�o pode ser Nulo');
     DBEdit8.SetFocus;
     exit;
    end;

    if DBEdit7.Text = '' then
    begin
     ShowMessage('Campo   '+Label7.Caption +'   N�o pode ser Nulo');
     DBEdit7.SetFocus;
     exit;
    end;
    if Application.MessageBox('Confirma Informa��es?','Aten��o!!!!',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      BB_GRAVARClick(Self);
      BB_INCLUIRClick(Self);
    end;
  end;

end;

procedure TfrmEntradaProduto.GerenciaBotoes2;
begin
  BB_INCLUIR.Enabled       := not (DM.cdsItemEntrada.State in dsEditModes);
  BB_SALVAR.Enabled        := NOT BB_INCLUIR.Enabled;
  BB_EXC.Enabled           := BB_INCLUIR.Enabled and not (DM.cdsItemEntrada.IsEmpty);
  BB_CANC.Enabled          := BB_SALVAR.Enabled;
  BB_ALTERAR.Enabled       := BB_EXC.Enabled;
  BB_FECHAR.Enabled        := BB_INCLUIR.Enabled;
  BB_FINALIZAR.Enabled     := BB_INCLUIR.Enabled;
  BB_VALORES.Enabled       := BB_INCLUIR.Enabled;
  BB_COBRANCA.Enabled       := BB_INCLUIR.Enabled;
  P_PRODUTO.Enabled        := not BB_INCLUIR.Enabled;
end;

procedure TfrmEntradaProduto.DBEdit2Exit(Sender: TObject);
begin
  DM.cdsProduto.Open;
  if DBEdit2.Text = '' Then
  begin
    BB_CANC.SetFocus;
    exit;
  end;
  if DM.cdsProduto.Locate('CODIGO',DM.cdsItemEntradaCODIGO.AsString,[]) then
  begin
    DM.cdsItemEntradaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsItemEntradaID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsItemEntradaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    DM.cdsItemEntradaCODIGO.AsString             := DM.cdsProdutoCODIGO.AsString;
    DM.cdsItemEntradaCODIGO_PRODUTO.AsString     := DM.cdsProdutoCODIGO.AsString;
    DM.cdsItemEntradaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    //LOCALIZAR ITEM
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(I.ITEM) FROM TB_ITEM_ENTRADA_NF I '+
                                    ' WHERE I.ID_ENTRADA_NF = '+DM.cdsEntradaNFID_ENTRADA_NF.AsString;
      DM.cdsDinamica.Open;



    DM.cdsItemEntradaITEM.AsInteger              := DM.cdsDinamica.Fields[0].AsInteger+1;
    DM.cdsDinamica.Close;
    LabelPiscanteSOUTO1.Caption                  := DM.cdsProdutoDESCRICAO.AsString;

    DBEdit3.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   C�digo N�o Encontrado             '+#13+
                '                                     ');
    SpeedButton5Click(Self);
  end;

end;

procedure TfrmEntradaProduto.SpeedButton5Click(Sender: TObject);
begin
  DM.cdsProduto.Open;
   Pesquisa(DM.cdsProduto,['DESCRICAO','CODIGO','CD_BARRA'],
                          ['','',''],[35,13,10],'','0','','Produto','Produto','Produto');
//  Begin
    DM.cdsItemEntradaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsItemEntradaID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsItemEntradaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    DM.cdsItemEntradaCODIGO.AsString             := DM.cdsProdutoCODIGO.AsString;
    DM.cdsItemEntradaCODIGO_PRODUTO.AsString     := DM.cdsProdutoCODIGO.AsString;
    Edit2.Text                                   := DM.cdsProdutoCODIGO.AsString;
    DM.cdsItemEntradaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    //LOCALIZAR ITEM
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(I.ITEM) FROM TB_ITEM_ENTRADA_NF I '+
                                    ' WHERE I.ID_ENTRADA_NF = '+DM.cdsEntradaNFID_ENTRADA_NF.AsString;
      DM.cdsDinamica.Open;



    DM.cdsItemEntradaITEM.AsInteger              := DM.cdsDinamica.Fields[0].AsInteger+1;
    DM.cdsDinamica.Close;
    LabelPiscanteSOUTO1.Caption                  := DM.cdsProdutoDESCRICAO.AsString;
    DBEdit17.SetFocus;
//  end;

end;

procedure TfrmEntradaProduto.VerificarNotaExiste;
VAR
  nrNota,sSql : string;
  idForn, idLoja : Integer;
begin
  nrNota := DM.cdsEntradaNFNUM_NOTA.AsString;
  idForn := DM.cdsEntradaNFID_FORNECEDOR.AsInteger;
  idLoja := DM.cdsEntradaNFID_LOJA.AsInteger;

  sSql := ' SELECT NE.NUM_NOTA, NE.ID_LOJA, NE.ID_FORNECEDOR FROM TB_ENTRADA_NF NE '+
          ' WHERE NE.NUM_NOTA = '+QuotedStr(nrNota)+
          ' AND NE.ID_FORNECEDOR = '+IntToStr(idForn)+
          ' AND NE.ID_LOJA = '+IntToStr(idLoja);

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := sSql;
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    DBEdit11.SetFocus;
  end
  else
  begin
    ShowMessage('J� Existe uma Nota Fiscal de Mesma Numera��o Lan�ada do Mesmo Fornecedor Para a Esta Loja.');
    BB_CANCELARClick(Self);
  end;
end;

procedure TfrmEntradaProduto.DBEdit2KeyPress(Sender: TObject;
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
    SpeedButton5Click(self);
  end;
end;

procedure TfrmEntradaProduto.DBEdit30Exit(Sender: TObject);
begin
{  if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
  begin
    BB_SALVARClick(Self);
  end
  else
  begin
    ShowMessage('Registro n�o salvo');
    BB_CANCClick(Self);
  end;}
end;

procedure TfrmEntradaProduto.DBEdit29Exit(Sender: TObject);
begin
  if DM.cdsItemEntradaVALOR_DESC.IsNull then
     DM.cdsItemEntradaVALOR_DESC.AsFloat := 0;


  if tp_operacao = 'Insert' then
  begin
    if Application.MessageBox('Deseja Salvar este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO)=IDYES then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText :=' SELECT MAX(ID_ITEM_ENTRADA_NF) FROM TB_ITEM_ENTRADA_NF ';
      DM.cdsDinamica.Open;
      DM.cdsItemEntradaID_ITEM_ENTRADA_NF.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
      BB_SALVARClick(Self);
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
      DM.cdsItemEntrada.ApplyUpdates(0);
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

procedure TfrmEntradaProduto.DBEdit27Exit(Sender: TObject);
begin
  if not (DM.cdsItemEntradaQUANTIDADE.IsNull) then
  begin
    DM.cdsItemEntradaVALOR_TOTAL.AsFloat :=
        (DM.cdsItemEntradaQUANTIDADE.AsFloat * DM.cdsItemEntradaVALOR_UNI.AsFloat);
  end;
end;

procedure TfrmEntradaProduto.DBEdit22Exit(Sender: TObject);
begin
  if DM.cdsItemEntradaALIQ_ICMS.IsNull then
     DM.cdsItemEntradaALIQ_ICMS.AsFloat := 0;


  if not (DM.cdsItemEntradaQUANTIDADE.IsNull) then
  begin
    DM.cdsItemEntradaBASE_CALC_ICMS.AsFloat :=
        (DM.cdsItemEntradaQUANTIDADE.AsFloat * DM.cdsItemEntradaVALOR_UNI.AsFloat)*
         (DM.cdsItemEntradaALIQ_ICMS.AsFloat)/100;
  end;
end;

procedure TfrmEntradaProduto.DBEdit28Exit(Sender: TObject);
begin
  if DM.cdsItemEntradaALIQ_IPI.IsNull then
     DM.cdsItemEntradaALIQ_IPI.AsFloat := 0;

  if not (DM.cdsItemEntradaQUANTIDADE.IsNull) then
  begin
    DM.cdsItemEntradaVALOR_IPI.AsFloat :=
        (DM.cdsItemEntradaQUANTIDADE.AsFloat * DM.cdsItemEntradaVALOR_UNI.AsFloat)*
         (DM.cdsItemEntradaALIQ_IPI.AsFloat)/100;
  end;

end;

procedure TfrmEntradaProduto.SomaTotal;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := ' SELECT  SUM(NF.QUANTIDADE * NF.VALOR_UNI) AS VALOR_PRODUTO,'+
                                '         SUM(NF.VALOR_IPI) AS IPI,'+
                                '         SUM(NF.BASE_CALC_ICMS) ICMS,'+
                                '         SUM(NF.VALOR_DESC) AS DESCONTO,'+
                                '         SUM(NF.QUANTIDADE * NF.VALOR_UNI) + E.OUTROS_VALORES + SUM(NF.VALOR_IPI)- SUM(NF.VALOR_DESC) AS TOTAL_NOTA,'+
                                '         E.OUTROS_VALORES, '+
                                '         SUM(NF.VALOR_DESC)AS DESCONTOS, NF.ID_ENTRADA_NF'+
                                ' FROM TB_ITEM_ENTRADA_NF NF '+
                                ' LEFT OUTER JOIN TB_ENTRADA_NF E ON (E.ID_ENTRADA_NF = NF.ID_ENTRADA_NF)'+
                                ' WHERE NF.ID_ENTRADA_NF = '+DM.cdsEntradaNFID_ENTRADA_NF.AsString +
                                ' GROUP BY E.OUTROS_VALORES,NF.ID_ENTRADA_NF ';
  DM.cdsDinamica.Open;


  DM.cdsEntradaNF.Edit;
  DM.cdsEntradaNFVALOR_PRODUTOS.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsEntradaNFVALOR_IPI.AsFloat      := DM.cdsDinamica.Fields[1].AsFloat;
  DM.cdsEntradaNFVALOR_ICMS.AsFloat     := DM.cdsDinamica.Fields[2].AsFloat; ;
  DM.cdsEntradaNFVALOR_TOTAL.AsFloat    := DM.cdsDinamica.Fields[4].AsFloat;
  DM.cdsEntradaNFOUTROS_VALORES.AsFloat    := DM.cdsDinamica.Fields[5].AsFloat;
  DM.cdsEntradaNFVALOR_DESCONTO.AsFloat    := DM.cdsDinamica.Fields[6].AsFloat;
  DM.cdsEntradaNFBASE_CALCULO_ICMS.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsEntradaNFALIQ_ICMS.AsFloat         := DM.cdsItemEntradaALIQ_ICMS.AsFloat;
  DM.cdsEntradaNF.ApplyUpdates(0);

end;

procedure TfrmEntradaProduto.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsEntradaNF.IndexFieldNames <> '' then
    DBGrid1.Columns[DM.cdsProduto.FieldByName
    (DM.cdsEntradaNF.IndexFieldNames).Index].Title.Color :=
      DBGrid1.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsEntradaNF.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;

end;

procedure TfrmEntradaProduto.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  If DM.cdsEntradaNFEXPORTADO.AsString = 'N'  then // condi��o
  begin
   DBGrid1.Canvas.Font.Color:= clRed; // coloque aqui a cor desejada
    if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
      Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
      Font.Style := [fsBold];
      FillRect(Rect);
    end;
    TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
  end
  ELSE
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;
  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);



end;

procedure TfrmEntradaProduto.eValorUnitExit(Sender: TObject);
begin
  if not (DM.cdsItemEntradaQUANTIDADE.IsNull) then
  begin
    DM.cdsItemEntradaVALOR_TOTAL.AsFloat :=
        (DM.cdsItemEntradaQUANTIDADE.AsFloat * DM.cdsItemEntradaVALOR_UNI.AsFloat);
  end;

end;

procedure TfrmEntradaProduto.BB_NOVOClick(Sender: TObject);
begin
  P_ENTRADA.ActivePage := TabSheet1;
  Tipo := 'Insert';

  DM.cdsEntradaNF.Insert;
  DM.cdsEntradaNFTIPO.AsString := '50';
  DM.cdsEntradaNFEXPORTADO.Value := 'N';
  DM.cdsEntradaNFSITUACAO.Value := 'N';
  DM.cdsEntradaNFEMITENTE.AsString := 'T';
  DM.cdsEntradaNFVALOR_TOTAL.AsFloat := 0;
  DM.cdsEntradaNFVALOR_ICMS.AsFloat := 0;
  DM.cdsEntradaNFVALOR_ISENT_N_TRIBUTADO.AsFloat := 0;
  DM.cdsEntradaNFALIQ_ICMS.AsFloat := 0;
  DM.cdsEntradaNFBASE_CALCULO_ICMS.AsFloat := 0;
  DM.cdsEntradaNFOUTROS_VALORES.AsFloat := 0;
  DM.cdsEntradaNFVALOR_PRODUTOS.AsFloat := 0;
  DM.cdsEntradaNFVALOR_IPI.AsFloat := 0;
  DM.cdsEntradaNFSERIE.AsString :='1';
  DM.cdsEntradaNFMODELO.AsString :='55';

  GerenciaBotoes;
  DBLookupComboBox1.SetFocus;

end;

procedure TfrmEntradaProduto.BB_EDITARClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  P_ENTRADA.ActivePage := TabSheet1;
  Tipo := 'Edit';
  DM.cdsEntradaNF.Edit;
  GerenciaBotoes;
  DBLookupComboBox1.SetFocus;

end;

procedure TfrmEntradaProduto.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsEntradaNF.Cancel;
  GerenciaBotoes;
end;

procedure TfrmEntradaProduto.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText :=' SELECT MAX(ID_ENTRADA_NF) FROM TB_ENTRADA_NF';
    DM.cdsDinamica.Open;

    DM.cdsEntradaNFID_ENTRADA_NF.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;

    if DM.cdsEntradaNF.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsEntradaNF.DisableControls;
      DM.cdsEntradaNF.ApplyUpdates(0);
      DM.cdsEntradaNF.Refresh;
      DM.cdsEntradaNF.EnableControls;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    DM.cdsEntradaNFEXPORTADO.Value := 'N';
    if DM.cdsEntradaNF.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsEntradaNF.ApplyUpdates(0);
      DM.cdsItemEntrada.Refresh;
      GerenCiaBotoes;
    end;
  end;
end;

procedure TfrmEntradaProduto.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if Application.MessageBox('Deseja Excluir Este Registro ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsEntradaNF.Delete;
    DM.cdsEntradaNF.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Registro N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmEntradaProduto.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsEntradaNF,['R_SOCIAL_LOJA','NUM_NOTA','NOME','DATA_REC'],['Loja','N� Nota','Fornecdor','Data Rec'],
    [20,8,20,8],'','','','','Entrada Produto','Entrada Produto');

  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;
  GerenciaBotoes2;   

end;

procedure TfrmEntradaProduto.BB_REPLICARClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    if Application.MessageBox('Nota J� Finalizada, Deseja Realmente Replicar Esta Nota?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = idyes then
    begin
      P_REPLICAR.Visible := True;
      DBLookupComboBox2.SetFocus;
    end
    else
    begin
      Exit;
    end;
  end;
end;

procedure TfrmEntradaProduto.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEntradaProduto.BB_INCLUIRClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  Tp_Operacao := 'Insert';
  Edit2.Clear;

  if DM.cdsEntradaNF.RecordCount = 0 then
  begin
    ShowMessage('N�o Existe Notas Cadastradas para este Lan�amento.');
    exit;
    BB_CANCClick(Self);
  end;

  P_ULT_PRODUTO.Visible := True;
  DM.cdsItemEntrada.Append;
  DM.cdsItemEntradaID_ENTRADA_NF.AsInteger      := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
  DM.cdsItemEntradaID_FORNECEDOR.AsInteger      := DM.cdsEntradaNFID_FORNECEDOR.AsInteger;
  DM.cdsItemEntradaTIPO.AsString                := '54';
  DM.cdsItemEntradaCNPJ.AsString                := DM.cdsEntradaNFCNPJ.AsString;
  DM.cdsItemEntradaMODELO.AsString              := DM.cdsEntradaNFMODELO.AsString;
  DM.cdsItemEntradaSERIE.AsString               := DM.cdsEntradaNFSERIE.AsString;
  DM.cdsItemEntradaNUM_NOTA.AsString            := DM.cdsEntradaNFNUM_NOTA.AsString;
  DM.cdsItemEntradaCFOP_NOTA.AsString           := DM.cdsEntradaNFCFOP.AsString;
  DM.cdsItemEntradaID_FORNECEDOR.AsInteger      := DM.cdsEntradaNFID_FORNECEDOR.AsInteger;
  DM.cdsItemEntrada.Open;
  GerenciaBotoes2;
  Edit2.SetFocus;
end;

procedure TfrmEntradaProduto.BB_CANCClick(Sender: TObject);
begin
  P_ULT_PRODUTO.Visible := False;
  DM.cdsItemEntrada.Cancel;
  SomaTotal;
  GerenciaBotoes2;
  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;


  DBGrid2.SetFocus;
end;

procedure TfrmEntradaProduto.BB_ALTERARClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  tp_operacao := 'Edit';
  DM.cdsItemEntrada.Edit;
  GerenciaBotoes2;
  Edit2.SetFocus;

end;

procedure TfrmEntradaProduto.BB_EXCClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if Application.MessageBox('Deseja Realmente Excluir. S/N ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = IDYES Then
  begin
    DM.cdsItemEntrada.Delete;
    DM.cdsItemEntrada.ApplyUpdates(0);
    DM.cdsItemEntrada.Refresh;
    SomaTotal;
  End
  else
  begin
    ShowMessage('Registro n�o Exclu�do');
    GerenciaBotoes2;
  end;
  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;

end;

procedure TfrmEntradaProduto.BB_FINALIZARClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.Value ='S' then
  begin
    if Application.MessageBox('Registro J� Exportado, Deseja Exportar Novamente?','Confirma��o!!!',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      cdslMovEstoqueDincash.Close;
      cdslMovEstoqueDincash.Open;
      cdsItemEstoqueDincash.Close;
      cdsItemEstoqueDincash.Open;
      cdsValidacaoDTO.Close;
      cdsValidacaoDTO.Open;
      cdsInsertEstoqueDincash.Params[0].AsString := DM.cdsEntradaNFNUM_NOTA.AsString;
      cdsInsertEstoqueDincash.Params[1].AsInteger := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
      cdsInsertEstoqueDincash.Execute;

      ShowMessage('Estoque Exportado Com Sucesso');

      cdslMovEstoqueDincash.Close;
      cdsItemEstoqueDincash.Close;
      cdsValidacaoDTO.Close;

      DM.cdsEntradaNF.Edit;
      DM.cdsEntradaNFEXPORTADO.AsString := 'S';
      DM.cdsEntradaNF.ApplyUpdates(0);
      DM.cdsEntradaNF.Refresh;
//      ShowMessage('Lan�amento Finalizado com Sucesso');

//      DM.cdsEntradaNF.Close;
//      DM.cdsEntradaNF.Open;

      DM.cdsItemEntrada.Close;
      DM.cdsItemEntrada.Params[0].AsInteger := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
      DM.cdsItemEntrada.Open;
    end
    else
    begin
       ShowMessage('Exporta��o Cancelada.');
    end;
  end
  else
  begin
    cdslMovEstoqueDincash.Close;
    cdslMovEstoqueDincash.Open;
    cdsItemEstoqueDincash.Close;
    cdsItemEstoqueDincash.Open;
    cdsValidacaoDTO.Close;
    cdsValidacaoDTO.Open;
    cdsInsertEstoqueDincash.Params[0].AsString := DM.cdsEntradaNFNUM_NOTA.AsString;
    cdsInsertEstoqueDincash.Params[1].AsInteger := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
    cdsInsertEstoqueDincash.Execute;

    ShowMessage('Estoque Exportado Com Sucesso');

    cdslMovEstoqueDincash.Close;
    cdsItemEstoqueDincash.Close;
    cdsValidacaoDTO.Close;

    DM.cdsEntradaNF.Edit;
    DM.cdsEntradaNFEXPORTADO.AsString := 'S';
    DM.cdsEntradaNF.ApplyUpdates(0);
    DM.cdsEntradaNF.Refresh;


{    DM.cdsEntradaNF.Close;
    DM.cdsEntradaNF.Open;
    DM.cdsEntradaNF.Edit;
    DM.cdsEntradaNFEXPORTADO.Value := 'S';
    if DM.cdsEntradaNF.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    end
    else
    begin
      DM.cdsEntradaNF.ApplyUpdates(0);
      GerenCiaBotoes;
    end;}
    DM.cdsItemEntrada.Close;
    DM.cdsItemEntrada.Params[0].AsInteger := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
    DM.cdsItemEntrada.Open;
  end;

end;

procedure TfrmEntradaProduto.BB_SALVARClick(Sender: TObject);
begin
  if eValorUnit.Text = '' then
  begin
    ShowMessage('Informe o Valor Unit�rio');
    eValorUnit.SetFocus;
    Exit;
  end;


  if DBEdit3.Text = '' then
  begin
    ShowMessage('Campo "Quant." n�o pode ser Vazio ');
    DBEdit3.SetFocus;
    Exit;
  end;

   if DM.cdsItemEntrada.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    end
    else
    begin
      DM.cdsItemEntrada.ApplyUpdates(0);
 //     DM.cdsItemEntrada.Refresh;
//      DM.cdsItemEntrada.Close;
//      DM.cdsItemEntrada.Params[0].AsInteger := DM.cdsEntradaNFID_ENTRADA_NF.AsInteger;
//      DM.cdsItemEntrada.Open;
      Edit2.Clear;
      SomaTotal;
      GerenciaBotoes2;
      BB_INCLUIRClick(Self);
    end;
end;

procedure TfrmEntradaProduto.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text = '' Then
  begin
//    BB_CANC.SetFocus;
    exit;
  end;
  DM.cdsProduto.Open;
  if DM.cdsProduto.Locate('CODIGO',Edit2.Text,[]) or DM.cdsProduto.Locate('REFERENCIA',Edit2.Text,[]) or DM.cdsProduto.Locate('CD_BARRA',Edit2.Text,[]) then
  begin
    DM.cdsItemEntradaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
    DM.cdsItemEntradaID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
    DM.cdsItemEntradaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
    DM.cdsItemEntradaCODIGO.AsString             := DM.cdsProdutoCODIGO.AsString;
    DM.cdsItemEntradaCODIGO_PRODUTO.AsString     := DM.cdsProdutoREFERENCIA.AsString;
    Edit2.Text                                   := DM.cdsProdutoREFERENCIA.AsString;
    DM.cdsItemEntradaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
    //LOCALIZAR ITEM
    if Tp_Operacao = 'Insert' then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MAX(I.ITEM) FROM TB_ITEM_ENTRADA_NF I '+
                                    ' WHERE I.ID_ENTRADA_NF = '+DM.cdsEntradaNFID_ENTRADA_NF.AsString;
      DM.cdsDinamica.Open;



      DM.cdsItemEntradaITEM.AsInteger              := DM.cdsDinamica.Fields[0].AsInteger+1;
      DM.cdsDinamica.Close;
    end;
    LabelPiscanteSOUTO1.Caption                  := DM.cdsProdutoDESCRICAO.AsString;

    DBEdit17.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   C�digo N�o Encontrado             '+#13+
                '                                     ');
    SpeedButton5Click(Self);
  end;


end;

procedure TfrmEntradaProduto.Edit2KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmEntradaProduto.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    FillRect(Rect);
    Font.Style := [fsBold];
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmEntradaProduto.DBGrid2CellClick(Column: TColumn);
begin
  Edit2.Text := DM.cdsItemEntradaCODIGO_PRODUTO.AsString;
end;

procedure TfrmEntradaProduto.DBGrid2DblClick(Sender: TObject);
begin
  Edit2.Text := DM.cdsItemEntradaCODIGO_PRODUTO.AsString;
end;

procedure TfrmEntradaProduto.DBGrid2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit2.Text := DM.cdsItemEntradaCODIGO_PRODUTO.AsString;
end;

procedure TfrmEntradaProduto.DBLookupComboBox1Exit(Sender: TObject);
begin
  DM.cdsEntradaNFID_LOJA.AsInteger := DM.cdsEmpresaID_LOJA.AsInteger;
end;

procedure TfrmEntradaProduto.DBLookupComboBox2Click(Sender: TObject);
begin
  DbText2.Caption := DM.cdsEmpresaID_LOJA.AsString;
end;

procedure TfrmEntradaProduto.DBLookupComboBox2Exit(Sender: TObject);
begin
  DbText2.Caption := DM.cdsEmpresaID_LOJA.AsString;
end;

procedure TfrmEntradaProduto.DBGrid2Enter(Sender: TObject);
begin
  Edit2.Text := DM.cdsItemEntradaCODIGO_PRODUTO.AsString;
end;

procedure TfrmEntradaProduto.DBGrid1DblClick(Sender: TObject);
begin
  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;

end;

procedure TfrmEntradaProduto.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;

end;

procedure TfrmEntradaProduto.DBGrid1CellClick(Column: TColumn);
begin
  if DM.cdsItemEntrada.RecordCount > 0 then
    BB_COBRANCA.Enabled      := True
  else
    BB_COBRANCA.Enabled      := False;

end;

procedure TfrmEntradaProduto.DBEdit17Enter(Sender: TObject);
begin
  DM.cdsCST.Close;
  DM.cdsCST.Open;
  Pesquisa(DM.cdsCST,['DESC_CST'],['Descri��o'],[40],'','','','','CST','CST');
  DM.cdsItemEntradaCST.AsString         := DM.cdsCSTCOD_CST.AsString;
  DBEdit3.SetFocus;
end;

procedure TfrmEntradaProduto.BB_VALORESClick(Sender: TObject);
begin
  Panel1.Enabled := False;
  Panel2.Enabled := False;
  GB_VALORES.Visible := True;

  DM.cdsEntradaNF.Edit;
  DBEdit36.SetFocus;

end;

procedure TfrmEntradaProduto.BitBtn1Click(Sender: TObject);
begin
  ShowMessage('Replica Para a Loja '+DBText2.Caption+' '+DBLookupComboBox2.Text);
  if Application.MessageBox('Deseja Realmete Replicar Nota?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = idyes then
  begin
    try
      DM.cdsReplicaNotaEntrada.Params[0].AsString  := DM.cdsEntradaNFNUM_NOTA.AsString;
      DM.cdsReplicaNotaEntrada.Params[1].AsInteger := DM.cdsEntradaNFID_LOJA.AsInteger;
      DM.cdsReplicaNotaEntrada.Params[2].AsInteger := StrToInt(DbText2.Caption);
      DM.cdsReplicaNotaEntrada.Execute;

      DM.cdsEntradaNF.Refresh;
      DM.cdsItemEntrada.Refresh;

      ShowMessage('Nota Replicada Com Sucesso!');

      P_REPLICAR.Visible := False;
    except
     ShowMessage('Houve um Erro ao Replicar Nota. Tente Novamente');
     exit;
    end;
  end
  else
  begin
    ShowMessage('Replica Cancelada.');
    P_REPLICAR.Visible := False;
  end;

end;

procedure TfrmEntradaProduto.BitBtn2Click(Sender: TObject);
begin
  P_REPLICAR.Visible := False;
end;

procedure TfrmEntradaProduto.BB_CANCELA_CALCULOSClick(Sender: TObject);
begin
  DM.cdsEntradaNF.Cancel;
  GB_VALORES.Visible := False;
  Panel1.Enabled := True;
  Panel2.Enabled := True;

end;

procedure TfrmEntradaProduto.BB_COBRANCAClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

end;

procedure TfrmEntradaProduto.BB_CONCLUIRClick(Sender: TObject);
begin
  if DM.cdsEntradaNFEXPORTADO.AsString = 'F' then
  begin
    ShowMessage('Nota J� Finalizada.');
    Exit;
  end;

  if Application.MessageBox('Deseja Relamente Finalizar La�amentos Para Este Registro?','Confirma��o',MB_ICONQUESTION+MB_YESNO) = idyes  then
  begin
    DM.cdsGravaEstoqueProduto.Params[0].AsInteger := DM.cdsEntradaNFID_LOJA.AsInteger;
    DM.cdsGravaEstoqueProduto.Params[1].AsString  := DM.cdsEntradaNFNUM_NOTA.AsString;
    DM.cdsGravaEstoqueProduto.Params[2].AsDate    := DM.cdsEntradaNFDATA_REC.AsDateTime;
    DM.cdsGravaEstoqueProduto.Params[3].AsString  := 'E';
    DM.cdsGravaEstoqueProduto.Execute;

    DM.cdsEntradaNF.Edit;
    DM.cdsEntradaNFEXPORTADO.Value := 'F';
    DM.cdsEntradaNF.ApplyUpdates(0);
    DM.cdsEntradaNF.Refresh;
    ShowMessage('Registro Finalizado Com Sucesso');
  end;
end;

procedure TfrmEntradaProduto.BB_CONFIRMA_CALCULOSClick(Sender: TObject);
begin
  DM.cdsEntradaNF.ApplyUpdates(0);
  SomaTotal;
  GB_VALORES.Visible := False;
  Panel1.Enabled := True;
  Panel2.Enabled := True;
end;

procedure TfrmEntradaProduto.DBEdit38Enter(Sender: TObject);
begin
  DM.cdsEntradaNFVALOR_TOTAL.AsFloat :=
    (DM.cdsEntradaNFVALOR_PRODUTOS.AsFloat +
         DM.cdsEntradaNFVALOR_IPI.AsFloat + DM.cdsEntradaNFOUTROS_VALORES.AsFloat
       + DM.cdsEntradaNFVALOR_ISENT_N_TRIBUTADO.AsFloat)-
     (DM.cdsEntradaNFVALOR_DESCONTO.AsFloat);

end;

procedure TfrmEntradaProduto.DBEdit38Exit(Sender: TObject);
begin
  BB_CONFIRMA_CALCULOS.SetFocus;
end;

end.

