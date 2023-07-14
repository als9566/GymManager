object fmLockerModify: TfmLockerModify
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmLockerModify'
  ClientHeight = 476
  ClientWidth = 623
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    623
    476)
  PixelsPerInch = 96
  TextHeight = 13
  object backPanel: TCurvyPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 475
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16514043
    Rounding = 26
    TabOrder = 0
    DesignSize = (
      622
      475)
    object Label1: TLabel
      Left = 27
      Top = 23
      Width = 80
      Height = 28
      Caption = #46973#52964#49688#51221
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ScrollBox: TcxScrollBox
      Left = 18
      Top = 68
      Width = 586
      Height = 385
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = cxcbsNone
      Color = 16514043
      HorzScrollBar.Tracking = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      ParentColor = False
      TabOrder = 0
      Transparent = True
      VertScrollBar.Tracking = True
      object LockerPanel: TPanel
        Left = 3
        Top = 0
        Width = 566
        Height = 309
        BevelOuter = bvNone
        Color = 16514043
        ParentBackground = False
        TabOrder = 0
        object XPlusBtn: TCurvyPanel
          Left = 10
          Top = 10
          Width = 80
          Height = 60
          BorderColor = 15066597
          Color = 16382457
          Rounding = 4
          TabOrder = 0
          object Label2: TLabel
            Left = 0
            Top = 0
            Width = 8
            Height = 13
            Cursor = crHandPoint
            Align = alClient
            Alignment = taCenter
            Caption = '+'
            Layout = tlCenter
            OnClick = XPlusBtnClick
          end
        end
        object YPlusBtn: TCurvyPanel
          Left = 10
          Top = 10
          Width = 80
          Height = 60
          BorderColor = 15066597
          Color = 16382457
          Rounding = 4
          TabOrder = 1
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 8
            Height = 13
            Cursor = crHandPoint
            Align = alClient
            Alignment = taCenter
            Caption = '+'
            Layout = tlCenter
            OnClick = YPlusBtnClick
          end
        end
      end
    end
    object SaveBtnPanel: TCurvyPanel
      Left = 492
      Top = 23
      Width = 55
      Height = 25
      Anchors = [akTop, akRight]
      BorderColor = 11908533
      Color = clWhite
      Rounding = 5
      TabOrder = 1
      object SaveBtn: TLabel
        Left = 0
        Top = 0
        Width = 24
        Height = 15
        Align = alClient
        Alignment = taCenter
        Caption = #51200#51109
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -12
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        OnClick = SaveBtnClick
        OnMouseDown = SaveBtnMouseDown
        OnMouseMove = SaveBtnMouseMove
        OnMouseUp = SaveBtnMouseUp
        OnMouseLeave = SaveBtnMouseLeave
      end
    end
    object CloseBtnPanel: TCurvyPanel
      Left = 561
      Top = 23
      Width = 45
      Height = 25
      Anchors = [akTop, akRight]
      BorderColor = 11908533
      Color = clWhite
      Rounding = 5
      TabOrder = 2
      object CloseBtn: TLabel
        Left = 0
        Top = 0
        Width = 10
        Height = 21
        Align = alClient
        Alignment = taCenter
        Caption = 'X'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4195022
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
        OnClick = CloseBtnClick
        OnMouseDown = CloseBtnMouseDown
        OnMouseMove = CloseBtnMouseMove
        OnMouseUp = CloseBtnMouseUp
        OnMouseLeave = CloseBtnMouseLeave
      end
    end
  end
end
