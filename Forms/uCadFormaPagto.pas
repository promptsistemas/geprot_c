unit uCadFormaPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadFormaPagto = class(TForm)
    PCUPOM: TPanel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    BB_CANCELAR: TBitBtn;
    Panel1: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    Label22: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
  public
    { Public declarations }
  end;

var
  frmCadFormaPagto: TfrmCadFormaPagto;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadFormaPagto.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsFormaPagamento.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsFormaPagamento.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadFormaPagto.FormShow(Sender: TObject);
begin
  DM.cdsFormaPagamento.Open;
  GerenciaBotoes;
end;

procedure TfrmCadFormaPagto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadFormaPagto.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsFormaPagamento.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsFormaPagamento.FieldByName
    (DM.cdsFormaPagamento.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo não for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsFormaPagamento.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadFormaPagto.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TfrmCadFormaPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsFormaPagamento.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadFormaPagto := nil;
  end;

end;

procedure TfrmCadFormaPagto.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsFormaPagamento.Insert;
  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadFormaPagto.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsFormaPagamento.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadFormaPagto.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsFormaPagamento.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadFormaPagto.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Grupo ?','Confirmação',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsFormaPagamento.Delete;
    DM.cdsFormaPagamento.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo Não Excluído');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadFormaPagto.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsFormaPagamento,['DESCRICAO_PAGAMENTO'],['Forma Pagamento'],
    [20],'','','','','Forma Pagamento','Forma Pagamento');
end;

procedure TfrmCadFormaPagto.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadFormaPagto.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_FORMA_PAGAMENTO) FROM TB_FORMA_PAGAMENTO ';
    DM.cdsDinamica.Open;

    DM.cdsFormaPagamentoID_FORMA_PAGAMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsFormaPagamento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema não conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsFormaPagamento.ApplyUpdates(0);
      DM.cdsFormaPagamento.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsFormaPagamento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema não conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsFormaPagamento.ApplyUpdates(0);
      DM.cdsFormaPagamento.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.
