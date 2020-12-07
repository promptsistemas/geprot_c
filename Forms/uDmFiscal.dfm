object DM_FISCAL: TDM_FISCAL
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 469
  Width = 508
  object qConexaoFiscal: TSQLConnection
    ConnectionName = 'DincashFiscal'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver210.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=21.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver210.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=21.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=127.0.0.1:C:\GeProt\Bdados\EXPORTACAO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Left = 40
    Top = 40
  end
  object qVendaDTO: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      ' v.VENDADTO_ID,'
      ' v.CANCELADA,'
      ' v.CFOP,'
      ' v.CHV_NFE,'
      ' v.CLIENTE,'
      ' v.CODLOJA,'
      ' v.DATAMOVI,'
      ' v.FORMALAN,'
      ' v.ID,'
      ' v.MENSAGEM,'
      ' v.MOD_NOTA,'
      ' v.NUMCUPOM,'
      ' v.NUMPRE,'
      ' v.NUMSERIE,'
      ' v.NUM_NOTA,'
      ' v.OPERADOR,'
      ' v.SER_NOTA,'
      ' v.SUB_NOTA,'
      ' v.TOTVENDA,'
      ' v.TOT_ITEM,'
      ' v.VALACRES,'
      ' v.VALDESC,'
      ' v.VENDEDOR'
      'from vendadto v'
      'ORDER BY V.numcupom DESC , V.VENDADTO_ID'
      '')
    SQLConnection = qConexaoFiscal
    Left = 64
    Top = 96
    object qVendaDTOVENDADTO_ID: TFMTBCDField
      FieldName = 'VENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object qVendaDTOCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 256
    end
    object qVendaDTOCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object qVendaDTOCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 256
    end
    object qVendaDTOCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 256
    end
    object qVendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object qVendaDTODATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qVendaDTOFORMALAN: TStringField
      FieldName = 'FORMALAN'
      Size = 256
    end
    object qVendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object qVendaDTOMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 256
    end
    object qVendaDTOMOD_NOTA: TFloatField
      FieldName = 'MOD_NOTA'
    end
    object qVendaDTONUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object qVendaDTONUMPRE: TFloatField
      FieldName = 'NUMPRE'
    end
    object qVendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qVendaDTONUM_NOTA: TFloatField
      FieldName = 'NUM_NOTA'
    end
    object qVendaDTOOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Size = 256
    end
    object qVendaDTOSER_NOTA: TStringField
      FieldName = 'SER_NOTA'
      Size = 256
    end
    object qVendaDTOSUB_NOTA: TStringField
      FieldName = 'SUB_NOTA'
      Size = 256
    end
    object qVendaDTOTOTVENDA: TFloatField
      FieldName = 'TOTVENDA'
    end
    object qVendaDTOTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
    end
    object qVendaDTOVALACRES: TFloatField
      FieldName = 'VALACRES'
    end
    object qVendaDTOVALDESC: TFloatField
      FieldName = 'VALDESC'
    end
    object qVendaDTOVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
  end
  object dspVendaDTO: TDataSetProvider
    DataSet = qVendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 96
    Top = 96
  end
  object cdsVendaDTO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendaDTO'
    Left = 128
    Top = 96
    object cdsVendaDTOVENDADTO_ID: TFMTBCDField
      FieldName = 'VENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsVendaDTOCANCELADA: TStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Size = 256
    end
    object cdsVendaDTOCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object cdsVendaDTOCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 256
    end
    object cdsVendaDTOCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 256
    end
    object cdsVendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsVendaDTODATAMOVI: TStringField
      DisplayLabel = 'Data Venda'
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsVendaDTOFORMALAN: TStringField
      FieldName = 'FORMALAN'
      Size = 256
    end
    object cdsVendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsVendaDTOMENSAGEM: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'MENSAGEM'
      Size = 256
    end
    object cdsVendaDTOMOD_NOTA: TFloatField
      DisplayLabel = 'Modelo'
      FieldName = 'MOD_NOTA'
    end
    object cdsVendaDTONUMCUPOM: TFloatField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'NUMCUPOM'
    end
    object cdsVendaDTONUMPRE: TFloatField
      FieldName = 'NUMPRE'
    end
    object cdsVendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsVendaDTONUM_NOTA: TFloatField
      FieldName = 'NUM_NOTA'
    end
    object cdsVendaDTOOPERADOR: TStringField
      DisplayLabel = 'Operador'
      FieldName = 'OPERADOR'
      Size = 256
    end
    object cdsVendaDTOSER_NOTA: TStringField
      FieldName = 'SER_NOTA'
      Size = 256
    end
    object cdsVendaDTOSUB_NOTA: TStringField
      FieldName = 'SUB_NOTA'
      Size = 256
    end
    object cdsVendaDTOTOTVENDA: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'TOTVENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsVendaDTOTOT_ITEM: TFloatField
      DisplayLabel = 'Total Item'
      FieldName = 'TOT_ITEM'
    end
    object cdsVendaDTOVALACRES: TFloatField
      FieldName = 'VALACRES'
    end
    object cdsVendaDTOVALDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'VALDESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsVendaDTOVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
  end
  object dsVendaDTO: TDataSource
    DataSet = cdsVendaDTO
    Left = 160
    Top = 96
  end
  object qItemVendaDTO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMCUPOM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' I.ITEMVENDADTO_ID,'
      ' I.ACREITEM,'
      ' I.ACREVEND,'
      ' I.ALIQUOTA,'
      ' I.CODLOJA,'
      ' I.DATAMOVI,'
      ' I.DESCITEM,'
      ' I.DESCVEND,'
      ' I.GUID,'
      ' I.GUIDPROD,'
      ' I.ID,'
      ' I.NUMCUPOM,'
      ' I.NUMSERIE,'
      ' I.PCOVENDA,'
      ' I.PRODUTO,'
      ' I.QTDEMBAL,'
      ' I.QTDVENDA,'
      ' I.TIPOALIQ,'
      ' I.UNIDMEDI'
      'FROM ITEMVENDADTO I'
      'WHERE I.NUMCUPOM = :NUMCUPOM')
    SQLConnection = qConexaoFiscal
    Left = 64
    Top = 136
    object qItemVendaDTOITEMVENDADTO_ID: TFMTBCDField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object qItemVendaDTOACREITEM: TFloatField
      FieldName = 'ACREITEM'
    end
    object qItemVendaDTOACREVEND: TFloatField
      FieldName = 'ACREVEND'
    end
    object qItemVendaDTOALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qItemVendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object qItemVendaDTODATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qItemVendaDTODESCITEM: TFloatField
      FieldName = 'DESCITEM'
    end
    object qItemVendaDTODESCVEND: TFloatField
      FieldName = 'DESCVEND'
    end
    object qItemVendaDTOGUID: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object qItemVendaDTOGUIDPROD: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object qItemVendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object qItemVendaDTONUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object qItemVendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qItemVendaDTOPCOVENDA: TFloatField
      FieldName = 'PCOVENDA'
    end
    object qItemVendaDTOPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 256
    end
    object qItemVendaDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object qItemVendaDTOQTDVENDA: TFloatField
      FieldName = 'QTDVENDA'
    end
    object qItemVendaDTOTIPOALIQ: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object qItemVendaDTOUNIDMEDI: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
  end
  object dspItemVendaDTO: TDataSetProvider
    DataSet = qItemVendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 96
    Top = 136
  end
  object cdsItemVendaDTO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUMCUPOM'
    MasterFields = 'NUMCUPOM'
    MasterSource = dsVendaDTO
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMCUPOM'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemVendaDTO'
    Left = 128
    Top = 136
    object cdsItemVendaDTOITEMVENDADTO_ID: TFMTBCDField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsItemVendaDTOACREITEM: TFloatField
      FieldName = 'ACREITEM'
    end
    object cdsItemVendaDTOACREVEND: TFloatField
      FieldName = 'ACREVEND'
    end
    object cdsItemVendaDTOALIQUOTA: TFloatField
      DisplayLabel = 'Aliquota'
      FieldName = 'ALIQUOTA'
    end
    object cdsItemVendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsItemVendaDTODATAMOVI: TStringField
      DisplayLabel = 'Data Venda'
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsItemVendaDTODESCITEM: TFloatField
      FieldName = 'DESCITEM'
    end
    object cdsItemVendaDTODESCVEND: TFloatField
      FieldName = 'DESCVEND'
    end
    object cdsItemVendaDTOGUID: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object cdsItemVendaDTOGUIDPROD: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object cdsItemVendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsItemVendaDTONUMCUPOM: TFloatField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'NUMCUPOM'
    end
    object cdsItemVendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsItemVendaDTOPCOVENDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'PCOVENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsItemVendaDTOPRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Size = 256
    end
    object cdsItemVendaDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object cdsItemVendaDTOQTDVENDA: TFloatField
      DisplayLabel = 'Quant Vend'
      FieldName = 'QTDVENDA'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
    end
    object cdsItemVendaDTOTIPOALIQ: TStringField
      DisplayLabel = 'Tipo Aliq'
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object cdsItemVendaDTOUNIDMEDI: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDMEDI'
      Size = 256
    end
  end
  object dsItemVendaDTO: TDataSource
    DataSet = cdsItemVendaDTO
    Left = 159
    Top = 136
  end
  object qReducaoZ: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'R.*'
      'FROM REDUCAOZDTO R'
      '')
    SQLConnection = qConexaoFiscal
    Left = 64
    Top = 180
    object qReducaoZREDUCAOZDTO_ID: TFMTBCDField
      FieldName = 'REDUCAOZDTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object qReducaoZALQ_TR01: TFloatField
      FieldName = 'ALQ_TR01'
    end
    object qReducaoZALQ_TR02: TFloatField
      FieldName = 'ALQ_TR02'
    end
    object qReducaoZALQ_TR03: TFloatField
      FieldName = 'ALQ_TR03'
    end
    object qReducaoZALQ_TR04: TFloatField
      FieldName = 'ALQ_TR04'
    end
    object qReducaoZALQ_TR05: TFloatField
      FieldName = 'ALQ_TR05'
    end
    object qReducaoZALQ_TR06: TFloatField
      FieldName = 'ALQ_TR06'
    end
    object qReducaoZALQ_TR07: TFloatField
      FieldName = 'ALQ_TR07'
    end
    object qReducaoZALQ_TR08: TFloatField
      FieldName = 'ALQ_TR08'
    end
    object qReducaoZALQ_TR09: TFloatField
      FieldName = 'ALQ_TR09'
    end
    object qReducaoZALQ_TR10: TFloatField
      FieldName = 'ALQ_TR10'
    end
    object qReducaoZALQ_TR11: TFloatField
      FieldName = 'ALQ_TR11'
    end
    object qReducaoZALQ_TR12: TFloatField
      FieldName = 'ALQ_TR12'
    end
    object qReducaoZALQ_TR13: TFloatField
      FieldName = 'ALQ_TR13'
    end
    object qReducaoZALQ_TR14: TFloatField
      FieldName = 'ALQ_TR14'
    end
    object qReducaoZALQ_TR15: TFloatField
      FieldName = 'ALQ_TR15'
    end
    object qReducaoZALQ_TR16: TFloatField
      FieldName = 'ALQ_TR16'
    end
    object qReducaoZALQ_TR17: TFloatField
      FieldName = 'ALQ_TR17'
    end
    object qReducaoZALQ_TR18: TFloatField
      FieldName = 'ALQ_TR18'
    end
    object qReducaoZALQ_TR19: TFloatField
      FieldName = 'ALQ_TR19'
    end
    object qReducaoZCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object qReducaoZCONT_FIM: TFloatField
      FieldName = 'CONT_FIM'
    end
    object qReducaoZCONT_INI: TFloatField
      FieldName = 'CONT_INI'
    end
    object qReducaoZCONT_REI: TFloatField
      FieldName = 'CONT_REI'
    end
    object qReducaoZCONT_Z: TFloatField
      FieldName = 'CONT_Z'
    end
    object qReducaoZDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qReducaoZGTOT_FIM: TFloatField
      FieldName = 'GTOT_FIM'
    end
    object qReducaoZGTOT_INI: TFloatField
      FieldName = 'GTOT_INI'
    end
    object qReducaoZID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object qReducaoZNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qReducaoZTIP_TR01: TStringField
      FieldName = 'TIP_TR01'
      Size = 256
    end
    object qReducaoZTIP_TR02: TStringField
      FieldName = 'TIP_TR02'
      Size = 256
    end
    object qReducaoZTIP_TR03: TStringField
      FieldName = 'TIP_TR03'
      Size = 256
    end
    object qReducaoZTIP_TR04: TStringField
      FieldName = 'TIP_TR04'
      Size = 256
    end
    object qReducaoZTIP_TR05: TStringField
      FieldName = 'TIP_TR05'
      Size = 256
    end
    object qReducaoZTIP_TR06: TStringField
      FieldName = 'TIP_TR06'
      Size = 256
    end
    object qReducaoZTIP_TR07: TStringField
      FieldName = 'TIP_TR07'
      Size = 256
    end
    object qReducaoZTIP_TR08: TStringField
      FieldName = 'TIP_TR08'
      Size = 256
    end
    object qReducaoZTIP_TR09: TStringField
      FieldName = 'TIP_TR09'
      Size = 256
    end
    object qReducaoZTIP_TR10: TStringField
      FieldName = 'TIP_TR10'
      Size = 256
    end
    object qReducaoZTIP_TR11: TStringField
      FieldName = 'TIP_TR11'
      Size = 256
    end
    object qReducaoZTIP_TR12: TStringField
      FieldName = 'TIP_TR12'
      Size = 256
    end
    object qReducaoZTIP_TR13: TStringField
      FieldName = 'TIP_TR13'
      Size = 256
    end
    object qReducaoZTIP_TR14: TStringField
      FieldName = 'TIP_TR14'
      Size = 256
    end
    object qReducaoZTIP_TR15: TStringField
      FieldName = 'TIP_TR15'
      Size = 256
    end
    object qReducaoZTIP_TR16: TStringField
      FieldName = 'TIP_TR16'
      Size = 256
    end
    object qReducaoZTIP_TR17: TStringField
      FieldName = 'TIP_TR17'
      Size = 256
    end
    object qReducaoZTIP_TR18: TStringField
      FieldName = 'TIP_TR18'
      Size = 256
    end
    object qReducaoZTIP_TR19: TStringField
      FieldName = 'TIP_TR19'
      Size = 256
    end
    object qReducaoZTOT_ACRE: TFloatField
      FieldName = 'TOT_ACRE'
    end
    object qReducaoZTOT_CANC: TFloatField
      FieldName = 'TOT_CANC'
    end
    object qReducaoZTOT_DESC: TFloatField
      FieldName = 'TOT_DESC'
    end
    object qReducaoZTOT_INCI: TFloatField
      FieldName = 'TOT_INCI'
    end
    object qReducaoZTOT_ISEN: TFloatField
      FieldName = 'TOT_ISEN'
    end
    object qReducaoZTOT_SUBS: TFloatField
      FieldName = 'TOT_SUBS'
    end
    object qReducaoZTOT_TR01: TFloatField
      FieldName = 'TOT_TR01'
    end
    object qReducaoZTOT_TR02: TFloatField
      FieldName = 'TOT_TR02'
    end
    object qReducaoZTOT_TR03: TFloatField
      FieldName = 'TOT_TR03'
    end
    object qReducaoZTOT_TR04: TFloatField
      FieldName = 'TOT_TR04'
    end
    object qReducaoZTOT_TR05: TFloatField
      FieldName = 'TOT_TR05'
    end
    object qReducaoZTOT_TR06: TFloatField
      FieldName = 'TOT_TR06'
    end
    object qReducaoZTOT_TR07: TFloatField
      FieldName = 'TOT_TR07'
    end
    object qReducaoZTOT_TR08: TFloatField
      FieldName = 'TOT_TR08'
    end
    object qReducaoZTOT_TR09: TFloatField
      FieldName = 'TOT_TR09'
    end
    object qReducaoZTOT_TR10: TFloatField
      FieldName = 'TOT_TR10'
    end
    object qReducaoZTOT_TR11: TFloatField
      FieldName = 'TOT_TR11'
    end
    object qReducaoZTOT_TR12: TFloatField
      FieldName = 'TOT_TR12'
    end
    object qReducaoZTOT_TR13: TFloatField
      FieldName = 'TOT_TR13'
    end
    object qReducaoZTOT_TR14: TFloatField
      FieldName = 'TOT_TR14'
    end
    object qReducaoZTOT_TR15: TFloatField
      FieldName = 'TOT_TR15'
    end
    object qReducaoZTOT_TR16: TFloatField
      FieldName = 'TOT_TR16'
    end
    object qReducaoZTOT_TR17: TFloatField
      FieldName = 'TOT_TR17'
    end
    object qReducaoZTOT_TR18: TFloatField
      FieldName = 'TOT_TR18'
    end
    object qReducaoZTOT_TR19: TFloatField
      FieldName = 'TOT_TR19'
    end
  end
  object dspReducaoZ: TDataSetProvider
    DataSet = qReducaoZ
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 96
    Top = 180
  end
  object cdsReducaoZ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReducaoZ'
    Left = 128
    Top = 180
    object cdsReducaoZDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsReducaoZGTOT_FIM: TFloatField
      DisplayLabel = 'Total Final'
      FieldName = 'GTOT_FIM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsReducaoZGTOT_INI: TFloatField
      DisplayLabel = 'Venda Bruta'
      FieldName = 'GTOT_INI'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsReducaoZNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsReducaoZCONT_FIM: TFloatField
      FieldName = 'CONT_FIM'
    end
    object cdsReducaoZCONT_INI: TFloatField
      FieldName = 'CONT_INI'
    end
    object cdsReducaoZCONT_REI: TFloatField
      FieldName = 'CONT_REI'
    end
    object cdsReducaoZCONT_Z: TFloatField
      FieldName = 'CONT_Z'
    end
    object cdsReducaoZREDUCAOZDTO_ID: TFMTBCDField
      FieldName = 'REDUCAOZDTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsReducaoZTOT_TR01: TFloatField
      DisplayLabel = 'Venda Liqui'
      FieldName = 'TOT_TR01'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsReducaoZALQ_TR01: TFloatField
      FieldName = 'ALQ_TR01'
    end
    object cdsReducaoZALQ_TR02: TFloatField
      FieldName = 'ALQ_TR02'
    end
    object cdsReducaoZALQ_TR03: TFloatField
      FieldName = 'ALQ_TR03'
    end
    object cdsReducaoZALQ_TR04: TFloatField
      FieldName = 'ALQ_TR04'
    end
    object cdsReducaoZALQ_TR05: TFloatField
      FieldName = 'ALQ_TR05'
    end
    object cdsReducaoZALQ_TR06: TFloatField
      FieldName = 'ALQ_TR06'
    end
    object cdsReducaoZALQ_TR07: TFloatField
      FieldName = 'ALQ_TR07'
    end
    object cdsReducaoZALQ_TR08: TFloatField
      FieldName = 'ALQ_TR08'
    end
    object cdsReducaoZALQ_TR09: TFloatField
      FieldName = 'ALQ_TR09'
    end
    object cdsReducaoZALQ_TR10: TFloatField
      FieldName = 'ALQ_TR10'
    end
    object cdsReducaoZALQ_TR11: TFloatField
      FieldName = 'ALQ_TR11'
    end
    object cdsReducaoZALQ_TR12: TFloatField
      FieldName = 'ALQ_TR12'
    end
    object cdsReducaoZALQ_TR13: TFloatField
      FieldName = 'ALQ_TR13'
    end
    object cdsReducaoZALQ_TR14: TFloatField
      FieldName = 'ALQ_TR14'
    end
    object cdsReducaoZALQ_TR15: TFloatField
      FieldName = 'ALQ_TR15'
    end
    object cdsReducaoZALQ_TR16: TFloatField
      FieldName = 'ALQ_TR16'
    end
    object cdsReducaoZALQ_TR17: TFloatField
      FieldName = 'ALQ_TR17'
    end
    object cdsReducaoZALQ_TR18: TFloatField
      FieldName = 'ALQ_TR18'
    end
    object cdsReducaoZALQ_TR19: TFloatField
      FieldName = 'ALQ_TR19'
    end
    object cdsReducaoZCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsReducaoZID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsReducaoZTIP_TR01: TStringField
      FieldName = 'TIP_TR01'
      Size = 256
    end
    object cdsReducaoZTIP_TR02: TStringField
      FieldName = 'TIP_TR02'
      Size = 256
    end
    object cdsReducaoZTIP_TR03: TStringField
      FieldName = 'TIP_TR03'
      Size = 256
    end
    object cdsReducaoZTIP_TR04: TStringField
      FieldName = 'TIP_TR04'
      Size = 256
    end
    object cdsReducaoZTIP_TR05: TStringField
      FieldName = 'TIP_TR05'
      Size = 256
    end
    object cdsReducaoZTIP_TR06: TStringField
      FieldName = 'TIP_TR06'
      Size = 256
    end
    object cdsReducaoZTIP_TR07: TStringField
      FieldName = 'TIP_TR07'
      Size = 256
    end
    object cdsReducaoZTIP_TR08: TStringField
      FieldName = 'TIP_TR08'
      Size = 256
    end
    object cdsReducaoZTIP_TR09: TStringField
      FieldName = 'TIP_TR09'
      Size = 256
    end
    object cdsReducaoZTIP_TR10: TStringField
      FieldName = 'TIP_TR10'
      Size = 256
    end
    object cdsReducaoZTIP_TR11: TStringField
      FieldName = 'TIP_TR11'
      Size = 256
    end
    object cdsReducaoZTIP_TR12: TStringField
      FieldName = 'TIP_TR12'
      Size = 256
    end
    object cdsReducaoZTIP_TR13: TStringField
      FieldName = 'TIP_TR13'
      Size = 256
    end
    object cdsReducaoZTIP_TR14: TStringField
      FieldName = 'TIP_TR14'
      Size = 256
    end
    object cdsReducaoZTIP_TR15: TStringField
      FieldName = 'TIP_TR15'
      Size = 256
    end
    object cdsReducaoZTIP_TR16: TStringField
      FieldName = 'TIP_TR16'
      Size = 256
    end
    object cdsReducaoZTIP_TR17: TStringField
      FieldName = 'TIP_TR17'
      Size = 256
    end
    object cdsReducaoZTIP_TR18: TStringField
      FieldName = 'TIP_TR18'
      Size = 256
    end
    object cdsReducaoZTIP_TR19: TStringField
      FieldName = 'TIP_TR19'
      Size = 256
    end
    object cdsReducaoZTOT_ACRE: TFloatField
      FieldName = 'TOT_ACRE'
    end
    object cdsReducaoZTOT_CANC: TFloatField
      FieldName = 'TOT_CANC'
    end
    object cdsReducaoZTOT_DESC: TFloatField
      FieldName = 'TOT_DESC'
    end
    object cdsReducaoZTOT_INCI: TFloatField
      FieldName = 'TOT_INCI'
    end
    object cdsReducaoZTOT_ISEN: TFloatField
      FieldName = 'TOT_ISEN'
    end
    object cdsReducaoZTOT_SUBS: TFloatField
      FieldName = 'TOT_SUBS'
    end
    object cdsReducaoZTOT_TR02: TFloatField
      FieldName = 'TOT_TR02'
    end
    object cdsReducaoZTOT_TR03: TFloatField
      FieldName = 'TOT_TR03'
    end
    object cdsReducaoZTOT_TR04: TFloatField
      FieldName = 'TOT_TR04'
    end
    object cdsReducaoZTOT_TR05: TFloatField
      FieldName = 'TOT_TR05'
    end
    object cdsReducaoZTOT_TR06: TFloatField
      FieldName = 'TOT_TR06'
    end
    object cdsReducaoZTOT_TR07: TFloatField
      FieldName = 'TOT_TR07'
    end
    object cdsReducaoZTOT_TR08: TFloatField
      FieldName = 'TOT_TR08'
    end
    object cdsReducaoZTOT_TR09: TFloatField
      FieldName = 'TOT_TR09'
    end
    object cdsReducaoZTOT_TR10: TFloatField
      FieldName = 'TOT_TR10'
    end
    object cdsReducaoZTOT_TR11: TFloatField
      FieldName = 'TOT_TR11'
    end
    object cdsReducaoZTOT_TR12: TFloatField
      FieldName = 'TOT_TR12'
    end
    object cdsReducaoZTOT_TR13: TFloatField
      FieldName = 'TOT_TR13'
    end
    object cdsReducaoZTOT_TR14: TFloatField
      FieldName = 'TOT_TR14'
    end
    object cdsReducaoZTOT_TR15: TFloatField
      FieldName = 'TOT_TR15'
    end
    object cdsReducaoZTOT_TR16: TFloatField
      FieldName = 'TOT_TR16'
    end
    object cdsReducaoZTOT_TR17: TFloatField
      FieldName = 'TOT_TR17'
    end
    object cdsReducaoZTOT_TR18: TFloatField
      FieldName = 'TOT_TR18'
    end
    object cdsReducaoZTOT_TR19: TFloatField
      FieldName = 'TOT_TR19'
    end
  end
  object dsReducaoZ: TDataSource
    DataSet = cdsReducaoZ
    Left = 160
    Top = 180
  end
end
