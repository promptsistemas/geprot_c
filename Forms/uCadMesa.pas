unit uCadMesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, Grids, DBGrids,Db;

type
  TfrmCadMesa = class(TForm)
    P_BOTOES: TPanel;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    P_LOCALIZACAO: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenciaBotoes;
  public
    { Public declarations }
  end;

var
  frmCadMesa: TfrmCadMesa;

implementation

uses U_LIB, UD_PESQUISA, uDm;

{$R *.dfm}

{ TfrmCadRota }

procedure TfrmCadMesa.GerenciaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsMesa.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsMesa.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  P_LOCALIZACAO.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadMesa.FormShow(Sender: TObject);
begin
  DM.cdsMesa.Close;
  DM.cdsMesa.Open;
  GerenciaBotoes;
end;

procedure TfrmCadMesa.BB_NOVOClick(Sender: TObject);
begin
  MessageDlg('Você não tem permissão para incluir.Contate o Suporte!',mtWarning,[mbOk],0);
  {DM.cdsMesa.Insert;
  GerenciaBotoes;
  DBEdit2.SetFocus;}
end;

procedure TfrmCadMesa.BB_EDITARClick(Sender: TObject);
begin
  DM.cdsMesa.Edit;
  GerenciaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadMesa.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsMesa.Cancel;
  GerenciaBotoes;
end;

procedure TfrmCadMesa.BB_GRAVARClick(Sender: TObject);
begin
  if DM.cdsMesa.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema não conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    BB_GRAVAR.SetFocus;
  end
  else
  begin
    DM.cdsMesa.ApplyUpdates(0);
    DM.cdsMesa.Refresh;
    GerenCiaBotoes;
  end;

end;

procedure TfrmCadMesa.BB_EXCLUIRClick(Sender: TObject);
begin
{  if Application.MessageBox('Deseja Excluir Esta Localização ?','Confirmação',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsMesa.Delete;
    DM.cdsMesa.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Localização Não Excluída');
  end;
    GerenciaBotoes;}
  MessageDlg('Você não tem permissão para Excluir. Contate o Suporte!',mtWarning,[mbOk],0);

end;

procedure TfrmCadMesa.BB_PESQUISARClick(Sender: TObject);
begin

  Pesquisa(DM.cdsMesa,['NOME_MESA'],['Nome da Mesa'],
    [20],'','','','','Mesas Cadastradas','Mesas Cadastrada');

end;

procedure TfrmCadMesa.BB_SAIRClick(Sender: TObject);
begin
  DM.cdsMesa.Close;
  Close;
end;

procedure TfrmCadMesa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadMesa.DBGrid1TitleClick(Column: TColumn);
begin
  (*recupera a cor original da coluna*)
  if DM.cdsMesa.IndexFieldNames <> '' then
    DBGrid1.Columns[DM.cdsMesa.FieldByName
    (DM.cdsMesa.IndexFieldNames).Index].Title.Color :=
      DBGrid1.FixedColor;


  (*se campo não for blob ou memo e se for do tipo data*)
  if not (Column.Field.DataType in [ftBlob,ftMemo]) then
    if Column.Field.FieldKind = fkData then
    begin
      DM.cdsMesa.IndexFieldNames := Column.FieldName; // indexa
//      Column.Font.Style := [fsBold]; // Tipo da Fonte
    end;
end;

procedure TfrmCadMesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.cdsMesa.Close;
  Action := caFree;
  frmCadMesa := nil;

end;

procedure TfrmCadMesa.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsEmpresa.Close;
  DM.cdsEmpresa.Open;

  if Pesquisa(DM.cdsEmpresa,['FANTASIA','RSOCIAL','ID_EMPRESA'],
                                 ['','',''],[35,35,10],'','0','','Empresa','Empresa','Empresa') then
  begin
    DM.cdsMesaID_LOJA.AsInteger             := DM.cdsEmpresaID_LOJA.AsInteger;
    DM.cdsMesaFANTASIA.AsString             := DM.cdsEmpresaFANTASIA.AsString;
    P_BOTOES.SetFocus;
  end
end;

procedure TfrmCadMesa.DBEdit3Exit(Sender: TObject);
begin
  if DM.cdsMesaID_LOJA.IsNull then
  begin
    ShowMessage('Campo "Cod.Empresa" de Preenchimento Obrigatório.');
    DBEdit3.SetFocus;
  end;
end;

procedure TfrmCadMesa.DBEdit3Enter(Sender: TObject);
begin
  SpeedButton1Click(Self);
end;

end.
