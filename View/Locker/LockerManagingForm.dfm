object fmLockerManaging: TfmLockerManaging
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #46973#52964#44288#47532
  ClientHeight = 661
  ClientWidth = 784
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    784
    661)
  PixelsPerInch = 96
  TextHeight = 13
  object backPanel: TPanel
    Left = 2
    Top = 2
    Width = 781
    Height = 658
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    Color = 16514043
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      781
      658)
    object MenuNameLabel: TLabel
      Left = 16
      Top = 9
      Width = 80
      Height = 28
      Caption = #46973#52964#44288#47532
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
      Width = 761
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = clSilver
      Pen.Color = clSilver
      ExplicitWidth = 764
    end
    object MemberCntPanel: TPanel
      Left = 7
      Top = 51
      Width = 746
      Height = 41
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Color = 16514043
      ParentBackground = False
      TabOrder = 0
      object LockerCntLabel2: TLabel
        Left = 77
        Top = 11
        Width = 26
        Height = 17
        Caption = #49324#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LockerCntLabel3: TLabel
        Left = 174
        Top = 11
        Width = 39
        Height = 17
        Caption = #48120#49324#50857
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LockerEndCnt: TLabel
        Left = 218
        Top = 11
        Width = 24
        Height = 17
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LockerIngCnt: TLabel
        Left = 111
        Top = 11
        Width = 24
        Height = 17
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LockerTotalCnt: TLabel
        Left = 13
        Top = 11
        Width = 24
        Height = 17
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape2: TShape
        Left = 56
        Top = 11
        Width = 2
        Height = 17
        Brush.Color = clSilver
        Pen.Color = clSilver
      end
      object Shape3: TShape
        Left = 161
        Top = 11
        Width = 1
        Height = 17
        Brush.Color = clSilver
        Pen.Color = clSilver
      end
    end
    object LockerPanel: TcxScrollBox
      Left = 7
      Top = 98
      Width = 761
      Height = 551
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = cxcbsNone
      Color = 16514043
      HorzScrollBar.Tracking = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentColor = False
      TabOrder = 1
      Transparent = True
      VertScrollBar.Tracking = True
    end
    object NewInsertBtn: TcxButton
      Left = 678
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #46973#52964#49373#49457
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = NewInsertBtnClick
    end
    object ModifyBtn: TcxButton
      Left = 597
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #46973#52964#49688#51221
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = []
      ParentFont = False
      OnClick = ModifyBtnClick
    end
  end
end
