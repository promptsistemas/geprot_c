unit uCadCategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadCategorias = class(TForm)
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
  frmCadCategorias: TfrmCadCategorias;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm, uCadGrupo, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadCategorias.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsCategoria.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsCategoria.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadCategorias.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCategorias.FormShow(Sender: TObject);
begin
  DM.cdsCategoria.Open;
  GerenciaBotoes;
end;

procedure TfrmCadCategorias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadCategorias.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsCategoria.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsCategoria.FieldByName
    (DM.cdsCategoria.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsCategoria.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadCategorias.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmCadCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsCategoria.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadCategorias := nil;
  end;

end;

procedure TfrmCadCategorias.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsCategoria.Insert;

  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadCategorias.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsCategoria.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadCategorias.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsCategoria.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadCategorias.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Grupo ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsCategoria.Delete;
    DM.cdsCategoria.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadCategorias.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Categoria';
  frmPesquisaPadrao.CDS := DM.cdsCategoria;
  frmPesquisaPadrao.Tabela := 'TB_CATEGORIA C';
  frmPesquisaPadrao.CampoBusca  := 'C.NOME_CATEGORIA';
  frmPesquisaPadrao.CampoBusca2 := 'C.ID_CATEGORIA';
  frmPesquisaPadrao.CampoChave  := 'C.NOME_CATEGORIA';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Caegoria';
  frmPesquisaPadrao.Sql            := ' SELECT C.ID_CATEGORIA,C.NOME_CATEGORIA ';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Nome Categoria';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_CATEGORIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 300;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_CATEGORIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 100;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

end;

procedure TfrmCadCategorias.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsCategoria.Close;
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
//      DM.cdsCategoria.Close;
//      Close;
//    end;
//  end;

end;

procedure TfrmCadCategorias.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_CATEGORIA) FROM TB_CATEGORIA ';
    DM.cdsDinamica.Open;

    DM.cdsCategoriaID_CATEGORIA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsCategoria.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsCategoria.ApplyUpdates(0);
      DM.cdsCategoria.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsCategoria.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsCategoria.ApplyUpdates(0);
      DM.cdsCategoria.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.
