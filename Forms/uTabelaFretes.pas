unit uTabelaFretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmTabelaFretes = class(TForm)
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
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
  public
    { Public declarations }
  end;

var
  frmTabelaFretes: TfrmTabelaFretes;
  Tipo : String;

implementation

uses U_LIB, UD_PESQUISA, uDm, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmTabelaFretes.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsTabelaFretes.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsTabelaFretes.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmTabelaFretes.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Open;
  Pesquisa(DM.cdsGrupoEmpresa,['NOME_DO_GRUPO','ID_GRUPO_EMPRESA'],['Nome do Grupo','C�digo'],[40,4],'','','','','Grupo Empresa','Grupo Empresa');

  DM.cdsTabelaFretesID_GRUPO.AsInteger := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
  DM.cdsTabelaFretesNOME_DO_GRUPO.AsString     := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
  DBEdit3.SetFocus;
end;

procedure TfrmTabelaFretes.SpeedButton2Click(Sender: TObject);
begin
  DM.cdsTransportadora.Open;
  Pesquisa(DM.cdsTransportadora,['NOME_TRANSPORTADORA','ID_TRANSPORTADORA'],['Nome da Transportadora','C�digo'],[40,4],'','','','','Transportadora','Transportadora');

  DM.cdsTabelaFretesID_TRANSPORTADORA.AsInteger := DM.cdsTransportadoraID_TRANSPORTADORA.AsInteger;
  DM.cdsTabelaFretesNOME_TRANSPORTADORA.AsString:= DM.cdsTransportadoraNOME_TRANSPORTADORA.AsString;
  DBEdit5.SetFocus;

end;

procedure TfrmTabelaFretes.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTabelaFretes.FormShow(Sender: TObject);
begin
  DM.cdsTabelaFretes.Open;
  GerenciaBotoes;
end;

procedure TfrmTabelaFretes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmTabelaFretes.DBEdit1Exit(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Open;
  if DM.cdsGrupoEmpresa.Locate('ID_GRUPO_EMPRESA',DBEdit1.Text,[]) then
  begin
    DM.cdsTabelaFretesID_GRUPO.AsInteger       := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
    DM.cdsTabelaFretesNOME_DO_GRUPO.AsString   := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
    DBEdit3.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Grupo N�o Encontrado         '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end;

end;

procedure TfrmTabelaFretes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton1Click(self);
  end;

end;

procedure TfrmTabelaFretes.DBEdit3Exit(Sender: TObject);
begin
  DM.cdsTransportadora.Open;
  if DM.cdsTransportadora.Locate('ID_TRANSPORTADORA',DBEdit3.Text,[]) then
  begin
    DM.cdsTabelaFretesID_TRANSPORTADORA.AsInteger  := DM.cdsTransportadoraID_TRANSPORTADORA.AsInteger;
    DM.cdsTabelaFretesNOME_TRANSPORTADORA.AsString := DM.cdsTransportadoraNOME_TRANSPORTADORA.AsString;
    DBEdit5.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Transportadora N�o Encontrada     '+#13+
                '                                     ');
    SpeedButton2Click(Self);
  end;

end;

procedure TfrmTabelaFretes.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton2Click(self);
  end;

end;

procedure TfrmTabelaFretes.DBEdit5Exit(Sender: TObject);
begin
  BB_GRAVAR.SetFocus;
end;

procedure TfrmTabelaFretes.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsTabelaFretes.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsTabelaFretes.FieldByName
    (DM.cdsTabelaFretes.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsTabelaFretes.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmTabelaFretes.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmTabelaFretes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsTabelaFretes.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmTabelaFretes := nil;
  end;

end;

procedure TfrmTabelaFretes.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsTabelaFretes.Insert;

  GerenciaBotoes;
  DBEdit1.SetFocus;

end;

procedure TfrmTabelaFretes.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsTabelaFretes.Edit;
  GerenciaBotoes;
  DBEdit1.SetFocus;
end;

procedure TfrmTabelaFretes.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsTabelaFretes.Cancel;
  GerenciaBotoes;
end;

procedure TfrmTabelaFretes.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Grupo ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsTabelaFretes.Delete;
    DM.cdsTabelaFretes.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Grupo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmTabelaFretes.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.L_PESQUISA.Caption := 'Pesquisa : Consulta de Tabela Frete';
  frmPesquisaPadrao.TB_PESQUISA := 'Frete';
  frmPesquisaPadrao.CDS := DM.cdsTabelaFretes;
  frmPesquisaPadrao.Tabela := 'TB_FRETE F ';
  frmPesquisaPadrao.CampoBusca  := 'GE.NOME_DO_GRUPO';
  frmPesquisaPadrao.CampoBusca2 := 'T.NOME_TRANSPORTADORA';
  frmPesquisaPadrao.CampoChave := 'F.VL_FRETE';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Tabela Frete';
  frmPesquisaPadrao.Sql            := ' SELECT F.ID_FRETE, F.ID_GRUPO, F.ID_TRANSPORTADORA, F.VL_FRENTE, GE.NOME_DO_GRUPO, T.NOME_TRANSPORTADORA ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Nome Grupo';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_DO_GRUPO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Transportadora';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'NOME_TRANSPORTADORA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'Valor R$';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'VL_FRENTE';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

end;

procedure TfrmTabelaFretes.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsTabelaFretes.Close;
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
//      DM.cdsTabelaFretes.Close;
//      Close;
//    end;
//  end;



end;

procedure TfrmTabelaFretes.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_FRETE) FROM TB_FRETE ';
    DM.cdsDinamica.Open;

    DM.cdsTabelaFretesID_FRETE.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsTabelaFretes.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsTabelaFretes.ApplyUpdates(0);
      DM.cdsTabelaFretes.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsTabelaFretes.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsTabelaFretes.ApplyUpdates(0);
      DM.cdsTabelaFretes.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

end.

