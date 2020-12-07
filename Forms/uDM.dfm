object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 1006
  Width = 841
  object qEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    L.ID_LOJA,'
      '    L.R_SOCIAL,'
      '    L.FANTASIA,'
      '    L.ENDERECO,'
      '    L.COMPLEMENTO,'
      '    L.NUMERO,'
      '    L.BAIRRO,'
      '    L.CEP,'
      '    L.CONTATO,'
      '    L.CPF_CONTATO,'
      '    L.CNPJ,'
      '    L.INS_EST,'
      '    L.TELEFONE,'
      '    L.FAX,'
      '    L.EMAIL,'
      '    L.DT_CADASTRO,'
      '    L.SITUACAO,'
      '    L.DT_ABERTURA,'
      '    L.CNAE_PRINCIPAL,'
      '    L.CNAE_SECUNDARIO,'
      '    L.CODIGO_MUNIC,'
      '    M.NOME AS CIDADE,'
      '    M.UF'
      'FROM TB_LOJAS L'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = L.CODIGO_MU' +
        'NIC)')
    SQLConnection = conexao
    Left = 24
    Top = 64
    object qEmpresaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
      Required = True
    end
    object qEmpresaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      Size = 35
    end
    object qEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 35
    end
    object qEmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 34
    end
    object qEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object qEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 5
    end
    object qEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object qEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qEmpresaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 28
    end
    object qEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qEmpresaCPF_CONTATO: TStringField
      FieldName = 'CPF_CONTATO'
      Size = 14
    end
    object qEmpresaINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object qEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object qEmpresaFAX: TStringField
      FieldName = 'FAX'
      Size = 10
    end
    object qEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qEmpresaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qEmpresaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qEmpresaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qEmpresaCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object qEmpresaCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object qEmpresaCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qEmpresaUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = qEmpresa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspEmpresaGetTableName
    Left = 56
    Top = 64
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 88
    Top = 64
    object cdsEmpresaID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_LOJA'
      Required = True
    end
    object cdsEmpresaR_SOCIAL: TStringField
      DisplayLabel = 'R. Social'
      FieldName = 'R_SOCIAL'
      Size = 35
    end
    object cdsEmpresaFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 35
    end
    object cdsEmpresaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 34
    end
    object cdsEmpresaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 22
    end
    object cdsEmpresaNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 5
    end
    object cdsEmpresaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 15
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsEmpresaCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 28
    end
    object cdsEmpresaCPF_CONTATO: TStringField
      FieldName = 'CPF_CONTATO'
      Size = 14
    end
    object cdsEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsEmpresaINS_EST: TStringField
      DisplayLabel = 'Insc. Est'
      FieldName = 'INS_EST'
      Size = 14
    end
    object cdsEmpresaTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 12
    end
    object cdsEmpresaFAX: TStringField
      DisplayLabel = 'Telefone '
      FieldName = 'FAX'
      Size = 10
    end
    object cdsEmpresaEMAIL: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsEmpresaDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsEmpresaSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsEmpresaDT_ABERTURA: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'DT_ABERTURA'
      EditMask = '##/##/####'
    end
    object cdsEmpresaCNAE_PRINCIPAL: TStringField
      DisplayLabel = 'CNAE Principal'
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object cdsEmpresaCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object cdsEmpresaCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsEmpresaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsEmpresaUF: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 120
    Top = 64
  end
  object qVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' V.NUMSERIE,'
      ' V.DATAMOVI'
      'FROM VENDADTO V'
      'WHERE V.DATAMOVI >= :DT_INI AND V.DATAMOVI <= :DT_FIN'
      'group by v.NUMSERIE,V.DATAMOVI')
    SQLConnection = conexao
    Left = 24
    Top = 112
    object qVendaNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qVendaDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
  end
  object dspVenda: TDataSetProvider
    DataSet = qVenda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 56
    Top = 112
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DT_FIN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspVenda'
    Left = 88
    Top = 112
    object cdsVendaNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsVendaDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
  end
  object dsVenda: TDataSource
    DataSet = cdsVenda
    Left = 120
    Top = 112
  end
  object qReducao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT'
      'R.DATAMOVI,'
      'R.ALQ_TR01,'
      'R.ALQ_TR02,'
      'R.ALQ_TR03,'
      'R.TOT_ACRE,'
      'R.TOT_CANC,'
      'R.TOT_DESC,'
      'R.TOT_INCI,'
      'R.TOT_ISEN,'
      'R.TOT_SUBS,'
      'R.TOT_TR01,'
      'R.TOT_TR02,'
      'R.TOT_TR03,'
      'R.CONT_INI,'
      'R.CONT_FIM,'
      'R.CONT_Z,'
      'R.GTOT_INI,'
      'R.GTOT_FIM,'
      'SUM(R.TOT_SUBS+R.TOT_TR01) AS VENDA_BRUTA'
      'FROM REDUCAOZDTO R'
      'WHERE R.DATAMOVI >= :DT_INI AND R.DATAMOVI <= :DT_FIM'
      'GROUP BY'
      'R.DATAMOVI,'
      'R.ALQ_TR01,'
      'R.ALQ_TR02,'
      'R.ALQ_TR03,'
      'R.TOT_ACRE,'
      'R.TOT_CANC,'
      'R.TOT_DESC,'
      'R.TOT_INCI,'
      'R.TOT_ISEN,'
      'R.TOT_SUBS,'
      'R.TOT_TR01,'
      'R.TOT_TR02,'
      'R.TOT_TR03,'
      'R.CONT_INI,'
      'R.CONT_FIM,'
      'R.CONT_Z,'
      'R.GTOT_INI,'
      'R.GTOT_FIM')
    SQLConnection = conexao
    Left = 24
    Top = 157
    object qReducaoDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qReducaoALQ_TR01: TFloatField
      FieldName = 'ALQ_TR01'
    end
    object qReducaoALQ_TR02: TFloatField
      FieldName = 'ALQ_TR02'
    end
    object qReducaoALQ_TR03: TFloatField
      FieldName = 'ALQ_TR03'
    end
    object qReducaoTOT_ACRE: TFloatField
      FieldName = 'TOT_ACRE'
    end
    object qReducaoTOT_CANC: TFloatField
      FieldName = 'TOT_CANC'
    end
    object qReducaoTOT_DESC: TFloatField
      FieldName = 'TOT_DESC'
    end
    object qReducaoTOT_INCI: TFloatField
      FieldName = 'TOT_INCI'
    end
    object qReducaoTOT_ISEN: TFloatField
      FieldName = 'TOT_ISEN'
    end
    object qReducaoTOT_SUBS: TFloatField
      FieldName = 'TOT_SUBS'
    end
    object qReducaoTOT_TR01: TFloatField
      FieldName = 'TOT_TR01'
    end
    object qReducaoTOT_TR02: TFloatField
      FieldName = 'TOT_TR02'
    end
    object qReducaoTOT_TR03: TFloatField
      FieldName = 'TOT_TR03'
    end
    object qReducaoCONT_INI: TFloatField
      FieldName = 'CONT_INI'
    end
    object qReducaoCONT_FIM: TFloatField
      FieldName = 'CONT_FIM'
    end
    object qReducaoCONT_Z: TFloatField
      FieldName = 'CONT_Z'
    end
    object qReducaoGTOT_INI: TFloatField
      FieldName = 'GTOT_INI'
    end
    object qReducaoGTOT_FIM: TFloatField
      FieldName = 'GTOT_FIM'
    end
    object qReducaoVENDA_BRUTA: TFloatField
      FieldName = 'VENDA_BRUTA'
      ReadOnly = True
    end
  end
  object dspReducao: TDataSetProvider
    DataSet = qReducao
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 56
    Top = 157
  end
  object cdsReducao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DT_FIM'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspReducao'
    Left = 88
    Top = 157
    object cdsReducaoDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsReducaoALQ_TR01: TFloatField
      FieldName = 'ALQ_TR01'
    end
    object cdsReducaoALQ_TR02: TFloatField
      FieldName = 'ALQ_TR02'
    end
    object cdsReducaoALQ_TR03: TFloatField
      FieldName = 'ALQ_TR03'
    end
    object cdsReducaoTOT_ACRE: TFloatField
      FieldName = 'TOT_ACRE'
    end
    object cdsReducaoTOT_CANC: TFloatField
      FieldName = 'TOT_CANC'
    end
    object cdsReducaoTOT_DESC: TFloatField
      FieldName = 'TOT_DESC'
    end
    object cdsReducaoTOT_INCI: TFloatField
      FieldName = 'TOT_INCI'
    end
    object cdsReducaoTOT_ISEN: TFloatField
      FieldName = 'TOT_ISEN'
    end
    object cdsReducaoTOT_SUBS: TFloatField
      FieldName = 'TOT_SUBS'
    end
    object cdsReducaoTOT_TR01: TFloatField
      FieldName = 'TOT_TR01'
    end
    object cdsReducaoTOT_TR02: TFloatField
      FieldName = 'TOT_TR02'
    end
    object cdsReducaoTOT_TR03: TFloatField
      FieldName = 'TOT_TR03'
    end
    object cdsReducaoCONT_INI: TFloatField
      FieldName = 'CONT_INI'
    end
    object cdsReducaoCONT_FIM: TFloatField
      FieldName = 'CONT_FIM'
    end
    object cdsReducaoCONT_Z: TFloatField
      FieldName = 'CONT_Z'
    end
    object cdsReducaoGTOT_INI: TFloatField
      FieldName = 'GTOT_INI'
    end
    object cdsReducaoGTOT_FIM: TFloatField
      FieldName = 'GTOT_FIM'
    end
    object cdsReducaoVENDA_BRUTA: TFloatField
      FieldName = 'VENDA_BRUTA'
      ReadOnly = True
    end
  end
  object dsReducao: TDataSource
    DataSet = cdsReducao
    Left = 120
    Top = 157
  end
  object qItemVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DT_FIN'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT'
      ' I.DATAMOVI,'
      ' I.TIPOALIQ,'
      ' I.NUMSERIE,'
      'SUM(I.PCOVENDA * I.QTDVENDA) AS VALOR FROM ITEMVENDADTO I'
      'WHERE I.DATAMOVI >=:DT_INI AND I.DATAMOVI <=:DT_FIN'
      'GROUP BY I.DATAMOVI,I.TIPOALIQ,I.NUMSERIE'
      'ORDER BY I.DATAMOVI,I.TIPOALIQ DESC'
      '')
    SQLConnection = conexao
    Left = 24
    Top = 201
    object qItemVendaDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qItemVendaTIPOALIQ: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object qItemVendaNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qItemVendaVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
  end
  object dspItemVenda: TDataSetProvider
    DataSet = qItemVenda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 56
    Top = 201
  end
  object cdsItemVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'DT_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'DT_FIN'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspItemVenda'
    Left = 88
    Top = 201
    object cdsItemVendaDATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsItemVendaTIPOALIQ: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object cdsItemVendaNUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsItemVendaVALOR: TFloatField
      FieldName = 'VALOR'
      ReadOnly = True
    end
  end
  object dsItemVenda: TDataSource
    DataSet = qItemVenda
    Left = 120
    Top = 201
  end
  object qCfop: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' CF.CFCOD,'
      ' CF.CFCOD||'#39'-'#39'||CF.CFNOME AS CFNOME'
      'FROM TB_CFOP CF')
    SQLConnection = conexao
    Left = 24
    Top = 256
    object qCfopCFCOD: TIntegerField
      FieldName = 'CFCOD'
      Required = True
    end
    object qCfopCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 512
    end
  end
  object dspCfop: TDataSetProvider
    DataSet = qCfop
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 56
    Top = 256
  end
  object cdsCfop: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCfop'
    Left = 88
    Top = 256
    object cdsCfopCFCOD: TIntegerField
      FieldName = 'CFCOD'
      Required = True
    end
    object cdsCfopCFNOME: TStringField
      FieldName = 'CFNOME'
      Size = 512
    end
  end
  object dsCfop: TDataSource
    DataSet = cdsCfop
    Left = 120
    Top = 256
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PRODUTO,'
      ' P.ID_GRUPO_PRODUTO,'
      ' P.ID_FORNECEDOR,'
      ' P.ID_ORIGEM_PRODUTO,'
      ' P.ID_NCM,'
      ' P.CFOP_BA,'
      ' P.CFOP_OUTROS,'
      ' P.COD_CST,'
      ' P.DESCRICAO,'
      ' P.UNIDADE,'
      ' P.EMBALGEM,'
      ' P.CD_BARRA,'
      ' P.REFERENCIA,'
      ' P.CODIGO,'
      ' P.ESTOQUE,'
      ' P.ESTOQ_MIN,'
      ' P.VL_CUSTO,'
      ' P.VL_VENDA_ATAC,'
      ' P.VL_VENDA_VARE,'
      ' P.VL_MARGEM,'
      ' P.VL_VENDA_NF,'
      ' P.DT_ULT_COMPRA,'
      ' P.DT_ULT_VENDA,'
      ' P.VL_DESC_MAX,'
      ' P.BALANCA,'
      ' P.ST,'
      ' P.NCM,'
      ' P.ESTOQUE_1,'
      ' P.EXPORTADO,'
      ' P. ALIQUOTA ,'
      ' P.ALIQUOTA_OUTROS,'
      ' P.TIPO_ALIQ,'
      ' P.COD_COFINS,'
      ' P.COD_TRIBUTARIO,'
      ' P.COD_IPI,'
      ' P.ALIQUOTA_PIS,'
      ' P.ALIQUOTA_IPI,'
      ' P.ALIQUOTA_COFINS,'
      ' P.MVA,'
      ' P.MVA_OUTROS,'
      ' P.COD_CSOSN,'
      ' P.ATIVO,'
      ' SC.COD_SIT||'#39' - '#39'||SC.DESCRICAO AS SIT_COFINS,'
      ' ST.COD_SIT||'#39' - '#39'||ST.DESCRICAO AS SIT_TRIBUTARIO,'
      ' SI.COD_SIT||'#39' - '#39'||SI.DESCRICAO AS SIT_IPI,'
      ' GP.descricao AS GRUPO,'
      ' F.nome AS FORNECEDOR,'
      ' CS.DESC_CST,'
      ' OP.DESCRICAO AS ORIGEM_PRODUTO,'
      ' CN.DESC_CSOSN,'
      ' N.DESCRICAO AS DESC_NCM,'
      ' P.CFOP_BA||'#39'-'#39'||CF.CFNOME AS CFOP_DENTRO_ESTADO,'
      ' P.CFOP_OUTROS||'#39'-'#39'||CCF.CFNOME AS CFOP_FORA_ESTADO'
      'FROM TB_PRODUTO P'
      
        'LEFT OUTER JOIN tb_grupo_produto GP ON (GP.id_grupo_produto = P.' +
        'id_grupo_produto)'
      
        'LEFT OUTER JOIN tb_fornecedor F ON (F.id_fornecedor = P.id_forne' +
        'cedor)'
      'LEFT OUTER JOIN TB_CST CS ON (CS.COD_CST = P.COD_CST)'
      'LEFT OUTER JOIN TB_SIT_COFINS SC ON (SC.COD_SIT = P.COD_COFINS)'
      
        'LEFT OUTER JOIN TB_SIT_TRIBUTARIA ST ON (ST.COD_SIT = P.COD_TRIB' +
        'UTARIO)'
      'LEFT OUTER JOIN TB_SIT_IPI SI ON (SI.COD_SIT = P.COD_IPI)'
      
        'LEFT OUTER JOIN TB_ORIGEM_PRODUTO OP ON (OP.ID_ORIGEM_PRODUTO = ' +
        'P.ID_ORIGEM_PRODUTO)'
      'LEFT OUTER JOIN TB_CSOSN CN ON (CN.COD_CSOSN = P.COD_CSOSN)'
      'LEFT OUTER JOIN TB_ALIQ_IBPT N ON (N.ID_NCM = P.ID_NCM)'
      'LEFT OUTER JOIN TB_CFOP CF ON (CF.CFCOD = P.CFOP_BA)'
      'LEFT OUTER JOIN TB_CFOP CCF ON (CCF.CFCOD = P.CFOP_OUTROS)')
    SQLConnection = conexao
    Left = 184
    Top = 64
    object qProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qProdutoID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object qProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object qProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qProdutoEMBALGEM: TStringField
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object qProdutoCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object qProdutoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_VENDA_ATAC: TFMTBCDField
      FieldName = 'VL_VENDA_ATAC'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_VENDA_VARE: TFMTBCDField
      FieldName = 'VL_VENDA_VARE'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_MARGEM: TFMTBCDField
      FieldName = 'VL_MARGEM'
      Precision = 18
      Size = 2
    end
    object qProdutoVL_VENDA_NF: TFMTBCDField
      FieldName = 'VL_VENDA_NF'
      Precision = 18
      Size = 2
    end
    object qProdutoDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object qProdutoDT_ULT_VENDA: TDateField
      FieldName = 'DT_ULT_VENDA'
    end
    object qProdutoVL_DESC_MAX: TFMTBCDField
      FieldName = 'VL_DESC_MAX'
      Precision = 18
      Size = 4
    end
    object qProdutoST: TStringField
      FieldName = 'ST'
      Size = 3
    end
    object qProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qProdutoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object qProdutoGRUPO: TStringField
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 30
    end
    object qProdutoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object qProdutoESTOQ_MIN: TFMTBCDField
      FieldName = 'ESTOQ_MIN'
      Precision = 18
      Size = 3
    end
    object qProdutoESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      Precision = 18
      Size = 3
    end
    object qProdutoCOD_CST: TStringField
      FieldName = 'COD_CST'
      Size = 3
    end
    object qProdutoDESC_CST: TStringField
      FieldName = 'DESC_CST'
      ProviderFlags = []
      Size = 255
    end
    object qProdutoCOD_COFINS: TStringField
      FieldName = 'COD_COFINS'
      Size = 3
    end
    object qProdutoCOD_TRIBUTARIO: TStringField
      FieldName = 'COD_TRIBUTARIO'
      Size = 3
    end
    object qProdutoSIT_COFINS: TStringField
      FieldName = 'SIT_COFINS'
      ProviderFlags = []
      Size = 261
    end
    object qProdutoSIT_TRIBUTARIO: TStringField
      FieldName = 'SIT_TRIBUTARIO'
      ProviderFlags = []
      Size = 261
    end
    object qProdutoCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 3
    end
    object qProdutoSIT_IPI: TStringField
      FieldName = 'SIT_IPI'
      ProviderFlags = []
      Size = 261
    end
    object qProdutoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 2
    end
    object qProdutoALIQUOTA_PIS: TFMTBCDField
      FieldName = 'ALIQUOTA_PIS'
      Precision = 9
      Size = 2
    end
    object qProdutoALIQUOTA_IPI: TFMTBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object qProdutoALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'ALIQUOTA_COFINS'
      Precision = 9
      Size = 2
    end
    object qProdutoTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      Size = 1
    end
    object qProdutoBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object qProdutoID_ORIGEM_PRODUTO: TIntegerField
      FieldName = 'ID_ORIGEM_PRODUTO'
    end
    object qProdutoMVA: TFMTBCDField
      FieldName = 'MVA'
      Precision = 18
      Size = 2
    end
    object qProdutoORIGEM_PRODUTO: TStringField
      FieldName = 'ORIGEM_PRODUTO'
      ProviderFlags = []
      Size = 255
    end
    object qProdutoALIQUOTA_OUTROS: TFMTBCDField
      FieldName = 'ALIQUOTA_OUTROS'
      Precision = 9
      Size = 2
    end
    object qProdutoMVA_OUTROS: TFMTBCDField
      FieldName = 'MVA_OUTROS'
      Precision = 18
      Size = 2
    end
    object qProdutoCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      Size = 3
    end
    object qProdutoDESC_CSOSN: TStringField
      FieldName = 'DESC_CSOSN'
      ProviderFlags = []
      Size = 255
    end
    object qProdutoDESC_NCM: TStringField
      FieldName = 'DESC_NCM'
      ProviderFlags = []
      Size = 255
    end
    object qProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qProdutoCFOP_BA: TIntegerField
      FieldName = 'CFOP_BA'
    end
    object qProdutoCFOP_OUTROS: TIntegerField
      FieldName = 'CFOP_OUTROS'
    end
    object qProdutoCFOP_DENTRO_ESTADO: TStringField
      FieldName = 'CFOP_DENTRO_ESTADO'
      ProviderFlags = []
      Size = 500
    end
    object qProdutoCFOP_FORA_ESTADO: TStringField
      FieldName = 'CFOP_FORA_ESTADO'
      ProviderFlags = []
      Size = 500
    end
    object qProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = qProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspProdutoGetTableName
    Left = 212
    Top = 64
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 242
    Top = 63
    object cdsProdutoID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsProdutoUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsProdutoEMBALGEM: TStringField
      DisplayLabel = 'Embalagem'
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object cdsProdutoCD_BARRA: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsProdutoVL_CUSTO: TFMTBCDField
      DisplayLabel = 'Vl. Custo'
      FieldName = 'VL_CUSTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoREFERENCIA: TStringField
      DisplayLabel = 'C'#243'd.Interno'
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 7
    end
    object cdsProdutoVL_VENDA_ATAC: TFMTBCDField
      DisplayLabel = 'Vl Venda'
      FieldName = 'VL_VENDA_ATAC'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 2
    end
    object cdsProdutoVL_VENDA_VARE: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VL_VENDA_VARE'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 2
    end
    object cdsProdutoVL_MARGEM: TFMTBCDField
      DisplayLabel = 'Vl Margen Lucro'
      FieldName = 'VL_MARGEM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoVL_VENDA_NF: TFMTBCDField
      DisplayLabel = 'Vl Venda NF'
      FieldName = 'VL_VENDA_NF'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsProdutoDT_ULT_COMPRA: TDateField
      DisplayLabel = 'Data Ult Compra'
      FieldName = 'DT_ULT_COMPRA'
      EditMask = '##/##/####'
    end
    object cdsProdutoDT_ULT_VENDA: TDateField
      DisplayLabel = 'Data Ult Venda'
      FieldName = 'DT_ULT_VENDA'
      EditMask = '##/##/####'
    end
    object cdsProdutoID_GRUPO_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'd Grupo'
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd Fornecedor'
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object cdsProdutoGRUPO: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      ProviderFlags = []
      Size = 30
    end
    object cdsProdutoFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsProdutoVL_DESC_MAX: TFMTBCDField
      DisplayLabel = 'Perc.Desc. M'#225'x.'
      FieldName = 'VL_DESC_MAX'
      DisplayFormat = '###,###0.0000'
      EditFormat = '###,###0.0000'
      Precision = 18
      Size = 2
    end
    object cdsProdutoST: TStringField
      FieldName = 'ST'
      Size = 3
    end
    object cdsProdutoNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsProdutoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object cdsProdutoESTOQUE: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdutoESTOQ_MIN: TFMTBCDField
      DisplayLabel = 'Estoque Min'
      FieldName = 'ESTOQ_MIN'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdutoESTOQUE_1: TFMTBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE_1'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsProdutoCOD_CST: TStringField
      DisplayLabel = 'C'#243'd. CST'
      FieldName = 'COD_CST'
      Size = 3
    end
    object cdsProdutoCOD_COFINS: TStringField
      FieldName = 'COD_COFINS'
      Size = 3
    end
    object cdsProdutoCOD_TRIBUTARIO: TStringField
      FieldName = 'COD_TRIBUTARIO'
      Size = 3
    end
    object cdsProdutoCOD_IPI: TStringField
      FieldName = 'COD_IPI'
      Size = 3
    end
    object cdsProdutoSIT_IPI: TStringField
      FieldName = 'SIT_IPI'
      ProviderFlags = []
      Size = 261
    end
    object cdsProdutoSIT_TRIBUTARIO: TStringField
      FieldName = 'SIT_TRIBUTARIO'
      ProviderFlags = []
      Size = 261
    end
    object cdsProdutoSIT_COFINS: TStringField
      FieldName = 'SIT_COFINS'
      ProviderFlags = []
      Size = 261
    end
    object cdsProdutoDESC_CST: TStringField
      FieldName = 'DESC_CST'
      ProviderFlags = []
      Size = 255
    end
    object cdsProdutoALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 9
      Size = 2
    end
    object cdsProdutoALIQUOTA_PIS: TFMTBCDField
      FieldName = 'ALIQUOTA_PIS'
      Precision = 9
      Size = 2
    end
    object cdsProdutoALIQUOTA_IPI: TFMTBCDField
      FieldName = 'ALIQUOTA_IPI'
      Precision = 9
      Size = 2
    end
    object cdsProdutoALIQUOTA_COFINS: TFMTBCDField
      FieldName = 'ALIQUOTA_COFINS'
      Precision = 9
      Size = 2
    end
    object cdsProdutoTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      Size = 1
    end
    object cdsProdutoBALANCA: TStringField
      FieldName = 'BALANCA'
      Size = 1
    end
    object cdsProdutoID_ORIGEM_PRODUTO: TIntegerField
      FieldName = 'ID_ORIGEM_PRODUTO'
    end
    object cdsProdutoMVA: TFMTBCDField
      FieldName = 'MVA'
      Precision = 18
      Size = 2
    end
    object cdsProdutoORIGEM_PRODUTO: TStringField
      FieldName = 'ORIGEM_PRODUTO'
      ProviderFlags = []
      Size = 255
    end
    object cdsProdutoALIQUOTA_OUTROS: TFMTBCDField
      FieldName = 'ALIQUOTA_OUTROS'
      Precision = 9
      Size = 2
    end
    object cdsProdutoMVA_OUTROS: TFMTBCDField
      FieldName = 'MVA_OUTROS'
      Precision = 18
      Size = 2
    end
    object cdsProdutoCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      Size = 3
    end
    object cdsProdutoDESC_CSOSN: TStringField
      FieldName = 'DESC_CSOSN'
      ProviderFlags = []
      Size = 255
    end
    object cdsProdutoDESC_NCM: TStringField
      FieldName = 'DESC_NCM'
      ProviderFlags = []
      Size = 255
    end
    object cdsProdutoATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsProdutoCFOP_BA: TIntegerField
      FieldName = 'CFOP_BA'
    end
    object cdsProdutoCFOP_OUTROS: TIntegerField
      FieldName = 'CFOP_OUTROS'
    end
    object cdsProdutoCFOP_DENTRO_ESTADO: TStringField
      FieldName = 'CFOP_DENTRO_ESTADO'
      ProviderFlags = []
      Size = 500
    end
    object cdsProdutoCFOP_FORA_ESTADO: TStringField
      FieldName = 'CFOP_FORA_ESTADO'
      ProviderFlags = []
      Size = 500
    end
    object cdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 273
    Top = 64
  end
  object sdsGrupoProduto: TSQLDataSet
    CommandText = 'select * from TB_GRUPO_PRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 185
    Top = 113
    object sdsGrupoProdutoID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object sdsGrupoProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object sdsGrupoProdutoEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
  end
  object dspGrupoProduto: TDataSetProvider
    DataSet = sdsGrupoProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 216
    Top = 113
  end
  object cdsGrupoProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoProduto'
    Left = 245
    Top = 113
    object cdsGrupoProdutoID_GRUPO_PRODUTO: TIntegerField
      DisplayLabel = 'Grupo Produto'
      DisplayWidth = 10
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsGrupoProdutoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Grupo'
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object cdsGrupoProdutoEXPORTADO: TStringField
      DisplayWidth = 1
      FieldName = 'EXPORTADO'
      Visible = False
      Size = 1
    end
  end
  object dsGrupoProduto: TDataSource
    DataSet = cdsGrupoProduto
    Left = 277
    Top = 113
  end
  object qFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' F.ID_FORNECEDOR,'
      ' F.CODIGO_MUNIC,'
      ' F.DT_CADASTRO,'
      ' F.NOME,'
      ' F.TP_LOGRADOURO,'
      ' F.ENDERECO,'
      ' F.COMPLEMENTO,'
      ' F.NUMERO,'
      ' F.BAIRRO,'
      ' F.CEP,'
      ' F.TELFONE,'
      ' F.FAX,'
      ' F.CELULAR,'
      ' F.EMAIL,'
      ' F.CNPJ,'
      ' F.INS_EST,'
      ' F.CONTATO,'
      ' F.SITE,'
      ' F.FANTASIA,'
      ' F.SITUACAO,'
      ' F.DT_ABERTURA,'
      ' F.CNAE_PRINCIPAL,'
      ' F.CNAE_SECUNDARIO,'
      ' F.ID_CATEGORIA,'
      ' M.NOME AS CIDADE,'
      ' M.UF AS UF,'
      ' M.DDD,'
      ' C.NOME_CATEGORIA'
      'FROM TB_FORNECEDOR F'
      'JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MUNIC)'
      'LEFT JOIN TB_CATEGORIA  C ON (C.ID_CATEGORIA = F.ID_CATEGORIA)')
    SQLConnection = conexao
    Left = 184
    Top = 160
    object qFornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object qFornecedorCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qFornecedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qFornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qFornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object qFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qFornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qFornecedorTELFONE: TStringField
      FieldName = 'TELFONE'
      Size = 14
    end
    object qFornecedorFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object qFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object qFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qFornecedorINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object qFornecedorSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 30
    end
    object qFornecedorDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qFornecedorCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object qFornecedorCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object qFornecedorCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 30
    end
    object qFornecedorSITE: TStringField
      FieldName = 'SITE'
      Size = 70
    end
    object qFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qFornecedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qFornecedorTP_LOGRADOURO: TStringField
      FieldName = 'TP_LOGRADOURO'
      Size = 30
    end
    object qFornecedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object qFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object qFornecedorID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object qFornecedorNOME_CATEGORIA: TStringField
      FieldName = 'NOME_CATEGORIA'
      ProviderFlags = []
      Size = 40
    end
  end
  object dspFornecedor: TDataSetProvider
    DataSet = qFornecedor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspFornecedorGetTableName
    Left = 216
    Top = 160
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 245
    Top = 159
    object cdsFornecedorID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Forn'
      FieldName = 'ID_FORNECEDOR'
      Required = True
    end
    object cdsFornecedorCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsFornecedorDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsFornecedorNOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFornecedorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsFornecedorCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsFornecedorNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object cdsFornecedorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsFornecedorCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 10
    end
    object cdsFornecedorTELFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELFONE'
      Size = 14
    end
    object cdsFornecedorFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Size = 14
    end
    object cdsFornecedorCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsFornecedorEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsFornecedorINS_EST: TStringField
      FieldName = 'INS_EST'
      Size = 14
    end
    object cdsFornecedorSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Size = 30
    end
    object cdsFornecedorDT_ABERTURA: TDateField
      DisplayLabel = 'Dt Abertura'
      FieldName = 'DT_ABERTURA'
      EditMask = '##/##/####'
    end
    object cdsFornecedorCNAE_PRINCIPAL: TStringField
      FieldName = 'CNAE_PRINCIPAL'
      Size = 200
    end
    object cdsFornecedorCNAE_SECUNDARIO: TStringField
      FieldName = 'CNAE_SECUNDARIO'
      Size = 999
    end
    object cdsFornecedorCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Size = 30
    end
    object cdsFornecedorSITE: TStringField
      DisplayLabel = 'Site'
      FieldName = 'SITE'
      Size = 70
    end
    object cdsFornecedorCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsFornecedorUF: TStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsFornecedorTP_LOGRADOURO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'TP_LOGRADOURO'
      Size = 30
    end
    object cdsFornecedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object cdsFornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsFornecedorID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
    end
    object cdsFornecedorNOME_CATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'NOME_CATEGORIA'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 272
    Top = 160
  end
  object qCST: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' CS.COD_CST,'
      ' CS.DESC_CST'
      'FROM TB_CST CS'
      'ORDER BY CS.COD_CST')
    SQLConnection = conexao
    Left = 184
    Top = 208
    object qCSTCOD_CST: TStringField
      FieldName = 'COD_CST'
      Required = True
      Size = 3
    end
    object qCSTDESC_CST: TStringField
      FieldName = 'DESC_CST'
      Size = 255
    end
  end
  object dspCST: TDataSetProvider
    DataSet = qCST
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 216
    Top = 208
  end
  object cdsCST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCST'
    Left = 248
    Top = 208
    object cdsCSTCOD_CST: TStringField
      DisplayLabel = 'C'#243'd. CST'
      FieldName = 'COD_CST'
      Required = True
      Size = 3
    end
    object cdsCSTDESC_CST: TStringField
      DisplayLabel = '(CST) C'#243'digo Situa'#231#227'o Tribut'#225'ria'
      FieldName = 'DESC_CST'
      Size = 255
    end
  end
  object dsCST: TDataSource
    DataSet = cdsCST
    Left = 280
    Top = 208
  end
  object qEntradaNF: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' NF.ID_ENTRADA_NF,'
      ' NF.ID_FORNECEDOR,'
      ' NF.ID_LOJA,'
      ' NF.TIPO,'
      ' NF.CNPJ,'
      ' NF.INSC,'
      ' NF.DATA_EMI,'
      ' NF.DATA_REC,'
      ' NF.UF,'
      ' NF.MODELO,'
      ' NF.SERIE,'
      ' NF.NUM_NOTA,'
      ' NF.CFOP,'
      ' NF.EMITENTE,'
      ' NF.VALOR_TOTAL,'
      ' NF.BASE_CALCULO_ICMS,'
      ' NF.VALOR_ICMS,'
      ' NF.VALOR_ISENT_N_TRIBUTADO,'
      ' NF.OUTROS_VALORES,'
      ' NF.ALIQ_ICMS,'
      ' NF.SITUACAO,'
      ' NF.VALOR_PRODUTOS,'
      ' NF.VALOR_IPI,'
      ' NF.EXPORTADO,'
      ' NF.VALOR_DESCONTO,'
      ' F.NOME,'
      ' F.CNPJ,'
      ' F.INS_EST,'
      ' F.CODIGO_MUNIC,'
      ' M.UF, '
      ' M.NOME AS CIDADE,'
      ' CF.CFNOME AS DES_CFOP,'
      ' L.R_SOCIAL AS R_SOCIAL_LOJA,'
      ' L.FANTASIA AS FANTASIA_LOJA,'
      ' L.CNPJ AS CNPJ_LOJA'
      'FROM TB_ENTRADA_NF NF'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = NF.ID_FORN' +
        'ECEDOR)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = F.CODIGO_MU' +
        'NIC)'
      'LEFT OUTER JOIN TB_CFOP CF ON (CF.CFCOD = NF.CFOP)'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = NF.ID_LOJA)'
      'ORDER BY NF.DATA_REC')
    SQLConnection = conexao
    Left = 352
    Top = 64
    object qEntradaNFID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
      Required = True
    end
    object qEntradaNFID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qEntradaNFTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object qEntradaNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qEntradaNFINSC: TStringField
      FieldName = 'INSC'
      Size = 14
    end
    object qEntradaNFDATA_EMI: TDateField
      FieldName = 'DATA_EMI'
    end
    object qEntradaNFDATA_REC: TDateField
      FieldName = 'DATA_REC'
    end
    object qEntradaNFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qEntradaNFMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qEntradaNFSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qEntradaNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qEntradaNFEMITENTE: TStringField
      FieldName = 'EMITENTE'
      Size = 1
    end
    object qEntradaNFSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object qEntradaNFNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qEntradaNFCNPJ_1: TStringField
      FieldName = 'CNPJ_1'
      ProviderFlags = []
      Size = 18
    end
    object qEntradaNFINS_EST: TStringField
      FieldName = 'INS_EST'
      ProviderFlags = []
      Size = 14
    end
    object qEntradaNFCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      ProviderFlags = []
      Size = 7
    end
    object qEntradaNFUF_1: TStringField
      FieldName = 'UF_1'
      ProviderFlags = []
      Size = 2
    end
    object qEntradaNFCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qEntradaNFDES_CFOP: TStringField
      FieldName = 'DES_CFOP'
      ProviderFlags = []
      Size = 500
    end
    object qEntradaNFEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object qEntradaNFVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object qEntradaNFBASE_CALCULO_ICMS: TFMTBCDField
      FieldName = 'BASE_CALCULO_ICMS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_ICMS: TFMTBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_ISENT_N_TRIBUTADO: TFMTBCDField
      FieldName = 'VALOR_ISENT_N_TRIBUTADO'
      Precision = 18
      Size = 3
    end
    object qEntradaNFOUTROS_VALORES: TFMTBCDField
      FieldName = 'OUTROS_VALORES'
      Precision = 18
      Size = 3
    end
    object qEntradaNFALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_PRODUTOS: TFMTBCDField
      FieldName = 'VALOR_PRODUTOS'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object qEntradaNFVALOR_DESCONTO: TFMTBCDField
      FieldName = 'VALOR_DESCONTO'
      Precision = 18
      Size = 3
    end
    object qEntradaNFID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qEntradaNFR_SOCIAL_LOJA: TStringField
      FieldName = 'R_SOCIAL_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qEntradaNFFANTASIA_LOJA: TStringField
      FieldName = 'FANTASIA_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qEntradaNFCNPJ_LOJA: TStringField
      FieldName = 'CNPJ_LOJA'
      ProviderFlags = []
      Size = 18
    end
    object qEntradaNFNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
    end
  end
  object dspEntradaNF: TDataSetProvider
    DataSet = qEntradaNF
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspEntradaNFGetTableName
    Left = 384
    Top = 64
  end
  object cdsEntradaNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradaNF'
    Left = 416
    Top = 64
    object cdsEntradaNFID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
      Required = True
    end
    object cdsEntradaNFID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsEntradaNFTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object cdsEntradaNFCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsEntradaNFINSC: TStringField
      FieldName = 'INSC'
      Size = 14
    end
    object cdsEntradaNFDATA_EMI: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DATA_EMI'
      EditMask = '##/##/####'
    end
    object cdsEntradaNFDATA_REC: TDateField
      DisplayLabel = 'Data Recebmto'
      FieldName = 'DATA_REC'
      EditMask = '##/##/####'
    end
    object cdsEntradaNFUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsEntradaNFMODELO: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsEntradaNFSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsEntradaNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsEntradaNFEMITENTE: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'EMITENTE'
      Size = 1
    end
    object cdsEntradaNFSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object cdsEntradaNFNOME: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsEntradaNFCNPJ_1: TStringField
      FieldName = 'CNPJ_1'
      ProviderFlags = []
      Size = 18
    end
    object cdsEntradaNFINS_EST: TStringField
      FieldName = 'INS_EST'
      ProviderFlags = []
      Size = 14
    end
    object cdsEntradaNFCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      ProviderFlags = []
      Size = 7
    end
    object cdsEntradaNFUF_1: TStringField
      FieldName = 'UF_1'
      ProviderFlags = []
      Size = 2
    end
    object cdsEntradaNFCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsEntradaNFDES_CFOP: TStringField
      DisplayLabel = 'Natureza Opera'#231#227'o'
      FieldName = 'DES_CFOP'
      Size = 500
    end
    object cdsEntradaNFEXPORTADO: TStringField
      FieldName = 'EXPORTADO'
      Size = 1
    end
    object cdsEntradaNFVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFBASE_CALCULO_ICMS: TFMTBCDField
      DisplayLabel = 'Base Calc Icms'
      FieldName = 'BASE_CALCULO_ICMS'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_ICMS: TFMTBCDField
      DisplayLabel = 'Valor Icms'
      FieldName = 'VALOR_ICMS'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFOUTROS_VALORES: TFMTBCDField
      DisplayLabel = 'Outros Valores'
      FieldName = 'OUTROS_VALORES'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFALIQ_ICMS: TFMTBCDField
      DisplayLabel = 'Aliq. Icms'
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_PRODUTOS: TFMTBCDField
      DisplayLabel = 'Valor dos Produtos'
      FieldName = 'VALOR_PRODUTOS'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_DESCONTO: TFMTBCDField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'VALOR_DESCONTO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFVALOR_ISENT_N_TRIBUTADO: TFMTBCDField
      DisplayLabel = 'Vl. Isent N. Trib'
      FieldName = 'VALOR_ISENT_N_TRIBUTADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsEntradaNFID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsEntradaNFR_SOCIAL_LOJA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'R_SOCIAL_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsEntradaNFFANTASIA_LOJA: TStringField
      FieldName = 'FANTASIA_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsEntradaNFCNPJ_LOJA: TStringField
      FieldName = 'CNPJ_LOJA'
      ProviderFlags = []
      Size = 18
    end
    object cdsEntradaNFNUM_NOTA: TStringField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUM_NOTA'
    end
  end
  object dsEntradaNF: TDataSource
    DataSet = cdsEntradaNF
    Left = 448
    Top = 64
  end
  object qItemEntrada: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ENTRADA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' E.ID_ITEM_ENTRADA_NF,'
      ' E.ID_FORNECEDOR,'
      ' E.ID_ENTRADA_NF,'
      ' E.ITEM,'
      ' E.TIPO,'
      ' E.CNPJ,'
      ' E.MODELO,'
      ' E.SERIE,'
      ' E.NUM_NOTA,'
      ' E.CFOP,'
      ' E.CST,'
      ' E.CODIGO_PRODUTO,'
      ' E.QUANTIDADE,'
      ' E.VALOR_TOTAL,'
      ' E.VALOR_DESC,'
      ' E.BASE_CALC_ICMS,'
      ' E.BASE_CALC_ICMS_SUBS,'
      ' E.VALOR_IPI,'
      ' E.ALIQ_ICMS,'
      ' E.ID_PRODUTO,'
      ' E.ID_GRUPO_PRODUTO,'
      ' E.ALIQ_IPI,'
      ' E.VALOR_UNI,'
      ' p.CODIGO,'
      ' p.DESCRICAO,'
      ' p.UNIDADE,'
      ' NF.CFOP AS CFOP_NOTA'
      ''
      'FROM TB_ITEM_ENTRADA_NF E'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = E.ID_FORNE' +
        'CEDOR)'
      
        'LEFT OUTER JOIN TB_ENTRADA_NF NF ON (NF.ID_ENTRADA_NF = E.ID_ENT' +
        'RADA_NF)'
      'LEFT OUTER JOIN TB_CST T ON (T.COD_CST = E.CST)'
      
        'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODUTO = E.ID_PRODUTO AND' +
        ' P.ID_GRUPO_PRODUTO = E.ID_GRUPO_PRODUTO)'
      'WHERE E.ID_ENTRADA_NF = :ID_ENTRADA'
      'ORDER BY E.ITEM')
    SQLConnection = conexao
    Left = 352
    Top = 109
    object qItemEntradaID_ITEM_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ITEM_ENTRADA_NF'
      Required = True
    end
    object qItemEntradaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qItemEntradaID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
    end
    object qItemEntradaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemEntradaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object qItemEntradaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qItemEntradaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object qItemEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qItemEntradaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object qItemEntradaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qItemEntradaCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object qItemEntradaCODIGO_PRODUTO: TStringField
      FieldName = 'CODIGO_PRODUTO'
      Size = 14
    end
    object qItemEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemEntradaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemEntradaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object qItemEntradaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemEntradaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 10
    end
    object qItemEntradaCFOP_NOTA: TStringField
      FieldName = 'CFOP_NOTA'
      ProviderFlags = []
      Size = 4
    end
    object qItemEntradaQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_DESC: TFMTBCDField
      FieldName = 'VALOR_DESC'
      Precision = 18
      Size = 3
    end
    object qItemEntradaBASE_CALC_ICMS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS'
      Precision = 18
      Size = 3
    end
    object qItemEntradaBASE_CALC_ICMS_SUBS: TFMTBCDField
      FieldName = 'BASE_CALC_ICMS_SUBS'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_IPI: TFMTBCDField
      FieldName = 'VALOR_IPI'
      Precision = 18
      Size = 3
    end
    object qItemEntradaALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 3
    end
    object qItemEntradaALIQ_IPI: TFMTBCDField
      FieldName = 'ALIQ_IPI'
      Precision = 18
      Size = 3
    end
    object qItemEntradaVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Precision = 18
      Size = 3
    end
  end
  object dspItemEntrada: TDataSetProvider
    DataSet = qItemEntrada
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    OnGetTableName = dspItemEntradaGetTableName
    Left = 384
    Top = 108
  end
  object cdsItemEntrada: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ENTRADA_NF'
    MasterFields = 'ID_ENTRADA_NF'
    MasterSource = dsEntradaNF
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ENTRADA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemEntrada'
    Left = 415
    Top = 109
    object cdsItemEntradaID_ITEM_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ITEM_ENTRADA_NF'
      Required = True
    end
    object cdsItemEntradaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsItemEntradaID_ENTRADA_NF: TIntegerField
      FieldName = 'ID_ENTRADA_NF'
    end
    object cdsItemEntradaITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object cdsItemEntradaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 2
    end
    object cdsItemEntradaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object cdsItemEntradaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object cdsItemEntradaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsItemEntradaNUM_NOTA: TStringField
      FieldName = 'NUM_NOTA'
      Size = 6
    end
    object cdsItemEntradaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object cdsItemEntradaCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
    object cdsItemEntradaCODIGO_PRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO_PRODUTO'
      Size = 14
    end
    object cdsItemEntradaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemEntradaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemEntradaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsItemEntradaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemEntradaUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemEntradaCFOP_NOTA: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'CFOP_NOTA'
      ProviderFlags = []
      Size = 4
    end
    object cdsItemEntradaQUANTIDADE: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANTIDADE'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VALOR_TOTAL'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_DESC: TFMTBCDField
      DisplayLabel = 'Desc'
      FieldName = 'VALOR_DESC'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaBASE_CALC_ICMS: TFMTBCDField
      DisplayLabel = 'Base Calc Icms'
      FieldName = 'BASE_CALC_ICMS'
      DisplayFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaBASE_CALC_ICMS_SUBS: TFMTBCDField
      DisplayLabel = 'Base Icms Subs'
      FieldName = 'BASE_CALC_ICMS_SUBS'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_IPI: TFMTBCDField
      DisplayLabel = 'Valor IPI'
      FieldName = 'VALOR_IPI'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaALIQ_ICMS: TFMTBCDField
      DisplayLabel = 'Aliq Icms'
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaALIQ_IPI: TFMTBCDField
      DisplayLabel = 'Aliq Ipi'
      FieldName = 'ALIQ_IPI'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemEntradaVALOR_UNI: TFMTBCDField
      DisplayLabel = 'Valor Unit'
      FieldName = 'VALOR_UNI'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
  end
  object dsItemEntrada: TDataSource
    DataSet = cdsItemEntrada
    Left = 446
    Top = 109
  end
  object qMunicipio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' M.codigo_munic,'
      ' M.uf,'
      ' M.nome,'
      ' M.ddd,'
      ' M.populacao,'
      ' M.distancia,'
      ' M.regiao'
      'FROM tb_municipios M')
    SQLConnection = conexao
    Left = 184
    Top = 256
    object qMunicipioCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qMunicipioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qMunicipioNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object qMunicipioDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object qMunicipioPOPULACAO: TIntegerField
      FieldName = 'POPULACAO'
    end
    object qMunicipioDISTANCIA: TIntegerField
      FieldName = 'DISTANCIA'
    end
    object qMunicipioREGIAO: TStringField
      FieldName = 'REGIAO'
      Size = 50
    end
  end
  object dspMunicipio: TDataSetProvider
    DataSet = qMunicipio
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 216
    Top = 256
  end
  object cdsMunicipio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMunicipio'
    Left = 248
    Top = 256
    object cdsMunicipioCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'd. Municipio'
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsMunicipioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsMunicipioNOME: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME'
      Size = 35
    end
    object cdsMunicipioDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
    object cdsMunicipioPOPULACAO: TIntegerField
      DisplayLabel = 'Popula'#231#227'o'
      FieldName = 'POPULACAO'
    end
    object cdsMunicipioDISTANCIA: TIntegerField
      FieldName = 'DISTANCIA'
    end
    object cdsMunicipioREGIAO: TStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REGIAO'
      Size = 50
    end
  end
  object dsMunicipio: TDataSource
    DataSet = cdsMunicipio
    Left = 280
    Top = 256
  end
  object qSitTributaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' SC.COD_SIT,'
      ' SC.DESCRICAO,'
      ' SC.COD_SIT||'#39' - '#39'||SC.DESCRICAO AS SIT_TRIBUTARIA'
      'FROM TB_SIT_TRIBUTARIA SC')
    SQLConnection = conexao
    Left = 344
    Top = 160
    object qSitTributariaCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Required = True
      Size = 3
    end
    object qSitTributariaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object qSitTributariaSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 261
    end
  end
  object dspSitTributaria: TDataSetProvider
    DataSet = qSitTributaria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 376
    Top = 160
  end
  object cdsSitTributaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSitTributaria'
    Left = 408
    Top = 160
    object cdsSitTributariaCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Required = True
      Size = 3
    end
    object cdsSitTributariaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object cdsSitTributariaSIT_TRIBUTARIA: TStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      Size = 261
    end
  end
  object dsSitTributaria: TDataSource
    DataSet = cdsSitTributaria
    Left = 440
    Top = 160
  end
  object qSitCofins: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' SC.COD_SIT,'
      ' SC.DESCRICAO,'
      ' SC.COD_SIT||'#39' - '#39'||SC.DESCRICAO AS SIT_COFINS'
      'FROM TB_SIT_COFINS SC')
    SQLConnection = conexao
    Left = 344
    Top = 208
    object qSitCofinsCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Required = True
      Size = 3
    end
    object qSitCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object qSitCofinsSIT_COFINS: TStringField
      FieldName = 'SIT_COFINS'
      ProviderFlags = []
      Size = 261
    end
  end
  object dspSitCofins: TDataSetProvider
    DataSet = qSitCofins
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 376
    Top = 208
  end
  object cdsSitCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSitCofins'
    Left = 408
    Top = 208
    object cdsSitCofinsCOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Required = True
      Size = 3
    end
    object cdsSitCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object cdsSitCofinsSIT_COFINS: TStringField
      FieldName = 'SIT_COFINS'
      ProviderFlags = []
      Size = 261
    end
  end
  object dsSitCofins: TDataSource
    DataSet = cdsSitCofins
    Left = 440
    Top = 208
  end
  object qSitIPI: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' SI.COD_SIT,'
      ' SI.DESCRICAO,'
      ' SI.COD_SIT||'#39' - '#39'||SI.DESCRICAO AS SIT_IPI'
      'FROM TB_SIT_IPI SI')
    SQLConnection = conexao
    Left = 344
    Top = 256
    object qSitIPICOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Required = True
      Size = 3
    end
    object qSitIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object qSitIPISIT_IPI: TStringField
      FieldName = 'SIT_IPI'
      ProviderFlags = []
      Size = 261
    end
  end
  object dspSitIPI: TDataSetProvider
    DataSet = qSitIPI
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 376
    Top = 256
  end
  object cdsSitIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSitIPI'
    Left = 408
    Top = 256
    object cdsSitIPICOD_SIT: TStringField
      FieldName = 'COD_SIT'
      Required = True
      Size = 3
    end
    object cdsSitIPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object cdsSitIPISIT_IPI: TStringField
      FieldName = 'SIT_IPI'
      ProviderFlags = []
      Size = 261
    end
  end
  object dsSitIPI: TDataSource
    DataSet = cdsSitIPI
    Left = 440
    Top = 256
  end
  object qTBvendaDTO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' v.VENDADTO_ID,'
      ' v.CANCELADA,'
      ' v.CFOP,'
      ' v.CHV_NFE,'
      ' v.CLIENTE,'
      ' v.CODLOJA,'
      ' v.DATAMOVI,'
      ' v.DATAMOVIF, '
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
      'from TB_vendadto v'
      'where  V.datamovif between :DT_INI AND :DT_FIN'
      'ORDER BY V.numcupom DESC'
      '')
    SQLConnection = conexao
    Left = 536
    Top = 8
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object StringField1: TStringField
      FieldName = 'CANCELADA'
      Size = 256
    end
    object FloatField1: TFloatField
      FieldName = 'CFOP'
    end
    object StringField2: TStringField
      FieldName = 'CHV_NFE'
      Size = 256
    end
    object StringField3: TStringField
      FieldName = 'CLIENTE'
      Size = 256
    end
    object FloatField2: TFloatField
      FieldName = 'CODLOJA'
    end
    object StringField4: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object StringField5: TStringField
      FieldName = 'FORMALAN'
      Size = 256
    end
    object StringField6: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object StringField7: TStringField
      FieldName = 'MENSAGEM'
      Size = 256
    end
    object FloatField3: TFloatField
      FieldName = 'MOD_NOTA'
    end
    object FloatField4: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object FloatField5: TFloatField
      FieldName = 'NUMPRE'
    end
    object StringField8: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object FloatField6: TFloatField
      FieldName = 'NUM_NOTA'
    end
    object StringField9: TStringField
      FieldName = 'OPERADOR'
      Size = 256
    end
    object StringField10: TStringField
      FieldName = 'SER_NOTA'
      Size = 256
    end
    object StringField11: TStringField
      FieldName = 'SUB_NOTA'
      Size = 256
    end
    object FloatField7: TFloatField
      FieldName = 'TOTVENDA'
    end
    object FloatField8: TFloatField
      FieldName = 'TOT_ITEM'
    end
    object FloatField9: TFloatField
      FieldName = 'VALACRES'
    end
    object FloatField10: TFloatField
      FieldName = 'VALDESC'
    end
    object StringField12: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
    object qTBvendaDTODATAMOVIF: TDateField
      FieldName = 'DATAMOVIF'
    end
  end
  object dspTBvendaDTO: TDataSetProvider
    DataSet = qTBvendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 568
    Top = 8
  end
  object cdsTBvendaDTO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspTBvendaDTO'
    Left = 600
    Top = 8
    object cdsTBvendaDTOVENDADTO_ID: TFMTBCDField
      FieldName = 'VENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsTBvendaDTOCANCELADA: TStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Size = 256
    end
    object cdsTBvendaDTOCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object cdsTBvendaDTOCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 256
    end
    object cdsTBvendaDTOCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Size = 256
    end
    object cdsTBvendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsTBvendaDTODATAMOVI: TStringField
      DisplayLabel = 'Data Mov'
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsTBvendaDTOFORMALAN: TStringField
      FieldName = 'FORMALAN'
      Size = 256
    end
    object cdsTBvendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsTBvendaDTOMENSAGEM: TStringField
      DisplayLabel = 'Mesagem'
      FieldName = 'MENSAGEM'
      Size = 256
    end
    object cdsTBvendaDTOMOD_NOTA: TFloatField
      FieldName = 'MOD_NOTA'
    end
    object cdsTBvendaDTONUMCUPOM: TFloatField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'NUMCUPOM'
    end
    object cdsTBvendaDTONUMPRE: TFloatField
      FieldName = 'NUMPRE'
    end
    object cdsTBvendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsTBvendaDTONUM_NOTA: TFloatField
      FieldName = 'NUM_NOTA'
    end
    object cdsTBvendaDTOOPERADOR: TStringField
      DisplayLabel = 'Operador'
      FieldName = 'OPERADOR'
      Size = 256
    end
    object cdsTBvendaDTOSER_NOTA: TStringField
      FieldName = 'SER_NOTA'
      Size = 256
    end
    object cdsTBvendaDTOSUB_NOTA: TStringField
      FieldName = 'SUB_NOTA'
      Size = 256
    end
    object cdsTBvendaDTOTOTVENDA: TFloatField
      DisplayLabel = 'Total Venda'
      FieldName = 'TOTVENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsTBvendaDTOTOT_ITEM: TFloatField
      DisplayLabel = 'Total Item'
      FieldName = 'TOT_ITEM'
    end
    object cdsTBvendaDTOVALACRES: TFloatField
      FieldName = 'VALACRES'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsTBvendaDTOVALDESC: TFloatField
      FieldName = 'VALDESC'
    end
    object cdsTBvendaDTOVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
    object cdsTBvendaDTODATAMOVIF: TDateField
      DisplayLabel = 'Data Movi'
      FieldName = 'DATAMOVIF'
      EditMask = '##/##/####'
    end
  end
  object dsTBvendaDTO: TDataSource
    DataSet = cdsTBvendaDTO
    Left = 632
    Top = 8
  end
  object qTBitemVendaDTO: TSQLQuery
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
      ' I.UNIDMEDI,'
      ' I.ID_PRODUTO,'
      ' I.ID_GRUPO_PRODUTO,'
      ' I.CANCELADO,'
      ' P.DESCRICAO,'
      ' P.EMBALGEM,'
      ' P.CD_BARRA'
      'FROM TB_ITEMVENDADTO I'
      
        'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODUTO = I.ID_PRODUTO AND' +
        ' P.ID_GRUPO_PRODUTO = I.ID_GRUPO_PRODUTO)'
      'WHERE I.NUMCUPOM = :NUMCUPOM')
    SQLConnection = conexao
    Left = 536
    Top = 48
    object FloatField21: TFloatField
      FieldName = 'ACREITEM'
    end
    object FloatField22: TFloatField
      FieldName = 'ACREVEND'
    end
    object FloatField23: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object FloatField24: TFloatField
      FieldName = 'CODLOJA'
    end
    object StringField25: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object FloatField25: TFloatField
      FieldName = 'DESCITEM'
    end
    object FloatField26: TFloatField
      FieldName = 'DESCVEND'
    end
    object StringField26: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object StringField27: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object StringField28: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object FloatField27: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object StringField29: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object FloatField28: TFloatField
      FieldName = 'PCOVENDA'
    end
    object StringField30: TStringField
      FieldName = 'PRODUTO'
      Size = 256
    end
    object FloatField29: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object FloatField30: TFloatField
      FieldName = 'QTDVENDA'
    end
    object StringField31: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object StringField32: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object qTBitemVendaDTOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qTBitemVendaDTOID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qTBitemVendaDTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qTBitemVendaDTOEMBALGEM: TStringField
      FieldName = 'EMBALGEM'
      ProviderFlags = []
      Size = 10
    end
    object qTBitemVendaDTOCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qTBitemVendaDTOITEMVENDADTO_ID: TFMTBCDField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object qTBitemVendaDTOCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
  end
  object dspTBitemVendaDTO: TDataSetProvider
    DataSet = qTBitemVendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 568
    Top = 48
  end
  object cdsTBitemVendaDTO: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NUMCUPOM'
    MasterFields = 'NUMCUPOM'
    MasterSource = dsTBvendaDTO
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'NUMCUPOM'
        ParamType = ptInput
      end>
    ProviderName = 'dspTBitemVendaDTO'
    Left = 600
    Top = 48
    object cdsTBitemVendaDTOACREITEM: TFloatField
      FieldName = 'ACREITEM'
    end
    object cdsTBitemVendaDTODESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsTBitemVendaDTOACREVEND: TFloatField
      FieldName = 'ACREVEND'
    end
    object cdsTBitemVendaDTOALIQUOTA: TFloatField
      DisplayLabel = 'Aliquota'
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsTBitemVendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsTBitemVendaDTODATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsTBitemVendaDTODESCITEM: TFloatField
      FieldName = 'DESCITEM'
    end
    object cdsTBitemVendaDTODESCVEND: TFloatField
      FieldName = 'DESCVEND'
    end
    object cdsTBitemVendaDTOGUID: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object cdsTBitemVendaDTOGUIDPROD: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object cdsTBitemVendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsTBitemVendaDTONUMCUPOM: TFloatField
      DisplayLabel = 'N'#186' Cupom'
      FieldName = 'NUMCUPOM'
    end
    object cdsTBitemVendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsTBitemVendaDTOPCOVENDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'PCOVENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsTBitemVendaDTOPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODUTO'
      Size = 256
    end
    object cdsTBitemVendaDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object cdsTBitemVendaDTOQTDVENDA: TFloatField
      DisplayLabel = 'Quant'
      FieldName = 'QTDVENDA'
    end
    object cdsTBitemVendaDTOTIPOALIQ: TStringField
      DisplayLabel = 'Tipo Aliq'
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object cdsTBitemVendaDTOUNIDMEDI: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object cdsTBitemVendaDTOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTBitemVendaDTOID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsTBitemVendaDTOEMBALGEM: TStringField
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object cdsTBitemVendaDTOCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsTBitemVendaDTOITEMVENDADTO_ID: TFMTBCDField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsTBitemVendaDTOCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
  end
  object dsTBitemVendaDTO: TDataSource
    DataSet = cdsTBitemVendaDTO
    Left = 632
    Top = 48
  end
  object sp_ItemVendaDTO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'PE_DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DATAFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_VENDADTO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_ACREITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_ACREVEND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CODLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_DATAMOVI'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_DESCITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_DESCVEND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_GUID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_GUIDPROD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUMCUPOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUMSERIE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_PCOVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_QTDEMBAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_QTDVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_TIPOALIQ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_UNIDMEDI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CANCELADO'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    StoredProcName = 'INSERT_TB_ITEM_VENDADTO'
    Left = 560
    Top = 104
  end
  object dsp_sp_ItemVendaDTO: TDataSetProvider
    DataSet = sp_ItemVendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 592
    Top = 104
  end
  object cds_sp_ItemVendaDTO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'PE_DATAINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'PE_DATAFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PE_VENDADTO_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_ACREITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_ACREVEND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CODLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_DATAMOVI'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_DESCITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_DESCVEND'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_GUID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_GUIDPROD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUMCUPOM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUMSERIE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_PCOVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_QTDEMBAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_QTDVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_TIPOALIQ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_UNIDMEDI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CANCELADO'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_sp_ItemVendaDTO'
    Left = 624
    Top = 104
  end
  object sp_TBvendaDTO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PE_CANCELADA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CFOP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CHV_NFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CODLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_DATAMOVI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_FORMALAN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_MENSAGEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_MOD_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUMCUPOM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUMPRE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUMSERIE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUM_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OPERADOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_SER_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_SUB_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_TOTVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_TOT_ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_VALACRES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_VALDESC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_VENDEDOR'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    StoredProcName = 'INSERT_TB_VENDADTO'
    Left = 560
    Top = 136
  end
  object dsp_spTBvendaDTO: TDataSetProvider
    DataSet = sp_TBvendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 592
    Top = 136
  end
  object cds_spTBvendaDTO: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PE_CANCELADA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CFOP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CHV_NFE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_CODLOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_DATAMOVI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_FORMALAN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_MENSAGEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_MOD_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUMCUPOM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUMPRE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_NUMSERIE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_NUM_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_OPERADOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_SER_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_SUB_NOTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_TOTVENDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_TOT_ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_VALACRES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PE_VALDESC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PE_VENDEDOR'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_spTBvendaDTO'
    Left = 624
    Top = 136
  end
  object conexao: TSQLConnection
    ConnectionName = 'FBConnection'
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
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      'Database=127.0.0.1:c:\GeProt\bdados\dincash.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Left = 28
    Top = 12
  end
  object qDinamica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 112
    Top = 8
  end
  object dspDinamica: TDataSetProvider
    DataSet = qDinamica
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 144
    Top = 8
  end
  object cdsDinamica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDinamica'
    Left = 176
    Top = 8
  end
  object dsDinamica: TDataSource
    DataSet = cdsDinamica
    Left = 208
    Top = 8
  end
  object sds_Tabela: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 248
    Top = 8
  end
  object dsp_Tabela: TDataSetProvider
    DataSet = sds_Tabela
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 280
    Top = 8
  end
  object cds_Tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_Tabela'
    Left = 312
    Top = 8
  end
  object ds_Tabela: TDataSource
    DataSet = cds_Tabela
    Left = 344
    Top = 8
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    C.ID_CLIENTE              ,'
      '    C.CODIGO_MUNIC             ,'
      '    C.DT_CADASTRO             ,'
      '    C.TP_CLIENTE              ,'
      '    C.CNPJ_CPF                ,'
      '    C.INSC_RG                 ,'
      '    C.R_SOCIAL                ,'
      '    C.FANTASIA                ,'
      '    C.ENDERECO                ,'
      '    C.COMPLEMENTO             ,'
      '    C.NUMERO                  ,'
      '    C.BAIRRO                  ,'
      '    C.CEP                     ,'
      '    C.DT_NASCIMENTO           ,'
      '    C.SEXO                    ,'
      '    C.ESTADO_CIVIL            ,'
      '    C.VL_LIMITE               ,'
      '    C.EMAIL                   ,'
      '    C.TELEFONE                ,'
      '    C.CELULAR                 ,'
      '    C.WHATSAPP                ,'
      '    C.CONTATO                ,'
      '    C.OBS                     ,'
      '    C.ATIVO                   ,'
      '    C.SPC                     ,'
      '    C.DT_CONSULTA_SPC         ,'
      '    C.VL_ULT_DESC             ,'
      '    C.DT_ULT_COMPRA           ,'
      '    C.VL_ULT_COMPRA           ,'
      '    C.INFORMACOES             ,'
      '    C.BLOQUEIO                ,'
      '    C.PONTO_REF,'
      '    C.id_grupo_empresa,'
      '    M.uf,'
      '    M.nome AS CIDADE,'
      '    M.ddd,'
      '    GE.nome_do_grupo'
      ''
      'FROM tb_cliente C'
      'JOIN tb_municipios M ON (M.codigo_munic = C.codigo_munic)'
      
        'LEFT OUTER JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = C.' +
        'id_grupo_empresa)')
    SQLConnection = conexao
    Left = 24
    Top = 312
    object qClienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object qClienteCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qClienteDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 10
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object qClienteINSC_RG: TStringField
      FieldName = 'INSC_RG'
      Size = 14
    end
    object qClienteR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      Size = 50
    end
    object qClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object qClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object qClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object qClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object qClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qClienteDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object qClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object qClienteESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object qClienteVL_LIMITE: TFMTBCDField
      FieldName = 'VL_LIMITE'
      Precision = 18
      Size = 2
    end
    object qClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qClienteWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object qClienteCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object qClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qClienteSPC: TStringField
      FieldName = 'SPC'
      Size = 1
    end
    object qClienteDT_CONSULTA_SPC: TDateField
      FieldName = 'DT_CONSULTA_SPC'
    end
    object qClienteVL_ULT_DESC: TFMTBCDField
      FieldName = 'VL_ULT_DESC'
      Precision = 18
      Size = 2
    end
    object qClienteDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
    end
    object qClienteVL_ULT_COMPRA: TFMTBCDField
      FieldName = 'VL_ULT_COMPRA'
      Precision = 18
      Size = 2
    end
    object qClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object qClientePONTO_REF: TStringField
      FieldName = 'PONTO_REF'
      Size = 50
    end
    object qClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qClienteDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object qClienteINFORMACOES: TStringField
      FieldName = 'INFORMACOES'
      Size = 999
    end
    object qClienteID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object qClienteNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = qCliente
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspClienteGetTableName
    Left = 56
    Top = 312
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 88
    Top = 312
    object cdsClienteID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object cdsClienteCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsClienteDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsClienteTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 10
    end
    object cdsClienteCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteINSC_RG: TStringField
      DisplayLabel = 'INSC/RG'
      FieldName = 'INSC_RG'
      Size = 14
    end
    object cdsClienteR_SOCIAL: TStringField
      DisplayLabel = 'Nome/R.Social'
      FieldName = 'R_SOCIAL'
      Size = 50
    end
    object cdsClienteFANTASIA: TStringField
      DisplayLabel = 'Apelido/Fantasia'
      FieldName = 'FANTASIA'
      Size = 50
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 50
    end
    object cdsClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      FixedChar = True
      Size = 18
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsClienteDT_NASCIMENTO: TDateField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DT_NASCIMENTO'
      EditMask = '##/##/####'
    end
    object cdsClienteSEXO: TStringField
      FieldName = 'SEXO'
      Size = 10
    end
    object cdsClienteESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Size = 15
    end
    object cdsClienteVL_LIMITE: TFMTBCDField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'VL_LIMITE'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsClienteWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object cdsClienteCONTATO: TStringField
      FieldName = 'CONTATO'
    end
    object cdsClienteOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsClienteSPC: TStringField
      FieldName = 'SPC'
      Size = 1
    end
    object cdsClienteDT_CONSULTA_SPC: TDateField
      FieldName = 'DT_CONSULTA_SPC'
      EditMask = '##/##/####'
    end
    object cdsClienteVL_ULT_DESC: TFMTBCDField
      FieldName = 'VL_ULT_DESC'
      Precision = 18
      Size = 2
    end
    object cdsClienteDT_ULT_COMPRA: TDateField
      DisplayLabel = 'Data Ult.Compra'
      FieldName = 'DT_ULT_COMPRA'
      EditMask = '##/##/####'
    end
    object cdsClienteVL_ULT_COMPRA: TFMTBCDField
      DisplayLabel = 'Vl. Ult.Compra'
      FieldName = 'VL_ULT_COMPRA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsClienteBLOQUEIO: TStringField
      FieldName = 'BLOQUEIO'
      Size = 1
    end
    object cdsClientePONTO_REF: TStringField
      FieldName = 'PONTO_REF'
      Size = 50
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsClienteDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object cdsClienteINFORMACOES: TStringField
      FieldName = 'INFORMACOES'
      Size = 999
    end
    object cdsClienteID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object cdsClienteNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Grupo Empresa'
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 120
    Top = 312
  end
  object qVendedor: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'V.ID_VENDEDOR,'
      'V.ID_LOJA    ,'
      'V.CODIGO_MUNIC,'
      'V.NOME        ,'
      'V.ENDERECO    ,'
      'V.NUMERO      ,'
      'V.BAIRRO      ,'
      'V.COMPLEMENTO ,'
      'V.CEP         ,'
      'V.CPF         ,'
      'V.RG          ,'
      'V.TELEFONE    ,'
      'V.CELULAR     ,'
      'V.WHATSAPP    ,'
      'V.EMAIL       ,'
      'V.DT_NASCIMENTO ,'
      'V.DT_CADASTRO ,'
      'V.ATIVO       ,'
      'V.VL_COMISSAO ,'
      'L.FANTASIA AS NOME_LOJA,'
      'M.NOME AS CIDADE,'
      'M.UF,'
      'M.DDD'
      'FROM TB_VENDEDOR V'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = V.ID_LOJA)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = V.CODIGO_MU' +
        'NIC)')
    SQLConnection = conexao
    Left = 184
    Top = 312
    object qVendedorID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object qVendedorID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qVendedorCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object qVendedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qVendedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object qVendedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 50
    end
    object qVendedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object qVendedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qVendedorCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qVendedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object qVendedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qVendedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 14
    end
    object qVendedorWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object qVendedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 70
    end
    object qVendedorDT_NASCIMENTO: TStringField
      FieldName = 'DT_NASCIMENTO'
      FixedChar = True
      Size = 18
    end
    object qVendedorDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qVendedorATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object qVendedorVL_COMISSAO: TFMTBCDField
      FieldName = 'VL_COMISSAO'
      Precision = 18
      Size = 2
    end
    object qVendedorNOME_LOJA: TStringField
      FieldName = 'NOME_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qVendedorCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qVendedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qVendedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspVendedor: TDataSetProvider
    DataSet = qVendedor
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspVendedorGetTableName
    Left = 216
    Top = 312
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 248
    Top = 312
    object cdsVendedorID_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_VENDEDOR'
      Required = True
    end
    object cdsVendedorID_LOJA: TIntegerField
      DisplayLabel = 'Cod.Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsVendedorCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsVendedorNOME: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOME'
      Size = 50
    end
    object cdsVendedorENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsVendedorNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 50
    end
    object cdsVendedorBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object cdsVendedorCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsVendedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsVendedorCPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object cdsVendedorRG: TStringField
      FieldName = 'RG'
      Size = 14
    end
    object cdsVendedorTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsVendedorCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Size = 14
    end
    object cdsVendedorWHATSAPP: TStringField
      DisplayLabel = 'WhatsApp'
      FieldName = 'WHATSAPP'
      Size = 14
    end
    object cdsVendedorEMAIL: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'EMAIL'
      Size = 70
    end
    object cdsVendedorDT_NASCIMENTO: TStringField
      DisplayLabel = 'Data Nascimento'
      FieldName = 'DT_NASCIMENTO'
      EditMask = '##/##/####'
      FixedChar = True
      Size = 18
    end
    object cdsVendedorDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsVendedorATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Size = 1
    end
    object cdsVendedorVL_COMISSAO: TFMTBCDField
      DisplayLabel = 'Vl. Comiss'#227'o'
      FieldName = 'VL_COMISSAO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsVendedorNOME_LOJA: TStringField
      DisplayLabel = 'Loja Filiado'
      FieldName = 'NOME_LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsVendedorCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsVendedorUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsVendedorDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 280
    Top = 312
  end
  object qNCM: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'N.ID_NCM,'
      'N.NCM,'
      'N.DESCRICAO,'
      'N.DT_VIG_INI,'
      'N.DT_VIG_FIN,'
      'N.EXTIPI,'
      'N.ALIQNAC,'
      'N.ALIQIMP,'
      'N.ALIQEST,'
      'N.ALIQMUN,'
      'N.TABELA,'
      'N.TIPO,'
      'N.CHAVE,'
      'N.FONTE,'
      'N.VERSAO'
      'FROM TB_ALIQ_IBPT N')
    SQLConnection = conexao
    Left = 184
    Top = 408
    object qNCMNCM: TStringField
      FieldName = 'NCM'
      Required = True
    end
    object qNCMDT_VIG_INI: TDateField
      FieldName = 'DT_VIG_INI'
    end
    object qNCMDT_VIG_FIN: TDateField
      FieldName = 'DT_VIG_FIN'
    end
    object qNCMEXTIPI: TStringField
      FieldName = 'EXTIPI'
    end
    object qNCMALIQNAC: TSingleField
      FieldName = 'ALIQNAC'
    end
    object qNCMALIQIMP: TSingleField
      FieldName = 'ALIQIMP'
    end
    object qNCMALIQEST: TSingleField
      FieldName = 'ALIQEST'
    end
    object qNCMALIQMUN: TSingleField
      FieldName = 'ALIQMUN'
    end
    object qNCMTABELA: TStringField
      FieldName = 'TABELA'
      FixedChar = True
      Size = 1
    end
    object qNCMTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qNCMCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 10
    end
    object qNCMFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1000
    end
    object qNCMVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 10
    end
    object qNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object qNCMID_NCM: TIntegerField
      FieldName = 'ID_NCM'
      Required = True
    end
  end
  object dspNCM: TDataSetProvider
    DataSet = qNCM
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 408
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNCM'
    Left = 248
    Top = 408
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Required = True
    end
    object cdsNCMDT_VIG_INI: TDateField
      FieldName = 'DT_VIG_INI'
    end
    object cdsNCMDT_VIG_FIN: TDateField
      FieldName = 'DT_VIG_FIN'
    end
    object cdsNCMEXTIPI: TStringField
      FieldName = 'EXTIPI'
    end
    object cdsNCMALIQNAC: TSingleField
      FieldName = 'ALIQNAC'
    end
    object cdsNCMALIQIMP: TSingleField
      FieldName = 'ALIQIMP'
    end
    object cdsNCMALIQEST: TSingleField
      FieldName = 'ALIQEST'
    end
    object cdsNCMALIQMUN: TSingleField
      FieldName = 'ALIQMUN'
    end
    object cdsNCMTABELA: TStringField
      FieldName = 'TABELA'
      FixedChar = True
      Size = 1
    end
    object cdsNCMTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsNCMCHAVE: TStringField
      FieldName = 'CHAVE'
      Size = 10
    end
    object cdsNCMFONTE: TStringField
      FieldName = 'FONTE'
      Size = 1000
    end
    object cdsNCMVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 10
    end
    object cdsNCMDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsNCMID_NCM: TIntegerField
      FieldName = 'ID_NCM'
      Required = True
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 280
    Top = 408
  end
  object qOrigemProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' OP.ID_ORIGEM_PRODUTO,'
      ' OP.CODIGO,'
      ' OP.DESCRICAO'
      'FROM TB_ORIGEM_PRODUTO OP')
    SQLConnection = conexao
    Left = 184
    Top = 456
    object qOrigemProdutoID_ORIGEM_PRODUTO: TIntegerField
      FieldName = 'ID_ORIGEM_PRODUTO'
      Required = True
    end
    object qOrigemProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qOrigemProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dspOrigemProduto: TDataSetProvider
    DataSet = qOrigemProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 456
  end
  object cdsOrigemProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrigemProduto'
    Left = 248
    Top = 456
    object cdsOrigemProdutoID_ORIGEM_PRODUTO: TIntegerField
      FieldName = 'ID_ORIGEM_PRODUTO'
      Required = True
    end
    object cdsOrigemProdutoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsOrigemProdutoDESCRICAO: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object dsOrigemProduto: TDataSource
    DataSet = cdsOrigemProduto
    Left = 280
    Top = 456
  end
  object qCSOSN: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' C.COD_CSOSN,'
      ' C.DESC_CSOSN'
      'FROM TB_CSOSN C')
    SQLConnection = conexao
    Left = 328
    Top = 408
    object qCSOSNCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      Required = True
      Size = 3
    end
    object qCSOSNDESC_CSOSN: TStringField
      FieldName = 'DESC_CSOSN'
      Size = 255
    end
  end
  object dspCSOSN: TDataSetProvider
    DataSet = qCSOSN
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 408
  end
  object cdsCSOSN: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCSOSN'
    Left = 392
    Top = 408
    object cdsCSOSNCOD_CSOSN: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CSOSN'
      Required = True
      Size = 3
    end
    object cdsCSOSNDESC_CSOSN: TStringField
      DisplayLabel = 'CSOSN'
      FieldName = 'DESC_CSOSN'
      Size = 255
    end
  end
  object dsCSOSN: TDataSource
    DataSet = cdsCSOSN
    Left = 424
    Top = 408
  end
  object qPlanoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PLANO_PAGAMENTO,'
      ' P.DESCRICAO_PAGAMENTO,'
      ' P.QT_PARCELAS,'
      ' P.QT_DIAS_ENTRE_PARCELAS,'
      ' P.QT_DIAS_PRIMEIRA_PARCELA'
      'FROM TB_PLANO_PAGAMENTO P')
    SQLConnection = conexao
    Left = 344
    Top = 312
    object qPlanoPagamentoID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
      Required = True
    end
    object qPlanoPagamentoDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qPlanoPagamentoQT_PARCELAS: TIntegerField
      FieldName = 'QT_PARCELAS'
    end
    object qPlanoPagamentoQT_DIAS_ENTRE_PARCELAS: TIntegerField
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object qPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
  end
  object dspPlanoPagamento: TDataSetProvider
    DataSet = qPlanoPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 312
  end
  object cdsPlanoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPlanoPagamento'
    Left = 408
    Top = 312
    object cdsPlanoPagamentoID_PLANO_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PLANO_PAGAMENTO'
      Required = True
    end
    object cdsPlanoPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Plano de Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsPlanoPagamentoQT_PARCELAS: TIntegerField
      DisplayLabel = 'Quant Parcelas'
      FieldName = 'QT_PARCELAS'
    end
    object cdsPlanoPagamentoQT_DIAS_ENTRE_PARCELAS: TIntegerField
      DisplayLabel = 'Dias Entre Parcelas'
      FieldName = 'QT_DIAS_ENTRE_PARCELAS'
    end
    object cdsPlanoPagamentoQT_DIAS_PRIMEIRA_PARCELA: TIntegerField
      DisplayLabel = 'Dias 1'#186' Parcela'
      FieldName = 'QT_DIAS_PRIMEIRA_PARCELA'
    end
  end
  object dsPlanoPagamento: TDataSource
    DataSet = cdsPlanoPagamento
    Left = 440
    Top = 312
  end
  object qFormaPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' F.ID_FORMA_PAGAMENTO,'
      ' F.DESCRICAO_PAGAMENTO'
      'FROM TB_FORMA_PAGAMENTO F')
    SQLConnection = conexao
    Left = 344
    Top = 360
    object qFormaPagamentoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object qFormaPagamentoDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dspFormaPagamento: TDataSetProvider
    DataSet = qFormaPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 360
  end
  object cdsFormaPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFormaPagamento'
    Left = 408
    Top = 360
    object cdsFormaPagamentoID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object cdsFormaPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dsFormaPagamento: TDataSource
    DataSet = cdsFormaPagamento
    Left = 440
    Top = 360
  end
  object qUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' U.ID_USUARIO,'
      ' U.ID_LOJA,'
      ' U.NOME_USUARIO,'
      ' U.SENHA,'
      ' U.NIVEL,'
      ' U.CAIXA,'
      ' L.R_SOCIAL'
      'FROM TB_USUARIO U'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = U.ID_LOJA)')
    SQLConnection = conexao
    Left = 24
    Top = 360
    object qUsuarioID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qUsuarioID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qUsuarioNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object qUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object qUsuarioNIVEL: TSmallintField
      FieldName = 'NIVEL'
    end
    object qUsuarioR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
    object qUsuarioCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 1
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = qUsuario
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspUsuarioGetTableName
    Left = 56
    Top = 360
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 88
    Top = 360
    object cdsUsuarioID_USUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object cdsUsuarioID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd. Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsUsuarioNOME_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object cdsUsuarioSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Size = 10
    end
    object cdsUsuarioCAIXA: TStringField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
      Size = 1
    end
    object cdsUsuarioNIVEL: TSmallintField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'NIVEL'
    end
    object cdsUsuarioR_SOCIAL: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 120
    Top = 360
  end
  object qPagamentoPDV: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' PG.ID_PAGAMENTO_PDV,'
      ' PG.ID_PDV,'
      ' PG.ID_PLANO_PAGAMENTO,'
      ' PG.ID_FORMA_PAGAMENTO,'
      ' PG.ID_LOJA,'
      ' PG.ID_USUARIO,'
      ' PG.VL_PAGAMENTO,'
      ' PG.VL_RECEBIDO,'
      ' PG.DT_MOV,'
      ' PG.CAIXA,'
      ' L.R_SOCIAL AS LOJA,'
      ' U.NOME_USUARIO,'
      ' PL.DESCRICAO_PAGAMENTO AS PLANO_PAGAMENTO,'
      ' FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO'
      'FROM TB_PAGAMENTO_PDV PG'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = PG.ID_LOJA)'
      'LEFT OUTER JOIN TB_PDV P ON (P.ID_PDV = PG.ID_PDV)'
      'LEFT OUTER JOIN TB_USUARIO U ON (U.ID_USUARIO = PG.ID_USUARIO)'
      
        'LEFT OUTER JOIN TB_PLANO_PAGAMENTO PL ON (PL.ID_PLANO_PAGAMENTO ' +
        '= PG.ID_PLANO_PAGAMENTO)'
      
        'LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP ON (FP.ID_FORMA_PAGAMENTO ' +
        '= PG.ID_FORMA_PAGAMENTO)')
    SQLConnection = conexao
    Left = 176
    Top = 360
    object qPagamentoPDVID_PAGAMENTO_PDV: TIntegerField
      FieldName = 'ID_PAGAMENTO_PDV'
      Required = True
    end
    object qPagamentoPDVID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qPagamentoPDVID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object qPagamentoPDVID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qPagamentoPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qPagamentoPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qPagamentoPDVVL_PAGAMENTO: TFMTBCDField
      FieldName = 'VL_PAGAMENTO'
      Precision = 18
      Size = 2
    end
    object qPagamentoPDVVL_RECEBIDO: TFMTBCDField
      FieldName = 'VL_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object qPagamentoPDVDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qPagamentoPDVCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qPagamentoPDVLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qPagamentoPDVNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qPagamentoPDVPLANO_PAGAMENTO: TStringField
      FieldName = 'PLANO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qPagamentoPDVFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dspPagamentoPDV: TDataSetProvider
    DataSet = qPagamentoPDV
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspPagamentoPDVGetTableName
    Left = 208
    Top = 360
  end
  object cdsPagamentoPDV: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamentoPDV'
    Left = 240
    Top = 360
    object cdsPagamentoPDVID_PAGAMENTO_PDV: TIntegerField
      FieldName = 'ID_PAGAMENTO_PDV'
      Required = True
    end
    object cdsPagamentoPDVID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsPagamentoPDVID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
    end
    object cdsPagamentoPDVID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsPagamentoPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsPagamentoPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPagamentoPDVVL_PAGAMENTO: TFMTBCDField
      FieldName = 'VL_PAGAMENTO'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoPDVVL_RECEBIDO: TFMTBCDField
      FieldName = 'VL_RECEBIDO'
      Precision = 18
      Size = 2
    end
    object cdsPagamentoPDVDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object cdsPagamentoPDVCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsPagamentoPDVLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsPagamentoPDVNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsPagamentoPDVPLANO_PAGAMENTO: TStringField
      FieldName = 'PLANO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsPagamentoPDVFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsPagamentoPDV: TDataSource
    DataSet = cdsPagamentoPDV
    Left = 272
    Top = 360
  end
  object qPdv: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PDV,'
      ' P.ID_CLIENTE,'
      ' P.ID_USUARIO,'
      ' P.ID_LOJA,'
      ' P.ID_VENDEDOR,'
      ' P.DT_VENDA,'
      ' P.HR_VENDA,'
      ' P.VL_VENDA,'
      ' P.VL_DESC,'
      ' P.VL_LIQ,'
      ' P.PERC_DESC,'
      ' P.STATUS,'
      ' P.CUPOM,'
      ' P.CAIXA,'
      ' U.NOME_USUARIO,'
      ' L.R_SOCIAL AS LOJA,'
      ' C.R_SOCIAL,'
      ' C.FANTASIA AS FANTASIA_CLIENTE,'
      ' C.CNPJ_CPF AS CNPJ_CPF_CLIENTE,'
      ' C.INSC_RG AS INSC_RG_CLIENTE,'
      ' C.CODIGO_MUNIC AS CODIGO_MUNIC_CLIENTE,'
      ' C.TP_CLIENTE,'
      ' M.NOME AS CIDADE_CLIENTE,'
      ' M.UF AS UF_CLIENTE,'
      ' C.ENDERECO AS ENDERECO_CLIENTE,'
      ' C.COMPLEMENTO AS COMPLEMENTO_CLIENTE,'
      ' C.NUMERO AS NUMERO_CLIENTE,'
      ' C.BAIRRO AS BAIRRO_CLIENTE,'
      ' C.CEP AS CEP_CLIENTE,'
      ' V.NOME AS VENDEDOR'
      'FROM TB_PDV P'
      'LEFT OUTER JOIN TB_LOJAS L ON (L.ID_LOJA = P.ID_LOJA)'
      'LEFT OUTER JOIN TB_USUARIO U ON (U.ID_USUARIO = P.ID_USUARIO)'
      'LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = P.ID_CLIENTE)'
      'LEFT OUTER JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = P.ID_VENDEDOR)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MU' +
        'NIC)'
      'WHERE P.STATUS ='#39'A'#39';')
    SQLConnection = conexao
    Left = 24
    Top = 408
    object qPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object qPdvID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qPdvID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qPdvID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qPdvID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qPdvDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object qPdvHR_VENDA: TTimeField
      FieldName = 'HR_VENDA'
    end
    object qPdvVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object qPdvVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qPdvVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object qPdvPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 18
      Size = 2
    end
    object qPdvSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qPdvCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object qPdvCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qPdvNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qPdvLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object qPdvR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qPdvVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qPdvFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qPdvCNPJ_CPF_CLIENTE: TStringField
      FieldName = 'CNPJ_CPF_CLIENTE'
      ProviderFlags = []
      Size = 18
    end
    object qPdvINSC_RG_CLIENTE: TStringField
      FieldName = 'INSC_RG_CLIENTE'
      ProviderFlags = []
      Size = 14
    end
    object qPdvCODIGO_MUNIC_CLIENTE: TStringField
      FieldName = 'CODIGO_MUNIC_CLIENTE'
      ProviderFlags = []
      Size = 7
    end
    object qPdvCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      ProviderFlags = []
      Size = 35
    end
    object qPdvUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object qPdvENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qPdvCOMPLEMENTO_CLIENTE: TStringField
      FieldName = 'COMPLEMENTO_CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qPdvNUMERO_CLIENTE: TStringField
      FieldName = 'NUMERO_CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qPdvBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object qPdvCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
    object qPdvTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
  end
  object dspPDV: TDataSetProvider
    DataSet = qPdv
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspPDVGetTableName
    Left = 56
    Top = 408
  end
  object cdsPDV: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PDV'
    MasterFields = 'ID_PDV'
    MasterSource = dsItemPdv
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspPDV'
    Left = 88
    Top = 408
    object cdsPDVID_PDV: TIntegerField
      DisplayLabel = 'N'#186' Or'#231'amento'
      FieldName = 'ID_PDV'
      Required = True
    end
    object cdsPDVID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPDVID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsPDVID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsPDVID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsPDVDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object cdsPDVHR_VENDA: TTimeField
      FieldName = 'HR_VENDA'
    end
    object cdsPDVVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object cdsPDVVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object cdsPDVVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object cdsPDVPERC_DESC: TFMTBCDField
      FieldName = 'PERC_DESC'
      Precision = 18
      Size = 2
    end
    object cdsPDVSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsPDVCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object cdsPDVCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsPDVNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsPDVLOJA: TStringField
      FieldName = 'LOJA'
      ProviderFlags = []
      Size = 35
    end
    object cdsPDVR_SOCIAL: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVFANTASIA_CLIENTE: TStringField
      FieldName = 'FANTASIA_CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVCNPJ_CPF_CLIENTE: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF_CLIENTE'
      ProviderFlags = []
      Size = 18
    end
    object cdsPDVINSC_RG_CLIENTE: TStringField
      FieldName = 'INSC_RG_CLIENTE'
      ProviderFlags = []
      Size = 14
    end
    object cdsPDVCODIGO_MUNIC_CLIENTE: TStringField
      FieldName = 'CODIGO_MUNIC_CLIENTE'
      ProviderFlags = []
      Size = 7
    end
    object cdsPDVCIDADE_CLIENTE: TStringField
      FieldName = 'CIDADE_CLIENTE'
      ProviderFlags = []
      Size = 35
    end
    object cdsPDVUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      ProviderFlags = []
      Size = 2
    end
    object cdsPDVENDERECO_CLIENTE: TStringField
      FieldName = 'ENDERECO_CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVCOMPLEMENTO_CLIENTE: TStringField
      FieldName = 'COMPLEMENTO_CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsPDVNUMERO_CLIENTE: TStringField
      FieldName = 'NUMERO_CLIENTE'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsPDVBAIRRO_CLIENTE: TStringField
      FieldName = 'BAIRRO_CLIENTE'
      ProviderFlags = []
      Size = 40
    end
    object cdsPDVCEP_CLIENTE: TStringField
      FieldName = 'CEP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
    object cdsPDVTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
  end
  object dsPDV: TDataSource
    DataSet = cdsPDV
    Left = 120
    Top = 408
  end
  object qItemPdv: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IP.ID_ITEM_PDV,'
      ' IP.ID_PDV,'
      ' IP.ID_PRODUTO,'
      ' IP.ID_GRUPO_PRODUTO,'
      ' IP.ITEM,'
      ' IP.QUANT,'
      ' IP.VL_UNIT,'
      ' IP.VL_TOTAL,'
      ' PR.CD_BARRA,'
      ' PR.CODIGO,'
      ' PR.REFERENCIA,'
      ' PR.DESCRICAO'
      'FROM TB_ITEM_PDV IP'
      'LEFT OUTER JOIN TB_PDV P ON (P.ID_PDV = IP.ID_PDV)'
      
        'LEFT OUTER JOIN TB_PRODUTO PR ON (PR.ID_PRODUTO = IP.ID_PRODUTO ' +
        'AND PR.ID_GRUPO_PRODUTO = IP.ID_GRUPO_PRODUTO)'
      'WHERE IP.ID_PDV = :ID_PDV')
    SQLConnection = conexao
    Left = 24
    Top = 452
    object qItemPdvID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object qItemPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qItemPdvID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemPdvID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemPdvITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemPdvQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object qItemPdvVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qItemPdvVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemPdvCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qItemPdvCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object qItemPdvREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object qItemPdvDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspItemPdv: TDataSetProvider
    DataSet = qItemPdv
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspItemPdvGetTableName
    Left = 56
    Top = 452
  end
  object cdsItemPdv: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemPdv'
    Left = 88
    Top = 452
    object cdsItemPdvID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object cdsItemPdvID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsItemPdvID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemPdvID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemPdvITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object cdsItemPdvQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object cdsItemPdvVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsItemPdvCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object cdsItemPdvCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsItemPdvREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsItemPdvDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsItemPdv: TDataSource
    DataSet = cdsItemPdv
    Left = 120
    Top = 452
  end
  object qBarras: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_GRUPO_PRODUTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' B.CODBARRAS,'
      ' B.ID_PRODUTO,'
      ' B.ID_GRUPO_PRODUTO,'
      ' B.CODPRODUTO,'
      ' B.DESC_ACRES,'
      ' B.PORCENTAGEM,'
      ' B.QTDEMBALAGEM'
      'FROM TB_BARRAS B'
      
        'WHERE B.ID_PRODUTO = :ID_PRODUTO AND B.ID_GRUPO_PRODUTO = :ID_GR' +
        'UPO_PRODUTO')
    SQLConnection = conexao
    Left = 328
    Top = 464
    object qBarrasCODBARRAS: TStringField
      FieldName = 'CODBARRAS'
      Required = True
      FixedChar = True
    end
    object qBarrasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qBarrasID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object qBarrasCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 7
    end
    object qBarrasDESC_ACRES: TStringField
      FieldName = 'DESC_ACRES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qBarrasPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
    object qBarrasQTDEMBALAGEM: TFMTBCDField
      FieldName = 'QTDEMBALAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dspBarras: TDataSetProvider
    DataSet = qBarras
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 464
  end
  object cdsBarras: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUTO;ID_GRUPO_PRODUTO'
    MasterFields = 'ID_PRODUTO;ID_GRUPO_PRODUTO'
    MasterSource = dsProduto
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_GRUPO_PRODUTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspBarras'
    Left = 392
    Top = 464
    object cdsBarrasCODBARRAS: TStringField
      DisplayLabel = 'C'#243'd Barra Alternativo'
      FieldName = 'CODBARRAS'
      Required = True
      FixedChar = True
    end
    object cdsBarrasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object cdsBarrasID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
      Required = True
    end
    object cdsBarrasCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CODPRODUTO'
      Size = 7
    end
    object cdsBarrasDESC_ACRES: TStringField
      FieldName = 'DESC_ACRES'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsBarrasPORCENTAGEM: TFMTBCDField
      FieldName = 'PORCENTAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsBarrasQTDEMBALAGEM: TFMTBCDField
      FieldName = 'QTDEMBALAGEM'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dsBarras: TDataSource
    DataSet = cdsBarras
    Left = 424
    Top = 464
  end
  object qNotaFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' NF.ID_NOTA_FISCAL,'
      ' NF.ID_PDV,'
      ' NF.ID_CFOP,'
      ' NF.ID_CLIENTE,'
      ' NF.ID_TIPO_PAGAMENTO,'
      ' NF.ID_TRANSPORTADORA,'
      ' NF.CODIGO_MUNIC,'
      ' NF.ID_VENDEDOR,'
      ' NF.N_SERIE,'
      ' NF.VL_TOTAL_NOTA,'
      ' NF.VL_TOTAL_PRODUTO,'
      ' NF.VL_ICMS,'
      ' NF.VL_ICMS_ST,'
      ' NF.VL_ACRESCIMO,'
      ' NF.BC_VL_ICMS_ST,'
      ' NF.DT_EMISSAO,'
      ' NF.DT_SAIDA,'
      ' NF.ALIQ,'
      ' NF.STATUS,'
      ' NF.CFOP,'
      ' NF.QT_VOL,'
      ' NF.ESPECIE,'
      ' NF.PESO_LIQ,'
      ' NF.PESO_BRUTO,'
      ' NF.VL_TOTAL_DESC,'
      ' NF.ID_LOJA,'
      ' NF.NR_NOTA_FISCAL,'
      ' NF.SITUACAO, '
      ' NF.DT_AUTORIZACAO,'
      ' NF.PROTOCOLO_AUTORIZACAO,'
      ' NF.CHAVE_NFE,'
      ' NF.RECIBO,'
      ' NF.INF_ADIC_FISCO,'
      ' NF.INF_ADIC_CONTRIBUINTE,'
      ' NF.TP_FRETE,'
      ' NF.PLACA,'
      ' NF.UF_PLACA,'
      ' NF.RNTC,'
      ' C.CFNOME AS DESC_CFOP,'
      ' CL.R_SOCIAL,'
      ' CL.ENDERECO,'
      ' CL.COMPLEMENTO,'
      ' CL.NUMERO,'
      ' CL.BAIRRO,'
      ' CL.CEP,'
      ' CL.CNPJ_CPF,'
      ' CL.INSC_RG,'
      ' CL.TP_CLIENTE,'
      ' M.NOME AS CIDADE,'
      ' M.UF,'
      ' V.NOME AS VENDEDOR,'
      ' E.FANTASIA AS FANTASIA_EMPRESA,'
      ' E.R_SOCIAL AS R_SOCIAL_EMPRESA,'
      ' E.INS_EST AS INS_EST_EMPRESA,'
      ' E.CNPJ AS CNPJ_EMPRESA,'
      ' E.ENDERECO AS ENDERECO_EMPRESA,'
      ' E.NUMERO AS NUMERO_EMPRESA,'
      ' E.BAIRRO AS BAIRRO_EMPRESA,'
      ' E.UF     AS UF_EMPRESA,'
      ' E.CEP    AS CEP_EMPRESA,'
      ' E.TELEFONE AS TELEFONE_EMPRESA,'
      ' FP.DESCRICAO_PAGAMENTO,'
      ' TR.NOME_TRANSPORTADORA,'
      ' TR.CNPJ AS CNPJ_TRANSP,'
      ' TR.IE AS IE_TRANSP,'
      ' TR.ENDERECO AS END_TRANS,'
      ' MT.NOME AS CIDADE_TRANS,'
      ' MT.UF AS UF_TRANS,'
      ' TR.NUMERO AS NUMERO_TRANS,'
      ' TR.BAIRRO AS BAIRRO_TRANS'
      'FROM TB_NOTA_FISCAL NF'
      'LEFT OUTER JOIN TB_CFOP C ON (C.CFCOD = NF.ID_CFOP)'
      'LEFT OUTER JOIN TB_CLIENTE CL ON (CL.ID_CLIENTE = NF.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = NF.CODIGO_M' +
        'UNIC)'
      
        'LEFT OUTER JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = NF.ID_VENDEDOR' +
        ')'
      'LEFT OUTER JOIN TB_LOJAS E ON (E.ID_LOJA = NF.ID_LOJA)'
      'LEFT OUTER JOIN TB_PDV P ON (P.ID_PDV = NF.ID_PDV)'
      
        'LEFT OUTER JOIN TB_PLANO_PAGAMENTO FP ON (FP.ID_PLANO_PAGAMENTO ' +
        '= NF.ID_TIPO_PAGAMENTO)LEFT OUTER JOIN TB_TRANSPORTADORA TR ON (' +
        'TR.ID_TRANSPORTADORA = NF.ID_TRANSPORTADORA)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS MT ON (MT.CODIGO_MUNIC = TR.CODIGO' +
        '_MUNIC)'
      'WHERE NF.SITUACAO <>'#39#39
      'ORDER BY  NF.NR_NOTA_FISCAL DESC')
    SQLConnection = conexao
    Left = 568
    Top = 456
    object qNotaFiscalID_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_NOTA_FISCAL'
      Required = True
    end
    object qNotaFiscalID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object qNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qNotaFiscalCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qNotaFiscalN_SERIE: TStringField
      FieldName = 'N_SERIE'
      Size = 10
    end
    object qNotaFiscalVL_TOTAL_NOTA: TFMTBCDField
      FieldName = 'VL_TOTAL_NOTA'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalVL_TOTAL_PRODUTO: TFMTBCDField
      FieldName = 'VL_TOTAL_PRODUTO'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalVL_ICMS: TFMTBCDField
      FieldName = 'VL_ICMS'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalVL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalVL_ACRESCIMO: TFMTBCDField
      FieldName = 'VL_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalBC_VL_ICMS_ST: TFMTBCDField
      FieldName = 'BC_VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qNotaFiscalDT_SAIDA: TDateField
      FieldName = 'DT_SAIDA'
    end
    object qNotaFiscalALIQ: TFMTBCDField
      FieldName = 'ALIQ'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qNotaFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qNotaFiscalQT_VOL: TStringField
      FieldName = 'QT_VOL'
      Size = 15
    end
    object qNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object qNotaFiscalPESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalVL_TOTAL_DESC: TFMTBCDField
      FieldName = 'VL_TOTAL_DESC'
      Precision = 18
      Size = 2
    end
    object qNotaFiscalID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qNotaFiscalNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qNotaFiscalSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 100
    end
    object qNotaFiscalDT_AUTORIZACAO: TSQLTimeStampField
      FieldName = 'DT_AUTORIZACAO'
    end
    object qNotaFiscalPROTOCOLO_AUTORIZACAO: TStringField
      FieldName = 'PROTOCOLO_AUTORIZACAO'
      Size = 100
    end
    object qNotaFiscalCHAVE_NFE: TStringField
      FieldName = 'CHAVE_NFE'
      Size = 150
    end
    object qNotaFiscalDESC_CFOP: TStringField
      FieldName = 'DESC_CFOP'
      ProviderFlags = []
      Size = 500
    end
    object qNotaFiscalR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qNotaFiscalENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qNotaFiscalCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qNotaFiscalNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qNotaFiscalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qNotaFiscalCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object qNotaFiscalCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qNotaFiscalINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object qNotaFiscalTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
    object qNotaFiscalCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qNotaFiscalUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qNotaFiscalVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qNotaFiscalFANTASIA_EMPRESA: TStringField
      FieldName = 'FANTASIA_EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object qNotaFiscalR_SOCIAL_EMPRESA: TStringField
      FieldName = 'R_SOCIAL_EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object qNotaFiscalINS_EST_EMPRESA: TStringField
      FieldName = 'INS_EST_EMPRESA'
      ProviderFlags = []
      Size = 14
    end
    object qNotaFiscalCNPJ_EMPRESA: TStringField
      FieldName = 'CNPJ_EMPRESA'
      ProviderFlags = []
      Size = 18
    end
    object qNotaFiscalENDERECO_EMPRESA: TStringField
      FieldName = 'ENDERECO_EMPRESA'
      ProviderFlags = []
      Size = 34
    end
    object qNotaFiscalNUMERO_EMPRESA: TStringField
      FieldName = 'NUMERO_EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object qNotaFiscalBAIRRO_EMPRESA: TStringField
      FieldName = 'BAIRRO_EMPRESA'
      ProviderFlags = []
      Size = 15
    end
    object qNotaFiscalUF_EMPRESA: TStringField
      FieldName = 'UF_EMPRESA'
      ProviderFlags = []
      Size = 2
    end
    object qNotaFiscalCEP_EMPRESA: TStringField
      FieldName = 'CEP_EMPRESA'
      ProviderFlags = []
      Size = 10
    end
    object qNotaFiscalTELEFONE_EMPRESA: TStringField
      FieldName = 'TELEFONE_EMPRESA'
      ProviderFlags = []
      Size = 12
    end
    object qNotaFiscalRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 150
    end
    object qNotaFiscalID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object qNotaFiscalDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object qNotaFiscalNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 80
    end
    object qNotaFiscalCNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      ProviderFlags = []
      Size = 18
    end
    object qNotaFiscalIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      ProviderFlags = []
      Size = 14
    end
    object qNotaFiscalEND_TRANS: TStringField
      FieldName = 'END_TRANS'
      ProviderFlags = []
      Size = 80
    end
    object qNotaFiscalCIDADE_TRANS: TStringField
      FieldName = 'CIDADE_TRANS'
      ProviderFlags = []
      Size = 35
    end
    object qNotaFiscalUF_TRANS: TStringField
      FieldName = 'UF_TRANS'
      ProviderFlags = []
      Size = 2
    end
    object qNotaFiscalNUMERO_TRANS: TStringField
      FieldName = 'NUMERO_TRANS'
      ProviderFlags = []
      Size = 8
    end
    object qNotaFiscalBAIRRO_TRANS: TStringField
      FieldName = 'BAIRRO_TRANS'
      ProviderFlags = []
      Size = 10
    end
    object qNotaFiscalINF_ADIC_FISCO: TStringField
      FieldName = 'INF_ADIC_FISCO'
      Size = 200
    end
    object qNotaFiscalINF_ADIC_CONTRIBUINTE: TStringField
      FieldName = 'INF_ADIC_CONTRIBUINTE'
      Size = 200
    end
    object qNotaFiscalTP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 15
    end
    object qNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object qNotaFiscalUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 10
    end
    object qNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
      Size = 50
    end
  end
  object dspNotaFiscal: TDataSetProvider
    DataSet = qNotaFiscal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspNotaFiscalGetTableName
    Left = 600
    Top = 456
  end
  object cdsNotaFiscal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspNotaFiscal'
    Left = 632
    Top = 456
    object cdsNotaFiscalID_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_NOTA_FISCAL'
      Required = True
    end
    object cdsNotaFiscalID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsNotaFiscalID_CFOP: TIntegerField
      FieldName = 'ID_CFOP'
    end
    object cdsNotaFiscalID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaFiscalCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsNotaFiscalID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsNotaFiscalN_SERIE: TStringField
      DisplayLabel = 'Serie'
      FieldName = 'N_SERIE'
      Size = 10
    end
    object cdsNotaFiscalVL_TOTAL_NOTA: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VL_TOTAL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalVL_TOTAL_PRODUTO: TFMTBCDField
      DisplayLabel = 'Vl Total Produtos'
      FieldName = 'VL_TOTAL_PRODUTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalVL_ICMS: TFMTBCDField
      DisplayLabel = 'Vl Icms'
      FieldName = 'VL_ICMS'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalVL_ICMS_ST: TFMTBCDField
      DisplayLabel = 'Vl Icms ST'
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalVL_ACRESCIMO: TFMTBCDField
      DisplayLabel = 'Vl Acrescimo'
      FieldName = 'VL_ACRESCIMO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalBC_VL_ICMS_ST: TFMTBCDField
      DisplayLabel = 'BC Vl Icms ST'
      FieldName = 'BC_VL_ICMS_ST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalDT_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      EditMask = '##/##/####'
    end
    object cdsNotaFiscalDT_SAIDA: TDateField
      DisplayLabel = 'Data Saida'
      FieldName = 'DT_SAIDA'
      EditMask = '##/##/####'
    end
    object cdsNotaFiscalALIQ: TFMTBCDField
      DisplayLabel = 'Aliq'
      FieldName = 'ALIQ'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsNotaFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object cdsNotaFiscalQT_VOL: TStringField
      FieldName = 'QT_VOL'
      Size = 15
    end
    object cdsNotaFiscalESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 15
    end
    object cdsNotaFiscalPESO_LIQ: TFMTBCDField
      FieldName = 'PESO_LIQ'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalPESO_BRUTO: TFMTBCDField
      FieldName = 'PESO_BRUTO'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalVL_TOTAL_DESC: TFMTBCDField
      DisplayLabel = 'Vl Total Desc'
      FieldName = 'VL_TOTAL_DESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsNotaFiscalID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsNotaFiscalNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsNotaFiscalSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Size = 100
    end
    object cdsNotaFiscalDT_AUTORIZACAO: TSQLTimeStampField
      DisplayLabel = 'Dt Autoriza'#231#227'o'
      FieldName = 'DT_AUTORIZACAO'
      EditMask = '##/##/####'
    end
    object cdsNotaFiscalPROTOCOLO_AUTORIZACAO: TStringField
      DisplayLabel = 'Protocolo Autoriza'#231#227'o'
      FieldName = 'PROTOCOLO_AUTORIZACAO'
      Size = 100
    end
    object cdsNotaFiscalCHAVE_NFE: TStringField
      DisplayLabel = 'Chave NFe'
      FieldName = 'CHAVE_NFE'
      Size = 150
    end
    object cdsNotaFiscalDESC_CFOP: TStringField
      FieldName = 'DESC_CFOP'
      ProviderFlags = []
      Size = 500
    end
    object cdsNotaFiscalR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaFiscalENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaFiscalCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaFiscalNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsNotaFiscalBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsNotaFiscalCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 10
    end
    object cdsNotaFiscalCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsNotaFiscalINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object cdsNotaFiscalTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      ProviderFlags = []
      Size = 10
    end
    object cdsNotaFiscalCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsNotaFiscalUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsNotaFiscalVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaFiscalFANTASIA_EMPRESA: TStringField
      FieldName = 'FANTASIA_EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object cdsNotaFiscalR_SOCIAL_EMPRESA: TStringField
      FieldName = 'R_SOCIAL_EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object cdsNotaFiscalINS_EST_EMPRESA: TStringField
      FieldName = 'INS_EST_EMPRESA'
      ProviderFlags = []
      Size = 14
    end
    object cdsNotaFiscalCNPJ_EMPRESA: TStringField
      FieldName = 'CNPJ_EMPRESA'
      ProviderFlags = []
      Size = 18
    end
    object cdsNotaFiscalENDERECO_EMPRESA: TStringField
      FieldName = 'ENDERECO_EMPRESA'
      ProviderFlags = []
      Size = 34
    end
    object cdsNotaFiscalNUMERO_EMPRESA: TStringField
      FieldName = 'NUMERO_EMPRESA'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
    object cdsNotaFiscalBAIRRO_EMPRESA: TStringField
      FieldName = 'BAIRRO_EMPRESA'
      ProviderFlags = []
      Size = 15
    end
    object cdsNotaFiscalUF_EMPRESA: TStringField
      FieldName = 'UF_EMPRESA'
      ProviderFlags = []
      Size = 2
    end
    object cdsNotaFiscalCEP_EMPRESA: TStringField
      FieldName = 'CEP_EMPRESA'
      ProviderFlags = []
      Size = 10
    end
    object cdsNotaFiscalTELEFONE_EMPRESA: TStringField
      FieldName = 'TELEFONE_EMPRESA'
      ProviderFlags = []
      Size = 12
    end
    object cdsNotaFiscalRECIBO: TStringField
      FieldName = 'RECIBO'
      Size = 150
    end
    object cdsNotaFiscalID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object cdsNotaFiscalDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Tipo Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsNotaFiscalID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsNotaFiscalNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 80
    end
    object cdsNotaFiscalCNPJ_TRANSP: TStringField
      FieldName = 'CNPJ_TRANSP'
      ProviderFlags = []
      Size = 18
    end
    object cdsNotaFiscalIE_TRANSP: TStringField
      FieldName = 'IE_TRANSP'
      ProviderFlags = []
      Size = 14
    end
    object cdsNotaFiscalEND_TRANS: TStringField
      FieldName = 'END_TRANS'
      ProviderFlags = []
      Size = 80
    end
    object cdsNotaFiscalCIDADE_TRANS: TStringField
      FieldName = 'CIDADE_TRANS'
      ProviderFlags = []
      Size = 35
    end
    object cdsNotaFiscalUF_TRANS: TStringField
      FieldName = 'UF_TRANS'
      ProviderFlags = []
      Size = 2
    end
    object cdsNotaFiscalNUMERO_TRANS: TStringField
      FieldName = 'NUMERO_TRANS'
      ProviderFlags = []
      Size = 8
    end
    object cdsNotaFiscalBAIRRO_TRANS: TStringField
      FieldName = 'BAIRRO_TRANS'
      ProviderFlags = []
      Size = 10
    end
    object cdsNotaFiscalINF_ADIC_FISCO: TStringField
      FieldName = 'INF_ADIC_FISCO'
      Size = 200
    end
    object cdsNotaFiscalINF_ADIC_CONTRIBUINTE: TStringField
      FieldName = 'INF_ADIC_CONTRIBUINTE'
      Size = 200
    end
    object cdsNotaFiscalTP_FRETE: TStringField
      FieldName = 'TP_FRETE'
      Size = 15
    end
    object cdsNotaFiscalPLACA: TStringField
      FieldName = 'PLACA'
      Size = 10
    end
    object cdsNotaFiscalUF_PLACA: TStringField
      FieldName = 'UF_PLACA'
      Size = 10
    end
    object cdsNotaFiscalRNTC: TStringField
      FieldName = 'RNTC'
      Size = 50
    end
  end
  object dsNotaFiscal: TDataSource
    DataSet = cdsNotaFiscal
    Left = 664
    Top = 456
  end
  object qItemComanda: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMANDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IC.ID_ITEM_COMANDA,'
      ' IC.ID_COMANDA,'
      ' IC.ID_PRODUTO,'
      ' IC.ID_GRUPO_PRODUTO,'
      ' IC.QUANT,'
      ' IC.VL_UNIT,'
      ' IC.VL_TOTAL,'
      ' P.CODIGO,'
      ' P.REFERENCIA,'
      ' P.CD_BARRA,'
      ' P.DESCRICAO,'
      ' P.UNIDADE,'
      ' C.ID_MESA'
      'FROM TB_ITEM_COMANDA IC'
      'LEFT OUTER JOIN TB_COMANDA C  ON (C.ID_COMANDA = IC.ID_COMANDA)'
      
        'LEFT OUTER JOIN TB_PRODUTO P  ON (P.ID_PRODUTO = IC.ID_PRODUTO A' +
        'ND P.ID_GRUPO_PRODUTO = IC.ID_GRUPO_PRODUTO)'
      'WHERE IC.ID_COMANDA  = :ID_COMANDA'
      'ORDER BY IC.ID_ITEM_COMANDA')
    SQLConnection = conexao
    Left = 192
    Top = 552
    object qItemComandaID_ITEM_COMANDA: TIntegerField
      FieldName = 'ID_ITEM_COMANDA'
      Required = True
    end
    object qItemComandaID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
    end
    object qItemComandaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemComandaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemComandaQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object qItemComandaVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qItemComandaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemComandaCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object qItemComandaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object qItemComandaCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object qItemComandaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemComandaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 10
    end
    object qItemComandaID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = []
    end
  end
  object dspItemComanda: TDataSetProvider
    DataSet = qItemComanda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 224
    Top = 552
  end
  object cdsItemComanda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_COMANDA'
    MasterFields = 'ID_COMANDA'
    MasterSource = dsComanda
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_COMANDA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemComanda'
    Left = 256
    Top = 552
    object cdsItemComandaID_ITEM_COMANDA: TIntegerField
      FieldName = 'ID_ITEM_COMANDA'
      Required = True
    end
    object cdsItemComandaID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
    end
    object cdsItemComandaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemComandaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemComandaQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemComandaVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl.Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemComandaVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemComandaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsItemComandaREFERENCIA: TStringField
      DisplayLabel = 'Referencia'
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsItemComandaCD_BARRA: TStringField
      DisplayLabel = 'C'#243'd Barra'
      FieldName = 'CD_BARRA'
      ProviderFlags = []
      Size = 13
    end
    object cdsItemComandaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemComandaUNIDADE: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemComandaID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      ProviderFlags = []
    end
  end
  object dsItemComanda: TDataSource
    DataSet = cdsItemComanda
    Left = 288
    Top = 552
  end
  object qItemNotaFiscal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NOTA_FISCAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  INF.ID_ITEM_NOTA_FISCAL,'
      '  INF.ID_NOTA_FISCAL,'
      '  INF.ID_PRODUTO,'
      '  INF.ID_GRUPO_PRODUTO,'
      '  INF.CFOP,'
      '  INF.ITEM,'
      '  INF.UNIDADE,'
      '  INF.QUANT,'
      '  INF.VL_UNI,'
      '  INF.VL_TOTAL,'
      '  INF.VALOR_ACRESCIMO,'
      '  INF.BC_ICMS,'
      '  INF.VLR_ICMS,'
      '  INF.ALIQ_ICMS,'
      '  INF.BC_ICMS_ST,'
      '  INF.VL_ICMS_ST,'
      '  INF.VL_TOTAL_DESC_ITEM,'
      '  INF.CST,'
      '  P.DESCRICAO,'
      '  P.UNIDADE AS UNID,'
      '  P.CODIGO,'
      '  P.REFERENCIA,'
      '  P.NCM,'
      '  P.ST,'
      '  P.MVA,'
      '  P.COD_CSOSN'
      'FROM TB_ITEM_NOTA_FISCAL INF'
      
        'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODUTO = INF.ID_PRODUTO A' +
        'ND P.ID_GRUPO_PRODUTO = INF.ID_GRUPO_PRODUTO)'
      'WHERE INF.ID_NOTA_FISCAL = :ID_NOTA_FISCAL')
    SQLConnection = conexao
    Left = 568
    Top = 499
    object qItemNotaFiscalID_ITEM_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_ITEM_NOTA_FISCAL'
      Required = True
    end
    object qItemNotaFiscalID_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_NOTA_FISCAL'
    end
    object qItemNotaFiscalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemNotaFiscalID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemNotaFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object qItemNotaFiscalITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemNotaFiscalUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 10
    end
    object qItemNotaFiscalQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalVL_UNI: TFMTBCDField
      FieldName = 'VL_UNI'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalVALOR_ACRESCIMO: TFMTBCDField
      FieldName = 'VALOR_ACRESCIMO'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalBC_ICMS: TFMTBCDField
      FieldName = 'BC_ICMS'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalVLR_ICMS: TFMTBCDField
      FieldName = 'VLR_ICMS'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalALIQ_ICMS: TFMTBCDField
      FieldName = 'ALIQ_ICMS'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalBC_ICMS_ST: TFMTBCDField
      FieldName = 'BC_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalVL_ICMS_ST: TFMTBCDField
      FieldName = 'VL_ICMS_ST'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalVL_TOTAL_DESC_ITEM: TFMTBCDField
      FieldName = 'VL_TOTAL_DESC_ITEM'
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalCST: TStringField
      FieldName = 'CST'
      ProviderFlags = []
      Size = 3
    end
    object qItemNotaFiscalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object qItemNotaFiscalUNID: TStringField
      FieldName = 'UNID'
      ProviderFlags = []
      Size = 10
    end
    object qItemNotaFiscalCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object qItemNotaFiscalREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object qItemNotaFiscalNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object qItemNotaFiscalST: TStringField
      FieldName = 'ST'
      ProviderFlags = []
      Size = 3
    end
    object qItemNotaFiscalMVA: TFMTBCDField
      FieldName = 'MVA'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qItemNotaFiscalCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      ProviderFlags = []
      Size = 3
    end
  end
  object dspItemNotaFiscal: TDataSetProvider
    DataSet = qItemNotaFiscal
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspItemNotaFiscalGetTableName
    Left = 600
    Top = 499
  end
  object cdsItemNotaFiscal: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_NOTA_FISCAL'
    MasterFields = 'ID_NOTA_FISCAL'
    MasterSource = dsNotaFiscal
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_NOTA_FISCAL'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemNotaFiscal'
    Left = 632
    Top = 499
    object cdsItemNotaFiscalID_ITEM_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_ITEM_NOTA_FISCAL'
      Required = True
    end
    object cdsItemNotaFiscalID_NOTA_FISCAL: TIntegerField
      FieldName = 'ID_NOTA_FISCAL'
    end
    object cdsItemNotaFiscalID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemNotaFiscalID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemNotaFiscalCFOP: TStringField
      FieldName = 'CFOP'
      Size = 10
    end
    object cdsItemNotaFiscalITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object cdsItemNotaFiscalUNIDADE: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 10
    end
    object cdsItemNotaFiscalQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalVL_UNI: TFMTBCDField
      DisplayLabel = 'Vl.Unit'
      FieldName = 'VL_UNI'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalVALOR_ACRESCIMO: TFMTBCDField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'VALOR_ACRESCIMO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalBC_ICMS: TFMTBCDField
      DisplayLabel = 'BC Icms'
      FieldName = 'BC_ICMS'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalVLR_ICMS: TFMTBCDField
      DisplayLabel = 'Vl. Icms'
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalALIQ_ICMS: TFMTBCDField
      DisplayLabel = 'Aliq Icms'
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalBC_ICMS_ST: TFMTBCDField
      DisplayLabel = 'BC Icms ST'
      FieldName = 'BC_ICMS_ST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalVL_ICMS_ST: TFMTBCDField
      DisplayLabel = 'Vl Icms ST'
      FieldName = 'VL_ICMS_ST'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalVL_TOTAL_DESC_ITEM: TFMTBCDField
      DisplayLabel = 'Desc Item'
      FieldName = 'VL_TOTAL_DESC_ITEM'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalCST: TStringField
      FieldName = 'CST'
      ProviderFlags = []
      Size = 3
    end
    object cdsItemNotaFiscalDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemNotaFiscalUNID: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNID'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemNotaFiscalCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 7
    end
    object cdsItemNotaFiscalREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      ProviderFlags = []
    end
    object cdsItemNotaFiscalNCM: TStringField
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
    end
    object cdsItemNotaFiscalST: TStringField
      FieldName = 'ST'
      ProviderFlags = []
      Size = 3
    end
    object cdsItemNotaFiscalMVA: TFMTBCDField
      FieldName = 'MVA'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object cdsItemNotaFiscalCOD_CSOSN: TStringField
      FieldName = 'COD_CSOSN'
      ProviderFlags = []
      Size = 3
    end
  end
  object dsItemNotaFiscal: TDataSource
    DataSet = cdsItemNotaFiscal
    Left = 664
    Top = 499
  end
  object qGravaEstoqueProduto: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    StoredProcName = 'GRAVA_ESTOQUE_PRODUTO'
    Left = 560
    Top = 192
  end
  object dspGravaEstoqueProduto: TDataSetProvider
    DataSet = qGravaEstoqueProduto
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 589
    Top = 191
  end
  object cdsGravaEstoqueProduto: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 1
        Name = 'PE_TP_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspGravaEstoqueProduto'
    Left = 616
    Top = 191
  end
  object qReplicaNotaEntrada: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA1'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    StoredProcName = 'REPLICAR_NOTA_ENTRADA'
    Left = 560
    Top = 240
  end
  object dspReplicaNotaEntrada: TDataSetProvider
    DataSet = qReplicaNotaEntrada
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 589
    Top = 239
  end
  object cdsReplicaNotaEntrada: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_NR_DOC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_LOJA1'
        ParamType = ptInput
      end>
    ProviderName = 'dspReplicaNotaEntrada'
    Left = 616
    Top = 239
  end
  object spInc_Item_nf: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_NOTA_FISCAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_CD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'PE_UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_TP_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_TP_NF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_EMPRESA'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    StoredProcName = 'INC_ITEM_NOTA_FISCAL'
    Left = 560
    Top = 288
  end
  object dspInc_Item_nf: TDataSetProvider
    DataSet = spInc_Item_nf
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 589
    Top = 287
  end
  object cdsInc_Item_nf: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_NOTA_FISCAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_CD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2
        Name = 'PE_UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_TP_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_TP_NF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_EMPRESA'
        ParamType = ptInput
      end>
    ProviderName = 'dspInc_Item_nf'
    Left = 616
    Top = 287
  end
  object spSomaNF: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_NOTA_FISCAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 3
        Name = 'PE_UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_TP_PESSOA'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    StoredProcName = 'SOMA_TOTAL_NOTA_FISCAL'
    Left = 560
    Top = 336
  end
  object dspSomaNF: TDataSetProvider
    DataSet = spSomaNF
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 589
    Top = 335
  end
  object cdsSomaNF: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_NOTA_FISCAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PEDIDO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 3
        Name = 'PE_UF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 30
        Name = 'PE_TP_PESSOA'
        ParamType = ptInput
      end>
    ProviderName = 'dspSomaNF'
    Left = 616
    Top = 335
  end
  object SQLStoredProc1: TSQLStoredProc
    Params = <>
    Left = 712
    Top = 352
  end
  object DataSetProvider2: TDataSetProvider
    Left = 741
    Top = 351
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 768
    Top = 351
  end
  object qMesa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' M.ID_MESA,'
      ' M.ID_LOJA,'
      ' M.NOME_MESA,'
      ' M.STATUS,'
      ' E.FANTASIA'
      'FROM TB_MESA M'
      'INNER JOIN TB_LOJAS E ON (E.ID_LOJA = M.ID_LOJA)')
    SQLConnection = conexao
    Left = 24
    Top = 504
    object qMesaID_MESA: TIntegerField
      FieldName = 'ID_MESA'
      Required = True
    end
    object qMesaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qMesaNOME_MESA: TStringField
      FieldName = 'NOME_MESA'
      Size = 40
    end
    object qMesaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qMesaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspMesa: TDataSetProvider
    DataSet = qMesa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 56
    Top = 504
  end
  object cdsMesa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMesa'
    Left = 88
    Top = 504
    object cdsMesaID_MESA: TIntegerField
      DisplayLabel = 'N'#186' Mesa'
      FieldName = 'ID_MESA'
      Required = True
    end
    object cdsMesaID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsMesaNOME_MESA: TStringField
      DisplayLabel = 'Mesa'
      FieldName = 'NOME_MESA'
      Size = 40
    end
    object cdsMesaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsMesaFANTASIA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsMesa: TDataSource
    DataSet = cdsMesa
    Left = 120
    Top = 504
  end
  object qComanda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' C.ID_COMANDA,'
      ' C.ID_CLIENTE,'
      ' C.ID_VENDEDOR,'
      ' C.ID_MESA,'
      ' C.ID_EMPRESA,'
      ' C.DT_ABERTURA,'
      ' C.HR_ABERTURA,'
      ' C.DT_FECHAMENTO,'
      ' C.HR_FECHAMENTO,'
      ' C.NR_COMANDA,'
      ' C.STATUS,'
      ' C.VL_TOTAL,'
      ' C.VL_ACRES,'
      ' C.VL_SERVICO,'
      ' C.VL_DESC,'
      ' C.VL_LIQ,'
      ' C.VALE_BRINDE,'
      ' C.ID_TIPO_PAGAMENTO,'
      ' C.ID_FORMA_PAGAMENTO,'
      ' C.TEMPO_OCUPADO,'
      ' C.ID_USUARIO,'
      ' FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO,'
      ' T.DESCRICAO_PAGAMENTO,'
      ' CL.R_SOCIAL,'
      ' V.NOME AS VENDEDOR,'
      ' M.NOME_MESA,'
      ' M.STATUS as ST_MESA,'
      ' E.R_SOCIAL AS EMPRESA'
      'FROM TB_COMANDA C'
      'LEFT OUTER JOIN TB_CLIENTE CL  ON (CL.ID_CLIENTE = C.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_VENDEDOR V  ON (V.ID_VENDEDOR = C.ID_VENDEDOR' +
        ')'
      'LEFT OUTER JOIN TB_MESA M      ON (M.ID_MESA     = C.ID_MESA)'
      'LEFT OUTER JOIN TB_LOJAS E   ON (E.ID_LOJA  = C.ID_EMPRESA)'
      
        'LEFT OUTER JOIN TB_PLANO_PAGAMENTO T   ON (T.ID_PLANO_PAGAMENTO ' +
        ' = C.ID_TIPO_PAGAMENTO)'
      
        'LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP   ON (FP.ID_FORMA_PAGAMENT' +
        'O  = C.ID_FORMA_PAGAMENTO)'
      'WHERE  C.STATUS = '#39'O'#39)
    SQLConnection = conexao
    Left = 192
    Top = 504
    object qComandaID_COMANDA: TIntegerField
      FieldName = 'ID_COMANDA'
      Required = True
    end
    object qComandaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qComandaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qComandaID_MESA: TIntegerField
      FieldName = 'ID_MESA'
    end
    object qComandaDT_ABERTURA: TDateField
      FieldName = 'DT_ABERTURA'
    end
    object qComandaHR_ABERTURA: TTimeField
      FieldName = 'HR_ABERTURA'
    end
    object qComandaDT_FECHAMENTO: TDateField
      FieldName = 'DT_FECHAMENTO'
    end
    object qComandaHR_FECHAMENTO: TTimeField
      FieldName = 'HR_FECHAMENTO'
    end
    object qComandaNR_COMANDA: TStringField
      FieldName = 'NR_COMANDA'
    end
    object qComandaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qComandaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qComandaVL_ACRES: TFMTBCDField
      FieldName = 'VL_ACRES'
      Precision = 18
      Size = 2
    end
    object qComandaVL_SERVICO: TFMTBCDField
      FieldName = 'VL_SERVICO'
      Precision = 18
      Size = 2
    end
    object qComandaVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qComandaVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object qComandaVALE_BRINDE: TFMTBCDField
      FieldName = 'VALE_BRINDE'
      Precision = 18
      Size = 3
    end
    object qComandaID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object qComandaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qComandaTEMPO_OCUPADO: TTimeField
      FieldName = 'TEMPO_OCUPADO'
    end
    object qComandaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qComandaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qComandaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qComandaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qComandaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qComandaNOME_MESA: TStringField
      FieldName = 'NOME_MESA'
      ProviderFlags = []
      Size = 40
    end
    object qComandaST_MESA: TStringField
      FieldName = 'ST_MESA'
      ProviderFlags = []
      Size = 1
    end
    object qComandaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object qComandaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
  end
  object dspComanda: TDataSetProvider
    DataSet = qComanda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 224
    Top = 504
  end
  object cdsComanda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspComanda'
    Left = 256
    Top = 504
    object cdsComandaID_COMANDA: TIntegerField
      DisplayLabel = 'N'#186' Comanda'
      FieldName = 'ID_COMANDA'
      Required = True
    end
    object cdsComandaID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsComandaID_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsComandaID_MESA: TIntegerField
      DisplayLabel = 'N'#186' Mesa'
      FieldName = 'ID_MESA'
    end
    object cdsComandaDT_ABERTURA: TDateField
      DisplayLabel = 'Data Abertura'
      FieldName = 'DT_ABERTURA'
      EditMask = '##/##/####'
    end
    object cdsComandaHR_ABERTURA: TTimeField
      DisplayLabel = 'Hora Abertura'
      FieldName = 'HR_ABERTURA'
      EditMask = '##:##:##'
    end
    object cdsComandaDT_FECHAMENTO: TDateField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DT_FECHAMENTO'
      EditMask = '##/##/####'
    end
    object cdsComandaHR_FECHAMENTO: TTimeField
      DisplayLabel = 'Hora Fechamento'
      FieldName = 'HR_FECHAMENTO'
      EditMask = '##:##:##'
    end
    object cdsComandaNR_COMANDA: TStringField
      DisplayLabel = 'N'#186' Comanda'
      FieldName = 'NR_COMANDA'
    end
    object cdsComandaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsComandaVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_ACRES: TFMTBCDField
      DisplayLabel = 'Vl.Acrescimo'
      FieldName = 'VL_ACRES'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_SERVICO: TFMTBCDField
      DisplayLabel = 'Vl Servi'#231'o'
      FieldName = 'VL_SERVICO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_DESC: TFMTBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'VL_DESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVL_LIQ: TFMTBCDField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'VL_LIQ'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsComandaVALE_BRINDE: TFMTBCDField
      DisplayLabel = 'Vale Brinde'
      FieldName = 'VALE_BRINDE'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsComandaID_TIPO_PAGAMENTO: TIntegerField
      FieldName = 'ID_TIPO_PAGAMENTO'
    end
    object cdsComandaID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsComandaTEMPO_OCUPADO: TTimeField
      DisplayLabel = 'Tempo Ocupado'
      FieldName = 'TEMPO_OCUPADO'
      EditMask = '##:##:##'
    end
    object cdsComandaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsComandaFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsComandaDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsComandaR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsComandaVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsComandaNOME_MESA: TStringField
      DisplayLabel = 'Mesa'
      FieldName = 'NOME_MESA'
      ProviderFlags = []
      Size = 40
    end
    object cdsComandaST_MESA: TStringField
      FieldName = 'ST_MESA'
      ProviderFlags = []
      Size = 1
    end
    object cdsComandaEMPRESA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'EMPRESA'
      ProviderFlags = []
      Size = 35
    end
    object cdsComandaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
    end
  end
  object dsComanda: TDataSource
    DataSet = cdsComanda
    Left = 288
    Top = 504
  end
  object qCategoria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'C.ID_CATEGORIA,'
      'C.NOME_CATEGORIA'
      'FROM TB_CATEGORIA  C')
    SQLConnection = conexao
    Left = 24
    Top = 656
    object qCategoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object qCategoriaNOME_CATEGORIA: TStringField
      FieldName = 'NOME_CATEGORIA'
      Size = 40
    end
  end
  object dspCategoria: TDataSetProvider
    DataSet = qCategoria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 56
    Top = 656
  end
  object cdsCategoria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCategoria'
    Left = 88
    Top = 656
    object cdsCategoriaID_CATEGORIA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CATEGORIA'
      Required = True
    end
    object cdsCategoriaNOME_CATEGORIA: TStringField
      DisplayLabel = 'Categoria'
      FieldName = 'NOME_CATEGORIA'
      Size = 40
    end
  end
  object dsCategoria: TDataSource
    DataSet = cdsCategoria
    Left = 120
    Top = 656
  end
  object qTransportadora: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' T.ID_TRANSPORTADORA,'
      ' T.CNPJ,'
      ' T.IE,'
      ' T.NOME_TRANSPORTADORA,'
      ' T.ENDERECO,'
      ' T.CIDADE,'
      ' T.UF,'
      ' T.NUMERO,'
      ' T.BAIRRO,'
      ' T.CEP,'
      ' T.TELEFONE,'
      ' T.CODIGO_MUNIC,'
      ' M.DDD,'
      ' M.NOME AS CIDADE,'
      ' M.UF'
      'FROM TB_TRANSPORTADORA T'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = T.CODIGO_MU' +
        'NIC)')
    SQLConnection = conexao
    Left = 516
    Top = 393
    object qTransportadoraID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qTransportadoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object qTransportadoraIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qTransportadoraNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 80
    end
    object qTransportadoraENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qTransportadoraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object qTransportadoraUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qTransportadoraNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 8
    end
    object qTransportadoraBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 10
    end
    object qTransportadoraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qTransportadoraTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object qTransportadoraCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object qTransportadoraDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object qTransportadoraCIDADE_1: TStringField
      FieldName = 'CIDADE_1'
      ProviderFlags = []
      Size = 35
    end
    object qTransportadoraUF_1: TStringField
      FieldName = 'UF_1'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspTransportadora: TDataSetProvider
    DataSet = qTransportadora
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 548
    Top = 393
  end
  object cdsTransportadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTransportadora'
    Left = 580
    Top = 393
    object cdsTransportadoraID_TRANSPORTADORA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_TRANSPORTADORA'
      Required = True
    end
    object cdsTransportadoraCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object cdsTransportadoraIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object cdsTransportadoraNOME_TRANSPORTADORA: TStringField
      DisplayLabel = 'Nome Transportadora'
      FieldName = 'NOME_TRANSPORTADORA'
      Size = 80
    end
    object cdsTransportadoraENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 80
    end
    object cdsTransportadoraCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object cdsTransportadoraUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsTransportadoraNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Size = 8
    end
    object cdsTransportadoraBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 10
    end
    object cdsTransportadoraCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsTransportadoraTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Size = 14
    end
    object cdsTransportadoraCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Size = 7
    end
    object cdsTransportadoraDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object cdsTransportadoraCIDADE_1: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE_1'
      ProviderFlags = []
      Size = 35
    end
    object cdsTransportadoraUF_1: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_1'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsTransportadora: TDataSource
    DataSet = cdsTransportadora
    Left = 612
    Top = 393
  end
  object sdsPesquisaCidade: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' M.codigo_munic,'#13#10' M.nome,'#13#10' M.uf,'#13#10' M.ddd'#13#10'FROM TB_MUNI' +
      'CIPIOS M'#13#10'WHERE'#13#10' M.uf = :UF'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    SQLConnection = conexao
    Left = 402
    Top = 8
    object sdsPesquisaCidadeCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object sdsPesquisaCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object sdsPesquisaCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsPesquisaCidadeDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
  end
  object dspPesquisaCidade: TDataSetProvider
    DataSet = sdsPesquisaCidade
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 432
    Top = 8
  end
  object cdsPesquisaCidade: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisaCidade'
    Left = 464
    Top = 8
    object cdsPesquisaCidadeCODIGO_MUNIC: TStringField
      DisplayLabel = 'C'#243'd.Cidade'
      FieldName = 'CODIGO_MUNIC'
      Required = True
      Size = 7
    end
    object cdsPesquisaCidadeNOME: TStringField
      DisplayLabel = 'Nome Cidade'
      FieldName = 'NOME'
      Size = 35
    end
    object cdsPesquisaCidadeUF: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'UF'
      Size = 2
    end
    object cdsPesquisaCidadeDDD: TStringField
      FieldName = 'DDD'
      Size = 2
    end
  end
  object dsPesquisaCidade: TDataSource
    DataSet = cdsPesquisaCidade
    Left = 494
    Top = 9
  end
  object qArtigo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' A.ID_ARTIGO,'
      ' A.NOME_ARTIGO,'
      ' A.COMPOSICAO,'
      ' A.LARGURA,'
      ' A.GRAMATURA,'
      ' A.TOTAL_PERC,'
      ' A.id_grupo_empresa,'
      ' A.TUBULAR,'
      ' A.FELPAR,'
      ' A.CORTA_AUREOLAS,'
      ' GE.nome_do_grupo,'
      ' ge.responsavel'
      'FROM TB_ARTIGO A'
      
        'LEFT OUTER JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = A.' +
        'id_grupo_empresa)')
    SQLConnection = conexao
    Left = 328
    Top = 512
    object qArtigoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
      Required = True
    end
    object qArtigoNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      Size = 30
    end
    object qArtigoCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      Size = 30
    end
    object qArtigoLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      Precision = 18
      Size = 3
    end
    object qArtigoGRAMATURA: TFMTBCDField
      FieldName = 'GRAMATURA'
      Precision = 18
      Size = 3
    end
    object qArtigoTOTAL_PERC: TFMTBCDField
      FieldName = 'TOTAL_PERC'
      Precision = 18
      Size = 1
    end
    object qArtigoID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object qArtigoNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object qArtigoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
    object qArtigoTUBULAR: TStringField
      FieldName = 'TUBULAR'
      Size = 1
    end
    object qArtigoFELPAR: TStringField
      FieldName = 'FELPAR'
      Size = 1
    end
    object qArtigoCORTA_AUREOLAS: TStringField
      FieldName = 'CORTA_AUREOLAS'
      Size = 1
    end
  end
  object dspArtigo: TDataSetProvider
    DataSet = qArtigo
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 360
    Top = 512
  end
  object cdsArtigo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArtigo'
    Left = 392
    Top = 512
    object cdsArtigoID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ARTIGO'
      Required = True
    end
    object cdsArtigoNOME_ARTIGO: TStringField
      DisplayLabel = 'Nome Artigo'
      FieldName = 'NOME_ARTIGO'
      Size = 30
    end
    object cdsArtigoCOMPOSICAO: TStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'COMPOSICAO'
      Size = 30
    end
    object cdsArtigoLARGURA: TFMTBCDField
      DisplayLabel = 'Largura'
      FieldName = 'LARGURA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsArtigoGRAMATURA: TFMTBCDField
      DisplayLabel = 'Gramatura'
      FieldName = 'GRAMATURA'
      Precision = 18
      Size = 3
    end
    object cdsArtigoTOTAL_PERC: TFMTBCDField
      DisplayLabel = '% Total'
      FieldName = 'TOTAL_PERC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 1
    end
    object cdsArtigoID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object cdsArtigoNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsArtigoTUBULAR: TStringField
      DisplayLabel = 'Tubular'
      FieldName = 'TUBULAR'
      Size = 1
    end
    object cdsArtigoCORTA_AUREOLAS: TStringField
      DisplayLabel = 'Corta Aureolas'
      FieldName = 'CORTA_AUREOLAS'
      Size = 1
    end
    object cdsArtigoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
    object cdsArtigoFELPAR: TStringField
      DisplayLabel = 'Felpar'
      FieldName = 'FELPAR'
      Size = 1
    end
  end
  object dsArtigo: TDataSource
    DataSet = cdsArtigo
    Left = 424
    Top = 512
  end
  object qMatPrima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' MP.ID_MATERIA,'
      ' MP.NOME_MATERIA,'
      ' MP.PERC_FIO,'
      ' MP.ELASTANO'
      'FROM TB_MATERIA_PRIMA MP')
    SQLConnection = conexao
    Left = 344
    Top = 560
    object qMatPrimaID_MATERIA: TIntegerField
      FieldName = 'ID_MATERIA'
      Required = True
    end
    object qMatPrimaNOME_MATERIA: TStringField
      FieldName = 'NOME_MATERIA'
      Size = 30
    end
    object qMatPrimaPERC_FIO: TFMTBCDField
      FieldName = 'PERC_FIO'
      Precision = 18
      Size = 4
    end
    object qMatPrimaELASTANO: TStringField
      FieldName = 'ELASTANO'
      Size = 1
    end
  end
  object dspMatPrima: TDataSetProvider
    DataSet = qMatPrima
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 560
  end
  object cdsMatPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMatPrima'
    Left = 408
    Top = 560
    object cdsMatPrimaID_MATERIA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_MATERIA'
      Required = True
    end
    object cdsMatPrimaNOME_MATERIA: TStringField
      DisplayLabel = 'Nome Mat'#233'ria'
      FieldName = 'NOME_MATERIA'
      Size = 30
    end
    object cdsMatPrimaPERC_FIO: TFMTBCDField
      DisplayLabel = '% Fio'
      FieldName = 'PERC_FIO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsMatPrimaELASTANO: TStringField
      DisplayLabel = 'Elastano'
      FieldName = 'ELASTANO'
      Size = 1
    end
  end
  object dsMatPrima: TDataSource
    DataSet = cdsMatPrima
    Left = 440
    Top = 560
  end
  object qItemProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUCAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IP.ID_ITEM_PRODUCAO,'
      ' IP.ID_PRODUCAO,'
      ' IP.ID_MATERIA_PRIMA,'
      ' IP.QUANT_FATURADO,'
      ' IP.VL_UNIT,'
      ' IP.VL_TOTAL,'
      ' IP.VL_UNIT_REAL,'
      ' IP.VL_TOTAL_REAL,'
      ' MP.NOME_MATERIA'
      'FROM TB_ITEM_PRODUCAO IP'
      
        'JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IP.ID_MATERIA_PRIMA' +
        ')'
      'WHERE IP.ID_PRODUCAO = :ID_PRODUCAO')
    SQLConnection = conexao
    Left = 32
    Top = 608
    object qItemProducaoID_ITEM_PRODUCAO: TIntegerField
      FieldName = 'ID_ITEM_PRODUCAO'
      Required = True
    end
    object qItemProducaoID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object qItemProducaoID_MATERIA_PRIMA: TIntegerField
      FieldName = 'ID_MATERIA_PRIMA'
    end
    object qItemProducaoNOME_MATERIA: TStringField
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object qItemProducaoQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 3
    end
    object qItemProducaoVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qItemProducaoVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qItemProducaoVL_UNIT_REAL: TFMTBCDField
      FieldName = 'VL_UNIT_REAL'
      Precision = 18
      Size = 2
    end
    object qItemProducaoVL_TOTAL_REAL: TFMTBCDField
      FieldName = 'VL_TOTAL_REAL'
      Precision = 18
      Size = 2
    end
  end
  object dspItemProducao: TDataSetProvider
    DataSet = qItemProducao
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 64
    Top = 608
  end
  object cdsItemProducao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRODUCAO'
    MasterFields = 'ID_PRODUCAO'
    MasterSource = dsProducao
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUCAO'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemProducao'
    Left = 96
    Top = 608
    object cdsItemProducaoID_ITEM_PRODUCAO: TIntegerField
      FieldName = 'ID_ITEM_PRODUCAO'
      Required = True
    end
    object cdsItemProducaoID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object cdsItemProducaoID_MATERIA_PRIMA: TIntegerField
      DisplayLabel = 'C'#243'd. Mat-Prima'
      FieldName = 'ID_MATERIA_PRIMA'
    end
    object cdsItemProducaoQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemProducaoNOME_MATERIA: TStringField
      DisplayLabel = 'Mat'#233'ria-Prima'
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemProducaoVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemProducaoVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemProducaoVL_UNIT_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Unit Real'
      FieldName = 'VL_UNIT_REAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsItemProducaoVL_TOTAL_REAL: TFMTBCDField
      DisplayLabel = 'Vl Total Real'
      FieldName = 'VL_TOTAL_REAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsItemProducao: TDataSource
    DataSet = cdsItemProducao
    Left = 128
    Top = 608
  end
  object qProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.ID_PRODUCAO,'
      ' P.ID_FORNCEDOR,'
      ' P.ID_CLIENTE,'
      ' P.DT_EMISSAO,'
      ' P.NR_NOTA_FISCAL,'
      ' P.QUANT,'
      ' P.STATUS,'
      ' P.VL_NOTA,'
      ' P.VL_POR_FORA,'
      ' P.VL_TOTAL, '
      ' P.ID_FORN_REM,'
      ' P.NR_NF_REMESSA,'
      ' P.VL_TOTAL_NF,'
      ' P.VL_ACUMULADO, '
      ' F.NOME AS FORNECEDOR,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' FF.NOME AS MALHARIA'
      'FROM TB_PRODUCAO P'
      'JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = P.ID_FORNCEDOR)'
      'JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = P.ID_FORN_REM)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = P.ID_CLIENTE)'
      'WHERE P.status='#39'A'#39)
    SQLConnection = conexao
    Left = 32
    Top = 560
    object qProducaoID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
      Required = True
    end
    object qProducaoID_FORNCEDOR: TIntegerField
      FieldName = 'ID_FORNCEDOR'
      Required = True
    end
    object qProducaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object qProducaoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qProducaoNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qProducaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qProducaoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qProducaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qProducaoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 4
    end
    object qProducaoVL_NOTA: TFMTBCDField
      FieldName = 'VL_NOTA'
      Precision = 18
      Size = 3
    end
    object qProducaoVL_POR_FORA: TFMTBCDField
      FieldName = 'VL_POR_FORA'
      Precision = 18
      Size = 3
    end
    object qProducaoVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 3
    end
    object qProducaoID_FORN_REM: TIntegerField
      FieldName = 'ID_FORN_REM'
      Required = True
    end
    object qProducaoNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object qProducaoMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qProducaoVL_TOTAL_NF: TFMTBCDField
      FieldName = 'VL_TOTAL_NF'
      Precision = 18
      Size = 3
    end
    object qProducaoVL_ACUMULADO: TFMTBCDField
      FieldName = 'VL_ACUMULADO'
      Precision = 18
      Size = 3
    end
  end
  object dspProducao: TDataSetProvider
    DataSet = qProducao
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 64
    Top = 560
  end
  object cdsProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProducao'
    Left = 96
    Top = 560
    object cdsProducaoID_PRODUCAO: TIntegerField
      DisplayLabel = 'N'#186' Controle'
      FieldName = 'ID_PRODUCAO'
      Required = True
    end
    object cdsProducaoID_FORNCEDOR: TIntegerField
      DisplayLabel = 'C'#243'd.Forn'
      FieldName = 'ID_FORNCEDOR'
      Required = True
    end
    object cdsProducaoID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object cdsProducaoDT_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      EditMask = '##/##/####'
    end
    object cdsProducaoNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsProducaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsProducaoFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsProducaoCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsProducaoQUANT: TFMTBCDField
      DisplayLabel = 'Quant NF'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.0000'
      EditFormat = '###,###0.0000'
      Precision = 18
      Size = 4
    end
    object cdsProducaoVL_NOTA: TFMTBCDField
      DisplayLabel = 'Vl. Nota'
      FieldName = 'VL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsProducaoVL_POR_FORA: TFMTBCDField
      DisplayLabel = 'Vl. Complementar'
      FieldName = 'VL_POR_FORA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsProducaoVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsProducaoID_FORN_REM: TIntegerField
      DisplayLabel = 'C'#243'd.Malharia'
      FieldName = 'ID_FORN_REM'
      Required = True
    end
    object cdsProducaoNR_NF_REMESSA: TIntegerField
      DisplayLabel = 'N'#186' NF Remessa'
      FieldName = 'NR_NF_REMESSA'
    end
    object cdsProducaoMALHARIA: TStringField
      DisplayLabel = 'Malharia'
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsProducaoVL_TOTAL_NF: TFMTBCDField
      DisplayLabel = 'Vl Total NF'
      FieldName = 'VL_TOTAL_NF'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsProducaoVL_ACUMULADO: TFMTBCDField
      DisplayLabel = 'Vl. Acumulado'
      FieldName = 'VL_ACUMULADO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
  end
  object dsProducao: TDataSource
    DataSet = cdsProducao
    Left = 128
    Top = 560
  end
  object qPrecoMalharia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' PM.ID_PRECO_MALHARIA,'
      ' PM.ID_CLIENTE,'
      ' PM.ID_MALHARIA,'
      ' PM.id_grupo_empresa,'
      ' C.R_SOCIAL,'
      ' C.CNPJ_CPF,'
      ' C.INSC_RG,'
      ' M.NOME AS CIDADE_CLI,'
      ' M.UF   AS UF_CLI,'
      ' F.NOME AS MALHARIA,'
      ' F.CNPJ,'
      ' F.INS_EST,'
      ' MM.NOME AS CIDADE_FORN,'
      ' MM.UF AS UF_FORN,'
      ' GE.nome_do_grupo,'
      ' GE.responsavel'
      'FROM TB_PRECO_MALHARIA PM'
      'LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = PM.ID_CLIENTE)'
      'JOIN  TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PM.ID_MALHARIA)'
      
        'LEFT OUTER JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MU' +
        'NIC)'
      'JOIN TB_MUNICIPIOS MM ON (MM.CODIGO_MUNIC = F.CODIGO_MUNIC)'
      
        'JOIN tb_grupo_empresa GE ON (GE.id_grupo_empresa = PM.id_grupo_e' +
        'mpresa)'
      'WHERE F.ID_CATEGORIA = 1')
    SQLConnection = conexao
    Left = 408
    Top = 616
    object qPrecoMalhariaID_PRECO_MALHARIA: TIntegerField
      FieldName = 'ID_PRECO_MALHARIA'
      Required = True
    end
    object qPrecoMalhariaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qPrecoMalhariaID_MALHARIA: TIntegerField
      FieldName = 'ID_MALHARIA'
    end
    object qPrecoMalhariaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qPrecoMalhariaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qPrecoMalhariaINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object qPrecoMalhariaCIDADE_CLI: TStringField
      FieldName = 'CIDADE_CLI'
      ProviderFlags = []
      Size = 35
    end
    object qPrecoMalhariaUF_CLI: TStringField
      FieldName = 'UF_CLI'
      ProviderFlags = []
      Size = 2
    end
    object qPrecoMalhariaMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qPrecoMalhariaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object qPrecoMalhariaINS_EST: TStringField
      FieldName = 'INS_EST'
      ProviderFlags = []
      Size = 14
    end
    object qPrecoMalhariaCIDADE_FORN: TStringField
      FieldName = 'CIDADE_FORN'
      ProviderFlags = []
      Size = 35
    end
    object qPrecoMalhariaUF_FORN: TStringField
      FieldName = 'UF_FORN'
      ProviderFlags = []
      Size = 2
    end
    object qPrecoMalhariaID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object qPrecoMalhariaNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object qPrecoMalhariaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspPrecoMalharia: TDataSetProvider
    DataSet = qPrecoMalharia
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 440
    Top = 616
  end
  object cdsPrecoMalharia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrecoMalharia'
    Left = 472
    Top = 616
    object cdsPrecoMalhariaID_PRECO_MALHARIA: TIntegerField
      FieldName = 'ID_PRECO_MALHARIA'
      Required = True
    end
    object cdsPrecoMalhariaID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cli'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPrecoMalhariaID_MALHARIA: TIntegerField
      DisplayLabel = 'C'#243'd. Malharia'
      FieldName = 'ID_MALHARIA'
    end
    object cdsPrecoMalhariaR_SOCIAL: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrecoMalhariaCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsPrecoMalhariaINSC_RG: TStringField
      DisplayLabel = 'Insc. Est'
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object cdsPrecoMalhariaCIDADE_CLI: TStringField
      DisplayLabel = 'Cidade '
      FieldName = 'CIDADE_CLI'
      ProviderFlags = []
      Size = 35
    end
    object cdsPrecoMalhariaUF_CLI: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UF_CLI'
      ProviderFlags = []
      Size = 2
    end
    object cdsPrecoMalhariaMALHARIA: TStringField
      DisplayLabel = 'Malharia'
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrecoMalhariaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsPrecoMalhariaINS_EST: TStringField
      DisplayLabel = 'Insc.Est'
      FieldName = 'INS_EST'
      ProviderFlags = []
      Size = 14
    end
    object cdsPrecoMalhariaCIDADE_FORN: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE_FORN'
      ProviderFlags = []
      Size = 35
    end
    object cdsPrecoMalhariaUF_FORN2: TStringField
      FieldName = 'UF_FORN'
      ProviderFlags = []
      Size = 2
    end
    object cdsPrecoMalhariaID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object cdsPrecoMalhariaNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrecoMalhariaRESPONSAVEL: TStringField
      DisplayLabel = 'Responsav'#233'l'
      FieldName = 'RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsPrecoMalharia: TDataSource
    DataSet = cdsPrecoMalharia
    Left = 504
    Top = 616
  end
  object qRemessaProducao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' RP.ID_REMESSA,'
      ' RP.ID_FOR_REMESSA,'
      ' RP.STATUS,'
      ' RP.QUANT_NF,'
      ' RP.QUANT_FATURADO,'
      ' RP.QUANT_SALDO,'
      ' RP.ID_CLIENTE,'
      ' RP.ID_FORNECEDOR,'
      ' RP.DT_EMISSAO,'
      ' RP.NR_NOTA_FISCAL,'
      ' RP.VL_NOTA,'
      ' RP.VL_POR_FORA,'
      ' RP.VL_TOTAL_NF,'
      ' RP.ID_FORN_TINT,'
      ' RP.NR_NF_REMESSA,'
      ' RP.TOTAL_ROLOS,'
      ' RP.NF_QUEBRA,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' F.NOME AS FORNECEDOR,'
      ' FF.NOME AS NOME_MALHARIA,'
      ' FT.NOME AS TITURARIA'
      'FROM TB_REMESSA_PRODUCAO RP'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FORN' +
        'ECEDOR)'
      'JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = RP.ID_FOR_REMESSA)'
      'JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = RP.ID_FORN_TINT)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)'
      'WHERE RP.NF_QUEBRA = '#39'N'#39
      'AND RP.status = '#39'A'#39)
    SQLConnection = conexao
    Left = 240
    Top = 618
    object qRemessaProducaoID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
      Required = True
    end
    object qRemessaProducaoID_FOR_REMESSA: TIntegerField
      FieldName = 'ID_FOR_REMESSA'
      Required = True
    end
    object qRemessaProducaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qRemessaProducaoQUANT_NF: TFMTBCDField
      FieldName = 'QUANT_NF'
      Precision = 18
      Size = 3
    end
    object qRemessaProducaoQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 3
    end
    object qRemessaProducaoQUANT_SALDO: TFMTBCDField
      FieldName = 'QUANT_SALDO'
      Precision = 18
      Size = 3
    end
    object qRemessaProducaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qRemessaProducaoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qRemessaProducaoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qRemessaProducaoNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qRemessaProducaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qRemessaProducaoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qRemessaProducaoNOME_MALHARIA: TStringField
      FieldName = 'NOME_MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qRemessaProducaoID_FORN_TINT: TIntegerField
      FieldName = 'ID_FORN_TINT'
      Required = True
    end
    object qRemessaProducaoNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object qRemessaProducaoTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
    object qRemessaProducaoTOTAL_ROLOS: TIntegerField
      FieldName = 'TOTAL_ROLOS'
    end
    object qRemessaProducaoNF_QUEBRA: TStringField
      FieldName = 'NF_QUEBRA'
      Size = 1
    end
    object qRemessaProducaoVL_NOTA: TFMTBCDField
      FieldName = 'VL_NOTA'
      Precision = 18
      Size = 2
    end
    object qRemessaProducaoVL_POR_FORA: TFMTBCDField
      FieldName = 'VL_POR_FORA'
      Precision = 18
      Size = 2
    end
    object qRemessaProducaoVL_TOTAL_NF: TFMTBCDField
      FieldName = 'VL_TOTAL_NF'
      Precision = 18
      Size = 2
    end
  end
  object dspRemessaProducao: TDataSetProvider
    DataSet = qRemessaProducao
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 272
    Top = 618
  end
  object cdsRemessaProducao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRemessaProducao'
    Left = 304
    Top = 618
    object cdsRemessaProducaoID_REMESSA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_REMESSA'
      Required = True
    end
    object cdsRemessaProducaoID_FOR_REMESSA: TIntegerField
      DisplayLabel = 'C'#243'd. For Rem'
      FieldName = 'ID_FOR_REMESSA'
      Required = True
    end
    object cdsRemessaProducaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsRemessaProducaoQUANT_NF: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT_NF'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsRemessaProducaoQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Quant. Fatu'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsRemessaProducaoQUANT_SALDO: TFMTBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'QUANT_SALDO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsRemessaProducaoID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cli'
      FieldName = 'ID_CLIENTE'
    end
    object cdsRemessaProducaoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. For'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsRemessaProducaoDT_EMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      EditMask = '##/##/####'
    end
    object cdsRemessaProducaoNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsRemessaProducaoCLIENTE: TStringField
      DisplayLabel = 'Nomde do Cliente'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsRemessaProducaoFORNECEDOR: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsRemessaProducaoNOME_MALHARIA: TStringField
      DisplayLabel = 'Nomde da Malharia'
      FieldName = 'NOME_MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsRemessaProducaoID_FORN_TINT: TIntegerField
      FieldName = 'ID_FORN_TINT'
      Required = True
    end
    object cdsRemessaProducaoNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object cdsRemessaProducaoTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsRemessaProducaoTOTAL_ROLOS: TIntegerField
      DisplayLabel = 'Total Rolos'
      FieldName = 'TOTAL_ROLOS'
    end
    object cdsRemessaProducaoNF_QUEBRA: TStringField
      FieldName = 'NF_QUEBRA'
      Size = 1
    end
    object cdsRemessaProducaoVL_NOTA: TFMTBCDField
      DisplayLabel = 'Vl. Nota'
      FieldName = 'VL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsRemessaProducaoVL_POR_FORA: TFMTBCDField
      DisplayLabel = 'Vl. Por Fora'
      FieldName = 'VL_POR_FORA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsRemessaProducaoVL_TOTAL_NF: TFMTBCDField
      DisplayLabel = 'Vl Total NF'
      FieldName = 'VL_TOTAL_NF'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsRemessaProducao: TDataSource
    DataSet = cdsRemessaProducao
    Left = 336
    Top = 618
  end
  object qItemRemessa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_REMESSA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IR.ID_ITEM_REMESSA,'
      ' IR.ID_REMESSA,'
      ' IR.ID_ARTIGO,'
      ' IR.QUANT_FATURADO,'
      ' IR.VL_UNIT,'
      ' IR.VL_TOTAL,'
      ' IR.ID_CLIENTE,'
      ' IR.ID_FORNECEDOR,'
      ' IR.ID_MATERIA,'
      ' IR.ID_FORN_MALHARIA,'
      ' IR.NR_NOTA_FISCAL,'
      ' IR.NR_NF_REMESSA,'
      ' IR.ID_PRODUCAO,'
      ' IR.VL_UNIT_REAL,'
      ' IR.VL_TOTAL_REAL,'
      ' IR.QT_ROLOS,'
      ' A.NOME_ARTIGO,'
      ' C.R_SOCIAL,'
      ' F.NOME AS FORNECEDOR,'
      ' M.NOME AS MALHARIA,'
      ' MP.NOME_MATERIA'
      'FROM TB_ITEM_REMESSA_PRODUCAO IR'
      'LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)'
      'LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = IR.ID_FORN' +
        'ECEDOR)'
      
        'LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN' +
        '_MALHARIA)'
      
        'LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MA' +
        'TERIA)'
      'WHERE IR.ID_REMESSA = :ID_REMESSA')
    SQLConnection = conexao
    Left = 240
    Top = 664
    object qItemRemessaID_ITEM_REMESSA: TIntegerField
      FieldName = 'ID_ITEM_REMESSA'
      Required = True
    end
    object qItemRemessaID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
    end
    object qItemRemessaID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qItemRemessaQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 4
    end
    object qItemRemessaVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 3
    end
    object qItemRemessaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 3
    end
    object qItemRemessaNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qItemRemessaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qItemRemessaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qItemRemessaID_MATERIA: TIntegerField
      FieldName = 'ID_MATERIA'
    end
    object qItemRemessaID_FORN_MALHARIA: TIntegerField
      FieldName = 'ID_FORN_MALHARIA'
    end
    object qItemRemessaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qItemRemessaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qItemRemessaMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qItemRemessaNOME_MATERIA: TStringField
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object qItemRemessaNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qItemRemessaNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object qItemRemessaID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object qItemRemessaVL_UNIT_REAL: TFMTBCDField
      FieldName = 'VL_UNIT_REAL'
      Precision = 18
      Size = 3
    end
    object qItemRemessaVL_TOTAL_REAL: TFMTBCDField
      FieldName = 'VL_TOTAL_REAL'
      Precision = 18
      Size = 3
    end
    object qItemRemessaQT_ROLOS: TIntegerField
      FieldName = 'QT_ROLOS'
    end
  end
  object dspItemRemessa: TDataSetProvider
    DataSet = qItemRemessa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 272
    Top = 664
  end
  object cdsItemRemessa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_REMESSA'
    MasterFields = 'ID_REMESSA'
    MasterSource = dsRemessaProducao
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_REMESSA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemRemessa'
    Left = 304
    Top = 664
    object cdsItemRemessaID_ITEM_REMESSA: TIntegerField
      FieldName = 'ID_ITEM_REMESSA'
      Required = True
    end
    object cdsItemRemessaID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
    end
    object cdsItemRemessaID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Artigo'
      FieldName = 'ID_ARTIGO'
    end
    object cdsItemRemessaQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Quant Fat'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsItemRemessaVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl.Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemRemessaVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl.Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemRemessaNOME_ARTIGO: TStringField
      DisplayLabel = 'Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemRemessaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsItemRemessaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsItemRemessaID_MATERIA: TIntegerField
      DisplayLabel = 'C'#243'digo Mat'#233'ria'
      FieldName = 'ID_MATERIA'
    end
    object cdsItemRemessaID_FORN_MALHARIA: TIntegerField
      FieldName = 'ID_FORN_MALHARIA'
    end
    object cdsItemRemessaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemRemessaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemRemessaMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemRemessaNOME_MATERIA: TStringField
      DisplayLabel = 'Nome Mat'#233'ria'
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemRemessaNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsItemRemessaNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object cdsItemRemessaID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object cdsItemRemessaVL_UNIT_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Unit Real'
      FieldName = 'VL_UNIT_REAL'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemRemessaVL_TOTAL_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Total Real'
      FieldName = 'VL_TOTAL_REAL'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemRemessaQT_ROLOS: TIntegerField
      DisplayLabel = 'Qt.Rolos'
      FieldName = 'QT_ROLOS'
    end
  end
  object dsItemRemessa: TDataSource
    DataSet = cdsItemRemessa
    Left = 336
    Top = 664
  end
  object qMateriaPrimaArtigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ARTIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' MA.ID_MATERIA_ARTIGO,'
      ' MA.ID_ARTIGO,'
      ' MA.ID_MATERIA_PRIMA,'
      ' MA.PERC_FIO,'
      ' A.NOME_ARTIGO,'
      ' MP.NOME_MATERIA'
      'FROM TB_MATERIA_PRIMA_ARTIGO MA'
      'JOIN TB_ARTIGO A ON (A.ID_ARTIGO = MA.ID_ARTIGO)'
      
        'JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = MA.ID_MATERIA_PRIMA' +
        ')'
      'WHERE MA.ID_ARTIGO = :ID_ARTIGO'
      'ORDER BY MA.ID_MATERIA_ARTIGO')
    SQLConnection = conexao
    Left = 16
    Top = 712
    object qMateriaPrimaArtigoID_MATERIA_ARTIGO: TIntegerField
      FieldName = 'ID_MATERIA_ARTIGO'
      Required = True
    end
    object qMateriaPrimaArtigoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
      Required = True
    end
    object qMateriaPrimaArtigoID_MATERIA_PRIMA: TIntegerField
      FieldName = 'ID_MATERIA_PRIMA'
      Required = True
    end
    object qMateriaPrimaArtigoNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qMateriaPrimaArtigoNOME_MATERIA: TStringField
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object qMateriaPrimaArtigoPERC_FIO: TFMTBCDField
      FieldName = 'PERC_FIO'
      Precision = 18
      Size = 3
    end
  end
  object dspMateriaPrimaArtigo: TDataSetProvider
    DataSet = qMateriaPrimaArtigo
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 48
    Top = 712
  end
  object cdsMateriaPrimaArtigo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ARTIGO'
    MasterFields = 'ID_ARTIGO'
    MasterSource = dsArtigo
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ARTIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspMateriaPrimaArtigo'
    Left = 80
    Top = 712
    object cdsMateriaPrimaArtigoID_MATERIA_ARTIGO: TIntegerField
      FieldName = 'ID_MATERIA_ARTIGO'
      Required = True
    end
    object cdsMateriaPrimaArtigoID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Artigo'
      FieldName = 'ID_ARTIGO'
      Required = True
    end
    object cdsMateriaPrimaArtigoID_MATERIA_PRIMA: TIntegerField
      DisplayLabel = 'C'#243'd.Mat'#233'ria'
      FieldName = 'ID_MATERIA_PRIMA'
      Required = True
    end
    object cdsMateriaPrimaArtigoNOME_ARTIGO: TStringField
      DisplayLabel = 'Nome Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsMateriaPrimaArtigoNOME_MATERIA: TStringField
      DisplayLabel = 'Mat'#233'ria-Prima'
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsMateriaPrimaArtigoPERC_FIO: TFMTBCDField
      DisplayLabel = '% Fio'
      FieldName = 'PERC_FIO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
  end
  object dsMateriaPrimaArtigo: TDataSource
    DataSet = cdsMateriaPrimaArtigo
    Left = 112
    Top = 712
  end
  object qItemPreco: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IP.ID_ITEM_PRECO,'
      ' IP.ID_PRECO_MALHARIA,'
      ' IP.ID_ARTIGO,'
      ' IP.VL_ARTIGO,'
      ' A.NOME_ARTIGO,'
      ' A.LARGURA'
      'FROM TB_ITEM_PRECO_MALHARIA IP'
      'JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IP.ID_ARTIGO)'
      
        'LEFT OUTER JOIN TB_PRECO_MALHARIA P ON (P.ID_PRECO_MALHARIA = IP' +
        '.ID_ITEM_PRECO)'
      'WHERE IP.ID_PRECO_MALHARIA = :ID_PRECO')
    SQLConnection = conexao
    Left = 408
    Top = 664
    object qItemPrecoID_ITEM_PRECO: TIntegerField
      FieldName = 'ID_ITEM_PRECO'
      Required = True
    end
    object qItemPrecoID_PRECO_MALHARIA: TIntegerField
      FieldName = 'ID_PRECO_MALHARIA'
    end
    object qItemPrecoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qItemPrecoVL_ARTIGO: TFMTBCDField
      FieldName = 'VL_ARTIGO'
      Precision = 18
      Size = 3
    end
    object qItemPrecoNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qItemPrecoLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object dspItemPreco: TDataSetProvider
    DataSet = qItemPreco
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 440
    Top = 664
  end
  object cdsItemPreco: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRECO_MALHARIA'
    MasterFields = 'ID_PRECO_MALHARIA'
    MasterSource = dsPrecoMalharia
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemPreco'
    Left = 472
    Top = 664
    object cdsItemPrecoID_ITEM_PRECO: TIntegerField
      FieldName = 'ID_ITEM_PRECO'
      Required = True
    end
    object cdsItemPrecoID_PRECO_MALHARIA: TIntegerField
      FieldName = 'ID_PRECO_MALHARIA'
    end
    object cdsItemPrecoID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ARTIGO'
    end
    object cdsItemPrecoVL_ARTIGO: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VL_ARTIGO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemPrecoNOME_ARTIGO: TStringField
      DisplayLabel = 'Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemPrecoLARGURA: TFMTBCDField
      DisplayLabel = 'Largura'
      FieldName = 'LARGURA'
      ProviderFlags = []
      DisplayFormat = '###0.00'
      EditFormat = '###0.00'
      Precision = 18
      Size = 3
    end
  end
  object dsItemPreco: TDataSource
    DataSet = cdsItemPreco
    Left = 504
    Top = 664
  end
  object dsGrupoEmpresa: TDataSource
    DataSet = cdsGrupoEmpresa
    Left = 408
    Top = 720
  end
  object cdsGrupoEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGrupoEmpresa'
    Left = 376
    Top = 720
    object cdsGrupoEmpresaID_GRUPO_EMPRESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_GRUPO_EMPRESA'
      Required = True
    end
    object cdsGrupoEmpresaDT_CADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DT_CADASTRO'
      EditMask = '##/##/####'
    end
    object cdsGrupoEmpresaNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'NOME_DO_GRUPO'
      Size = 50
    end
    object cdsGrupoEmpresaRESPONSAVEL: TStringField
      DisplayLabel = 'Responsav'#233'l'
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object cdsGrupoEmpresaEMAIL: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'EMAIL'
      Size = 50
    end
    object cdsGrupoEmpresaFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      EditMask = '## #####-####'
      Size = 13
    end
  end
  object dspGrupoEmpresa: TDataSetProvider
    DataSet = qGrupoEmpresa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 344
    Top = 720
  end
  object qGrupoEmpresa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' GP.id_grupo_empresa,'
      ' GP.dt_cadastro,'
      ' GP.nome_do_grupo,'
      ' GP.responsavel,'
      ' GP.email,'
      ' GP.fone'
      'FROM tb_grupo_empresa GP')
    SQLConnection = conexao
    Left = 312
    Top = 720
    object qGrupoEmpresaID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
      Required = True
    end
    object qGrupoEmpresaDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
    end
    object qGrupoEmpresaNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      Size = 50
    end
    object qGrupoEmpresaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object qGrupoEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qGrupoEmpresaFONE: TStringField
      FieldName = 'FONE'
      Size = 13
    end
  end
  object dsCores: TDataSource
    DataSet = cdsCores
    Left = 662
    Top = 572
  end
  object cdsCores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCores'
    Left = 630
    Top = 572
    object cdsCoresID_CORES: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID_CORES'
      Required = True
    end
    object cdsCoresCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object cdsCoresDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsCoresID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsCoresTINTURARIAA: TStringField
      DisplayLabel = 'Tinturaria'
      FieldName = 'TINTURARIAA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspCores: TDataSetProvider
    DataSet = qCores
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 598
    Top = 572
  end
  object qCores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' C.ID_CORES,'
      ' C.ID_FORNECEDOR,'
      ' C.CODIGO,'
      ' C.DESCRICAO,'
      ' F.NOME AS TINTURARIAA'
      'FROM TB_CORES C'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = C.ID_FORNE' +
        'CEDOR)')
    SQLConnection = conexao
    Left = 566
    Top = 572
    object qCoresID_CORES: TIntegerField
      FieldName = 'ID_CORES'
      Required = True
    end
    object qCoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qCoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qCoresID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qCoresTINTURARIAA: TStringField
      FieldName = 'TINTURARIAA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsPrecoTinturaria: TDataSource
    DataSet = cdsPrecoTinturaria
    Left = 664
    Top = 624
  end
  object cdsPrecoTinturaria: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrecoTinturaria'
    Left = 632
    Top = 624
    object cdsPrecoTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
      Required = True
    end
    object cdsPrecoTinturariaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPrecoTinturariaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsPrecoTinturariaR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrecoTinturariaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsPrecoTinturariaTEL_CLI: TStringField
      FieldName = 'TEL_CLI'
      ProviderFlags = []
      Size = 14
    end
    object cdsPrecoTinturariaFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrecoTinturariaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object cdsPrecoTinturariaTEL_FOR: TStringField
      FieldName = 'TEL_FOR'
      ProviderFlags = []
      Size = 14
    end
    object cdsPrecoTinturariaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsPrecoTinturariaID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object cdsPrecoTinturariaNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrecoTinturariaRESPONSAVEL: TStringField
      DisplayLabel = 'Responsav'#233'l'
      FieldName = 'RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspPrecoTinturaria: TDataSetProvider
    DataSet = qPrecoTinturaria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 624
  end
  object qPrecoTinturaria: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' PT.ID_PRECO_TINTURARIA,'
      ' PT.ID_CLIENTE,'
      ' PT.ID_FORNECEDOR,'
      ' PT.DESCRICAO,'
      ' PT.id_grupo_empresa,'
      ' C.R_SOCIAL,'
      ' C.CNPJ_CPF,'
      ' C.TELEFONE AS TEL_CLI,'
      ' F.NOME AS FORNECEDOR,'
      ' F.CNPJ,'
      ' F.TELFONE AS TEL_FOR,'
      ' GE.nome_do_grupo,'
      ' GE.responsavel'
      'FROM TB_PRECO_TINTURARIA PT'
      'LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = PT.ID_CLIENTE)'
      'JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = PT.ID_FORNECEDOR)'
      
        'LEFT OUTER JOIN tb_grupo_empresa ge ON (GE.id_grupo_empresa = PT' +
        '.id_grupo_empresa)')
    SQLConnection = conexao
    Left = 568
    Top = 624
    object qPrecoTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
      Required = True
    end
    object qPrecoTinturariaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qPrecoTinturariaID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qPrecoTinturariaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qPrecoTinturariaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qPrecoTinturariaTEL_CLI: TStringField
      FieldName = 'TEL_CLI'
      ProviderFlags = []
      Size = 14
    end
    object qPrecoTinturariaFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qPrecoTinturariaCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = []
      Size = 18
    end
    object qPrecoTinturariaTEL_FOR: TStringField
      FieldName = 'TEL_FOR'
      ProviderFlags = []
      Size = 14
    end
    object qPrecoTinturariaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qPrecoTinturariaID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object qPrecoTinturariaNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object qPrecoTinturariaRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsArtigoTinturaria: TDataSource
    DataSet = cdsArtigoTinturaria
    Left = 664
    Top = 671
  end
  object cdsArtigoTinturaria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRECO_TINTURARIA'
    MasterFields = 'ID_PRECO_TINTURARIA'
    MasterSource = dsPrecoTinturaria
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO_TINTURARIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspArtigoTinturaria'
    Left = 632
    Top = 671
    object cdsArtigoTinturariaID_ARTIGO_TINTURARIA: TIntegerField
      FieldName = 'ID_ARTIGO_TINTURARIA'
      Required = True
    end
    object cdsArtigoTinturariaID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Artigo'
      FieldName = 'ID_ARTIGO'
    end
    object cdsArtigoTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
    end
    object cdsArtigoTinturariaNOME_ARTIGO: TStringField
      DisplayLabel = 'Descri'#231#227'o Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsArtigoTinturariaCOMPOSICAO: TStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'COMPOSICAO'
      ProviderFlags = []
      Size = 30
    end
    object cdsArtigoTinturariaLARGURA: TFMTBCDField
      DisplayLabel = 'Largura'
      FieldName = 'LARGURA'
      ProviderFlags = []
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsArtigoTinturariaGRAMATURA: TFMTBCDField
      DisplayLabel = 'Gramatura'
      FieldName = 'GRAMATURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object dspArtigoTinturaria: TDataSetProvider
    DataSet = qArtigoTinturaria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 671
  end
  object qArtigoTinturaria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO_TINTURARIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' AC.ID_ARTIGO_TINTURARIA,'
      ' AC.ID_ARTIGO,'
      ' AC.ID_PRECO_TINTURARIA,'
      ' A.NOME_ARTIGO,'
      ' A.COMPOSICAO,'
      ' A.LARGURA,'
      ' A.GRAMATURA'
      'FROM TB_ARTIGO_TINTURARIA AC'
      'JOIN TB_ARTIGO A ON (A.ID_ARTIGO = AC.ID_ARTIGO)'
      'WHERE AC.ID_PRECO_TINTURARIA = :ID_PRECO_TINTURARIA')
    SQLConnection = conexao
    Left = 568
    Top = 671
    object qArtigoTinturariaID_ARTIGO_TINTURARIA: TIntegerField
      FieldName = 'ID_ARTIGO_TINTURARIA'
      Required = True
    end
    object qArtigoTinturariaID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qArtigoTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
    end
    object qArtigoTinturariaNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qArtigoTinturariaCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      ProviderFlags = []
      Size = 30
    end
    object qArtigoTinturariaLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qArtigoTinturariaGRAMATURA: TFMTBCDField
      FieldName = 'GRAMATURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
  end
  object dsCoresTinturaria: TDataSource
    DataSet = cdsCoresTinturaria
    Left = 664
    Top = 711
  end
  object cdsCoresTinturaria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRECO_TINTURARIA'
    MasterFields = 'ID_PRECO_TINTURARIA'
    MasterSource = dsArtigoTinturaria
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO_TINTURARIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCoresTinturaria'
    Left = 632
    Top = 711
    object cdsCoresTinturariaID_CORES_TINTURARIA: TIntegerField
      FieldName = 'ID_CORES_TINTURARIA'
      Required = True
    end
    object cdsCoresTinturariaID_CORES: TIntegerField
      FieldName = 'ID_CORES'
    end
    object cdsCoresTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
    end
    object cdsCoresTinturariaID_ARTIGO_TINTURARIA: TIntegerField
      FieldName = 'ID_ARTIGO_TINTURARIA'
    end
    object cdsCoresTinturariaID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object cdsCoresTinturariaVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsCoresTinturariaNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsCoresTinturariaCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      ProviderFlags = []
      Size = 30
    end
    object cdsCoresTinturariaLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cdsCoresTinturariaGRAMATURA: TFMTBCDField
      FieldName = 'GRAMATURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object cdsCoresTinturariaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object cdsCoresTinturariaCOR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspCoresTinturaria: TDataSetProvider
    DataSet = qCoresTinturaria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 600
    Top = 711
  end
  object qCoresTinturaria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO_TINTURARIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' CT.ID_CORES_TINTURARIA,'
      ' CT.ID_CORES,'
      ' CT.ID_PRECO_TINTURARIA,'
      ' CT.ID_ARTIGO_TINTURARIA,'
      ' CT.ID_ARTIGO,'
      ' CT.VALOR,'
      ' A.NOME_ARTIGO,'
      ' A.COMPOSICAO,'
      ' A.LARGURA,'
      ' A.GRAMATURA,'
      ' CR.CODIGO,'
      ' CR.DESCRICAO AS COR'
      'FROM TB_CORES_TINTURARIA CT'
      'JOIN TB_CORES CR ON (CR.ID_CORES = CT.ID_CORES)'
      'JOIN TB_ARTIGO A ON (A.ID_ARTIGO = CT.ID_ARTIGO)'
      'WHERE CT.ID_PRECO_TINTURARIA = :ID_PRECO_TINTURARIA')
    SQLConnection = conexao
    Left = 568
    Top = 711
    object qCoresTinturariaID_CORES_TINTURARIA: TIntegerField
      FieldName = 'ID_CORES_TINTURARIA'
      Required = True
    end
    object qCoresTinturariaID_CORES: TIntegerField
      FieldName = 'ID_CORES'
    end
    object qCoresTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
    end
    object qCoresTinturariaID_ARTIGO_TINTURARIA: TIntegerField
      FieldName = 'ID_ARTIGO_TINTURARIA'
    end
    object qCoresTinturariaID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qCoresTinturariaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object qCoresTinturariaNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qCoresTinturariaCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      ProviderFlags = []
      Size = 30
    end
    object qCoresTinturariaLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qCoresTinturariaGRAMATURA: TFMTBCDField
      FieldName = 'GRAMATURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qCoresTinturariaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object qCoresTinturariaCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsAcabamento: TDataSource
    DataSet = cdsAcabamento
    Left = 408
    Top = 775
  end
  object cdsAcabamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAcabamento'
    Left = 376
    Top = 775
    object cdsAcabamentoID_ACABAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ACABAMENTO'
      Required = True
    end
    object cdsAcabamentoNOME_ACABAMENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME_ACABAMENTO'
      Size = 50
    end
  end
  object dspAcabamento: TDataSetProvider
    DataSet = qAcabamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 344
    Top = 775
  end
  object qAcabamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' A.ID_ACABAMENTO,'
      ' A.NOME_ACABAMENTO'
      'FROM TB_ACABAMENTO A')
    SQLConnection = conexao
    Left = 312
    Top = 775
    object qAcabamentoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
      Required = True
    end
    object qAcabamentoNOME_ACABAMENTO: TStringField
      FieldName = 'NOME_ACABAMENTO'
      Size = 50
    end
  end
  object dsTingimento: TDataSource
    DataSet = cdsTingimento
    Left = 368
    Top = 823
  end
  object cdsTingimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTingimento'
    Left = 336
    Top = 823
    object cdsTingimentoID_TINGIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd.Ting'
      FieldName = 'ID_TINGIMENTO'
      Required = True
    end
    object cdsTingimentoID_FOR_TINGIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd.For Ting'
      FieldName = 'ID_FOR_TINGIMENTO'
      Required = True
    end
    object cdsTingimentoSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsTingimentoQUANT_NF: TFMTBCDField
      DisplayLabel = 'Quant NF'
      FieldName = 'QUANT_NF'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsTingimentoQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Quant Fat'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsTingimentoQUANT_SALDO: TFMTBCDField
      DisplayLabel = 'Qtd Saldo'
      FieldName = 'QUANT_SALDO'
      Precision = 18
      Size = 3
    end
    object cdsTingimentoID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsTingimentoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsTingimentoDT_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      EditMask = '##/##/####'
    end
    object cdsTingimentoNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsTingimentoVL_NOTA: TFMTBCDField
      DisplayLabel = 'Valor Nota'
      FieldName = 'VL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsTingimentoVL_POR_FORA: TFMTBCDField
      DisplayLabel = 'Vl Por Fora'
      FieldName = 'VL_POR_FORA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsTingimentoVL_TOTAL_NF: TFMTBCDField
      DisplayLabel = 'Vl Total NF'
      FieldName = 'VL_TOTAL_NF'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsTingimentoID_FORN_TINT: TIntegerField
      FieldName = 'ID_FORN_TINT'
      Required = True
    end
    object cdsTingimentoNR_NF_TINGIMENTO: TIntegerField
      DisplayLabel = 'N'#186' NF Ting'
      FieldName = 'NR_NF_TINGIMENTO'
    end
    object cdsTingimentoTOTAL_ROLOS: TIntegerField
      DisplayLabel = 'Total Rolos'
      FieldName = 'TOTAL_ROLOS'
    end
    object cdsTingimentoCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoNOME_MALHARIA: TStringField
      DisplayLabel = 'Tinturaria'
      FieldName = 'NOME_MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoTITURARIA: TStringField
      DisplayLabel = 'Tinturaria_Del'
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
      ProviderFlags = []
    end
    object cdsTingimentoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsTingimentoINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object cdsTingimentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsTingimentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsTingimentoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 14
    end
    object cdsTingimentoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsTingimentoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object cdsTingimentoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object cdsTingimentoQT_PROGRAMADO: TIntegerField
      FieldName = 'QT_PROGRAMADO'
    end
    object cdsTingimentoQT_SALDO_PROGRAMAR: TIntegerField
      FieldName = 'QT_SALDO_PROGRAMAR'
    end
    object cdsTingimentoEND_TINT: TStringField
      FieldName = 'END_TINT'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoNUMERO_TINT: TStringField
      FieldName = 'NUMERO_TINT'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsTingimentoCOMP_TINT: TStringField
      FieldName = 'COMP_TINT'
      ProviderFlags = []
      Size = 50
    end
    object cdsTingimentoBAIRRO_TINT: TStringField
      FieldName = 'BAIRRO_TINT'
      ProviderFlags = []
      Size = 40
    end
    object cdsTingimentoCEP_TINT: TStringField
      FieldName = 'CEP_TINT'
      ProviderFlags = []
      Size = 10
    end
    object cdsTingimentoCNPJ_TINT: TStringField
      FieldName = 'CNPJ_TINT'
      ProviderFlags = []
      Size = 18
    end
    object cdsTingimentoINSC_TINT: TStringField
      FieldName = 'INSC_TINT'
      ProviderFlags = []
      Size = 14
    end
    object cdsTingimentoCIDADE_TINT: TStringField
      FieldName = 'CIDADE_TINT'
      ProviderFlags = []
      Size = 35
    end
    object cdsTingimentoUF_TINT: TStringField
      FieldName = 'UF_TINT'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspTingimento: TDataSetProvider
    DataSet = qTingimento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 823
  end
  object qTingimento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' RP.ID_TINGIMENTO,'
      ' RP.ID_FOR_TINGIMENTO,'
      ' RP.STATUS,'
      ' RP.QUANT_NF,'
      ' RP.QUANT_FATURADO,'
      ' RP.QUANT_SALDO,'
      ' RP.ID_CLIENTE,'
      ' RP.ID_FORNECEDOR,'
      ' RP.DT_EMISSAO,'
      ' RP.NR_NOTA_FISCAL,'
      ' RP.VL_NOTA,'
      ' RP.VL_POR_FORA,'
      ' RP.VL_TOTAL_NF,'
      ' RP.ID_FORN_TINT,'
      ' RP.NR_NF_TINGIMENTO,'
      ' RP.TOTAL_ROLOS,'
      ' RP.QT_PROGRAMADO,'
      ' RP.QT_SALDO_PROGRAMAR,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' C.ID_GRUPO_EMPRESA,'
      ' C.CNPJ_CPF,'
      ' C.INSC_RG,'
      ' C.ENDERECO,'
      ' C.COMPLEMENTO,'
      ' C.NUMERO,'
      ' C.BAIRRO,'
      ' C.TELEFONE,'
      ' M.NOME AS CIDADE,'
      ' M.UF,'
      ' M.DDD,'
      ' F.NOME AS FORNECEDOR,'
      ' FF.NOME AS NOME_MALHARIA,'
      ' FT.NOME AS TITURARIA,'
      ' FT.ENDERECO AS END_TINT,'
      ' FT.NUMERO AS NUMERO_TINT,'
      ' FT.COMPLEMENTO AS COMP_TINT,'
      ' FT.BAIRRO     AS BAIRRO_TINT,'
      ' FT.CEP        AS CEP_TINT,'
      ' FT.CNPJ       AS CNPJ_TINT,'
      ' FT.INS_EST    AS INSC_TINT,'
      ' MT.NOME       AS CIDADE_TINT,'
      ' MT.UF         AS UF_TINT'
      ''
      'FROM TB_TINGIMENTO RP'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FORN' +
        'ECEDOR)'
      
        'JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = RP.ID_FOR_TINGIMENT' +
        'O)'
      'JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = RP.ID_FORN_TINT)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)'
      'JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MUNIC)'
      'JOIN TB_MUNICIPIOS MT ON (MT.CODIGO_MUNIC = FT.CODIGO_MUNIC)'
      'WHERE RP.status ='#39'A'#39)
    SQLConnection = conexao
    Left = 272
    Top = 823
    object qTingimentoID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
      Required = True
    end
    object qTingimentoID_FOR_TINGIMENTO: TIntegerField
      FieldName = 'ID_FOR_TINGIMENTO'
      Required = True
    end
    object qTingimentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qTingimentoQUANT_NF: TFMTBCDField
      FieldName = 'QUANT_NF'
      Precision = 18
      Size = 3
    end
    object qTingimentoQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 3
    end
    object qTingimentoQUANT_SALDO: TFMTBCDField
      FieldName = 'QUANT_SALDO'
      Precision = 18
      Size = 3
    end
    object qTingimentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qTingimentoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qTingimentoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qTingimentoNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qTingimentoVL_NOTA: TFMTBCDField
      FieldName = 'VL_NOTA'
      Precision = 18
      Size = 3
    end
    object qTingimentoVL_POR_FORA: TFMTBCDField
      FieldName = 'VL_POR_FORA'
      Precision = 18
      Size = 3
    end
    object qTingimentoVL_TOTAL_NF: TFMTBCDField
      FieldName = 'VL_TOTAL_NF'
      Precision = 18
      Size = 3
    end
    object qTingimentoID_FORN_TINT: TIntegerField
      FieldName = 'ID_FORN_TINT'
      Required = True
    end
    object qTingimentoNR_NF_TINGIMENTO: TIntegerField
      FieldName = 'NR_NF_TINGIMENTO'
    end
    object qTingimentoTOTAL_ROLOS: TIntegerField
      FieldName = 'TOTAL_ROLOS'
    end
    object qTingimentoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoNOME_MALHARIA: TStringField
      FieldName = 'NOME_MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
      ProviderFlags = []
    end
    object qTingimentoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qTingimentoINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object qTingimentoENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qTingimentoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qTingimentoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 14
    end
    object qTingimentoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qTingimentoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
    object qTingimentoDDD: TStringField
      FieldName = 'DDD'
      ProviderFlags = []
      Size = 2
    end
    object qTingimentoQT_PROGRAMADO: TIntegerField
      FieldName = 'QT_PROGRAMADO'
    end
    object qTingimentoQT_SALDO_PROGRAMAR: TIntegerField
      FieldName = 'QT_SALDO_PROGRAMAR'
    end
    object qTingimentoEND_TINT: TStringField
      FieldName = 'END_TINT'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoNUMERO_TINT: TStringField
      FieldName = 'NUMERO_TINT'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qTingimentoCOMP_TINT: TStringField
      FieldName = 'COMP_TINT'
      ProviderFlags = []
      Size = 50
    end
    object qTingimentoBAIRRO_TINT: TStringField
      FieldName = 'BAIRRO_TINT'
      ProviderFlags = []
      Size = 40
    end
    object qTingimentoCEP_TINT: TStringField
      FieldName = 'CEP_TINT'
      ProviderFlags = []
      Size = 10
    end
    object qTingimentoCNPJ_TINT: TStringField
      FieldName = 'CNPJ_TINT'
      ProviderFlags = []
      Size = 18
    end
    object qTingimentoINSC_TINT: TStringField
      FieldName = 'INSC_TINT'
      ProviderFlags = []
      Size = 14
    end
    object qTingimentoCIDADE_TINT: TStringField
      FieldName = 'CIDADE_TINT'
      ProviderFlags = []
      Size = 35
    end
    object qTingimentoUF_TINT: TStringField
      FieldName = 'UF_TINT'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsAcabamentoArtigo: TDataSource
    DataSet = cdsAcabamentoArtigo
    Left = 536
    Top = 775
  end
  object cdsAcabamentoArtigo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ARTIGO'
    MasterFields = 'ID_ARTIGO'
    MasterSource = dsArtigo
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ARTIGO'
        ParamType = ptInput
      end>
    ProviderName = 'dspAcabamentoArtigo'
    Left = 504
    Top = 775
    object cdsAcabamentoArtigoID_ACABAMENTO_ARTIGO: TIntegerField
      FieldName = 'ID_ACABAMENTO_ARTIGO'
      Required = True
    end
    object cdsAcabamentoArtigoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object cdsAcabamentoArtigoID_ACABAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ACABAMENTO'
    end
    object cdsAcabamentoArtigoNOME_ACABAMENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o Acabamento'
      FieldName = 'NOME_ACABAMENTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspAcabamentoArtigo: TDataSetProvider
    DataSet = qAcabamentoArtigo
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 775
  end
  object qAcabamentoArtigo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_ARTIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' AA.ID_ACABAMENTO_ARTIGO,'
      ' AA.ID_ARTIGO,'
      ' AA.ID_ACABAMENTO,'
      ' AC.NOME_ACABAMENTO'
      'FROM TB_ACABAMENTO_ARTIGO AA'
      'JOIN TB_ARTIGO A ON (A.ID_ARTIGO = AA.ID_ARTIGO)'
      'JOIN TB_ACABAMENTO AC ON (AC.ID_ACABAMENTO = AA.ID_ACABAMENTO)'
      'WHERE AA.ID_ARTIGO = :ID_ARTIGO'
      'ORDER BY AA.ID_ACABAMENTO_ARTIGO')
    SQLConnection = conexao
    Left = 440
    Top = 775
    object qAcabamentoArtigoID_ACABAMENTO_ARTIGO: TIntegerField
      FieldName = 'ID_ACABAMENTO_ARTIGO'
      Required = True
    end
    object qAcabamentoArtigoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qAcabamentoArtigoID_ACABAMENTO: TIntegerField
      FieldName = 'ID_ACABAMENTO'
    end
    object qAcabamentoArtigoNOME_ACABAMENTO: TStringField
      FieldName = 'NOME_ACABAMENTO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsPrgProgramacao: TDataSource
    DataSet = cdsPrgProgramacao
    Left = 112
    Top = 767
  end
  object cdsPrgProgramacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrgProgramacao'
    Left = 80
    Top = 767
    object cdsPrgProgramacaoID_PRG_TINTURARIA: TIntegerField
      FieldName = 'ID_PRG_TINTURARIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPrgProgramacaoID_FOR_TINTURARIA: TIntegerField
      FieldName = 'ID_FOR_TINTURARIA'
    end
    object cdsPrgProgramacaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPrgProgramacaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsPrgProgramacaoQT_ROLOS: TIntegerField
      FieldName = 'QT_ROLOS'
    end
    object cdsPrgProgramacaoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsPrgProgramacaoNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object cdsPrgProgramacaoNR_NOTA_REMESSA: TIntegerField
      FieldName = 'NR_NOTA_REMESSA'
    end
    object cdsPrgProgramacaoVL_NOTA: TFMTBCDField
      FieldName = 'VL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsPrgProgramacaoNR_NOTA_MALHARIA: TIntegerField
      FieldName = 'NR_NOTA_MALHARIA'
    end
    object cdsPrgProgramacaoID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
    end
    object cdsPrgProgramacaoID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object cdsPrgProgramacaoESTAMPADO: TStringField
      FieldName = 'ESTAMPADO'
      Size = 1
    end
    object cdsPrgProgramacaoTIPO_ESTAMPA: TStringField
      FieldName = 'TIPO_ESTAMPA'
      Size = 50
    end
    object cdsPrgProgramacaoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object cdsPrgProgramacaoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object cdsPrgProgramacaoQT_PRG_ROLOS: TIntegerField
      FieldName = 'QT_PRG_ROLOS'
    end
    object cdsPrgProgramacaoQT_PROGRAMADO: TIntegerField
      FieldName = 'QT_PROGRAMADO'
    end
    object cdsPrgProgramacaoQT_SALDO_PROGRAMAR: TIntegerField
      FieldName = 'QT_SALDO_PROGRAMAR'
    end
    object cdsPrgProgramacaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrgProgramacaoTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrgProgramacaoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsPrgProgramacaoNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 80
    end
    object cdsPrgProgramacaoCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      ProviderFlags = []
      Size = 7
    end
    object cdsPrgProgramacaoCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsPrgProgramacaoINSC_RG: TStringField
      DisplayLabel = 'INSC/RG'
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object cdsPrgProgramacaoENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrgProgramacaoCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsPrgProgramacaoNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object cdsPrgProgramacaoBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cdsPrgProgramacaoCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object cdsPrgProgramacaoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dspPrgProgramacao: TDataSetProvider
    DataSet = qPrgProgramacao
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 767
  end
  object qPrgProgramacao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' RP.ID_PRG_TINTURARIA,'
      ' RP.ID_FOR_TINTURARIA,'
      ' RP.ID_CLIENTE,'
      ' RP.STATUS,'
      ' RP.QT_ROLOS,'
      ' RP.DT_EMISSAO,'
      ' RP.NR_NOTA,'
      ' RP.NR_NOTA_REMESSA,'
      ' RP.VL_NOTA,'
      ' RP.NR_NOTA_MALHARIA,'
      ' RP.ID_REMESSA,'
      ' RP.ID_GRUPO_EMPRESA,'
      ' RP.ESTAMPADO,'
      ' RP.TIPO_ESTAMPA,'
      ' RP.OBS,'
      ' RP.ID_LOTE,'
      ' RP.QT_PRG_ROLOS,'
      ' RP.QT_PROGRAMADO,'
      ' RP.QT_SALDO_PROGRAMAR,'
      ' RP.ID_TRANSPORTADORA,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' C.CODIGO_MUNIC,'
      ' C.CNPJ_CPF,'
      ' C.INSC_RG,'
      ' C.ENDERECO,'
      ' C.COMPLEMENTO,'
      ' C.NUMERO,'
      ' C.BAIRRO,'
      ' M.NOME AS CIDADE,'
      ' M.UF,'
      ' F.NOME AS TITURARIA,'
      ' T.NOME_TRANSPORTADORA'
      'FROM TB_PRG_TINTURARIA RP'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FOR_' +
        'TINTURARIA)'
      
        'LEFT OUTER JOIN TB_TRANSPORTADORA T ON (T.ID_TRANSPORTADORA = RP' +
        '.ID_TRANSPORTADORA)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)'
      'JOIN TB_MUNICIPIOS M ON (M.CODIGO_MUNIC = C.CODIGO_MUNIC)'
      'WHERE RP.status ='#39'A'#39)
    SQLConnection = conexao
    Left = 16
    Top = 767
    object qPrgProgramacaoID_PRG_TINTURARIA: TIntegerField
      FieldName = 'ID_PRG_TINTURARIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPrgProgramacaoID_FOR_TINTURARIA: TIntegerField
      FieldName = 'ID_FOR_TINTURARIA'
    end
    object qPrgProgramacaoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qPrgProgramacaoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qPrgProgramacaoQT_ROLOS: TIntegerField
      FieldName = 'QT_ROLOS'
    end
    object qPrgProgramacaoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qPrgProgramacaoNR_NOTA: TIntegerField
      FieldName = 'NR_NOTA'
    end
    object qPrgProgramacaoNR_NOTA_REMESSA: TIntegerField
      FieldName = 'NR_NOTA_REMESSA'
    end
    object qPrgProgramacaoVL_NOTA: TFMTBCDField
      FieldName = 'VL_NOTA'
      Precision = 18
      Size = 3
    end
    object qPrgProgramacaoNR_NOTA_MALHARIA: TIntegerField
      FieldName = 'NR_NOTA_MALHARIA'
    end
    object qPrgProgramacaoID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
    end
    object qPrgProgramacaoID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object qPrgProgramacaoESTAMPADO: TStringField
      FieldName = 'ESTAMPADO'
      Size = 1
    end
    object qPrgProgramacaoTIPO_ESTAMPA: TStringField
      FieldName = 'TIPO_ESTAMPA'
      Size = 50
    end
    object qPrgProgramacaoOBS: TStringField
      FieldName = 'OBS'
      Size = 200
    end
    object qPrgProgramacaoID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object qPrgProgramacaoQT_PRG_ROLOS: TIntegerField
      FieldName = 'QT_PRG_ROLOS'
    end
    object qPrgProgramacaoQT_PROGRAMADO: TIntegerField
      FieldName = 'QT_PROGRAMADO'
    end
    object qPrgProgramacaoQT_SALDO_PROGRAMAR: TIntegerField
      FieldName = 'QT_SALDO_PROGRAMAR'
    end
    object qPrgProgramacaoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qPrgProgramacaoTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
    object qPrgProgramacaoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object qPrgProgramacaoNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 80
    end
    object qPrgProgramacaoCODIGO_MUNIC: TStringField
      FieldName = 'CODIGO_MUNIC'
      ProviderFlags = []
      Size = 7
    end
    object qPrgProgramacaoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qPrgProgramacaoINSC_RG: TStringField
      FieldName = 'INSC_RG'
      ProviderFlags = []
      Size = 14
    end
    object qPrgProgramacaoENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = []
      Size = 50
    end
    object qPrgProgramacaoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qPrgProgramacaoNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qPrgProgramacaoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qPrgProgramacaoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 35
    end
    object qPrgProgramacaoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = []
      Size = 2
    end
  end
  object dsItemprg: TDataSource
    DataSet = cdsItemprg
    Left = 120
    Top = 831
  end
  object cdsItemprg: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRG_TINTURARIA'
    MasterFields = 'ID_PRG_TINTURARIA'
    MasterSource = dsPrgProgramacao
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRG'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemprg'
    Left = 88
    Top = 831
    object cdsItemprgID_ITEM_PRG: TIntegerField
      FieldName = 'ID_ITEM_PRG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsItemprgID_PRG_TINTURARIA: TIntegerField
      FieldName = 'ID_PRG_TINTURARIA'
    end
    object cdsItemprgID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsItemprgID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object cdsItemprgID_CORES: TIntegerField
      FieldName = 'ID_CORES'
    end
    object cdsItemprgID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Artigo'
      FieldName = 'ID_ARTIGO'
    end
    object cdsItemprgQUANT: TFMTBCDField
      DisplayLabel = 'Rolos'
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object cdsItemprgNOME_ARTIGO: TStringField
      DisplayLabel = 'Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemprgLARGURA: TFMTBCDField
      DisplayLabel = 'Largura'
      FieldName = 'LARGURA'
      ProviderFlags = []
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemprgGRAMATURA: TFMTBCDField
      DisplayLabel = 'Gramatura'
      FieldName = 'GRAMATURA'
      ProviderFlags = []
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemprgCOMPOSICAO: TStringField
      DisplayLabel = 'Composi'#231#227'o'
      FieldName = 'COMPOSICAO'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemprgCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Cor'
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object cdsItemprgCOR: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemprgPESO: TFMTBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemprgCOD_ESTAMPA: TStringField
      DisplayLabel = 'C'#243'd. Estampa'
      FieldName = 'COD_ESTAMPA'
      Size = 30
    end
    object cdsItemprgCOD_VARIANTE: TStringField
      DisplayLabel = 'C'#243'd. Variante'
      FieldName = 'COD_VARIANTE'
      Size = 30
    end
    object cdsItemprgTUBULAR: TStringField
      DisplayLabel = 'Tubular'
      FieldName = 'TUBULAR'
      ProviderFlags = []
      Size = 1
    end
    object cdsItemprgFELPAR: TStringField
      DisplayLabel = 'Felpar'
      FieldName = 'FELPAR'
      ProviderFlags = []
      Size = 1
    end
    object cdsItemprgCORTA_AUREOLAS: TStringField
      DisplayLabel = 'Corta Aureola'
      FieldName = 'CORTA_AUREOLAS'
      ProviderFlags = []
      Size = 1
    end
    object cdsItemprgCOD_COR: TStringField
      FieldName = 'COD_COR'
      ProviderFlags = []
      Size = 64
    end
    object cdsItemprgID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object cdsItemprgVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemprgSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dspItemprg: TDataSetProvider
    DataSet = qItemprg
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 56
    Top = 831
  end
  object qItemprg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IP.ID_ITEM_PRG,'
      ' IP.ID_PRG_TINTURARIA,'
      ' IP.ID_ARTIGO,'
      ' IP.ID_CLIENTE,'
      ' IP.ID_GRUPO_EMPRESA,'
      ' IP.ID_CORES,'
      ' IP.QUANT,'
      ' IP.PESO,'
      ' IP.COD_ESTAMPA,'
      ' IP.COD_VARIANTE,'
      ' IP.ID_LOTE,'
      ' IP.VL_UNIT,'
      ' IP.STATUS,'
      ' A.NOME_ARTIGO,'
      ' A.LARGURA,'
      ' A.GRAMATURA,'
      ' A.COMPOSICAO,'
      ' A.TUBULAR,'
      ' A.FELPAR,'
      ' A.CORTA_AUREOLAS,'
      ' CC.CODIGO,'
      ' CC.DESCRICAO AS COR,'
      ' CC.CODIGO||'#39' - '#39'||CC.DESCRICAO AS COD_COR'
      ''
      'FROM TB_ITEM_PRG IP'
      
        'JOIN TB_PRG_TINTURARIA PR   ON (PR.ID_PRG_TINTURARIA = IP.ID_PRG' +
        '_TINTURARIA)'
      'JOIN TB_ARTIGO A            ON (A.ID_ARTIGO = IP.ID_ARTIGO)'
      'JOIN TB_CLIENTE C           ON (C.ID_CLIENTE = IP.ID_CLIENTE)'
      
        'JOIN TB_GRUPO_EMPRESA GE    ON (GE.ID_GRUPO_EMPRESA = IP.ID_GRUP' +
        'O_EMPRESA)'
      'JOIN TB_CORES CC            ON (CC.ID_CORES = IP.ID_CORES)'
      'WHERE PR.ID_PRG_TINTURARIA = :ID_PRG')
    SQLConnection = conexao
    Left = 24
    Top = 831
    object qItemprgID_ITEM_PRG: TIntegerField
      FieldName = 'ID_ITEM_PRG'
      Required = True
    end
    object qItemprgID_PRG_TINTURARIA: TIntegerField
      FieldName = 'ID_PRG_TINTURARIA'
    end
    object qItemprgID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qItemprgID_GRUPO_EMPRESA: TIntegerField
      FieldName = 'ID_GRUPO_EMPRESA'
    end
    object qItemprgID_CORES: TIntegerField
      FieldName = 'ID_CORES'
    end
    object qItemprgID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qItemprgQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object qItemprgNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qItemprgLARGURA: TFMTBCDField
      FieldName = 'LARGURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qItemprgGRAMATURA: TFMTBCDField
      FieldName = 'GRAMATURA'
      ProviderFlags = []
      Precision = 18
      Size = 3
    end
    object qItemprgCOMPOSICAO: TStringField
      FieldName = 'COMPOSICAO'
      ProviderFlags = []
      Size = 30
    end
    object qItemprgCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object qItemprgCOR: TStringField
      FieldName = 'COR'
      ProviderFlags = []
      Size = 50
    end
    object qItemprgPESO: TFMTBCDField
      FieldName = 'PESO'
      Precision = 18
      Size = 3
    end
    object qItemprgCOD_ESTAMPA: TStringField
      FieldName = 'COD_ESTAMPA'
      Size = 30
    end
    object qItemprgCOD_VARIANTE: TStringField
      FieldName = 'COD_VARIANTE'
      Size = 30
    end
    object qItemprgTUBULAR: TStringField
      FieldName = 'TUBULAR'
      ProviderFlags = []
      Size = 1
    end
    object qItemprgFELPAR: TStringField
      FieldName = 'FELPAR'
      ProviderFlags = []
      Size = 1
    end
    object qItemprgCORTA_AUREOLAS: TStringField
      FieldName = 'CORTA_AUREOLAS'
      ProviderFlags = []
      Size = 1
    end
    object qItemprgCOD_COR: TStringField
      FieldName = 'COD_COR'
      ProviderFlags = []
      Size = 64
    end
    object qItemprgID_LOTE: TIntegerField
      FieldName = 'ID_LOTE'
    end
    object qItemprgVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 3
    end
    object qItemprgSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsNotaRetorno: TDataSource
    DataSet = cdsNotaRetorno
    Left = 536
    Top = 823
  end
  object cdsNotaRetorno: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_TINGIMENTO'
    MasterFields = 'ID_TINGIMENTO'
    MasterSource = dsTingimento
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TINGIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspNotaRetorno'
    Left = 504
    Top = 823
    object cdsNotaRetornoID_NOTA_RETORNO: TIntegerField
      FieldName = 'ID_NOTA_RETORNO'
      Required = True
    end
    object cdsNotaRetornoID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
    end
    object cdsNotaRetornoID_FOR_TINGIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd.For Ting'
      FieldName = 'ID_FOR_TINGIMENTO'
    end
    object cdsNotaRetornoID_FOR_TINT: TIntegerField
      DisplayLabel = 'C'#243'd.For Tint'
      FieldName = 'ID_FOR_TINT'
    end
    object cdsNotaRetornoID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaRetornoQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsNotaRetornoVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.0'
      EditFormat = '###,###0.0'
      Precision = 18
      Size = 3
    end
    object cdsNotaRetornoNR_NOTA_RETORNO: TIntegerField
      DisplayLabel = 'N'#186' NF Retorno'
      FieldName = 'NR_NOTA_RETORNO'
    end
    object cdsNotaRetornoNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
      ProviderFlags = []
    end
    object cdsNotaRetornoNR_NF_TINGIMENTO: TIntegerField
      DisplayLabel = 'N'#186' NF Tingimento'
      FieldName = 'NR_NF_TINGIMENTO'
      ProviderFlags = []
    end
    object cdsNotaRetornoFORN_TINGIMENTO: TStringField
      DisplayLabel = 'For Tingimento'
      FieldName = 'FORN_TINGIMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaRetornoFORN_TINTURARIA: TStringField
      DisplayLabel = 'Forn Tinturaria'
      FieldName = 'FORN_TINTURARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaRetornoCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaRetornoNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Grupo Empresa'
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspNotaRetorno: TDataSetProvider
    DataSet = qNotaRetorno
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 823
  end
  object qNotaRetorno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TINGIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' NR.ID_NOTA_RETORNO,'
      ' NR.ID_TINGIMENTO,'
      ' NR.ID_FOR_TINGIMENTO,'
      ' NR.ID_FOR_TINT,'
      ' NR.ID_CLIENTE,'
      ' NR.QUANT,'
      ' NR.VALOR,'
      ' NR.NR_NOTA_RETORNO,'
      ' T.NR_NOTA_FISCAL,'
      ' T.NR_NF_TINGIMENTO,'
      ' FT.NOME AS FORN_TINGIMENTO,'
      ' TT.NOME AS FORN_TINTURARIA,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' GE.NOME_DO_GRUPO'
      'FROM TB_NOTA_RETORNO NR'
      'JOIN TB_TINGIMENTO T ON (T.ID_TINGIMENTO = NR.ID_TINGIMENTO)'
      
        'JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = NR.ID_FOR_TINGIMENT' +
        'O)'
      'JOIN TB_FORNECEDOR TT ON (TT.ID_FORNECEDOR = NR.ID_FOR_TINT)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = NR.ID_CLIENTE )'
      
        'JOIN TB_GRUPO_EMPRESA GE ON (GE.ID_GRUPO_EMPRESA = C.ID_GRUPO_EM' +
        'PRESA)'
      'WHERE NR.ID_TINGIMENTO = :ID_TINGIMENTO')
    SQLConnection = conexao
    Left = 442
    Top = 823
    object qNotaRetornoID_NOTA_RETORNO: TIntegerField
      FieldName = 'ID_NOTA_RETORNO'
      Required = True
    end
    object qNotaRetornoID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
    end
    object qNotaRetornoID_FOR_TINGIMENTO: TIntegerField
      FieldName = 'ID_FOR_TINGIMENTO'
    end
    object qNotaRetornoID_FOR_TINT: TIntegerField
      FieldName = 'ID_FOR_TINT'
    end
    object qNotaRetornoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qNotaRetornoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object qNotaRetornoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 3
    end
    object qNotaRetornoNR_NOTA_RETORNO: TIntegerField
      FieldName = 'NR_NOTA_RETORNO'
    end
    object qNotaRetornoNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
      ProviderFlags = []
    end
    object qNotaRetornoNR_NF_TINGIMENTO: TIntegerField
      FieldName = 'NR_NF_TINGIMENTO'
      ProviderFlags = []
    end
    object qNotaRetornoFORN_TINGIMENTO: TStringField
      FieldName = 'FORN_TINGIMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qNotaRetornoFORN_TINTURARIA: TStringField
      FieldName = 'FORN_TINTURARIA'
      ProviderFlags = []
      Size = 50
    end
    object qNotaRetornoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qNotaRetornoNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsItemTingimento: TDataSource
    DataSet = cdsItemTingimento
    Left = 368
    Top = 879
  end
  object cdsItemTingimento: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_TINGIMENTO'
    MasterFields = 'ID_TINGIMENTO'
    MasterSource = dsTingimento
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TINGIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemTingimento'
    Left = 336
    Top = 879
    object cdsItemTingimentoID_ITEM_TINGIMENTO: TIntegerField
      FieldName = 'ID_ITEM_TINGIMENTO'
      Required = True
    end
    object cdsItemTingimentoID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
    end
    object cdsItemTingimentoID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Artigo'
      FieldName = 'ID_ARTIGO'
    end
    object cdsItemTingimentoQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Peso'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsItemTingimentoVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemTingimentoVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemTingimentoID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsItemTingimentoID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Forn'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsItemTingimentoID_MATERIA: TIntegerField
      DisplayLabel = 'C'#243'd. Mat'#233'ria'
      FieldName = 'ID_MATERIA'
    end
    object cdsItemTingimentoID_FORN_MALHARIA: TIntegerField
      DisplayLabel = 'C'#243'd. Malharia'
      FieldName = 'ID_FORN_MALHARIA'
    end
    object cdsItemTingimentoNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsItemTingimentoNR_NF_TINGIMENTO: TIntegerField
      DisplayLabel = 'N'#186' NF Tingimento'
      FieldName = 'NR_NF_TINGIMENTO'
    end
    object cdsItemTingimentoID_PRODUCAO: TIntegerField
      DisplayLabel = 'C'#243'd. Producao'
      FieldName = 'ID_PRODUCAO'
    end
    object cdsItemTingimentoVL_UNIT_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Unit Real'
      FieldName = 'VL_UNIT_REAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemTingimentoVL_TOTAL_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Total Real'
      FieldName = 'VL_TOTAL_REAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemTingimentoQT_ROLOS: TIntegerField
      DisplayLabel = 'Qt. Rolos'
      FieldName = 'QT_ROLOS'
    end
    object cdsItemTingimentoNOME_ARTIGO: TStringField
      DisplayLabel = 'Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemTingimentoR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemTingimentoFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemTingimentoMALHARIA: TStringField
      DisplayLabel = 'Malharia'
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemTingimentoNOME_MATERIA: TStringField
      DisplayLabel = 'Mat'#233'ria-Prima'
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemTingimentoID_ITEM_PRG: TIntegerField
      FieldName = 'ID_ITEM_PRG'
    end
    object cdsItemTingimentoID_PRG_TINTURARIA: TIntegerField
      FieldName = 'ID_PRG_TINTURARIA'
    end
    object cdsItemTingimentoCOR_ALTERADA: TStringField
      DisplayLabel = 'Cor Alterada'
      FieldName = 'COR_ALTERADA'
      Size = 100
    end
    object cdsItemTingimentoQT_ROLOS_PRG: TIntegerField
      DisplayLabel = 'Rolos Prg'
      FieldName = 'QT_ROLOS_PRG'
    end
    object cdsItemTingimentoPESO_PRG: TFMTBCDField
      DisplayLabel = 'Peso Prg'
      FieldName = 'PESO_PRG'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsItemTingimentoID_CORES: TIntegerField
      FieldName = 'ID_CORES'
      Required = True
    end
    object cdsItemTingimentoCOD_COR: TIntegerField
      FieldName = 'COD_COR'
      ProviderFlags = []
    end
    object cdsItemTingimentoNOME_COR: TStringField
      DisplayLabel = 'Descri'#231#227'o Cor'
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspItemTingimento: TDataSetProvider
    DataSet = qItemTingimento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 304
    Top = 879
  end
  object qItemTingimento: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TINGIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IR.ID_ITEM_TINGIMENTO,'
      ' IR.ID_TINGIMENTO,'
      ' IR.ID_ARTIGO,'
      ' IR.QUANT_FATURADO,'
      ' IR.VL_UNIT,'
      ' IR.VL_TOTAL,'
      ' IR.ID_CLIENTE,'
      ' IR.ID_FORNECEDOR,'
      ' IR.ID_MATERIA,'
      ' IR.ID_FORN_MALHARIA,'
      ' IR.NR_NOTA_FISCAL,'
      ' IR.NR_NF_TINGIMENTO,'
      ' IR.ID_PRODUCAO,'
      ' IR.VL_UNIT_REAL,'
      ' IR.VL_TOTAL_REAL,'
      ' IR.QT_ROLOS,'
      ' IR.ID_ITEM_PRG,'
      ' IR.ID_PRG_TINTURARIA,'
      ' IR.COR_ALTERADA,'
      ' IR.QT_ROLOS_PRG,'
      ' IR.PESO_PRG,'
      ' IR.ID_CORES,'
      ' A.NOME_ARTIGO,'
      ' C.R_SOCIAL,'
      ' F.NOME AS FORNECEDOR,'
      ' M.NOME AS MALHARIA,'
      ' MP.NOME_MATERIA,'
      ' CR.CODIGO AS COD_COR,'
      ' CR.DESCRICAO AS NOME_COR'
      'FROM TB_ITEM_TINGIMENTO IR'
      'LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)'
      'LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = IR.ID_FORN' +
        'ECEDOR)'
      
        'LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN' +
        '_MALHARIA)'
      
        'LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MA' +
        'TERIA)'
      'LEFT OUTER JOIN TB_CORES CR ON (CR.ID_CORES = IR.ID_CORES)'
      'WHERE IR.ID_TINGIMENTO = :ID_TINGIMENTO')
    SQLConnection = conexao
    Left = 272
    Top = 879
    object qItemTingimentoID_ITEM_TINGIMENTO: TIntegerField
      FieldName = 'ID_ITEM_TINGIMENTO'
      Required = True
    end
    object qItemTingimentoID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
    end
    object qItemTingimentoID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qItemTingimentoQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 4
    end
    object qItemTingimentoVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 3
    end
    object qItemTingimentoVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 3
    end
    object qItemTingimentoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qItemTingimentoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qItemTingimentoID_MATERIA: TIntegerField
      FieldName = 'ID_MATERIA'
    end
    object qItemTingimentoID_FORN_MALHARIA: TIntegerField
      FieldName = 'ID_FORN_MALHARIA'
    end
    object qItemTingimentoNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qItemTingimentoNR_NF_TINGIMENTO: TIntegerField
      FieldName = 'NR_NF_TINGIMENTO'
    end
    object qItemTingimentoID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object qItemTingimentoVL_UNIT_REAL: TFMTBCDField
      FieldName = 'VL_UNIT_REAL'
      Precision = 18
      Size = 3
    end
    object qItemTingimentoVL_TOTAL_REAL: TFMTBCDField
      FieldName = 'VL_TOTAL_REAL'
      Precision = 18
      Size = 3
    end
    object qItemTingimentoQT_ROLOS: TIntegerField
      FieldName = 'QT_ROLOS'
    end
    object qItemTingimentoNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qItemTingimentoR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qItemTingimentoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qItemTingimentoMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qItemTingimentoNOME_MATERIA: TStringField
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
    object qItemTingimentoID_ITEM_PRG: TIntegerField
      FieldName = 'ID_ITEM_PRG'
    end
    object qItemTingimentoID_PRG_TINTURARIA: TIntegerField
      FieldName = 'ID_PRG_TINTURARIA'
    end
    object qItemTingimentoCOR_ALTERADA: TStringField
      FieldName = 'COR_ALTERADA'
      Size = 100
    end
    object qItemTingimentoQT_ROLOS_PRG: TIntegerField
      FieldName = 'QT_ROLOS_PRG'
    end
    object qItemTingimentoPESO_PRG: TFMTBCDField
      FieldName = 'PESO_PRG'
      Precision = 18
      Size = 3
    end
    object qItemTingimentoID_CORES: TIntegerField
      FieldName = 'ID_CORES'
      Required = True
    end
    object qItemTingimentoCOD_COR: TIntegerField
      FieldName = 'COD_COR'
      ProviderFlags = []
    end
    object qItemTingimentoNOME_COR: TStringField
      FieldName = 'NOME_COR'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsServico: TDataSource
    DataSet = cdsServico
    Left = 688
    Top = 775
  end
  object cdsServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspServico'
    Left = 656
    Top = 775
    object cdsServicoID_SERVICO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object cdsServicoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsServicoVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dspServico: TDataSetProvider
    DataSet = qServico
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 624
    Top = 775
  end
  object qServico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' S.ID_SERVICO,'
      ' S.DESCRICAO,'
      ' S.VALOR'
      'FROM TB_SERVICO S')
    SQLConnection = conexao
    Left = 592
    Top = 775
    object qServicoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      Required = True
    end
    object qServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qServicoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
  end
  object dsNotaQuebra: TDataSource
    DataSet = cdsNotaQuebra
    Left = 536
    Top = 879
  end
  object cdsNotaQuebra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_TINGIMENTO'
    MasterFields = 'ID_TINGIMENTO'
    MasterSource = dsTingimento
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TINGIMENTO'
        ParamType = ptInput
      end>
    ProviderName = 'dspNotaQuebra'
    Left = 504
    Top = 879
    object cdsNotaQuebraID_NOTA_QUEBRA: TIntegerField
      FieldName = 'ID_NOTA_QUEBRA'
      Required = True
    end
    object cdsNotaQuebraID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
    end
    object cdsNotaQuebraID_FOR_TINGIMENTO: TIntegerField
      DisplayLabel = 'C'#243'd.For Ting'
      FieldName = 'ID_FOR_TINGIMENTO'
    end
    object cdsNotaQuebraID_FOR_TINT: TIntegerField
      DisplayLabel = 'C'#243'd.For Tint'
      FieldName = 'ID_FOR_TINT'
    end
    object cdsNotaQuebraID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsNotaQuebraQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsNotaQuebraVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsNotaQuebraNR_NOTA_QUEBRA: TIntegerField
      DisplayLabel = 'N'#186' NF Quebra'
      FieldName = 'NR_NOTA_QUEBRA'
    end
    object cdsNotaQuebraNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
      ProviderFlags = []
    end
    object cdsNotaQuebraNR_NF_TINGIMENTO: TIntegerField
      DisplayLabel = 'N'#186' NF Tingimento'
      FieldName = 'NR_NF_TINGIMENTO'
      ProviderFlags = []
    end
    object cdsNotaQuebraFORN_TINGIMENTO: TStringField
      DisplayLabel = 'For Tingimento'
      FieldName = 'FORN_TINGIMENTO'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaQuebraFORN_TINTURARIA: TStringField
      DisplayLabel = 'Forn Tinturaria'
      FieldName = 'FORN_TINTURARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaQuebraCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsNotaQuebraNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Grupo Empresa'
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspNotaQuebra: TDataSetProvider
    DataSet = qNotaQuebra
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 472
    Top = 879
  end
  object qNotaQuebra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_TINGIMENTO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' NQ.ID_NOTA_QUEBRA,'
      ' NQ.ID_TINGIMENTO,'
      ' NQ.ID_FOR_TINGIMENTO,'
      ' NQ.ID_FOR_TINT,'
      ' NQ.ID_CLIENTE,'
      ' NQ.QUANT,'
      ' NQ.VALOR,'
      ' NQ.NR_NOTA_QUEBRA,'
      ' T.NR_NOTA_FISCAL,'
      ' T.NR_NF_TINGIMENTO,'
      ' FT.NOME AS FORN_TINGIMENTO,'
      ' TT.NOME AS FORN_TINTURARIA,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' GE.NOME_DO_GRUPO'
      'FROM TB_NOTA_QUEBRA NQ'
      'JOIN TB_TINGIMENTO T ON (T.ID_TINGIMENTO = NQ.ID_TINGIMENTO)'
      
        'JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = NQ.ID_FOR_TINGIMENT' +
        'O)'
      'JOIN TB_FORNECEDOR TT ON (TT.ID_FORNECEDOR = NQ.ID_FOR_TINT)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = NQ.ID_CLIENTE )'
      
        'JOIN TB_GRUPO_EMPRESA GE ON (GE.ID_GRUPO_EMPRESA = C.ID_GRUPO_EM' +
        'PRESA)'
      'WHERE NQ.ID_TINGIMENTO = :ID_TINGIMENTO')
    SQLConnection = conexao
    Left = 440
    Top = 879
    object qNotaQuebraID_NOTA_QUEBRA: TIntegerField
      FieldName = 'ID_NOTA_QUEBRA'
      Required = True
    end
    object qNotaQuebraID_TINGIMENTO: TIntegerField
      FieldName = 'ID_TINGIMENTO'
    end
    object qNotaQuebraID_FOR_TINGIMENTO: TIntegerField
      FieldName = 'ID_FOR_TINGIMENTO'
    end
    object qNotaQuebraID_FOR_TINT: TIntegerField
      FieldName = 'ID_FOR_TINT'
    end
    object qNotaQuebraID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qNotaQuebraQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object qNotaQuebraVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 3
    end
    object qNotaQuebraNR_NOTA_QUEBRA: TIntegerField
      FieldName = 'NR_NOTA_QUEBRA'
    end
    object qNotaQuebraNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
      ProviderFlags = []
    end
    object qNotaQuebraNR_NF_TINGIMENTO: TIntegerField
      FieldName = 'NR_NF_TINGIMENTO'
      ProviderFlags = []
    end
    object qNotaQuebraFORN_TINGIMENTO: TStringField
      FieldName = 'FORN_TINGIMENTO'
      ProviderFlags = []
      Size = 50
    end
    object qNotaQuebraFORN_TINTURARIA: TStringField
      FieldName = 'FORN_TINTURARIA'
      ProviderFlags = []
      Size = 50
    end
    object qNotaQuebraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qNotaQuebraNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
  end
  object qRelProdMalharia: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    StoredProcName = 'REL_PROD_MALHARIA'
    Left = 720
    Top = 411
  end
  object dspRelProdMalharia: TDataSetProvider
    DataSet = qRelProdMalharia
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 749
    Top = 410
  end
  object cdsRelProdMalharia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelProdMalharia'
    Left = 776
    Top = 410
  end
  object dsServicoTinturaria: TDataSource
    DataSet = cdsServicoTinturaria
    Left = 695
    Top = 822
  end
  object cdsServicoTinturaria: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PRECO_TINTURARIA'
    MasterFields = 'ID_PRECO_TINTURARIA'
    MasterSource = dsArtigoTinturaria
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO_TINTURARIA'
        ParamType = ptInput
      end>
    ProviderName = 'dspServicoTinturaria'
    Left = 663
    Top = 822
    object cdsServicoTinturariaID_SERVICO_TINTURARIA: TIntegerField
      FieldName = 'ID_SERVICO_TINTURARIA'
      Required = True
    end
    object cdsServicoTinturariaID_SERVICO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_SERVICO'
    end
    object cdsServicoTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
    end
    object cdsServicoTinturariaID_ARTIGO_TINTURARIA: TIntegerField
      FieldName = 'ID_ARTIGO_TINTURARIA'
    end
    object cdsServicoTinturariaID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object cdsServicoTinturariaVALOR: TFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 4
    end
    object cdsServicoTinturariaSERVICO: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 50
    end
    object cdsServicoTinturariaVL_SERVICO: TFMTBCDField
      FieldName = 'VL_SERVICO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object dspServicoTinturaria: TDataSetProvider
    DataSet = qServicoTinturaria
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 631
    Top = 822
  end
  object qServicoTinturaria: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRECO_TINTURARIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' ST.ID_SERVICO_TINTURARIA,'
      ' ST.ID_SERVICO,'
      ' ST.ID_PRECO_TINTURARIA,'
      ' ST.ID_ARTIGO_TINTURARIA,'
      ' ST.ID_ARTIGO,'
      ' ST.VALOR,'
      ' S.DESCRICAO AS SERVICO,'
      ' S.VALOR AS VL_SERVICO'
      'FROM TB_SERVICO_TINTURARIA ST'
      'JOIN TB_SERVICO S ON (S.ID_SERVICO = ST.ID_SERVICO)'
      'JOIN TB_ARTIGO A ON (A.ID_ARTIGO = ST.ID_ARTIGO)'
      'WHERE ST.ID_PRECO_TINTURARIA = :ID_PRECO_TINTURARIA')
    SQLConnection = conexao
    Left = 599
    Top = 822
    object qServicoTinturariaID_SERVICO_TINTURARIA: TIntegerField
      FieldName = 'ID_SERVICO_TINTURARIA'
      Required = True
    end
    object qServicoTinturariaID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object qServicoTinturariaID_PRECO_TINTURARIA: TIntegerField
      FieldName = 'ID_PRECO_TINTURARIA'
    end
    object qServicoTinturariaID_ARTIGO_TINTURARIA: TIntegerField
      FieldName = 'ID_ARTIGO_TINTURARIA'
    end
    object qServicoTinturariaID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qServicoTinturariaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object qServicoTinturariaSERVICO: TStringField
      FieldName = 'SERVICO'
      ProviderFlags = []
      Size = 50
    end
    object qServicoTinturariaVL_SERVICO: TFMTBCDField
      FieldName = 'VL_SERVICO'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
  end
  object DataSource2: TDataSource
    Left = 712
    Top = 882
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 680
    Top = 882
  end
  object DataSetProvider3: TDataSetProvider
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 648
    Top = 882
  end
  object SQLQuery2: TSQLQuery
    Params = <>
    Left = 616
    Top = 882
  end
  object dsQuebra: TDataSource
    DataSet = cdsQuebra
    Left = 120
    Top = 882
  end
  object cdsQuebra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspQuebra'
    Left = 88
    Top = 882
    object cdsQuebraID_REMESSA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_REMESSA'
      Required = True
    end
    object cdsQuebraID_FOR_REMESSA: TIntegerField
      DisplayLabel = 'C'#243'd. For Rem'
      FieldName = 'ID_FOR_REMESSA'
      Required = True
    end
    object cdsQuebraSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsQuebraQUANT_NF: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT_NF'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsQuebraQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Quant. Fatu'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 3
    end
    object cdsQuebraQUANT_SALDO: TFMTBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'QUANT_SALDO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsQuebraID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd.Cli'
      FieldName = 'ID_CLIENTE'
    end
    object cdsQuebraID_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. For'
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsQuebraDT_EMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      EditMask = '##/##/####'
    end
    object cdsQuebraNR_NOTA_FISCAL: TIntegerField
      DisplayLabel = 'N'#186' Nota Fiscal'
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsQuebraVL_NOTA: TFMTBCDField
      DisplayLabel = 'Vl. Nota'
      FieldName = 'VL_NOTA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsQuebraVL_POR_FORA: TFMTBCDField
      DisplayLabel = 'Vl Por Fora'
      FieldName = 'VL_POR_FORA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsQuebraVL_TOTAL_NF: TFMTBCDField
      DisplayLabel = 'Vl Total NF'
      FieldName = 'VL_TOTAL_NF'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsQuebraID_FORN_TINT: TIntegerField
      FieldName = 'ID_FORN_TINT'
      Required = True
    end
    object cdsQuebraNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object cdsQuebraTOTAL_ROLOS: TIntegerField
      DisplayLabel = 'Total Rolos'
      FieldName = 'TOTAL_ROLOS'
    end
    object cdsQuebraNF_QUEBRA: TStringField
      FieldName = 'NF_QUEBRA'
      Size = 1
    end
    object cdsQuebraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsQuebraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsQuebraNOME_MALHARIA: TStringField
      DisplayLabel = 'Nomde da Malharia'
      FieldName = 'NOME_MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsQuebraTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dspQuebra: TDataSetProvider
    DataSet = qQuebra
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 56
    Top = 882
  end
  object qQuebra: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' RP.ID_REMESSA,'
      ' RP.ID_FOR_REMESSA,'
      ' RP.STATUS,'
      ' RP.QUANT_NF,'
      ' RP.QUANT_FATURADO,'
      ' RP.QUANT_SALDO,'
      ' RP.ID_CLIENTE,'
      ' RP.ID_FORNECEDOR,'
      ' RP.DT_EMISSAO,'
      ' RP.NR_NOTA_FISCAL,'
      ' RP.VL_NOTA,'
      ' RP.VL_POR_FORA,'
      ' RP.VL_TOTAL_NF,'
      ' RP.ID_FORN_TINT,'
      ' RP.NR_NF_REMESSA,'
      ' RP.TOTAL_ROLOS,'
      ' RP.NF_QUEBRA,'
      ' C.R_SOCIAL AS CLIENTE,'
      ' F.NOME AS FORNECEDOR,'
      ' FF.NOME AS NOME_MALHARIA,'
      ' FT.NOME AS TITURARIA'
      'FROM TB_REMESSA_PRODUCAO RP'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = RP.ID_FORN' +
        'ECEDOR)'
      'JOIN TB_FORNECEDOR FF ON (FF.ID_FORNECEDOR = RP.ID_FOR_REMESSA)'
      'JOIN TB_FORNECEDOR FT ON (FT.ID_FORNECEDOR = RP.ID_FORN_TINT)'
      'JOIN TB_CLIENTE C ON (C.ID_CLIENTE = RP.ID_CLIENTE)'
      'WHERE RP.NF_QUEBRA = '#39'S'#39)
    SQLConnection = conexao
    Left = 24
    Top = 882
    object qQuebraID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
      Required = True
    end
    object qQuebraID_FOR_REMESSA: TIntegerField
      FieldName = 'ID_FOR_REMESSA'
      Required = True
    end
    object qQuebraSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qQuebraQUANT_NF: TFMTBCDField
      FieldName = 'QUANT_NF'
      Precision = 18
      Size = 3
    end
    object qQuebraQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 3
    end
    object qQuebraQUANT_SALDO: TFMTBCDField
      FieldName = 'QUANT_SALDO'
      Precision = 18
      Size = 3
    end
    object qQuebraID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qQuebraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qQuebraDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qQuebraNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qQuebraVL_NOTA: TFMTBCDField
      FieldName = 'VL_NOTA'
      Precision = 18
      Size = 3
    end
    object qQuebraVL_POR_FORA: TFMTBCDField
      FieldName = 'VL_POR_FORA'
      Precision = 18
      Size = 3
    end
    object qQuebraVL_TOTAL_NF: TFMTBCDField
      FieldName = 'VL_TOTAL_NF'
      Precision = 18
      Size = 3
    end
    object qQuebraID_FORN_TINT: TIntegerField
      FieldName = 'ID_FORN_TINT'
      Required = True
    end
    object qQuebraNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object qQuebraTOTAL_ROLOS: TIntegerField
      FieldName = 'TOTAL_ROLOS'
    end
    object qQuebraNF_QUEBRA: TStringField
      FieldName = 'NF_QUEBRA'
      Size = 1
    end
    object qQuebraCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qQuebraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qQuebraNOME_MALHARIA: TStringField
      FieldName = 'NOME_MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qQuebraTITURARIA: TStringField
      FieldName = 'TITURARIA'
      ProviderFlags = []
      Size = 50
    end
  end
  object dsItemQuebra: TDataSource
    DataSet = cdsItemQuebra
    Left = 120
    Top = 930
  end
  object cdsItemQuebra: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_REMESSA'
    MasterFields = 'ID_REMESSA'
    MasterSource = dsQuebra
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_REMESSA'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemQuebra'
    Left = 88
    Top = 930
    object cdsItemQuebraID_ITEM_REMESSA: TIntegerField
      FieldName = 'ID_ITEM_REMESSA'
      Required = True
    end
    object cdsItemQuebraID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
    end
    object cdsItemQuebraID_ARTIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Artigo'
      FieldName = 'ID_ARTIGO'
    end
    object cdsItemQuebraQUANT_FATURADO: TFMTBCDField
      DisplayLabel = 'Quant Fat'
      FieldName = 'QUANT_FATURADO'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsItemQuebraVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemQuebraVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemQuebraID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsItemQuebraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsItemQuebraID_MATERIA: TIntegerField
      DisplayLabel = 'C'#243'd. Mat'#233'ria'
      FieldName = 'ID_MATERIA'
    end
    object cdsItemQuebraID_FORN_MALHARIA: TIntegerField
      FieldName = 'ID_FORN_MALHARIA'
    end
    object cdsItemQuebraNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object cdsItemQuebraNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object cdsItemQuebraID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object cdsItemQuebraVL_UNIT_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Unit Real'
      FieldName = 'VL_UNIT_REAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemQuebraVL_TOTAL_REAL: TFMTBCDField
      DisplayLabel = 'Vl. Total Real'
      FieldName = 'VL_TOTAL_REAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemQuebraQT_ROLOS: TIntegerField
      DisplayLabel = 'Qt.Rolos'
      FieldName = 'QT_ROLOS'
    end
    object cdsItemQuebraNOME_ARTIGO: TStringField
      DisplayLabel = 'Artigo'
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object cdsItemQuebraR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemQuebraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemQuebraMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsItemQuebraNOME_MATERIA: TStringField
      DisplayLabel = 'Nome Mat'#233'ria'
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dspItemQuebra: TDataSetProvider
    DataSet = qItemQuebra
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 56
    Top = 930
  end
  object qItemQuebra: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_REMESSA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' IR.ID_ITEM_REMESSA,'
      ' IR.ID_REMESSA,'
      ' IR.ID_ARTIGO,'
      ' IR.QUANT_FATURADO,'
      ' IR.VL_UNIT,'
      ' IR.VL_TOTAL,'
      ' IR.ID_CLIENTE,'
      ' IR.ID_FORNECEDOR,'
      ' IR.ID_MATERIA,'
      ' IR.ID_FORN_MALHARIA,'
      ' IR.NR_NOTA_FISCAL,'
      ' IR.NR_NF_REMESSA,'
      ' IR.ID_PRODUCAO,'
      ' IR.VL_UNIT_REAL,'
      ' IR.VL_TOTAL_REAL,'
      ' IR.QT_ROLOS,'
      ' A.NOME_ARTIGO,'
      ' C.R_SOCIAL,'
      ' F.NOME AS FORNECEDOR,'
      ' M.NOME AS MALHARIA,'
      ' MP.NOME_MATERIA'
      'FROM TB_ITEM_REMESSA_PRODUCAO IR'
      'LEFT OUTER JOIN TB_ARTIGO A ON (A.ID_ARTIGO = IR.ID_ARTIGO)'
      'LEFT OUTER JOIN TB_CLIENTE C ON (C.ID_CLIENTE = IR.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_FORNECEDOR F ON (F.ID_FORNECEDOR = IR.ID_FORN' +
        'ECEDOR)'
      
        'LEFT OUTER JOIN TB_FORNECEDOR M ON (M.ID_FORNECEDOR = IR.ID_FORN' +
        '_MALHARIA)'
      
        'LEFT OUTER JOIN TB_MATERIA_PRIMA MP ON (MP.ID_MATERIA = IR.ID_MA' +
        'TERIA)'
      'WHERE IR.ID_REMESSA = :ID_REMESSA')
    SQLConnection = conexao
    Left = 24
    Top = 930
    object qItemQuebraID_ITEM_REMESSA: TIntegerField
      FieldName = 'ID_ITEM_REMESSA'
      Required = True
    end
    object qItemQuebraID_REMESSA: TIntegerField
      FieldName = 'ID_REMESSA'
    end
    object qItemQuebraID_ARTIGO: TIntegerField
      FieldName = 'ID_ARTIGO'
    end
    object qItemQuebraQUANT_FATURADO: TFMTBCDField
      FieldName = 'QUANT_FATURADO'
      Precision = 18
      Size = 4
    end
    object qItemQuebraVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 3
    end
    object qItemQuebraVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 3
    end
    object qItemQuebraID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qItemQuebraID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object qItemQuebraID_MATERIA: TIntegerField
      FieldName = 'ID_MATERIA'
    end
    object qItemQuebraID_FORN_MALHARIA: TIntegerField
      FieldName = 'ID_FORN_MALHARIA'
    end
    object qItemQuebraNR_NOTA_FISCAL: TIntegerField
      FieldName = 'NR_NOTA_FISCAL'
    end
    object qItemQuebraNR_NF_REMESSA: TIntegerField
      FieldName = 'NR_NF_REMESSA'
    end
    object qItemQuebraID_PRODUCAO: TIntegerField
      FieldName = 'ID_PRODUCAO'
    end
    object qItemQuebraVL_UNIT_REAL: TFMTBCDField
      FieldName = 'VL_UNIT_REAL'
      Precision = 18
      Size = 3
    end
    object qItemQuebraVL_TOTAL_REAL: TFMTBCDField
      FieldName = 'VL_TOTAL_REAL'
      Precision = 18
      Size = 3
    end
    object qItemQuebraQT_ROLOS: TIntegerField
      FieldName = 'QT_ROLOS'
    end
    object qItemQuebraNOME_ARTIGO: TStringField
      FieldName = 'NOME_ARTIGO'
      ProviderFlags = []
      Size = 30
    end
    object qItemQuebraR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qItemQuebraFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qItemQuebraMALHARIA: TStringField
      FieldName = 'MALHARIA'
      ProviderFlags = []
      Size = 50
    end
    object qItemQuebraNOME_MATERIA: TStringField
      FieldName = 'NOME_MATERIA'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsTabelaFretes: TDataSource
    DataSet = cdsTabelaFretes
    Left = 368
    Top = 930
  end
  object cdsTabelaFretes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTabelaFretes'
    Left = 336
    Top = 930
    object cdsTabelaFretesID_FRETE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FRETE'
      Required = True
    end
    object cdsTabelaFretesID_GRUPO: TIntegerField
      DisplayLabel = 'C'#243'd.Grupo'
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object cdsTabelaFretesID_TRANSPORTADORA: TIntegerField
      DisplayLabel = 'C'#243'd.Transp'
      FieldName = 'ID_TRANSPORTADORA'
      Required = True
    end
    object cdsTabelaFretesVL_FRENTE: TFMTBCDField
      DisplayLabel = 'Vl Frete'
      FieldName = 'VL_FRENTE'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsTabelaFretesNOME_DO_GRUPO: TStringField
      DisplayLabel = 'Grupo Empresa'
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object cdsTabelaFretesNOME_TRANSPORTADORA: TStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 80
    end
  end
  object dspTabelaFretes: TDataSetProvider
    DataSet = qTabelaFretes
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 304
    Top = 930
  end
  object qTabelaFretes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' F.ID_FRETE,'
      ' F.ID_GRUPO,'
      ' F.ID_TRANSPORTADORA,'
      ' F.VL_FRENTE,'
      ' GE.NOME_DO_GRUPO,'
      ' T.NOME_TRANSPORTADORA'
      'FROM TB_FRETE F'
      'JOIN TB_GRUPO_EMPRESA GE ON (GE.ID_GRUPO_EMPRESA = F.ID_GRUPO)'
      
        'JOIN TB_TRANSPORTADORA T ON (T.ID_TRANSPORTADORA = F.ID_TRANSPOR' +
        'TADORA)')
    SQLConnection = conexao
    Left = 272
    Top = 930
    object qTabelaFretesID_FRETE: TIntegerField
      FieldName = 'ID_FRETE'
      Required = True
    end
    object qTabelaFretesID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object qTabelaFretesID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
      Required = True
    end
    object qTabelaFretesVL_FRENTE: TFMTBCDField
      FieldName = 'VL_FRENTE'
      Precision = 18
      Size = 2
    end
    object qTabelaFretesNOME_DO_GRUPO: TStringField
      FieldName = 'NOME_DO_GRUPO'
      ProviderFlags = []
      Size = 50
    end
    object qTabelaFretesNOME_TRANSPORTADORA: TStringField
      FieldName = 'NOME_TRANSPORTADORA'
      ProviderFlags = []
      Size = 80
    end
  end
end