unit uCadGrupoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadGrupoEmpresa = class(TForm)
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
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
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
  frmCadGrupoEmpresa: TfrmCadGrupoEmpresa;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadGrupoEmpresa.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsGrupoEmpresa.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsGrupoEmpresa.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadGrupoEmpresa.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadGrupoEmpresa.FormShow(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Open;
  GerenciaBotoes;
end;

procedure TfrmCadGrupoEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadGrupoEmpresa.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsGrupoEmpresa.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsGrupoEmpresa.FieldByName
    (DM.cdsGrupoEmpresa.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsGrupoEmpresa.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadGrupoEmpresa.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmCadGrupoEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsGrupoEmpresa.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadGrupoEmpresa := nil;
  end;

end;

procedure TfrmCadGrupoEmpresa.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsGrupoEmpresa.Insert;
  DM.cdsGrupoEmpresaDT_CADASTRO.AsDateTime := Now;

  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadGrupoEmpresa.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsGrupoEmpresa.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadGrupoEmpresa.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadGrupoEmpresa.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Grupo ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsGrupoEmpresa.Delete;
    DM.cdsGrupoEmpresa.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadGrupoEmpresa.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Grupo Empresa';
  frmPesquisaPadrao.CDS := DM.cdsGrupoEmpresa;
  frmPesquisaPadrao.Tabela := 'TB_GRUPO_EMPRESA GP ';
  frmPesquisaPadrao.CampoBusca  := 'GP.NOME_DO_GRUPO';
  frmPesquisaPadrao.CampoBusca2 := 'GP.RESPONSAVEL';
  frmPesquisaPadrao.CampoChave := 'GP.EMAIL';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Grupo Empresa';
  frmPesquisaPadrao.Sql            := ' SELECT GP.* ';
//                                      ' FROM TB_FORNECEDOR F'+
//                                      ' JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'+
//                                      ' LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Nome Grupo';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_DO_GRUPO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Resposav�l';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'RESPONSAVEL';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'e-mail';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'EMAIL';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

end;

procedure TfrmCadGrupoEmpresa.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsGrupoEmpresa.Close;
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
//      DM.cdsGrupoEmpresa.Close;
//      Close;
//    end;
//  end;



end;

procedure TfrmCadGrupoEmpresa.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_GRUPO_EMPRESA) FROM TB_GRUPO_EMPRESA ';
    DM.cdsDinamica.Open;

    DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsGrupoEmpresa.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsGrupoEmpresa.ApplyUpdates(0);
      DM.cdsGrupoEmpresa.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsGrupoEmpresa.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsGrupoEmpresa.ApplyUpdates(0);
      DM.cdsGrupoEmpresa.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.

