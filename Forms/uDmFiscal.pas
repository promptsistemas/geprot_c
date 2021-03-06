unit uDmFiscal;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, Data.DBXFirebird,IniFiles,
  Forms,Windows;

type
  TDM_FISCAL = class(TDataModule)
    qConexaoFiscal: TSQLConnection;
    qVendaDTO: TSQLQuery;
    qVendaDTOVENDADTO_ID: TFMTBCDField;
    qVendaDTOCANCELADA: TStringField;
    qVendaDTOCFOP: TFloatField;
    qVendaDTOCHV_NFE: TStringField;
    qVendaDTOCLIENTE: TStringField;
    qVendaDTOCODLOJA: TFloatField;
    qVendaDTODATAMOVI: TStringField;
    qVendaDTOFORMALAN: TStringField;
    qVendaDTOID: TStringField;
    qVendaDTOMENSAGEM: TStringField;
    qVendaDTOMOD_NOTA: TFloatField;
    qVendaDTONUMCUPOM: TFloatField;
    qVendaDTONUMPRE: TFloatField;
    qVendaDTONUMSERIE: TStringField;
    qVendaDTONUM_NOTA: TFloatField;
    qVendaDTOOPERADOR: TStringField;
    qVendaDTOSER_NOTA: TStringField;
    qVendaDTOSUB_NOTA: TStringField;
    qVendaDTOTOTVENDA: TFloatField;
    qVendaDTOTOT_ITEM: TFloatField;
    qVendaDTOVALACRES: TFloatField;
    qVendaDTOVALDESC: TFloatField;
    qVendaDTOVENDEDOR: TStringField;
    dspVendaDTO: TDataSetProvider;
    cdsVendaDTO: TClientDataSet;
    cdsVendaDTOVENDADTO_ID: TFMTBCDField;
    cdsVendaDTOCANCELADA: TStringField;
    cdsVendaDTOCFOP: TFloatField;
    cdsVendaDTOCHV_NFE: TStringField;
    cdsVendaDTOCLIENTE: TStringField;
    cdsVendaDTOCODLOJA: TFloatField;
    cdsVendaDTODATAMOVI: TStringField;
    cdsVendaDTOFORMALAN: TStringField;
    cdsVendaDTOID: TStringField;
    cdsVendaDTOMENSAGEM: TStringField;
    cdsVendaDTOMOD_NOTA: TFloatField;
    cdsVendaDTONUMCUPOM: TFloatField;
    cdsVendaDTONUMPRE: TFloatField;
    cdsVendaDTONUMSERIE: TStringField;
    cdsVendaDTONUM_NOTA: TFloatField;
    cdsVendaDTOOPERADOR: TStringField;
    cdsVendaDTOSER_NOTA: TStringField;
    cdsVendaDTOSUB_NOTA: TStringField;
    cdsVendaDTOTOTVENDA: TFloatField;
    cdsVendaDTOTOT_ITEM: TFloatField;
    cdsVendaDTOVALACRES: TFloatField;
    cdsVendaDTOVALDESC: TFloatField;
    cdsVendaDTOVENDEDOR: TStringField;
    dsVendaDTO: TDataSource;
    qItemVendaDTO: TSQLQuery;
    qItemVendaDTOITEMVENDADTO_ID: TFMTBCDField;
    qItemVendaDTOACREITEM: TFloatField;
    qItemVendaDTOACREVEND: TFloatField;
    qItemVendaDTOALIQUOTA: TFloatField;
    qItemVendaDTOCODLOJA: TFloatField;
    qItemVendaDTODATAMOVI: TStringField;
    qItemVendaDTODESCITEM: TFloatField;
    qItemVendaDTODESCVEND: TFloatField;
    qItemVendaDTOGUID: TStringField;
    qItemVendaDTOGUIDPROD: TStringField;
    qItemVendaDTOID: TStringField;
    qItemVendaDTONUMCUPOM: TFloatField;
    qItemVendaDTONUMSERIE: TStringField;
    qItemVendaDTOPCOVENDA: TFloatField;
    qItemVendaDTOPRODUTO: TStringField;
    qItemVendaDTOQTDEMBAL: TFloatField;
    qItemVendaDTOQTDVENDA: TFloatField;
    qItemVendaDTOTIPOALIQ: TStringField;
    qItemVendaDTOUNIDMEDI: TStringField;
    dspItemVendaDTO: TDataSetProvider;
    cdsItemVendaDTO: TClientDataSet;
    cdsItemVendaDTOITEMVENDADTO_ID: TFMTBCDField;
    cdsItemVendaDTOACREITEM: TFloatField;
    cdsItemVendaDTOACREVEND: TFloatField;
    cdsItemVendaDTOALIQUOTA: TFloatField;
    cdsItemVendaDTOCODLOJA: TFloatField;
    cdsItemVendaDTODATAMOVI: TStringField;
    cdsItemVendaDTODESCITEM: TFloatField;
    cdsItemVendaDTODESCVEND: TFloatField;
    cdsItemVendaDTOGUID: TStringField;
    cdsItemVendaDTOGUIDPROD: TStringField;
    cdsItemVendaDTOID: TStringField;
    cdsItemVendaDTONUMCUPOM: TFloatField;
    cdsItemVendaDTONUMSERIE: TStringField;
    cdsItemVendaDTOPCOVENDA: TFloatField;
    cdsItemVendaDTOPRODUTO: TStringField;
    cdsItemVendaDTOQTDEMBAL: TFloatField;
    cdsItemVendaDTOQTDVENDA: TFloatField;
    cdsItemVendaDTOTIPOALIQ: TStringField;
    cdsItemVendaDTOUNIDMEDI: TStringField;
    dsItemVendaDTO: TDataSource;
    qReducaoZ: TSQLQuery;
    qReducaoZREDUCAOZDTO_ID: TFMTBCDField;
    qReducaoZALQ_TR01: TFloatField;
    qReducaoZALQ_TR02: TFloatField;
    qReducaoZALQ_TR03: TFloatField;
    qReducaoZALQ_TR04: TFloatField;
    qReducaoZALQ_TR05: TFloatField;
    qReducaoZALQ_TR06: TFloatField;
    qReducaoZALQ_TR07: TFloatField;
    qReducaoZALQ_TR08: TFloatField;
    qReducaoZALQ_TR09: TFloatField;
    qReducaoZALQ_TR10: TFloatField;
    qReducaoZALQ_TR11: TFloatField;
    qReducaoZALQ_TR12: TFloatField;
    qReducaoZALQ_TR13: TFloatField;
    qReducaoZALQ_TR14: TFloatField;
    qReducaoZALQ_TR15: TFloatField;
    qReducaoZALQ_TR16: TFloatField;
    qReducaoZALQ_TR17: TFloatField;
    qReducaoZALQ_TR18: TFloatField;
    qReducaoZALQ_TR19: TFloatField;
    qReducaoZCODLOJA: TFloatField;
    qReducaoZCONT_FIM: TFloatField;
    qReducaoZCONT_INI: TFloatField;
    qReducaoZCONT_REI: TFloatField;
    qReducaoZCONT_Z: TFloatField;
    qReducaoZDATAMOVI: TStringField;
    qReducaoZGTOT_FIM: TFloatField;
    qReducaoZGTOT_INI: TFloatField;
    qReducaoZID: TStringField;
    qReducaoZNUMSERIE: TStringField;
    qReducaoZTIP_TR01: TStringField;
    qReducaoZTIP_TR02: TStringField;
    qReducaoZTIP_TR03: TStringField;
    qReducaoZTIP_TR04: TStringField;
    qReducaoZTIP_TR05: TStringField;
    qReducaoZTIP_TR06: TStringField;
    qReducaoZTIP_TR07: TStringField;
    qReducaoZTIP_TR08: TStringField;
    qReducaoZTIP_TR09: TStringField;
    qReducaoZTIP_TR10: TStringField;
    qReducaoZTIP_TR11: TStringField;
    qReducaoZTIP_TR12: TStringField;
    qReducaoZTIP_TR13: TStringField;
    qReducaoZTIP_TR14: TStringField;
    qReducaoZTIP_TR15: TStringField;
    qReducaoZTIP_TR16: TStringField;
    qReducaoZTIP_TR17: TStringField;
    qReducaoZTIP_TR18: TStringField;
    qReducaoZTIP_TR19: TStringField;
    qReducaoZTOT_ACRE: TFloatField;
    qReducaoZTOT_CANC: TFloatField;
    qReducaoZTOT_DESC: TFloatField;
    qReducaoZTOT_INCI: TFloatField;
    qReducaoZTOT_ISEN: TFloatField;
    qReducaoZTOT_SUBS: TFloatField;
    qReducaoZTOT_TR01: TFloatField;
    qReducaoZTOT_TR02: TFloatField;
    qReducaoZTOT_TR03: TFloatField;
    qReducaoZTOT_TR04: TFloatField;
    qReducaoZTOT_TR05: TFloatField;
    qReducaoZTOT_TR06: TFloatField;
    qReducaoZTOT_TR07: TFloatField;
    qReducaoZTOT_TR08: TFloatField;
    qReducaoZTOT_TR09: TFloatField;
    qReducaoZTOT_TR10: TFloatField;
    qReducaoZTOT_TR11: TFloatField;
    qReducaoZTOT_TR12: TFloatField;
    qReducaoZTOT_TR13: TFloatField;
    qReducaoZTOT_TR14: TFloatField;
    qReducaoZTOT_TR15: TFloatField;
    qReducaoZTOT_TR16: TFloatField;
    qReducaoZTOT_TR17: TFloatField;
    qReducaoZTOT_TR18: TFloatField;
    qReducaoZTOT_TR19: TFloatField;
    dspReducaoZ: TDataSetProvider;
    cdsReducaoZ: TClientDataSet;
    cdsReducaoZDATAMOVI: TStringField;
    cdsReducaoZGTOT_FIM: TFloatField;
    cdsReducaoZGTOT_INI: TFloatField;
    cdsReducaoZNUMSERIE: TStringField;
    cdsReducaoZCONT_FIM: TFloatField;
    cdsReducaoZCONT_INI: TFloatField;
    cdsReducaoZCONT_REI: TFloatField;
    cdsReducaoZCONT_Z: TFloatField;
    cdsReducaoZREDUCAOZDTO_ID: TFMTBCDField;
    cdsReducaoZTOT_TR01: TFloatField;
    cdsReducaoZALQ_TR01: TFloatField;
    cdsReducaoZALQ_TR02: TFloatField;
    cdsReducaoZALQ_TR03: TFloatField;
    cdsReducaoZALQ_TR04: TFloatField;
    cdsReducaoZALQ_TR05: TFloatField;
    cdsReducaoZALQ_TR06: TFloatField;
    cdsReducaoZALQ_TR07: TFloatField;
    cdsReducaoZALQ_TR08: TFloatField;
    cdsReducaoZALQ_TR09: TFloatField;
    cdsReducaoZALQ_TR10: TFloatField;
    cdsReducaoZALQ_TR11: TFloatField;
    cdsReducaoZALQ_TR12: TFloatField;
    cdsReducaoZALQ_TR13: TFloatField;
    cdsReducaoZALQ_TR14: TFloatField;
    cdsReducaoZALQ_TR15: TFloatField;
    cdsReducaoZALQ_TR16: TFloatField;
    cdsReducaoZALQ_TR17: TFloatField;
    cdsReducaoZALQ_TR18: TFloatField;
    cdsReducaoZALQ_TR19: TFloatField;
    cdsReducaoZCODLOJA: TFloatField;
    cdsReducaoZID: TStringField;
    cdsReducaoZTIP_TR01: TStringField;
    cdsReducaoZTIP_TR02: TStringField;
    cdsReducaoZTIP_TR03: TStringField;
    cdsReducaoZTIP_TR04: TStringField;
    cdsReducaoZTIP_TR05: TStringField;
    cdsReducaoZTIP_TR06: TStringField;
    cdsReducaoZTIP_TR07: TStringField;
    cdsReducaoZTIP_TR08: TStringField;
    cdsReducaoZTIP_TR09: TStringField;
    cdsReducaoZTIP_TR10: TStringField;
    cdsReducaoZTIP_TR11: TStringField;
    cdsReducaoZTIP_TR12: TStringField;
    cdsReducaoZTIP_TR13: TStringField;
    cdsReducaoZTIP_TR14: TStringField;
    cdsReducaoZTIP_TR15: TStringField;
    cdsReducaoZTIP_TR16: TStringField;
    cdsReducaoZTIP_TR17: TStringField;
    cdsReducaoZTIP_TR18: TStringField;
    cdsReducaoZTIP_TR19: TStringField;
    cdsReducaoZTOT_ACRE: TFloatField;
    cdsReducaoZTOT_CANC: TFloatField;
    cdsReducaoZTOT_DESC: TFloatField;
    cdsReducaoZTOT_INCI: TFloatField;
    cdsReducaoZTOT_ISEN: TFloatField;
    cdsReducaoZTOT_SUBS: TFloatField;
    cdsReducaoZTOT_TR02: TFloatField;
    cdsReducaoZTOT_TR03: TFloatField;
    cdsReducaoZTOT_TR04: TFloatField;
    cdsReducaoZTOT_TR05: TFloatField;
    cdsReducaoZTOT_TR06: TFloatField;
    cdsReducaoZTOT_TR07: TFloatField;
    cdsReducaoZTOT_TR08: TFloatField;
    cdsReducaoZTOT_TR09: TFloatField;
    cdsReducaoZTOT_TR10: TFloatField;
    cdsReducaoZTOT_TR11: TFloatField;
    cdsReducaoZTOT_TR12: TFloatField;
    cdsReducaoZTOT_TR13: TFloatField;
    cdsReducaoZTOT_TR14: TFloatField;
    cdsReducaoZTOT_TR15: TFloatField;
    cdsReducaoZTOT_TR16: TFloatField;
    cdsReducaoZTOT_TR17: TFloatField;
    cdsReducaoZTOT_TR18: TFloatField;
    cdsReducaoZTOT_TR19: TFloatField;
    dsReducaoZ: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IniControle : TIniFile;
  end;

var
  DM_FISCAL: TDM_FISCAL;

implementation

{$R *.dfm}

procedure TDM_FISCAL.DataModuleCreate(Sender: TObject);
begin
  if (not qConexaoFiscal.Connected ) then
  begin
    try
       IniControle := TIniFile.Create(ExtractFilePath(Application.ExeName)+'EXPORTACAO.INI');
      if Trim(IniControle.ReadString('SERVIDOR', 'DATABASE', '')) <> '' then
      begin
        qConexaoFiscal.Params.Clear;
        qConexaoFiscal.Params.Values['DATABASE'] := Inicontrole.ReadString('SERVIDOR','DATABASE','');
        qConexaoFiscal.Params.Values['User_Name'] := Inicontrole.ReadString('SERVIDOR','User_Name','');
        qConexaoFiscal.Params.Values['PASSWORD'] := Inicontrole.ReadString('SERVIDOR','PASSWORD','masterkey');
        qConexaoFiscal.Params.Values['SQLDialect'] := Trim(Inicontrole.ReadString('SERVIDOR','SQLDialect','3'));
        qConexaoFiscal.connected:= true;
        Inicontrole.Free;
      end;
    except
      Application.MessageBox( 'N�o foi possivel conectar com o banco de dados.' + #13 +
                              'verifique se o arquivo de configura��o est� configurado, ' + #13 +
                              'Tente Novamente ou Entre em contato com suporte para esclarecer qualquer d�vida.',
                              'Error Interno',mb_ok + mb_IconError );
        Application.Terminate;
    end;
  end;

end;

end.
