unit uCadPlanoPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadPlanosPagto = class(TForm)
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
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
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
    procedure BB_CANCELARMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
  public
    { Public declarations }
  end;

var
  frmCadPlanosPagto: TfrmCadPlanosPagto;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadPlanosPagto.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsPlanoPagamento.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsPlanoPagamento.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadPlanosPagto.FormShow(Sender: TObject);
begin
  DM.cdsPlanoPagamento.Open;
  GerenciaBotoes;
end;

procedure TfrmCadPlanosPagto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadPlanosPagto.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsPlanoPagamento.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsPlanoPagamento.FieldByName
    (DM.cdsPlanoPagamento.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo não for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsPlanoPagamento.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadPlanosPagto.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmCadPlanosPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsPlanoPagamento.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadPlanosPagto := nil;
  end;

end;

procedure TfrmCadPlanosPagto.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsPlanoPagamento.Insert;
  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadPlanosPagto.BB_CANCELARMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Tipo := 'Cancelar';
end;

procedure TfrmCadPlanosPagto.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsPlanoPagamento.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadPlanosPagto.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsPlanoPagamento.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadPlanosPagto.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Grupo ?','Confirmação',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsPlanoPagamento.Delete;
    DM.cdsPlanoPagamento.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo Não Excluído');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadPlanosPagto.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsPlanoPagamento,['DESCRICAO_PAGAMENTO'],['Planos Pagamento'],
    [20],'','','','','Planos Pagamento','Planos Pagamento');
end;

procedure TfrmCadPlanosPagto.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPlanosPagto.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_PLANO_PAGAMENTO) FROM TB_PLANO_PAGAMENTO ';
    DM.cdsDinamica.Open;

    DM.cdsPlanoPagamentoID_PLANO_PAGAMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsPlanoPagamento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema não conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsPlanoPagamento.ApplyUpdates(0);
      DM.cdsPlanoPagamento.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsPlanoPagamento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema não conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsPlanoPagamento.ApplyUpdates(0);
      DM.cdsPlanoPagamento.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.
