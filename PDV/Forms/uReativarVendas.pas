unit uReativarVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Data.SqlExpr, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.Imaging.jpeg;

type
  TfrmReativarVendas = class(TForm)
    Panel1: TPanel;
    spCancelaPagamento: TSQLStoredProc;
    dspCancelaPagamento: TDataSetProvider;
    cdsCancelaPagamento: TClientDataSet;
    DBNavigator1: TDBNavigator;
    BB_REATIVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    qReativarVenda: TSQLDataSet;
    dspReativarVenda: TDataSetProvider;
    cdsReativarVenda: TClientDataSet;
    dsReativarVenda: TDataSource;
    DBGrid1: TDBGrid;
    qReativarVendaID_PDV: TIntegerField;
    qReativarVendaID_LOJA: TIntegerField;
    qReativarVendaID_CLIENTE: TIntegerField;
    qReativarVendaID_VENDEDOR: TIntegerField;
    qReativarVendaID_USUARIO: TIntegerField;
    qReativarVendaCAIXA: TIntegerField;
    qReativarVendaDT_VENDA: TDateField;
    qReativarVendaVL_VENDA: TFMTBCDField;
    qReativarVendaVL_DESC: TFMTBCDField;
    qReativarVendaVL_LIQ: TFMTBCDField;
    qReativarVendaSTATUS: TStringField;
    qReativarVendaCUPOM: TStringField;
    qReativarVendaVENDEDOR: TStringField;
    qReativarVendaNOME_USUARIO: TStringField;
    qReativarVendaR_SOCIAL: TStringField;
    qReativarVendaFANTASIA: TStringField;
    qReativarVendaCNPJ_CPF: TStringField;
    cdsReativarVendaID_PDV: TIntegerField;
    cdsReativarVendaID_LOJA: TIntegerField;
    cdsReativarVendaID_CLIENTE: TIntegerField;
    cdsReativarVendaID_VENDEDOR: TIntegerField;
    cdsReativarVendaID_USUARIO: TIntegerField;
    cdsReativarVendaCAIXA: TIntegerField;
    cdsReativarVendaDT_VENDA: TDateField;
    cdsReativarVendaVL_VENDA: TFMTBCDField;
    cdsReativarVendaVL_DESC: TFMTBCDField;
    cdsReativarVendaVL_LIQ: TFMTBCDField;
    cdsReativarVendaSTATUS: TStringField;
    cdsReativarVendaCUPOM: TStringField;
    cdsReativarVendaVENDEDOR: TStringField;
    cdsReativarVendaNOME_USUARIO: TStringField;
    cdsReativarVendaR_SOCIAL: TStringField;
    cdsReativarVendaFANTASIA: TStringField;
    cdsReativarVendaCNPJ_CPF: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    qReativarVendaNOME_LOJA: TStringField;
    cdsReativarVendaNOME_LOJA: TStringField;
    dsItemVenda: TDataSource;
    cdsItemVenda: TClientDataSet;
    dspItemVenda: TDataSetProvider;
    qItemVenda: TSQLQuery;
    qItemVendaID_ITEM_PDV: TIntegerField;
    qItemVendaID_PDV: TIntegerField;
    qItemVendaID_PRODUTO: TIntegerField;
    qItemVendaID_GRUPO_PRODUTO: TIntegerField;
    qItemVendaITEM: TIntegerField;
    qItemVendaQUANT: TFMTBCDField;
    qItemVendaVL_UNIT: TFMTBCDField;
    qItemVendaVL_TOTAL: TFMTBCDField;
    qItemVendaCD_BARRA: TStringField;
    qItemVendaCODIGO: TStringField;
    qItemVendaREFERENCIA: TStringField;
    qItemVendaDESCRICAO: TStringField;
    qItemVendaUNIDADE: TStringField;
    qItemVendaTIPO_ALIQ: TStringField;
    qItemVendaALIQUOTA: TFMTBCDField;
    qItemVendaNCM: TStringField;
    qItemVendaESTOQUE_1: TFMTBCDField;
    cdsItemVendaID_ITEM_PDV: TIntegerField;
    cdsItemVendaID_PDV: TIntegerField;
    cdsItemVendaID_PRODUTO: TIntegerField;
    cdsItemVendaID_GRUPO_PRODUTO: TIntegerField;
    cdsItemVendaITEM: TIntegerField;
    cdsItemVendaQUANT: TFMTBCDField;
    cdsItemVendaVL_UNIT: TFMTBCDField;
    cdsItemVendaVL_TOTAL: TFMTBCDField;
    cdsItemVendaCD_BARRA: TStringField;
    cdsItemVendaCODIGO: TStringField;
    cdsItemVendaREFERENCIA: TStringField;
    cdsItemVendaDESCRICAO: TStringField;
    cdsItemVendaUNIDADE: TStringField;
    cdsItemVendaTIPO_ALIQ: TStringField;
    cdsItemVendaALIQUOTA: TFMTBCDField;
    cdsItemVendaNCM: TStringField;
    cdsItemVendaESTOQUE_1: TFMTBCDField;
    DBGrid2: TDBGrid;
    SpeedButton3: TSpeedButton;
    procedure BB_REATIVARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReativarVendas: TfrmReativarVendas;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uPdv;

procedure TfrmReativarVendas.BB_REATIVARClick(Sender: TObject);
begin
  if cdsReativarVendaCUPOM.AsString = 'S' then
  begin
    ShowMessage('Impossivél Reativar Essa Venda, Cupom Fiscal Emitido.');
    DBGrid1.SetFocus;
    Exit;
  end;
  if Application.MessageBox('Deseja Realmente Reativar Esta Venda ?','Confirmação!!!!!',MB_OK+MB_YESNO) = idyes then
  begin
    cdsReativarVenda.Edit;
    cdsReativarVendaSTATUS.Value := 'A';
    cdsReativarVenda.ApplyUpdates(0);

    DM.CDSPdv.Close;
    DM.CDSPdv.Params[0].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
    DM.CDSPdv.Open;

    DM.cdsItemPdv.Close;
    DM.cdsItemPdv.Params[0].AsInteger := DM.CDSPdvID_PDV.AsInteger;
    DM.cdsItemPdv.Open;

    cdsCancelaPagamento.Params[0].AsInteger := cdsReativarVendaID_PDV.AsInteger;
    cdsCancelaPagamento.Execute;

    if DM.cdsItemPdv.RecordCount > 0 then
    begin
      frmPdv.L_SITUACAO_VENDA.Caption := 'ESPERANDO PAGAMENTO';
      frmPdv.L_TOTAL_VENDA.Caption := 'R$ '+FormatFloat('###,###0.00',DM.cdsPDVVL_LIQ.AsFloat);
    end
    else
      frmPdv.L_SITUACAO_VENDA.Caption := 'Caixa Livre';

    ShowMessage('Venda Reativada Com Sucesso!!!');
    Close;
  end
  else
  begin
    ShowMessage('Reativação Cancelada');
    DBGrid1.SetFocus;
  end;
end;

procedure TfrmReativarVendas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if cdsReativarVenda.FieldByName('CUPOM').Value = 'S' then
      DBGrid1.Canvas.Font.Color := clGreen;
 //  if cdsReativarVenda.FieldByName('CUPOM').Value = 'N' then
 //     DBGrid1.Canvas.Font.Color := clNavy;
   DBGrid1.Canvas.Font.Style := [fsBold];
   DBGrid1.Canvas.FillRect(Rect);
   Dbgrid1.DefaultDrawDataCell(Rect,dbgrid1.columns[DataCol].field,State);
//   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmReativarVendas.BB_CANCELARClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmReativarVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmReativarVendas := nil;
end;

procedure TfrmReativarVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 27 then
  begin
    BB_CANCELARClick(Self);
  end;
  if Key = 13 then
  begin
    BB_REATIVARClick(Self);
  end;

end;

procedure TfrmReativarVendas.FormShow(Sender: TObject);
begin
  cdsReativarVenda.Close;
  cdsReativarVenda.Params[0].AsInteger := StrToInt(frmPdv.L_CAIXA.Caption);
  cdsReativarVenda.Params[1].AsDate    := Date;
  cdsReativarVenda.Params[2].AsInteger := StrToInt(DM.LOJA);
  cdsReativarVenda.Params[3].AsInteger := frmPdv.recInformacoes.id_Usuario;
  cdsReativarVenda.Open;

  cdsItemVenda.Close;
  cdsItemVenda.Params[0].AsInteger := cdsReativarVendaID_PDV.AsInteger;
  cdsItemVenda.Open;

  DBGrid1.SetFocus;
end;

procedure TfrmReativarVendas.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

end.
