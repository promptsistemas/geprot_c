object frmPagamentoPdv: TfrmPagamentoPdv
  Left = 350
  Top = 114
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Recebimento'
  ClientHeight = 411
  ClientWidth = 537
  Color = 13034239
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 111
    Width = 172
    Height = 13
    Caption = 'Selecione Forma de Recebimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 2
    Top = 214
    Width = 109
    Height = 13
    Caption = 'Formas Recebimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 332
    Top = 233
    Width = 116
    Height = 23
    Caption = 'Valor Pago :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_VALOR_PAGO: TLabel
    Left = 458
    Top = 233
    Width = 42
    Height = 23
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 345
    Top = 252
    Width = 103
    Height = 23
    Caption = 'Diferen'#231'a :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_VALOR_DIFERENCA: TLabel
    Left = 458
    Top = 251
    Width = 42
    Height = 23
    Caption = '0,00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 0
    Top = 348
    Width = 56
    Height = 13
    Caption = 'Parcelados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMoneyGreen
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BB_CANCELAR: TBitBtn
    Left = 327
    Top = 281
    Width = 209
    Height = 38
    Caption = '  [ Esc ]  &Cancelar Recebimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0035960035960035960035
      96003596003596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF005CED0052DC0048CC
      0044BF0045B80041B0003AA4003596002E7B00235BFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0063FC005CF600
      5AEF166EE74C93E678B0EB8CBBED8BBAED72AAE64186D70D58BF00399F002E7F
      002662FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0062
      FF005DFF1F7FFC95C6FBF0F7FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3
      EFFC7AADE71159BC003391002560FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0065FF0368FF75B5FFF2F8FFFFFFFFFFFFFFCCE1FACCE1FAB1D1F8C0D9
      F8CCE0FACCE0FAFFFFFFFFFFFFE0EDFB518FD7003A9D002664FF00FFFF00FFFF
      00FFFF00FFFF00FF036AFF036AFF90C5FFFFFFFFFFFFFFD8E7FC9CC6F8095CE5
      0352E10251E0014FE0014EDE0B5BE1B1D1F8FFFFFFFFFFFFFFFFFF5792D80035
      96002764FF00FFFF00FFFF00FFFF00FF0166FF62ABFFFFFFFFFFFFFFD9E9FC40
      8EF4065AE60557E50455E3085AE30352E10251E0014FE0014FDE5396EED7E6FB
      FFFFFFEFF6FB1B63BD00348FFF00FFFF00FFFF00FF066CFF1277FFDEEFFFFFFF
      FFD9EAFC3889F40A5FEA085DE9095DE90559E60457E30556E20353E20251E002
      50E0014EDE468EEDD7E6FBFFFFFFA3C5E90040A7003993FF00FFFF00FF036AFF
      5EA9FFFFFFFFFFFFFF73B1FA0D66EF87B8F7FCFEFF74ACF4075CE70659E60C5F
      E60C5EE587B6F3E0EDFC0250E1014FE08EBCF4FFFFFFFCFCFC286FC7003EACFF
      00FF0D73FF0B72FFB5D8FFFFFFFFFEFFFF116DF30F6AF23184F4BFDAFBFFFFFF
      4D95F2095DE9075CE795C0F6FFFFFF8AB8F40353E20252E11365E5D7E6FBFFFF
      FF78ABE20046C10039930D73FF1C7FFFEDF6FFFFFFFFB4D8FE1470F41570F310
      6CF22077F2B5D5FBF2F8FE4F97F360A0F3FFFFFF91BDF60E62E60456E50354E3
      0353E2BBD8FAFFFFFFBAD5F30155D4004ECB0E74FF3891FFFBFCFFFFFFFF69AD
      FE1675F71B78F61370F6116DF3227AF4B2D4FBF3F8FEE7F2FE63A1F30C63E907
      5BE7065AE60557E50455E37EB2F3FFFFFFE3EFFC0562E60058E71378FF55A4FF
      FEFFFFFFFFFF65ABFE1878FB1676F81E7AF71774F6126EF49FCAFBFFFFFFFBFE
      FF4A93F30C65ED095FEA085CE9065AE60558E66FA9F3FFFFFFEDF6FF0667F000
      5CED1A7DFF68AFFFFFFFFFFFFFFF7BB8FF1B7BFC1979FB1877FA1C79F870B0FB
      F0F7FFA3CCFBB8D8FCF0F7FE5097F40E67ED0A62EB095EEA075CE788BBF6FFFF
      FFE1F0FF0568F4005DF21D7FFF6CB1FFF8FCFFFFFFFFCCE5FF1C7EFC1C7DFC2B
      87FC9ECBFEFFFFFF76B4FB1472F61F79F6BCDAFCFFFFFF79B2F80C65EE0B63ED
      0A60EBC6DEFBFFFFFFB7DAFF0163F8005EF43D95FF5AA7FFE9F4FFFFFFFFFFFF
      FF2D8AFF1D7FFE89C1FEFFFFFFA0CCFE1877FA1676F81674F7237DF7C4DEFCFF
      FFFF0F69F00D67EE2A7FF3FFFFFFFFFFFF73B5FF005BFC005EF4FF00FF3E96FF
      CEE6FFFFFFFFFFFFFFB0D7FF1E80FF4298FE86C0FF2B88FC1B7AFB1978FA1777
      FA1674F82D84F891C2FB116DF3116BF3B2D4FCFFFFFFFBFEFF2283FF005FFFFF
      00FFFF00FF4298FF97C9FFFEFFFFFFFFFFFFFFFF75B6FF1E80FF1E80FF1D7FFF
      1C7DFE1C7DFC1A79FB1878FA1676F81673F71673F4BBDDFFFFFFFFFFFFFF97C9
      FF0065FF0065FFFF00FFFF00FFFF00FF54A4FFE1F0FFFFFFFFFFFFFFFFFFFF8F
      C4FF1F81FF1E80FF1E80FF1D7EFE1C7DFE1B7AFC1879FA1B79FAA6CFFEFFFFFF
      FFFFFFE7F3FF177BFF0065FFFF00FFFF00FFFF00FFFF00FF5CA7FF8CC2FFF8FC
      FFFFFFFFFFFFFFFFFFFFF8FCFF79B8FF3C95FF2D8BFF2D8AFE4197FE8AC1FEFF
      FFFFFFFFFFFFFFFFFBFEFF499DFF0065FF036AFFFF00FFFF00FFFF00FFFF00FF
      FF00FF5BA6FF9ACBFFF2F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFD1E7FF459AFF0268FF066CFFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF5EA9FF78B8FFD0E7FFF8FCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FF8AC1FF1F81FF056BFF096FFFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7FBBFF5AA6FF87
      C0FFBBDDFFDAEDFFE7F3FFE7F3FFDEEFFFC7E2FF96C7FF52A1FF1C7FFF0E74FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FF7DBAFF5AA6FF5AA6FF60AAFF60AAFF52A1FF3E96FF2C8AFF19
      7DFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    TabOrder = 0
    OnClick = BB_CANCELARClick
    OnKeyDown = FormKeyDown
  end
  object GroupBox1: TGroupBox
    Left = 1
    Top = 15
    Width = 537
    Height = 94
    Caption = 'Dados do Or'#231'amento'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 3
      Top = 17
      Width = 28
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 98
      Top = 17
      Width = 80
      Height = 13
      Caption = 'N'#186' Or'#231'amento'
    end
    object Label4: TLabel
      Left = 210
      Top = 17
      Width = 40
      Height = 13
      Caption = 'Cliente'
    end
    object Label6: TLabel
      Left = 2
      Top = 60
      Width = 95
      Height = 13
      Caption = 'Valor Or'#231'amento'
    end
    object DBEdit1: TDBEdit
      Left = 3
      Top = 30
      Width = 93
      Height = 19
      Ctl3D = False
      DataField = 'DT_VENDA'
      DataSource = DM.dsPDV
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 210
      Top = 30
      Width = 311
      Height = 19
      Ctl3D = False
      DataField = 'R_SOCIAL'
      DataSource = DM.dsPDV
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 98
      Top = 30
      Width = 111
      Height = 19
      Ctl3D = False
      DataField = 'ID_PDV'
      DataSource = DM.dsPDV
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 2
      Top = 73
      Width = 111
      Height = 19
      Ctl3D = False
      DataField = 'VL_LIQ'
      DataSource = DM.dsPDV
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object GB_ESPECIE: TGroupBox
    Left = 330
    Top = 129
    Width = 206
    Height = 92
    Caption = 'Especie'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label7: TLabel
      Left = 19
      Top = 17
      Width = 153
      Height = 13
      Caption = 'Informe Valor Recebido Em'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 24
      Top = 36
      Width = 148
      Height = 17
      DataField = 'DESCRICAO_PAGAMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit6: TDBEdit
      Left = 19
      Top = 70
      Width = 121
      Height = 21
      Ctl3D = False
      DataField = 'VL_PAGAMENTO'
      DataSource = DM.dsPagamentoPDV
      ParentCtl3D = False
      TabOrder = 0
      Visible = False
      OnExit = DBEdit6Exit
      OnKeyDown = FormKeyDown
      OnKeyPress = DBEdit6KeyPress
    end
    object Edit6: TEdit
      Left = 19
      Top = 59
      Width = 121
      Height = 21
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = Edit6Exit
      OnKeyDown = Edit6KeyDown
      OnKeyPress = Edit6KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 123
    Width = 323
    Height = 85
    Color = clWhite
    Ctl3D = False
    DataSource = dsTipoPagamento
    DrawingStyle = gdsClassic
    FixedColor = clWhite
    GradientEndColor = clYellow
    GradientStartColor = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = FormKeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORMA_PAGAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO_PAGAMENTO'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 2
    Top = 232
    Width = 319
    Height = 117
    Ctl3D = False
    DataSource = DM.dsPagamentoPDV
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = FormKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'FORMA_PAGAMENTO'
        Title.Caption = 'Tipo'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PAGAMENTO'
        Title.Caption = 'Valor'
        Visible = True
      end>
  end
  object BB_CF: TBitBtn
    Left = 327
    Top = 317
    Width = 209
    Height = 33
    Caption = '<F8> C.F'
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
    ParentFont = False
    TabOrder = 5
    OnClick = BB_CFClick
    OnKeyDown = FormKeyDown
  end
  object GB_FORMA_PAGAMENTO: TGroupBox
    Left = 330
    Top = 126
    Width = 206
    Height = 101
    Caption = 'Forma Pagamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    object Label5: TLabel
      Left = 3
      Top = 27
      Width = 96
      Height = 13
      Caption = 'Forma Pagamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 5
      Top = 45
      Width = 193
      Height = 23
      KeyField = 'ID_PLANO_PAGAMENTO'
      ListField = 'DESCRICAO_PAGAMENTO'
      ListFieldIndex = -2
      ListSource = DM.dsPlanoPagamento
      TabOrder = 0
      OnExit = DBLookupComboBox1Exit
      OnKeyDown = FormKeyDown
      OnKeyPress = DBLookupComboBox1KeyPress
    end
  end
  object P_TROCO: TPanel
    Left = 3
    Top = 34
    Width = 529
    Height = 313
    Color = 15400959
    TabOrder = 7
    Visible = False
    object L_TROCO: TLabel
      Left = 142
      Top = 96
      Width = 74
      Height = 86
      Caption = '00'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -64
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 22
      Top = 34
      Width = 496
      Height = 32
      Caption = 'O B I G A D O, E    V O L T E    S E M P R E !!!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BB_ENCERRAR: TBitBtn
      Left = 0
      Top = 276
      Width = 534
      Height = 34
      Caption = 'Pressione Enter Para Encerrar'
      Default = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BB_ENCERRARClick
    end
    object Panel2: TPanel
      Left = 2
      Top = 202
      Width = 535
      Height = 55
      TabOrder = 1
      Visible = False
      object Panel3: TPanel
        Left = 5
        Top = 84
        Width = 533
        Height = 78
        TabOrder = 0
      end
      object pgRespostas: TPageControl
        Left = 1
        Top = 301
        Width = 537
        Height = 307
        ActivePage = TabSheet11
        TabOrder = 1
        Visible = False
        object TabSheet5: TTabSheet
          Caption = 'Respostas'
          object MemoResp: TMemo
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'XML Resposta'
          ImageIndex = 1
          object WBResposta: TWebBrowser
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            TabOrder = 0
            ExplicitWidth = 569
            ControlData = {
              4C000000AC360000D61C00000000000000000000000000000000000000000000
              000000004C000000000000000000000000000000000000000000000000000000
              0000000008000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Log'
          ImageIndex = 2
          object memoLog: TMemo
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'NFe'
          ImageIndex = 3
          object trvwNFe: TTreeView
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            Indent = 19
            TabOrder = 0
          end
        end
        object TabSheet10: TTabSheet
          Caption = 'Retorno Completo WS'
          ImageIndex = 4
          object memoRespWS: TMemo
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object Dados: TTabSheet
          Caption = 'Dados'
          ImageIndex = 5
          object MemoDados: TMemo
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            Lines.Strings = (
              '')
            ScrollBars = ssVertical
            TabOrder = 0
            WordWrap = False
          end
        end
        object TabSheet11: TTabSheet
          Caption = 'RetornoConsulta NFe 2.01'
          ImageIndex = 6
          object TreeViewRetornoConsulta: TTreeView
            Left = 0
            Top = 0
            Width = 529
            Height = 279
            Align = alClient
            Indent = 19
            TabOrder = 0
          end
        end
      end
    end
  end
  object DBGrid3: TDBGrid
    Left = -1
    Top = 363
    Width = 539
    Height = 109
    Ctl3D = False
    DataSource = dsContasReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_EMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_DIAS'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QT_PARCELA'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NR_DOC'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_PARCELA'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_COMPRA'
        Width = 68
        Visible = True
      end>
  end
  object btnCriarEnviarNFCe: TButton
    Left = 361
    Top = 215
    Width = 177
    Height = 25
    Caption = 'Criar e Enviar'
    TabOrder = 9
    Visible = False
    OnClick = btnCriarEnviarNFCeClick
  end
  object PageControl2: TPageControl
    Left = 293
    Top = 355
    Width = 386
    Height = 341
    ActivePage = TabSheet4
    TabOrder = 10
    Visible = False
    object TabSheet1: TTabSheet
      Caption = 'Configura'#231#245'es'
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 378
        Height = 313
        ActivePage = TabSheet2
        Align = alClient
        MultiLine = True
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'Certificado'
          object lSSLLib: TLabel
            Left = 35
            Top = 16
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'SSLLib'
            Color = clBtnFace
            ParentColor = False
          end
          object lCryptLib: TLabel
            Left = 31
            Top = 43
            Width = 38
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
            Left = 12
            Top = 97
            Width = 57
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
              Width = 31
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
        object TabSheet2: TTabSheet
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
              Width = 68
              Height = 13
              Caption = 'Formato Alerta'
            end
            object Label49: TLabel
              Left = 8
              Top = 126
              Width = 123
              Height = 13
              Caption = 'Modelo Documento Fiscal'
            end
            object Label50: TLabel
              Left = 8
              Top = 165
              Width = 121
              Height = 13
              Caption = 'Vers'#227'o Documento Fiscal'
            end
            object Label51: TLabel
              Left = 8
              Top = 203
              Width = 75
              Height = 13
              Caption = 'IdToken/IdCSC'
            end
            object Label52: TLabel
              Left = 8
              Top = 241
              Width = 57
              Height = 13
              Caption = 'Token/CSC'
            end
            object Label53: TLabel
              Left = 8
              Top = 336
              Width = 199
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
        object TabSheet3: TTabSheet
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
              Left = 16
              Top = 168
              Width = 44
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
              Width = 25
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
              Width = 31
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
              Width = 50
              Height = 13
              Caption = 'Tentativas'
            end
            object Label60: TLabel
              Left = 176
              Top = 27
              Width = 41
              Height = 13
              Caption = 'Intervalo'
            end
            object Label61: TLabel
              Left = 8
              Top = 27
              Width = 43
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
          object Label62: TLabel
            Left = 8
            Top = 4
            Width = 27
            Height = 13
            Caption = 'CNPJ'
          end
          object Label63: TLabel
            Left = 136
            Top = 4
            Width = 41
            Height = 13
            Caption = 'Insc.Est.'
          end
          object Label65: TLabel
            Left = 8
            Top = 44
            Width = 63
            Height = 13
            Caption = 'Raz'#227'o Social'
          end
          object Label66: TLabel
            Left = 8
            Top = 84
            Width = 40
            Height = 13
            Caption = 'Fantasia'
          end
          object Label67: TLabel
            Left = 8
            Top = 164
            Width = 54
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
            Width = 64
            Height = 13
            Caption = 'Complemento'
          end
          object Label70: TLabel
            Left = 136
            Top = 204
            Width = 27
            Height = 13
            Caption = 'Bairro'
          end
          object Label71: TLabel
            Left = 8
            Top = 244
            Width = 61
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
            Width = 14
            Height = 13
            Caption = 'UF'
          end
          object Label74: TLabel
            Left = 136
            Top = 124
            Width = 21
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
            Width = 142
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
            Width = 192
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
            Width = 127
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
            Width = 103
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
            Width = 108
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
    object TabSheet4: TTabSheet
      Caption = 'DANFe'
      ImageIndex = 1
      object Label82: TLabel
        Left = 8
        Top = 8
        Width = 57
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
      object Label83: TLabel
        Left = 8
        Top = 8
        Width = 72
        Height = 13
        Caption = 'Servidor SMTP'
      end
      object Label84: TLabel
        Left = 206
        Top = 8
        Width = 25
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
        Width = 31
        Height = 13
        Caption = 'Senha'
      end
      object Label87: TLabel
        Left = 8
        Top = 88
        Width = 121
        Height = 13
        Caption = 'Assunto do email enviado'
      end
      object Label88: TLabel
        Left = 8
        Top = 160
        Width = 95
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
  object PageControl3: TPageControl
    Left = 398
    Top = 365
    Width = 546
    Height = 328
    ActivePage = tsNFe
    TabOrder = 11
    Visible = False
    object tsNFe: TTabSheet
      Caption = 'NF-e'
      object btnImprimir: TButton
        Left = 192
        Top = 156
        Width = 177
        Height = 25
        Caption = 'Imprimir DANFE'
        TabOrder = 0
      end
      object btnConsultar: TButton
        Left = 8
        Top = 66
        Width = 177
        Height = 25
        Caption = 'Consultar carregando XML'
        TabOrder = 1
      end
      object btnValidarXML: TButton
        Left = 376
        Top = 126
        Width = 177
        Height = 25
        Caption = 'Validar XML'
        TabOrder = 2
      end
      object btnStatusServ: TButton
        Left = 9
        Top = 6
        Width = 177
        Height = 25
        Caption = ' Status de Servi'#231'o'
        TabOrder = 3
      end
      object btnCancNF: TButton
        Left = 9
        Top = 125
        Width = 177
        Height = 25
        Caption = 'Cancelamento NFe com XML'
        TabOrder = 4
      end
      object btnCriarEnviar: TButton
        Left = 8
        Top = 36
        Width = 177
        Height = 25
        Caption = 'Criar e Enviar'
        TabOrder = 5
      end
      object btnInutilizar: TButton
        Left = 192
        Top = 6
        Width = 177
        Height = 25
        Caption = 'Inutilizar Numera'#231#227'o'
        TabOrder = 6
      end
      object btnGerarNFE: TButton
        Left = 192
        Top = 96
        Width = 177
        Height = 25
        Caption = 'Gerar NFe'
        TabOrder = 7
      end
      object btnConsCad: TButton
        Left = 193
        Top = 66
        Width = 177
        Height = 25
        Caption = 'Consulta Cadastro'
        TabOrder = 8
      end
      object btnGerarPDF: TButton
        Left = 192
        Top = 126
        Width = 177
        Height = 25
        Caption = 'Gerar PDF'
        TabOrder = 9
      end
      object btnEnviarEmail: TButton
        Left = 376
        Top = 156
        Width = 177
        Height = 25
        Caption = 'Enviar NFe Email'
        TabOrder = 10
      end
      object btnConsultarRecibo: TButton
        Left = 192
        Top = 36
        Width = 177
        Height = 25
        Caption = 'Consultar Recibo Lote'
        TabOrder = 11
      end
      object btnImportarXML: TButton
        Left = 375
        Top = 95
        Width = 177
        Height = 25
        Caption = 'Importar TXT/XML'
        TabOrder = 12
      end
      object btnConsultarChave: TButton
        Left = 8
        Top = 96
        Width = 177
        Height = 25
        Caption = 'Consultar pela Chave'
        TabOrder = 13
      end
      object btnCancelarChave: TButton
        Left = 9
        Top = 156
        Width = 177
        Height = 25
        Caption = 'Cancelamento NFe pela Chave'
        TabOrder = 14
      end
      object btnGerarTXT: TButton
        Left = 376
        Top = 66
        Width = 177
        Height = 25
        Caption = 'Gerar TXT'
        TabOrder = 15
      end
      object btnAdicionarProtNFe: TButton
        Left = 9
        Top = 184
        Width = 177
        Height = 25
        Caption = 'Adicionar nfeProc ao XML'
        TabOrder = 16
      end
      object btnCarregarXMLEnviar: TButton
        Left = 192
        Top = 184
        Width = 177
        Height = 25
        Caption = 'Carregar XML e Enviar'
        TabOrder = 17
      end
      object btnCartadeCorrecao: TButton
        Left = 376
        Top = 184
        Width = 177
        Height = 25
        Caption = 'Carta de Corre'#231#227'o'
        TabOrder = 18
      end
      object btnValidarAssinatura: TButton
        Left = 9
        Top = 212
        Width = 177
        Height = 25
        Caption = 'Validar Assinatura'
        TabOrder = 19
      end
      object btnManifDestConfirmacao: TButton
        Left = 192
        Top = 212
        Width = 178
        Height = 25
        Caption = 'Manif. Dest. - Conf. Opera'#231#227'o'
        TabOrder = 20
      end
      object btnNfeDestinadas: TButton
        Left = 375
        Top = 211
        Width = 178
        Height = 25
        Caption = 'Consulta NFe Destinadas'
        TabOrder = 21
      end
      object btnImprimirCCe: TButton
        Left = 8
        Top = 240
        Width = 177
        Height = 25
        Caption = 'Imprimir Evento'
        TabOrder = 22
      end
      object btnEnviarEvento: TButton
        Left = 193
        Top = 240
        Width = 177
        Height = 25
        Caption = 'Enviar Evento Email'
        TabOrder = 23
      end
      object btnDistribuicaoDFe: TButton
        Left = 375
        Top = 240
        Width = 178
        Height = 25
        Caption = 'Distribui'#231#227'o Documentos Fiscais'
        TabOrder = 24
      end
      object btnInutilizarImprimir: TButton
        Left = 375
        Top = 6
        Width = 177
        Height = 25
        Caption = 'Inutilizar Imprimir'
        TabOrder = 25
      end
      object btnValidarRegrasNegocio: TButton
        Left = 375
        Top = 36
        Width = 177
        Height = 25
        Caption = 'Validar Regras de Neg'#243'cio'
        TabOrder = 26
      end
    end
    object tsNFCe: TTabSheet
      Caption = 'NFC-e'
      ImageIndex = 1
      object Button1: TButton
        Left = 9
        Top = 6
        Width = 177
        Height = 25
        Caption = 'Criar e Enviar'
        TabOrder = 0
        OnClick = btnCriarEnviarNFCeClick
      end
    end
  end
  object PMENU: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    Caption = '           Recebimento de Venda'
    Color = 14451248
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 12
    object SpeedButton1: TSpeedButton
      Left = 498
      Top = 1
      Width = 38
      Height = 28
      Align = alRight
      Flat = True
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000307500003075000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003846F0123843
        F32D3442F4493543F4483843F32D3846F0120000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003443F7223642F47F3543F3CD3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F3CD3642F47E3443F7220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000333FF2143543F4933642F3F93643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93543
        F490333FF2140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003543F6393643F3E73643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3642F3E63644F53800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003642
        F3553642F3F83643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3543F3F73642F355000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003740F5373642
        F3F93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3642F3F83740F5370000000000000000000000000000
        000000000000000000000000000000000000000000003048F2153543F4E83643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3542F3E5333FF21400000000000000000000
        000000000000000000000000000000000000000000003543F4933643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F49000000000000000000000
        0000000000000000000000000000000000003443F7223643F3FA3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF4854F5FF7B83F8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF7B83F8FF4854F5FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93645F721000000000000
        0000000000000000000000000000000000003543F3803643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF4854F5FFDEE0FDFFFEFEFFFF858DF8FF3643
        F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFDEE0FDFF4854F5FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F47E000000000000
        0000000000000000000000000000000000003642F3CF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B83F8FFFEFEFFFFFFFFFFFFFEFEFFFF858D
        F8FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF7B83F8FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3543F3CD000000000000
        00000000000000000000000000003543F1133643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFE
        FFFF858DF8FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3846F0120000
        00000000000000000000000000003641F42F3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFF
        FFFFFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3742F32E0000
        00000000000000000000000000003544F4473643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF858DF8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3544F4470000
        00000000000000000000000000003544F4473643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3544F4470000
        00000000000000000000000000003641F42F3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFF
        FFFFFFFFFFFFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3742F32E0000
        00000000000000000000000000003543F1133643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFE
        FFFF858DF8FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF858DF8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3846F0120000
        0000000000000000000000000000000000003543F3D03643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF7B83F8FFFEFEFFFFFFFFFFFFFEFEFFFF858D
        F8FF3643F4FF3643F4FF858DF8FFFEFEFFFFFFFFFFFFFEFEFFFF7B83F8FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3CE000000000000
        0000000000000000000000000000000000003543F3813643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF4854F5FFDEE0FDFFFEFEFFFF858DF8FF3643
        F4FF3643F4FF3643F4FF3643F4FF858DF8FFFEFEFFFFDEE0FDFF4854F5FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F47F000000000000
        0000000000000000000000000000000000003241F0233643F3FA3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF4854F5FF7B83F8FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF7B83F8FF4854F5FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F3FA3443F722000000000000
        000000000000000000000000000000000000000000003642F4953643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F49200000000000000000000
        000000000000000000000000000000000000000000003742F3173642F4EA3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3543F4E83048F21500000000000000000000
        00000000000000000000000000000000000000000000000000003543F6393642
        F3F93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3642F3F93740F5370000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003642
        F3553642F3F83643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3642F3F83642F355000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003441F13A3542F4E93643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F3E73543F63900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003945F3163642F4953643F3FA3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3F93543
        F494333FF2140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003241F0233543F3803543F3D03643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3642F3CF3543F3803241F0230000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000333FF2143742
        F32E3741F44A3442F4493843F32D3543F1130000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      OnClick = SpeedButton1Click
      ExplicitLeft = 1102
      ExplicitTop = 5
      ExplicitHeight = 36
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 285
    Top = 271
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 476
    Top = 241
  end
  object qTipoPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'TP.ID_FORMA_PAGAMENTO,'
      'TP.descricao_pagamento'
      'FROM tb_FORMA_pagamento TP'
      'WHERE TP.descricao_pagamento <>'#39#39)
    SQLConnection = DM.Conexao
    Left = 341
    Top = 87
    object qTipoPagamentoID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object qTipoPagamentoDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dspTipoPagamento: TDataSetProvider
    DataSet = qTipoPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 373
    Top = 87
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTipoPagamento'
    Left = 405
    Top = 87
    object cdsTipoPagamentoID_FORMA_PAGAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_FORMA_PAGAMENTO'
      Required = True
    end
    object cdsTipoPagamentoDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
  end
  object dsTipoPagamento: TDataSource
    DataSet = cdsTipoPagamento
    Left = 437
    Top = 87
  end
  object qContasReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_EMI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  CR.ID_CONTAS_RECEBER,'
      '  CR.ID_PEDIDO,'
      '  CR.ID_CLIENTE,'
      '  CR.ID_LOJA,'
      '  CR.ID_PLANO_PAGAMENTO,'
      '  CR.ID_FORMA_PAGAMENTO,'
      '  CR.ID_VENDEDOR,'
      '  CR.ID_USUARIO,'
      '  CR.DT_EMISSAO,'
      '  CR.DT_VENCIMENTO,'
      '  CR.DT_PAGAMENTO,'
      '  CR.QT_DIAS,'
      '  CR.QT_DIAS_ATRAZO,'
      '  CR.QT_PARCELA,'
      '  CR.NR_DOC,'
      '  CR.VL_COMPRA,'
      '  CR.VL_PARCELA,'
      '  CR.NR_PARCELA,'
      '  CR.STATUS,'
      '  C.R_SOCIAL AS CLIENTE,'
      '  V.NOME AS VENEDOR,'
      '  FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO'
      'FROM TB_CONTAS_RECEBER CR'
      'LEFT OUTER JOIN TB_CLIENTE  C ON  (C.ID_CLIENTE = CR.ID_CLIENTE)'
      
        'LEFT OUTER JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = CR.ID_VENDEDOR' +
        ')'
      'LEFT OUTER JOIN TB_USUARIO L ON (L.ID_USUARIO = CR.ID_USUARIO)'
      
        'LEFT OUTER JOIN TB_PLANO_PAGAMENTO TP ON (TP.ID_PLANO_PAGAMENTO ' +
        '= CR.ID_PLANO_PAGAMENTO)LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP ON' +
        ' (FP.ID_FORMA_PAGAMENTO = CR.ID_FORMA_PAGAMENTO)'
      'WHERE CR.ID_CLIENTE = :ID_CLIENTE'
      'AND CR.DT_EMISSAO   = :DT_EMI'
      'AND CR.ID_PEDIDO    = :ID_PEDIDO'
      'ORDER BY CR.DT_VENCIMENTO')
    SQLConnection = DM.Conexao
    Left = 109
    Top = 255
    object qContasReceberID_CONTAS_RECEBER: TIntegerField
      FieldName = 'ID_CONTAS_RECEBER'
      ProviderFlags = []
    end
    object qContasReceberID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
      Required = True
    end
    object qContasReceberID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object qContasReceberID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qContasReceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object qContasReceberID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qContasReceberID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object qContasReceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object qContasReceberDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qContasReceberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object qContasReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
    end
    object qContasReceberQT_DIAS: TIntegerField
      FieldName = 'QT_DIAS'
    end
    object qContasReceberQT_PARCELA: TIntegerField
      FieldName = 'QT_PARCELA'
    end
    object qContasReceberNR_DOC: TStringField
      FieldName = 'NR_DOC'
      Size = 15
    end
    object qContasReceberVL_COMPRA: TFMTBCDField
      FieldName = 'VL_COMPRA'
      Precision = 18
      Size = 2
    end
    object qContasReceberVL_PARCELA: TFMTBCDField
      FieldName = 'VL_PARCELA'
      Precision = 18
      Size = 2
    end
    object qContasReceberNR_PARCELA: TStringField
      FieldName = 'NR_PARCELA'
      Size = 10
    end
    object qContasReceberSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qContasReceberCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object qContasReceberVENEDOR: TStringField
      FieldName = 'VENEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qContasReceberFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object qContasReceberQT_DIAS_ATRAZO: TIntegerField
      FieldName = 'QT_DIAS_ATRAZO'
    end
  end
  object dspContasReceber: TDataSetProvider
    DataSet = qContasReceber
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    OnGetTableName = dspContasReceberGetTableName
    Left = 139
    Top = 256
  end
  object cdsContasReceber: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_EMI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_PEDIDO'
        ParamType = ptInput
      end>
    ProviderName = 'dspContasReceber'
    Left = 173
    Top = 255
    object cdsContasReceberID_CONTAS_RECEBER: TIntegerField
      FieldName = 'ID_CONTAS_RECEBER'
      ProviderFlags = []
    end
    object cdsContasReceberID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsContasReceberID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Required = True
    end
    object cdsContasReceberID_PLANO_PAGAMENTO: TIntegerField
      FieldName = 'ID_PLANO_PAGAMENTO'
      Required = True
    end
    object cdsContasReceberID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsContasReceberID_FORMA_PAGAMENTO: TIntegerField
      FieldName = 'ID_FORMA_PAGAMENTO'
    end
    object cdsContasReceberID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsContasReceberID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object cdsContasReceberDT_EMISSAO: TDateField
      DisplayLabel = 'Data Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      EditMask = '##/##/####'
    end
    object cdsContasReceberDT_VENCIMENTO: TDateField
      DisplayLabel = 'Data Vencimento'
      FieldName = 'DT_VENCIMENTO'
      EditMask = '##/##/####'
    end
    object cdsContasReceberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
    end
    object cdsContasReceberQT_DIAS: TIntegerField
      DisplayLabel = 'Qt Dias'
      FieldName = 'QT_DIAS'
    end
    object cdsContasReceberQT_PARCELA: TIntegerField
      DisplayLabel = 'Qt Parcelas'
      FieldName = 'QT_PARCELA'
    end
    object cdsContasReceberNR_DOC: TStringField
      DisplayLabel = 'N'#186' Doc'
      FieldName = 'NR_DOC'
      Size = 15
    end
    object cdsContasReceberVL_COMPRA: TFMTBCDField
      DisplayLabel = 'Valor Compra'
      FieldName = 'VL_COMPRA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsContasReceberVL_PARCELA: TFMTBCDField
      DisplayLabel = 'Valor Parcelas'
      FieldName = 'VL_PARCELA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsContasReceberNR_PARCELA: TStringField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'NR_PARCELA'
      Size = 10
    end
    object cdsContasReceberSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsContasReceberCLIENTE: TStringField
      FieldName = 'CLIENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsContasReceberVENEDOR: TStringField
      FieldName = 'VENEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsContasReceberFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsContasReceberQT_DIAS_ATRAZO: TIntegerField
      FieldName = 'QT_DIAS_ATRAZO'
    end
  end
  object dsContasReceber: TDataSource
    DataSet = cdsContasReceber
    Left = 205
    Top = 255
  end
  object spSaidaEstoqueCupom: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PDV'
        ParamType = ptInput
      end>
    SQLConnection = DM.Conexao
    StoredProcName = 'SAIDA_ESTOQUE_CUPOM_FISCAL'
    Left = 137
    Top = 8
  end
  object dspSaidaEstoqueCupom: TDataSetProvider
    DataSet = spSaidaEstoqueCupom
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 168
    Top = 8
  end
  object cdsSaidaEstoqueCupom: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspSaidaEstoqueCupom'
    Left = 201
    Top = 8
  end
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.ModeloDF = moNFCe
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFCeFortes1
    Left = 345
    Top = 8
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
    ImprimirUnQtVlComercial = iuTributavel
    ImprimirDadosDocReferenciados = True
    Left = 396
    Top = 10
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
    PosPrinter = ACBrPosPrinter1
    Left = 342
    Top = 58
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
    ImprimeEmUmaLinha = False
    Left = 382
    Top = 58
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = CP1252
    Left = 446
    Top = 10
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    Modelo = ppEscDaruma
    Porta = 'COM9'
    EspacoEntreLinhas = 30
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 5
    Left = 478
    Top = 66
  end
end
