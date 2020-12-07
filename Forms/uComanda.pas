unit uComanda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.DBCGrids,db, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  ACBrBase, ACBrBAL, Vcl.Menus,Printers,WinSpool, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ImgList, System.Actions, Vcl.ActnList;

type
  TfrmComanda = class(TForm)
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    Panel4: TPanel;
    Timer1: TTimer;
    Memo2: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GB_COMANDA: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    L_PRODUTO: TLabel;
    Label43: TLabel;
    SB_VENDEDOR: TSpeedButton;
    Label44: TLabel;
    SB_CLIENTE: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    edtProduto: TEdit;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit12: TDBEdit;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    P_BOTOES: TPanel;
    BB_CANCELAR: TSpeedButton;
    BB_NOVO: TSpeedButton;
    BB_EDITAR: TSpeedButton;
    BB_GRAVAR: TSpeedButton;
    bb_imprimir_comanda: TSpeedButton;
    BB_ENCERRAR: TSpeedButton;
    ACBrBAL1: TACBrBAL;
    lblPeso: TLabel;
    lblResposta: TLabel;
    edtTimeOut: TEdit;
    PopupMenu1: TPopupMenu;
    EXCLUIRITEM1: TMenuItem;
    Panel5: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Panel6: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure SB_VENDEDORClick(Sender: TObject);
    procedure SB_CLIENTEClick(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20Enter(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_ENCERRARClick(Sender: TObject);
    procedure edtProdutoEnter(Sender: TObject);
    procedure edtProdutoExit(Sender: TObject);
    function IsAphaNumerico(S: string): Boolean;
    procedure edtProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProdutoKeyPress(Sender: TObject; var Key: Char);
    Function Converte( cmd : String) : String;
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure bb_imprimir_comandaClick(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure DBCtrlGrid1Enter(Sender: TObject);
    procedure DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCtrlGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure DBText1DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure InsertItemVenda;
    Procedure GerenCiaBotoes;
    Procedure SomaTotais;
    Procedure PesquisaProduto;
    Procedure ImprimirComanda;
    Procedure ImprimirMemo(Memo: TMemo);
    procedure ConectarBalanca;
    Procedure ComandasAbertas;

  public
    { Public declarations }
  end;

var
  frmComanda: TfrmComanda;
  MULTI : Boolean;
  CaminhoImpressora,Balanca: String;
  CAIXA : Integer;
  PageDown : Boolean;
  Enter    : Boolean;
  IsertEdit: String;
  idComanda : String;
  PesoOK    : Boolean;


implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uMenu;

procedure TfrmComanda.ACBrBAL1LePeso(Peso: Double; Resposta: AnsiString);
var valid : integer;
begin
   lblPeso.Caption     := formatFloat('##0.000', Peso );
   lblResposta.Caption := Converte( Resposta ) ;

   if Peso > 0 then
      //Memo1.Lines.Text := 'Leitura OK !'
      PesoOK := True
   else
    begin
      valid := Trunc(ACBrBAL1.UltimoPesoLido);
      case valid of
         0 :
             ShowMessage('TimeOut !'+sLineBreak+' Coloque o produto sobre a Balan�a!');
             //Memo1.Lines.Text := 'TimeOut !'+sLineBreak+
             //                    'Coloque o produto sobre a Balan�a!' ;
        -1 :
             ShowMessage('Peso Instavel ! ' +sLineBreak + ' Tente Nova Leitura' );
             //   Memo1.Lines.Text := 'Peso Instavel ! ' +sLineBreak+
             //                    'Tente Nova Leitura' ;
        -2 :
             ShowMessage('Peso Negativo !');
        //Memo1.Lines.Text := 'Peso Negativo !' ;

       -10 : ShowMessage('Sobrepeso ! ');
       //Memo1.Lines.Text := 'Sobrepeso !' ;
      end;
      PesoOK := False;
    end ;


end;

procedure TfrmComanda.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsComanda.Cancel;
  GerenCiaBotoes;
  BB_ENCERRARClick(Self);

end;

procedure TfrmComanda.BB_EDITARClick(Sender: TObject);
begin
  edtProdutoEnter(Self);

end;

procedure TfrmComanda.BB_ENCERRARClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nenhuma Comanda Selecionada Para Encerrar.');
    DBCtrlGrid1.SetFocus;
    exit;
  end
  else
  begin
    MULTI := False;
    DM.cdsItemComanda.Cancel;
    DM.cdsComanda.Close;
    DM.cdsItemComanda.Close;
    DBCtrlGrid1.SetFocus;
    GerenCiaBotoes;
    Exit;
  end;

end;

procedure TfrmComanda.BB_GRAVARClick(Sender: TObject);
begin
//
end;

procedure TfrmComanda.bb_imprimir_comandaClick(Sender: TObject);
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nenhuma Comanda Selecionada Para Impress�o.');
    DBCtrlGrid1.SetFocus;
    exit;
  end
  else
  begin
    ImprimirComanda;
  end;

end;

procedure TfrmComanda.BB_NOVOClick(Sender: TObject);
begin
  if (DM.cdsMesaID_MESA.AsInteger = 150) and (frmMenu.recInformacoes.Nivel <> 3) then
  begin
    ShowMessage('        ATEN��O !!!!!!!!!!!!      '+#13+
                ' Mesa Exclusiva Para Uso do Caixa '+#13+
                '    Favor Selecione Outra Mesa. ');
    DBCtrlGrid1.SetFocus;
    Exit;
  end;
  if DM.cdsMesaSTATUS.Value = 'R' then
  begin
    ShowMessage('               ATEN��O !!!!!!!!!!!!           '+#13+
                'Mesa Est� Em Recebimento. Favor Ultilizar Outra Mesa.');
    DBCtrlGrid1.SetFocus;
    Exit;
  end;
  if DM.cdsMesaSTATUS.Value = 'O' then
  begin
    ShowMessage('               ATEN��O !!!!!!!!!!!!           '+#13+
                'Mesa J� Est� Em Uso. Favor Ultilizar Outra Mesa.');
    DBCtrlGrid1.SetFocus;
    Exit;
  end
  else
  begin
    IsertEdit := 'Insert';
    PageDown := False;
    Enter    := False;
    MULTI := False;
    L_PRODUTO.Caption:='.';

    DM.cdsComanda.Append;
    DM.cdsComandaDT_ABERTURA.AsDateTime := Date;
    DM.cdsComandaHR_ABERTURA.AsDateTime := Time;

    DM.cdsComandaNOME_MESA.Value := DM.cdsMesaNOME_MESA.Value;
    DM.cdsComandaSTATUS.Value   := 'O';
    GB_COMANDA.Enabled := True;
    DBEdit20.SetFocus;
  end;

end;

procedure TfrmComanda.ComandasAbertas;
Var
 sSql : String;
begin
  sSql := ' SELECT C.ID_COMANDA, C.ID_CLIENTE, C.ID_VENDEDOR, C.ID_MESA, C.ID_EMPRESA, C.DT_ABERTURA, C.HR_ABERTURA, C.DT_FECHAMENTO, '+
          ' C.HR_FECHAMENTO, C.NR_COMANDA, C.STATUS, C.VL_TOTAL, C.VL_ACRES, C.VL_SERVICO, C.VL_DESC, C.VL_LIQ,C.VALE_BRINDE,C.ID_USUARIO, CL.R_SOCIAL, V.NOME AS VENDEDOR,'+
          ' M.NOME_MESA,  M.STATUS as ST_MESA, E.R_SOCIAL AS EMPRESA,  C.ID_TIPO_PAGAMENTO,C.ID_FORMA_PAGAMENTO,C.TEMPO_OCUPADO, FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO, T.DESCRICAO_PAGAMENTO FROM TB_COMANDA C '+
          ' LEFT OUTER JOIN TB_CLIENTE CL  ON (CL.ID_CLIENTE = C.ID_CLIENTE) '+
          ' LEFT OUTER JOIN TB_VENDEDOR V  ON (V.ID_VENDEDOR = C.ID_VENDEDOR) '+
          ' LEFT OUTER JOIN TB_MESA M      ON (M.ID_MESA     = C.ID_MESA) '+
          ' LEFT OUTER JOIN TB_LOJAS E   ON (E.ID_LOJA  = C.ID_EMPRESA)'+
          ' LEFT OUTER JOIN TB_PLANO_PAGAMENTO T   ON (T.ID_PLANO_PAGAMENTO  = C.ID_TIPO_PAGAMENTO)'+
          ' LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP   ON (FP.ID_FORMA_PAGAMENTO  = C.ID_FORMA_PAGAMENTO)'+
          ' WHERE C.STATUS = ''O'''+
          ' AND C.ID_MESA = '+DM.cdsMesaID_MESA.AsString;
  DM.cdsComanda.Close;
  DM.cdsComanda.IndexFieldNames:='';
  DM.cdsComanda.CommandText := sSql;
  DM.cdsComanda.Open;
  DM.cdsComanda.Refresh;

end;

procedure TfrmComanda.ConectarBalanca;
begin
   if acbrBal1.Ativo then
      ACBrBAL1.Desativar;

  { DM.cdsBalanca.Open;
   // configura porta de comunica��o
   ACBrBAL1.Modelo           := TACBrBALModelo( DM.cdsBalancaMODELO.AsString);
   ACBrBAL1.Device.HandShake := TACBrHandShake( DM.cdsBalancaCONTROLE_FLUXO.VA );
   ACBrBAL1.Device.Parity    := TACBrSerialParity( cmbParity.ItemIndex );
   ACBrBAL1.Device.Stop      := TACBrSerialStop( cmbStopBits.ItemIndex );
   ACBrBAL1.Device.Data      := StrToInt( cmbDataBits.text );
   ACBrBAL1.Device.Baud      := StrToInt( cmbBaudRate.Text );
   ACBrBAL1.Device.Porta     := cmbPortaSerial.Text;

   // Conecta com a balan�a}
   ACBrBAL1.Ativar;

end;

function TfrmComanda.Converte(cmd: String): String;
var A : Integer ;
begin
  Result := '' ;
  For A := 1 to length( cmd ) do
  begin
     if not (cmd[A] in ['A'..'Z','a'..'z','0'..'9',
                        ' ','.',',','/','?','<','>',';',':',']','[','{','}',
                        '\','|','=','+','-','_',')','(','*','&','^','%','$',
                        '#','@','!','~',']' ]) then
        Result := Result + '#' + IntToStr(ord( cmd[A] )) + ' '
     else
        Result := Result + cmd[A] + ' ';
  end ;
end;

procedure TfrmComanda.DBCtrlGrid1Click(Sender: TObject);
begin
  ComandasAbertas;

  DM.cdsItemComanda.Close;
  DM.cdsItemComanda.Params[0].AsInteger :=   DM.cdsComandaID_COMANDA.AsInteger;
  DM.cdsItemComanda.Open;
  GerenCiaBotoes;

end;

procedure TfrmComanda.DBCtrlGrid1Enter(Sender: TObject);
begin
  ComandasAbertas;
  DM.cdsItemComanda.Close;
  DM.cdsItemComanda.Params[0].AsInteger :=   DM.cdsComandaID_COMANDA.AsInteger;
  DM.cdsItemComanda.Open;
  GerenCiaBotoes;

  if DM.cdsComanda.Active = True then
  begin
    GerenCiaBotoes;
  end;
  GerenCiaBotoes;

end;

procedure TfrmComanda.DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 82 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_GRAVARClick(Self);
//    end;
  end;

  if key = 107 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_EDITARClick(Self);
//    end;
  end;

  if key = 70 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_CANCELARClick(Self);
//    end;
  end;
  if key = 78 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_NOVOClick(Self);
//    end;
  end;

  if key = 80 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      bb_imprimir_comandaClick(Self);
//    end;
  end;

{  if key = 116 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      bb_confirmaClick(Self);
    end;
  end;

  if key = 117 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      SpeedButton2Click(Self);
    end;
  end;

  if key = 118 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      BB_IMPRIMIRClick(Self);
    end;
  end;

  if key = 119 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      SpeedButton4Click(Self);
    end;
  end; }

end;

procedure TfrmComanda.DBCtrlGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
    BB_NOVOClick(Self);
  end;

end;

procedure TfrmComanda.DBCtrlGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if DM.cdsMesaID_MESA.AsInteger > 0 then
 begin
  ComandasAbertas;

  DM.cdsItemComanda.Close;
  DM.cdsItemComanda.Params[0].AsInteger :=   DM.cdsComandaID_COMANDA.AsInteger;
  DM.cdsItemComanda.Open;
  GerenCiaBotoes;
 end;

end;

procedure TfrmComanda.DBCtrlGrid1PaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
  if not (DM.cdsMesa.State in dsEditModes) then
  begin
    if DM.cdsMesaStatus.Value = 'O' then
    begin
      DBText1.Color:= clRed;
    end;

    if DM.cdsMesaStatus.Value = 'L' then
    begin
      DBText1.Color:= $0000DF00;
    end;

    if DM.cdsMesaStatus.Value = 'R' then
    begin
      DBText1.Color:= clYellow;
    end;
 end
 else
 begin
    if DM.cdsMesaStatus.Value = 'O' then
    begin
      DBText1.Color:= clRed;
    end;

    if DM.cdsMesaStatus.Value = 'L' then
    begin
      DBText1.Color:= $0000DF00;
    end;

    if DM.cdsMesaStatus.Value = 'R' then
    begin
      DBText1.Color:= clYellow;
    end;
 end;

end;

procedure TfrmComanda.DBEdit10Exit(Sender: TObject);
begin
  if DBEdit10.Text = '' then
  begin
    Exit;
  end;
  if (not DM.cdsItemComandaQUANT.IsNull) then
  begin
      DM.cdsItemComandaVL_TOTAL.AsFloat :=
      DM.cdsItemComandaQUANT.AsFloat *
      DM.cdsItemComandaVL_UNIT.AsFloat;
  end;
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_ITEM_COMANDA) FROM TB_ITEM_COMANDA';
    DM.cdsDinamica.Open;
    DM.cdsItemComandaID_ITEM_COMANDA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
    DM.cdsItemComandaID_COMANDA.AsInteger       := DM.cdsComandaID_COMANDA.AsInteger;

    if DM.cdsItemComanda.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      SomaTotais;
      DM.cdsItemComanda.ApplyUpdates(0);
      DM.cdsItemComanda.Refresh;
      InsertItemVenda;
    end;
end;

procedure TfrmComanda.DBEdit20Enter(Sender: TObject);
begin
 Timer1.Enabled := False;
 if frmMenu.recInformacoes.Nivel = 3 then
 begin
   DBEdit20.Text:='30';
   DM.cdsComandaID_VENDEDOR.AsInteger := 30;
   DBEdit20Exit(Self);
 end;

end;

procedure TfrmComanda.DBEdit20Exit(Sender: TObject);
begin
  if DBEdit20.Text = '' then
  begin
    DBEdit4.SetFocus;
  end
  else
  begin
    DM.cdsVendedor.Close;
    DM.cdsVendedor.Open;
    if DM.cdsVendedor.Locate('ID_VENDEDOR',DM.cdsComandaID_VENDEDOR.AsInteger,[]) then
    begin
      DM.cdsComandaID_VENDEDOR.AsInteger    := DM.cdsVendedorID_VENDEDOR.AsInteger;
      DM.cdsComandaVENDEDOR.AsString        := DM.cdsVendedorNOME.AsString;
      DBEdit22Enter(Self);
    end
    else
    begin
      Application.MessageBox('C�d. N�o Localizado','Aten��o',MB_OK);
      SB_VENDEDORClick(Self);
    end;
  end;

end;

procedure TfrmComanda.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SB_VENDEDORClick(self);
  end;
end;

procedure TfrmComanda.DBEdit22Enter(Sender: TObject);
begin
  DBEDIT22.Text := '1';
  DM.cdsComandaID_CLIENTE.AsInteger := 1;
  DBEdit22Exit(Self);

end;

procedure TfrmComanda.DBEdit22Exit(Sender: TObject);
begin
  if DBEdit22.Text = '' then
  begin
    DBEdit4.SetFocus;
  end
  else
  begin
    DM.CdsCliente.Close;
    DM.CdsCliente.Open;
    if DM.CdsCliente.Locate('ID_CLIENTE',DM.cdsComandaID_CLIENTE.AsInteger,[]) then
    begin
      DM.cdsComandaID_CLIENTE.AsInteger     := DM.CdsClienteID_CLIENTE.AsInteger;
      DM.cdsComandaR_SOCIAL.AsString        := DM.CdsClienteR_SOCIAL.AsString;
      DBEdit23.SetFocus;
    end
    else
    begin
      Application.MessageBox('C�d. N�o Localizado','Aten��o',MB_OK);
      SB_CLIENTEClick(Self);
    end;
  end;

end;

procedure TfrmComanda.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SB_CLIENTEClick(self);
  end;

end;

procedure TfrmComanda.DBEdit23Enter(Sender: TObject);
begin
  DBEdit23Exit(Self);

end;

procedure TfrmComanda.DBEdit23Exit(Sender: TObject);
begin
  DM.cdsComanda.DisableControls;
  if DM.cdsMesaSTATUS.Value = 'L' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames :='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_COMANDA) FROM TB_COMANDA';
    DM.cdsDinamica.Open;

    DM.cdsComandaID_COMANDA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
    DM.cdsComandaID_CLIENTE.AsInteger := DM.CdsClienteID_CLIENTE.AsInteger;
    DM.cdsComandaID_VENDEDOR.AsInteger:= DM.cdsVendedorID_VENDEDOR.AsInteger;
    DM.cdsComandaID_MESA.AsInteger    := DM.cdsMesaID_MESA.AsInteger;
    DM.cdsComandaID_USUARIO.AsInteger := frmMenu.recInformacoes.id_Usuario;
    if DM.cdsComandaNR_COMANDA.IsNull then
       DM.cdsComandaNR_COMANDA.Value := DM.cdsComandaID_COMANDA.AsString;
    DM.cdsComandaVL_TOTAL.AsFloat := 0;
    DM.cdsComandaVL_ACRES.AsFloat := 0;
    DM.cdsComandaVL_SERVICO.AsFloat := 0;
    DM.cdsComandaVL_DESC.AsFloat := 0;
    DM.cdsComandaVL_LIQ.AsFloat := 0;
    DM.cdsComandaVALE_BRINDE.AsFloat := 0;
    DM.cdsComandaID_EMPRESA.AsInteger := 1;

    if DM.cdsComanda.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      DM.cdsComanda.EnableControls;
      DM.cdsComanda.ApplyUpdates(0);
      DM.cdsComanda.Refresh;
      DM.cdsComanda.DisableControls;

      DM.cdsMesa.Edit;
      DM.cdsMesaSTATUS.Value :='O';
      DM.cdsMesa.ApplyUpdates(0);
      DM.cdsMesa.Refresh;

      DM.cdsItemComanda.Close;
      DM.cdsItemComanda.Open;
      InsertItemVenda;
      Timer1.Enabled := True;
    end;
  end
  else
  begin
    DM.cdsComanda.Edit;
    DM.cdsComandaID_CLIENTE.AsInteger := DM.CdsClienteID_CLIENTE.AsInteger;
    DM.cdsComandaID_VENDEDOR.AsInteger:= DM.cdsVendedorID_VENDEDOR.AsInteger;
    DM.cdsComandaID_MESA.AsInteger    := DM.cdsMesaID_MESA.AsInteger;
    DM.cdsComandaID_EMPRESA.AsInteger := 1;

    if DM.cdsComanda.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema N�o Conseguiu Salvar Esta Informa��o. Tente Novamente ou Contate o Suporte.');
    end
    else
    begin
      DM.cdsComanda.EnableControls;
      DM.cdsComanda.ApplyUpdates(0);
      DM.cdsComanda.Refresh;
      DM.cdsComanda.DisableControls;
      Timer1.Enabled := True;
      InsertItemVenda;
    end;
  end;
  DM.cdsComanda.EnableControls;

end;

procedure TfrmComanda.DBEdit4Exit(Sender: TObject);
begin
  Enter := False;

end;

procedure TfrmComanda.DBEdit5Exit(Sender: TObject);
begin
  Enter := False;

end;

procedure TfrmComanda.DBGrid1CellClick(Column: TColumn);
begin
  Timer1.Enabled := False;
end;

procedure TfrmComanda.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:= $00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

procedure TfrmComanda.DBGrid1Exit(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TfrmComanda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    if Application.MessageBox('Deseja Excluir Item da Comanda? ','Aten��o!!!!',MB_YESNO+MB_ICONQUESTION)= idyes then
    begin
      DM.cdsItemComanda.Delete;
      DM.cdsItemComanda.ApplyUpdates(-1);
      SomaTotais;
    end
    else
    begin
      ShowMessage('Item N�o Cancelado!!');
    end;
  end;


end;

procedure TfrmComanda.DBText1DblClick(Sender: TObject);
begin
  GerenCiaBotoes;
  if DM.cdsMesaSTATUS.Value = 'R' then
  begin
    ShowMessage('               ATEN��O !!!!!!!!!!!!           '+#13+
                'Mesa Est� Em Recebimento. Favor Ultilizar Outra Mesa.');

    Exit;
  end;
  if DM.cdsMesaSTATUS.Value = 'O' then
  begin
    ShowMessage('               ATEN��O !!!!!!!!!!!!           '+#13+
                'Mesa J� Est� Em Uso. Favor Ultilizar Outra Mesa.');
    Exit;
  end
  else
  begin
    BB_NOVOClick(Self);
  end;

end;

procedure TfrmComanda.edtProdutoEnter(Sender: TObject);
begin
  GerenCiaBotoes;
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nenhuma Comanda Selecionada Para Incluir Registro.');
    DBCtrlGrid1.SetFocus;
    exit;
  end
  else
  begin
    GerenCiaBotoes;
    InsertItemVenda;
  end;

end;

procedure TfrmComanda.edtProdutoExit(Sender: TObject);
var
aux: integer;
quant: String;
codigo,CodigoPesado,codigoInterno: string;
convertQuantFloat : Double;
PrimeiraLetra,ProdutoPesado : string;
ValorPesado : Double;
begin

 DM.cdsProduto.Close;
 DM.cdsProduto.Open;
  if DM.cdsMesaSTATUS.Value = 'R' then
  begin
    ShowMessage('Impossiv�l Incluir Registro, Mesa Est� em Recebimento. ');
    edtProduto.Clear;
    BB_ENCERRARClick(Self);
    Exit;
  end;
  if Enter = true then
  begin
    BB_ENCERRARClick(Self);
    Enter := False;
    Exit;
  end;

//  if PageDown = false then
//  begin
    if IsAphaNumerico(edtProduto.Text) then
    begin
//      PesquisaLetra;
    end
    else
    begin
    if multi = True then
    begin
      aux := 0;
      aux := Pos('*',edtProduto.Text);

      if aux <> 0 then
      begin
        aux := Pos('*',edtProduto.Text);

        quant := Copy(edtProduto.Text,1,aux-1);
        convertQuantFloat := StrToFloat(quant);
        if convertQuantFloat > 500 then
        begin
          ShowMessage('Quantidade N�o Permitida.');
          edtProduto.Clear;
          edtProduto.SetFocus;
          MULTI := False;
          Exit;
        end;
                codigo := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
                codigoInterno := Copy(edtProduto.Text,aux+1,Length(edtProduto.Text));
                PrimeiraLetra := Copy(codigo,1,1);
                if PrimeiraLetra = '2'  then
                begin
                  ProdutoPesado :='S';
                    CodigoPesado := Copy(edtProduto.Text, 3, 5);
                    ValorPesado := StrToFloat(Copy(edtProduto.Text,8,5))/100 -2;

                end
                else
                begin
                  //Codigo := edtProduto.Text;
                end;

                DM.cdsItemComanda.Open;
                DM.cdsItemComanda.Append;

                if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) or DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) then
                begin
                  DM.cdsItemComandaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                  DM.cdsItemComandaID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                  DM.cdsItemComandaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                  DM.cdsItemComandaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                  DM.cdsItemComandaREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                  DM.cdsItemComandaCODIGO.AsString             := DM.cdsProdutoCODIGO.AsString;
                  L_PRODUTO.Caption                            := DM.cdsProdutoDESCRICAO.AsString;
                  if ProdutoPesado = 'S' then
                  begin
                    DM.cdsItemComandaCD_BARRA.AsString           := edtProduto.Text;//DM.cdsProdutoCD_BARRA.AsString;
                    DM.cdsItemComandaVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemComandaID_COMANDA.AsInteger            := StrToInt(DBEdit1.Text);//DM.cdsComandaID_COMANDA.AsInteger;
                    quant := FloatToStr(ValorPesado / DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemComandaQUANT.AsFloat               := convertQuantFloat;
                    DBEdit10Exit(Self);
                  end
                  else
                  begin
                    DM.cdsItemComandaCD_BARRA.AsString           := codigo;//DM.cdsProdutoCD_BARRA.AsString;
                    DM.cdsItemComandaVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemComandaID_COMANDA.AsInteger            := StrToInt(DBEdit1.Text);//DM.cdsComandaID_COMANDA.AsInteger;
                    //quant := '1';
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemComandaQUANT.AsFloat               := convertQuantFloat;
                    DBEdit10Exit(Self);
                  end;
                end
                else
                begin
                  ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                              '                                     '+#13+
                              '   C�digo N�o Encontrado             '+#13+
                              '                                     ');
                  edtProduto.SetFocus;
                  edtProduto.Clear;
                end;

      end
      else
      begin
                PrimeiraLetra := Copy(codigo,1,1);
                if PrimeiraLetra = '2' then
                begin
                  ProdutoPesado :='S';
                    CodigoPesado := Copy(edtProduto.Text, 3, 5);
                    ValorPesado := StrToFloat(Copy(edtProduto.Text,8,5))/100;
                end
                else
                begin
                  //Codigo := edtProduto.Text;
                end;

                DM.cdsItemComanda.Open;
                DM.cdsItemComanda.Append;

                if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) then
                begin
                  DM.cdsItemComandaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                  DM.cdsItemComandaID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                  DM.cdsItemComandaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                  DM.cdsItemComandaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                  DM.cdsItemComandaREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                  DM.cdsItemComandaCODIGO.AsString             := DM.cdsProdutoCODIGO.AsString;
                  L_PRODUTO.Caption                            := DM.cdsProdutoDESCRICAO.AsString;


                  if ProdutoPesado = 'S' then
                  begin
                    DM.cdsItemComandaCD_BARRA.AsString           := edtProduto.Text;//DM.cdsProdutoCD_BARRA.AsString;
                    DM.cdsItemComandaVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemComandaID_COMANDA.AsInteger            := StrToInt(DBEdit1.Text);//DM.cdsComandaID_COMANDA.AsInteger;
                    quant := FloatToStr(ValorPesado / DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemComandaQUANT.AsFloat               := convertQuantFloat;
                    DBEdit10Exit(Self);
                  end
                  else
                  begin
                    DM.cdsItemComandaCD_BARRA.AsString           := CODIGO;//DM.cdsProdutoCD_BARRA.AsString;
                    DM.cdsItemComandaVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemComandaID_COMANDA.AsInteger            := DM.cdsComandaID_COMANDA.AsInteger;
                    //quant := '1';
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemComandaQUANT.AsFloat               := convertQuantFloat;
                    DBEdit10Exit(Self);
                  end;
                end
                else
                begin
                  ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                              '                                     '+#13+
                              '   C�digo N�o Encontrado             '+#13+
                              '                                     ');
                  edtProduto.Clear;
                end;
      end;
      end
      else
      begin
        if multi = False then
        begin
                codigo := edtProduto.Text;
                codigoInterno := edtProduto.Text;
                PrimeiraLetra := Copy(codigo,1,1);
                if PrimeiraLetra = '2' then
                begin
                  ProdutoPesado :='S';
                    CodigoPesado := Copy(edtProduto.Text, 3, 5);
                    ValorPesado := StrToFloat(Copy(edtProduto.Text,8,5))/100;
                end
                else
                begin
                  //Codigo := edtProduto.Text;
                end;

                DM.cdsItemComanda.Open;
                DM.cdsItemComanda.Append;

                if DM.cdsProduto.Locate('CD_BARRA',codigo,[]) or DM.cdsProduto.Locate('CD_BARRA',CodigoPesado,[]) OR DM.cdsProduto.Locate('REFERENCIA',codigoInterno,[]) then
                begin
                  DM.cdsItemComandaID_PRODUTO.AsInteger        := DM.cdsProdutoID_PRODUTO.AsInteger;
                  DM.cdsItemComandaID_GRUPO_PRODUTO.AsInteger  := DM.cdsProdutoID_GRUPO_PRODUTO.AsInteger;
                  DM.cdsItemComandaDESCRICAO.AsString          := DM.cdsProdutoDESCRICAO.AsString;
                  DM.cdsItemComandaUNIDADE.AsString            := DM.cdsProdutoUNIDADE.AsString;
                  DM.cdsItemComandaREFERENCIA.AsString         := DM.cdsProdutoREFERENCIA.AsString;
                  DM.cdsItemComandaCODIGO.AsString             := DM.cdsProdutoCODIGO.AsString;
                  L_PRODUTO.Caption                            := DM.cdsProdutoDESCRICAO.AsString;


                  if ProdutoPesado = 'S' then
                  begin
                    DM.cdsItemComandaCD_BARRA.AsString           := edtProduto.Text;//DM.cdsProdutoCD_BARRA.AsString;
                    DM.cdsItemComandaVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemComandaID_COMANDA.AsInteger            := StrToInt(DBEdit1.Text);//DM.cdsComandaID_COMANDA.AsInteger;
                    quant :=FloatToStr(ValorPesado/DM.cdsProdutoVL_VENDA_ATAC.AsFloat);
                   // DM.cdsItemComandaVL_TOTAL.AsFloat := StrToFloat(quant)* DM.cdsProdutoVL_VENDA_ATAC.AsFloat;
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemComandaQUANT.AsFloat               := convertQuantFloat;
                    DBEdit10Exit(Self);
                  end
                  else
                  begin
                    DM.cdsItemComandaCD_BARRA.AsString           := CODIGO;//DM.cdsProdutoCD_BARRA.AsString;
                    DM.cdsItemComandaVL_UNIT.AsFloat             := DM.cdsProdutoVL_VENDA_VARE.AsFloat;
                    DM.cdsItemComandaID_COMANDA.AsInteger            :=StrToInt(DBEdit1.Text);// DM.cdsComandaID_COMANDA.AsInteger;
                    quant := '1';
                    convertQuantFloat :=StrToFloat(StringReplace(quant,'.','',[rfReplaceAll]));
                    DM.cdsItemComandaQUANT.AsFloat               := convertQuantFloat;
                    DBEdit10Exit(Self);
                  end;
                  end
                  else
                  begin
                    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                                '                                     '+#13+
                                '   C�digo N�o Encontrado             '+#13+
                                '                                     ');
                    edtProduto.SetFocus;
                    edtProduto.Clear;

                  end;
        end;
    end;
  end;

end;

procedure TfrmComanda.edtProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  Var TimeOut : Integer ;

begin
  if Key = Vk_f1 then
  begin
    PesquisaProduto;
  end;

  if Key = Vk_f4 then
  begin
    //PesquisaProduto;
    //ShowMessage( 'Captura Peso Balan�a!!!!!');
    //edtProduto.Text := '50*7898929767912';
     if acbrBal1.Ativo then
        ACBrBAL1.Desativar;
     ACBrBAL1.Ativar;
     try
        TimeOut := StrToInt( edtTimeOut.Text ) ;
     except
        TimeOut := 2000 ;
     end ;
     ACBrBAL1.LePeso( TimeOut );
     //n�o tinha
     ACBrBAL1.Desativar;
     if PesoOK = True then
     begin
      edtProduto.Text := lblPeso.Caption+'*002500';
      MULTI := True;
      //n�o tinha
      ACBrBAL1.Desativar;
      edtProdutoExit(Self);
     end
     else
     begin
       //n�o tinha
       ACBrBAL1.Desativar;
       edtProduto.SetFocus;
     end;
     //n�o tinha
     ACBrBAL1.Desativar;
  end;

  if KEY = VK_RETURN then
  begin
    if edtProduto.Text = '' then
    begin
      Enter := True;
      PageDown := False;
    end
    else
    begin
      Enter := False;
    end;
  end;

end;

procedure TfrmComanda.edtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    //SpeedButton5Click(self);
  end;

  if key = #8 then
  begin
    MULTI := False;
  end;
  if key = #46 then
  begin
    MULTI := False;
  end;
  if key = #32 then
  begin
    MULTI := False;
  end;
  if key = '' then
  begin
    MULTI := False;
  end;

if key in ['*','x','X'] then
begin
  if Length(edtProduto.Text) <=0 then
  begin
    key := #0;
    exit;
  end;

  if multi = False then
    multi := True
  else
  begin
    key := #0;
    exit;
  end;
end;
if not (key in ['0'..'9',#8,'*',',','.','X','x','a'..'z','A'..'Z',' ']) then
key := #0;

end;

procedure TfrmComanda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ACBrBAL1.Ativo then
    ACBrBAL1.Desativar;
  Action := caFree;
  DM.cdsMesa.Close;
  frmComanda := nil;

end;

procedure TfrmComanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 82 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_GRAVARClick(Self);
//    end;
  end;

  if key = 107 then
  begin
      BB_EDITARClick(Self);
  end;

  if key = 70 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_CANCELARClick(Self);
//    end;
  end;
  if key = 78 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      BB_NOVOClick(Self);
//    end;
  end;

  if key = 80 then
  begin
//    if GB_PAGAMENTO.Visible = False then
//    begin
      bb_imprimir_comandaClick(Self);
//    end;
  end;

{  if key = 116 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      bb_confirmaClick(Self);
    end;
  end;

  if key = 117 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      SpeedButton2Click(Self);
    end;
  end;

  if key = 118 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      BB_IMPRIMIRClick(Self);
    end;
  end;

  if key = 119 then
  begin
    if GB_PAGAMENTO.Visible = True then
    begin
      SpeedButton4Click(Self);
    end;
  end; }

end;

procedure TfrmComanda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmComanda.FormShow(Sender: TObject);
begin
  CaminhoImpressora := DM.IMPRESSORA;
  CAIXA := StrToInt(DM.CAIXA);
  Balanca :=DM.BALANCA;
//
  if Balanca = 'SIM' then
  begin
    ConectarBalanca;
  end;

  if frmMenu.recInformacoes.Nivel = 2 then
  begin
    BB_GRAVAR.Visible := False;
  end;
//
  if frmMenu.recInformacoes.Nivel = 3 then
  begin
    Caption := Caption + '      '+'Usu�rio de Caixa Logado ('+frmMenu.recInformacoes.nm_Usuario+')';
  end
  else
  begin
    Caption := Caption + '      '+'Usu�rio Logado ('+frmMenu.recInformacoes.nm_Usuario+')';
  end;

  Timer1.Enabled := True;
  DM.cdsMesa.Close;
  DM.cdsMesa.Open;
  DM.cdsMesa.Refresh;


  DBCtrlGrid1.SetFocus;

  GerenCiaBotoes;

end;

procedure TfrmComanda.GerenCiaBotoes;
begin
  BB_NOVO.Enabled    := not (DM.cdsComanda.State in dsEditModes);
  BB_GRAVAR.Enabled  :=  BB_NOVO.Enabled;
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled   := BB_NOVO.Enabled;
  bb_imprimir_comanda.Enabled      := BB_NOVO.Enabled and not (DM.cdsItemComanda.IsEmpty);

  if (DM.cdsItemComanda.State in dsEditModes) then
  begin
    BB_CANCELAR.Enabled := False;
    BB_EDITAR.Enabled   := False;
    BB_GRAVAR.Enabled   := False;
    bb_imprimir_comanda.Enabled := False;
    BB_NOVO.Enabled    := False;
  end
  else
  begin
    BB_CANCELAR.Enabled := True;
    BB_EDITAR.Enabled   := True;
    BB_GRAVAR.Enabled   := True;
    bb_imprimir_comanda.Enabled := True;
    BB_NOVO.Enabled    := True;
  end;

  GB_COMANDA.Enabled := not BB_NOVO.Enabled;

end;

procedure TfrmComanda.ImprimirComanda;
var
  Arquivo : TextFile;
  iCount, iCount2, iProdutos, iQuantas, iVezes,iPag: integer;
  valorPago,ValorTroco,dValor,dDesconto,dLiquido,TotalGeral : Double;
  convertFloat,convertTroco : Double;
begin
  Memo2.Clear;

  with DM do
  begin
      dValor :=0;
    iQuantas :=0;
    dDesconto:=0;
    dLiquido :=0;
    iProdutos := cdsItemComanda.RecordCount;
    iVezes := Trunc(iProdutos/10000);
    if Round(iProdutos) > 0 then
      iVezes := iVezes +1;
    cdsItemComanda.First;
    for iCount := 1 to iVezes do
    begin

    //  Memo2.Lines := Screen.Fonts; //LISTA TODOS OS TIPOS DE FONTES
    //  Memo2.Font.Name := 'ARIAL'; // ESCOLHE O TIPO DA FONTE
    //  Memo2.Font.Handle := 20;   //TAMANHO DA FONTE


      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('Comanda N. '+DefineTamanhoString(cdsComandaNR_COMANDA.AsString,8,0)
        +'  MESA :  '+DefineTamanhoString(cdsComandaID_MESA.AsString,3,0));
      Memo2.Lines.Add('GAR�OM   :  '+frmMenu.recInformacoes.nm_Usuario);

      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('DATA ...: '+DefineTamanhoString(FormatDateTime('DD/MM/YYYY',cdsComandaDT_ABERTURA.AsDateTime),10,0)+'   Hora Impress�o..:'+TimeToStr(Time));

                                       //Cabe�alho de Clientes
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('CLIENTE.....: '+DefineTamanhoString(cdsComandaR_SOCIAL.AsString,16,0));
      Memo2.Lines.Add('HORA ENTRADA: '+DefineTamanhoString(FormatDateTime('HH:MM:SS',cdsComandaHR_ABERTURA.AsDateTime),8,0)+
                      'HORA SAIDA..: '+DefineTamanhoString(FormatDateTime('HH:MM:SS',cdsComandaHR_FECHAMENTO.AsDateTime),8,0));
      Memo2.Lines.Add(' ');
      Memo2.Lines.Add('                  *** S E M   V A L O R   F I S C A L ***                     ');
      Memo2.Lines.Add('-----------------------------------------------------------------------');
      Memo2.Lines.Add('ITEM CODIGO DESCRICAO QTD VL_UNIT(R$) VL_ITEM(R$)     ');
      Memo2.Lines.Add('-----------------------------------------------------------------------');

      //INICIA OS PRODUTOS
      FOR iCount2 := 1 to 10000 do
      begin
        inc(iQuantas);
        if iQuantas <= iProdutos then
        begin
          Memo2.Lines.Add(DefineTamanhoString(FormatFloat('###000',iQuantas),3,0)+ ' '+DefineTamanhoString(cdsItemComandaCD_BARRA.AsString,15,0)
           +''+DefineTamanhoString(cdsItemComandaDESCRICAO.AsString,25,0));
           Memo2.Lines.Add('          '+DefineTamanhoString(FormatFloat('###,###,##0.000',cdsItemComandaQUANT.AsFloat),5,1)+' '
            +DM.cdsItemComandaUNIDADE.AsString +' X '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemComandaVL_UNIT.AsFloat),6,1)
            +'              '+DefineTamanhoString(FormatFloat('###,###,##0.00',cdsItemComandaVL_TOTAL.AsFloat),8,1));

          dValor :=  dValor + cdsItemComandaVL_TOTAL.AsFloat;
          dDesconto := cdsComandaVL_DESC.AsFloat;
          TotalGeral :=  cdsComandaVL_TOTAL.AsFloat;
          dLiquido   := cdsComandaVL_LIQ.AsFloat;
          cdsItemComanda.Next;
        end
        else
        begin
//          F_MENU_CLIENTE.Memo1.Lines.Add(#27#18+' ');
        end;
      end;
        Memo2.Lines.Add('');

        //        Memo2.Lines.Strings[1] := Memo2.Lines.Strings[1] + 'TEXTO ADICIONAL';
        Memo2.Lines.Add('-----------------------------------------------------------------------');
        Memo2.Lines.Add('TOTAL R$.........:'+DefineTamanhoString(FormatFloat('###,###,##0.00',TotalGeral),10,1));
        Memo2.Lines.Add('-----------------------------------------------------------------------');

        Memo2.Lines.Add('                         OBRIGADO PELA PREFER�NCIA     ');
        Memo2.Lines.Add('                                      ');
        Memo2.Lines.Add('                        **    V O L T E    S E M P R E  ** ');

        dValor := 0;
      end;
  end;
  AssignFile(Arquivo,CaminhoImpressora);
  Rewrite(Arquivo);
  ImprimirMemo(Memo2);
  CloseFile(Arquivo);

end;

procedure TfrmComanda.ImprimirMemo(Memo: TMemo);
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

procedure TfrmComanda.InsertItemVenda;
begin
  MULTI := False;
  DM.cdsItemComanda.Close;
  DM.cdsItemComanda.Open;
  DM.cdsItemComanda.Append;
  GerenCiaBotoes;

  edtProduto.Clear;
  edtProduto.SetFocus;
  MULTI := False;

end;

function TfrmComanda.IsAphaNumerico(S: string): Boolean;
var
  i: Integer;
begin
  for i := 1 to Length(S) do
    if (S[i] in ['A' .. 'Z']) then
    begin
      Result := True;
      Exit;
    end;
  Result := False;
end;

procedure TfrmComanda.PageControl1Change(Sender: TObject);
begin
  ComandasAbertas;
end;

procedure TfrmComanda.PesquisaProduto;
begin
  DM.cdsItemComanda.Cancel;
  DM.cdsProduto.Close;
  DM.cdsProduto.Open;
  if Pesquisa(DM.cdsProduto,['DESCRICAO','CD_BARRA','VL_VENDA_VARE'],['Descri��o do Produto''C�d.Barra','Valor'],
    [30,13,10],'','','','','Produto','Produto') then
  begin
    DM.cdsItemComanda.Append;
    edtProduto.Text                               := edtProduto.Text+DM.cdsProdutoCD_BARRA.AsString;
    edtProduto.SetFocus;
    edtProdutoExit(Self);
  end;

end;

procedure TfrmComanda.SB_CLIENTEClick(Sender: TObject);
begin
  DM.CdsCliente.Close;
  DM.CdsCliente.Open;
  if Pesquisa(DM.CdsCliente,['R_SOCIAL','ID_CLIENTE'],
                            ['',''],[30,8],'','0','','Cliente','Cliente','Cliente') then
  begin
    DM.cdsComandaID_CLIENTE.AsInteger     := DM.CdsClienteID_CLIENTE.AsInteger;
    DM.cdsComandaR_SOCIAL.AsString        := DM.CdsClienteR_SOCIAL.AsString;
    DBEdit23.SetFocus;
  end;

end;

procedure TfrmComanda.SB_VENDEDORClick(Sender: TObject);
begin
  DM.cdsVendedor.Close;
  DM.cdsVendedor.Open;
  if Pesquisa(DM.cdsVendedor,['NOME','ID_VENDEDOR'],
                            ['',''],[30,8],'','0','','Vendedor','Vendedor','Vendedor') then
  begin
    DM.cdsComandaID_VENDEDOR.AsInteger    := DM.cdsVendedorID_VENDEDOR.AsInteger;
    DM.cdsComandaVENDEDOR.AsString        := DM.cdsVendedorNOME.AsString;
    DBEdit22Enter(Self);
  end;

end;

procedure TfrmComanda.SomaTotais;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames :='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(IP.VL_UNIT * IP.QUANT)'+
                                ' FROM TB_ITEM_COMANDA IP '+
                                ' WHERE IP.ID_COMANDA = '+DM.cdsComandaID_COMANDA.AsString;
                                //COLOCAR LOJA TAMBEM
  DM.cdsDinamica.Open;

  DM.cdsComanda.Edit;
  DM.cdsComandaVL_TOTAL.AsFloat := DM.cdsDinamica.Fields[0].AsFloat;
  DM.cdsComandaVL_LIQ.AsFloat   := (DM.cdsComandaVL_TOTAL.AsFloat - DM.cdsComandaVL_DESC.AsFloat)+(DM.cdsComandaVL_ACRES.AsFloat + DM.cdsComandaVL_SERVICO.AsFloat);
  DM.cdsComanda.ApplyUpdates(0);


end;

procedure TfrmComanda.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmComanda.Timer1Timer(Sender: TObject);
begin
  DM.cdsMesa.Refresh;
  DM.cdsComanda.Refresh;
  DM.cdsItemComanda.Refresh;
end;

end.