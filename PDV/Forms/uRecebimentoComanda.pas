unit uRecebimentoComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmRecebeComanda = class(TForm)
    edtComanda: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure edtComandaChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   Procedure PesquisaMesa;
  end;

var
  frmRecebeComanda: TfrmRecebeComanda;

implementation

{$R *.dfm}

uses U_LIB, uDM, uPdv;

{ TForm1 }

procedure TfrmRecebeComanda.BitBtn1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Importar Mesa/Comanda?','Aten��o!!',MB_YESNO+MB_ICONQUESTION) = idyes then
  begin
   try
      DM.cdsRecebeComanda.Params[0].AsInteger := DM.cdsComandaID_COMANDA.AsInteger;
      DM.cdsRecebeComanda.Params[1].AsInteger := DM.cdsPDVID_PDV.AsInteger;
      DM.cdsRecebeComanda.Execute;

      DM.cdsComanda.Close;
      DM.cdsComanda.Open;

      DM.cdsPDV.Refresh;
      DM.cdsItemPdv.Refresh;

      frmPdv.SomaTotais;
      frmPdv.L_INCLUIR_ITEMClick(Self);
      ShowMessage('Mesa/Comanda Importada Com Sucesso!!');
//      if Application.MessageBox('Deseja Importar Mais Mesa/Comanda?','Confirma��o',MB_YESNO+MB_ICONQUESTION)= IDYES then
//      begin
//        DM.cdsPDV.Refresh;
//        DM.cdsItemPdv.Refresh;
//        PesquisaMesa;
//        edtComanda.SetFocus;
//        edtComanda.Clear;
//      end
//      else
//      begin
//        Close;
//      end;
      Close;
   except
      ShowMessage('Houve um Erro ao Importar Mesa/Comanda. Tente Novamente ou Contate o Suporte');
      exit;
   end;

  end;

end;

procedure TfrmRecebeComanda.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRecebeComanda.edtComandaChange(Sender: TObject);
begin
  PesquisaMesa;
end;

procedure TfrmRecebeComanda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  frmRecebeComanda := nil;
end;

procedure TfrmRecebeComanda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmRecebeComanda.FormShow(Sender: TObject);
begin
  PesquisaMesa;
end;

procedure TfrmRecebeComanda.PesquisaMesa;
begin
  DM.cdsComanda.Close;
  DM.cdsComanda.CommandText := ' SELECT  C.ID_COMANDA, C.ID_CLIENTE, C.ID_VENDEDOR, C.ID_MESA, C.ID_EMPRESA,'+
                               ' C.DT_ABERTURA, C.HR_ABERTURA, C.DT_FECHAMENTO, C.HR_FECHAMENTO, C.NR_COMANDA,'+
                               ' C.STATUS,C.VL_TOTAL,C.VL_ACRES,C.VL_SERVICO,C.VL_DESC,C.VL_LIQ,C.VALE_BRINDE,'+
                               ' C.ID_TIPO_PAGAMENTO, C.ID_FORMA_PAGAMENTO, C.TEMPO_OCUPADO, C.ID_USUARIO,'+
                               ' FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO, T.DESCRICAO_PAGAMENTO,CL.R_SOCIAL,'+
                               ' V.NOME AS VENDEDOR, M.NOME_MESA,M.STATUS as ST_MESA,E.R_SOCIAL AS EMPRESA'+
                               ' FROM TB_COMANDA C'+
                               ' LEFT OUTER JOIN TB_CLIENTE CL  ON (CL.ID_CLIENTE = C.ID_CLIENTE)'+
                               ' LEFT OUTER JOIN TB_VENDEDOR V  ON (V.ID_VENDEDOR = C.ID_VENDEDOR)'+
                               ' LEFT OUTER JOIN TB_MESA M      ON (M.ID_MESA     = C.ID_MESA)'+
                               ' LEFT OUTER JOIN TB_LOJAS E   ON (E.ID_LOJA  = C.ID_EMPRESA)'+
                               ' LEFT OUTER JOIN TB_PLANO_PAGAMENTO T   ON (T.ID_PLANO_PAGAMENTO  = C.ID_TIPO_PAGAMENTO)'+
                               ' LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP   ON (FP.ID_FORMA_PAGAMENTO  = C.ID_FORMA_PAGAMENTO)'+
                               ' WHERE  C.STATUS = ''O'''+
                               ' AND C.ID_MESA LIKE '+QuotedStr(edtComanda.Text+'%');
 DM.cdsComanda.Open;
end;

end.
