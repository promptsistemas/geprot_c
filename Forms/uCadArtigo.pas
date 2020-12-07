unit uCadArtigo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db,
  FMTBcd, SqlExpr, DBClient, Provider,ComCtrls ;

type
  TfrmCadArtigo = class(TForm)
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
    qMateriaPrima: TSQLQuery;
    dspMateriaPrima: TDataSetProvider;
    cdsMateriaPrima: TClientDataSet;
    dsMateriaPrima: TDataSource;
    qMateriaPrimaID_MATERIA: TIntegerField;
    qMateriaPrimaNOME_MATERIA: TStringField;
    qMateriaPrimaPERC_FIO: TFMTBCDField;
    cdsMateriaPrimaID_MATERIA: TIntegerField;
    cdsMateriaPrimaNOME_MATERIA: TStringField;
    cdsMateriaPrimaPERC_FIO: TFMTBCDField;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit26: TDBEdit;
    Label19: TLabel;
    DBEdit27: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label29: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Acabamento: TTabSheet;
    Panel2: TPanel;
    Label12: TLabel;
    Panel3: TPanel;
    Label13: TLabel;
    P_BOTOES2: TPanel;
    BB_NOVO2: TBitBtn;
    BB_ALTERAR2: TBitBtn;
    BB_CANCELAR2: TBitBtn;
    BB_GRAVAR2: TBitBtn;
    BB_EXCLUIR2: TBitBtn;
    P_ACABAMENTO1: TPanel;
    BB_INCLUIR_ACAB: TBitBtn;
    BB_EDIT_ACAB: TBitBtn;
    BB_CANC_ACAB: TBitBtn;
    BB_GRAVAR_ACAB: TBitBtn;
    BB_EXC_ACAB: TBitBtn;
    DBGrid1: TDBGrid;
    P_PRODUTOS: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    DBText2: TDBText;
    DBGrid3: TDBGrid;
    P_ACABAMENTO: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
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
    procedure BB_NOVO2Click(Sender: TObject);
    procedure BB_ALTERAR2Click(Sender: TObject);
    procedure BB_CANCELAR2Click(Sender: TObject);
    procedure BB_GRAVAR2Click(Sender: TObject);
    procedure BB_EXCLUIR2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Enter(Sender: TObject);
    procedure BB_CANCELAR2MouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure BB_INCLUIR_ACABClick(Sender: TObject);
    procedure BB_EDIT_ACABClick(Sender: TObject);
    procedure BB_CANC_ACABClick(Sender: TObject);
    procedure BB_GRAVAR_ACABClick(Sender: TObject);
    procedure BB_EXC_ACABClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
    Procedure GerenciaBotoes2;
    Procedure GerenciaBotoes3;
    Procedure SomaPercFio;
    Procedure Pesquisa;
  public
    { Public declarations }
  end;

var
  frmCadArtigo: TfrmCadArtigo;
  Tipo,Acao,TpAcab : String;
  iTotal, iSomaTotais, qtAnterior : Double;

implementation

uses U_LIB, UD_PESQUISA, uDm, uCadGrupo, uPesquisaPadrao;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadArtigo.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsArtigo.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsArtigo.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  //BB_EXPORTAR.Enabled:= BB_NOVO.Enabled;
  PCUPOM.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadArtigo.GerenciaBotoes2;
begin
  BB_NOVO2.Enabled := not (DM.cdsMateriaPrimaArtigo.State in dsEditModes);
  BB_GRAVAR2.Enabled := NOT BB_NOVO2.Enabled;
  BB_EXCLUIR2.Enabled := BB_NOVO2.Enabled and not (DM.cdsMateriaPrimaArtigo.IsEmpty);
  BB_CANCELAR2.Enabled := BB_GRAVAR2.Enabled;
  BB_ALTERAR2.Enabled := BB_EXCLUIR2.Enabled;
  P_PRODUTOS.Enabled := not BB_NOVO2.Enabled;
end;

procedure TfrmCadArtigo.GerenciaBotoes3;
begin
  BB_INCLUIR_ACAB.Enabled := not (DM.cdsAcabamentoArtigo.State in dsEditModes);
  BB_GRAVAR_ACAB.Enabled := NOT BB_INCLUIR_ACAB.Enabled;
  BB_EXC_ACAB.Enabled := BB_INCLUIR_ACAB.Enabled and not (DM.cdsAcabamentoArtigo.IsEmpty);
  BB_CANC_ACAB.Enabled := BB_GRAVAR_ACAB.Enabled;
  BB_EDIT_ACAB.Enabled := BB_EXC_ACAB.Enabled;
  P_ACABAMENTO.Enabled := not BB_INCLUIR_ACAB.Enabled;

end;

procedure TfrmCadArtigo.Pesquisa;
Var
 sCondicao : String;
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Materia-Prima';
  frmPesquisaPadrao.CDS :=  cdsMateriaPrima;
  frmPesquisaPadrao.Tabela := 'TB_MATERIA_PRIMA';
  frmPesquisaPadrao.CampoBusca := 'NOME_MATERIA';
  frmPesquisaPadrao.CampoBusca2 := 'ID_MATERIA';
  frmPesquisaPadrao.CampoChave := 'NOME_MATERIA';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Mat�ria-Prima';
  frmPesquisaPadrao.Sql            := 'SELECT * ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_MATERIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT MA.id_materia_prima FROM tb_materia_prima_artigo MA WHERE MA.id_materia_prima = '+cdsMateriaPrimaID_MATERIA.AsString+
                                ' AND MA.id_artigo = '+DM.cdsArtigoID_ARTIGO.AsString;
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
    DM.cdsMateriaPrimaArtigo.Open;
    DM.cdsMateriaPrimaArtigo.Insert;
    DM.cdsMateriaPrimaArtigoID_MATERIA_PRIMA.AsInteger  := cdsMateriaPrimaID_MATERIA.AsInteger;
    DM.cdsMateriaPrimaArtigoNOME_MATERIA.AsString       := cdsMateriaPrimaNOME_MATERIA.AsString;
//    DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat            := cdsMateriaPrimaPERC_FIO.AsFloat;
    DBEdit5.SetFocus;
  end
  else
  begin
    ShowMessage('Mat�ria-Prima J� Inclusa ');
    Abort;
    BB_CANCELAR2Click(Self);
  end;



 { cdsMateriaPrima.Close;
   cdsMateriaPrima.Params[0].AsInteger :=DM.cdsArtigoID_ARTIGO.AsInteger;
   cdsMateriaPrima.Open;
  if Pesquisa(cdsMateriaPrima,
              ['NOME_MATERIA','ID_MATERIA'],
              ['Codigo','Descri��o'],
              [40,10],
              'Materia-Prima',
              '1',
              SCondicao,
              '',
              'Materia-Prima',
              'Materia-Prima') Then
  begin
    DM.cdsMateriaPrimaArtigo.Open;
    DM.cdsMateriaPrimaArtigo.Insert;
    DM.cdsMateriaPrimaArtigoID_MATERIA_PRIMA.AsInteger  := cdsMateriaPrimaID_MATERIA.AsInteger;
    DM.cdsMateriaPrimaArtigoNOME_MATERIA.AsString       := cdsMateriaPrimaNOME_MATERIA.AsString;
    DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat            := cdsMateriaPrimaPERC_FIO.AsFloat;
    DBEdit5.SetFocus;
  end; }
end;

procedure TfrmCadArtigo.SomaPercFio;
begin
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT SUM(MA.perc_fio) FROM tb_materia_prima_artigo MA '+
                                ' WHERE MA.id_artigo = '+DM.cdsArtigoID_ARTIGO.AsString;
  DM.cdsDinamica.Open;

  iTotal :=  DM.cdsDinamica.Fields[0].AsFloat;

 // iSomaTotais := iTotal+StrToFloat(DBEdit5.Text);


end;

procedure TfrmCadArtigo.SpeedButton1Click(Sender: TObject);
begin
  Pesquisa;
end;

procedure TfrmCadArtigo.SpeedButton2Click(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Grupo Empresa';
  frmPesquisaPadrao.CDS := DM.cdsGrupoEmpresa;
  frmPesquisaPadrao.Tabela := 'TB_GRUPO_EMPRESA GP';
  frmPesquisaPadrao.CampoBusca  := 'GP.NOME_DO_GRUPO';
  frmPesquisaPadrao.CampoBusca2 := 'GP.RESPONSAVEL';
  frmPesquisaPadrao.CampoChave := 'GP.NOME_DO_GRUPO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Grupo Empresa';
  frmPesquisaPadrao.Sql            := ' SELECT '+
                                      ' GP.id_grupo_empresa, GP.dt_cadastro, GP.nome_do_grupo, GP.responsavel, GP.email, '+
                                      ' GP.fone ';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descricao do Grupo';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_DO_GRUPO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'RESPONSAVEL';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'RESPONSAVEL';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);
  DM.cdsartigoID_GRUPO_EMPRESA.AsInteger := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
  DM.cdsArtigoNOME_DO_GRUPO.AsString     := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
  DM.cdsArtigoRESPONSAVEL.AsString       := DM.cdsGrupoEmpresaRESPONSAVEL.AsString;
  DBEdit27.SetFocus;
end;

procedure TfrmCadArtigo.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadArtigo.SpeedButton4Click(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Acabamento';
  frmPesquisaPadrao.CDS :=  DM.cdsAcabamento;
  frmPesquisaPadrao.Tabela := 'TB_ACABAMENTO';
  frmPesquisaPadrao.CampoBusca := 'NOME_ACABAMENTO';
  frmPesquisaPadrao.CampoBusca2 := 'ID_ACABAMENTO';
  frmPesquisaPadrao.CampoChave := 'NOME_ACABAMENTO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Acabamento';
  frmPesquisaPadrao.Sql            := 'SELECT * ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_ACABAMENTO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'C�digo';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'ID_ACABAMENTO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT MA.ID_ACABAMENTO FROM TB_ACABAMENTO_ARTIGO MA WHERE MA.ID_ACABAMENTO = '+DM.cdsAcabamentoID_ACABAMENTO.AsString;
//                                ' AND MA.id_artigo = '+DM.cdsArtigoID_ARTIGO.AsString;
  DM.cdsDinamica.Open;

  if DM.cdsDinamica.IsEmpty then
  begin
//    DM.cdsAcabamentoArtigo.Open;
//    DM.cdsAcabamentoArtigo.Insert;
    DM.cdsAcabamentoArtigoID_ARTIGO.AsInteger           := DM.cdsArtigoID_ARTIGO.AsInteger;
    DM.cdsAcabamentoArtigoID_ACABAMENTO.AsInteger       := DM.cdsAcabamentoID_ACABAMENTO.AsInteger;
    DM.cdsAcabamentoArtigoNOME_ACABAMENTO.AsString      := DM.cdsAcabamentoNOME_ACABAMENTO.AsString;
    DBEdit11.SetFocus;
  end
  else
  begin
    ShowMessage('Acabamento J� Incluso');
    Abort;
    BB_CANC_ACABClick(Self);
  end;

end;

procedure TfrmCadArtigo.FormShow(Sender: TObject);
begin
  DM.cdsArtigo.Close;
  DM.cdsArtigo.Open;

  if DM.cdsArtigo.RecordCount > 0 then
  begin
    DM.cdsMateriaPrimaArtigo.Close;
    DM.cdsMateriaPrimaArtigo.Params[0].AsInteger := DM.cdsArtigoID_ARTIGO.AsInteger;
    DM.cdsMateriaPrimaArtigo.Open;
  end;

  DM.cdsAcabamentoArtigo.Close;
  DM.cdsAcabamentoArtigo.Open;
  if DM.cdsAcabamentoArtigo.RecordCount > 0 then
  begin
    DM.cdsAcabamentoArtigo.Close;
    DM.cdsAcabamentoArtigo.Params[0].AsInteger := DM.cdsArtigoID_ARTIGO.AsInteger;
    DM.cdsAcabamentoArtigo.Open;
  end;

  GerenciaBotoes;
  GerenciaBotoes2;
  GerenciaBotoes3;
end;

procedure TfrmCadArtigo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadArtigo.DBEdit10Exit(Sender: TObject);
begin
  DM.cdsAcabamento.Close;
  DM.cdsAcabamento.Open;

  if DBEdit10.Text <> '' then
  begin
    if DM.cdsAcabamento.Locate('ID_ACABAMENTO',DM.cdsAcabamentoArtigoID_ACABAMENTO.AsInteger,[]) then
    begin
      DM.cdsAcabamentoArtigoID_ACABAMENTO.AsInteger  := DM.cdsAcabamentoID_ACABAMENTO.AsInteger;
      DM.cdsAcabamentoArtigoNOME_ACABAMENTO.AsString := DM.cdsAcabamentoNOME_ACABAMENTO.AsString;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT MA.ID_ACABAMENTO FROM TB_ACABAMENTO_ARTIGO MA WHERE MA.ID_ACABAMENTO = '+DM.cdsAcabamentoID_ACABAMENTO.AsString;
    //                                ' AND MA.id_artigo = '+DM.cdsArtigoID_ARTIGO.AsString;
      DM.cdsDinamica.Open;

      if DM.cdsDinamica.IsEmpty then
      begin
    //    DM.cdsAcabamentoArtigo.Open;
    //    DM.cdsAcabamentoArtigo.Insert;
        DM.cdsAcabamentoArtigoID_ARTIGO.AsInteger           := DM.cdsArtigoID_ARTIGO.AsInteger;
        DM.cdsAcabamentoArtigoID_ACABAMENTO.AsInteger       := DM.cdsAcabamentoID_ACABAMENTO.AsInteger;
        DM.cdsAcabamentoArtigoNOME_ACABAMENTO.AsString      := DM.cdsAcabamentoNOME_ACABAMENTO.AsString;
        DBEdit11.SetFocus;
      end
      else
      begin
        ShowMessage('Acabamento J� Incluso');
        DBEdit10.SetFocus;
        DBEdit10.Clear;
        Exit;
      end;
    end
    else
    begin
      ShowMessage('C�digo N�o Encontrado');
      SpeedButton4Click(self);
    end;
  end;

  if DBEdit10.Text ='' then
  begin
//    ShowMessage('Nenhum C�digo Informado!');
    BB_CANC_ACABClick(Self);
  end;


end;

procedure TfrmCadArtigo.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton4Click(self);
  end;

end;

procedure TfrmCadArtigo.DBEdit11Exit(Sender: TObject);
begin
  BB_GRAVAR_ACABClick(Self);
end;

procedure TfrmCadArtigo.DBEdit12Exit(Sender: TObject);
begin
  if (DBEdit12.Text <> 'S') AND (DBEdit12.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N" .');
    DBEdit12.SetFocus;
  end;

end;

procedure TfrmCadArtigo.DBEdit13Exit(Sender: TObject);
begin
  if (DBEdit13.Text <> 'S') AND (DBEdit13.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N" .');
    DBEdit13.SetFocus;
  end;

end;

procedure TfrmCadArtigo.DBEdit14Exit(Sender: TObject);
begin
  if (DBEdit14.Text <> 'S') AND (DBEdit14.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N" .');
    DBEdit14.SetFocus;
  end;

end;

procedure TfrmCadArtigo.DBEdit26Exit(Sender: TObject);
begin
  if DBEdit26.Text <> '' then
  begin
    DM.cdsGrupoEmpresa.Open;
    if DM.cdsGrupoEmpresa.Locate('ID_GRUPO_EMPRESA',DM.cdsArtigoID_GRUPO_EMPRESA.AsString,[]) then
    begin
      DM.cdsArtigoID_GRUPO_EMPRESA.AsInteger       := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
      DM.cdsArtigoNOME_DO_GRUPO.AsString           := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
      DM.cdsArtigoRESPONSAVEL.AsString             := DM.cdsGrupoEmpresaRESPONSAVEL.AsString;
      DBEdit27.SetFocus;
    end
    else
    begin
        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                    '                                     '+#13+
                    '   Grupo de Empresa N�o Encontrado            '+#13+
                    '                                     ');
        DM.cdsArtigoID_GRUPO_EMPRESA.Clear;
        SpeedButton2Click(Self);
    end;
  end;

end;

procedure TfrmCadArtigo.DBEdit26KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCadArtigo.DBEdit3Enter(Sender: TObject);
begin
//  if Acao = 'Insert' then
//  begin
//    Pesquisa;
//  end
//  else
//  begin
    DBEdit3.SetFocus;
//  end;
end;

procedure TfrmCadArtigo.DBEdit3Exit(Sender: TObject);
begin
  DM.cdsMatPrima.Close;
  DM.cdsMatPrima.Open;

  if DBEdit3.Text <> '' then
  begin
    if DM.cdsMatPrima.Locate('ID_MATERIA',DM.cdsMateriaPrimaArtigoID_MATERIA_PRIMA.AsInteger,[]) then
    begin
      DM.cdsMateriaPrimaArtigoID_MATERIA_PRIMA.AsInteger  := DM.cdsMatPrimaID_MATERIA.AsInteger;
      DM.cdsMateriaPrimaArtigoNOME_MATERIA.AsString       := DM.cdsMatPrimaNOME_MATERIA.AsString;
      DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat            := DM.cdsMatPrimaPERC_FIO.AsFloat;
      DBEdit5.SetFocus;
    end
    else
    begin
      ShowMessage('C�digo N�o Encontrado');
      SpeedButton1Click(self);
    end;
  end;

  if DBEdit3.Text ='' then
  begin
//    ShowMessage('Nenhum C�digo Informado!');
    BB_CANCELAR2Click(Self);
  end;


end;

procedure TfrmCadArtigo.DBEdit3KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmCadArtigo.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsArtigo.IndexFieldNames <> '' then
    DBGrid2.Columns[DM.cdsArtigo.FieldByName
    (DM.cdsArtigo.IndexFieldNames).Index].Title.Color :=
      DBGrid2.FixedColor;


  (*se campo n�o for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsArtigo.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadArtigo.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure TfrmCadArtigo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.cdsArtigo.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadArtigo := nil;
    DM.cdsArtigo.Close;
  end;

end;

procedure TfrmCadArtigo.BB_NOVO2Click(Sender: TObject);
begin
  if DM.cdsArtigo.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve o Cadastro de Artigo Para Incluir Mat�ria-Prima.');
    Abort;
  end
  else
  begin
    Acao := 'Insert';
    DM.cdsMateriaPrimaArtigo.Open;
    DM.cdsMateriaPrimaArtigo.Insert;
    GerenciaBotoes2;
    DBEDIT3.SetFocus;
  end;

end;

procedure TfrmCadArtigo.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsArtigo.Insert;

  GerenciaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadArtigo.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsArtigo.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadArtigo.BB_EDIT_ACABClick(Sender: TObject);
begin
  TpAcab := 'Edit';
  DM.cdsAcabamentoArtigo.Open;
  DM.cdsAcabamentoArtigo.Edit;
  GerenciaBotoes3;
  DBEdit10.SetFocus;

end;

procedure TfrmCadArtigo.BB_ALTERAR2Click(Sender: TObject);
begin
  Acao := 'Edit';
  qtAnterior := DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat;
  DM.cdsMateriaPrimaArtigo.Open;
  DM.cdsMateriaPrimaArtigo.Edit;
  GerenciaBotoes2;
  DBEdit3.SetFocus;
end;

procedure TfrmCadArtigo.BB_CANCELAR2Click(Sender: TObject);
begin
  DM.cdsMateriaPrimaArtigo.Open;
  DM.cdsMateriaPrimaArtigo.Cancel;
  cdsMateriaPrima.Open;
  cdsMateriaPrima.Cancel;
  GerenciaBotoes2;
end;

procedure TfrmCadArtigo.BB_CANCELAR2MouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  BB_CANCELAR2Click(Self);
end;

procedure TfrmCadArtigo.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsArtigo.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadArtigo.BB_CANC_ACABClick(Sender: TObject);
begin
  DM.cdsAcabamentoArtigo.Open;
  DM.cdsAcabamentoArtigo.Cancel;
  GerenciaBotoes3;

end;

procedure TfrmCadArtigo.BB_EXCLUIR2Click(Sender: TObject);
begin
  SomaPercFio;
  qtAnterior := DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat;
  if Application.MessageBox('Deseja Realmente excluir este registro ? ','Confirma��o', MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
     DM.cdsMateriaPrimaArtigo.Delete;
     DM.cdsMateriaPrimaArtigo.ApplyUpdates(0);
     GerenciaBotoes2;
     iSomaTotais := iTotal-qtAnterior;
     DM.cdsArtigo.Edit;
     DM.cdsArtigoTOTAL_PERC.AsFloat := iSomaTotais;
     DM.cdsArtigo.ApplyUpdates(0);

  end
  else
  begin
    ShowMessage('Exclus�o n�o Confirmada');
    BB_CANCELAR2Click(Self);
    GerenciaBotoes2;
  end;

end;

procedure TfrmCadArtigo.BB_EXCLUIRClick(Sender: TObject);
begin
  if DM.cdsMateriaPrimaArtigo.RecordCount > 0 then
  begin
    ShowMessage(' Impossiv�l Excluir Artigo. Exite(m) Mat�ria-Prima Vinculada ao Mesmo.');
    GerenciaBotoes;
    Exit;
  end;
  if Application.MessageBox('Deseja Excluir Este Artigo ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsArtigo.Delete;
    DM.cdsArtigo.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Artigo N�o Exclu�do');
  end;
    GerenciaBotoes;
end;

procedure TfrmCadArtigo.BB_EXC_ACABClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente excluir este registro ? ','Confirma��o', MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
     DM.cdsAcabamentoArtigo.Delete;
     DM.cdsAcabamentoArtigo.ApplyUpdates(0);
     GerenciaBotoes3;
  end
  else
  begin
    ShowMessage('Exclus�o n�o Confirmada');
    BB_CANC_ACABClick(Self);
    GerenciaBotoes3;
  end;

end;

procedure TfrmCadArtigo.BB_PESQUISARClick(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Artigo';
  frmPesquisaPadrao.CDS := DM.cdsArtigo;
  frmPesquisaPadrao.Tabela := 'TB_ARTIGO A ';
  frmPesquisaPadrao.CampoBusca := 'A.NOME_ARTIGO';
  frmPesquisaPadrao.CampoBusca2 := 'A.COMPOSICAO';
  frmPesquisaPadrao.CampoChave  := 'A.NOME_ARTIGO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Artigo';
  frmPesquisaPadrao.Sql            := ' SELECT A.ID_ARTIGO, A.NOME_ARTIGO, A.COMPOSICAO, A.LARGURA,'+
                                      ' A.GRAMATURA, A.TOTAL_PERC, A.id_grupo_empresa, A.CORTA_AUREOLAS, A.FELPAR, A.TUBULAR, GE.nome_do_grupo,'+
                                      ' ge.responsavel ';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descri��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_ARTIGO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 400;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Composi��o';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'COMPOSICAO';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);

{  DM.cdsProdutoNCM.AsString       := Copy(DM.cdsNCMNCM.AsString,0,8);
  DM.cdsProdutoDESC_NCM.AsString := DM.cdsNCMDESCRICAO.AsString;
  DM.cdsProdutoID_NCM.AsInteger  := DM.cdsNCMID_NCM.AsInteger;
  DBEdit30.SetFocus;}



//  Pesquisa(DM.cdsArtigo,['NOME_ARTIGO'],['Artigo'],
//    [20],'','','','','Artigo','Artigo');
end;

procedure TfrmCadArtigo.BB_SAIRClick(Sender: TObject);
begin
  Close;
//  DM.cdsDinamica.Close;
//  DM.cdsDinamica.IndexFieldNames:='';
//  DM.cdsDinamica.CommandText := ' SELECT EXPORTADO FROM TB_GRUPO_PRODUTO WHERE EXPORTADO = ''N''';
//  DM.cdsDinamica.Open;
//
//  if DM.cdsDinamica.IsEmpty then
//  begin
//    DM.cdsArtigo.Close;
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
//      DM.cdsArtigo.Close;
//      Close;
//    end;
//  end;

end;

procedure TfrmCadArtigo.BB_GRAVAR2Click(Sender: TObject);
begin
  if Acao = 'Insert' then
  begin
     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' SELECT MAX(MA.ID_MATERIA_ARTIGO) FROM TB_MATERIA_PRIMA_ARTIGO MA';
     DM.cdsDinamica.Open;

     DM.cdsMateriaPrimaArtigoID_MATERIA_ARTIGO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
     DM.cdsMateriaPrimaArtigoID_ARTIGO.AsInteger         := DM.cdsArtigoID_ARTIGO.AsInteger;
     SomaPercFio;
     iSomaTotais := iTotal+DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat;
     if iSomaTotais > 100 then
     begin
       ShowMessage(' Soma Total da Mat�ria-Prima Maior que 100%. Favor Verifique');
       DBEdit5.SetFocus;
       Exit;
     end
     else
     begin
       DM.cdsMateriaPrimaArtigo.ApplyUpdates(0);
       GerenciaBotoes2;

       DM.cdsArtigo.Edit;
       DM.cdsArtigoTOTAL_PERC.AsFloat := iSomaTotais;
       DM.cdsArtigo.ApplyUpdates(0);


       BB_NOVO2Click(Self);
     end;
  end;

  if Acao = 'Edit'  then
  begin
     SomaPercFio;
     iTotal      := iTotal-qtAnterior;
     iSomaTotais := iTotal+DM.cdsMateriaPrimaArtigoPERC_FIO.AsFloat;
     if iSomaTotais > 100 then
     begin
       ShowMessage(' Soma Total da Mat�ria-Prima Maior que 100%. Favor Verifique');
       DBEdit5.SetFocus;
       Exit;
     end
     else
     begin
       DM.cdsMateriaPrimaArtigo.ApplyUpdates(0);
       GerenciaBotoes2;

       DM.cdsArtigo.Edit;
       DM.cdsArtigoTOTAL_PERC.AsFloat := iSomaTotais;
       DM.cdsArtigo.ApplyUpdates(0);

       BB_NOVO2Click(Self);
     end;
  end;




end;

procedure TfrmCadArtigo.BB_GRAVARClick(Sender: TObject);
begin
  if DBEdit26.Text = '' then
  begin
    ShowMessage('Favor Grupo de Cliente.');
    DBEdit26.SetFocus;
    dbedit26.Color := clYellow;
    Exit;
  end;

  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_ARTIGO) FROM TB_ARTIGO ';
    DM.cdsDinamica.Open;

    DM.cdsArtigoID_ARTIGO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsArtigo.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsArtigo.ApplyUpdates(0);
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsArtigo.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsArtigo.ApplyUpdates(0);
      DM.cdsArtigo.Refresh;
      GerenCiaBotoes;
    end;
  end;



end;

procedure TfrmCadArtigo.BB_GRAVAR_ACABClick(Sender: TObject);
begin
  if TpAcab = 'Insert' then
  begin
     DM.cdsDinamica.Close;
     DM.cdsDinamica.IndexFieldNames:='';
     DM.cdsDinamica.CommandText := ' SELECT MAX(MA.ID_ACABAMENTO_ARTIGO) FROM TB_ACABAMENTO_ARTIGO MA';
     DM.cdsDinamica.Open;

     DM.cdsAcabamentoArtigoID_ACABAMENTO_ARTIGO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;
     DM.cdsAcabamentoArtigo.ApplyUpdates(0);
     GerenciaBotoes3;
     BB_INCLUIR_ACABClick(Self);
  end;

  if TpAcab = 'Edit'  then
  begin
    DM.cdsAcabamentoArtigo.ApplyUpdates(0);
    GerenciaBotoes3;
    BB_INCLUIR_ACABClick(Self);
  end;


end;

procedure TfrmCadArtigo.BB_INCLUIR_ACABClick(Sender: TObject);
begin
  if DM.cdsArtigo.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve o Cadastro de Artigo Para Incluir Acabamento.');
    Abort;
  end
  else
  begin
    if DM.cdsAcabamentoArtigo.RecordCount >= 3 then
    begin
      ShowMessage('Quantida M�xima de Acabamentos Atingidas ');
      BB_CANCELAR2Click(Self);
      GerenciaBotoes3;
      Exit;
    end;

    TpAcab := 'Insert';
    DM.cdsAcabamentoArtigo.Open;
    DM.cdsAcabamentoArtigo.Insert;
    GerenciaBotoes3;
    DBEDIT10.SetFocus;
  end;


end;

end.
