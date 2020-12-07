object frmNFCe: TfrmNFCe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Prompt - NFC-e'
  ClientHeight = 666
  ClientWidth = 1257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sTEFDial: TShape
    Left = 172
    Top = 627
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object sTEFDisc: TShape
    Left = 265
    Top = 626
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object sHiperTEF: TShape
    Left = 358
    Top = 625
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object sCliSiTef: TShape
    Left = 460
    Top = 623
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object sVSPague: TShape
    Left = 547
    Top = 623
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object sAuttar: TShape
    Left = 645
    Top = 623
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object Label64: TLabel
    Left = 856
    Top = 185
    Width = 117
    Height = 13
    Alignment = taRightJustify
    Caption = 'Valor total da Venda'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lECFName: TLabel
    Left = 750
    Top = 626
    Width = 48
    Height = 13
    Caption = 'lECFName'
    Color = clBtnFace
    ParentColor = False
  end
  object sECF: TShape
    Left = 727
    Top = 626
    Width = 17
    Height = 16
    Brush.Color = clRed
    Shape = stCircle
  end
  object PageControl1: TPageControl
    Left = -96
    Top = 648
    Width = 869
    Height = 245
    ActivePage = TabSheet1
    TabOrder = 0
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Corpo da Nota'
      object P_ROMANEIO: TPanel
        Left = 1
        Top = -1
        Width = 860
        Height = 270
        Color = clInfoBk
        Ctl3D = False
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        object Label2: TLabel
          Left = 2
          Top = 30
          Width = 67
          Height = 13
          Caption = 'N'#186' Nota Fiscal'
        end
        object Label3: TLabel
          Left = 161
          Top = 30
          Width = 56
          Height = 13
          Caption = 'C'#243'd.Cliente'
        end
        object Label9: TLabel
          Left = 218
          Top = 29
          Width = 63
          Height = 13
          Caption = 'Nome Cliente'
        end
        object Label10: TLabel
          Left = 82
          Top = 107
          Width = 64
          Height = 13
          Caption = 'Data Emiss'#227'o'
        end
        object Label11: TLabel
          Left = 2
          Top = 70
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
        end
        object Label12: TLabel
          Left = 312
          Top = 70
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label13: TLabel
          Left = 593
          Top = 70
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label14: TLabel
          Left = 832
          Top = 70
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label15: TLabel
          Left = 522
          Top = 29
          Width = 48
          Height = 13
          Caption = 'CPF/CNPJ'
        end
        object Label16: TLabel
          Left = 712
          Top = 29
          Width = 57
          Height = 13
          Caption = 'RG/Insc.Est'
        end
        object Label17: TLabel
          Left = 2
          Top = 107
          Width = 19
          Height = 13
          Caption = 'Cep'
        end
        object Label20: TLabel
          Left = 78
          Top = 30
          Width = 24
          Height = 13
          Caption = 'Serie'
        end
        object Label21: TLabel
          Left = 107
          Top = 30
          Width = 41
          Height = 13
          Caption = 'Or'#231'amto'
        end
        object SpeedButton1: TSpeedButton
          Left = 417
          Top = 21
          Width = 23
          Height = 21
          Caption = '1'
          Visible = False
        end
        object Label4: TLabel
          Left = 160
          Top = 107
          Width = 52
          Height = 13
          Caption = 'Data Sa'#237'da'
        end
        object Label5: TLabel
          Left = 226
          Top = 107
          Width = 27
          Height = 13
          Caption = 'CFOP'
        end
        object Label6: TLabel
          Left = 262
          Top = 107
          Width = 94
          Height = 13
          Caption = 'Natureza Opera'#231#227'o'
        end
        object SpeedButton2: TSpeedButton
          Left = 446
          Top = 17
          Width = 23
          Height = 25
          Caption = '2'
          Visible = False
        end
        object Label7: TLabel
          Left = 266
          Top = 70
          Width = 37
          Height = 13
          Caption = 'Numero'
        end
        object Label23: TLabel
          Left = 464
          Top = 107
          Width = 73
          Height = 13
          Caption = 'Quant.Volumes'
        end
        object Label24: TLabel
          Left = 543
          Top = 107
          Width = 36
          Height = 13
          Caption = 'Especie'
        end
        object Label8: TLabel
          Left = 514
          Top = 70
          Width = 69
          Height = 13
          Caption = 'C'#243'd. Munic'#237'pio'
        end
        object Label31: TLabel
          Left = 3
          Top = 11
          Width = 75
          Height = 13
          Caption = 'Nome Empresa:'
        end
        object Label1: TLabel
          Left = 2
          Top = 146
          Width = 80
          Height = 13
          Caption = 'Situa'#231#227'o da Nf-e'
        end
        object Label18: TLabel
          Left = 244
          Top = 146
          Width = 55
          Height = 13
          Caption = 'Chave Nf-e'
        end
        object Label30: TLabel
          Left = 564
          Top = 146
          Width = 144
          Height = 13
          Caption = 'Protocolo de Autoriza'#231#227'o Nf-e'
        end
        object Label89: TLabel
          Left = 520
          Top = 11
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object DBText1: TDBText
          Left = 565
          Top = 10
          Width = 65
          Height = 17
          DataField = 'ID_LOJA'
          DataSource = DM.dsNFCe
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label90: TLabel
          Left = 637
          Top = 107
          Width = 32
          Height = 13
          Caption = 'Recibo'
        end
        object Label91: TLabel
          Left = 111
          Top = 146
          Width = 83
          Height = 13
          Caption = 'Data Autoriza'#231#227'o'
        end
        object DBEdit1: TDBEdit
          Left = 78
          Top = 44
          Width = 27
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'N_SERIE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 218
          Top = 44
          Width = 303
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CLIENTE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 82
          Top = 122
          Width = 76
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'DT_EMISSAO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 2
          Top = 85
          Width = 263
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ENDERECO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit8: TDBEdit
          Left = 312
          Top = 85
          Width = 200
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'BAIRRO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit9: TDBEdit
          Left = 593
          Top = 85
          Width = 239
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CIDADE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit10: TDBEdit
          Left = 833
          Top = 85
          Width = 22
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'UF'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object DBEdit11: TDBEdit
          Left = 522
          Top = 44
          Width = 189
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CNPJ_CPF'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object DBEdit12: TDBEdit
          Left = 712
          Top = 44
          Width = 143
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'INSC_RG'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit13: TDBEdit
          Left = 2
          Top = 122
          Width = 79
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CEP'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit16: TDBEdit
          Left = 108
          Top = 44
          Width = 52
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ID_PDV'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit17: TDBEdit
          Left = 161
          Top = 44
          Width = 55
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ID_CLIENTE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object DBEdit5: TDBEdit
          Left = 160
          Top = 122
          Width = 64
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'DT_SAIDA'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 226
          Top = 122
          Width = 34
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CFOP'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 262
          Top = 122
          Width = 201
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'DESC_CFOP'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit19: TDBEdit
          Left = 266
          Top = 85
          Width = 45
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'NUMERO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object DBEdit14: TDBEdit
          Left = 465
          Top = 122
          Width = 76
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'QT_VOL'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit15: TDBEdit
          Left = 543
          Top = 122
          Width = 92
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'ESPECIE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit25: TDBEdit
          Left = 2
          Top = 44
          Width = 74
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'NR_NFCE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 19
        end
        object DBEdit26: TDBEdit
          Left = 513
          Top = 85
          Width = 78
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CODIGO_MUNIC'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit27: TDBEdit
          Left = 2
          Top = 162
          Width = 107
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'SITUACAO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 21
        end
        object DBEdit29: TDBEdit
          Left = 244
          Top = 162
          Width = 318
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'CHAVE_NFE'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit30: TDBEdit
          Left = 564
          Top = 162
          Width = 290
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'PROTOCOLO_AUTORIZACAO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 23
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 81
          Top = 8
          Width = 435
          Height = 19
          DataField = 'LOJA'
          DataSource = DM.dsNFCe
          KeyField = 'R_SOCIAL'
          ListField = 'R_SOCIAL'
          ListSource = DM.dsEmpresa
          TabOrder = 1
        end
        object DBEdit31: TDBEdit
          Left = 637
          Top = 122
          Width = 218
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'RECIBO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 24
        end
        object DBEdit32: TDBEdit
          Left = 111
          Top = 162
          Width = 131
          Height = 19
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'DT_AUTORIZACAO'
          DataSource = DM.dsNFCe
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 25
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Notas Emitidas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 861
        Height = 214
        Ctl3D = False
        DataSource = DM.dsNFCe
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_EMISSAO'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NR_NFCE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'N_SERIE'
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_AUTORIZACAO'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROTOCOLO_AUTORIZACAO'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAVE_NFE'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_TOTAL_PRODUTO'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_TOTAL_DESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_TOTAL_NOTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ICMS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ICMS_ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BC_VL_ICMS_ST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QT_VOL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESPECIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INSC_RG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_SAIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Dados NF-e'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoDados: TMemo
        Left = 0
        Top = 0
        Width = 861
        Height = 217
        Align = alClient
        Lines.Strings = (
          '')
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Resposta NF-e'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 861
        Height = 217
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'Resposta WS NF-e'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memoRespWS: TMemo
        Left = 0
        Top = 0
        Width = 861
        Height = 217
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'Resp Consulta NF-e'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object TreeViewRetornoConsulta: TTreeView
        Left = 0
        Top = 0
        Width = 861
        Height = 217
        Align = alClient
        Indent = 19
        TabOrder = 0
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'XML Resposta'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object WBResposta: TWebBrowser
        Left = 0
        Top = 0
        Width = 861
        Height = 217
        Align = alClient
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        ExplicitWidth = 388
        ExplicitHeight = 279
        ControlData = {
          4C000000FD5800006D1600000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object BtnEnviar: TBitBtn
    Left = 2
    Top = 585
    Width = 164
    Height = 62
    Caption = 'Assinar e &Enviar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      33333333333333C033333333333333CC0333000000CCCCCCC0330FFFF0CCCCCC
      CC030FFFF0CCCCCCCCC00F00F0CCCCCCCC030FFFF0CCCCCCC0330F00FFFFF0CC
      03330FFFFFFFF0C033330F00F000000333330FFFF0FF033333330F08F0F03333
      33330FFFF0033333333300000033333333333333333333333333}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 1
    OnClick = BtnEnviarClick
  end
  object PageControl2: TPageControl
    Left = 355
    Top = 648
    Width = 386
    Height = 341
    ActivePage = TabSheet3
    TabOrder = 2
    Visible = False
    object TabSheet3: TTabSheet
      Caption = 'Configura'#231#245'es'
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 378
        Height = 313
        ActivePage = TabSheet6
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'Certificado'
          object lSSLLib: TLabel
            Left = 39
            Top = 16
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'SSLLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lCryptLib: TLabel
            Left = 29
            Top = 43
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'CryptLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lHttpLib: TLabel
            Left = 35
            Top = 70
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'HttpLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lXmlSign: TLabel
            Left = 17
            Top = 97
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'XMLSignLib'
            Color = clBtnFace
            ParentColor = False
          end
          object gbCertificado: TGroupBox
            Left = 2
            Top = 118
            Width = 263
            Height = 144
            Caption = 'Certificado'
            TabOrder = 0
            object Label44: TLabel
              Left = 8
              Top = 16
              Width = 41
              Height = 13
              Caption = 'Caminho'
            end
            object Label45: TLabel
              Left = 8
              Top = 56
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object sbtnCaminhoCert: TSpeedButton
              Left = 235
              Top = 32
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
            end
            object Label46: TLabel
              Left = 8
              Top = 96
              Width = 79
              Height = 13
              Caption = 'N'#250'mero de S'#233'rie'
            end
            object sbtnGetCert: TSpeedButton
              Left = 235
              Top = 110
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
            end
            object SpeedButton3: TSpeedButton
              Left = 206
              Top = 110
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
            end
            object edtCaminho: TEdit
              Left = 8
              Top = 32
              Width = 225
              Height = 21
              TabOrder = 0
            end
            object edtSenha: TEdit
              Left = 8
              Top = 72
              Width = 249
              Height = 21
              PasswordChar = '*'
              TabOrder = 1
            end
            object edtNumSerie: TEdit
              Left = 8
              Top = 112
              Width = 193
              Height = 21
              TabOrder = 2
            end
          end
          object Button2: TButton
            Left = 8
            Top = 266
            Width = 99
            Height = 25
            Caption = 'Data de Validade'
            TabOrder = 1
          end
          object Button3: TButton
            Left = 112
            Top = 266
            Width = 73
            Height = 25
            Caption = 'Num.S'#233'rie'
            TabOrder = 2
          end
          object Button4: TButton
            Left = 8
            Top = 298
            Width = 99
            Height = 25
            Caption = 'Subject Name'
            TabOrder = 3
          end
          object Button5: TButton
            Left = 112
            Top = 298
            Width = 73
            Height = 25
            Caption = 'CNPJ'
            TabOrder = 4
          end
          object Button10: TButton
            Left = 188
            Top = 298
            Width = 76
            Height = 25
            Caption = 'Issuer Name'
            TabOrder = 5
          end
          object GroupBox2: TGroupBox
            Left = 2
            Top = 328
            Width = 263
            Height = 69
            Caption = 'Calculo de Hash e assinatura'
            TabOrder = 6
            object Edit1: TEdit
              Left = 3
              Top = 14
              Width = 249
              Height = 21
              TabOrder = 0
              Text = '0548133600013704583493000190'
            end
            object Button6: TButton
              Left = 8
              Top = 41
              Width = 99
              Height = 25
              Caption = 'SHA256+RSA'
              TabOrder = 1
            end
            object cbAssinar: TCheckBox
              Left = 144
              Top = 41
              Width = 54
              Height = 19
              Caption = 'Assinar'
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
          end
          object Button7: TButton
            Left = 8
            Top = 403
            Width = 128
            Height = 25
            Caption = 'HTTPS sem Certificado'
            TabOrder = 7
          end
          object Button9: TButton
            Left = 144
            Top = 403
            Width = 115
            Height = 25
            Caption = 'Leitura de X509'
            TabOrder = 8
          end
          object cbSSLLib: TComboBox
            Left = 75
            Top = 81
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 9
          end
          object cbCryptLib: TComboBox
            Left = 80
            Top = 35
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 10
          end
          object cbHttpLib: TComboBox
            Left = 80
            Top = 62
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 11
          end
          object cbXmlSignLib: TComboBox
            Left = 80
            Top = 89
            Width = 160
            Height = 21
            Style = csDropDownList
            TabOrder = 12
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Geral'
          ImageIndex = 1
          object GroupBox3: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 381
            Caption = 'Geral'
            TabOrder = 0
            object sbtnPathSalvar: TSpeedButton
              Left = 235
              Top = 311
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
            end
            object Label47: TLabel
              Left = 8
              Top = 88
              Width = 86
              Height = 13
              Caption = 'Forma de Emiss'#227'o'
            end
            object Label48: TLabel
              Left = 8
              Top = 50
              Width = 72
              Height = 13
              Caption = 'Formato Alerta'
            end
            object Label49: TLabel
              Left = 8
              Top = 126
              Width = 120
              Height = 13
              Caption = 'Modelo Documento Fiscal'
            end
            object Label50: TLabel
              Left = 8
              Top = 165
              Width = 119
              Height = 13
              Caption = 'Vers'#227'o Documento Fiscal'
            end
            object Label51: TLabel
              Left = 8
              Top = 203
              Width = 73
              Height = 13
              Caption = 'IdToken/IdCSC'
            end
            object Label52: TLabel
              Left = 8
              Top = 241
              Width = 53
              Height = 13
              Caption = 'Token/CSC'
            end
            object Label53: TLabel
              Left = 8
              Top = 336
              Width = 198
              Height = 13
              Caption = 'Diret'#243'rios com os arquivos XSD(Schemas)'
            end
            object spPathSchemas: TSpeedButton
              Left = 235
              Top = 351
              Width = 23
              Height = 24
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
            end
            object edtPathLogs: TEdit
              Left = 8
              Top = 315
              Width = 228
              Height = 21
              TabOrder = 0
            end
            object ckSalvar: TCheckBox
              Left = 8
              Top = 299
              Width = 209
              Height = 15
              Caption = 'Salvar Arquivos de Envio e Resposta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object cbFormaEmissao: TComboBox
              Left = 8
              Top = 104
              Width = 248
              Height = 21
              TabOrder = 2
            end
            object cbxAtualizarXML: TCheckBox
              Left = 8
              Top = 16
              Width = 97
              Height = 17
              Caption = 'Atualizar XML'
              TabOrder = 3
            end
            object cbxExibirErroSchema: TCheckBox
              Left = 8
              Top = 32
              Width = 129
              Height = 17
              Caption = 'Exibir Erro Schema'
              TabOrder = 4
            end
            object edtFormatoAlerta: TEdit
              Left = 8
              Top = 66
              Width = 248
              Height = 21
              TabOrder = 5
            end
            object cbModeloDF: TComboBox
              Left = 8
              Top = 142
              Width = 248
              Height = 21
              TabOrder = 6
            end
            object cbxRetirarAcentos: TCheckBox
              Left = 8
              Top = 281
              Width = 193
              Height = 17
              Caption = 'Retirar Acentos dos XMLs enviados'
              TabOrder = 7
            end
            object cbVersaoDF: TComboBox
              Left = 8
              Top = 181
              Width = 248
              Height = 21
              TabOrder = 8
            end
            object edtIdToken: TEdit
              Left = 8
              Top = 219
              Width = 248
              Height = 21
              TabOrder = 9
            end
            object edtToken: TEdit
              Left = 8
              Top = 257
              Width = 248
              Height = 21
              TabOrder = 10
            end
            object edtPathSchemas: TEdit
              Left = 8
              Top = 352
              Width = 228
              Height = 21
              TabOrder = 11
            end
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'WebService'
          ImageIndex = 2
          object GroupBox4: TGroupBox
            Left = 0
            Top = 4
            Width = 265
            Height = 190
            Caption = 'WebService'
            TabOrder = 0
            object Label54: TLabel
              Left = 8
              Top = 16
              Width = 121
              Height = 13
              Caption = 'Selecione UF de Destino:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object lTimeOut: TLabel
              Left = 167
              Top = 116
              Width = 40
              Height = 13
              Caption = 'TimeOut'
              Color = clBtnFace
              ParentColor = False
            end
            object lSSLLib1: TLabel
              Left = 19
              Top = 168
              Width = 41
              Height = 13
              Alignment = taRightJustify
              Caption = 'SSLType'
              Color = clBtnFace
              ParentColor = False
            end
            object cbxVisualizar: TCheckBox
              Left = 8
              Top = 118
              Width = 153
              Height = 17
              Caption = 'Visualizar Mensagem'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object cbUF: TComboBox
              Left = 8
              Top = 32
              Width = 249
              Height = 24
              Style = csDropDownList
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemIndex = 24
              ParentFont = False
              TabOrder = 1
              Text = 'SP'
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MT'
                'MS'
                'MG'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
            object rgTipoAmb: TRadioGroup
              Left = 8
              Top = 61
              Width = 249
              Height = 52
              Caption = 'Selecione o Ambiente de Destino'
              Columns = 2
              ItemIndex = 0
              Items.Strings = (
                'Produ'#231#227'o'
                'Homologa'#231#227'o')
              TabOrder = 2
            end
            object cbxSalvarSOAP: TCheckBox
              Left = 8
              Top = 136
              Width = 153
              Height = 17
              Caption = 'Salvar envelope SOAP'
              TabOrder = 3
            end
            object seTimeOut: TSpinEdit
              Left = 167
              Top = 132
              Width = 66
              Height = 22
              Increment = 10
              MaxValue = 999999
              MinValue = 1000
              TabOrder = 4
              Value = 5000
            end
            object cbSSLType: TComboBox
              Left = 72
              Top = 160
              Width = 160
              Height = 21
              Hint = 'Depende de configura'#231#227'o de  SSL.HttpLib'
              Style = csDropDownList
              TabOrder = 5
            end
          end
          object gbProxy: TGroupBox
            Left = 0
            Top = 283
            Width = 265
            Height = 104
            Caption = 'Proxy'
            TabOrder = 1
            object Label55: TLabel
              Left = 8
              Top = 16
              Width = 22
              Height = 13
              Caption = 'Host'
            end
            object Label56: TLabel
              Left = 208
              Top = 16
              Width = 26
              Height = 13
              Caption = 'Porta'
            end
            object Label57: TLabel
              Left = 8
              Top = 56
              Width = 36
              Height = 13
              Caption = 'Usu'#225'rio'
            end
            object Label58: TLabel
              Left = 138
              Top = 56
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object edtProxyHost: TEdit
              Left = 8
              Top = 32
              Width = 193
              Height = 21
              TabOrder = 0
            end
            object edtProxyPorta: TEdit
              Left = 208
              Top = 32
              Width = 50
              Height = 21
              TabOrder = 1
            end
            object edtProxyUser: TEdit
              Left = 8
              Top = 72
              Width = 123
              Height = 21
              TabOrder = 2
            end
            object edtProxySenha: TEdit
              Left = 135
              Top = 72
              Width = 123
              Height = 21
              PasswordChar = '*'
              TabOrder = 3
            end
          end
          object gbxRetornoEnvio: TGroupBox
            Left = 0
            Top = 200
            Width = 265
            Height = 77
            Caption = 'Retorno de Envio de NFe'
            TabOrder = 2
            object Label59: TLabel
              Left = 93
              Top = 27
              Width = 51
              Height = 13
              Caption = 'Tentativas'
            end
            object Label60: TLabel
              Left = 176
              Top = 27
              Width = 44
              Height = 13
              Caption = 'Intervalo'
            end
            object Label61: TLabel
              Left = 8
              Top = 27
              Width = 45
              Height = 13
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              Caption = 'Aguardar'
            end
            object cbxAjustarAut: TCheckBox
              Left = 8
              Top = 12
              Width = 234
              Height = 17
              Caption = 'Ajustar Automaticamente prop. "Aguardar"'
              TabOrder = 0
            end
            object edtTentativas: TEdit
              Left = 93
              Top = 43
              Width = 57
              Height = 21
              TabOrder = 2
            end
            object edtIntervalo: TEdit
              Left = 176
              Top = 43
              Width = 57
              Height = 21
              TabOrder = 3
            end
            object edtAguardar: TEdit
              Left = 8
              Top = 43
              Width = 57
              Height = 21
              Hint = 
                'Aguardar quantos segundos para primeira consulta de retorno de e' +
                'nvio'
              TabOrder = 1
            end
          end
        end
        object TabSheet12: TTabSheet
          Caption = 'Emitente'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label62: TLabel
            Left = 8
            Top = 4
            Width = 25
            Height = 13
            Caption = 'CNPJ'
          end
          object Label63: TLabel
            Left = 136
            Top = 4
            Width = 43
            Height = 13
            Caption = 'Insc.Est.'
          end
          object Label65: TLabel
            Left = 8
            Top = 44
            Width = 60
            Height = 13
            Caption = 'Raz'#227'o Social'
          end
          object Label66: TLabel
            Left = 8
            Top = 84
            Width = 41
            Height = 13
            Caption = 'Fantasia'
          end
          object Label67: TLabel
            Left = 8
            Top = 164
            Width = 55
            Height = 13
            Caption = 'Logradouro'
          end
          object Label68: TLabel
            Left = 208
            Top = 164
            Width = 37
            Height = 13
            Caption = 'N'#250'mero'
          end
          object Label69: TLabel
            Left = 8
            Top = 204
            Width = 65
            Height = 13
            Caption = 'Complemento'
          end
          object Label70: TLabel
            Left = 136
            Top = 204
            Width = 28
            Height = 13
            Caption = 'Bairro'
          end
          object Label71: TLabel
            Left = 8
            Top = 244
            Width = 62
            Height = 13
            Caption = 'C'#243'd. Cidade '
          end
          object Label72: TLabel
            Left = 76
            Top = 244
            Width = 33
            Height = 13
            Caption = 'Cidade'
          end
          object Label73: TLabel
            Left = 225
            Top = 244
            Width = 13
            Height = 13
            Caption = 'UF'
          end
          object Label74: TLabel
            Left = 136
            Top = 124
            Width = 19
            Height = 13
            Caption = 'CEP'
          end
          object Label75: TLabel
            Left = 8
            Top = 124
            Width = 24
            Height = 13
            Caption = 'Fone'
          end
          object edtEmitCNPJ: TEdit
            Left = 8
            Top = 20
            Width = 123
            Height = 21
            TabOrder = 0
          end
          object edtEmitIE: TEdit
            Left = 137
            Top = 20
            Width = 123
            Height = 21
            TabOrder = 1
          end
          object edtEmitRazao: TEdit
            Left = 8
            Top = 60
            Width = 252
            Height = 21
            TabOrder = 2
          end
          object edtEmitFantasia: TEdit
            Left = 8
            Top = 100
            Width = 252
            Height = 21
            TabOrder = 3
          end
          object edtEmitFone: TEdit
            Left = 8
            Top = 140
            Width = 125
            Height = 21
            TabOrder = 4
          end
          object edtEmitCEP: TEdit
            Left = 137
            Top = 140
            Width = 123
            Height = 21
            TabOrder = 5
          end
          object edtEmitLogradouro: TEdit
            Left = 8
            Top = 180
            Width = 196
            Height = 21
            TabOrder = 6
          end
          object edtEmitNumero: TEdit
            Left = 210
            Top = 180
            Width = 50
            Height = 21
            TabOrder = 7
          end
          object edtEmitComp: TEdit
            Left = 8
            Top = 220
            Width = 123
            Height = 21
            TabOrder = 8
          end
          object edtEmitBairro: TEdit
            Left = 137
            Top = 220
            Width = 123
            Height = 21
            TabOrder = 9
          end
          object edtEmitCodCidade: TEdit
            Left = 8
            Top = 260
            Width = 61
            Height = 21
            TabOrder = 10
          end
          object edtEmitCidade: TEdit
            Left = 76
            Top = 260
            Width = 142
            Height = 21
            TabOrder = 11
          end
          object edtEmitUF: TEdit
            Left = 225
            Top = 260
            Width = 35
            Height = 21
            TabOrder = 12
          end
        end
        object TabSheet13: TTabSheet
          Caption = 'Arquivos'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object sbPathNFe: TSpeedButton
            Left = 240
            Top = 130
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label76: TLabel
            Left = 6
            Top = 116
            Width = 94
            Height = 13
            Caption = 'Pasta Arquivos NFe'
          end
          object Label77: TLabel
            Left = 6
            Top = 154
            Width = 143
            Height = 13
            Caption = 'Pasta Arquivos Cancelamento'
          end
          object sbPathCan: TSpeedButton
            Left = 240
            Top = 168
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label78: TLabel
            Left = 6
            Top = 192
            Width = 198
            Height = 13
            Caption = 'Pasta Arquivos CC-e - Carta de Corre'#231#227'o'
          end
          object sbPathCCe: TSpeedButton
            Left = 240
            Top = 206
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label79: TLabel
            Left = 6
            Top = 230
            Width = 129
            Height = 13
            Caption = 'Pasta Arquivos Inutiliza'#231#227'o'
          end
          object sbPathInu: TSpeedButton
            Left = 240
            Top = 244
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label80: TLabel
            Left = 6
            Top = 268
            Width = 101
            Height = 13
            Caption = 'Pasta Arquivos DPEC'
          end
          object sbPathDPEC: TSpeedButton
            Left = 240
            Top = 282
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object Label81: TLabel
            Left = 6
            Top = 306
            Width = 109
            Height = 13
            Caption = 'Pasta Arquivos Evento'
          end
          object sbPathEvento: TSpeedButton
            Left = 240
            Top = 320
            Width = 23
            Height = 24
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
              07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
              0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
              33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
          end
          object cbxSalvarArqs: TCheckBox
            Left = 6
            Top = 0
            Width = 210
            Height = 17
            Caption = 'Salvar Arquivos em Pastas Separadas'
            TabOrder = 0
          end
          object cbxPastaMensal: TCheckBox
            Left = 6
            Top = 16
            Width = 210
            Height = 17
            Caption = 'Criar Pastas Mensalmente'
            TabOrder = 1
          end
          object cbxAdicionaLiteral: TCheckBox
            Left = 6
            Top = 32
            Width = 210
            Height = 17
            Caption = 'Adicionar Literal no nome das pastas'
            TabOrder = 2
          end
          object cbxEmissaoPathNFe: TCheckBox
            Left = 6
            Top = 48
            Width = 233
            Height = 17
            Caption = 'Salvar NFe pelo campo Data de Emiss'#227'o'
            TabOrder = 3
          end
          object cbxSalvaPathEvento: TCheckBox
            Left = 6
            Top = 64
            Width = 233
            Height = 17
            Caption = 'Salvar Arqs de Eventos'
            TabOrder = 4
          end
          object cbxSepararPorCNPJ: TCheckBox
            Left = 6
            Top = 80
            Width = 233
            Height = 17
            Caption = 'Separar Arqs pelo CNPJ do Certificado'
            TabOrder = 5
          end
          object edtPathCCe: TEdit
            Left = 6
            Top = 208
            Width = 235
            Height = 21
            TabOrder = 6
          end
          object edtPathNFe: TEdit
            Left = 6
            Top = 132
            Width = 235
            Height = 21
            TabOrder = 7
          end
          object edtPathCan: TEdit
            Left = 6
            Top = 170
            Width = 235
            Height = 21
            TabOrder = 8
          end
          object edtPathInu: TEdit
            Left = 6
            Top = 246
            Width = 235
            Height = 21
            TabOrder = 9
          end
          object edtPathDPEC: TEdit
            Left = 6
            Top = 284
            Width = 235
            Height = 21
            TabOrder = 10
          end
          object edtPathEvento: TEdit
            Left = 6
            Top = 322
            Width = 235
            Height = 21
            TabOrder = 11
          end
          object cbxSepararPorModelo: TCheckBox
            Left = 6
            Top = 96
            Width = 251
            Height = 17
            Caption = 'Separar Arqs pelo Modelo do Documento'
            TabOrder = 12
          end
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'DANFe'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label82: TLabel
        Left = 8
        Top = 8
        Width = 55
        Height = 13
        Caption = 'Logo Marca'
      end
      object sbtnLogoMarca: TSpeedButton
        Left = 235
        Top = 21
        Width = 23
        Height = 24
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
          07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
          0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
      object edtLogoMarca: TEdit
        Left = 8
        Top = 24
        Width = 228
        Height = 21
        TabOrder = 0
      end
      object rgTipoDanfe: TRadioGroup
        Left = 8
        Top = 56
        Width = 249
        Height = 49
        Caption = 'DANFE'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Retrato'
          'Paisagem')
        TabOrder = 1
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'Email'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label83: TLabel
        Left = 8
        Top = 8
        Width = 69
        Height = 13
        Caption = 'Servidor SMTP'
      end
      object Label84: TLabel
        Left = 206
        Top = 8
        Width = 26
        Height = 13
        Caption = 'Porta'
      end
      object Label85: TLabel
        Left = 8
        Top = 48
        Width = 36
        Height = 13
        Caption = 'Usu'#225'rio'
      end
      object Label86: TLabel
        Left = 137
        Top = 48
        Width = 30
        Height = 13
        Caption = 'Senha'
      end
      object Label87: TLabel
        Left = 8
        Top = 88
        Width = 122
        Height = 13
        Caption = 'Assunto do email enviado'
      end
      object Label88: TLabel
        Left = 8
        Top = 160
        Width = 93
        Height = 13
        Caption = 'Mensagem do Email'
      end
      object edtSmtpHost: TEdit
        Left = 8
        Top = 24
        Width = 193
        Height = 21
        TabOrder = 0
      end
      object edtSmtpPort: TEdit
        Left = 206
        Top = 24
        Width = 51
        Height = 21
        TabOrder = 1
      end
      object edtSmtpUser: TEdit
        Left = 8
        Top = 64
        Width = 120
        Height = 21
        TabOrder = 2
      end
      object edtSmtpPass: TEdit
        Left = 137
        Top = 64
        Width = 120
        Height = 21
        TabOrder = 3
      end
      object edtEmailAssunto: TEdit
        Left = 8
        Top = 104
        Width = 249
        Height = 21
        TabOrder = 4
      end
      object cbEmailSSL: TCheckBox
        Left = 10
        Top = 136
        Width = 167
        Height = 17
        Caption = 'SMTP exige conex'#227'o segura'
        TabOrder = 5
      end
      object mmEmailMsg: TMemo
        Left = 8
        Top = 176
        Width = 249
        Height = 130
        TabOrder = 6
      end
    end
  end
  object DBGrid2: TDBGrid
    Left = -1
    Top = 490
    Width = 495
    Height = 99
    Ctl3D = False
    DataSource = DM.dsPagamentoNFCe
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_MOV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_NFCE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PLANO_PAGAMENTO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FORMA_PAGAMENTO'
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PAGAMENTO'
        Width = 84
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 249
    Color = clWhite
    ParentBackground = False
    TabOrder = 4
    object DBText2: TDBText
      Left = 119
      Top = 13
      Width = 339
      Height = 17
      DataField = 'LOJA'
      DataSource = DM.dsNFCe
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 4
      Top = 77
      Width = 89
      Height = 17
      DataField = 'NR_NFCE'
      DataSource = DM.dsNFCe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 4
      Top = 58
      Width = 48
      Height = 13
      Caption = 'N'#186' NFC-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 102
      Top = 58
      Width = 76
      Height = 13
      Caption = 'Data Emiss'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 229
      Top = 77
      Width = 260
      Height = 17
      DataField = 'CLIENTE'
      DataSource = DM.dsNFCe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 102
      Top = 77
      Width = 65
      Height = 17
      DataField = 'DT_EMISSAO'
      DataSource = DM.dsNFCe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 238
      Top = 58
      Width = 74
      Height = 13
      Caption = 'Nome Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 153
      Top = 162
      Width = 81
      Height = 17
      DataField = 'VL_TOTAL_PRODUTO'
      DataSource = DM.dsNFCe
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label35: TLabel
      Left = 4
      Top = 162
      Width = 121
      Height = 13
      Caption = 'Valor dos Produtos....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 4
      Top = 192
      Width = 122
      Height = 13
      Caption = '(-)Descontos ..............:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 153
      Top = 189
      Width = 81
      Height = 17
      DataField = 'VL_TOTAL_DESC'
      DataSource = DM.dsNFCe
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label37: TLabel
      Left = 3
      Top = 227
      Width = 122
      Height = 13
      Caption = 'Valor Total Liquido.....:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 153
      Top = 224
      Width = 81
      Height = 17
      DataField = 'VL_TOTAL_NOTA'
      DataSource = DM.dsNFCe
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 331
      Top = 191
      Width = 97
      Height = 20
      Caption = 'Homologa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 307
      Top = 162
      Width = 161
      Height = 21
      Caption = 'Ambiente de Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 4
      Top = 105
      Width = 75
      Height = 13
      Caption = 'N'#186' Pr'#233'-Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 4
      Top = 125
      Width = 65
      Height = 17
      DataField = 'ID_PDV'
      DataSource = DM.dsNFCe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 238
      Top = 105
      Width = 54
      Height = 13
      Caption = 'Vendedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 229
      Top = 125
      Width = 260
      Height = 17
      DataField = 'VENDEDOR'
      DataSource = DM.dsNFCe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 0
      Top = 146
      Width = 495
      Height = 13
      Caption = 
        '----------------------------------------------------------------' +
        '-----------------------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 102
      Top = 105
      Width = 61
      Height = 13
      Caption = 'Data Saida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText11: TDBText
      Left = 102
      Top = 125
      Width = 65
      Height = 17
      DataField = 'DT_SAIDA'
      DataSource = DM.dsNFCe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 253
    Width = 495
    Height = 237
    Color = clWhite
    ParentBackground = False
    TabOrder = 5
    object DBGrid1: TDBGrid
      Left = 0
      Top = 3
      Width = 532
      Height = 225
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = DM.dsItemNFCe
      FixedColor = clSilver
      GradientStartColor = clCream
      Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentColor = True
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ITEM'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCIA'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 167
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNID'
          Width = 27
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_UNI'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VL_TOTAL'
          Width = 71
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 170
    Top = 590
    Width = 75
    Height = 25
    Caption = 'TEF'
    TabOrder = 6
  end
  object ckTEFDIAL: TCheckBox
    Left = 196
    Top = 625
    Width = 69
    Height = 19
    Caption = 'TEF_DIAL'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object ckTEFDISC: TCheckBox
    Left = 289
    Top = 625
    Width = 69
    Height = 19
    Caption = 'TEF_DISC'
    TabOrder = 8
  end
  object ckHIPERTEF: TCheckBox
    Left = 382
    Top = 625
    Width = 76
    Height = 19
    Caption = 'HIPER_TEF'
    TabOrder = 9
  end
  object MemoCupomTEF: TMemo
    Left = 49
    Top = 333
    Width = 376
    Height = 60
    ScrollBars = ssVertical
    TabOrder = 10
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 653
    Width = 1257
    Height = 13
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object pMensagem: TPanel
    Left = 495
    Top = 0
    Width = 324
    Height = 266
    BevelInner = bvLowered
    BevelWidth = 2
    BorderStyle = bsSingle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    Visible = False
    object pMensagemOperador: TPanel
      Left = 4
      Top = 4
      Width = 312
      Height = 120
      Align = alClient
      TabOrder = 0
      Visible = False
      object lMensagemOperador: TLabel
        Left = 1
        Top = 1
        Width = 310
        Height = 118
        Align = alClient
        Alignment = taCenter
        Caption = 'lMensagemOperador'
        Color = clBtnFace
        ParentColor = False
        Layout = tlCenter
        WordWrap = True
        ExplicitWidth = 168
        ExplicitHeight = 19
      end
      object Label29: TLabel
        Left = 0
        Top = 0
        Width = 118
        Height = 13
        Caption = 'Mensagem Operador'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object pMensagemCliente: TPanel
      Left = 4
      Top = 124
      Width = 312
      Height = 134
      Align = alBottom
      TabOrder = 1
      Visible = False
      object Label38: TLabel
        Left = 0
        Top = 0
        Width = 104
        Height = 13
        Caption = 'Mensagem Cliente'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lMensagemCliente: TLabel
        Left = 1
        Top = 1
        Width = 310
        Height = 132
        Align = alClient
        Alignment = taCenter
        Caption = 'lMensagemCliente'
        Color = clBtnFace
        ParentColor = False
        Layout = tlCenter
        WordWrap = True
        ExplicitWidth = 150
        ExplicitHeight = 19
      end
    end
  end
  object ButtonPagarEmCartao: TButton
    Left = 530
    Top = 300
    Width = 97
    Height = 25
    Caption = 'Pagar em Cartao'
    TabOrder = 13
    OnClick = ButtonPagarEmCartaoClick
  end
  object ckCliSiTef: TCheckBox
    Left = 484
    Top = 623
    Width = 60
    Height = 19
    Caption = 'CliSiTef'
    TabOrder = 14
  end
  object ckVSPague: TCheckBox
    Left = 571
    Top = 623
    Width = 72
    Height = 19
    Caption = 'VeSPague'
    TabOrder = 15
  end
  object ckAuttar: TCheckBox
    Left = 669
    Top = 623
    Width = 53
    Height = 19
    Caption = 'Auttar'
    TabOrder = 16
  end
  object gbConfigTEF: TGroupBox
    Left = 500
    Top = 265
    Width = 322
    Height = 248
    Caption = 'TEF'
    TabOrder = 17
    object Label39: TLabel
      Left = 42
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Selecionar o G.P.'
      Color = clBtnFace
      ParentColor = False
    end
    object Label40: TLabel
      Left = 125
      Top = 148
      Width = 59
      Height = 13
      Caption = 'EsperaSleep'
      Color = clBtnFace
      ParentColor = False
    end
    object Label41: TLabel
      Left = 27
      Top = 151
      Width = 51
      Height = 13
      Caption = 'EsperaSTS'
      Color = clBtnFace
      ParentColor = False
    end
    object bInicializar: TButton
      Left = 21
      Top = 79
      Width = 133
      Height = 25
      Caption = 'Inicializar'
      TabOrder = 1
      OnClick = bInicializarClick
    end
    object ckAutoAtivar: TCheckBox
      Left = 169
      Top = 34
      Width = 104
      Height = 19
      Caption = 'Auto Ativar G.P.'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object cbxGP: TComboBox
      Left = 21
      Top = 44
      Width = 133
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbxGPChange
    end
    object bAtivarGP: TButton
      Left = 21
      Top = 110
      Width = 133
      Height = 25
      Caption = 'Ativar GP'
      TabOrder = 2
      OnClick = bAtivarGPClick
    end
    object ckMultiplosCartoes: TCheckBox
      Left = 169
      Top = 62
      Width = 113
      Height = 19
      Caption = 'Multiplos Cart'#245'es'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object ckAutoFinalizarCupom: TCheckBox
      Left = 169
      Top = 113
      Width = 129
      Height = 19
      Caption = 'AutoFinalizarCupom'
      TabOrder = 6
    end
    object ckAutoEfetuarPagamento: TCheckBox
      Left = 169
      Top = 88
      Width = 144
      Height = 19
      Caption = 'AutoEfetuarPagamento'
      TabOrder = 5
    end
    object edEsperaSleep: TEdit
      Left = 125
      Top = 167
      Width = 56
      Height = 21
      TabOrder = 7
      Text = '250'
    end
    object edEsperaSTS: TEdit
      Left = 27
      Top = 167
      Width = 56
      Height = 21
      TabOrder = 8
      Text = '7'
    end
    object cbxGP1: TComboBox
      Left = 22
      Top = 221
      Width = 142
      Height = 21
      Style = csDropDownList
      TabOrder = 9
    end
  end
  object GroupBoxFechamento: TGroupBox
    Left = 495
    Top = 519
    Width = 214
    Height = 79
    Caption = 'Demostrativo Pagamento'
    TabOrder = 18
    object labelDescricaoTotalRecebido: TLabel
      Left = 14
      Top = 17
      Width = 83
      Height = 16
      Caption = 'Total Recebido:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label42: TLabel
      Left = 13
      Top = 51
      Width = 82
      Height = 16
      Caption = 'SaldoRestante:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditTotalPago: TEdit
      Left = 110
      Top = 16
      Width = 91
      Height = 25
      AutoSize = False
      Enabled = False
      TabOrder = 0
      Text = '0'
    end
    object EditSaldoRestante: TEdit
      Left = 110
      Top = 47
      Width = 91
      Height = 25
      AutoSize = False
      Enabled = False
      TabOrder = 1
      Text = '0'
    end
  end
  object GroupBox1: TGroupBox
    Left = 828
    Top = 265
    Width = 214
    Height = 188
    Caption = 'Compo pagar?'
    TabOrder = 19
    object Label43: TLabel
      Left = 7
      Top = 15
      Width = 134
      Height = 23
      Caption = 'Valor Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edValorPagamento: TEdit
      Left = 7
      Top = 40
      Width = 138
      Height = 43
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 106
      Top = 116
      Width = 97
      Height = 25
      Caption = 'Pagar em Cartao'
      TabOrder = 1
      OnClick = ButtonPagarEmCartaoClick
    end
    object ButtonPagarEmDinheiro: TButton
      Left = 3
      Top = 116
      Width = 97
      Height = 25
      Caption = 'Pagar em Dinheiro'
      TabOrder = 2
      OnClick = ButtonPagarEmDinheiroClick
    end
  end
  object bADM: TButton
    Left = 851
    Top = 459
    Width = 159
    Height = 25
    Caption = 'Administrativo TEF (ADM)'
    TabOrder = 20
    OnClick = bADMClick
  end
  object edValorVenda: TEdit
    Left = 852
    Top = 204
    Width = 121
    Height = 25
    AutoSize = False
    TabOrder = 21
  end
  object gbConfigECF: TGroupBox
    Left = 828
    Top = 490
    Width = 308
    Height = 180
    Caption = 'ECF'
    TabOrder = 22
    object Label92: TLabel
      Left = 20
      Top = 33
      Width = 38
      Height = 13
      Caption = 'Modelo:'
      Color = clBtnFace
      ParentColor = False
    end
    object Label93: TLabel
      Left = 20
      Top = 76
      Width = 26
      Height = 13
      Caption = 'Porta'
      Color = clBtnFace
      ParentColor = False
    end
    object btSerial: TSpeedButton
      Left = 156
      Top = 91
      Width = 25
      Height = 24
      Hint = 'Serial'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF323232
        3232323E3E3E565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF565656FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF503200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        565656565656FFFFFFFFFFFF3232322626262626262626262626265032005032
        000000504873FFFFFFFFFFFFFFFFFFFF6E6E6EFFFFFFFFFFFFFFFFFFFFFFFF6E
        6E6E32323232323232323232323250320000005025AAFFFFFFFFFFFFFF565656
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5656563232323232326E6E6E5032005032
        008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF3E3E3EFFFFFFFFFFFF50320050320056
        56564A4A4A5050003232325032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
        FFFFFF5656563E3E3E2626265032006262625656565050003232325032005032
        008FFF6B8ED4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5050005050006E
        6E6E5656565050003250005032005032008FFF6B8ED4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8686865656565656563250005032005032
        008FFF6B48B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232323E
        3E3EA4A0A08686866E6E6E565656503200C0C0C02557FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF5050004A4A4A3232323232323232323232325032
        00FFFFFF6B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Label94: TLabel
      Left = 196
      Top = 33
      Width = 82
      Height = 13
      Caption = 'Indice "CARTAO"'
      Color = clBtnFace
      ParentColor = False
    end
    object Label95: TLabel
      Left = 196
      Top = 76
      Width = 81
      Height = 13
      Caption = 'Indice "CHEQUE"'
      Color = clBtnFace
      ParentColor = False
    end
    object cbxModelo: TComboBox
      Left = 21
      Top = 49
      Width = 161
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbxModeloChange
      Items.Strings = (
        '')
    end
    object cbxPorta: TComboBox
      Left = 20
      Top = 92
      Width = 131
      Height = 21
      ItemIndex = 0
      TabOrder = 1
      Text = 'Procurar'
      Items.Strings = (
        'Procurar'
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'LPT1'
        'LPT2'
        'LPT3'
        '/dev/ttyS0'
        '/dev/ttyS1'
        '/dev/ttyUSB0'
        '/dev/ttyUSB1'
        'c:\temp\ecf.txt'
        '/tmp/ecf.txt')
    end
    object bAtivar: TButton
      Left = 68
      Top = 132
      Width = 73
      Height = 25
      Caption = 'Ativar'
      TabOrder = 2
      OnClick = bAtivarClick
    end
    object edFPGCartao: TEdit
      Left = 220
      Top = 49
      Width = 43
      Height = 21
      TabOrder = 3
      Text = '02'
    end
    object edFPGCheque: TEdit
      Left = 220
      Top = 92
      Width = 43
      Height = 21
      TabOrder = 4
      Text = '03'
    end
    object bFPG: TButton
      Left = 204
      Top = 128
      Width = 73
      Height = 25
      Caption = 'FPG'
      TabOrder = 5
    end
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCapicom
    Configuracoes.Geral.SSLCryptLib = cryCapicom
    Configuracoes.Geral.SSLHttpLib = httpWinINet
    Configuracoes.Geral.SSLXmlSignLib = xsMsXmlCapicom
    Configuracoes.Geral.FormaEmissao = teContingencia
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.AtualizarXMLCancelado = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 15000
    Configuracoes.WebServices.AjustaAguardaConsultaRet = True
    Configuracoes.WebServices.TimeOut = 20000
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFCeFortes1
    Left = 453
    Top = 377
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    LarguraCodProd = 54
    ExibirEAN = False
    QuebraLinhaEmDetalhamentoEspecifico = True
    ExibeCampoFatura = False
    ImprimirUnQtVlComercial = iuComercial
    ImprimirDadosDocReferenciados = True
    Left = 452
    Top = 428
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 555
    Top = 380
  end
  object ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = False
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = ',0.00'
    CasasDecimais._Mask_vUnCom = ',0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = True
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    ImprimeEmUmaLinha = False
    Left = 556
    Top = 426
  end
  object ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes
    ACBrNFe = ACBrNFe1
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiNFCe
    NumCopias = 1
    ImprimeNomeFantasia = True
    ImprimirDescPorc = True
    ImprimirTotalLiquido = True
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = True
    ExpandirLogoMarca = True
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    TributosSeparadamente = True
    ImprimeEmUmaLinha = False
    Left = 590
    Top = 429
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 688
    Top = 376
  end
  object ACBrTEFD1: TACBrTEFD
    Identificacao.NomeAplicacao = 'TEFDDemo'
    Identificacao.VersaoAplicacao = '3.0'
    Identificacao.SoftwareHouse = 'ACBr'
    Identificacao.RazaoSocial = 'Projeto ACBr'
    MultiplosCartoes = True
    NumeroMaximoCartoes = 3
    AutoFinalizarCupom = False
    EsperaSTS = 7
    CHQEmGerencial = True
    TEFDial.ArqLOG = 'TEF_DIAL.log'
    TEFDial.Habilitado = True
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFCliSiTef.ArqLOG = 'CliSiTef.log'
    TEFCliSiTef.EnderecoIP = '127.0.0.1'
    TEFCliSiTef.CodigoLoja = '00000000'
    TEFCliSiTef.NumeroTerminal = 'SE000001'
    TEFVeSPague.ArqLOG = 'VeSPague.log'
    TEFVeSPague.Aplicacao = 'ACBr_TEFDDemo'
    TEFVeSPague.AplicacaoVersao = '1.0'
    TEFVeSPague.GPExeName = 'C:\VeSPague\Client\VeSPagueClient.bat'
    TEFVeSPague.GPExeParams = '189.115.24.32 65432'
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TimeOut = 500
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFCliDTEF.ArqResp = ''
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    OnExibeMsg = ACBrTEFD1ExibeMsg
    OnComandaECF = ACBrTEFD1ComandaECF
    OnComandaECFSubtotaliza = ACBrTEFD1ComandaECFSubtotaliza
    OnComandaECFAbreVinculado = ACBrTEFD1ComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFD1ComandaECFImprimeVia
    OnInfoECF = ACBrTEFD1InfoECF
    Left = 328
    Top = 360
  end
  object ACBrECF1: TACBrECF
    QuebraLinhaRodape = False
    Modelo = ecfNaoFiscal
    Porta = 'COM1'
    MsgAguarde = 'Aguardando a resposta da Impressora: %d segundos'
    MsgTrabalhando = 'Impressora est'#225' trabalhando'
    MsgRelatorio = 'Imprimindo %s  %d'#170' Via '
    MsgPausaRelatorio = 'Destaque a %d'#170' via, <ENTER> proxima, %d seg.'
    PaginaDeCodigo = 0
    OnMsgPoucoPapel = ACBrECF1MsgPoucoPapel
    MemoParams.Strings = (
      '[Cabecalho]'
      'LIN000=<center><b>Nome da Empresa</b></center>'
      'LIN001=<center>Nome da Rua , 1234  -  Bairro</center>'
      'LIN002=<center>Cidade  -  UF  -  99999-999</center>'
      
        'LIN003=<center>CNPJ: 01.234.567/0001-22    IE: 012.345.678.90</c' +
        'enter>'
      
        'LIN004=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>COO: <b><code>NumCupom</code' +
        '></b></td></tr></table>'
      'LIN005=<hr>'
      ' '
      '[Cabecalho_Item]'
      'LIN000=ITEM   CODIGO      DESCRICAO'
      'LIN001=QTD         x UNITARIO       Aliq     VALOR (R$)'
      'LIN002=<hr>'
      
        'MascaraItem=III CCCCCCCCCCCCCC DDDDDDDDDDDDDDDDDDDDDDDDDDDDDQQQQ' +
        'QQQQ UU x VVVVVVVVVVVVV AAAAAA TTTTTTTTTTTTT'
      ' '
      '[Rodape]'
      'LIN000=<hr>'
      
        'LIN001=<table width=100%><tr><td align=left><code>Data</code> <c' +
        'ode>Hora</code></td><td align=right>Projeto ACBr: <b><code>ACBR<' +
        '/code></b></td></tr></table>'
      'LIN002=<center>Obrigado Volte Sempre</center>'
      'LIN003=<hr>'
      ' '
      '[Formato]'
      'Colunas=48'
      'HTML=1'
      'HTML_Title_Size=2'
      'HTML_Font=<font size="2" face="Lucida Console">')
    Device.HandShake = hsRTS_CTS
    Device.HardFlow = True
    ArqLOG = 'ecf.log'
    ConfigBarras.MostrarCodigo = True
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    InfoRodapeCupom.Imposto.ModoCompacto = False
    Left = 400
    Top = 309
  end
end
