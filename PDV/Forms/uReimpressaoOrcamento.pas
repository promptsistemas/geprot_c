unit uReimpressaoOrcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, Vcl.ExtCtrls,Printers,WinSpool, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.DBCtrls;

type
  TfrmReimpressaoOrcamento = class(TForm)
    qOrcamento: TSQLDataSet;
    dspOrcamento: TDataSetProvider;
    cdsOrcamento: TClientDataSet;
    dsOrcamento: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    qReimpressao: TSQLQuery;
    dspReimpressao: TDataSetProvider;
    cdsReimpressao: TClientDataSet;
    dsReimpressao: TDataSource;
    DBGrid2: TDBGrid;
    BB_IMPRIMIR: TBitBtn;
    BB_SAIR: TBitBtn;
    Memo2: TMemo;
    qOrcamentoID_PDV: TIntegerField;
    qOrcamentoID_LOJA: TIntegerField;
    qOrcamentoDT_VENDA: TDateField;
    qOrcamentoVL_VENDA: TFMTBCDField;
    qOrcamentoVL_DESC: TFMTBCDField;
    qOrcamentoVL_LIQ: TFMTBCDField;
    qOrcamentoSTATUS: TStringField;
    qOrcamentoCUPOM: TStringField;
    qOrcamentoID_VENDEDOR: TIntegerField;
    qOrcamentoCAIXA: TIntegerField;
    qOrcamentoID_USUARIO: TIntegerField;
    qOrcamentoVENDEDOR: TStringField;
    qOrcamentoNOME_USUARIO: TStringField;
    cdsOrcamentoID_PDV: TIntegerField;
    cdsOrcamentoID_LOJA: TIntegerField;
    cdsOrcamentoDT_VENDA: TDateField;
    cdsOrcamentoVL_VENDA: TFMTBCDField;
    cdsOrcamentoVL_DESC: TFMTBCDField;
    cdsOrcamentoVL_LIQ: TFMTBCDField;
    cdsOrcamentoSTATUS: TStringField;
    cdsOrcamentoCUPOM: TStringField;
    cdsOrcamentoID_VENDEDOR: TIntegerField;
    cdsOrcamentoCAIXA: TIntegerField;
    cdsOrcamentoID_USUARIO: TIntegerField;
    cdsOrcamentoVENDEDOR: TStringField;
    cdsOrcamentoNOME_USUARIO: TStringField;
    qReimpressaoID_ITEM_PDV: TIntegerField;
    qReimpressaoID_PDV: TIntegerField;
    qReimpressaoID_PRODUTO: TIntegerField;
    qReimpressaoQUANT: TFMTBCDField;
    qReimpressaoVL_UNIT: TFMTBCDField;
    qReimpressaoVL_TOTAL: TFMTBCDField;
    qReimpressaoDT_VENDA: TDateField;
    qReimpressaoCD_BARRA: TStringField;
    qReimpressaoDESCRICAO: TStringField;
    qReimpressaoUNIDADE: TStringField;
    cdsReimpressaoID_ITEM_PDV: TIntegerField;
    cdsReimpressaoID_PDV: TIntegerField;
    cdsReimpressaoID_PRODUTO: TIntegerField;
    cdsReimpressaoQUANT: TFMTBCDField;
    cdsReimpressaoVL_UNIT: TFMTBCDField;
    cdsReimpressaoVL_TOTAL: TFMTBCDField;
    cdsReimpressaoDT_VENDA: TDateField;
    cdsReimpressaoCD_BARRA: TStringField;
    cdsReimpressaoDESCRICAO: TStringField;
    cdsReimpressaoUNIDADE: TStringField;
    qReimpressaoITEM: TIntegerField;
    cdsReimpressaoITEM: TIntegerField;
    qReimpressaoID_GRUPO_PRODUTO: TIntegerField;
    cdsReimpressaoID_GRUPO_PRODUTO: TIntegerField;
    qOrcamentoR_SOCIAL: TStringField;
    qOrcamentoCNPJ_CPF: TStringField;
    cdsOrcamentoR_SOCIAL: TStringField;
    cdsOrcamentoCNPJ_CPF: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_SAIRClick(Sender: TObject);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    Procedure Reimpressao;
    Procedure ImprimirMemo(Memo: TMemo);
  public
    { Public declarations }
  end;

var
  frmReimpressaoOrcamento: TfrmReimpressaoOrcamento;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv;

procedure TfrmReimpressaoOrcamento.BB_IMPRIMIRClick(Sender: TObject);
begin
  Reimpressao;
end;

procedure TfrmReimpressaoOrcamento.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReimpressaoOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cdsOrcamento.Close;
  cdsReimpressao.Close;
  Action :=caFree;
  frmReimpressaoOrcamento := nil;
end;

procedure TfrmReimpressaoOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_SAIRClick(Self);
  end;
  if Key = 13 then
  begin
    BB_IMPRIMIRClick(Self);
  end;

end;

procedure TfrmReimpressaoOrcamento.FormShow(Sender: TObject);
Var
 Caixa : string;
begin
  caixa :=frmPdv.L_CAIXA.Caption;

  cdsOrcamento.Close;
  cdsOrcamento.Params[0].AsInteger := StrToInt(Caixa);
  cdsOrcamento.Params[1].AsDate := Date;
  cdsOrcamento.Params[2].AsInteger := StrToInt(DM.LOJA);
  cdsOrcamento.Open;

  if cdsOrcamento.IsEmpty then
  begin
    ShowMessage('Nenhum Or�amento Para Reimprimir.');
    Exit;
  end
  else
  begin
    cdsReimpressao.Close;
    cdsReimpressao.Params[0].AsInteger := cdsOrcamentoID_PDV.AsInteger;
    cdsReimpressao.Params[1].AsInteger := cdsOrcamentoID_LOJA.AsInteger;
    cdsReimpressao.Open;
  end;
end;

procedure TfrmReimpressaoOrcamento.ImprimirMemo(Memo: TMemo);
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

procedure TfrmReimpressaoOrcamento.Reimpressao;
var
  Arquivo : TextFile;
  iCount, iCount2, iProdutos, iQuantas, iVezes,iPag: integer;
  dValor,dDesconto,dLiquido,TotalGeral : Double;
  usuario : string;
begin
  usuario := frmPdv.L_USUARIO.Caption;
  Memo2.Clear;
  if printer.printers.count=0 then
  begin
    showmessage('nao tem impressora instalada');
    Exit;
  end;
  cdsReimpressao.Close;
  cdsReimpressao.Params[0].AsInteger := cdsOrcamentoID_PDV.AsInteger;
  cdsReimpressao.Params[1].AsInteger := cdsOrcamentoID_LOJA.AsInteger;
  cdsReimpressao.Open;


  if cdsReimpressao.IsEmpty then
  begin
    ShowMessage('Documento N�o Encontrado.');
    Exit;
  end
  else
  begin
    with DM do
    begin
        dValor :=0;
      iQuantas :=0;
      dDesconto:=0;
      dLiquido :=0;
      //cdsItemPdvLocal.IndexFieldNames :='ID_ITEM_PDV';
      iProdutos := cdsReimpressao.RecordCount;
      iVezes := Trunc(iProdutos/10000);
      if Round(iProdutos) > 0 then
        iVezes := iVezes +1;
      cdsReimpressao.First;
      for iCount := 1 to iVezes do
      begin
      //  Memo2.Lines := Screen.Fonts; //LISTA TODOS OS TIPOS DE FONTES
      //  Memo2.Font.Name := 'ARIAL'; // ESCOLHE O TIPO DA FONTE
      //  Memo2.Font.Handle := 20;   //TAMANHO DA FONTE

        Memo2.Lines.Add(' ');
        Memo2.Lines.Add('Orcamento N.'+DefineTamanhoString(cdsReimpressaoID_PDV.AsString,8,0)
          +'  OPERADOR CAIXA:  '+usuario);
  //        +'                     '+DefineTamanhoString(FormatDateTime('dd "de" mmmm "de" yyyy',Date),20,0)
  //        +' '+' Hora '+DefineTamanhoString(TimeToStr(Time),10,0));
        Memo2.Lines.Add       ('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('DATA DA VENDA...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsReimpressaoDT_VENDA.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));

                                         //Cabe�alho de Clientes
        Memo2.Lines.Add       ('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('CLIENTE...: '+DefineTamanhoString('CONSUMIDOR FINAL',16,0));
  //      Memo2.Lines.Add(#27#15+'Vendedor(a)....: '+DefineTamanhoString(L_VENDEDOR.Caption,13,0));
        Memo2.Lines.Add(' ');
        Memo2.Lines.Add('                  *** S E M   V A L O R   F I S C A L ***                     ');
        Memo2.Lines.Add('------------------------------------------------------------------------------------');
        Memo2.Lines.Add('ITEM CODIGO DESCRICAO QTD VL_UNIT(R$) VL_ITEM(R$)     ');
        Memo2.Lines.Add('------------------------------------------------------------------------------------');

        //INICIA OS PRODUTOS
        FOR iCount2 := 1 to 10000 do
        begin
          inc(iQuantas);
          if iQuantas <= iProdutos then
          begin
            Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsReimpressaoCD_BARRA.AsString,15,0)
             +''+DefineTamanhoString(cdsReimpressaoDESCRICAO.AsString,30,0));
  //            +' '+DefineTamanhoString(CDS_CUPON_PRODUTOcl_ds_unidade.AsString,4,0)
             Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0',cdsReimpressaoQUANT.AsFloat),4,1)
              +' UNI X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsReimpressaoVL_UNIT.AsFloat),6,1)
              +'              '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsReimpressaoVL_TOTAL.AsFloat),8,1));

            dValor :=  dValor + cdsReimpressaoVL_TOTAL.AsFloat;
           // dDesconto := cdsPdvLocalVL_DESCONTO.AsFloat;
            TotalGeral :=  dValor;
            cdsReimpressao.Next;
          end
          else
          begin
  //          F_MENU_CLIENTE.Memo1.Lines.Add(#27#18+' ');
          end;
        end;
          Memo2.Lines.Add('------------------------------------------------------------------------------------');
          Memo2.Lines.Add('TOTAL R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
          Memo2.Lines.Add('------------------------------------------------------------------------------------');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');
           //SELECIONAR O VENDEDOR DA VENDA
          DM.cdsDinamica.Close;
          DM.cdsDinamica.IndexFieldNames :='';
          DM.cdsDinamica.CommandText := ' SELECT V.NOME FROM TB_PDV P JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = P.ID_VENDEDOR)'+
                                        ' WHERE P.ID_PDV = '+IntToStr(Orcamento);
          DM.cdsDinamica.Open;

          Memo2.Lines.Add('VENDEDOR(A)  '+DefineTamanhoString(cdsOrcamentoVENDEDOR.AsString,20,0));
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');

             //CONTA QUANT DE REGISTROS DA VENDA
          DM.cdsDinamica.Close;
          DM.cdsDinamica.IndexFieldNames :='';
          DM.cdsDinamica.CommandText := ' SELECT SUM(IP.QUANT) FROM TB_ITEM_PDV IP WHERE IP.ID_PDV = '+IntToStr(cdsOrcamentoID_PDV.AsInteger);
          DM.cdsDinamica.Open;
          Memo2.Lines.Add('TOTAL DE PECAS        '+DefineTamanhoString(FormatFloat('###',DM.cdsDinamica.Fields[0].AsFloat),3,0));
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');

          Memo2.Lines.Add('                         OBRIGADO PELA PREFER�NCIA     ');
          Memo2.Lines.Add('                                      ');
          Memo2.Lines.Add('');

          Memo2.Lines.Add('                        **    V O L T E    S E M P R E  ** ');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('');
          Memo2.Lines.Add('------------------------------------------------------------------------------------');
          Memo2.Lines.Add(' *********                  R E I M P R E S S � O      ************');
          Memo2.Lines.Add('------------------------------------------------------------------------------------');

          dValor := 0;
        end;
    end;
    AssignFile(Arquivo,CaminhoImpressora);
    //\\127.0.0.1\MP-2500T

    //EPSON_TMT20
    Rewrite(Arquivo);
  {  for iCount := 1 to Memo2.Lines.Count do
    begin
      Writeln(Arquivo,Memo2.Lines[icount]); // Ejeta a p�gina
    end;}
    //Writeln(Arquivo,#12); // Ejeta a p�gina
    //Writeln(Arquivo,#27#109);//CORTA O PAPEL
  //  ImprimirMemoComCanvas(Memo2);
    ImprimirMemo(Memo2);
    CloseFile(Arquivo);
    end;

end;

procedure TfrmReimpressaoOrcamento.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.
