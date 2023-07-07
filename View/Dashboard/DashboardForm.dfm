object fmDashboard: TfmDashboard
  AlignWithMargins = True
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  BorderStyle = bsNone
  Caption = 'fmDashboard'
  ClientHeight = 685
  ClientWidth = 1033
  Color = 16447735
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #47569#51008' '#44256#46357
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  DesignSize = (
    1033
    685)
  PixelsPerInch = 96
  TextHeight = 13
  object MenuNameLabel: TLabel
    Left = 16
    Top = 9
    Width = 104
    Height = 28
    Caption = 'Dashboard'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape1: TShape
    Left = 7
    Top = 40
    Width = 1009
    Height = 2
    Anchors = [akLeft, akTop, akRight]
    Brush.Color = clSilver
    Pen.Color = clSilver
  end
  object DashboardScrollBox: TcxScrollBox
    Left = 0
    Top = 64
    Width = 1030
    Height = 663
    Anchors = [akTop, akBottom]
    AutoScroll = False
    BorderStyle = cxcbsNone
    Color = clSkyBlue
    HorzScrollBar.Range = 500
    HorzScrollBar.Tracking = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'DevExpressStyle'
    ParentColor = False
    TabOrder = 0
    Transparent = True
    VertScrollBar.Range = 850
    VertScrollBar.Tracking = True
    OnMouseWheelDown = DashboardScrollBoxMouseWheelDown
    OnMouseWheelUp = DashboardScrollBoxMouseWheelUp
    object DashboardPanel: TPanel
      Left = 0
      Top = 0
      Width = 1013
      Height = 800
      Align = alClient
      BevelOuter = bvNone
      Color = 16447735
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 0
      ExplicitTop = 1
      DesignSize = (
        1013
        800)
      object CurvyPanel2: TCurvyPanel
        Left = 734
        Top = 4
        Width = 255
        Height = 237
        Anchors = [akTop]
        BorderColor = 15658734
        Color = clWhite
        Rounding = 5
        TabOrder = 0
        object Label2: TLabel
          Left = 15
          Top = 7
          Width = 30
          Height = 20
          Caption = #49457#48324
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5000268
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid3: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 32
          Width = 245
          Height = 200
          Margins.Left = 5
          Margins.Top = 20
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ExplicitLeft = -27
          ExplicitTop = 37
          ExplicitWidth = 282
          object cxGridDBChartView2: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'Legends'
            DataController.DataSource = DataSource1
            DiagramColumn.Styles.CategoryGridLines = cxStyle1
            DiagramColumn.Styles.Plot = cxStyle3
            DiagramColumn.Styles.ValueGridLines = cxStyle2
            DiagramLine.Legend.Position = cppNone
            DiagramLine.AxisCategory.GridLines = False
            DiagramLine.AxisCategory.TickMarkKind = tmkNone
            DiagramLine.AxisValue.TickMarkKind = tmkNone
            DiagramLine.Styles.Values = cxStyle4
            DiagramLine.Styles.CategoryAxis = cxStyle6
            DiagramLine.Styles.GridLines = cxStyle5
            DiagramLine.Styles.ValueAxis = cxStyle7
            DiagramLine.Values.HotSpotSize = 10
            DiagramLine.Values.MarkerSize = 6
            DiagramLine.Values.MarkerStyle = cmsCircle
            DiagramPie.Active = True
            DiagramPie.Legend.Position = cppRight
            DiagramPie.OnCustomDrawLegendItem = cxGridDBChartView1DiagramPieCustomDrawLegendItem
            DiagramPie.OnCustomDrawValue = cxGridDBChartView1DiagramPieCustomDrawValue
            DiagramPie.SeriesCaptions = False
            DiagramPie.Styles.Values = cxStyle2
            object cxGridDBChartSeries2: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values1'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBChartView2
          end
        end
      end
      object CurvyPanel1: TCurvyPanel
        Left = 16
        Top = 4
        Width = 706
        Height = 237
        Margins.Left = 10
        Anchors = [akTop]
        BorderColor = 15658734
        Color = clWhite
        Rounding = 5
        TabOrder = 1
        object Label1: TLabel
          Left = 15
          Top = 7
          Width = 45
          Height = 20
          Caption = #54924#50896#49688
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5000268
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 32
          Width = 696
          Height = 200
          Margins.Left = 5
          Margins.Top = 20
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderStyle = cxcbsNone
          TabOrder = 0
          object cxGrid1DBChartView1: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'Legends'
            DataController.DataSource = DataSource1
            DiagramColumn.Styles.CategoryGridLines = cxStyle1
            DiagramColumn.Styles.Plot = cxStyle3
            DiagramColumn.Styles.ValueGridLines = cxStyle2
            DiagramLine.Active = True
            DiagramLine.Legend.Position = cppNone
            DiagramLine.AxisCategory.GridLines = False
            DiagramLine.AxisCategory.TickMarkKind = tmkNone
            DiagramLine.AxisValue.TickMarkKind = tmkNone
            DiagramLine.Styles.Values = cxStyle4
            DiagramLine.Styles.CategoryAxis = cxStyle6
            DiagramLine.Styles.GridLines = cxStyle5
            DiagramLine.Styles.ValueAxis = cxStyle7
            DiagramLine.Values.HotSpotSize = 10
            DiagramLine.Values.MarkerSize = 6
            DiagramLine.Values.MarkerStyle = cmsCircle
            object cxGrid1DBChartView1Series1: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values1'
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBChartView1
          end
        end
      end
      object CurvyPanel3: TCurvyPanel
        Left = 20
        Top = 260
        Width = 255
        Height = 237
        Anchors = [akTop]
        BorderColor = 15658734
        Color = clWhite
        Rounding = 5
        TabOrder = 2
        object Label3: TLabel
          Left = 15
          Top = 7
          Width = 30
          Height = 20
          Caption = #46973#52964
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5000268
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid2: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 32
          Width = 245
          Height = 200
          Margins.Left = 5
          Margins.Top = 20
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object cxGridDBChartView1: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'Legends'
            DataController.DataSource = DataSource1
            DiagramColumn.Styles.CategoryGridLines = cxStyle1
            DiagramColumn.Styles.Plot = cxStyle3
            DiagramColumn.Styles.ValueGridLines = cxStyle2
            DiagramLine.Legend.Position = cppNone
            DiagramLine.AxisCategory.GridLines = False
            DiagramLine.AxisCategory.TickMarkKind = tmkNone
            DiagramLine.AxisValue.TickMarkKind = tmkNone
            DiagramLine.Styles.Values = cxStyle4
            DiagramLine.Styles.CategoryAxis = cxStyle6
            DiagramLine.Styles.GridLines = cxStyle5
            DiagramLine.Styles.ValueAxis = cxStyle7
            DiagramLine.Values.HotSpotSize = 10
            DiagramLine.Values.MarkerSize = 6
            DiagramLine.Values.MarkerStyle = cmsCircle
            DiagramPie.Active = True
            DiagramPie.Legend.Position = cppRight
            DiagramPie.OnCustomDrawLegendItem = cxGridDBChartView1DiagramPieCustomDrawLegendItem
            DiagramPie.OnCustomDrawValue = cxGridDBChartView1DiagramPieCustomDrawValue
            DiagramPie.SeriesCaptions = False
            DiagramPie.Styles.Values = cxStyle2
            object cxGridDBChartSeries1: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values1'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBChartView1
          end
        end
      end
      object CurvyPanel4: TCurvyPanel
        Left = 287
        Top = 260
        Width = 706
        Height = 237
        Margins.Left = 10
        Anchors = [akTop]
        BorderColor = 15658734
        Color = clWhite
        Rounding = 5
        TabOrder = 3
        object Label4: TLabel
          Left = 15
          Top = 7
          Width = 18
          Height = 20
          Caption = 'PT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5000268
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid4: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 32
          Width = 696
          Height = 200
          Margins.Left = 5
          Margins.Top = 20
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alBottom
          BorderStyle = cxcbsNone
          TabOrder = 0
          object cxGridDBChartView3: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'Legends'
            DataController.DataSource = DataSource1
            DiagramColumn.Styles.CategoryGridLines = cxStyle1
            DiagramColumn.Styles.Plot = cxStyle3
            DiagramColumn.Styles.ValueGridLines = cxStyle2
            DiagramLine.Legend.Position = cppNone
            DiagramLine.AxisCategory.GridLines = False
            DiagramLine.AxisCategory.TickMarkKind = tmkNone
            DiagramLine.AxisValue.TickMarkKind = tmkNone
            DiagramLine.Styles.Values = cxStyle4
            DiagramLine.Styles.CategoryAxis = cxStyle6
            DiagramLine.Styles.GridLines = cxStyle5
            DiagramLine.Styles.ValueAxis = cxStyle7
            DiagramLine.Values.HotSpotSize = 10
            DiagramLine.Values.MarkerSize = 6
            DiagramLine.Values.MarkerStyle = cmsCircle
            DiagramStackedColumn.Active = True
            object cxGridDBChartSeries3: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values1'
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBChartView3
          end
        end
      end
      object CurvyPanel5: TCurvyPanel
        Left = 16
        Top = 516
        Width = 978
        Height = 237
        Margins.Left = 10
        Anchors = [akTop]
        BorderColor = 15658734
        Color = clWhite
        Rounding = 5
        TabOrder = 4
        object Label5: TLabel
          Left = 15
          Top = 7
          Width = 30
          Height = 20
          Caption = #47588#52636
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 5000268
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid5: TcxGrid
          Left = 19
          Top = 40
          Width = 646
          Height = 200
          Margins.Left = 5
          Margins.Top = 20
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alCustom
          BorderStyle = cxcbsNone
          TabOrder = 0
          object cxGridDBChartView4: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'Legends'
            DataController.DataSource = DataSource1
            DiagramColumn.Styles.CategoryGridLines = cxStyle1
            DiagramColumn.Styles.Plot = cxStyle3
            DiagramColumn.Styles.ValueGridLines = cxStyle2
            DiagramLine.Active = True
            DiagramLine.Legend.Position = cppNone
            DiagramLine.AxisCategory.GridLines = False
            DiagramLine.AxisCategory.TickMarkKind = tmkNone
            DiagramLine.AxisValue.TickMarkKind = tmkNone
            DiagramLine.Styles.Values = cxStyle4
            DiagramLine.Styles.CategoryAxis = cxStyle6
            DiagramLine.Styles.GridLines = cxStyle5
            DiagramLine.Styles.ValueAxis = cxStyle7
            DiagramLine.Values.HotSpotSize = 10
            DiagramLine.Values.MarkerSize = 6
            DiagramLine.Values.MarkerStyle = cmsCircle
            object cxGridDBChartSeries4: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values1'
            end
            object cxGridDBChartView4Series1: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values2'
            end
            object cxGridDBChartView4Series4: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values3'
            end
            object cxGridDBChartView4Series5: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values4'
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBChartView4
          end
        end
        object cxGrid6: TcxGrid
          Left = 693
          Top = 32
          Width = 268
          Height = 200
          Margins.Left = 5
          Margins.Top = 20
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alCustom
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object cxGridDBChartView5: TcxGridDBChartView
            Categories.DataBinding.FieldName = 'Legends'
            DataController.DataSource = DataSource1
            DiagramColumn.Styles.CategoryGridLines = cxStyle1
            DiagramColumn.Styles.Plot = cxStyle3
            DiagramColumn.Styles.ValueGridLines = cxStyle2
            DiagramLine.Legend.Position = cppNone
            DiagramLine.AxisCategory.GridLines = False
            DiagramLine.AxisCategory.TickMarkKind = tmkNone
            DiagramLine.AxisValue.TickMarkKind = tmkNone
            DiagramLine.Styles.Values = cxStyle4
            DiagramLine.Styles.CategoryAxis = cxStyle6
            DiagramLine.Styles.GridLines = cxStyle5
            DiagramLine.Styles.ValueAxis = cxStyle7
            DiagramLine.Values.HotSpotSize = 10
            DiagramLine.Values.MarkerSize = 6
            DiagramLine.Values.MarkerStyle = cmsCircle
            DiagramPie.Active = True
            DiagramPie.Legend.Position = cppRight
            DiagramPie.OnCustomDrawLegendItem = cxGridDBChartView1DiagramPieCustomDrawLegendItem
            DiagramPie.OnCustomDrawValue = cxGridDBChartView1DiagramPieCustomDrawValue
            DiagramPie.SeriesCaptions = False
            DiagramPie.Styles.Values = cxStyle2
            object cxGridDBChartSeries5: TcxGridDBChartSeries
              DataBinding.FieldName = 'Values1'
            end
          end
          object cxGridLevel5: TcxGridLevel
            GridView = cxGridDBChartView5
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 616
    Top = 504
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clRed
    end
  end
  object cxStyleRepository3: TcxStyleRepository
    Left = 680
    Top = 488
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 664
    Top = 536
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clWhite
    end
  end
  object DataSource1: TDataSource
    DataSet = dxMemData1
    Left = 656
    Top = 440
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    Persistent.Data = {
      5665728FC2F5285C8FFE3F0600000014000000010008004C6567656E64730004
      0000000300080056616C7565733100040000000300080056616C756573320004
      0000000300080056616C7565733300040000000300080056616C756573340008
      00000006000C00466C6F617456616C7565730001020000007631010100000001
      050000000101000000010500000001E15D2EE23BDD5E40010200000076320103
      000000010300000001030000000103000000016E6E4C4F58245F400102000000
      76330102000000010400000001020000000104000000013108AC1C5A245E4001
      020000007634010400000001020000000104000000010200000001513239B533
      645F4001020000007635010300000001030000000103000000010300000001ED
      6D0A963024594001020000007636010500000001010000000105000000010100
      0000010000000000005940}
    SortOptions = []
    Left = 712
    Top = 440
    object dxMemData1Legends: TStringField
      FieldName = 'Legends'
    end
    object dxMemData1Values1: TIntegerField
      FieldName = 'Values1'
    end
    object dxMemData1Values2: TIntegerField
      FieldName = 'Values2'
    end
    object dxMemData1Values3: TIntegerField
      FieldName = 'Values3'
    end
    object dxMemData1Values4: TIntegerField
      FieldName = 'Values4'
    end
    object dxMemData1FloatValues: TFloatField
      FieldName = 'FloatValues'
    end
  end
  object cxStyleRepository4: TcxStyleRepository
    Left = 528
    Top = 464
    PixelsPerInch = 96
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14199890
      TextColor = clWhite
    end
  end
  object cxStyleRepository5: TcxStyleRepository
    Left = 688
    Top = 608
    PixelsPerInch = 96
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 15724527
      TextColor = 15724527
    end
  end
  object cxStyleRepository6: TcxStyleRepository
    Left = 584
    Top = 576
    PixelsPerInch = 96
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14935011
      TextColor = 3487029
    end
  end
  object cxStyleRepository7: TcxStyleRepository
    Left = 512
    Top = 536
    PixelsPerInch = 96
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14935011
      TextColor = 3487029
    end
  end
end
