unit uReabrirCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmReaberturaCaixa = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    L_OPERADOR: TLabel;
    L_DATA: TLabel;
    L_CAIXA: TLabel;
    ME_DATA: TMaskEdit;
    DBGrid1: TDBGrid;
    qResumoVendas: TSQLQuery;
    qResumoVendasDT_MOV: TDateField;
    qResumoVendasCAIXA: TIntegerField;
    qResumoVendasDESCRICAO_PAGAMENTO: TStringField;
    qResumoVendasVENDAS: TFMTBCDField;
    dspResumoVendas: TDataSetProvider;
    cdsResumoVendas: TClientDataSet;
    cdsResumoVendasDT_MOV: TDateField;
    cdsResumoVendasCAIXA: TIntegerField;
    cdsResumoVendasDESCRICAO_PAGAMENTO: TStringField;
    cdsResumoVendasVENDAS: TFMTBCDField;
    dsResumoVendas: TDataSource;
    BB_IMPRIMIR: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    L_STATUS: TLabel;
    qCaixa: TSQLQuery;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    dsCaixa: TDataSource;
    qCaixaID_USUARIO: TIntegerField;
    qCaixaNOME_USUARIO: TStringField;
    qCaixaCAIXA: TIntegerField;
    qCaixaSTATUS: TStringField;
    cdsCaixaID_USUARIO: TIntegerField;
    cdsCaixaNOME_USUARIO: TStringField;
    cdsCaixaCAIXA: TIntegerField;
    cdsCaixaSTATUS: TStringField;
    qCaixaID_REG: TIntegerField;
    cdsCaixaID_REG: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ME_DATAExit(Sender: TObject);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReaberturaCaixa: TfrmReaberturaCaixa;

implementation

{$R *.dfm}

uses U_LIB, uDm;

procedure TfrmReaberturaCaixa.BB_IMPRIMIRClick(Sender: TObject);
begin
  if cdsCaixaSTATUS.AsString = 'A' then
  begin
    ShowMessage('Caixa Já Está Aberto, Favor Verique.!');
    Exit;
  end;
  if Application.MessageBox('Deseja Realmente Reabrir Este Caixa?','Confirmação',MB_ICONQUESTION+MB_YESNO) = idyes then
  begin
    if StrToDate(ME_DATA.Text) < Date then
    begin
      ShowMessage('Só Pode Ser Realizado a Reabertura do Caixa do Dia Atual.');
      ME_DATA.SetFocus;
      Exit
    end
    else
    begin
      cdsCaixa.Edit;
      cdsCaixaSTATUS.AsString :='A';
      cdsCaixa.ApplyUpdates(0);
      ShowMessage('Caixa Reaberto Com Sucesso!');
      cdsCaixa.Close;
      ME_DATA.EditMask :='##/##/####';
      Close;
    end;
  end
  else
  begin
    ShowMessage('Reabertura Cancelada!');
    cdsCaixa.Close;
    ME_DATA.SetFocus;
  end;
end;

procedure TfrmReaberturaCaixa.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmReaberturaCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmReaberturaCaixa := nil;
end;

procedure TfrmReaberturaCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmReaberturaCaixa.ME_DATAExit(Sender: TObject);
begin
  if ME_DATA.Text > '  /  /    ' then
  begin
    cdsCaixa.Close;
    cdsCaixa.Params[0].AsDate := StrToDate(ME_DATA.Text);
    cdsCaixa.Open;

    if cdsCaixa.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado!');
    end
    else
    begin
      L_OPERADOR.Caption := cdsCaixaNOME_USUARIO.AsString;
      L_CAIXA.Caption    := cdsCaixaCAIXA.AsString;
      if cdsCaixaSTATUS.AsString = 'F' then
      begin
        L_STATUS.Caption := 'Fechado';
        cdsResumoVendas.Close;
        cdsResumoVendas.Params[0].AsInteger := StrToInt(L_CAIXA.Caption);
        cdsResumoVendas.Params[1].AsDate    := StrToDate(ME_DATA.Text);
        cdsResumoVendas.Open;
      end
      else
      begin
        L_STATUS.Caption := 'Aberto';
        ShowMessage('Caixa Já Se Encontra Aberto');
        Exit;
      end;

    end;

  end;
end;

end.
