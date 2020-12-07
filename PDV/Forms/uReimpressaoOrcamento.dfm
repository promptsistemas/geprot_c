object frmReimpressaoOrcamento: TfrmReimpressaoOrcamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Reimpress'#227'o de Or'#231'amento'
  ClientHeight = 466
  ClientWidth = 929
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
    Top = 413
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
    Left = 244
    Top = 433
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
    Left = 320
    Top = 413
    Width = 241
    Height = 17
    DataField = 'NOME_USUARIO'
    DataSource = dsOrcamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 320
    Top = 433
    Width = 25
    Height = 17
    DataField = 'CAIXA'
    DataSource = dsOrcamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 351
    Top = 433
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
    Left = 399
    Top = 433
    Width = 298
    Height = 17
    DataField = 'ID_LOJA'
    DataSource = dsOrcamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 46
    Width = 921
    Height = 163
    Color = clYellow
    DataSource = dsOrcamento
    FixedColor = clMoneyGreen
    GradientEndColor = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = FormKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PDV'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VENDA'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'R_SOCIAL'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ_CPF'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_DESC'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_LIQ'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUPOM'
        Title.Caption = 'Cupom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VENDEDOR'
        Width = 160
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 45
    Align = alTop
    Caption = 'Selecione Um Registro Para Imprimir'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object SpeedButton3: TSpeedButton
      Left = 890
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
  object DBGrid2: TDBGrid
    Left = 0
    Top = 210
    Width = 921
    Height = 201
    Color = clInfoBk
    DataSource = dsReimpressao
    Font.Charset = ANSI_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
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
  object BB_IMPRIMIR: TBitBtn
    Left = 1
    Top = 411
    Width = 97
    Height = 52
    Caption = 'Im&primir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF9F9D9EFF00FFFF00FFFF00FF8281818281818E8A
      8BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9D9E9F9D9ED4D1D196
      93933B393A545253999797C5C2C4D7D5D5828181FF00FFFF00FFFF00FFFF00FF
      9F9D9E9F9D9EFAFAFAFFFFFFD7D4D59E9C9C4443451C1C1E1C1C1F3534356766
      678281818E8A8BFF00FF918E8F9F9D9EF0EEEFFFFFFFEEEBEBCAC9C99F9D9E8E
      8A8A9793958786866463633C3B3D1F2022201F21747273FF00FF9C9899E9E7E7
      E5E5E5BDBBBBA6A4A4B4B1B1C2C1C1A4A1A19692939290909793959A98988E8A
      8B6B6A6A828181FF00FF959192ADABACA4A1A1B0AFAFC9C9C9D1D3D3EDEDEBF0
      EEF0DCDADAC5C4C4ADABAB9A98999390909793958E8A8BFF00FF918E8FAFADAF
      C9C7C7CECECEC9C9C9E2E2E2D1CFCFA1ABA1BDBCBCCBCECFD5D5D5D3D3D3C6C5
      C5B6B6B6989797FF00FFFF00FF9C999AD0D1D1CFCFCFDCDCDCC9C6C6B5B0B4A5
      D1A7BAC4BCC5A7A1ADA4A3000000000000000000000000FF00FFFF00FFFF00FF
      9C999AC1BFBFAFADADB1B0B0E3E3E3F6F3F3EEEDEEEDE1DEDCD8D8000000B4B4
      B40125FF000000FF00FFFF00FFFF00FFFF00FF9C999AD8DADACACACB9D9FA0BB
      BFC1D3D5D7D4D9D9D5D5D5000000AFADADFF00FF0125FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFBE5E1F8E0D4E9C9BDE3C7BDE2CCC7DED3CED0CECC0000000000
      000000000000000125FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDECEFFCFBDFF
      C4AFFFBAA3FFB199FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFCE9F9DFFDDCEFFCCBCFEC2B0FFBBA4F7A992FF00FF0000000000
      00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFCE9F9DFFDDCEFFCCBCFE
      C2B0FEB8A3FAB099FF00FF000000FF00FF0125FF000000FF00FFFF00FFFF00FF
      FF00FFCE9F9DFAE0D5FFDACCFFCEBDFFC6B1FCB8A3F8AD99FF00FF000000FF00
      FFFF00FF0125FFFF00FFFF00FFFF00FFFF00FFCE9F9DCE9F9DCE9F9DCE9F9DF3
      AD9DF3AD9DFF00FFFF00FF0000000000000000000000000125FF}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 3
    OnClick = BB_IMPRIMIRClick
    OnKeyDown = FormKeyDown
  end
  object BB_SAIR: TBitBtn
    Left = 101
    Top = 411
    Width = 97
    Height = 52
    Caption = '(Esc) &Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
      4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
      4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
      4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
      41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
      575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
      43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
      6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
      C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
      65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
      D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
      6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
      824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
      D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
      76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
      FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
      4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
      4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Layout = blGlyphTop
    ParentFont = False
    TabOrder = 4
    OnClick = BB_SAIRClick
    OnKeyDown = FormKeyDown
  end
  object Memo2: TMemo
    Left = 463
    Top = 456
    Width = 460
    Height = 350
    BorderStyle = bsNone
    Color = clGradientInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 5
    Visible = False
  end
  object DBNavigator1: TDBNavigator
    Left = 697
    Top = 417
    Width = 204
    Height = 18
    DataSource = dsOrcamento
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 6
  end
  object qOrcamento: TSQLDataSet
    CommandText = 
      'SELECT'#13#10' PDV.ID_PDV,'#13#10' PDV.ID_LOJA,'#13#10' PDV.DT_VENDA,'#13#10' PDV.VL_VEN' +
      'DA,'#13#10' PDV.VL_DESC,'#13#10' PDV.VL_LIQ,'#13#10' PDV.STATUS,'#13#10' PDV.CUPOM,'#13#10' PD' +
      'V.ID_VENDEDOR,'#13#10' PDV.CAIXA,'#13#10' PDV.ID_USUARIO,'#13#10' V.NOME AS VENDED' +
      'OR,'#13#10' U.NOME_USUARIO,'#13#10' C.R_SOCIAL,'#13#10' C.CNPJ_CPF'#13#10'FROM'#13#10' TB_PDV ' +
      'PDV'#13#10'JOIN TB_VENDEDOR V ON (V.ID_VENDEDOR = PDV.ID_VENDEDOR)'#13#10'JO' +
      'IN TB_USUARIO U ON (U.ID_USUARIO = PDV.ID_USUARIO)'#13#10'JOIN TB_CLIE' +
      'NTE C ON (C.ID_CLIENTE = PDV.ID_CLIENTE)'#13#10'WHERE'#13#10' PDV.STATUS = '#39 +
      'F'#39#13#10'AND PDV.CAIXA = :CAIXA'#13#10'AND PDV.DT_VENDA = :DT_ORCAMENTO'#13#10'AN' +
      'D PDV.ID_LOJA = :LOJA'#13#10#13#10'ORDER BY PDV.DT_VENDA, PDV.ID_PDV desc'
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
        Name = 'LOJA'
        ParamType = ptInput
      end>
    SQLConnection = DM.Conexao
    Left = 600
    Top = 112
    object qOrcamentoID_PDV: TIntegerField
      FieldName = 'ID_PDV'
      Required = True
    end
    object qOrcamentoID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qOrcamentoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object qOrcamentoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Precision = 18
      Size = 2
    end
    object qOrcamentoVL_DESC: TFMTBCDField
      FieldName = 'VL_DESC'
      Precision = 18
      Size = 2
    end
    object qOrcamentoVL_LIQ: TFMTBCDField
      FieldName = 'VL_LIQ'
      Precision = 18
      Size = 2
    end
    object qOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object qOrcamentoCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object qOrcamentoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object qOrcamentoCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qOrcamentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qOrcamentoVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object qOrcamentoNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object qOrcamentoR_SOCIAL: TStringField
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object qOrcamentoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
  end
  object dspOrcamento: TDataSetProvider
    DataSet = qOrcamento
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 632
    Top = 112
  end
  object cdsOrcamento: TClientDataSet
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
        Name = 'LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspOrcamento'
    Left = 664
    Top = 112
    object cdsOrcamentoID_PDV: TIntegerField
      DisplayLabel = 'N'#186' Or'#231'amento'
      FieldName = 'ID_PDV'
      Required = True
    end
    object cdsOrcamentoID_LOJA: TIntegerField
      DisplayLabel = 'Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsOrcamentoDT_VENDA: TDateField
      DisplayLabel = 'Data '
      FieldName = 'DT_VENDA'
      EditMask = '##/##/####'
    end
    object cdsOrcamentoVL_VENDA: TFMTBCDField
      DisplayLabel = 'Vl. Venda'
      FieldName = 'VL_VENDA'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoVL_DESC: TFMTBCDField
      DisplayLabel = 'Vl. Desc'
      FieldName = 'VL_DESC'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoVL_LIQ: TFMTBCDField
      DisplayLabel = 'Vl. Liq'
      FieldName = 'VL_LIQ'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsOrcamentoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsOrcamentoCUPOM: TStringField
      FieldName = 'CUPOM'
      Size = 1
    end
    object cdsOrcamentoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOrcamentoCAIXA: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
    end
    object cdsOrcamentoNOME_USUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object cdsOrcamentoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsOrcamentoVENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object cdsOrcamentoR_SOCIAL: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'R_SOCIAL'
      ProviderFlags = []
      Size = 50
    end
    object cdsOrcamentoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
  end
  object dsOrcamento: TDataSource
    DataSet = cdsOrcamento
    Left = 696
    Top = 112
  end
  object qReimpressao: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NR_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      ' PDV.ID_ITEM_PDV,'
      ' PDV.ID_PDV,'
      ' PDV.ID_PRODUTO,'
      ' PDV.ID_GRUPO_PRODUTO,'
      ' PDV.QUANT,'
      ' PDV.VL_UNIT,'
      ' PDV.VL_TOTAL,'
      ' PD.DT_VENDA,'
      ' pdv.ITEM,'
      ' p.CD_BARRA,'
      ' P.DESCRICAO,'
      ' P.UNIDADE'
      'FROM'
      ' TB_ITEM_PDV PDV'
      
        'LEFT OUTER JOIN TB_PRODUTO P ON (P.ID_PRODUTO = PDV.ID_PRODUTO A' +
        'ND P.ID_GRUPO_PRODUTO = PDV.ID_GRUPO_PRODUTO)LEFT OUTER JOIN TB_' +
        'PDV     PD ON (PD.ID_PDV = PDV.ID_PDV)'
      'WHERE'
      ' PDV.ID_PDV = :NR_ORCAMENTO'
      'AND'
      ' PD.ID_LOJA       = :ID_LOJA')
    SQLConnection = DM.Conexao
    Left = 601
    Top = 154
    object qReimpressaoID_ITEM_PDV: TIntegerField
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object qReimpressaoID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object qReimpressaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qReimpressaoQUANT: TFMTBCDField
      FieldName = 'QUANT'
      Precision = 18
      Size = 3
    end
    object qReimpressaoVL_UNIT: TFMTBCDField
      FieldName = 'VL_UNIT'
      Precision = 18
      Size = 2
    end
    object qReimpressaoVL_TOTAL: TFMTBCDField
      FieldName = 'VL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qReimpressaoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object qReimpressaoCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object qReimpressaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qReimpressaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qReimpressaoITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object qReimpressaoID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
  end
  object dspReimpressao: TDataSetProvider
    DataSet = qReimpressao
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 633
    Top = 154
  end
  object cdsReimpressao: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_PDV'
    MasterFields = 'ID_PDV'
    MasterSource = dsOrcamento
    PacketRecords = 0
    Params = <
      item
        DataType = ftInteger
        Name = 'NR_ORCAMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_LOJA'
        ParamType = ptInput
      end>
    ProviderName = 'dspReimpressao'
    Left = 661
    Top = 154
    object cdsReimpressaoID_ITEM_PDV: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ID_ITEM_PDV'
      Required = True
    end
    object cdsReimpressaoID_PDV: TIntegerField
      FieldName = 'ID_PDV'
    end
    object cdsReimpressaoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsReimpressaoQUANT: TFMTBCDField
      DisplayLabel = 'Quant'
      FieldName = 'QUANT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 3
    end
    object cdsReimpressaoVL_UNIT: TFMTBCDField
      DisplayLabel = 'Vl. Unit'
      FieldName = 'VL_UNIT'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsReimpressaoVL_TOTAL: TFMTBCDField
      DisplayLabel = 'Total'
      FieldName = 'VL_TOTAL'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsReimpressaoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
    end
    object cdsReimpressaoCD_BARRA: TStringField
      DisplayLabel = 'C'#243'd.Barra'
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsReimpressaoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsReimpressaoUNIDADE: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsReimpressaoITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object cdsReimpressaoID_GRUPO_PRODUTO: TIntegerField
      FieldName = 'ID_GRUPO_PRODUTO'
    end
  end
  object dsReimpressao: TDataSource
    DataSet = cdsReimpressao
    Left = 693
    Top = 154
  end
end
