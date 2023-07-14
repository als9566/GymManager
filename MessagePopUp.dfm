object fmMessagePopUp: TfmMessagePopUp
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmMessagePopUp'
  ClientHeight = 219
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
    Height = 218
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alClient
    BorderColor = 11645355
    Color = 16252415
    TabOrder = 0
    ExplicitLeft = 48
    ExplicitTop = 43
    ExplicitWidth = 185
    ExplicitHeight = 94
    DesignSize = (
      347
      218)
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 38
      Height = 25
      Caption = #50508#47548
      Color = 11645355
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 11645355
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
    object Label2: TLabel
      Left = 80
      Top = 72
      Width = 180
      Height = 17
      Alignment = taCenter
      Caption = #54532#47196#44536#47016#51012' '#51333#47308#54616#49884#44192#49845#45768#44620'?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 173
      Top = 181
      Width = 75
      Height = 25
      Caption = #54869#51064
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 254
      Top = 181
      Width = 75
      Height = 25
      Caption = #52712#49548
      TabOrder = 1
      OnClick = Button2Click
    end
  end
end
