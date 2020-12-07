unit ufrmRelProgramar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.FMTBcd, Datasnap.DBClient, Data.DB, Datasnap.Provider,
  Data.SqlExpr, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, QuickRpt, QRCtrls,
  qrpctrls, qrpBaseCtrls;

type
  TfrmRelProgramar = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    lblCliente: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    edtCli: TEdit;
    BB_LOCALIZAR: TBitBtn;
    BB_IMPRIMIR: TBitBtn;
    qFornecedor: TSQLDataSet;
    qFornecedorID_FORNECEDOR: TIntegerField;
    qFornecedorCODIGO_MUNIC: TStringField;
    qFornecedorDT_CADASTRO: TDateField;
    qFornecedorNOME: TStringField;
    qFornecedorTP_LOGRADOURO: TStringField;
    qFornecedorENDERECO: TStringField;
    qFornecedorCOMPLEMENTO: TStringField;
    qFornecedorNUMERO: TStringField;
    qFornecedorBAIRRO: TStringField;
    qFornecedorCEP: TStringField;
    qFornecedorTELFONE: TStringField;
    qFornecedorFAX: TStringField;
    qFornecedorCELULAR: TStringField;
    qFornecedorEMAIL: TStringField;
    qFornecedorCNPJ: TStringField;
    qFornecedorINS_EST: TStringField;
    qFornecedorCONTATO: TStringField;
    qFornecedorSITE: TStringField;
    qFornecedorFANTASIA: TStringField;
    qFornecedorSITUACAO: TStringField;
    qFornecedorDT_ABERTURA: TDateField;
    qFornecedorCNAE_PRINCIPAL: TStringField;
    qFornecedorCNAE_SECUNDARIO: TStringField;
    qFornecedorID_CATEGORIA: TIntegerField;
    qFornecedorCIDADE: TStringField;
    qFornecedorUF: TStringField;
    qFornecedorDDD: TStringField;
    qFornecedorNOME_CATEGORIA: TStringField;
    dspFornecedor: TDataSetProvider;
    dsFornecedor: TDataSource;
    cdsFornecedor: TClientDataSet;
    cdsFornecedorID_FORNECEDOR: TIntegerField;
    cdsFornecedorCODIGO_MUNIC: TStringField;
    cdsFornecedorDT_CADASTRO: TDateField;
    cdsFornecedorNOME: TStringField;
    cdsFornecedorTP_LOGRADOURO: TStringField;
    cdsFornecedorENDERECO: TStringField;
    cdsFornecedorCOMPLEMENTO: TStringField;
    cdsFornecedorNUMERO: TStringField;
    cdsFornecedorBAIRRO: TStringField;
    cdsFornecedorCEP: TStringField;
    cdsFornecedorTELFONE: TStringField;
    cdsFornecedorFAX: TStringField;
    cdsFornecedorCELULAR: TStringField;
    cdsFornecedorEMAIL: TStringField;
    cdsFornecedorCNPJ: TStringField;
    cdsFornecedorINS_EST: TStringField;
    cdsFornecedorCONTATO: TStringField;
    cdsFornecedorSITE: TStringField;
    cdsFornecedorFANTASIA: TStringField;
    cdsFornecedorSITUACAO: TStringField;
    cdsFornecedorDT_ABERTURA: TDateField;
    cdsFornecedorCNAE_PRINCIPAL: TStringField;
    cdsFornecedorCNAE_SECUNDARIO: TStringField;
    cdsFornecedorID_CATEGORIA: TIntegerField;
    cdsFornecedorCIDADE: TStringField;
    cdsFornecedorUF: TStringField;
    cdsFornecedorDDD: TStringField;
    cdsFornecedorNOME_CATEGORIA: TStringField;
    dsProgramar: TDataSource;
    cdsProgramar: TClientDataSet;
    dspProgramar: TDataSetProvider;
    qProgramar: TSQLQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    qProgramarTINTURARIA: TStringField;
    qProgramarMALHARIA: TStringField;
    qProgramarNR_NF_REMESSA: TIntegerField;
    qProgramarDT_EMISSAO: TDateField;
    qProgramarQUANT_NF: TFMTBCDField;
    qProgramarQUANT_PROGRAMADO: TFMTBCDField;
    qProgramarQT_SEM_PROGR: TFMTBCDField;
    qProgramarR_SOCIAL: TStringField;
    cdsProgramarTINTURARIA: TStringField;
    cdsProgramarMALHARIA: TStringField;
    cdsProgramarNR_NF_REMESSA: TIntegerField;
    cdsProgramarDT_EMISSAO: TDateField;
    cdsProgramarQUANT_NF: TFMTBCDField;
    cdsProgramarQUANT_PROGRAMADO: TFMTBCDField;
    cdsProgramarQT_SEM_PROGR: TFMTBCDField;
    cdsProgramarR_SOCIAL: TStringField;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    QR_GERAL: TQRPQuickrep;
    QRPBand1: TQRPBand;
    QRPBand3: TQRPBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRPBand2: TQRPBand;
    QRL_TOTAL_FIOS: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRL_TOTAL_ELASTANO: TQRLabel;
    QRL_TINTURARIA: TQRLabel;
    QRL_TOTAL_MALHARIA: TQRLabel;
    QRPBand4: TQRPBand;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    TabSheet3: TTabSheet;
    QR_AGRUPADO: TQRPQuickrep;
    QRPBand5: TQRPBand;
    QRLabel10: TQRLabel;
    QRSysData4: TQRSysData;
    QRSysData5: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRPBand6: TQRPBand;
    QRGroup2: TQRGroup;
    QRPShape1: TQRPShape;
    QRPBand7: TQRPBand;
    QRLabel40: TQRLabel;
    QRPBand8: TQRPBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData6: TQRSysData;
    QRChildBand1: TQRChildBand;
    QRBand1: TQRBand;
    QRLabel42: TQRLabel;
    QRL_GERAL_MALHARIA: TQRLabel;
    TabSheet4: TTabSheet;
    QRDBText4: TQRDBText;
    qProgramarARTIGO: TStringField;
    cdsProgramarARTIGO: TStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRL_MALHARIA: TQRLabel;
    qProgramarID_FOR_TINTURARIA: TIntegerField;
    cdsProgramarID_FOR_TINTURARIA: TIntegerField;
    QR_GRUPO: TQRPQuickrep;
    QRPBand9: TQRPBand;
    QRLabel22: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel23: TQRLabel;
    QRLabel27: TQRLabel;
    QRPBand10: TQRPBand;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRGroup3: TQRGroup;
    QRPShape2: TQRPShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel38: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRPBand11: TQRPBand;
    QRLabel43: TQRLabel;
    QRL_TOT_GRUPO: TQRLabel;
    QRPBand12: TQRPBand;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRSysData7: TQRSysData;
    QRChildBand2: TQRChildBand;
    QRBand2: TQRBand;
    QRLabel48: TQRLabel;
    QRL_TOT_GRUPO_GERAL: TQRLabel;
    TabSheet5: TTabSheet;
    QR_TINTURARIA: TQRPQuickrep;
    QRPBand13: TQRPBand;
    QRLabel44: TQRLabel;
    QRSysData8: TQRSysData;
    QRSysData9: TQRSysData;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRPBand14: TQRPBand;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRGroup4: TQRGroup;
    QRPShape3: TQRPShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText36: TQRDBText;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRPBand15: TQRPBand;
    QRLabel60: TQRLabel;
    QRL_TOT_TINTURARIA: TQRLabel;
    QRPBand16: TQRPBand;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRSysData10: TQRSysData;
    QRChildBand3: TQRChildBand;
    QRBand3: TQRBand;
    QRLabel65: TQRLabel;
    QRL_TOTAL_TINTURARIA: TQRLabel;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edtCliKeyPress(Sender: TObject; var Key: Char);
    procedure edtCliExit(Sender: TObject);
    procedure BB_LOCALIZARClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_IMPRIMIRClick(Sender: TObject);
    procedure QRPBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRPBand7BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRPBand11BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRPBand15BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProgramar: TfrmRelProgramar;
  Ssql : string;
  Total,TotPag, TotGeral : Double;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM;

procedure TfrmRelProgramar.BB_IMPRIMIRClick(Sender: TObject);
begin
  if (edtCli.Text <>'') and (DBLookupComboBox1.Text <> '') then
  begin
    QR_GERAL.Preview;
  end;

  if (edtCli.Text ='') and (DBLookupComboBox1.Text = '') then
  begin
    QR_AGRUPADO.Preview;
  end;
  if ( edtCli.Text = '') and (DBLookupComboBox1.Text <> '') then
  begin
    QR_TINTURARIA.Preview;
  end;
  if ( edtCli.Text <> '') and (DBLookupComboBox1.Text = '') then
  begin
    QR_GRUPO.Preview;
  end;

end;

procedure TfrmRelProgramar.BB_LOCALIZARClick(Sender: TObject);
begin
  Ssql := ' SELECT  F.NOME AS TINTURARIA, M.NOME AS MALHARIA, MP.NOME_MATERIA as ARTIGO, RP.NR_NF_REMESSA, RP.DT_EMISSAO, PRP.ID_FOR_TINTURARIA, '+
          ' SUM(IR.QUANT_FATURADO) AS QUANT_NF, '+
          ' (  SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
          ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
          ' WHERE PR.NR_NOTA_REMESSA= RP.NR_NF_REMESSA '+
          ' GROUP BY PR.NR_NOTA_REMESSA ),'+
          ' SUM(IR.QUANT_FATURADO) - '+
          ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP'+
          ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA) '+
          ' WHERE PR.NR_NOTA_REMESSA= RP.NR_NF_REMESSA '+
          ' GROUP BY PR.NR_NOTA_REMESSA )AS QT_SEM_PROGR,'+
          '  C.R_SOCIAL' +
          ' FROM TB_ITEM_REMESSA_PRODUCAO IR '+
          ' LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
          ' LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
          ' LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
          ' LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
          ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
          ' LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
          ' LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)      ';



  if (edtCli.Text ='' ) and (DBLookupComboBox1.Text = '') then
  begin
     cdsProgramar.Close;
     cdsProgramar.CommandText := Ssql+ ' GROUP BY  M.NOME , MP.NOME_MATERIA, RP.NR_NF_REMESSA, RP.DT_EMISSAO, C.R_SOCIAL, F.NOME, PRP.ID_FOR_TINTURARIA  ';
     cdsProgramar.Open ;

    if cdsProgramar.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsProgramar.Close;
    end
    else
    begin
      DBGrid1.SetFocus;

      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       ';


      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      //TotalFios              := DM.cdsDinamica.Fields[0].AsFloat;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
     // TotalElastano              := DM.cdsDinamica.Fields[1].AsFloat;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);
    end;

    end;
  if (edtCli.Text <>'' ) and (DBLookupComboBox1.Text = '') then
  begin
     cdsProgramar.Close;
     cdsProgramar.CommandText := Ssql+ ' WHERE C.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
      ' GROUP BY  M.NOME , MP.NOME_MATERIA, RP.NR_NF_REMESSA, RP.DT_EMISSAO, C.R_SOCIAL,  F.NOME,  PRP.ID_FOR_TINTURARIA  ';
     cdsProgramar.Open ;

    if cdsProgramar.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsProgramar.Close;
    end
    else
    begin
      DBGrid1.SetFocus;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' LEFT OUTER JOIN TB_CLIENTE CC ON (CC.ID_CLIENTE = PR.ID_CLIENTE)'+
                                    ' WHERE CC.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+'),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' LEFT OUTER JOIN TB_CLIENTE CC ON (CC.ID_CLIENTE = PR.ID_CLIENTE)'+
                                    ' WHERE CC.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    ' WHERE C.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text);


      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      //TotalFios              := DM.cdsDinamica.Fields[0].AsFloat;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
     // TotalElastano              := DM.cdsDinamica.Fields[1].AsFloat;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

    end;
  end;

  if (edtCli.Text <>'' ) and (DBLookupComboBox1.Text <> '') then
  begin

     cdsProgramar.Close;
     cdsProgramar.CommandText := Ssql+ ' WHERE C.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                       ' AND PRP.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
      ' GROUP BY  M.NOME , MP.NOME_MATERIA, RP.NR_NF_REMESSA, RP.DT_EMISSAO, C.R_SOCIAL,  F.NOME, PRP.ID_FOR_TINTURARIA  ';
     cdsProgramar.Open ;

    if cdsProgramar.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsProgramar.Close;
    end
    else
    begin
      DBGrid1.SetFocus;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' LEFT OUTER JOIN TB_CLIENTE CC ON (CC.ID_CLIENTE = PR.ID_CLIENTE)'+
                                    ' WHERE CC.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                    ' AND PR.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    '),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' LEFT OUTER JOIN TB_CLIENTE CC ON (CC.ID_CLIENTE = PR.ID_CLIENTE)'+
                                    ' WHERE CC.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                    ' AND PR.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    ' WHERE C.ID_GRUPO_EMPRESA = '+QuotedStr(edtCli.Text)+
                                    ' AND PRP.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString);


      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      //TotalFios              := DM.cdsDinamica.Fields[0].AsFloat;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
     // TotalElastano              := DM.cdsDinamica.Fields[1].AsFloat;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);



    end;
  end;

  if (edtCli.Text ='' ) and (DBLookupComboBox1.Text <> '') then
  begin
     cdsProgramar.Close;
     cdsProgramar.CommandText := Ssql+ ' WHERE PRP.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
      ' GROUP BY  M.NOME ,MP.NOME_MATERIA, RP.NR_NF_REMESSA, RP.DT_EMISSAO, C.R_SOCIAL,  F.NOME, PRP.ID_FOR_TINTURARIA  ';
     cdsProgramar.Open ;

    if cdsProgramar.IsEmpty then
    begin
      ShowMessage('Nenhum Registro Encontrado.');
      cdsProgramar.Close;
    end
    else
    begin
      DBGrid1.SetFocus;

      DBGrid1.SetFocus;
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' LEFT OUTER JOIN TB_CLIENTE CC ON (CC.ID_CLIENTE = PR.ID_CLIENTE)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    '),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' LEFT OUTER JOIN TB_CLIENTE CC ON (CC.ID_CLIENTE = PR.ID_CLIENTE)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString)+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    '  WHERE PRP.ID_FOR_TINTURARIA = '+QuotedStr(cdsFornecedorID_FORNECEDOR.AsString);


      DM.cdsDinamica.Open;

      QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      //TotalFios              := DM.cdsDinamica.Fields[0].AsFloat;

      QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
     // TotalElastano              := DM.cdsDinamica.Fields[1].AsFloat;

      QRL_TOTAL_MALHARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);


    end;
  end;

end;

procedure TfrmRelProgramar.DBLookupComboBox1Enter(Sender: TObject);
begin
  cdsFornecedor.Open;
end;

procedure TfrmRelProgramar.edtCliExit(Sender: TObject);
begin
  if edtCli.Text = '' Then
  begin
    exit;
  end;
  DM.cdsGrupoEmpresa.Open;
  if DM.cdsGrupoEmpresa.Locate('ID_GRUPO_EMPRESA',edtCli.Text,[]) then
  begin
    edtCli.Text        := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsString;
    lblCliente.Caption := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
    DBLookupComboBox1.SetFocus;
  end
  else
  begin
    ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                '                                     '+#13+
                '   Grupo Cliente N�o Encontrado      '+#13+
                '                                     ');
    SpeedButton1Click(Self);
  end;
end;

procedure TfrmRelProgramar.edtCliKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmRelProgramar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmRelProgramar := nil;
end;

procedure TfrmRelProgramar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmRelProgramar.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, (         ' +
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP ' +
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)' +
                                    ' ),                                                                             ' +
                                    ' SUM(IR.QUANT_FATURADO) -                                                       ' +
                                    '( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP                     '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)     ' +
                                    ' )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR                                ' +
                                    ' LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)        ' +
                                    ' LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)                      ' +
                                    ' LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)                   ' +
                                    ' LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)' +
                                    ' LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)     ' +
                                    ' LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)       ' +
                                    ' LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)           ' ;

      DM.cdsDinamica.Open;

      //QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      //TotalFios              := DM.cdsDinamica.Fields[0].AsFloat;

      //QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
     // TotalElastano              := DM.cdsDinamica.Fields[1].AsFloat;

      QRL_GERAL_MALHARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

end;

procedure TfrmRelProgramar.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_GRUPO_EMPRESA ='+edtCli.Text+'),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_GRUPO_EMPRESA ='+edtCli.Text+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    ' WHERE C.ID_GRUPO_EMPRESA = '+edtCli.Text;


      DM.cdsDinamica.Open;


      QRL_TOT_GRUPO_GERAL.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

end;

procedure TfrmRelProgramar.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA ='+cdsProgramarID_FOR_TINTURARIA.AsString+'),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA ='+cdsProgramarID_FOR_TINTURARIA.AsString+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    '  WHERE  PRP.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString;


      DM.cdsDinamica.Open;


      QRL_TOTAL_TINTURARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

end;

procedure TfrmRelProgramar.QRPBand11BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_GRUPO_EMPRESA ='+edtCli.Text+
                                    ' AND PR.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString+'),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_GRUPO_EMPRESA ='+edtCli.Text+
                                    ' AND PR.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    ' WHERE  PRP.ID_FOR_TINTURARIA = '+edtCli.Text+
                                    ' AND PRP.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString;


      DM.cdsDinamica.Open;


      QRL_TOT_GRUPO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

end;

procedure TfrmRelProgramar.QRPBand15BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString+'),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    ' WHERE PRP.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString;


      DM.cdsDinamica.Open;


      QRL_TOT_TINTURARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

end;

procedure TfrmRelProgramar.QRPBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRL_TINTURARIA.Caption := 'Estoque Geral na '+cdsProgramarTINTURARIA.AsString;
end;

procedure TfrmRelProgramar.QRPBand7BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT SUM(IR.QUANT_FATURADO) AS QUANT_NF, ( '+
                                    ' SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO  FROM TB_ITEM_PRG IP '+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA ='+cdsProgramarID_FOR_TINTURARIA.AsString+'),'+
                                    ' SUM(IR.QUANT_FATURADO) - '+
                                    ' ( SELECT SUM(IP.PESO) AS QUANT_PROGRAMADO FROM TB_ITEM_PRG IP'+
                                    ' JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG_TINTURARIA)'+
                                    ' WHERE PR.ID_FOR_TINTURARIA ='+cdsProgramarID_FOR_TINTURARIA.AsString+
                                    '  )AS QT_SEM_PROGR FROM TB_ITEM_REMESSA_PRODUCAO IR'+
                                    '  LEFT OUTER JOIN TB_REMESSA_PRODUCAO RP ON (RP.ID_REMESSA = IR.ID_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)              '+
                                    '  LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)           '+
                                    '  LEFT OUTER JOIN TB_PRG_TINTURARIA PRP ON (PRP.NR_NOTA_REMESSA = RP.NR_NF_REMESSA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PRP.ID_FOR_TINTURARIA)'+
                                    '  LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN_MALHARIA)  '+
                                    '  LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MATERIA)       '+
                                    ' WHERE  PRP.ID_FOR_TINTURARIA = '+cdsProgramarID_FOR_TINTURARIA.AsString;


      DM.cdsDinamica.Open;

      //QRL_TOTAL_FIOS.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[0].AsFloat);
      //TotalFios              := DM.cdsDinamica.Fields[0].AsFloat;

      //QRL_TOTAL_ELASTANO.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[2].AsFloat);
     // TotalElastano              := DM.cdsDinamica.Fields[1].AsFloat;

      QRL_MALHARIA.Caption := FormatFloat('###,###0.00',DM.cdsDinamica.Fields[1].AsFloat);

end;

procedure TfrmRelProgramar.SpeedButton1Click(Sender: TObject);
begin
  DM.cdsGrupoEmpresa.Close;
  DM.cdsGrupoEmpresa.Open;
  Pesquisa(DM.cdsGrupoEmpresa,['NOME_DO_GRUPO','ID_GRUPO_EMPRESA'],['Grupo Cliente','C�digo'],[40,4],'','','','','Grupo Cliente','Grupo Cliente');
  edtCli.Text        := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsString;
  lblCliente.Caption := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
  DBLookupComboBox1.SetFocus;
end;

procedure TfrmRelProgramar.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelProgramar.SpeedButton4Click(Sender: TObject);
begin
  cdsFornecedor.Close;
end;

end.
