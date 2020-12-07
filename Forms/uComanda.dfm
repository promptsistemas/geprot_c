object frmComanda: TfrmComanda
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Atendimento Ao Cliente - '
  ClientHeight = 692
  ClientWidth = 1188
  Color = 11589887
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblPeso: TLabel
    Left = 472
    Top = 640
    Width = 33
    Height = 13
    Caption = 'lblPeso'
    Visible = False
  end
  object lblResposta: TLabel
    Left = 586
    Top = 642
    Width = 33
    Height = 13
    Caption = 'lblPeso'
    Visible = False
  end
  object Image2: TImage
    Left = 608
    Top = 448
    Width = 105
    Height = 105
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 8
    Top = 48
    Width = 737
    Height = 530
    ColCount = 10
    Color = 11589887
    DataSource = DM.dsMesa
    PanelBorder = gbNone
    PanelHeight = 35
    PanelWidth = 72
    ParentColor = False
    ParentShowHint = False
    TabOrder = 0
    RowCount = 15
    SelectedColor = clWhite
    ShowHint = True
    OnClick = DBCtrlGrid1Click
    OnEnter = DBCtrlGrid1Enter
    OnKeyDown = DBCtrlGrid1KeyDown
    OnKeyPress = DBCtrlGrid1KeyPress
    OnKeyUp = DBCtrlGrid1KeyUp
    OnPaintPanel = DBCtrlGrid1PaintPanel
    object DBText1: TDBText
      Left = 4
      Top = 2
      Width = 64
      Height = 43
      Alignment = taCenter
      Color = clWhite
      DataField = 'NOME_MESA'
      DataSource = DM.dsMesa
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -27
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      OnDblClick = DBText1DblClick
    end
  end
  object Panel4: TPanel
    Left = 8
    Top = 585
    Width = 720
    Height = 33
    BevelOuter = bvNone
    Caption = 'LEGENDA'
    Color = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 144
    Top = 128
    Width = 409
    Height = 417
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = 11206655
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 750
    Top = 40
    Width = 429
    Height = 121
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 
        'Controle de Emiss'#227'o de Pedidos/Comandas                         ' +
        '                                          '
      object GB_COMANDA: TGroupBox
        Left = 0
        Top = 0
        Width = 421
        Height = 96
        Align = alTop
        Caption = '  Pedidos / Comandas   '
        Color = clWhite
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label2: TLabel
          Left = 2
          Top = 15
          Width = 36
          Height = 13
          Caption = 'Pedido'
        end
        object Label3: TLabel
          Left = 75
          Top = 15
          Width = 72
          Height = 13
          Caption = 'Data Abertura'
        end
        object Label4: TLabel
          Left = 148
          Top = 15
          Width = 55
          Height = 13
          Caption = 'Hora Aber.'
        end
        object Label5: TLabel
          Left = 231
          Top = 15
          Width = 39
          Height = 13
          Caption = 'Gar'#231'om'
        end
        object Label6: TLabel
          Left = 3
          Top = 58
          Width = 65
          Height = 13
          Caption = 'N'#186' Comanda'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 67
          Top = 58
          Width = 27
          Height = 13
          Caption = 'Mesa'
        end
        object Label8: TLabel
          Left = 163
          Top = 58
          Width = 36
          Height = 13
          Caption = 'Cliente'
        end
        object Shape1: TShape
          Left = 3
          Top = 112
          Width = 421
          Height = 1
        end
        object L_PRODUTO: TLabel
          Left = 4
          Top = 201
          Width = 7
          Height = 24
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 202
          Top = 15
          Width = 24
          Height = 13
          Caption = 'C'#243'd.'
        end
        object SB_VENDEDOR: TSpeedButton
          Left = 280
          Top = 5
          Width = 23
          Height = 22
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700666769006668
            6A0066696B00676A6C00696B6C006D6D6D006E6E6E006F6F6F00707070006F70
            71006F7172006F7173006F7174006F7275006F7276006F737600707377006E74
            7A006C757E006F757B0072767A0073777A0075787B0076797C00787B7D007B7D
            7F007D7F80008081820084848400858585008686860087878700888888008B89
            89008F8B8A00938C8A00988E8B009D8F8B00A28F8A00A78F8900AA8E8900AC8E
            8800AE8E8800B08D8700B18D8700B38E8700B38D8600B48E8700B58F8700B690
            8700B6918800B7928900B8948A00BA958B00BB968C00BD988E00BE988E00C098
            8E00C1998F00C29A8F00C49C9100C6A09300C9A39500CDA89600D0AC9700D5B3
            9900D9B89B00DEBE9E00E6C59E00E9CAA200ECCDA300F0D0A300F2D2A300F3D5
            A600F4D8AB00F4DAAC00F5DBAE00F5DDB000F5DDB200F5DEB300F5E1B900F7E7
            C000F9EECB00FBF4D300FDF9D900FDFBDC00FEFDE000FEFDE500FDFDEA00FBFC
            E900F8FAE800F5F8E900F1F7EA00EFF5EA00EDF4EA00EDF2EA00EEEDE900EFE5
            EA00F1DBEA00F4CDEB00F9B9ED00FE81F300FE38F900FE16FC00FE05FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F905FE00EF11FE00E31E
            FE00D62BFE00CC36FC00B949FB00A859F9009869F6008B75F5007783F400638C
            EF005691EC004E94E9004996E8004596E700489BE7004B9FE8004EA3E8004FA7
            EA004FA5E5004EA3E2004E9FDD004E9DD900509BD600509AD300DB68A0DBDBDB
            DBDBDBDBDBDBDBDBDBDBFFF57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DB
            DBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57A
            9CDBDBDBDBDBDBDBDBDBDBDBDBF9F9F56BDB93A5A59FDBDBDBDBDBDBDBDBF9CA
            A49EB8BFBFBCAB96DBDBDBDBDBDBDBDBA7B9BCBDBDBFC0CA93DBDBDBDBDBDBDB
            A5B4BBBDBFC0C0C0A7DBDBDBDBDBDBA5B5ACBABEBFC0C0C0BA9CDBDBDBDBDBA5
            B5AAB4BCBEBFBFBEBA9EDBDBDBDBDB9EB9ACADB8BCBEBDBEB897DBDBDBDBDBDB
            ABBFB8ADB1B9BBBC99DBDBDBDBDBDBDB96CAC0B1ACB0B9A999DBDBDBDBDBDBDB
            DB93A7B8B7AE9999DBDBDBDBDBDBDBDBDBDBDB9D9E9ADBDBDBDB}
          Visible = False
          OnClick = SB_VENDEDORClick
        end
        object Label44: TLabel
          Left = 133
          Top = 58
          Width = 24
          Height = 13
          Caption = 'C'#243'd.'
        end
        object SB_CLIENTE: TSpeedButton
          Left = 272
          Top = 53
          Width = 23
          Height = 22
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            0800000000000001000000000000000000000001000000010000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121212001313130014141400151515001616160017171700181818001919
            19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
            2100222222002323230024242400252525002626260027272700282828002929
            29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
            3100323232003333330034343400353535003636360037373700383838003939
            39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
            4100424242004343430044444400454545004646460047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            5100525252005353530054545400555555005656560057575700585858005959
            59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
            6100626262006363630064646400656565006666660067676700666769006668
            6A0066696B00676A6C00696B6C006D6D6D006E6E6E006F6F6F00707070006F70
            71006F7172006F7173006F7174006F7275006F7276006F737600707377006E74
            7A006C757E006F757B0072767A0073777A0075787B0076797C00787B7D007B7D
            7F007D7F80008081820084848400858585008686860087878700888888008B89
            89008F8B8A00938C8A00988E8B009D8F8B00A28F8A00A78F8900AA8E8900AC8E
            8800AE8E8800B08D8700B18D8700B38E8700B38D8600B48E8700B58F8700B690
            8700B6918800B7928900B8948A00BA958B00BB968C00BD988E00BE988E00C098
            8E00C1998F00C29A8F00C49C9100C6A09300C9A39500CDA89600D0AC9700D5B3
            9900D9B89B00DEBE9E00E6C59E00E9CAA200ECCDA300F0D0A300F2D2A300F3D5
            A600F4D8AB00F4DAAC00F5DBAE00F5DDB000F5DDB200F5DEB300F5E1B900F7E7
            C000F9EECB00FBF4D300FDF9D900FDFBDC00FEFDE000FEFDE500FDFDEA00FBFC
            E900F8FAE800F5F8E900F1F7EA00EFF5EA00EDF4EA00EDF2EA00EEEDE900EFE5
            EA00F1DBEA00F4CDEB00F9B9ED00FE81F300FE38F900FE16FC00FE05FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F905FE00EF11FE00E31E
            FE00D62BFE00CC36FC00B949FB00A859F9009869F6008B75F5007783F400638C
            EF005691EC004E94E9004996E8004596E700489BE7004B9FE8004EA3E8004FA7
            EA004FA5E5004EA3E2004E9FDD004E9DD900509BD600509AD300DB68A0DBDBDB
            DBDBDBDBDBDBDBDBDBDBFFF57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DB
            DBDBDBDBDBDBDBDBDBDBDBF9F9F57AA4DBDBDBDBDBDBDBDBDBDBDBDBF9F9F57A
            9CDBDBDBDBDBDBDBDBDBDBDBDBF9F9F56BDB93A5A59FDBDBDBDBDBDBDBDBF9CA
            A49EB8BFBFBCAB96DBDBDBDBDBDBDBDBA7B9BCBDBDBFC0CA93DBDBDBDBDBDBDB
            A5B4BBBDBFC0C0C0A7DBDBDBDBDBDBA5B5ACBABEBFC0C0C0BA9CDBDBDBDBDBA5
            B5AAB4BCBEBFBFBEBA9EDBDBDBDBDB9EB9ACADB8BCBEBDBEB897DBDBDBDBDBDB
            ABBFB8ADB1B9BBBC99DBDBDBDBDBDBDB96CAC0B1ACB0B9A999DBDBDBDBDBDBDB
            DB93A7B8B7AE9999DBDBDBDBDBDBDBDBDBDBDB9D9E9ADBDBDBDB}
          Visible = False
          OnClick = SB_CLIENTEClick
        end
        object DBEdit1: TDBEdit
          Left = 2
          Top = 29
          Width = 71
          Height = 19
          Ctl3D = False
          DataField = 'ID_COMANDA'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = FormKeyPress
        end
        object DBEdit2: TDBEdit
          Left = 75
          Top = 29
          Width = 71
          Height = 19
          Ctl3D = False
          DataField = 'DT_ABERTURA'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = FormKeyPress
        end
        object DBEdit3: TDBEdit
          Left = 148
          Top = 29
          Width = 52
          Height = 19
          Ctl3D = False
          DataField = 'HR_ABERTURA'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = FormKeyPress
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 72
          Width = 63
          Height = 19
          Ctl3D = False
          DataField = 'NR_COMANDA'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          TabOrder = 3
          OnExit = DBEdit4Exit
          OnKeyPress = FormKeyPress
        end
        object DBEdit5: TDBEdit
          Left = 68
          Top = 72
          Width = 63
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'NOME_MESA'
          DataSource = DM.dsComanda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
          OnExit = DBEdit5Exit
          OnKeyPress = FormKeyPress
        end
        object DBEdit20: TDBEdit
          Left = 202
          Top = 29
          Width = 28
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ID_VENDEDOR'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          TabOrder = 6
          OnEnter = DBEdit20Enter
          OnExit = DBEdit20Exit
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit21: TDBEdit
          Left = 231
          Top = 29
          Width = 185
          Height = 19
          Ctl3D = False
          DataField = 'VENDEDOR'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit22: TDBEdit
          Left = 133
          Top = 72
          Width = 28
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'ID_CLIENTE'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          TabOrder = 4
          OnEnter = DBEdit22Enter
          OnExit = DBEdit22Exit
          OnKeyPress = DBEdit22KeyPress
        end
        object DBEdit23: TDBEdit
          Left = 163
          Top = 72
          Width = 253
          Height = 19
          Ctl3D = False
          DataField = 'R_SOCIAL'
          DataSource = DM.dsComanda
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
          OnEnter = DBEdit23Enter
          OnExit = DBEdit23Exit
          OnKeyPress = FormKeyPress
        end
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 751
    Top = 162
    Width = 428
    Height = 120
    Color = clWhite
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object Label23: TLabel
      Left = 5
      Top = 8
      Width = 378
      Height = 13
      Caption = 
        'C'#243'd.Produto       (F1)Pesquisar       (F4) Capturar Peso da Bala' +
        'n'#231'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 4
      Top = 45
      Width = 27
      Height = 13
      Caption = 'Unid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 85
      Top = 45
      Width = 35
      Height = 13
      Caption = 'Quant'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 191
      Top = 45
      Width = 57
      Height = 13
      Caption = 'Valor Unit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 297
      Top = 45
      Width = 91
      Height = 13
      Caption = 'Valor Total Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 128
      Top = 80
      Width = 124
      Height = 13
      Caption = 'Descri'#231#227'o do Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtProduto: TEdit
      Left = 3
      Top = 23
      Width = 420
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 10223615
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = edtProdutoEnter
      OnExit = edtProdutoExit
      OnKeyDown = edtProdutoKeyDown
      OnKeyPress = edtProdutoKeyPress
    end
    object DBEdit11: TDBEdit
      Left = 4
      Top = 58
      Width = 65
      Height = 17
      BevelInner = bvNone
      BorderStyle = bsNone
      DataField = 'UNIDADE'
      DataSource = DM.dsItemComanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = FormKeyPress
    end
    object DBEdit10: TDBEdit
      Left = 85
      Top = 58
      Width = 58
      Height = 16
      BevelInner = bvNone
      BorderStyle = bsNone
      DataField = 'QUANT'
      DataSource = DM.dsItemComanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit10Exit
      OnKeyPress = FormKeyPress
    end
    object DBEdit13: TDBEdit
      Left = 190
      Top = 58
      Width = 67
      Height = 15
      BevelInner = bvNone
      BorderStyle = bsNone
      DataField = 'VL_UNIT'
      DataSource = DM.dsItemComanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object DBEdit14: TDBEdit
      Left = 298
      Top = 58
      Width = 111
      Height = 18
      BevelInner = bvNone
      BorderStyle = bsNone
      DataField = 'VL_TOTAL'
      DataSource = DM.dsItemComanda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      OnKeyPress = FormKeyPress
    end
    object DBEdit12: TDBEdit
      Left = 4
      Top = 91
      Width = 405
      Height = 24
      BevelInner = bvNone
      BorderStyle = bsNone
      DataField = 'DESCRICAO'
      DataSource = DM.dsItemComanda
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 751
    Top = 283
    Width = 428
    Height = 198
    HelpType = htKeyword
    BiDiMode = bdLeftToRight
    BorderStyle = bsNone
    Color = clMoneyGreen
    Ctl3D = False
    DataSource = DM.dsItemComanda
    FixedColor = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clGreen
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnExit = DBGrid1Exit
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CD_BARRA'
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANT'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_UNIT'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_TOTAL'
        Width = 73
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 751
    Top = 485
    Width = 429
    Height = 129
    Caption = '  TOTAIS    '
    Color = clInfoBk
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    object Label9: TLabel
      Left = 5
      Top = 19
      Width = 195
      Height = 17
      Caption = 'Total dos Produtos-------------->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 5
      Top = 41
      Width = 201
      Height = 17
      Caption = 'Acrescimo-------------------------->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 5
      Top = 63
      Width = 194
      Height = 17
      Caption = 'Taxa Servi'#231'o---------------------->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 5
      Top = 85
      Width = 201
      Height = 17
      Caption = 'Desconto--------------------------->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 5
      Top = 108
      Width = 192
      Height = 17
      Caption = 'Valor Total Liquido-------------->'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 229
      Top = 11
      Width = 132
      Height = 23
      Alignment = taRightJustify
      Color = clCream
      DataField = 'VL_TOTAL'
      DataSource = DM.dsComanda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 229
      Top = 32
      Width = 132
      Height = 24
      Alignment = taRightJustify
      Color = clCream
      DataField = 'VL_ACRES'
      DataSource = DM.dsComanda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 229
      Top = 54
      Width = 132
      Height = 25
      Alignment = taRightJustify
      Color = clCream
      DataField = 'VL_SERVICO'
      DataSource = DM.dsComanda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 229
      Top = 77
      Width = 132
      Height = 24
      Alignment = taRightJustify
      Color = clCream
      DataField = 'VL_DESC'
      DataSource = DM.dsComanda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 229
      Top = 99
      Width = 132
      Height = 24
      Alignment = taRightJustify
      Color = clCream
      DataField = 'VL_LIQ'
      DataSource = DM.dsComanda
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 217
      Top = 11
      Width = 23
      Height = 25
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 217
      Top = 32
      Width = 23
      Height = 25
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 217
      Top = 54
      Width = 23
      Height = 25
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 217
      Top = 77
      Width = 23
      Height = 25
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 217
      Top = 99
      Width = 23
      Height = 25
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object P_BOTOES: TPanel
    Left = 751
    Top = 615
    Width = 428
    Height = 69
    BevelOuter = bvNone
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 7
    object BB_CANCELAR: TSpeedButton
      Left = 152
      Top = 2
      Width = 74
      Height = 62
      Caption = '&Finalizar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        42190000424D4219000000000000420000002800000028000000280000000100
        20000300000000190000C30E0000C30E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C388441ECA8C4CC8C88949F8CA8B4CC7C388441E000000000000
        0000000000000000000000000000000000000000000000000000C388441ECA8C
        4CC8C88949F8CA8B4CC7C388441E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000CA8B4CC9E2AB71FCFAC894FFE2AC70FCCA8C4DC6000000000000
        0000000000000000000000000000000000000000000000000000CA8B4CC9E2AB
        71FCFAC894FFE2AC70FCCA8C4DC6000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C88949F8FAC894FFFDCC98FFFAC894FFC88949F8000000000000
        0000000000000000000000000000000000000000000000000000C88949F8FAC8
        94FFFDCC98FFFAC894FFC88949F8000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000CA8C4CC9E2AB70FDFAC894FFE2AC70FCCA8C4CC8000000000000
        0000000000000000000000000000000000000000000000000000CA8C4CC9E2AB
        70FDFAC894FFE2AC70FCCA8C4CC8000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000C78A482EC68947B6C98C4BF9C88A49FFCA8C4BFFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFCA8C
        4BFFC88A49FFCA8C4BFFC78847FFC78847FFC78847D700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000C589
        464CC68847E8C887476BC888481C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000CB844719C687
        46E3C687492D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000C6874775C687
        4796000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000C78746B8C589
        464C000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000C78846E4C388
        441E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C68D4612C68847F00000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C689483FC68746C30000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C688466CC78746980000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C68747C3C78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC68846F9C78747A0AAAA550300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C68746C3C689483F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000CC7F4C0AC68747BAC889475D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000C68847F0C68D46120000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C7874760C68847A800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C388441EC78747E5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C489441AC68847ECFF7F7F02000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C887474BC68747BA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C78847D3C9894434000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C6874775C687468D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C788478EC687477A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C68746A2C7874760000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C6864648C78746C0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C78747CFC8874633000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C68D5409C78746F2BF7F3F0C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000BF7F3F04C78746F6CC7F4C0A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78747800000000000000000000000000000
        00000000000000000000000000000000000000000000C78746BCC887474B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C7884429C78847DB00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFC98A4A8500000000000000000000
        00000000000000000000000000000000000000000000C7864677C78847920000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C8884554C78846AE00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFCD9151F4C98A4A85000000000000
        00000000000000000000000000000000000000000000C48A4530C68747D60000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C7884781C788478100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFF8C691FFCD9151F4C98A4A850000
        00000000000000000000000000000000000000000000FFFF0001C78747E9C388
        441E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78846AEC888455400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFFDCC98FFF8C691FFCD9151F4C98A
        4A85000000000000000000000000000000000000000000000000C78747A5C688
        4863000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847DBC885482A00000000000000000000
        0000C78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFFDCC98FFFDCC98FFF8C691FFCD91
        51F4C98A4A850000000000000000000000000000000000000000C687465EC688
        47A8000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C68D5409C68846F5BF7F3F0400000000000000000000
        0000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFF8C6
        91FFCD9151F4C98A4A8500000000000000000000000000000000C489441AC687
        4691000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C8874633C78747CF0000000000000000000000000000
        0000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFF8C6
        91FFCD9151F4C88B498400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C7874760C68746A20000000000000000000000000000
        0000C78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFFDCC98FFFDCC98FFF8C691FFCD91
        51F4C88B49840000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C687468DC68847760000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFFDCC98FFF8C691FFCD9151F4C88B
        4984000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C68847B9C887474B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFF8C691FFCD9151F4C88B49840000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C78846E4C388441E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFCD9151F4C88B4984000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C9864313C68847F0000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C78847FFC88B498400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C8874A4BC98B4DEDC88D4DECC68A4A48000000000000
        000000000000C687465EC68847AC000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C688467F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C98C4DEDF1D8BCFFF1D8BCFFC88D4DEC000000000000
        0000CC88440FC68746D4C5894843000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C98C4DEDF1D8BCFFF1D7BBFFC88D4DECC3874B11C589
        4650C68747D6C788477D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C989494CC88C4CF4C98C4CFFC78848FFC78846EEC687
        47BEC786484A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = BB_CANCELARClick
    end
    object BB_NOVO: TSpeedButton
      Left = 5
      Top = 4
      Width = 73
      Height = 60
      Caption = '&Novo'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        42190000424D4219000000000000420000002800000028000000280000000100
        20000300000000190000C30E0000C30E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000D47F5506C98D508EC98C4EEFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC98C4EEFC98D508ED47F5506000000000000
        000000000000000000000000000000000000C98E528FD5A675F5F9F1EAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F1EAFFD5A575F6C98D508E000000000000
        000000000000000000000000000000000000C88D4EF0F9F2EBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F1EAFFC98C4EEF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9860FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFCE9860FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF9FFCA8F52FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFD5A675FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9860FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFCE9860FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9860FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFCE9860FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9860FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFCE9860FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF000000000000
        000000000000000000000000000000000000C88D4EF0F9F2EBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F1EAFFC98C4EEF000000000000
        000000000000000000000000000000000000C98E528FD5A776F5F9F2ECFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F2ECFFD5A675F5C98D508E000000000000
        000000000000000000000000000000000000D47F5506CA8E4F91C98D4FF0C788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC98C4EEFC98E508FD47F5506000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
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
      Layout = blGlyphTop
      ParentFont = False
      OnClick = BB_NOVOClick
    end
    object BB_EDITAR: TSpeedButton
      Left = 78
      Top = 2
      Width = 74
      Height = 62
      Caption = '&Ad.+ Item'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      Glyph.Data = {
        42190000424D4219000000000000420000002800000028000000280000000100
        20000300000000190000C30E0000C30E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000C5894843C98C4BA2CA8B4CE4C789
        48F9C88947F8CA8C4BE3C98C4BA2C88946410000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000C7894425CA8C4BCBCD9050F3E4AC73FEF3C08AFFFAC9
        94FFFAC994FFF3C08AFFE4AC73FECC9050F3CA8C4BCBC48A4823000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000C587453EC98B4AF2E5AF74FDFCCC97FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFCCB97FFE5AE74FDC98B4AF2C587453E0000
        0000000000000000000000000000C78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFCE9860FFFFFFFFFFFFFF
        FFFFF7EEE5FFCC9052FFEFBA82FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFEFBA82FFCB8F51FEC686
        4624000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD5A36FFFE6B076FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFE6AF75FFC98A
        4BCA000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DF
        CEFFD0965AFFFCCC97FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFCCB97FFCD90
        50F3C88745420000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDB5
        8BFFE6AE75FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFE4AD
        73FEC98C4BA20000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD098
        5EFFF4C18AFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFF3C0
        8AFFCA8B4CE40000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA8D
        4EFFFAC994FFFDCC98FFFDCC98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC98FFFDCC98FFFAC9
        94FFC88947F80000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCA8D
        4EFFFAC994FFFDCC98FFFDCC98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC98FFFDCC98FFFAC9
        94FFC88947F80000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD097
        5DFFF4C18AFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFF3C0
        8AFFCA8B4CE40000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD9AD81FFFFFFFFFFFFFFFFFFFFFFFFFFD09B64FFC788
        47FFC78847FFC78847FFC78847FFC78847FFD09B64FFFFFFFFFFFFFFFFFFDDB5
        8BFFE6AF76FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFE4AC
        73FEC98B4BA30000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DF
        CDFFD1975AFFFDCB98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFCCC97FFCD90
        50F3C58948430000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD4A26DFFE7B177FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFFFF
        FFFFFFFFFFFFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFE6AF76FFCA8C
        4BCB000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF7EDE4FFCC9052FFEFBA82FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFEFBA82FFCC9053FFC686
        4624000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD9AD81FFFFFFFFFFFFFFFFFFFFFFFFFFD09B64FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFD09B64FFFFFF
        FFFFFFFFFFFFF1E2D2FFCC9154FFE7B177FFFDCB98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCB98FFE6B077FFCC9154FFF1E2D2FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6EDE3FFD4A26EFFD1975AFFE6AE75FFF4C18AFFFBC9
        94FFFBC994FFF4C18AFFE6AE75FFD09659FFD5A36FFFF7EEE4FFFFFFFFFF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0DECCFFDDB58BFFD0975DFFC98C
        4DFFC98C4DFFD0975DFFDDB58CFFF0DECCFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE9860FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD9AD81FFFFFFFFFFFFFFFFFFFFFFFFFFD09B64FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFD09B64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD9AD81FFFFFFFFFFFFFFFFFFFFFFFFFFD09B64FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFD09B
        64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78847FF0000
        0000000000000000000000000000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFC78847FF0000
        0000000000000000000000000000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFC78847FF0000
        0000000000000000000000000000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFC78847FF0000
        0000000000000000000000000000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFC78847FF0000
        0000000000000000000000000000C78847FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC
        98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFFDCC98FFC78847FF0000
        0000000000000000000000000000C78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC788
        47FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FFC78847FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
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
      Layout = blGlyphTop
      ParentFont = False
      OnClick = BB_EDITARClick
    end
    object BB_GRAVAR: TSpeedButton
      Left = 326
      Top = 5
      Width = 90
      Height = 46
      Caption = '&Receber'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        7333330888888888033333080808999803333308888888880333330808080808
        0333330888888888033333080808080803333308888888880333330808080808
        0333330888888888033333080000000803333308000E0E080333330800000008
        0333330888888888033333088888888803333370000000007333}
      Layout = blGlyphTop
      ParentFont = False
      Visible = False
      OnClick = BB_GRAVARClick
    end
    object bb_imprimir_comanda: TSpeedButton
      Left = 226
      Top = 2
      Width = 74
      Height = 62
      Caption = 'Im&primir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6120000424DF612000000000000360000002800000028000000280000000100
        180000000000C0120000120B0000120B00000000000000000000FFFFFCFFFFFE
        FFFFFFFDFFFFFDFFFFFDFFFFFFFFFFFFFFF7FFFFE9FFFFE2FFFFE4FFFFE7FFFF
        EAFFFFE9FFFFE6FFFFE4FFFFE7FFFFE7FFFFE6FFFFE6FFFFE7FFFFE7FFFFE6FF
        FFE6FFFFE4FFFFE6FFFFEAFFFFEBFFFFEBFFFFE7FFFFE3FFFFE7FFFFF8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFEFDFFFFFDFFFFFDFF
        FFFFFFFFFFFFFFFFFFF8897155AB8F6D99836799856C93806B937E69967E6697
        7D65977F67977F67977F67968067947F69947F69967F69977F67957D65967E66
        937E69937F6D978371988269AA8E6F877155FFFFF8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFDFFFFFFFFFFFFFFFEFFFFFEFF
        FFF8B39B83FFFCE0FFFFF0FFFFF4FFFFF8FFFFF9FFFFF8FFFFF7FFFFF7FFFFF7
        FFFFF7FFFFF7FFFFF8FFFFF9FFFFF9FFFFF8FFFFF7FFFFF7FFFFF9FFFFF9FFFF
        F7FFFFF2FFFBE1B29C83FFFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFEFFFFFEFDFFFFFDFFFFFFFFFEFFFFFEFFFFFEFFFFF88B7660FFFFEB
        FFFFF4FFFFFBFFFFFFFFFEFFFFFEFFFFFDFCFFFFFEFFFFFCFFFFFCFFFFFCFBFF
        FFFBFFFFFFFFFFFFFFFFFFFDFCFFFFFEFFFFFFFFFFFFFFFFFCFFFFF7FFFFED8B
        7661FFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
        FDFFFFFDFFFFFFFFFEFFFFFEFFFEFFFFFFF99A8674FFFFEEFFFFF8F5F7F7FAFF
        FFFBFEFFFFFEFFFFFEFFFFFFFFFDFFFFFDFFFEFDFFFEFBFFFFFBFFFFFFFEFFFF
        FFFFFFFFFEFFFEFFFDFFFFFBFFFFF7F7F7FFFFF8FFFFEE9C8772FFFFF9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFDFFFFFDFFFFFFFF
        FFFFFFFEFFFEFFFFFFF98F7E6BFFFFF0FFFFF7FFFFFEFDFFFFFCFAFAFFFBF8FF
        FFF9FFFFF9FFFFF9FFFFF8FFFFF8FFFFF9FFFFFBFFFFF9FFFFF9FFFFF8FFFCF5
        FCFAF9FDFFFFFFFFFEFFFFF7FFFFEE937E69FFFFF9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFBFFFFFBFFFFFDFFFFFFFFFFFFFFFFFF
        FFF993806BFFFFEDFFFFF4FFFFF8F7F0E7AFA3979E8876917963967F69967F69
        978066978066968067977F67997F67997F679179619C8876ADA497F3F0E8FFFF
        FBFFFFF7FFFFED977F6BFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFFFFFBFFFFF9FFFFF7FFFFF5FFFFF5FFFFF5FFFFF1978168FFFFEB
        FFFFF4FFFFF7FFFFF5FFFBEBFFFFEEFFFFEBFFFFEDFFFFEDFFFFEBFFFFEAFFFF
        EBFFFFEAFFFFEAFFFFEAFFFFEAFFFFEEFFFBEEFFFFF9FFFFFBFFFFF5FFFFED9C
        8167FFFFF1FFFFF5FFFFF5FFFFF7FFFFF7FFFFF8FFFFF9FFFFF9FFFFF8FFFBEE
        D2BAA2AB8C6BAA8864A37F59AA8660A2825E9C8061FFFFEDFFFFF7FFFFFBFFFF
        FBFFFFF9FFFFF7FFFFF7FFFFF8FFFFF8FFFFF9FFFFF9FFFFF8FFFFF7FFFFF4FF
        FFF4FFFFF5FFFFF8FFFFFFFDFFFFFFFEFFFFFFF8FFFFEDA68062A4825EA5865F
        9A7E5BA48967A88F6FD3BDA1FFFAE5FFFFF0FFFFF4CDB8A3CDAA88F3C99EFFE3
        B2FFDEABFFDFACFFDDB0A2825FFFFFEBFFFFF7FFFFFBFFFFFBFBF5EEFFFFF7FF
        FFF5FFFFF5FFFFF5FFFFF7FFFFF8FFFFF8FFFFF7FFFFF4FFFFF2FFFFF5FFFFF8
        F6F4F3FFFFFFFFFFFCFFFFF5FFFFEAA9815EFFDEAFFFE0ADFFDFAFFFE0B4EAC7
        9CC7A783D3B89DFFFFEBFFFFEDAC967AE6C59EFFE7BBFFDBAEFFD8A9FFDEADFF
        E4B7AA8864FFFFE9FFFFF2FFFFF7FEF1E3B8A89797826C937B5FA08364A48362
        A28364A28265A28265A28265A48265A08265967B6196816CB5A89AFAF1E4FFFF
        F4FFFFEEFFFFE6AC8A5FFFE2B1FFDEABFFDAADFFDDB1FFE6BBE3C39FAF9479FF
        FFEBFFFFE99F8364F6D5AEFFE4B8FDD8ACFFE9BCFFDEAFFFD9ACA07C54FFF3D4
        FFF3E1FFF3E6FFFEEDFFEBD6FFE9CEFFF8D7FFF3D0FFF3CFFFF3CFFFF2D0FFF2
        D0FFF2D1FFF2D1FFF2D1FFF8DBFFE8CEFCEBD6FFFFEDFFF3E0FFF6DCFFF6D39B
        7E52FFD9A8FFDDACFFE8BBFDDAAEFFE8C0F7D7B39D8267FFFFE9FFFFE6A08160
        FCDBB4FFDFB7FFDFB7FFDDB3CFA576BA9061B28C62FFF6D5FFF4DFF3E3D6FBEB
        DBFFEFDCFFF1D9FFF8DEFFF4DAFFF4DAFFF4DAFFF4DAFFF4DAFFF4DAFFF4DAFF
        F3DAFFF9E0FFF1DAFEEFDCFBEDDBF3E4D1FFF5DEFFF8D8AB8C65BA9366CEA675
        FFDDAFFFDDB1FFDEB6FCDCB8A08466FFFFEAFFFFE4A1815EFFE1BAFDDAB2FFE1
        BBFED8AEBD9364A47948B3895AFFE5BDFFF8DDFFF5DFFFF7E1FFFCE2FFF5D6FF
        EDCDFFF2D6FFF2D7FFF3D6FFF3D6FFF3D6FFF3D6FFF3D6FFF2D6FFEECFFFF4D8
        FFFCE2FFF9DFFFF5DBFFF8DAFFE5C2AB88609E774ABD9565FFDAAEFFE4B9FCD9
        B1FFDFBB9E8264FFFFEAFFFFE6A78665FFDFBBF5D1ABFFDDB7FFDDB3DCAF7CC1
        925CAA7941C1925EAD885CA282599C7951A58257AF8959B58D5DAF855AB0855A
        B08659AF8659AD865AAB865AAB855BAB855BB38C60AE875BA98157A27952A87F
        58B1875DBC9265A27647B78D5ED5AF7FFFE0B4FFE2B7F6D3ABFFDFBBA18567FF
        FFEAFFFFE49D7D5AFFE0B9FFDDB7FFDFBBFFDEB6FFDCADFFDCA7FFE7B1FFDCA8
        FDD3A4FFE6B9FFE2B5FFE1B0FFDDAAFFDCA9FFDDAEFFDCAEFFDDADFFDEABFFDD
        ADFFDEADFFDDAEFFDDAEFFDCADFFDAAAFFE0B1FFE3B4FFE5B6FDD3A4FFDDAAFF
        E5B2FFDFAFFFDDB0FFDDB2FFDDB2FFDCB4FFE0BC997D5FFFFFEAFFFFE2A3845D
        FFDFB6FDDDB4FADCB9FADCB9FEDCB8FFDDB5FFE3B9FFD9AFFFDCB4FDD8B2FFE0
        B6FFDBAFFFE3B7FFDBB1FFDBB5FFDBB5FFDBB4FFDCB2FFDCB2FFDDB2FFDCB4FF
        DBB4FFDEB2FFE4B9FFDCAFFFE3B5FEDCAEFDDFAEFADDAAFFE7B4FFDFB1FFDEB2
        FFDEB3FFDDB5FFDCB4FFDDB99F8263FFFFE9FFFFE2A1845DFFDFB4FDDDB4F8DC
        B9F8DCBAFADCB9FEDCB8F7D3ABFFDDB5FFE6C0FFDBB3FFE1B7FFDAAEFFDAB0FF
        DCB5FFDFB8FFDFB8FFE0B5FFDFB5FFDFB5FFDFB7FFDFB7FFDEB7FFDDB3FFDAAE
        FFD9ADFFE1B5FEDDB0FFE9BAFCE1AFF4D6A5FFDEB2FFDEB3FFDDB5FEDEB5FFDC
        B4FFDEB79F8263FFFFE9FFFFE69F8360FFDFB6FFDCB4FCDCB8FCDCB9FEDCB8FF
        DDB5FFE9BDFFDDB0FFDEB1FFD6A9FFDFB0FFE3B2FFDFB0FFE1B2FFDDAEFFDEAD
        FFDEABFFDEABFFDDADFFDDAEFFDCB1FFDCB1FFDEB3FFDCB1FFDFB4FFDDB2FED4
        A9FFDEB2FFDEAEFFEABDFFDEB3FFDDB5FEDEB5FEDEB5FFDCB4FFDEB79F8263FF
        FFE7FFFFE79F8263FFDEB7FFDCB4FEDCB8FEDCB8FFDCB6FFDDB3FFD8ABCEA578
        B89268AB885DA58054AB865AAC895EA9865BAB855BAD865AAF8659AF8659AD86
        5AAB855BA9845EA9845EAB845DAE8760AB845EA57E58AE8761BB926BD0A57AFF
        D8ADFFDEB3FEDEB5FEDDB6FEDDB6FFDCB4FFDEB7A18261FFFFE7FFFFE9A18263
        FFDDB9FFDBB5FEDCB8FFDCB8FFDCB5FFDDB3CFA97FDAB690F6DABBFFF5D9FFF5
        D9FFF5DAFFF2D8FFEFD5FFF1D8FFF0D8FFF1D7FFF1D7FFF1D8FFF1D8FFF2D8FF
        F2D7FFF1D4FFF4D8FFF6DAFFF7D8FFF5D7F9DBB8DBB690CFA97FFFDDB5FCDDB6
        FCDCB8FEDDB6FFDCB4FFDEB7A18261FFFFE7FFFFE7A38163FFDDB9FFDBB7FEDB
        B9FEDCB8FFDCB5FFDDB3B6926AFBDDBAFFF4DBFFF4E1FFF3E0FCF0DEFAEEDCFF
        F7E5FDF0E0FFF0E0FFF1DFFFF1DFFDF0E0FDF0E0FBF1DFFDF2DEFFF8E2FCEFD9
        FEF1DBFFF3DCFFF5DCFFF4D6FEDCB8B38F69FEDDB6FCDDB6FCDCB8FEDDB6FFDC
        B4FFDEB7A18261FFFFE7FFFFE3A58260FFDDB9FDDBB7FCDBBAFCDCB9FFDDB5FF
        DCB5AA8660FFF1D2FFF7E2FEEFDFFFF3E3FEF0DEFFEED9FFF2DCFDF1DFFDF1DF
        FFF1DFFFF1DFFFF0E0FFF0E0FFF0DFFFF0DFFFF1DEFBEDDAFEF0DEFFF3E0FFEF
        DAFFF7DDFFF0CFA78561FCDCB8FCDCB8FCDCB8FEDDB6FFDCB4FFDEB7A18261FF
        FFE7FFFFE4A38360FFDDB9FDDCB5FCDCB9FCDCB9FFDCB6FFDDB5A7835DFFF0CE
        FFF2DDFFF0E0FFF0E0FBECDCFFF4E1FFF2DCFDF2DEFDF1DFFDF1DFFFF1DFFFF0
        E0FFF0E0FFF0E0FFF0DFFFF1DEFFF4E1F9EDDBFFF2E0FFF2DFFFF4DBFFF1D0A7
        8561FADCB9F8DCBAF8DCBAFADCB9FDDCB5FDDDB99F8263FFFFE7FFFFE9A38768
        FFDFBBF7D7AEFFE0B8FFDEB8FFDCB9FFDDB7AA875CFFF2CEFFF3DAFFF2E1FDED
        DCFDEEDEFAEFE1FEF4E3FCF2E0FEF3DFFEF3DFFFF2E0FFF1E1FFF1E1FFF1E1FE
        F2E0FFF4E1FEF0DDFBEFDDFAEEDCFFF3E0FFF3DAFFF1D0A78462FBDFC1EED6BA
        FFFEE4FFFDE1F0D5B3FBDFBDA08767FFFFE7FFFFEA977B5DF8DBB6FDDDB2FEDB
        B0FFDBB3FFDCB8FFDEBAAC895EFFF3CFFFEED5FEF0DEFFF2E1FFF2E2F8EDDFF9
        F0E2FBEFDDFBF0DCFBF0DCFDEFDCFEEEDEFDEEDEFBEEDEFBEFDDFFF1DEFCEEDB
        FFF3E1FFF2E2FCF0DEFFEFD5FFF2D1AB8763F7D8B7F7DDBFFFF9DEFFFDDFFFE4
        C2F3D8B6957C5CFFFFE7FFFFE69F805FFFE6BDFFEABFFCD9AEFEDAB2FFDFBDFF
        DFBDA9865EFFF6D3FFEFDAF7EADAFDEEDEFFF2E1FBEEDEFEF1E1FFF2E0FFF2DF
        FFF2DFFFF2DFFFF1E1FFF1E1FEF1E1FEF3DFFFF3DDFEF0DAFFF2E1FDEEDEF7EB
        D9FFF0D9FFF5D4AA865EFFDFB5FFE0B6FAD6B2FBD9B5FFE4BDFEDEBAA48869FF
        FFE7FFFFE6B39473E7C79EFCDBAEFFE6BAFFE0B4FFDDB6FDD6AFA98053FFF4CC
        FFFBE0FFF9E6FFF4DEFFF6E0FFF3DAFFEDD4FFF1DBFFF2D9FFF3D8FFF3D8FFF1
        DBFFF1DBFFF2DBFFF3D9FFEED2FFF4D9FFF6E0FFF4DFFFFAE3FFFBDFFFF3CDAA
        8053FFDAAAFFE1B2FFD9AFFFE0B8FBD6B0E6C6A3B39779FFFFE7FFFFEAD7BB9D
        CCAF8AE7C59AFFE6B9FED3A2FFDEAEFFE4B0C8965CFFEDB7FFE9C2FFF0D0FFEB
        CAFFF3D0FFF9D5FFF7D3FFF5D2FFF5D2FFF6D1FFF6D1FFF6D1FFF6D1FFF6D1FF
        F6CFFFF8D1FFFAD3FFF2D1FFEBCCFFF0CEFFEAC1FFECB9C6955DFFE0ABFFDFAF
        FFDAAFFFE7C1E7C5A1CEB192CEB69EFFFFEDFFFFF2FFF4E1CCB69DAB9272B08E
        6AA27C52BD9366AA7D4A9B6B31D2A671A78A65A1896D9C82649B7F609B805E9C
        805E9D80619C80619C815F9C815F9C80619C80619A815F9A815F9B815D9C805E
        9B7E639E8166A3896BA78A65CEA574986935A87D4CB98F649F7B57A58665A68C
        6ECFB9A0FFF1E0FFFFF2F6F5F9FFFFFFFFFFFBFFFFF7FFFFF2FFFFEDFFFEE4A8
        8968BB976FFFFCD8FFFAE7FFFFF7FFFFF8FFFFF8FFFFF7FFFFF7FFFFF8FFFFF7
        FFFFF5FFFFF4FFFFF5FFFFF5FFFFF5FFFFF5FFFFF5FFFFF7FFFFF9FFFFF9FFFF
        F7FFF9E8FFFBDDB69672AE8F6EFFFFE3FFFFEBFFFFEEFFFFF1FFFFF4FFFFF8FB
        F3ECF8FDFFF6FAFFFBFEFFFFFFFEFEFAF5FFFFF8FFFFF4947F69977B5DFFFFEA
        FFFFF7FFFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFEFFFFFCFFFF
        FEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFEFFFFFEFFFFFFFFFFFFF8FFFFED93
        7A60917C66FFFFF1FFFFF5FFFFF8FFFFF9FFFCF7FFFFFCFFFFFEFFFFFFFFFFFE
        FFFFFFFFFFFEFFFFFEFFFFFCFFFFF8FFFFF2988167FFFFEBFFFFF8FFFFFFFDFF
        FFFBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFEFFFEFFFFFFFFFD
        FFFFFDFFFFFDFFFFFDFEFFFDFFFFFFFFFEFFFFF7FFFFEB9C8369FFFFF5FFFFFB
        FFFFFEFFFFFFFFFEFFFDFFFFFDFFFFFDFFFFFFFFFBFFFFFCFFFFFEFDFFFFFDFF
        FFFDFFFFFFFFFCFFFFF59C866DFFFFEDFFFFF8FFFFFEFFFFFEFDFFFFFFFFFFFD
        FFFFFDFFFFFDFFFEFFFFFEFFFFFEFFFEFFFFFEFFFFFEFFFDFFFFFBFFFFFBFFFF
        FBFFFFFDFFFFFFFFFCFFFFF5FFFFEA9C826AFFFFF9FFFEFFFDFEFFFBFEFFFBFE
        FFFBFEFFFDFFFFFDFFFFFFFFFCFFFFFCFFFFFEFDFFFFFAFFFFFBFFFFFFFFFEFF
        FFF7957E68FFFFEBFFFFF7FFFFFBFFFFFCFFFFFEF9FBFCFAFCFDFDFFFFFDFFFE
        FFFFFEFFFFFEFFFEFFFFFEFFFDFFFFFBFFFFFBFFFFFAFFFEFAFFFFFBFFFFFFFF
        FCFFFFF5FFFFEA987D68FFFFFBFFFEFFFDFEFFFDFEFFFDFEFFFDFFFFFFFFFFFF
        FFFEFFFFFEFFFFFEFFFFFEFDFFFFFBFEFFFBFFFFFFFFFFFFFFF898816BFFFFEB
        FFFFF5FFFFF9FFFFFBFFFFFEFAFCFDFDFEFFFDFFFFFDFFFFFFFFFEFFFFFEFFFE
        FFFFFEFFFDFFFFFBFFFFFDFFFEFBFFFEFBFFFFFDFFFFFFFFFBFFFFF5FFFFED9A
        826EFFFFFBFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFDFFFFFFFFFE
        FFFFFEFFFFFFFDFFFFFDFFFFFFFFFEFFFFF8977F6BFFFFEDFFFFF4FFFFF9FFFF
        FBFFFFFEFAFBFFFDFDFFFDFFFFFFFFFFFFFFFEFFFFFEFFFEFFFFFEFFFFFFFFFD
        FFFFFFFFFEFCFDFBFFFEFFFFFFFFFFFFFEFFFFF8FFFFF0907C6AFFFFF9FFFFFF
        FFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFDFFFFFFFFFFFFFFFEFFFFFEFFFF
        FFFFFFFFFFFFFEFFFFF8A9927CFFF6DEFFFFF1FFFFF4FFFFF4FFFFF7FFFFFBFF
        FFFBFFFFF9FFFFF8FFFFF8FFFFF8FFFFF9FFFFF9FFFFF8FFFFF7FFFFF5FFFFF7
        FFFFF9FFFFF9FFFFF8FFFFF4FFF6E0A8907CFFFFF8FFFFFEFFFFFCFFFFFEFFFF
        FEFFFFFFFFFFFFFFFFFFFDFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFF
        FFF8866E58B3967B9A846B99856C907B5F968064977E64998169998169988368
        988368968368988269988269968368988367988062977F63998169927B659782
        6C988167B797748F7355FFFFF7FFFFFEFFFFFEFFFFFEFDFFFFFBFFFFFAFFFFFA
        FFFFFDFFFFFFFFFEFFFFFEFFFFFCFFFFFFFFFFFFFFFFFFFFFFF8FFFFEDFFFFE7
        FFFDE2FFFFE7FFFFE3FFFFE0FFFFE3FFFFE3FFFFE4FFFFE4FFFFE3FFFFE3FFFF
        E6FFFFE4FFFFE4FFFFE2FFFFE0FFFFE0FFFFE6FFFFE7FFFFE7FFFFDFFFFFDDFF
        FFE3FFFFF5FFFFFEFFFFFEFDFFFEFBFFFFFAFFFFF8FFFFF8FFFF}
      Layout = blGlyphTop
      ParentFont = False
      OnClick = bb_imprimir_comandaClick
    end
    object BB_ENCERRAR: TSpeedButton
      Left = 326
      Top = 43
      Width = 83
      Height = 22
      Caption = 'Encerrar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000838383FF838383FF838383FF838383FF8383
        83FF838383FF838383FF00000000000000000000000000000000000000000000
        000000000000838383FF838383FF525252FF3E3D3DFF3E3D3DFF3E3D3DFF3E3D
        3DFF3E3D3DFF3E3D3DFF7A7A7AFF7D7D7EFF0000000000000000000000000000
        0000838383FF525252FF3E3D3DFFF1F1F1FFB2B2B2FF9D8685FFA88385FFB4B4
        B4FFE4E4E4FFB0B0B0FF4E4E4EFF3E3D3DFF7D7D7EFF00000000000000003E3D
        3DFF3E3D3DFFEFEFEFFFF1F1F1FFE9E9E9FFADADADFF929292FF5F5F5FFF6E6E
        6EFF8E8E8EFFBABABAFFE9E9E9FFB0B0B0FF7A7A7AFF0000000000000000ADAD
        ADFFFAFAFAFFF2F2F2FFD8D8D8FF959595FF7D7D7EFF999999FFB2B2B2FFA7A7
        A7FF959595FF8E8E8EFF898989FF5F5F5FFF7D7D7EFF0000000000000000A5A5
        A5FFD8D8D8FFA0A0A0FF999999FFC9C9C9FFAAAAAAFF8E8E8EFF818181FF8383
        83FFA0A0A0FFBFBFBFFF73A383FF525252FF7D7D7EFF00000000000000007777
        77FFA7A7A7FFDADADAFFD8D8D8FFD8D8D8FFD8D8D8FFE1E1E1FFCFCFCFFFBFBF
        BFFF9E9E9EFF898989FF687B6EFF4E4E4EFF838383FF00000000000000009E9E
        9EFFE1E1E1FFD8D8D8FFD3D3D3FFC9C9C9FFD6D6D6FFCFCFCFFFC2C2C2FFC0C0
        C0FFCCCCCCFFD4D4D4FFCCCCCCFF6A6A6AFF0000000000000000000000008E8E
        8EFFD6D6D6FFC2C2C2FFAAAAAAFFA5A5A5FFCFCFCFFFF1F1F1FFEDEDEDFFEAEA
        EAFFDADADAFFBFBFBFFFBFBFBFFF737373FF0000000000000000000000000000
        0000A0A0A0FFC9C9C9FFEDEDEDFFB2B2B2FFBABABAFFAEAEAEFFB6B6B6FFBDBD
        BDFFBDBDBDFF737373FF737373FF000000000000000000000000000000000000
        000000000000B3ACA5FFFFD4C6FFFFD4C6FFFDD7CDFFEEDBD4FFE6E3E1FFE7E7
        E7FF6E6E6EFF0000000000000000000000000000000000000000000000000000
        000000000000AB8E91FFFFDAB4FFFFDCB9FFFFDCB9FFFFD7B1FFFFD6ADFF665C
        5AFF000000000000000000000000000000000000000000000000000000000000
        000000000000B29E8DFFFFE5CAFFFFE5CAFFFFE5CAFFFFE5CAFFFFE0C2FF725F
        5FFF000000000000000000000000000000000000000000000000000000000000
        000000000000D9BFB7FFFFEEDDFFFFEEDDFFFFEEDDFFFFEBD8FF725F5FFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000A59A97FFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EEFF725F5FFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000AB8E91FFAB8E91FFAB8E91FFAB8E91FFAB8E91FFAB8E91FF000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      Visible = False
      OnClick = BB_ENCERRARClick
    end
  end
  object edtTimeOut: TEdit
    Left = 504
    Top = 662
    Width = 73
    Height = 21
    TabOrder = 8
    Text = '2000'
    Visible = False
  end
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1188
    Height = 42
    Align = alTop
    Caption = 'Atendimento Ao Cliente  - Mesas'
    Color = clBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 9
    object SpeedButton2: TSpeedButton
      Left = 1149
      Top = 1
      Width = 38
      Height = 40
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
      OnClick = SpeedButton2Click
      ExplicitLeft = 1102
      ExplicitTop = 5
      ExplicitHeight = 36
    end
  end
  object Panel6: TPanel
    Left = 8
    Top = 618
    Width = 720
    Height = 67
    BevelOuter = bvNone
    Color = clNavy
    ParentBackground = False
    TabOrder = 10
    object Panel2: TPanel
      Left = 4
      Top = 16
      Width = 150
      Height = 39
      BevelOuter = bvNone
      Caption = 'LIVRE'
      Color = 57088
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel1: TPanel
      Left = 156
      Top = 16
      Width = 152
      Height = 39
      BevelOuter = bvNone
      Caption = 'OCUPADA'
      Color = clRed
      Ctl3D = False
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 311
      Top = 16
      Width = 151
      Height = 39
      BevelOuter = bvNone
      Caption = 'PEDIU CONTA'
      Color = clYellow
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 696
  end
  object ACBrBAL1: TACBrBAL
    Modelo = balMagna
    Porta = 'COM1'
    OnLePeso = ACBrBAL1LePeso
    Left = 504
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 664
    Top = 640
    object EXCLUIRITEM1: TMenuItem
      Caption = 'EXCLUIR ITEM'
    end
  end
end
