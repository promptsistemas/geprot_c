object frmVendaFiscal: TfrmVendaFiscal
  Left = 211
  Top = 25
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Vendas ECF'
  ClientHeight = 519
  ClientWidth = 758
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 448
    Top = 494
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 0
    Visible = False
    OnClick = Button1Click
  end
  object PageControl1: TPageControl
    Left = 1
    Top = 0
    Width = 761
    Height = 437
    ActivePage = TabSheet2
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Vendas'
      object Label1: TLabel
        Left = 5
        Top = 5
        Width = 61
        Height = 13
        Caption = 'CUPOM(S)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 4
        Top = 209
        Width = 117
        Height = 13
        Caption = 'ITEM(S) DO CUPOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 584
        Top = 205
        Width = 65
        Height = 17
        DataField = 'TOTVENDA'
        DataSource = dsTBvendaDTO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 544
        Top = 205
        Width = 20
        Height = 16
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 433
        Top = 207
        Width = 88
        Height = 13
        Caption = 'Total da Venda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 19
        Width = 742
        Height = 185
        Color = clBtnHighlight
        Ctl3D = False
        DataSource = dsVendaDTO
        FixedColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_MOVI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAMOVI'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCUPOM'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANCELADA'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MENSAGEM'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERADOR'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_ITEM'
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 223
        Width = 742
        Height = 201
        Color = 14811135
        Ctl3D = False
        DataSource = dsItemVendaDTO
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Visible = False
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAMOVI'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCUPOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Width = 132
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCOVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOALIQ'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDMEDI'
            Width = 56
            Visible = True
          end>
      end
      object DBGrid4: TDBGrid
        Left = 1
        Top = 20
        Width = 742
        Height = 178
        Color = clBtnHighlight
        Ctl3D = False
        DataSource = dsTBvendaDTO
        FixedColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid4DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAMOVIF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMCUPOM'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANCELADA'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MENSAGEM'
            Width = 205
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMSERIE'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERADOR'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTVENDA'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_ITEM'
            Width = 62
            Visible = True
          end>
      end
      object DBGrid5: TDBGrid
        Left = 1
        Top = 225
        Width = 743
        Height = 178
        Color = 14811135
        Ctl3D = False
        DataSource = dsTBitemVendaDTO
        FixedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid5DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'NUMCUPOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 208
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDMEDI'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDVENDA'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTA'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PCOVENDA'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOALIQ'
            Width = 75
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Redu'#231#245'es Z'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 4
        Top = 6
        Width = 743
        Height = 388
        Color = clBtnHighlight
        Ctl3D = False
        DataSource = dsReducaoZ
        FixedColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_MOVI'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GTOT_FIM'
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GTOT_INI'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR01'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMSERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONT_FIM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONT_INI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONT_REI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONT_Z'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REDUCAOZDTO_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR04'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR05'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR06'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR07'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR08'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR09'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR10'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR11'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR12'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR13'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR14'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR15'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR16'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR17'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR18'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALQ_TR19'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODLOJA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR01'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR04'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR05'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR06'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR07'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR08'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR09'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR10'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR11'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR12'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR13'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR14'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR15'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR16'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR17'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR18'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIP_TR19'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_ACRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_CANC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_DESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_INCI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_ISEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_SUBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR04'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR05'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR06'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR07'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR08'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR09'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR10'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR11'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR12'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR13'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR14'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR15'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR16'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR17'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR18'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOT_TR19'
            Visible = True
          end>
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 4
    Top = 440
    Width = 273
    Height = 74
    Caption = ' Per'#237'odo '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Label7: TLabel
      Left = 9
      Top = 19
      Width = 35
      Height = 13
      Caption = 'Inicial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 127
      Top = 19
      Width = 28
      Height = 13
      Caption = 'Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 105
      Top = 37
      Width = 9
      Height = 13
      Caption = 'A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEdit1: TMaskEdit
      Left = 10
      Top = 35
      Width = 88
      Height = 19
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '01/07/2014'
      OnEnter = MaskEdit1Enter
      OnExit = MaskEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object MaskEdit2: TMaskEdit
      Left = 127
      Top = 35
      Width = 87
      Height = 19
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '31/07/2015'
      OnExit = MaskEdit2Exit
      OnKeyPress = FormKeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 288
    Top = 490
    Width = 75
    Height = 25
    Caption = '&Atualizar'
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
      33333333333F8888883F33330000324334222222443333388F3833333388F333
      000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
      F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
      223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
      3338888300003AAAAAAA33333333333888888833333333330000333333333333
      333333333333333333FFFFFF000033333333333344444433FFFF333333888888
      00003A444333333A22222438888F333338F3333800003A2243333333A2222438
      F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
      22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
      33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
      3333333333338888883333330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 704
    Top = 448
    Width = 75
    Height = 25
    Caption = 'BitBtn3'
    TabOrder = 4
    Visible = False
    OnClick = BitBtn3Click
  end
  object Panel4: TPanel
    Left = 841
    Top = 96
    Width = 461
    Height = 49
    Color = clCream
    TabOrder = 5
    Visible = False
    object Gauge3: TGauge
      Left = 1
      Top = 19
      Width = 456
      Height = 23
      Progress = 0
    end
    object Label13: TLabel
      Left = 5
      Top = 3
      Width = 196
      Height = 13
      Caption = 'Aguarde......   Atualizando Vendas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qVendaDTO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dt_ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dt_fin'
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
      ' v.DT_MOVI,'
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
      'where v.DT_MOVI between :dt_ini and :dt_fin'
      'ORDER BY V.numcupom DESC , V.VENDADTO_ID'
      '')
    SQLConnection = ConexaoFiscal
    Left = 64
    Top = 96
    object qVendaDTOVENDADTO_ID: TLargeintField
      FieldName = 'VENDADTO_ID'
      Required = True
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
    object qVendaDTODT_MOVI: TDateField
      FieldName = 'DT_MOVI'
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
    Params = <
      item
        DataType = ftDate
        Name = 'dt_ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dt_fin'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendaDTO'
    Left = 128
    Top = 96
    object cdsVendaDTOVENDADTO_ID: TLargeintField
      FieldName = 'VENDADTO_ID'
      Required = True
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
      DisplayLabel = 'Data Mov'
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsVendaDTODT_MOVI: TDateField
      FieldName = 'DT_MOVI'
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
      DisplayLabel = 'Serie ECF'
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
      DisplayLabel = 'Total Cupom'
      FieldName = 'TOTVENDA'
    end
    object cdsVendaDTOTOT_ITEM: TFloatField
      DisplayLabel = 'Itens'
      FieldName = 'TOT_ITEM'
    end
    object cdsVendaDTOVALACRES: TFloatField
      FieldName = 'VALACRES'
    end
    object cdsVendaDTOVALDESC: TFloatField
      FieldName = 'VALDESC'
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
      ' I.DT_MOVI,'
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
    SQLConnection = ConexaoFiscal
    Left = 64
    Top = 136
    object qItemVendaDTOITEMVENDADTO_ID: TLargeintField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
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
    object qItemVendaDTODT_MOVI: TDateField
      FieldName = 'DT_MOVI'
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
    object cdsItemVendaDTOITEMVENDADTO_ID: TLargeintField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
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
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsItemVendaDTODT_MOVI: TDateField
      FieldName = 'DT_MOVI'
    end
    object cdsItemVendaDTODESCITEM: TFloatField
      DisplayLabel = 'Descri'#231#227'o'
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
      DisplayLabel = 'Vl.Unit'
      FieldName = 'PCOVENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsItemVendaDTOPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODUTO'
      Size = 256
    end
    object cdsItemVendaDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object cdsItemVendaDTOQTDVENDA: TFloatField
      FieldName = 'QTDVENDA'
    end
    object cdsItemVendaDTOTIPOALIQ: TStringField
      DisplayLabel = 'Tipo Aliq'
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object cdsItemVendaDTOUNIDMEDI: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDMEDI'
      Size = 256
    end
  end
  object dsItemVendaDTO: TDataSource
    DataSet = cdsItemVendaDTO
    Left = 168
    Top = 136
  end
  object qReducaoZ: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dt_ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dt_fin'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'R.*'
      'FROM REDUCAOZDTO R'
      'where r.DT_MOVI between :dt_ini and :dt_fin')
    SQLConnection = ConexaoFiscal
    Left = 68
    Top = 200
    object qReducaoZREDUCAOZDTO_ID: TLargeintField
      FieldName = 'REDUCAOZDTO_ID'
      Required = True
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
    object qReducaoZDT_MOVI: TDateField
      FieldName = 'DT_MOVI'
    end
  end
  object dspReducaoZ: TDataSetProvider
    DataSet = qReducaoZ
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 100
    Top = 200
  end
  object cdsReducaoZ: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dt_ini'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dt_fin'
        ParamType = ptInput
      end>
    ProviderName = 'dspReducaoZ'
    Left = 132
    Top = 200
    object cdsReducaoZREDUCAOZDTO_ID: TLargeintField
      FieldName = 'REDUCAOZDTO_ID'
      Required = True
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
      DisplayLabel = 'Total Venda'
      FieldName = 'GTOT_INI'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsReducaoZID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object cdsReducaoZNUMSERIE: TStringField
      DisplayLabel = 'N'#186' Serie'
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object cdsReducaoZTIP_TR01: TStringField
      DisplayLabel = 'Venda Liquid'
      FieldName = 'TIP_TR01'
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
    object cdsReducaoZTOT_TR01: TFloatField
      DisplayLabel = 'Venda Liq'
      FieldName = 'TOT_TR01'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
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
    object cdsReducaoZDT_MOVI: TDateField
      DisplayLabel = 'Data Mov'
      FieldName = 'DT_MOVI'
    end
  end
  object dsReducaoZ: TDataSource
    DataSet = cdsReducaoZ
    Left = 164
    Top = 200
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
    SQLConnection = DM.conexao
    Left = 440
    Top = 280
    object qTBvendaDTOVENDADTO_ID: TLargeintField
      FieldName = 'VENDADTO_ID'
      Required = True
    end
    object qTBvendaDTOCANCELADA: TStringField
      FieldName = 'CANCELADA'
      Size = 256
    end
    object qTBvendaDTOCFOP: TFloatField
      FieldName = 'CFOP'
    end
    object qTBvendaDTOCHV_NFE: TStringField
      FieldName = 'CHV_NFE'
      Size = 256
    end
    object qTBvendaDTOCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 256
    end
    object qTBvendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object qTBvendaDTODATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qTBvendaDTODATAMOVIF: TDateField
      FieldName = 'DATAMOVIF'
    end
    object qTBvendaDTOFORMALAN: TStringField
      FieldName = 'FORMALAN'
      Size = 256
    end
    object qTBvendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object qTBvendaDTOMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 256
    end
    object qTBvendaDTOMOD_NOTA: TFloatField
      FieldName = 'MOD_NOTA'
    end
    object qTBvendaDTONUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object qTBvendaDTONUMPRE: TFloatField
      FieldName = 'NUMPRE'
    end
    object qTBvendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qTBvendaDTONUM_NOTA: TFloatField
      FieldName = 'NUM_NOTA'
    end
    object qTBvendaDTOOPERADOR: TStringField
      FieldName = 'OPERADOR'
      Size = 256
    end
    object qTBvendaDTOSER_NOTA: TStringField
      FieldName = 'SER_NOTA'
      Size = 256
    end
    object qTBvendaDTOSUB_NOTA: TStringField
      FieldName = 'SUB_NOTA'
      Size = 256
    end
    object qTBvendaDTOTOTVENDA: TFloatField
      FieldName = 'TOTVENDA'
    end
    object qTBvendaDTOTOT_ITEM: TFloatField
      FieldName = 'TOT_ITEM'
    end
    object qTBvendaDTOVALACRES: TFloatField
      FieldName = 'VALACRES'
    end
    object qTBvendaDTOVALDESC: TFloatField
      FieldName = 'VALDESC'
    end
    object qTBvendaDTOVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
  end
  object dspTBvendaDTO: TDataSetProvider
    DataSet = qTBvendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 472
    Top = 280
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
    Left = 504
    Top = 280
    object cdsTBvendaDTOVENDADTO_ID: TLargeintField
      FieldName = 'VENDADTO_ID'
      Required = True
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
      FieldName = 'CLIENTE'
      Size = 256
    end
    object cdsTBvendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object cdsTBvendaDTODATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object cdsTBvendaDTODATAMOVIF: TDateField
      DisplayLabel = 'Data Mov'
      FieldName = 'DATAMOVIF'
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
      DisplayLabel = 'Mensagem'
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
      DisplayLabel = 'Serie ECF'
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
      DisplayLabel = 'Total Cupom'
      FieldName = 'TOTVENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
    end
    object cdsTBvendaDTOTOT_ITEM: TFloatField
      DisplayLabel = 'Total Itens'
      FieldName = 'TOT_ITEM'
    end
    object cdsTBvendaDTOVALACRES: TFloatField
      FieldName = 'VALACRES'
    end
    object cdsTBvendaDTOVALDESC: TFloatField
      FieldName = 'VALDESC'
    end
    object cdsTBvendaDTOVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 256
    end
  end
  object dsTBvendaDTO: TDataSource
    DataSet = cdsTBvendaDTO
    Left = 536
    Top = 280
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
      'LEFT OUTER JOIN TB_PRODUTO P ON (P.REFERENCIA = I.PRODUTO)'
      'WHERE I.NUMCUPOM = :NUMCUPOM')
    SQLConnection = DM.conexao
    Left = 440
    Top = 320
    object qTBitemVendaDTOITEMVENDADTO_ID: TLargeintField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
    end
    object qTBitemVendaDTOACREITEM: TFloatField
      FieldName = 'ACREITEM'
    end
    object qTBitemVendaDTOACREVEND: TFloatField
      FieldName = 'ACREVEND'
    end
    object qTBitemVendaDTOALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qTBitemVendaDTOCODLOJA: TFloatField
      FieldName = 'CODLOJA'
    end
    object qTBitemVendaDTODATAMOVI: TStringField
      FieldName = 'DATAMOVI'
      Size = 256
    end
    object qTBitemVendaDTODESCITEM: TFloatField
      FieldName = 'DESCITEM'
    end
    object qTBitemVendaDTODESCVEND: TFloatField
      FieldName = 'DESCVEND'
    end
    object qTBitemVendaDTOGUID: TStringField
      FieldName = 'GUID'
      Size = 256
    end
    object qTBitemVendaDTOGUIDPROD: TStringField
      FieldName = 'GUIDPROD'
      Size = 256
    end
    object qTBitemVendaDTOID: TStringField
      FieldName = 'ID'
      Size = 256
    end
    object qTBitemVendaDTONUMCUPOM: TFloatField
      FieldName = 'NUMCUPOM'
    end
    object qTBitemVendaDTONUMSERIE: TStringField
      FieldName = 'NUMSERIE'
      Size = 256
    end
    object qTBitemVendaDTOPCOVENDA: TFloatField
      FieldName = 'PCOVENDA'
    end
    object qTBitemVendaDTOPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 256
    end
    object qTBitemVendaDTOQTDEMBAL: TFloatField
      FieldName = 'QTDEMBAL'
    end
    object qTBitemVendaDTOQTDVENDA: TFloatField
      FieldName = 'QTDVENDA'
    end
    object qTBitemVendaDTOTIPOALIQ: TStringField
      FieldName = 'TIPOALIQ'
      Size = 256
    end
    object qTBitemVendaDTOUNIDMEDI: TStringField
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object qTBitemVendaDTOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qTBitemVendaDTOID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qTBitemVendaDTOCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object qTBitemVendaDTODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qTBitemVendaDTOEMBALGEM: TStringField
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object qTBitemVendaDTOCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
  end
  object dspTBitemVendaDTO: TDataSetProvider
    DataSet = qTBitemVendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poPropogateChanges]
    Left = 472
    Top = 320
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
    Left = 504
    Top = 320
    object cdsTBitemVendaDTOITEMVENDADTO_ID: TLargeintField
      FieldName = 'ITEMVENDADTO_ID'
      Required = True
    end
    object cdsTBitemVendaDTOACREITEM: TFloatField
      FieldName = 'ACREITEM'
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
      DisplayLabel = 'Vl.Unit'
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
      DisplayLabel = 'Unid'
      FieldName = 'UNIDMEDI'
      Size = 256
    end
    object cdsTBitemVendaDTOID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsTBitemVendaDTOID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsTBitemVendaDTOCANCELADO: TStringField
      FieldName = 'CANCELADO'
      Size = 1
    end
    object cdsTBitemVendaDTODESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsTBitemVendaDTOEMBALGEM: TStringField
      FieldName = 'EMBALGEM'
      Size = 10
    end
    object cdsTBitemVendaDTOCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
  end
  object dsTBitemVendaDTO: TDataSource
    DataSet = cdsTBitemVendaDTO
    Left = 536
    Top = 320
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
    SQLConnection = DM.conexao
    StoredProcName = 'INSERT_TB_VENDADTO'
    Left = 584
    Top = 328
  end
  object dsp_spTBvendaDTO: TDataSetProvider
    DataSet = sp_TBvendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 328
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
    Left = 648
    Top = 328
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
    SQLConnection = DM.conexao
    StoredProcName = 'INSERT_TB_ITEM_VENDADTO'
    Left = 584
    Top = 296
  end
  object dsp_sp_ItemVendaDTO: TDataSetProvider
    DataSet = sp_ItemVendaDTO
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 616
    Top = 296
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
    Left = 648
    Top = 296
  end
  object Timer1: TTimer
    Interval = 50000
    OnTimer = Timer1Timer
    Left = 384
    Top = 304
  end
  object sp_DelCupomCancelado: TSQLStoredProc
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.conexao
    StoredProcName = 'DEL_CUPOM_CANCELADO'
    Left = 581
    Top = 261
  end
  object dspDelCupomCancelado: TDataSetProvider
    DataSet = sp_DelCupomCancelado
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh]
    Left = 612
    Top = 261
  end
  object cdsDelCupomCancelado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDelCupomCancelado'
    Left = 645
    Top = 261
  end
  object ConexaoFiscal: TSQLConnection
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
      'Database=127.0.0.1:c:\Sintegra\bdados\exportacao.fdb'
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
    Left = 80
    Top = 32
  end
end
