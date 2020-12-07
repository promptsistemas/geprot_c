unit uPesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Datasnap.DBClient, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmPesquisaPadrao = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    edtPesquisa: TEdit;
    dbgPesquisa: TDBGrid;
    dsPesquisa: TDataSource;
    ClientDataSet1: TClientDataSet;
    Image1: TImage;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesquisaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    ConsultaSQL,
    WhereIsNull,
    WhereParametro : string;
  public
    { Public declarations }
    CDS : TClientDataSet;
    Sql,
    Tabela,
    CampoBusca,
    CampoChave,
    LegendaGrouBox,
    sCondicao : string;
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.dbgPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) and not (CDS.IsEmpty)then
  begin
    ModalResult := mrOk;
    Close;
  end;

  if key = VK_ESCAPE then
  begin
    close;
  end;


end;

procedure TfrmPesquisaPadrao.edtPesquisaChange(Sender: TObject);
begin
  CDS.Close;
  CDS.CommandText := ConsultaSQL + WhereParametro;
  CDS.Params.ParamByName('P').Value := '%' + AnsiUpperCase(edtPesquisa.Text) + '%';
  CDS.Open;
end;

procedure TfrmPesquisaPadrao.edtPesquisaExit(Sender: TObject);
begin
  dbgPesquisa.SetFocus;
end;

procedure TfrmPesquisaPadrao.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key in [VK_UP, VK_DOWN]) and not(CDS.IsEmpty) then
      dbgPesquisa.SetFocus;

  if (Key = VK_RETURN) and (edtPesquisa.Text <> '') then
  begin
    CDS.Close;
    CDS.CommandText := ConsultaSQL + WhereParametro;
    CDS.Params.ParamByName('P').Value := '%' + AnsiUpperCase(edtPesquisa.Text) + '%';
    CDS.Open;
  end;
  if key = VK_ESCAPE then
  begin
    close;
  end;

end;

procedure TfrmPesquisaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
  begin
    close;
  end;
end;

procedure TfrmPesquisaPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmPesquisaPadrao.FormShow(Sender: TObject);
begin
  ConsultaSQL :=sql +Format(' FROM %S ', [Tabela]);
  WhereIsNull := Format(' WHERE %S IS NOT NULL', [CampoChave]);
  WhereParametro := Format(' AND UPPER(%S) LIKE :P', [CampoBusca]);


  CDS.Close;
  CDS.CommandText := ConsultaSQL + WhereIsNull+WhereParametro;
  CDS.Open;

  dsPesquisa.DataSet := CDS;
  if (LegendaGrouBox <> '') then
    GroupBox1.Caption := LegendaGrouBox
      else
        GroupBox1.Caption := 'Pesquisar Registros';
end;

end.
