object frmRelatorios: TfrmRelatorios
  Left = 274
  Top = 114
  Caption = 'Relat'#243'rios'
  ClientHeight = 535
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 25
    Top = 24
    Width = 913
    Height = 457
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Saldo de Estoque'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object QR_SaldoEstoque: TQuickRep
        Left = 56
        Top = 16
        Width = 794
        Height = 1123
        AfterPrint = QR_SaldoEstoqueAfterPrint
        ShowingPreview = False
        BeforePrint = QR_SaldoEstoqueBeforePrint
        DataSet = cdsSaldoEstoque
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
        Page.PaperSize = A4
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
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoom100
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand1: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 82
          Frame.DrawTop = True
          Frame.DrawBottom = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            216.958333333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRDBText1: TQRDBText
            Left = 72
            Top = 8
            Width = 66
            Height = 17
            Size.Values = (
              44.979166666666670000
              190.500000000000000000
              21.166666666666670000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsEmpresa
            DataField = 'R_SOCIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel1: TQRLabel
            Left = 5
            Top = 8
            Width = 61
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              21.166666666666670000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Empresa :'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel2: TQRLabel
            Left = 248
            Top = 43
            Width = 136
            Height = 20
            Size.Values = (
              52.916666666666670000
              656.166666666666700000
              113.770833333333300000
              359.833333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Saldo de Estoque'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData1: TQRSysData
            Left = 632
            Top = 8
            Width = 38
            Height = 17
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              21.166666666666670000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel3: TQRLabel
            Left = 569
            Top = 8
            Width = 56
            Height = 17
            Size.Values = (
              44.979166666666670000
              1505.479166666667000000
              21.166666666666670000
              148.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Emiss'#227'o:'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRGroup1: TQRGroup
          Left = 38
          Top = 120
          Width = 718
          Height = 21
          Frame.DrawBottom = True
          AlignToBottom = False
          Color = 14342874
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          FooterBand = QRBand3
          Master = QR_SaldoEstoque
          ReprintOnNewPage = False
          object QRLabel4: TQRLabel
            Left = 4
            Top = 1
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              2.645833333333333000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'C'#243'digo'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel5: TQRLabel
            Left = 152
            Top = 1
            Width = 63
            Height = 17
            Size.Values = (
              44.979166666666670000
              402.166666666666700000
              2.645833333333333000
              166.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Descri'#231#227'o'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel6: TQRLabel
            Left = 604
            Top = 1
            Width = 38
            Height = 17
            Size.Values = (
              44.979166666666670000
              1598.083333333333000000
              2.645833333333333000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Saldo'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel7: TQRLabel
            Left = 414
            Top = 1
            Width = 77
            Height = 17
            Size.Values = (
              44.979166666666670000
              1095.375000000000000000
              2.645833333333333000
              203.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Embalagem'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand2: TQRBand
          Left = 38
          Top = 141
          Width = 718
          Height = 15
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            39.687500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText2: TQRDBText
            Left = 5
            Top = 1
            Width = 49
            Height = 16
            Size.Values = (
              42.333333333333330000
              13.229166666666670000
              2.645833333333333000
              129.645833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsSaldoEstoque
            DataField = 'CODIGO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText3: TQRDBText
            Left = 149
            Top = 1
            Width = 72
            Height = 16
            Size.Values = (
              42.333333333333330000
              394.229166666666700000
              2.645833333333333000
              190.500000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsSaldoEstoque
            DataField = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText4: TQRDBText
            Left = 579
            Top = 1
            Width = 59
            Height = 16
            Size.Values = (
              42.333333333333330000
              1531.937500000000000000
              2.645833333333333000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsSaldoEstoque
            DataField = 'ESTOQUE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText5: TQRDBText
            Left = 418
            Top = 1
            Width = 55
            Height = 16
            Size.Values = (
              42.333333333333330000
              1105.958333333333000000
              2.645833333333333000
              145.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsSaldoEstoque
            DataField = 'UNIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
        end
        object QRBand3: TQRBand
          Left = 38
          Top = 156
          Width = 718
          Height = 5
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            13.229166666666670000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
        end
        object QRBand4: TQRBand
          Left = 38
          Top = 161
          Width = 718
          Height = 40
          Frame.DrawTop = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbPageFooter
          object QRLabel8: TQRLabel
            Left = 592
            Top = 1
            Width = 28
            Height = 17
            Size.Values = (
              44.979166666666670000
              1566.333333333333000000
              2.645833333333333000
              74.083333333333330000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'P'#225'g.'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRSysData2: TQRSysData
            Left = 622
            Top = 2
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              1645.708333333333000000
              5.291666666666667000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsPageNumber
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel105: TQRLabel
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
            ActiveInPreview = False
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
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText88: TQRDBText
            Left = 3
            Top = 2
            Width = 52
            Height = 17
            Size.Values = (
              44.979166666666670000
              7.937500000000000000
              5.291666666666667000
              137.583333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsEmpresa
            DataField = 'R_SOCIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Invent'#225'rio'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object QR_INVENTARIO: TQuickRep
        Left = 48
        Top = 3
        Width = 794
        Height = 1123
        AfterPrint = QR_INVENTARIOAfterPrint
        ShowingPreview = False
        BeforePrint = QR_INVENTARIOBeforePrint
        DataSet = cdsInventario
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
        Page.PaperSize = A4
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
        PreviewWidth = 500
        PreviewHeight = 500
        PrevInitialZoom = qrZoom100
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand5: TQRBand
          Left = 38
          Top = 38
          Width = 718
          Height = 117
          Frame.DrawTop = True
          Frame.DrawBottom = True
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            309.562500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRDBText6: TQRDBText
            Left = 72
            Top = 8
            Width = 66
            Height = 17
            Size.Values = (
              44.979166666666670000
              190.500000000000000000
              21.166666666666670000
              174.625000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsEmpresa
            DataField = 'R_SOCIAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel9: TQRLabel
            Left = 5
            Top = 8
            Width = 61
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              21.166666666666670000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Empresa :'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel10: TQRLabel
            Left = 5
            Top = 91
            Width = 247
            Height = 20
            Size.Values = (
              52.916666666666670000
              13.229166666666670000
              240.770833333333300000
              653.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Saldo de Estoque em 31/12/2014'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 12
          end
          object QRSysData3: TQRSysData
            Left = 632
            Top = 8
            Width = 38
            Height = 17
            Size.Values = (
              44.979166666666670000
              1672.166666666667000000
              21.166666666666670000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            Data = qrsDate
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Text = ''
            Transparent = False
            ExportAs = exptText
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel11: TQRLabel
            Left = 569
            Top = 8
            Width = 56
            Height = 17
            Size.Values = (
              44.979166666666670000
              1505.479166666667000000
              21.166666666666670000
              148.166666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Emiss'#227'o:'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel18: TQRLabel
            Left = 5
            Top = 31
            Width = 62
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              82.020833333333330000
              164.041666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'CNPJ      :'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel19: TQRLabel
            Left = 5
            Top = 51
            Width = 61
            Height = 17
            Size.Values = (
              44.979166666666670000
              13.229166666666670000
              134.937500000000000000
              161.395833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Insc.Est  :'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText12: TQRDBText
            Left = 72
            Top = 32
            Width = 35
            Height = 17
            Size.Values = (
              44.979166666666670000
              190.500000000000000000
              84.666666666666670000
              92.604166666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsEmpresa
            DataField = 'CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRDBText13: TQRDBText
            Left = 72
            Top = 52
            Width = 55
            Height = 17
            Size.Values = (
              44.979166666666670000
              190.500000000000000000
              137.583333333333300000
              145.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsEmpresa
            DataField = 'INS_EST'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRGroup2: TQRGroup
          Left = 38
          Top = 155
          Width = 718
          Height = 21
          Frame.DrawBottom = True
          AlignToBottom = False
          Color = 14342874
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            55.562500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          FooterBand = QRBand7
          Master = QR_INVENTARIO
          ReprintOnNewPage = False
          object QRLabel12: TQRLabel
            Left = 4
            Top = 1
            Width = 46
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              2.645833333333333000
              121.708333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'C'#243'digo'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel13: TQRLabel
            Left = 96
            Top = 1
            Width = 63
            Height = 17
            Size.Values = (
              44.979166666666670000
              254.000000000000000000
              2.645833333333333000
              166.687500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Descri'#231#227'o'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel14: TQRLabel
            Left = 420
            Top = 1
            Width = 51
            Height = 17
            Size.Values = (
              44.979166666666670000
              1111.250000000000000000
              2.645833333333333000
              134.937500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Estoque'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel15: TQRLabel
            Left = 318
            Top = 1
            Width = 77
            Height = 17
            Size.Values = (
              44.979166666666670000
              841.375000000000000000
              2.645833333333333000
              203.729166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Embalagem'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel20: TQRLabel
            Left = 526
            Top = 2
            Width = 43
            Height = 17
            Size.Values = (
              44.979166666666670000
              1391.708333333333000000
              5.291666666666667000
              113.770833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Vl.Unit'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRLabel21: TQRLabel
            Left = 629
            Top = 1
            Width = 33
            Height = 17
            Size.Values = (
              44.979166666666670000
              1664.229166666667000000
              2.645833333333333000
              87.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Total'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand6: TQRBand
          Left = 38
          Top = 176
          Width = 718
          Height = 15
          AlignToBottom = False
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            39.687500000000000000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbDetail
          object QRDBText7: TQRDBText
            Left = 5
            Top = 1
            Width = 78
            Height = 16
            Size.Values = (
              42.333333333333330000
              13.229166666666670000
              2.645833333333333000
              206.375000000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsInventario
            DataField = 'REFERENCIA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText8: TQRDBText
            Left = 93
            Top = 1
            Width = 229
            Height = 16
            Size.Values = (
              42.333333333333340000
              246.062500000000000000
              2.645833333333333000
              605.895833333333400000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            AutoSize = False
            Color = clWhite
            DataSet = cdsInventario
            DataField = 'DESCRICAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText9: TQRDBText
            Left = 411
            Top = 1
            Width = 59
            Height = 16
            Size.Values = (
              42.333333333333330000
              1087.437500000000000000
              2.645833333333333000
              156.104166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsInventario
            DataField = 'ESTOQUE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText10: TQRDBText
            Left = 330
            Top = 1
            Width = 55
            Height = 16
            Size.Values = (
              42.333333333333330000
              873.125000000000000000
              2.645833333333333000
              145.520833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsInventario
            DataField = 'UNIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText14: TQRDBText
            Left = 505
            Top = 1
            Width = 64
            Height = 16
            Size.Values = (
              42.333333333333330000
              1336.145833333333000000
              2.645833333333333000
              169.333333333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsInventario
            DataField = 'VL_CUSTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
          object QRDBText15: TQRDBText
            Left = 620
            Top = 1
            Width = 38
            Height = 16
            Size.Values = (
              42.333333333333330000
              1640.416666666667000000
              2.645833333333333000
              100.541666666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taRightJustify
            AlignToBand = False
            Color = clWhite
            DataSet = cdsInventario
            DataField = 'TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 9
          end
        end
        object QRBand7: TQRBand
          Left = 38
          Top = 191
          Width = 718
          Height = 37
          AlignToBottom = False
          BeforePrint = QRBand7BeforePrint
          Color = 14342874
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            97.895833333333330000
            1899.708333333333000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbGroupFooter
          object QRLabel22: TQRLabel
            Left = -1
            Top = 8
            Width = 325
            Height = 17
            Size.Values = (
              44.979166666666670000
              -2.645833333333333000
              21.166666666666670000
              859.895833333333300000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'VALOR TOTAL DOS PRODUTOS         EM 31/12/2014'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
          object QRL_TOTAL_GERAL: TQRLabel
            Left = 594
            Top = 8
            Width = 26
            Height = 17
            Size.Values = (
              44.979166666666670000
              1571.625000000000000000
              21.166666666666670000
              68.791666666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = '0,00'
            Color = 14342874
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 10
          end
        end
        object QRBand8: TQRBand
          Left = 38
          Top = 228
          Width = 718
          Height = 20
          Frame.DrawTop = True
          AlignToBottom = False
          BeforePrint = QRBand8BeforePrint
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
            ActiveInPreview = False
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
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object QRDBText11: TQRDBText
            Left = 4
            Top = 2
            Width = 53
            Height = 17
            Size.Values = (
              44.979166666666670000
              10.583333333333330000
              5.291666666666667000
              140.229166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = DM.cdsEmpresa
            DataField = 'FANTASIA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            VerticalAlignment = tlTop
            FontSize = 8
          end
          object qrl_pag: TQRLabel
            Left = 633
            Top = 2
            Width = 8
            Height = 17
            Size.Values = (
              44.979166666666670000
              1674.812500000000000000
              5.291666666666667000
              21.166666666666670000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            ActiveInPreview = False
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = '0'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            VerticalAlignment = tlTop
            FontSize = 9
          end
        end
      end
    end
  end
  object qSaldoEstoque: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select E.ID_LOJA, P.CODIGO,P.DESCRICAO,P.UNIDADE, SUM(E.ENTRADA ' +
        '- E.SAIDA) AS ESTOQUE from TB_ESTOQUE E'
      
        'JOIN TB_PRODUTO P ON (P.ID_PRODUTO = E.ID_PRODUTO AND P.ID_GRUPO' +
        '_PRODUTO = E.ID_GRUPO_PRODUTO)'
      'AND E.ID_LOJA =1'
      'GROUP BY'
      'E.ID_LOJA, P.CODIGO,P.DESCRICAO, P.UNIDADE'
      'ORDER BY P.DESCRICAO')
    SQLConnection = DM.conexao
    Left = 280
    object qSaldoEstoqueID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object qSaldoEstoqueCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object qSaldoEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qSaldoEstoqueESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object qSaldoEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
  end
  object dspSaldoEstoque: TDataSetProvider
    DataSet = qSaldoEstoque
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 312
  end
  object cdsSaldoEstoque: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldoEstoque'
    Left = 344
    object cdsSaldoEstoqueID_LOJA: TIntegerField
      FieldName = 'ID_LOJA'
    end
    object cdsSaldoEstoqueCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object cdsSaldoEstoqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsSaldoEstoqueESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object cdsSaldoEstoqueUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
  end
  object dsSaldoEstoque: TDataSource
    Left = 376
  end
  object qInventario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      ' P.codigo,'
      ' P.descricao,'
      ' P.UNIDADE,'
      ' P.ESTOQUE,'
      ' P.ESTOQUE_1,'
      ' p.cd_barra,'
      ' p.referencia,'
      ' p.VL_CUSTO,'
      ' sum(p.ESTOQUE * p.VL_CUSTO) as TOTAL,'
      ' sum(p.ESTOQUE_1 * p.VL_CUSTO) as TOTAL1'
      'FROM tb_produto P'
      'WHERE P.ESTOQUE > 0'
      'group by'
      ' P.codigo,'
      ' P.descricao,'
      ' P.UNIDADE,'
      ' P.ESTOQUE,'
      ' P.ESTOQUE_1,'
      ' p.cd_barra,'
      ' p.referencia,'
      ' p.VL_CUSTO'
      'ORDER BY  P.descricao'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    SQLConnection = DM.conexao
    Left = 488
    Top = 8
    object qInventarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object qInventarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object qInventarioUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object qInventarioESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object qInventarioCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object qInventarioREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qInventarioVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Precision = 18
      Size = 2
    end
    object qInventarioTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      Precision = 18
      Size = 5
    end
    object qInventarioESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      Precision = 18
      Size = 3
    end
    object qInventarioTOTAL1: TFMTBCDField
      FieldName = 'TOTAL1'
      ReadOnly = True
      Precision = 18
      Size = 5
    end
  end
  object dspInventario: TDataSetProvider
    DataSet = qInventario
    Options = [poIncFieldProps, poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText]
    Left = 520
    Top = 8
  end
  object cdsInventario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInventario'
    Left = 552
    Top = 8
    object cdsInventarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 7
    end
    object cdsInventarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsInventarioUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 10
    end
    object cdsInventarioESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object cdsInventarioCD_BARRA: TStringField
      FieldName = 'CD_BARRA'
      Size = 13
    end
    object cdsInventarioREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsInventarioVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 2
    end
    object cdsInventarioTOTAL: TFMTBCDField
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 5
    end
    object cdsInventarioESTOQUE_1: TFMTBCDField
      FieldName = 'ESTOQUE_1'
      Precision = 18
      Size = 3
    end
    object cdsInventarioTOTAL1: TFMTBCDField
      FieldName = 'TOTAL1'
      ReadOnly = True
      DisplayFormat = '###,###0.00'
      EditFormat = '###,###0.00'
      Precision = 18
      Size = 5
    end
  end
  object dsInventario: TDataSource
    DataSet = cdsInventario
    Left = 584
    Top = 8
  end
end
