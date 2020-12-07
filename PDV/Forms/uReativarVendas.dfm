object frmReativarVendas: TfrmReativarVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Reativar Vendas'
  ClientHeight = 470
  ClientWidth = 906
  Color = 8957695
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 204
    Top = 407
    Width = 112
    Height = 17
    Caption = 'Usu'#225'rio de Caixa : '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 242
    Top = 428
    Width = 67
    Height = 17
    Caption = 'Caixa Loja :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 322
    Top = 407
    Width = 241
    Height = 17
    DataField = 'NOME_USUARIO'
    DataSource = dsReativarVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 320
    Top = 428
    Width = 25
    Height = 17
    DataField = 'CAIXA'
    DataSource = dsReativarVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 351
    Top = 428
    Width = 31
    Height = 17
    Caption = 'Loja :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 393
    Top = 430
    Width = 298
    Height = 17
    DataField = 'NOME_LOJA'
    DataSource = dsReativarVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = -4
    Width = 901
    Height = 45
    Caption = 'Selecione Uma Venda Para Reativar'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object SpeedButton3: TSpeedButton
      Left = 862
      Top = 1
      Width = 38
      Height = 43
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
      OnClick = SpeedButton3Click
      ExplicitLeft = 1102
      ExplicitTop = 5
      ExplicitHeight = 36
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 697
    Top = 409
    Width = 204
    Height = 18
    DataSource = dsReativarVenda
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 1
  end
  object BB_REATIVAR: TBitBtn
    Left = 0
    Top = 403
    Width = 97
    Height = 50
    Caption = '&Reativar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000FFFFFF0FFFFFFFF0
      FFFFFF0FFFFFFFF0FFFFFF0FFF9FFFF0FFFFFF0FF999FFF0FFFFFF0FF9F99FF0
      FFFFFF0F99FF99F0FFFFFF0F99FFF990FFFFFF0990000099FFFFFFF99FFFFFF9
      9FFFFFFFFFFFFFFF99FFFFFFFFFFFFFFF99FFFFFFFFFFFFFFF9F}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 2
    OnClick = BB_REATIVARClick
    OnKeyDown = FormKeyDown
  end
  object BB_CANCELAR: TBitBtn
    Left = 98
    Top = 403
    Width = 97
    Height = 50
    Caption = '(Esc) &Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFF55555FFFFFF55555F55555FFFF55555FFF55555FF55555FFFF5555555555
      55FFFFF5555555555FFFFFFF55555555FFFFFFFFF555555FFFFFFFFFF555555F
      FFFFFFFF55555555FFFFFFF5555555555FFFFFF5555555555FFFFF55555FF555
      55FFF55555FFFF55555F55555FFFFFF55555FFFFFFFFFFFFFFFF}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 3
    OnClick = BB_CANCELARClick
    OnKeyDown = FormKeyDown
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 43
    Width = 900
    Height = 176
    Color = clYellow
    Ctl3D = False
    DataSource = dsReativarVenda
    FixedColor = clMoneyGreen
    GradientEndColor = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = FormKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DT_VENDA'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PDV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_SOCIAL'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF'
        Width = 132
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_DESC'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_LIQ'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUPOM'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Width = 172
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 1
    Top = 224
    Width = 900
    Height = 177
    Color = clInfoBk
    DataSource = dsItemVenda
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = FormKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Width = 145
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 254
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_UNIT'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        Width = 89
        Visible = True
      end>
  end
  object spCancelaPagamento: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PDV'
        ParamType = ptInput
      end>
    SQLConnection = DM.Conexao
    StoredProcName = 'DEL_PAGAMENTO_PDV'
    Left = 600
    Top = 239
  end
  object dspCancelaPagamento: TDataSetProvider
    DataSet = spCancelaPagamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 632
    Top = 240
  end
  object cdsCancelaPagamento: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspCancelaPagamento'
    Left = 664
    Top = 239
  end
  object qReativarVenda: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' PDV.ID_PDV,'#13#10' PDV.ID_LOJA,'#13#10' PDV.ID_CLIENTE,'#13#10' PDV.ID_V' +
      'ENDEDOR,'#13#10' PDV.ID_USUARIO,'#13#10' PDV.CAIXA,'#13#10' PDV.DT_VENDA,'#13#10' PDV.VL' +
      '_VENDA,'#13#10' PDV.VL_DESC,'#13#10' PDV.VL_LIQ,'#13#10' PDV.STATUS,'#13#10' PDV.CUPOM,'#13 +
      #10' V.NOME AS VENDEDOR,'#13#10' U.NOME_USUARIO,'#13#10' C.R_SOCIAL,'#13#10' C.FANTAS' +
      'IA,'#13#10' C.CNPJ_CPF,'#13#10' L.FANTASIA AS NOME_LOJA'#13#10'FROM'#13#10' TB_PDV PDV'#13#10 +
      'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = PDV.ID_VENDEDOR)'#13#10'JOIN TB' +
      '_USUARIO U ON (U.ID_USUARIO = PDV.ID_USUARIO)'#13#10'JOIN TB_CLIENTE C' +
      ' ON (C.ID_CLIENTE = PDV.ID_CLIENTE)'#13#10'JOIN TB_LOJAS L ON (L.ID_LO' +
      'JA = PDV.ID_LOJA)'#13#10'WHERE'#13#10' PDV.STATUS = '#39'F'#39#13#10'AND PDV.CAIXA = :CA' +
      'IXA'#13#10'AND PDV.DT_VENDA = :DT_ORCAMENTO'#13#10'AND PDV.ID_LOJA  = :ID_LO' +
      'JA'#13#10'AND PDV.ID_USUARIO  = :ID_USUARIO'#13#10'ORDER BY PDV.DT_VENDA, PD' +
      'V.ID_PDV DESC'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = DM.Conexao
    Left = 600
    Top = 112
    object qReativarVendaID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object qReativarVendaID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qReativarVendaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object qReativarVendaID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qReativarVendaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qReativarVendaCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qReativarVendaDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object qReativarVendaVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object qReativarVendaVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qReativarVendaVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object qReativarVendaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qReativarVendaCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object qReativarVendaVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object qReativarVendaNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object qReativarVendaR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qReativarVendaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object qReativarVendaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object qReativarVendaNOME_LOJA: TStringField
      FieldName = 'NOME_LOJA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dspReativarVenda: TDataSetProvider
    DataSet = qReativarVenda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 632
    Top = 112
  end
  object cdsReativarVenda: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'dspReativarVenda'
    Left = 664
    Top = 112
    object cdsReativarVendaID_PDV: TIntegerField
      DisplayLabel = 'N'#186' Or'#231'amento'
      FieldName = 'ID_PDV'
      Required = True
    end
    object cdsReativarVendaID_LOJA: TIntegerField
      DisplayLabel = 'Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsReativarVendaID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsReativarVendaID_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'ID_VENDEDOR'
    end
    object cdsReativarVendaID_USUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'ID_USUARIO'
    end
    object cdsReativarVendaCAIXA: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
    end
    object cdsReativarVendaDT_VENDA: TDateField
      DisplayLabel = 'Data Or'#231'amento'
      FieldName = 'DT_VENDA'
      EditMask = '##/##/####'
    end
    object cdsReativarVendaVL_VENDA: TFMTBCDField
      DisplayLabel = 'Vl.Venda'
      FieldName = 'VL_VENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsReativarVendaVL_DESC: TFMTBCDField
      DisplayLabel = 'Vl. Desc'
      FieldName = 'VL_DESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsReativarVendaVL_LIQ: TFMTBCDField
      DisplayLabel = 'Vl. Liq'
      FieldName = 'VL_LIQ'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsReativarVendaSTATUS: TStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsReativarVendaCUPOM: TStringField
      DisplayLabel = 'Cupom'
      FieldName = 'CUPOM'
      Size = 1
    end
    object cdsReativarVendaVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      ProviderFlags = []
      Size = 50
    end
    object cdsReativarVendaNOME_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 30
    end
    object cdsReativarVendaR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsReativarVendaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object cdsReativarVendaCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ CPF'
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsReativarVendaNOME_LOJA: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'NOME_LOJA'
      ProviderFlags = []
      Size = 35
    end
  end
  object dsReativarVenda: TDataSource
    DataSet = cdsReativarVenda
    Left = 696
    Top = 112
  end
  object dsItemVenda: TDataSource
    DataSet = cdsItemVenda
    Left = 696
    Top = 168
  end
  object cdsItemVenda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PDV'
    MasterFields = 'ID_PDV'
    MasterSource = dsReativarVenda
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PDV'
        ParamType = ptInput
      end>
    ProviderName = 'dspItemVenda'
    Left = 664
    Top = 168
    object cdsItemVendaID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object cdsItemVendaID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsItemVendaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsItemVendaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object cdsItemVendaITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object cdsItemVendaQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.000'
      EditFormat = '###,###0.000'
      Precision = 18
      Size = 4
    end
    object cdsItemVendaVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemVendaVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Vl. Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsItemVendaCD_BARRA: TStringField
      DisplayLabel = 'C'#243'd Barra'
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsItemVendaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object cdsItemVendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsItemVendaDESCRICAO: TStringField
      DisplayLabel = 'Dercri'#231#227'o do Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsItemVendaUNIDADE: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsItemVendaTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      Size = 1
    end
    object cdsItemVendaALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 2
    end
    object cdsItemVendaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsItemVendaESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      Precision = 18
      Size = 3
    end
  end
  object dspItemVenda: TDataSetProvider
    DataSet = qItemVenda
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 632
    Top = 168
  end
  object qItemVenda: TSQLQuery
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
      ' PR.DESCRICAO,'
      ' PR.UNIDADE,'
      ' PR.TIPO_ALIQ,'
      ' PR.ALIQUOTA,'
      ' PR.NCM,'
      ' PR.ESTOQUE_1'
      'FROM TB_ITEM_PDV IP'
      'LEFT OUTER JOIN TB_PDV P ON (P.ID_PDV = IP.ID_PDV)'
      
        'LEFT OUTER JOIN TB_PRODUTO PR ON (PR.ID_PRODUTO = IP.ID_PRODUTO ' +
        'AND PR.ID_GRUPO_PRODUTO = IP.ID_GRUPO_PRODUTO)'
      'WHERE IP.ID_PDV = :ID_PDV')
    SQLConnection = DM.Conexao
    Left = 600
    Top = 168
    object qItemVendaID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object qItemVendaID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qItemVendaID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qItemVendaID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
    object qItemVendaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qItemVendaQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 4
    end
    object qItemVendaVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 3
    end
    object qItemVendaVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 3
    end
    object qItemVendaCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object qItemVendaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object qItemVendaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qItemVendaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qItemVendaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qItemVendaTIPO_ALIQ: TStringField
      FieldName = 'TIPO_ALIQ'
      Size = 1
    end
    object qItemVendaALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      Precision = 9
      Size = 2
    end
    object qItemVendaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object qItemVendaESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      Precision = 18
      Size = 3
    end
  end
end
