unit uCadAcabamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadAcabamento = class(TForm)
    PCUPOM: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
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
    SpeedButton3: TSpeedButton;
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
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
  public
    { Public declarations }
  end;

var
  frmCadAcabamento: TfrmCadAcabamento;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadAcabamento.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsAcabamento.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsAcabamento.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadAcabamento.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadAcabamento.FormShow(Sender: TObject);
begin
  DM.cdsAcabamento.Open;
  GerenciaBotoes;
end;

procedure TfrmCadAcabamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadAcabamento.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsAcabamento.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsAcabamento.FieldByName
    (DM.cdsAcabamento.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsAcabamento.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadAcabamento.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmCadAcabamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsAcabamento.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadAcabamento := nil;
  end;

end;

procedure TfrmCadAcabamento.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsAcabamento.Insert;

  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadAcabamento.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsAcabamento.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadAcabamento.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsAcabamento.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadAcabamento.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Acabamento ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsAcabamento.Delete;
    DM.cdsAcabamento.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadAcabamento.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Acabamento';
  frmPesquisaPadrao.CDS := DM.cdsAcabamento;
  frmPesquisaPadrao.Tabela := 'TB_ACABAMENTO ' ;
  frmPesquisaPadrao.CampoBusca  := 'NOME_ACABAMENTO';
  frmPesquisaPadrao.CampoBusca2 := 'ID_ACABAMENTO';
  frmPesquisaPadrao.CampoChave := 'NOME_ACABAMENTO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Acabamentos';
  frmPesquisaPadrao.Sql            := ' SELECT *  ';
//                                      ' FROM TB_FORNECEDOR F'+
//                                      ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
//                                      ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_ACABAMENTO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_ACABAMENTO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;


  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

end;

procedure TfrmCadAcabamento.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsAcabamento.Close;
//    Close;
//  end
//  else
//  begin
//    if Application.MessageBox('Existe(m) Grupo(s) de Produto(s) sem importar, Deseja Importar Grupo(s) de Produto(s) Agora?','Aten��o',MB_OK+MB_YESNO)= idyes then
//    begin
//      BB_EXPORTARClick(Self);
//    end
//    else
//    begin
//      DM.cdsAcabamento.Close;
//      Close;
//    end;
//  end;

end;

procedure TfrmCadAcabamento.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_ACABAMENTO) FROM TB_ACABAMENTO ';
    DM.cdsDinamica.Open;

    DM.cdsAcabamentoID_ACABAMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsAcabamento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsAcabamento.ApplyUpdates(0);
//      DM.cdsAcabamento.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsAcabamento.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsAcabamento.ApplyUpdates(0);
      DM.cdsAcabamento.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.



