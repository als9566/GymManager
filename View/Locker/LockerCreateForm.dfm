object fmLockerCreate: TfmLockerCreate
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmLockerCreate'
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
    Rounding = 26
    TabOrder = 0
    ExplicitWidth = 637
    ExplicitHeight = 514
    DesignSize = (
      622
      475)
    object Label1: TLabel
      Left = 27
      Top = 23
      Width = 69
      Height = 22
      Caption = #46973#52964#49373#49457
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -20
      Font.Name = #48176#45804#51032#48124#51313' '#54620#45208#45716' '#50676#54620#49332
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 167
      Top = 25
      Width = 11
      Height = 18
      Caption = 'X'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = #48176#45804#51032#48124#51313' '#54620#45208#52404' Air'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 559
      Top = 23
      Width = 43
      Height = 25
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'VisualStudio2013Light'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000023744558745469746C650043616E63656C3B53746F703B
        457869743B426172733B526962626F6E3B4C9696B20000009449444154785E95
        93410A834010047D5C2027F3093F104C6461C5CD37F312C5D3641AD27810BAF1
        5030CC587510B68B88EE3BDCFAA46236F0FB190E66CA7B12C9125EFE24F1771E
        584C9009234626230FE514F1F21B2E8E22A2650654A42999011951320322A265
        E0FFF6411301219B88935F49511129F3A622567611C8B3905DA462794FD693EC
        231B5C2C19795E78CE131CCC3FD2409CCC2C3656140000000049454E44AE4260
        82}
      OptionsImage.Layout = blGlyphBottom
      PaintStyle = bpsGlyph
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object Button1: TButton
      Left = 468
      Top = 22
      Width = 75
      Height = 25
      Caption = #51200#51109
      TabOrder = 1
    end
    object LockerPanel: TcxScrollBox
      Left = 18
      Top = 72
      Width = 586
      Height = 385
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = cxcbsNone
      HorzScrollBar.Tracking = True
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 2
      Transparent = True
      VertScrollBar.Tracking = True
    end
    object LockerX: TCurvyEdit
      Left = 115
      Top = 20
      Width = 41
      Height = 24
      BorderColor = clSilver
      Rounding = 4
      TabOrder = 3
      TabStop = False
      Version = '1.2.1.0'
      Controls = <>
      ImeName = ''
      Text = ''
      OnChange = LockerCreateXY
    end
    object LockerY: TCurvyEdit
      Left = 187
      Top = 20
      Width = 41
      Height = 24
      BorderColor = clSilver
      Rounding = 4
      TabOrder = 4
      TabStop = False
      Version = '1.2.1.0'
      Controls = <>
      ImeName = ''
      Text = ''
      OnChange = LockerCreateXY
    end
  end
end
