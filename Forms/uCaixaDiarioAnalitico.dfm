object frmCaixaDiarioAnalitico: TfrmCaixaDiarioAnalitico
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta de Movimenta'#231#227'o de Caixa'
  ClientHeight = 158
  ClientWidth = 801
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 801
    Height = 158
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 9
      Width = 78
      Height = 13
      Caption = 'Data Movimento'
      Color = 14872546
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 139
      Top = 9
      Width = 51
      Height = 13
      Caption = 'Hora Inicio'
      Color = 14872546
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 211
      Top = 9
      Width = 40
      Height = 13
      Caption = 'Hora Fin'
      Color = 14872546
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 199
      Top = 26
      Width = 7
      Height = 13
      Caption = 'A'
    end
    object Label5: TLabel
      Left = 3
      Top = 51
      Width = 87
      Height = 13
      Caption = 'Operado de Caixa'
      Color = 14872546
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 3
      Top = 24
      Width = 130
      Height = 24
      Date = 43340.046914085650000000
      Format = 'dd/mm/yyyy'
      Time = 43340.046914085650000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object GroupBox1: TGroupBox
      Left = 269
      Top = -3
      Width = 532
      Height = 159
      Caption = 'Totais Gerais'
      Color = 14872546
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object L_OPERADOR: TLabel
        Left = 16
        Top = 135
        Width = 189
        Height = 20
        Caption = 'Total do Caixa do Operador'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 17
        Width = 526
        Height = 112
        DataSource = dsVendas
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'DT_MOV'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FORMA_PAGAMENTO'
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO_PAGAMENTO'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_USUARIO'
            Width = 61
            Visible = True
          end
          item
            Color = clCream
            Expanded = False
            FieldName = 'VENDAS'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Segoe UI Semibold'
            Font.Style = [fsBold]
            Width = 97
            Visible = True
          end>
      end
      object edtTotal: TEdit
        Left = 354
        Top = 133
        Width = 175
        Height = 22
        Alignment = taCenter
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clYellow
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'R$ 0,00'
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 3
      Top = 66
      Width = 262
      Height = 24
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'NOME_USUARIO'
      ListField = 'NOME_USUARIO'
      ListSource = dsUsuario
      ParentFont = False
      TabOrder = 3
      OnKeyPress = FormKeyPress
    end
    object BB_PESQUISAR: TBitBtn
      Left = 3
      Top = 127
      Width = 78
      Height = 25
      Caption = '&Pesquisar'
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
      TabOrder = 4
      OnClick = BB_PESQUISARClick
    end
    object BB_IMPRIMIR: TBitBtn
      Left = 83
      Top = 127
      Width = 78
      Height = 25
      Caption = '&Imprimir'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFB3B1B2FF00FFFF00FFFF00FF9A99999A9999A4A1
        A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B1B2B3B1B2DEDCDCAB
        A9A95553546F6D6EAEACACD2D0D1E0DFDF9A9999FF00FFFF00FFFF00FFFF00FF
        B3B1B2B3B1B2FBFBFBFFFFFFE0DEDFB2B0B05F5E603131333131344F4D4F8180
        819A9999A4A1A2FF00FFA7A4A5B3B1B2F4F2F3FFFFFFF2F0F0D6D5D5B3B1B2A4
        A1A1ACA9AA9E9D9D7E7D7D5655573536383635378D8B8CFF00FFB0ADAEEEEDED
        EBEBEBCCCACAB9B7B7C4C2C2D0CFCFB7B5B5ABA8A9A8A6A6ACA9AAAFADADA4A1
        A28584849A9999FF00FFAAA7A8BFBDBEB7B5B5C1C0C0D5D5D5DCDDDDF1F1F0F4
        F2F4E4E3E3D2D1D1BFBDBDAFADAEA9A6A6ACA9AAA4A1A2FF00FFA7A4A5C0BFC0
        D5D4D4D9D9D9D5D5D5E9E9E9DCDADAB5BDB5CCCBCBD7D9DADFDFDFDDDDDDD3D2
        D2C6C6C6ADACACFF00FFFF00FFB0AEAFDBDCDCDADADAE4E4E4D5D3D3C5C1C4B8
        DCBAC9D1CBD2BAB5BFB7B6BBB9BAC4C2C3D0CFCFBBB9BAFF00FFFF00FFFF00FF
        B0AEAFCFCDCDC0BFBFC2C1C1EAEAEAF8F6F6F2F1F2F1E8E6E4E1E1D8D8D8C4C4
        C4A9A6A7FF00FFFF00FFFF00FFFF00FFFF00FFB0AEAFE1E3E3D6D6D7B1B3B4CA
        CDCFDDDFE0DEE2E2DFDFDFD3D2D3C0BFBFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFCEBE8FAE7DEEED5CCEAD4CCE9D8D4E6DDD9DBD9D8AAA8AAFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE6D9FFDACCFF
        D1C0FFC9B6FFC2AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFD9B3B1FFE5D9FFD8CBFED0C1FFCAB7F9BBA8FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE5D9FFD8CBFE
        D0C1FEC8B6FBC1AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFD9B3B1FBE7DFFFE3D8FFD9CCFFD3C2FDC8B6FABFAEFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1D9B3B1D9B3B1D9B3B1F6
        BFB1F6BFB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 5
      OnClick = BB_IMPRIMIRClick
    end
    object BB_SAIR: TBitBtn
      Left = 164
      Top = 127
      Width = 78
      Height = 25
      Caption = 'Sai&r'
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
      TabOrder = 6
      OnClick = BB_SAIRClick
    end
    object MaskEdit1: TMaskEdit
      Left = 139
      Top = 24
      Width = 52
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 1
      Text = '  :  '
      OnExit = MaskEdit1Exit
      OnKeyPress = FormKeyPress
    end
    object MaskEdit2: TMaskEdit
      Left = 212
      Top = 24
      Width = 52
      Height = 21
      EditMask = '!90:00;1;_'
      MaxLength = 5
      TabOrder = 2
      Text = '  :  '
      OnExit = MaskEdit2Exit
      OnKeyPress = FormKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 158
    Width = 801
    Height = 239
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 32
    Top = 197
    Width = 761
    Height = 339
    TabOrder = 2
    Visible = False
    object QR_IMPRIMIR: TQuickRep
      Left = -32
      Top = -197
      Width = 794
      Height = 1123
      DataSet = cdsVendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Default
      Page.Continuous = False
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.OutputBin = Auto
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.UseStandardprinter = False
      PrinterSettings.UseCustomBinCode = False
      PrinterSettings.CustomBinCode = 0
      PrinterSettings.ExtendedDuplex = 0
      PrinterSettings.UseCustomPaperCode = False
      PrinterSettings.CustomPaperCode = 0
      PrinterSettings.PrintMetaFile = False
      PrinterSettings.MemoryLimit = 1000000
      PrinterSettings.PrintQuality = 0
      PrinterSettings.Collate = 0
      PrinterSettings.ColorOption = 0
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      PrevFormStyle = fsNormal
      PreviewInitialState = wsMaximized
      PrevInitialZoom = qrZoomToWidth
      PreviewDefaultSaveType = stQRP
      PreviewLeft = 0
      PreviewTop = 0
      object QRBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 195
        Frame.DrawTop = True
        Frame.DrawBottom = True
        AlignToBottom = False
        Color = 11468799
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          515.937500000000000000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbTitle
        object QRDBText1: TQRDBText
          Left = 51
          Top = 8
          Width = 69
          Height = 18
          Size.Values = (
            47.625000000000000000
            134.937500000000000000
            21.166666666666670000
            182.562500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = 11468799
          DataSet = DM.cdsEmpresa
          DataField = 'FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 11
        end
        object QRSysData1: TQRSysData
          Left = 641
          Top = 32
          Width = 33
          Height = 17
          Size.Values = (
            44.979166666666670000
            1695.979166666667000000
            84.666666666666670000
            87.312500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = 11468799
          Data = qrsTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 600
          Top = 8
          Width = 36
          Height = 17
          Size.Values = (
            44.979166666666670000
            1587.500000000000000000
            21.166666666666670000
            95.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Data :'
          Color = 11468799
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 600
          Top = 32
          Width = 36
          Height = 17
          Size.Values = (
            44.979166666666670000
            1587.500000000000000000
            84.666666666666670000
            95.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Hora :'
          Color = 11468799
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRSysData2: TQRSysData
          Left = 642
          Top = 8
          Width = 65
          Height = 17
          Size.Values = (
            44.979166666666670000
            1698.625000000000000000
            21.166666666666670000
            171.979166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = 11468799
          Data = qrsDate
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Text = ''
          Transparent = False
          ExportAs = exptText
          FontSize = 10
        end
        object QRLabel3: TQRLabel
          Left = 176
          Top = 48
          Width = 318
          Height = 31
          Size.Values = (
            82.020833333333330000
            465.666666666666700000
            127.000000000000000000
            841.375000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Consulta de Movimento de Caixa'
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 16
        end
        object QRLabel4: TQRLabel
          Left = 270
          Top = 85
          Width = 86
          Height = 26
          Size.Values = (
            68.791666666666670000
            714.375000000000000000
            224.895833333333300000
            227.541666666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Data Mov'
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 14
        end
        object qrl_data_mov: TQRLabel
          Left = 372
          Top = 85
          Width = 87
          Height = 26
          Size.Values = (
            68.791666666666670000
            984.250000000000000000
            224.895833333333300000
            230.187500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Data Mov'
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 14
        end
        object QRLabel5: TQRLabel
          Left = 191
          Top = 117
          Width = 165
          Height = 26
          Size.Values = (
            68.791666666666670000
            505.354166666666700000
            309.562500000000000000
            436.562500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Operador de Caixa '
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 14
        end
        object qrl_operador: TQRLabel
          Left = 372
          Top = 117
          Width = 87
          Height = 26
          Size.Values = (
            68.791666666666670000
            984.250000000000000000
            309.562500000000000000
            230.187500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Operador'
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 14
        end
        object QRLabel6: TQRLabel
          Left = 176
          Top = 150
          Width = 169
          Height = 26
          Size.Values = (
            68.791666666666670000
            465.666666666666700000
            396.875000000000000000
            447.145833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Periodo entre horas'
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 14
        end
        object qrl_Hora: TQRLabel
          Left = 372
          Top = 150
          Width = 46
          Height = 26
          Size.Values = (
            68.791666666666670000
            984.250000000000000000
            396.875000000000000000
            121.708333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Hora'
          Color = 11468799
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 14
        end
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 255
        Width = 718
        Height = 20
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          52.916666666666670000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbDetail
        object QRDBText2: TQRDBText
          Left = 10
          Top = 1
          Width = 52
          Height = 18
          Size.Values = (
            47.625000000000000000
            26.458333333333330000
            2.645833333333333000
            137.583333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = cdsVendas
          DataField = 'DT_MOV'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText3: TQRDBText
          Left = 95
          Top = 1
          Width = 133
          Height = 18
          Size.Values = (
            47.625000000000000000
            251.354166666666700000
            2.645833333333333000
            351.895833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = cdsVendas
          DataField = 'FORMA_PAGAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 265
          Top = 1
          Width = 157
          Height = 18
          Size.Values = (
            47.625000000000000000
            701.145833333333300000
            2.645833333333333000
            415.395833333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = cdsVendas
          DataField = 'DESCRICAO_PAGAMENTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 448
          Top = 1
          Width = 101
          Height = 18
          Size.Values = (
            47.625000000000000000
            1185.333333333333000000
            2.645833333333333000
            267.229166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Color = clWhite
          DataSet = cdsVendas
          DataField = 'NOME_USUARIO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 612
          Top = 1
          Width = 51
          Height = 18
          Size.Values = (
            47.625000000000000000
            1619.250000000000000000
            2.645833333333333000
            134.937500000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taRightJustify
          AlignToBand = False
          Color = clWhite
          DataSet = cdsVendas
          DataField = 'VENDAS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FullJustify = False
          MaxBreakChars = 0
          FontSize = 10
        end
      end
      object QRGroup1: TQRGroup
        Left = 38
        Top = 233
        Width = 718
        Height = 22
        Frame.DrawBottom = True
        AlignToBottom = False
        Color = 15395562
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = QRBand3
        Size.Values = (
          58.208333333333330000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        FooterBand = QRBand3
        Master = QR_IMPRIMIR
        ReprintOnNewPage = False
        object QRLabel7: TQRLabel
          Left = 10
          Top = 0
          Width = 60
          Height = 18
          Size.Values = (
            47.625000000000000000
            26.458333333333330000
            0.000000000000000000
            158.750000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Data Mov'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel8: TQRLabel
          Left = 111
          Top = 0
          Width = 114
          Height = 18
          Size.Values = (
            47.625000000000000000
            293.687500000000000000
            0.000000000000000000
            301.625000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Forma Pagamento'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 270
          Top = 0
          Width = 132
          Height = 18
          Size.Values = (
            47.625000000000000000
            714.375000000000000000
            0.000000000000000000
            349.250000000000000000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Descri'#231#227'o Pagamento'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel10: TQRLabel
          Left = 488
          Top = 0
          Width = 47
          Height = 18
          Size.Values = (
            47.625000000000000000
            1291.166666666667000000
            0.000000000000000000
            124.354166666666700000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Usu'#225'rio'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
        object QRLabel11: TQRLabel
          Left = 617
          Top = 0
          Width = 32
          Height = 18
          Size.Values = (
            47.625000000000000000
            1632.479166666667000000
            0.000000000000000000
            84.666666666666670000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'Valor'
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 10
        end
      end
      object QRBand3: TQRBand
        Left = 38
        Top = 275
        Width = 718
        Height = 41
        Frame.DrawTop = True
        AlignToBottom = False
        Color = 16444898
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          108.479166666666700000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbGroupFooter
        object QRL_TOTAL: TQRLabel
          Left = 68
          Top = 4
          Width = 46
          Height = 31
          Size.Values = (
            82.020833333333330000
            179.916666666666700000
            10.583333333333330000
            121.708333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = 'total'
          Color = 16444898
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 16
        end
      end
      object QRBand8: TQRBand
        Left = 38
        Top = 316
        Width = 718
        Height = 20
        Frame.DrawTop = True
        AlignToBottom = False
        Color = clWhite
        TransparentBand = False
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          52.916666666666670000
          1899.708333333333000000)
        PreCaluculateBandHeight = False
        KeepOnOnePage = False
        BandType = rbPageFooter
        object QRLabel17: TQRLabel
          Left = 273
          Top = 1
          Width = 100
          Height = 17
          Size.Values = (
            44.979166666666670000
            722.312500000000000000
            2.645833333333333000
            264.583333333333300000)
          XLColumn = 0
          XLNumFormat = nfGeneral
          Alignment = taLeftJustify
          AlignToBand = False
          Caption = ' Por M'#225'rcio Santos'#174
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = False
          ExportAs = exptText
          WrapStyle = BreakOnSpaces
          FontSize = 8
        end
      end
    end
  end
  object qUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' U.ID_USUARIO,'
      ' U.ID_LOJA,'
      ' U.NOME_USUARIO,'
      ' U.NIVEL,'
      ' U.CAIXA'
      'FROM TB_USUARIO U'
      'WHERE U.CAIXA = '#39'S'#39)
    SQLConnection = DM.conexao
    Left = 104
    Top = 169
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
    object qUsuarioNIVEL: TSmallintField
      FieldName = 'NIVEL'
    end
    object qUsuarioCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 1
    end
  end
  object dspUsuario: TDataSetProvider
    DataSet = qUsuario
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 136
    Top = 169
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuario'
    Left = 168
    Top = 169
    object cdsUsuarioID_USUARIO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_USUARIO'
      Required = True
    end
    object cdsUsuarioID_LOJA: TIntegerField
      DisplayLabel = 'C'#243'd.Loja'
      FieldName = 'ID_LOJA'
    end
    object cdsUsuarioNOME_USUARIO: TStringField
      DisplayLabel = 'Nome Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object cdsUsuarioNIVEL: TSmallintField
      DisplayLabel = 'Niv'#233'l'
      FieldName = 'NIVEL'
    end
    object cdsUsuarioCAIXA: TStringField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
      Size = 1
    end
  end
  object dsUsuario: TDataSource
    DataSet = cdsUsuario
    Left = 200
    Top = 169
  end
  object qVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USER'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HR_INI'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HR_FIN'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'pv.DT_MOV,'
      'pv.CAIXA,'
      'PV.ID_USUARIO,'
      'P.ID_LOJA,'
      'TP.descricao_pagamento,'
      'FP.DESCRICAO_PAGAMENTO AS FORMA_PAGAMENTO,'
      'U.NOME_USUARIO,'
      'SUM(PV.VL_PAGAMENTO) AS Vendas'
      'FROM tb_pagamento_pdv PV'
      'LEFT OUTER JOIN tb_pdv P ON (P.id_pdv = PV.id_pdv)'
      
        'LEFT OUTER JOIN tb_plano_pagamento TP ON (TP.ID_PLANO_PAGAMENTO ' +
        '= PV.ID_PLANO_PAGAMENTO)'
      
        'LEFT OUTER JOIN TB_FORMA_PAGAMENTO FP ON (FP.ID_FORMA_PAGAMENTO ' +
        '= PV.ID_FORMA_PAGAMENTO)'
      'LEFT OUTER JOIN TB_USUARIO U ON (U.ID_USUARIO = PV.ID_USUARIO)'
      'where PV.CAIXA = 1      '
      'AND PV.DT_MOV = :DT_MOV'
      'AND PV.ID_LOJA = 1'
      'AND PV.ID_USUARIO = :ID_USER'
      'AND P.HR_VENDA >= :HR_INI AND P.HR_VENDA <= :HR_FIN'
      'GROUP BY'
      'pv.DT_MOV,'
      'pv.CAIXA,'
      'PV.ID_USUARIO,'
      'U.NOME_USUARIO,'
      'TP.descricao_pagamento,'
      'FP.DESCRICAO_PAGAMENTO,'
      'P.ID_LOJA'
      'ORDER BY SUM( PV.VL_PAGAMENTO) DESC')
    SQLConnection = DM.conexao
    Left = 464
    Top = 113
    object qVendasDT_MOV: TDateField
      FieldName = 'DT_MOV'
    end
    object qVendasCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object qVendasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object qVendasID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qVendasDESCRICAO_PAGAMENTO: TStringField
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object qVendasFORMA_PAGAMENTO: TStringField
      FieldName = 'FORMA_PAGAMENTO'
      Size = 40
    end
    object qVendasNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object qVendasVENDAS: TFMTBCDField
      FieldName = 'VENDAS'
      Precision = 18
      Size = 2
    end
  end
  object dspVendas: TDataSetProvider
    DataSet = qVendas
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 496
    Top = 113
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DT_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID_USER'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HR_INI'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HR_FIN'
        ParamType = ptInput
      end>
    ProviderName = 'dspVendas'
    Left = 528
    Top = 113
    object cdsVendasDT_MOV: TDateField
      DisplayLabel = 'Data Mov'
      FieldName = 'DT_MOV'
      EditMask = '##/##/####'
    end
    object cdsVendasCAIXA: TIntegerField
      FieldName = 'CAIXA'
    end
    object cdsVendasID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
    end
    object cdsVendasID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsVendasDESCRICAO_PAGAMENTO: TStringField
      DisplayLabel = 'Descri'#231#227'o Pagamento'
      FieldName = 'DESCRICAO_PAGAMENTO'
      Size = 40
    end
    object cdsVendasFORMA_PAGAMENTO: TStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'FORMA_PAGAMENTO'
      Size = 40
    end
    object cdsVendasNOME_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      Size = 30
    end
    object cdsVendasVENDAS: TFMTBCDField
      DisplayLabel = 'Valor '
      FieldName = 'VENDAS'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
  end
  object dsVendas: TDataSource
    DataSet = cdsVendas
    Left = 560
    Top = 113
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 184
    Top = 129
  end
  object DataSetProvider1: TDataSetProvider
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 216
    Top = 129
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 129
  end
  object DataSource1: TDataSource
    Left = 280
    Top = 129
  end
  object qDinamica: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'dt_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_usuario'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'hr_ini'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'hr_fin'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT SUM(PV.VL_PAGAMENTO) FROM tb_pagamento_pdv PV'
      'LEFT OUTER JOIN tb_pdv P ON (P.id_pdv = PV.id_pdv)'
      
        'LEFT OUTER JOIN tb_plano_pagamento TP ON (TP.ID_PLANO_PAGAMENTO ' +
        '= PV.ID_PLANO_PAGAMENTO)'
      'where PV.DT_MOV = :dt_ini'
      'AND PV.ID_USUARIO = :id_usuario'
      'AND P.HR_VENDA >= :hr_ini AND P.HR_VENDA <= :hr_fin')
    SQLConnection = DM.conexao
    Left = 144
    Top = 8
    object qDinamicaSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 2
    end
  end
  object dspDinamica: TDataSetProvider
    DataSet = qDinamica
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 176
    Top = 8
  end
  object cdsDinamica: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'dt_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id_usuario'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'hr_ini'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'hr_fin'
        ParamType = ptInput
      end>
    ProviderName = 'dspDinamica'
    Left = 208
    Top = 8
    object cdsDinamicaSUM: TFMTBCDField
      FieldName = 'SUM'
      Precision = 18
      Size = 2
    end
  end
  object dsDinamica: TDataSource
    DataSet = cdsDinamica
    Left = 240
    Top = 8
  end
end
