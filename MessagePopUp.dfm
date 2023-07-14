object fmMessagePopUp: TfmMessagePopUp
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmMessagePopUp'
  ClientHeight = 170
  ClientWidth = 348
  Color = 16252415
  TransparentColor = True
  TransparentColorValue = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CurvyPanel1: TCurvyPanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 347
    Height = 169
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BorderColor = 11645355
    Color = clWhite
    TabOrder = 0
    ExplicitLeft = -5
    ExplicitTop = -5
    DesignSize = (
      347
      169)
    object TitleLabel: TLabel
      Left = 8
      Top = 8
      Width = 38
      Height = 25
      Caption = #50508#47548
      Color = 6316119
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8092531
      Font.Height = -19
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Shape1: TShape
      Left = 0
      Top = 35
      Width = 347
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Brush.Color = 11645355
      Pen.Color = clSilver
      ExplicitWidth = 349
    end
    object ContentsLabel: TLabel
      Left = 0
      Top = 43
      Width = 346
      Height = 67
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = #54532#47196#44536#47016#51012' '#51333#47308#54616#49884#44192#49845#45768#44620'? '
      DragCursor = crDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      WordWrap = True
    end
    object Shape2: TShape
      Left = 1
      Top = 117
      Width = 347
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
      Brush.Color = 11645355
      Pen.Color = clSilver
      ExplicitTop = 162
    end
    object OKPanel: TCurvyPanel
      Left = 53
      Top = 125
      Width = 100
      Height = 34
      Anchors = [akLeft, akRight, akBottom]
      BorderColor = 16756796
      Color = 16756796
      Rounding = 4
      TabOrder = 0
      object OKBtn: TLabel
        Left = 0
        Top = 0
        Width = 100
        Height = 34
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = #50696
        DragCursor = crDefault
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = OKBtnClick
        ExplicitLeft = -246
        ExplicitTop = -29
        ExplicitWidth = 346
        ExplicitHeight = 63
      end
    end
    object CancelPanel: TCurvyPanel
      Left = 192
      Top = 126
      Width = 100
      Height = 34
      Anchors = [akLeft, akRight, akBottom]
      BorderColor = 16756796
      Color = clWhite
      Rounding = 4
      TabOrder = 1
      object CancelBtn: TLabel
        Left = 0
        Top = 0
        Width = 100
        Height = 34
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        AutoSize = False
        Caption = #50500#45768#50836
        DragCursor = crDefault
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16756796
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        OnClick = CancelBtnClick
        ExplicitLeft = -246
        ExplicitTop = -29
        ExplicitWidth = 346
        ExplicitHeight = 63
      end
    end
  end
end
