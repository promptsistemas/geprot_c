unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ACBrSintegra, Mask, FMTBcd, DB,
  DBClient, Provider, SqlExpr, CheckLst, ExtCtrls, DBCtrls, Buttons, ACBrBase;

type
  TfrmPrincipal = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    ACBrSintegra: TACBrSintegra;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox4: TComboBox;
    Label9: TLabel;
    ComboBox5: TComboBox;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    qEntradaNF: TSQLDataSet;
    dspEntradaNF: TDataSetProvider;
    cdsEntradaNF: TClientDataSet;
    dsEntradaNF: TDataSource;
    qItemEntrada: TSQLDataSet;
    dspItemEntrada: TDataSetProvider;
    cdsItemEntrada: TClientDataSet;
    dsItemEntrada: TDataSource;
    GroupBox4: TGroupBox;
    CheckListBox1: TCheckListBox;
    qReducaoZ: TSQLDataSet;
    dspReducaoZ: TDataSetProvider;
    cdsReducaoZ: TClientDataSet;
    dsReducaoZ: TDataSource;
    DBGrid4: TDBGrid;
    q60A: TSQLDataSet;
    dsp60A: TDataSetProvider;
    cds60A: TClientDataSet;
    ds60A: TDataSource;
    DBGrid5: TDBGrid;
    q60D: TSQLDataSet;
    dsp60D: TDataSetProvider;
    cds60D: TClientDataSet;
    ds60D: TDataSource;
    DBGrid6: TDBGrid;
    q60I: TSQLDataSet;
    dsp60I: TDataSetProvider;
    cds60I: TClientDataSet;
    ds60I: TDataSource;
    q60ITP_REG: TStringField;
    q60IDATAMOVIF: TDateField;
    q60IDATAMOVI: TStringField;
    q60INUMSERIE: TStringField;
    q60IMODELO: TStringField;
    q60INUMCUPOM: TFloatField;
    q60IITEM: TIntegerField;
    q60ICD_BARRA: TStringField;
    q60IDESCRICAO: TStringField;
    q60IQTD_VENDA: TFloatField;
    q60IVL_VENDA: TFloatField;
    q60IPCOVENDA: TFloatField;
    q60IBASE_ICMS: TFloatField;
    q60IALIQUOTA: TFloatField;
    q60ITOTAL_IMPOSTO: TFloatField;
    cds60ITP_REG: TStringField;
    cds60IDATAMOVIF: TDateField;
    cds60IDATAMOVI: TStringField;
    cds60INUMSERIE: TStringField;
    cds60IMODELO: TStringField;
    cds60INUMCUPOM: TFloatField;
    cds60IITEM: TIntegerField;
    cds60ICD_BARRA: TStringField;
    cds60IDESCRICAO: TStringField;
    cds60IQTD_VENDA: TFloatField;
    cds60IVL_VENDA: TFloatField;
    cds60IPCOVENDA: TFloatField;
    cds60IBASE_ICMS: TFloatField;
    cds60IALIQUOTA: TFloatField;
    cds60ITOTAL_IMPOSTO: TFloatField;
    DBGrid7: TDBGrid;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    BB_GERAR: TBitBtn;
    P_GERAR_ARQUIVO: TPanel;
    P_AGUARDE: TPanel;
    DBGrid8: TDBGrid;
    q74: TSQLDataSet;
    dsp74: TDataSetProvider;
    cds74: TClientDataSet;
    ds74: TDataSource;
    q74ID_PRODUTO: TIntegerField;
    q74ID_GRUPO_PRODUTO: TIntegerField;
    q74CD_BARRA: TStringField;
    q74CODIGO: TStringField;
    q74NCM: TStringField;
    q74ESTOQUE: TFMTBCDField;
    q74VL_CUSTO: TFMTBCDField;
    q74TOTAL: TFMTBCDField;
    q74COD_POSSE: TStringField;
    q74CNPJ: TStringField;
    q74INS_EST: TStringField;
    q74UF: TStringField;
    cds74ID_PRODUTO: TIntegerField;
    cds74ID_GRUPO_PRODUTO: TIntegerField;
    cds74CD_BARRA: TStringField;
    cds74CODIGO: TStringField;
    cds74NCM: TStringField;
    cds74ESTOQUE: TFMTBCDField;
    cds74VL_CUSTO: TFMTBCDField;
    cds74TOTAL: TFMTBCDField;
    cds74COD_POSSE: TStringField;
    cds74CNPJ: TStringField;
    cds74INS_EST: TStringField;
    cds74UF: TStringField;
    MaskEdit3: TMaskEdit;
    Label17: TLabel;
    q50: TSQLDataSet;
    dsp50: TDataSetProvider;
    cds50: TClientDataSet;
    ds50: TDataSource;
    qEntradaNFID_ENTRADA_NF: TIntegerField;
    qEntradaNFID_FORNECEDOR: TIntegerField;
    qEntradaNFTIPO: TStringField;
    qEntradaNFCNPJ: TStringField;
    qEntradaNFINSC: TStringField;
    qEntradaNFDATA_EMI: TDateField;
    qEntradaNFDATA_REC: TDateField;
    qEntradaNFUF: TStringField;
    qEntradaNFMODELO: TStringField;
    qEntradaNFSERIE: TStringField;
    qEntradaNFNUM_NOTA: TStringField;
    qEntradaNFCFOP: TStringField;
    qEntradaNFEMITENTE: TStringField;
    qEntradaNFVALOR_TOTAL: TFMTBCDField;
    qEntradaNFBASE_CALCULO_ICMS: TFMTBCDField;
    qEntradaNFVALOR_ICMS: TFMTBCDField;
    qEntradaNFVALOR_ISENT_N_TRIBUTADO: TFMTBCDField;
    qEntradaNFOUTROS_VALORES: TFMTBCDField;
    qEntradaNFALIQ_ICMS: TFMTBCDField;
    qEntradaNFSITUACAO: TStringField;
    qEntradaNFVALOR_PRODUTOS: TFMTBCDField;
    qEntradaNFVALOR_IPI: TFMTBCDField;
    qEntradaNFEXPORTADO: TStringField;
    qEntradaNFNOME: TStringField;
    qEntradaNFCNPJ_1: TStringField;
    qEntradaNFINS_EST: TStringField;
    qEntradaNFCODIGO_MUNIC: TStringField;
    qEntradaNFUF_1: TStringField;
    qEntradaNFCIDADE: TStringField;
    qEntradaNFDES_CFOP: TStringField;
    cdsEntradaNFID_ENTRADA_NF: TIntegerField;
    cdsEntradaNFID_FORNECEDOR: TIntegerField;
    cdsEntradaNFTIPO: TStringField;
    cdsEntradaNFCNPJ: TStringField;
    cdsEntradaNFINSC: TStringField;
    cdsEntradaNFDATA_EMI: TDateField;
    cdsEntradaNFDATA_REC: TDateField;
    cdsEntradaNFUF: TStringField;
    cdsEntradaNFMODELO: TStringField;
    cdsEntradaNFSERIE: TStringField;
    cdsEntradaNFNUM_NOTA: TStringField;
    cdsEntradaNFCFOP: TStringField;
    cdsEntradaNFEMITENTE: TStringField;
    cdsEntradaNFVALOR_TOTAL: TFMTBCDField;
    cdsEntradaNFBASE_CALCULO_ICMS: TFMTBCDField;
    cdsEntradaNFVALOR_ICMS: TFMTBCDField;
    cdsEntradaNFVALOR_ISENT_N_TRIBUTADO: TFMTBCDField;
    cdsEntradaNFOUTROS_VALORES: TFMTBCDField;
    cdsEntradaNFALIQ_ICMS: TFMTBCDField;
    cdsEntradaNFSITUACAO: TStringField;
    cdsEntradaNFVALOR_PRODUTOS: TFMTBCDField;
    cdsEntradaNFVALOR_IPI: TFMTBCDField;
    cdsEntradaNFEXPORTADO: TStringField;
    cdsEntradaNFNOME: TStringField;
    cdsEntradaNFCNPJ_1: TStringField;
    cdsEntradaNFINS_EST: TStringField;
    cdsEntradaNFCODIGO_MUNIC: TStringField;
    cdsEntradaNFUF_1: TStringField;
    cdsEntradaNFCIDADE: TStringField;
    cdsEntradaNFDES_CFOP: TStringField;
    cds50ID_ENTRADA_NF: TIntegerField;
    cds50TIPO: TStringField;
    cds50CNPJ: TStringField;
    cds50MODELO: TStringField;
    cds50SERIE: TStringField;
    cds50NUM_NOTA: TStringField;
    cds50ID_FORNECEDOR: TIntegerField;
    cds50INS_EST: TStringField;
    cds50CFOP: TStringField;
    cds50EMITENTE: TStringField;
    cds50SITUACAO: TStringField;
    cds50VALOR_TOTAL: TFMTBCDField;
    cds50VALOR_DESC: TFMTBCDField;
    cds50BASE_CALC_ICMS: TFMTBCDField;
    cds50BASE_CALC_ICMS_SUBS: TFMTBCDField;
    cds50VALOR_ICMS: TFMTBCDField;
    cds50VALOR_IPI: TFMTBCDField;
    cds50VALOR_ISENT_N_TRIBUTADO: TFMTBCDField;
    cds50OUTROS_VALORES: TFMTBCDField;
    cds50ALIQ_ICMS: TFMTBCDField;
    cds50CFOP_NOTA: TStringField;
    cds50UF: TStringField;
    qItemEntradaID_ITEM_ENTRADA_NF: TIntegerField;
    qItemEntradaID_FORNECEDOR: TIntegerField;
    qItemEntradaID_ENTRADA_NF: TIntegerField;
    qItemEntradaITEM: TIntegerField;
    qItemEntradaTIPO: TStringField;
    qItemEntradaCNPJ: TStringField;
    qItemEntradaMODELO: TStringField;
    qItemEntradaSERIE: TStringField;
    qItemEntradaNUM_NOTA: TStringField;
    qItemEntradaCFOP: TStringField;
    qItemEntradaCST: TStringField;
    qItemEntradaCODIGO_PRODUTO: TStringField;
    qItemEntradaQUANTIDADE: TFMTBCDField;
    qItemEntradaVALOR_TOTAL: TFMTBCDField;
    qItemEntradaVALOR_DESC: TFMTBCDField;
    qItemEntradaBASE_CALC_ICMS: TFMTBCDField;
    qItemEntradaBASE_CALC_ICMS_SUBS: TFMTBCDField;
    qItemEntradaVALOR_IPI: TFMTBCDField;
    qItemEntradaALIQ_ICMS: TFMTBCDField;
    qItemEntradaID_PRODUTO: TIntegerField;
    qItemEntradaID_GRUPO_PRODUTO: TIntegerField;
    qItemEntradaALIQ_IPI: TFMTBCDField;
    qItemEntradaVALOR_UNI: TFMTBCDField;
    qItemEntradaCD_BARRA: TStringField;
    qItemEntradaDESCRICAO: TStringField;
    qItemEntradaUNIDADE: TStringField;
    qItemEntradaNCM: TStringField;
    qItemEntradaCFOP_NOTA: TStringField;
    cdsItemEntradaID_ITEM_ENTRADA_NF: TIntegerField;
    cdsItemEntradaID_FORNECEDOR: TIntegerField;
    cdsItemEntradaID_ENTRADA_NF: TIntegerField;
    cdsItemEntradaITEM: TIntegerField;
    cdsItemEntradaTIPO: TStringField;
    cdsItemEntradaCNPJ: TStringField;
    cdsItemEntradaMODELO: TStringField;
    cdsItemEntradaSERIE: TStringField;
    cdsItemEntradaNUM_NOTA: TStringField;
    cdsItemEntradaCFOP: TStringField;
    cdsItemEntradaCST: TStringField;
    cdsItemEntradaCODIGO_PRODUTO: TStringField;
    cdsItemEntradaQUANTIDADE: TFMTBCDField;
    cdsItemEntradaVALOR_TOTAL: TFMTBCDField;
    cdsItemEntradaVALOR_DESC: TFMTBCDField;
    cdsItemEntradaBASE_CALC_ICMS: TFMTBCDField;
    cdsItemEntradaBASE_CALC_ICMS_SUBS: TFMTBCDField;
    cdsItemEntradaVALOR_IPI: TFMTBCDField;
    cdsItemEntradaALIQ_ICMS: TFMTBCDField;
    cdsItemEntradaID_PRODUTO: TIntegerField;
    cdsItemEntradaID_GRUPO_PRODUTO: TIntegerField;
    cdsItemEntradaALIQ_IPI: TFMTBCDField;
    cdsItemEntradaVALOR_UNI: TFMTBCDField;
    cdsItemEntradaCD_BARRA: TStringField;
    cdsItemEntradaDESCRICAO: TStringField;
    cdsItemEntradaUNIDADE: TStringField;
    cdsItemEntradaNCM: TStringField;
    cdsItemEntradaCFOP_NOTA: TStringField;
    cdsReducaoZREGISTRO: TStringField;
    cdsReducaoZDATAMOVI: TStringField;
    cdsReducaoZNUMSERIE: TStringField;
    cdsReducaoZN_ORDEM: TStringField;
    cdsReducaoZCOD_FISC: TStringField;
    cdsReducaoZCONT_INI: TFloatField;
    cdsReducaoZCONT_FIM: TFloatField;
    cdsReducaoZCONT_Z: TFloatField;
    cdsReducaoZCONT_REI: TFloatField;
    cdsReducaoZGTOT_INI: TFloatField;
    cdsReducaoZTOTAL_VENDA: TFloatField;
    cdsReducaoZGTOT_FIM: TFloatField;
    cdsReducaoZDT_MOVI: TDateField;
    qReducaoZREGISTRO: TStringField;
    qReducaoZDATAMOVI: TStringField;
    qReducaoZNUMSERIE: TStringField;
    qReducaoZN_ORDEM: TStringField;
    qReducaoZCOD_FISC: TStringField;
    qReducaoZCONT_INI: TFloatField;
    qReducaoZCONT_FIM: TFloatField;
    qReducaoZCONT_Z: TFloatField;
    qReducaoZCONT_REI: TFloatField;
    qReducaoZGTOT_INI: TFloatField;
    qReducaoZTOTAL_VENDA: TFloatField;
    qReducaoZGTOT_FIM: TFloatField;
    qReducaoZDT_MOVI: TDateField;
    q60AID: TIntegerField;
    q60AREDUCAOZDTO_ID: TLargeintField;
    q60AVALOR: TFloatField;
    q60ADT_MOVI: TDateField;
    q60ANUMSERIE: TStringField;
    q60AALIQUOTA: TStringField;
    q60ADATAMOVI: TStringField;
    cds60AID: TIntegerField;
    cds60AREDUCAOZDTO_ID: TLargeintField;
    cds60AVALOR: TFloatField;
    cds60ADT_MOVI: TDateField;
    cds60ANUMSERIE: TStringField;
    cds60AALIQUOTA: TStringField;
    cds60ADATAMOVI: TStringField;
    q60DTP_REG: TStringField;
    q60DDATAMOVIF: TDateField;
    q60DDATAMOVI: TStringField;
    q60DNUMSERIE: TStringField;
    q60DNUMCUPOM: TFloatField;
    q60DITEM: TIntegerField;
    q60DCD_BARRA: TStringField;
    q60DDESCRICAO: TStringField;
    q60DUNIDADE: TStringField;
    q60DNCM: TStringField;
    q60DQTD_VENDA: TFloatField;
    q60DVL_VENDA: TFloatField;
    q60DBASE_ICMS: TFloatField;
    q60DALIQUOTA: TFloatField;
    q60DTOTAL_IMPOSTO: TFloatField;
    cds60DTP_REG: TStringField;
    cds60DDATAMOVIF: TDateField;
    cds60DDATAMOVI: TStringField;
    cds60DNUMSERIE: TStringField;
    cds60DNUMCUPOM: TFloatField;
    cds60DITEM: TIntegerField;
    cds60DCD_BARRA: TStringField;
    cds60DDESCRICAO: TStringField;
    cds60DUNIDADE: TStringField;
    cds60DNCM: TStringField;
    cds60DQTD_VENDA: TFloatField;
    cds60DVL_VENDA: TFloatField;
    cds60DBASE_ICMS: TFloatField;
    cds60DALIQUOTA: TFloatField;
    cds60DTOTAL_IMPOSTO: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit1Enter(Sender: TObject);
    function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
    procedure MaskEdit1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_GERARClick(Sender: TObject);
    procedure MaskEdit2Enter(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GerarRegistro10;
    procedure GerarRegistro11;
    procedure GerarRegistro50;
    procedure GerarRegistro51;
    procedure GerarRegistro53;
    procedure GerarRegistro54;
    procedure GerarRegistro60M;
    procedure GerarRegistro60A;
    procedure GerarRegistro60D;
    procedure GerarRegistro60I;
    procedure GerarRegistro70;
    procedure GerarRegistro74;

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uDM, uDmFiscal;

{$R *.dfm}

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
//  if DM.cdsEmpresa.Active = True then
//  begin
//    DM.cdsEmpresa.Close;
//    DM.cdsVenda.Close;
//    ShowMessage('Tabela Fechada');
//  end
//  else
//  begin
    P_AGUARDE.Visible := True;
    P_AGUARDE.Refresh;
    DM.cdsEmpresa.Close;
    DM.cdsEmpresa.Open;
    cdsEntradaNF.Close;
    cdsEntradaNF.Params[0].AsDate := StrToDate(MaskEdit1.Text);
    cdsEntradaNF.Params[1].AsDate := StrToDate(MaskEdit2.Text);
    cdsEntradaNF.Open;

    cdsItemEntrada.Close;
    cdsItemEntrada.Params[0].AsInteger := cdsEntradaNFID_ENTRADA_NF.AsInteger;
    cdsItemEntrada.Open;

    cdsReducaoZ.Close;
    cdsReducaoZ.Params[0].AsDate := StrToDate(MaskEdit1.Text);
    cdsReducaoZ.Params[1].AsDate := StrToDate(MaskEdit2.Text);
    cdsReducaoZ.Open;

    cds60A.Close;
    cds60A.Params[0].AsDate := cdsReducaoZDT_MOVI.AsDateTime;
    cds60A.Open;

    cds60D.Close;
    cds60D.Params[0].AsDate := cdsReducaoZDT_MOVI.AsDateTime;
    cds60D.Open;

    cds60I.Close;
    cds60I.Params[0].AsDate := cdsReducaoZDT_MOVI.AsDateTime;
    cds60I.Open;

    cds74.Close;
    cds74.Params[0].AsDate := StrToDate(MaskEdit1.Text);
    cds74.Params[1].AsDate := StrToDate(MaskEdit2.Text);
    cds74.Open;

    P_AGUARDE.Visible:= False;
    P_AGUARDE.Refresh;
    ShowMessage('Dados Carregados Com Sucesso!!!!');
    BB_GERAR.Enabled := True;
//  end;
end;

procedure TfrmPrincipal.GerarRegistro10;
begin
  with ACBrSintegra do
  begin
    Registro10.CNPJ := DM.cdsEmpresaCNPJ.Value ;
    Registro10.Inscricao := DM.cdsEmpresaINS_EST.Value;
    Registro10.RazaoSocial := DM.cdsEmpresaR_SOCIAL.Value;
    Registro10.Cidade := DM.cdsEmpresaCIDADE.Value;
    Registro10.Estado := DM.cdsEmpresaUF.Value;
    Registro10.Telefone := DM.cdsEmpresaTELEFONE.Value;
    Registro10.DataInicial := StrToDate(MaskEdit1.Text);
    Registro10.DataFinal := StrToDate(MaskEdit2.Text);
    Registro10.CodigoConvenio := IntToStr(ComboBox1.ItemIndex + 1);
    Registro10.NaturezaInformacoes := IntToStr(ComboBox2.ItemIndex + 1);
    Registro10.FinalidadeArquivo := Copy(ComboBox3.Items[ComboBox3.ItemIndex], 1, 1);
  end;
end;

procedure TfrmPrincipal.GerarRegistro11;
begin
  with ACBrSintegra do
  begin
    Registro11.Endereco:=DM.cdsEmpresaENDERECO.Value;
    Registro11.Numero:= DM.cdsEmpresaNUMERO.Value;
    Registro11.Bairro:=DM.cdsEmpresaBAIRRO.Value;
    Registro11.Cep:=DM.cdsEmpresaCEP.Value;
    Registro11.Responsavel:=DM.cdsEmpresaCONTATO.Value;
    Registro11.Telefone:=DM.cdsEmpresaTELEFONE.Value;
  end;

end;

procedure TfrmPrincipal.GerarRegistro50;
var
  wregistro50: TRegistro50;
  I : Integer;

begin
   // cdsEntradaNF.DisableControls;
    cdsEntradaNF.First;
    while not (cdsEntradaNF.Eof) do
    begin
      cds50.Close;
      cds50.Params[0].AsInteger := cdsEntradaNFID_ENTRADA_NF.AsInteger;
      cds50.Open;
      i:= 0;
      cds50.First;
      while not (cds50.Eof) do
      begin
        with ACBrSintegra do
        begin
            i:= I+1;
            wregistro50:=TRegistro50.Create;
            wregistro50.CPFCNPJ:= cds50CNPJ.Value;//  '43.214.055/0042-85';
            wregistro50.Inscricao:=cds50INS_EST.Value;//'349016872110';
            wregistro50.DataDocumento:=Registro10.DataFinal;
            wregistro50.UF:=cds50UF.Value;//'SP';
            wregistro50.Modelo:=cds50MODELO.AsString;//'1';
            wregistro50.Serie:=cds50SERIE.Value;//'1';
            wregistro50.Numero:=cds50NUM_NOTA.Value;//'123';
            wregistro50.Cfop:=cds50CFOP_NOTA.Value;//'2.102';
            wregistro50.EmissorDocumento:=cds50EMITENTE.Value;//'T';
            wregistro50.ValorContabil:=cds50VALOR_TOTAL.AsFloat;//1500;
            wregistro50.BasedeCalculo:=cds50BASE_CALC_ICMS.AsFloat;//1500;
            wregistro50.Icms:=cds50VALOR_ICMS.AsFloat;//270;
            wregistro50.Isentas:=cds50VALOR_ISENT_N_TRIBUTADO.AsFloat;//0;
            wregistro50.Outras:=cds50OUTROS_VALORES.AsFloat;//0;
            wregistro50.Aliquota:=cds50ALIQ_ICMS.AsFloat;//18;
            wregistro50.Situacao:=cds50SITUACAO.Value;//'N';
            ACBrSintegra.Registros50.Add(wregistro50);
            if I = 1 then
            GerarRegistro54;
        end;
//          GerarRegistro54;
            cds50.Next;
     end;
          cdsEntradaNF.Next;
    end;
      //cdsEntradaNF.EnableControls;
end;

procedure TfrmPrincipal.GerarRegistro51;
begin

end;

procedure TfrmPrincipal.GerarRegistro53;
begin

end;

procedure TfrmPrincipal.GerarRegistro54;
var
  wregistro54: TRegistro54;
  wregistro75: TRegistro75;
begin
    cdsItemEntrada.DisableControls;
    cdsItemEntrada.First;
    while not cdsItemEntrada.Eof do
    begin
      with ACBrSintegra do
      begin
        wregistro54:=TRegistro54.Create;
        wregistro54.CPFCNPJ:= cdsItemEntradaCNPJ.Value;//'43.214.055/0042-85';
        wregistro54.Modelo:=  cdsItemEntradaMODELO.AsString;//'1';
        wregistro54.Serie:=   cdsItemEntradaSERIE.AsString;//'1';
        wregistro54.Numero:=cdsItemEntradaNUM_NOTA.Value;//'123';
        wregistro54.Cfop:=cdsItemEntradaCFOP_NOTA.Value;//'2.102';
        wregistro54.CST:= cdsItemEntradaCST.Value;//'000';
        wregistro54.NumeroItem:=cdsItemEntradaITEM.AsInteger;//1;
        wregistro54.Codigo:=cdsItemEntradaCD_BARRA.Value;//'0000000000017';
        wregistro54.Descricao:=cdsItemEntradaDESCRICAO.Value;//'PRODUTO DE TESTE';
        wregistro54.Quantidade:=cdsItemEntradaQUANTIDADE.AsFloat;//50;
        wregistro54.Valor:=cdsItemEntradaVALOR_UNI.AsFloat;//1500;
        wregistro54.ValorDescontoDespesa:=cdsItemEntradaVALOR_DESC.AsFloat;//0;
        wregistro54.BasedeCalculo:=cdsItemEntradaVALOR_UNI.AsFloat;//1500;
        wregistro54.BaseST:=0;//cdsItemEntradabMODELO.Value;//0;
        wregistro54.ValorIpi:=cdsItemEntradaVALOR_IPI.AsFloat;//0;
        wregistro54.Aliquota:=cdsItemEntradaALIQ_ICMS.AsFloat;//18;
        ACBrSintegra.Registros54.Add(wregistro54);

        wregistro75:=TRegistro75.Create;
        wregistro75.Codigo:=wregistro54.Codigo;
        wregistro75.NCM:= cdsItemEntradaNCM.AsString;
        wregistro75.AliquotaICMS:=wregistro54.Aliquota;
        wregistro75.DataInicial:=ACBrSintegra.Registro10.DataInicial;
        wregistro75.DataFinal:=ACBrSintegra.Registro10.DataFinal;
        wregistro75.Descricao:=cdsItemEntradaDESCRICAO.Value;//'PRODUTO DE TESTE';
        wregistro75.Unidade:=cdsItemEntradaUNIDADE.Value;//'UN';
        ACBrSintegra.Registros75.Add(wregistro75);
        cdsItemEntrada.Next;
      end;
       //cdsItemEntrada.Next;
       cdsItemEntrada.EnableControls;
    end;
end;
procedure TfrmPrincipal.GerarRegistro60M;
var
  wregistro60M: TRegistro60M;
begin
  cdsReducaoZ.DisableControls;

  while not (cdsReducaoZ.Eof) do
  begin
    wregistro60M:=TRegistro60M.Create;
    wregistro60M.Emissao:=cdsReducaoZDT_MOVI.AsDateTime;
    wregistro60M.NumSerie:=cdsReducaoZNUMSERIE.Value;
    wregistro60M.NumOrdem:=cdsReducaoZN_ORDEM.AsInteger; //NUMERO DA ECF
    wregistro60M.ModeloDoc:=cdsReducaoZCOD_FISC.Value; //'2D';
    wregistro60M.CooInicial:=cdsReducaoZCONT_INI.AsInteger;
    wregistro60M.CooFinal:= cdsReducaoZCONT_FIM.AsInteger;
    wregistro60M.CRZ:=cdsReducaoZCONT_Z.AsInteger;
    wregistro60M.CRO:=cdsReducaoZCONT_REI.AsInteger;
    wregistro60M.VendaBruta:= cdsReducaoZTOTAL_VENDA.AsFloat;
    wregistro60M.ValorGT:= cdsReducaoZGTOT_FIM.AsFloat;
    ACBrSintegra.Registros60M.Add(wregistro60M);
    GerarRegistro60A;
    GerarRegistro60D;
    GerarRegistro60I;
    cdsReducaoZ.Next;
  end;
   cdsReducaoZ.EnableControls;
end;
procedure TfrmPrincipal.GerarRegistro60A;
var
  wregistro60A: TRegistro60A;
begin
    cds60A.Close;
    cds60A.Params[0].AsDate := cdsReducaoZDT_MOVI.AsDateTime;
    cds60A.Open;

    cds60A.DisableControls;
    //cds60A.First;
    while not (cds60A.Eof) do
    begin
     // with ACBrSintegra do
     // begin
        wregistro60A:=TRegistro60A.Create;
        wregistro60A.Emissao:= cds60ADT_MOVI.AsDateTime;//'43.214.055/0042-85';
        wregistro60A.NumSerie:= cds60ANUMSERIE.Value;
        wregistro60A.StAliquota := cds60AALIQUOTA.AsString;
        wregistro60A.Valor      := cds60AVALOR.AsFloat;
        ACBrSintegra.Registros60A.Add(wregistro60A);
        cds60A.Next;
   //   end;
       //cdsItemEntrada.Next;
    end;
       cds60A.EnableControls;
end;

procedure TfrmPrincipal.GerarRegistro60D;
var
  wregistro60D: TRegistro60D;
  wregistro75: TRegistro75;
begin
    cds60D.Close;
    cds60D.Params[0].AsDate := cdsReducaoZDT_MOVI.AsDateTime;
    cds60D.Open;

    cds60D.DisableControls;
    //cds60D.First;
    while not (cds60D.Eof) do
    begin
     // with ACBrSintegra do
     // begin
        wregistro60D:=TRegistro60D.Create;
        wregistro60D.Emissao:= cds60DDATAMOVIF.AsDateTime;//'43.214.055/0042-85';
        wregistro60D.NumSerie:= cds60DNUMSERIE.Value;
        wregistro60D.Codigo  := cds60DCD_BARRA.Value;
        wregistro60D.Quantidade := cds60DQTD_VENDA.AsFloat;
        wregistro60D.Valor      := cds60DVL_VENDA.AsFloat;
        wregistro60D.BaseDeCalculo := cds60DBASE_ICMS.AsFloat;
        if cds60DALIQUOTA.AsFloat >= 17 then
           wregistro60D.StAliquota := FormatFloat('###,###0.00',cds60DALIQUOTA.AsFloat)
        else
           wregistro60D.StAliquota := 'F';

//        wregistro60D.StAliquota    := FormatFloat('###,###0.00',cds60DALIQUOTA.AsFloat);
        wregistro60D.ValorIcms     := cds60DTOTAL_IMPOSTO.AsFloat;
        ACBrSintegra.Registros60D.Add(wregistro60D);

        wregistro75:=TRegistro75.Create;
        wregistro75.Codigo:=wregistro60D.Codigo;
        wregistro75.NCM:= cds60DNCM.AsString;
        wregistro75.AliquotaICMS:= cds60DALIQUOTA.AsFloat; //StrToFloat('###,###0.00',wregistro60D.sAliquota);
        wregistro75.DataInicial:=ACBrSintegra.Registro10.DataInicial;
        wregistro75.DataFinal:=ACBrSintegra.Registro10.DataFinal;
        wregistro75.Descricao:=cds60DDESCRICAO.Value;//'PRODUTO DE TESTE';
        wregistro75.Unidade:=cds60DUNIDADE.Value;//'UN';
        ACBrSintegra.Registros75.Add(wregistro75);

        cds60D.Next;
   //   end;
       //cdsItemEntrada.Next;
    end;
       cds60D.EnableControls;
end;

procedure TfrmPrincipal.GerarRegistro60I;
var
  wregistro60I: TRegistro60I;
begin
    cds60I.Close;
    cds60I.Params[0].AsDate := cdsReducaoZDT_MOVI.AsDateTime;
    cds60I.Open;

    cds60I.DisableControls;
    //cds60I.First;
    while not (cds60I.Eof) do
    begin
     // with ACBrSintegra do
     // begin
        wregistro60I:=TRegistro60I.Create;
        wregistro60I.Emissao:= cds60IDATAMOVIF.AsDateTime;//'43.214.055/0042-85';
        wregistro60I.NumSerie:= cds60INUMSERIE.Value;
        wregistro60I.ModeloDoc := cds60IMODELO.AsString;
        wregistro60I.Cupom     := cds60INUMCUPOM.AsString;
        wregistro60I.Item      := cds60IITEM.AsInteger;
        wregistro60I.Codigo  := cds60ICD_BARRA.Value;
        wregistro60I.Quantidade := cds60IQTD_VENDA.AsFloat;
        wregistro60I.Valor      := cds60IVL_VENDA.AsFloat;
        wregistro60I.BaseDeCalculo := cds60IBASE_ICMS.AsFloat;
        if cds60IALIQUOTA.AsFloat >= 17 then
           wregistro60I.StAliquota := FormatFloat('###,###0.00',cds60IALIQUOTA.AsFloat)
        else
           wregistro60I.StAliquota := 'F';

//        wregistro60I.StAliquota    := FormatFloat('###,###0.00',cds60IALIQUOTA.AsFloat);
        wregistro60I.ValorIcms     := cds60ITOTAL_IMPOSTO.AsFloat;
        ACBrSintegra.Registros60I.Add(wregistro60I);
        cds60I.Next;
   //   end;
       //cdsItemEntrada.Next;
    end;
       cds60I.EnableControls;
end;

procedure TfrmPrincipal.GerarRegistro70;
begin

end;

procedure TfrmPrincipal.Button3Click(Sender: TObject);
var
  _data1, _data2 : string;
begin
//      MessageBox(0,'0','Informação',mb_iconinformation+mb_taskmodal);
//      MessageBox(0,'Arquivo Gerado Com Sucesso!!!!!','Informação',MB_ICONINFORMATION+MB_OK);
//            MessageBox(0,'dddaadasArquivo Gerado Com Sucesso!!!!!','Informação',MB_ICONASTERISK+mb_taskmodal);


//        Application.ProcessMessages;

//  _data1 := '01082014';

//  _data2 := copy(_data1,1,2)+'/'+copy(_data1, 3,2)+'/'+ copy(_data1, 5,4);
//
//  ShowMessage(_data2);
end;

procedure TfrmPrincipal.Button4Click(Sender: TObject);
begin
  DM.cdsCfop.Open;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmPrincipal := nil;
end;

procedure TfrmPrincipal.MaskEdit1Enter(Sender: TObject);
var
  atual:TDate;
     dia,mes,ano:Word;
  dia1,mes1,ano1:Word;
  mes2 : String;
  texto:Tdate;
begin
  atual:=Now;
  DecodeDate(atual,ano,mes,dia);
  if mes < 10 then
  begin
    mes2 := '0'+IntToStr(mes);
    MaskEdit1.Text:='01'+'/'+(mes2)+'/'+IntToStr(ano);
  end
  else
  begin
    MaskEdit1.Text:='01'+'/'+IntToStr(mes)+'/'+IntToStr(ano);
  end;
  texto := UltimoDiaMes(Date);
  MaskEdit2.Text := (datetostr(Texto));
  BB_GERAR.Enabled := False;
end;

function TfrmPrincipal.UltimoDiaMes(Mdt: TDateTime): TDateTime;
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

procedure TfrmPrincipal.MaskEdit1Exit(Sender: TObject);
var
  texto:Tdate;
begin
  texto := UltimoDiaMes(Date);
  MaskEdit2.Text := (datetostr(Texto));
end;

procedure TfrmPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmPrincipal.MaskEdit2Exit(Sender: TObject);
begin
  Button1Click(Self);
  BB_GERAR.SetFocus;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  MaskEdit1.SetFocus;
  CheckListBox1.Checked[0] := True;
  CheckListBox1.Checked[1] := True;

end;


procedure TfrmPrincipal.BB_GERARClick(Sender: TObject);
begin
try
  if StrToDate(MaskEdit2.text)<StrToDate(MaskEdit1.Text) then begin
     application.MessageBox('Data Final não pode ser menor que a inicial','Erro',mb_iconstop);
     MaskEdit2.setfocus;
     exit;
     end
   else if StrToDate(MaskEdit1.text)>date then begin
     application.MessageBox('Data Final não pode ser maior que a data atual','Erro',mb_iconstop);
     MaskEdit2.setfocus;
     exit;
  end;
except
  application.MessageBox('Intervalo de datas inválido.','Erro',mb_iconstop);
  MaskEdit1.setfocus;
  exit;
end;
SaveDialog1.InitialDir:='C:\Sintegra\Arquivos_PAF';//ExtractFilePath(Application.ExeName);
if ComboBox4.ItemIndex=0 then
  SaveDialog1.FileName:='FVC'+FormatDateTime('yyyymmdd',StrToDate(MaskEdit1.Text))
                             +FormatDateTime('yyyymmdd',StrToDate(MaskEdit2.Text));//+'FVC'+QuotedStr(MaskEdit1.TEXT+MaskEdit2.Text);

if SaveDialog1.Execute then
begin
  try
    try
      if ComboBox4.ItemIndex=0 then
      begin
        ACBrSintegra.FileName:=SaveDialog1.FileName;
        P_GERAR_ARQUIVO.Visible := True;
        P_GERAR_ARQUIVO.Refresh;
        ACBrSintegra.VersaoValidador:=TVersaoValidador(ComboBox5.ItemIndex);
        GerarRegistro10;
        GerarRegistro11;
        if CheckListBox1.Checked[0] then
          GerarRegistro50;
        if CheckListBox1.Checked[1] then
          GerarRegistro60M;
        if CheckListBox1.Checked[2] then
          GerarRegistro74;
       { if CheckListBox1.Checked[3] then
          GerarRegistro54;
        if CheckListBox1.Checked[4] then
          GerarRegistro60M;
        if CheckListBox1.Checked[5] then
          GerarRegistro60A;
        if CheckListBox1.Checked[6] then
          GerarRegistro60D;
        if CheckListBox1.Checked[7] then
          GerarRegistro70; }
        ACBrSintegra.GeraArquivo;
      end;
        P_GERAR_ARQUIVO.Visible := False;
        P_GERAR_ARQUIVO.Refresh;
      MessageBox(0,'Arquivo Gerado Com Sucesso!!!!!','Informação',mb_iconinformation+mb_taskmodal);
      BB_GERAR.Enabled := False;
      MaskEdit1.SetFocus;
      MaskEdit3.Visible := False;
      Label17.Visible := False;
      CheckListBox1.Checked[2] := False;
    except
      on e:Exception do
      begin
        Application.MessageBox(PChar('Erro ao gerar arquivo do sintegra!'+#13+
          'Erro: '+e.Message),'Erro',MB_ICONSTOP+MB_TASKMODAL);
      end;
    end;
  finally
  end;
end;

end;

procedure TfrmPrincipal.MaskEdit2Enter(Sender: TObject);
begin
  BB_GERAR.Enabled := False;
end;

procedure TfrmPrincipal.GerarRegistro74;
var
  wregistro74: TRegistro74;
begin
    cds74.DisableControls;
    //cds60I.First;
    while not (cds74.Eof) do
    begin
     // with ACBrSintegra do
     // begin
        wregistro74:=TRegistro74.Create;
        wregistro74.Data:= StrToDate(MaskEdit3.Text);
        wregistro74.Codigo:= cds74CD_BARRA.AsString;
        wregistro74.Quantidade := cds74ESTOQUE.AsFloat;
        wregistro74.ValorProduto := cds74TOTAL.AsFloat;
        wregistro74.CodigoPosse := cds74COD_POSSE.Value;
        wregistro74.CNPJPossuidor := cds74CNPJ.AsString;
       // wregistro74.InscricaoPossuidor := cds74INS_EST.AsString;
        wregistro74.UFPossuidor := cds74UF.AsString;
        ACBrSintegra.Registros74.Add(wregistro74);
        cds74.Next;
   //   end;
       //cdsItemEntrada.Next;
    end;
       cds74.EnableControls;
end;

procedure TfrmPrincipal.CheckListBox1ClickCheck(Sender: TObject);
begin
 if CheckListBox1.Checked[2] then
 begin
   ShowMessage('Informe data Para Inventario!!!!');
   MaskEdit3.Visible := True;
   label17.Visible := True;
   MaskEdit3.SetFocus;   
 end;

end;

end.
