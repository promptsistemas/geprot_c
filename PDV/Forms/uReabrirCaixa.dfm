object frmReaberturaCaixa: TfrmReaberturaCaixa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Reabertura de Caixa'
  ClientHeight = 321
  ClientWidth = 536
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 1
    Top = 4
    Width = 532
    Height = 65
    Color = 14155775
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 13
      Width = 92
      Height = 15
      Caption = 'Data Reabertura'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 156
      Top = 8
      Width = 37
      Height = 20
      Caption = 'Caixa'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 247
      Top = 8
      Width = 128
      Height = 20
      Caption = 'Operador de Caixa'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object L_OPERADOR: TLabel
      Left = 247
      Top = 29
      Width = 37
      Height = 20
      Caption = 'Caixa'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object L_DATA: TLabel
      Left = 13
      Top = 29
      Width = 40
      Height = 20
      Caption = 'dATA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object L_CAIXA: TLabel
      Left = 161
      Top = 29
      Width = 27
      Height = 20
      Caption = '000'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 391
      Top = 8
      Width = 107
      Height = 20
      Caption = 'Status do Caixa'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object L_STATUS: TLabel
      Left = 407
      Top = 29
      Width = 44
      Height = 20
      Caption = 'Status'
      Color = clCream
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object ME_DATA: TMaskEdit
      Left = 11
      Top = 34
      Width = 97
      Height = 21
      EditMask = '##/##/####'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = ME_DATAExit
      OnKeyPress = FormKeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 71
    Width = 532
    Height = 171
    Ctl3D = False
    DataSource = dsResumoVendas
    FixedColor = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clGreen
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_MOV'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAIXA'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_PAGAMENTO'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDAS'
        Width = 95
        Visible = True
      end>
  end
  object BB_IMPRIMIR: TBitBtn
    Left = 125
    Top = 248
    Width = 89
    Height = 57
    Caption = '&Reabrir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      E2020000424DE202000000000000E20100002800000010000000100000000100
      08000000000000010000120B0000120B00006B0000006B0000008480AA00A19A
      B200BAB7BC00FF00FF00C7BCC600BBB7B70003650000015D0000035A05000467
      0600036E070010891A00118B1C0000510A00128E1F0013902100035E10001381
      210019982B001FAC340021AF370023B13C0023A63E0028B845002ABC49002DC0
      4D000056140028AD460031C5550033C95900035E1C0036CE600038D065003AD1
      68003CD36A003DD56C000075880000B1FF000074A6000079E1002075DC000047
      BB00005CFF00003ED0000037B6000036CE00002DC100516FDD000023BD000027
      FF000D2FF6000022FF000023FF000018F0000018EF000017EE000017EA000014
      FA000013D9000011D8000012D8000012D7000012D5000011D3000010CE00000E
      C600000FE600000DC500000DC100000CC000000BBF00000CBF00000CBD00000A
      B6000009B100020BB5000611B400222CC0007378C0000007A9000006A6000006
      A4000004A3000005A30000049E000107A5000D13A6000004AF0000039E000003
      9C000003990000029600000192000001910000028F000103960001018A000507
      910005058800070789000707880008098C0008088B0008098B001B1B8E00B7B7
      D500000000000303030303036464645D03030303030303030366646405004C3B
      5D030303030303646401024E4D575844415E030303036404692F32394240495A
      4A485D0303030368282A292D33373F4654524B6703032C27252626080833373E
      4753595565030330242608120F0834353D45515B5F63030330081619150E0834
      363C45505C600303081B211D18140C0834353A434F6203081B2323201C17130B
      0831386165030808080811231F080808080865030303030303031E2322082E2B
      56030303030303030303081B2308030303030303030303030303031023230803
      0303030303030303030303030908230803030303030303030303030303030A06
      071A0D030303}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 2
    OnClick = BB_IMPRIMIRClick
  end
  object BitBtn1: TBitBtn
    Left = 220
    Top = 248
    Width = 88
    Height = 57
    Caption = 'Sai&r'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      20000000000000040000C40E0000C40E00000000000000000000040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400000099FF0404040004040400040404000404040004040400040404000404
      04000404040004040400040404000000FFFF0404040004040400040404003333
      CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404003333
      CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
      040004040400040404000000FFFF040404000404040004040400040404000404
      04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
      0400040404000000FFFF04040400040404000404040004040400040404000404
      0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
      04000000FFFF000099FF04040400040404000404040004040400040404000404
      040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
      FFFF000099FF0404040004040400040404000404040004040400040404000404
      04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
      99FF040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
      0400040404000404040004040400040404000404040004040400040404000404
      04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
      99FF040404000404040004040400040404000404040004040400040404000404
      040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
      CCFF000099FF0404040004040400040404000404040004040400040404000404
      04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
      04000000CCFF000099FF04040400040404000404040004040400040404000000
      CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
      0400040404000000CCFF000099FF040404000404040004040400040404006666
      99FF0000CCFF666699FF04040400040404000404040004040400040404000404
      04000404040004040400040404000000CCFF0404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400040404000404
      0400040404000404040004040400040404000404040004040400}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object qResumoVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'pv.DT_MOV,'
      'pv.CAIXA,'
      'TP.descricao_pagamento,'
      'SUM(PV.VL_PAGAMENTO) AS Vendas'
      'FROM tb_pagamento_pdv PV'
      'LEFT OUTER JOIN tb_pdv P ON (P.id_pdv = PV.id_pdv)'
      
        'LEFT OUTER JOIN tb_tipo_pagamento TP ON (TP.id_tipo_pagamento = ' +
        'PV.id_tipo_pagamento)'
      'where PV.CAIXA = :CAIXA'
      'AND PV.DT_MOV = :DT_MOV'
      'GROUP BY'
      'pv.DT_MOV,'
      'pv.CAIXA,'
      'TP.descricao_pagamento'
      'ORDER BY SUM(PV.VL_PAGAMENTO) DESC'
      ''
      ''
      '')
    SQLConnection = DM.SqlConexao
    Left = 283
    Top = 192
    object qResumoVendasDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qResumoVendasCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qResumoVendasDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qResumoVendasVENDAS: TFMTBCDField
      FieldName = 'VENDAS'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object dspResumoVendas: TDataSetProvider
    DataSet = qResumoVendas
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 315
    Top = 192
  end
  object cdsResumoVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end>
    ProviderName = 'dspResumoVendas'
    Left = 347
    Top = 192
    object cdsResumoVendasDT_MOV: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DT_MOV'
      EditMask = '##/##/####'
    end
    object cdsResumoVendasCAIXA: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
    end
    object cdsResumoVendasDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsResumoVendasVENDAS: TFMTBCDField
      DisplayLabel = 'Vendas'
      FieldName = 'VENDAS'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsResumoVendas: TDataSource
    DataSet = cdsResumoVendas
    Left = 379
    Top = 192
  end
  object qCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' C.ID_REG,'
      ' C.ID_USUARIO,'
      ' U.NOME_USUARIO,'
      ' C.CAIXA,'
      ' C.STATUS'
      'FROM TB_REG_OPEN_CLOSE_CAIXA C'
      'JOIN TB_USUARIO U ON (U.ID_USUARIO = C.ID_USUARIO)'
      'WHERE C.DT_ABERTURA =:DATA')
    SQLConnection = DM.SqlConexao
    Left = 88
    Top = 128
    object qCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qCaixaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qCaixaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qCaixaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qCaixaID_REG: TIntegerField
      FieldName = 'ID_REG'
      Required = True
    end
  end
  object dspCaixa: TDataSetProvider
    DataSet = qCaixa
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 120
    Top = 128
  end
  object cdsCaixa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end>
    ProviderName = 'dspCaixa'
    Left = 152
    Top = 128
    object cdsCaixaID_REG: TIntegerField
      FieldName = 'ID_REG'
      Required = True
    end
    object cdsCaixaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsCaixaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsCaixaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsCaixaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
  end
  object dsCaixa: TDataSource
    DataSet = cdsCaixa
    Left = 184
    Top = 128
  end
end
