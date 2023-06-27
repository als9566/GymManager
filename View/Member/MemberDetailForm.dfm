object fmMemberDetail: TfmMemberDetail
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmMemberDetail'
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
    object Label1: TLabel
      Left = 27
      Top = 23
      Width = 80
      Height = 28
      Caption = #54924#50896#51221#48372
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton1: TcxButton
      Left = 561
      Top = 22
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
    object EditPanel: TcxScrollBox
      Left = 16
      Top = 72
      Width = 591
      Height = 351
      AutoScroll = False
      BorderStyle = cxcbsNone
      HorzScrollBar.Range = 551
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 1
      Transparent = True
      VertScrollBar.Range = 600
      VertScrollBar.Tracking = True
      object MemberInfoPanel: TCurvyPanel
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 564
        Height = 100
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BorderColor = clSilver
        TabOrder = 0
        object MemberNameLabel: TLabel
          Left = 51
          Top = 29
          Width = 5
          Height = 25
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -19
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MemberTelLabel: TLabel
          Left = 51
          Top = 54
          Width = 3
          Height = 17
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        object MemberGenderLabel: TLabel
          Left = 146
          Top = 54
          Width = 3
          Height = 17
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 288
          Top = 13
          Width = 48
          Height = 15
          Caption = #49373#45380#50900#51068
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        object BirthdayLabel: TLabel
          Left = 288
          Top = 31
          Width = 3
          Height = 15
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 288
          Top = 53
          Width = 24
          Height = 15
          Caption = #51452#49548
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        object AddressLabel: TLabel
          Left = 288
          Top = 71
          Width = 3
          Height = 15
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 376
          Top = 13
          Width = 48
          Height = 15
          Caption = #49884#51089#51068#51088
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        object StartDayLabel: TLabel
          Left = 376
          Top = 31
          Width = 3
          Height = 15
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object ProductPanel: TCurvyPanel
        AlignWithMargins = True
        Left = 5
        Top = 115
        Width = 564
        Height = 65
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BorderColor = clSilver
        TabOrder = 1
        object Label7: TLabel
          Left = 16
          Top = 13
          Width = 16
          Height = 17
          Caption = 'PT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PTLabel: TLabel
          Left = 16
          Top = 34
          Width = 3
          Height = 15
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 173
          Top = 13
          Width = 39
          Height = 17
          Caption = #50868#46041#48373
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object WearLabel: TLabel
          Left = 173
          Top = 34
          Width = 3
          Height = 15
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 376
          Top = 13
          Width = 26
          Height = 17
          Caption = #46973#52964
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LockerLabel: TLabel
          Left = 376
          Top = 34
          Width = 3
          Height = 15
          Caption = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -12
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object PTRecordPanel: TCurvyPanel
        AlignWithMargins = True
        Left = 5
        Top = 190
        Width = 564
        Height = 144
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BorderColor = clSilver
        TabOrder = 2
        object Label11: TLabel
          Left = 16
          Top = 13
          Width = 52
          Height = 17
          Caption = #49688#44053#45236#50669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PTRecordScrollBox: TcxScrollBox
          Left = 16
          Top = 36
          Width = 537
          Height = 93
          AutoScroll = False
          BorderStyle = cxcbsNone
          HorzScrollBar.Range = 500
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Transparent = True
          VertScrollBar.Range = 90
          VertScrollBar.Tracking = True
          object Label12: TLabel
            Left = 4
            Top = 5
            Width = 124
            Height = 15
            Caption = '[1]  2023-05-18 16:00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6446686
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 4
            Top = 26
            Width = 124
            Height = 15
            Caption = '[2]  2023-05-20 17:00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6446686
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 4
            Top = 47
            Width = 124
            Height = 15
            Caption = '[3]  2023-05-25 15:00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 6446686
            Font.Height = -12
            Font.Name = #47569#51008' '#44256#46357
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object PaymentRecodePanel: TCurvyPanel
        AlignWithMargins = True
        Left = 5
        Top = 344
        Width = 564
        Height = 218
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        BorderColor = clSilver
        TabOrder = 3
        DesignSize = (
          564
          218)
        object Label16: TLabel
          Left = 16
          Top = 13
          Width = 52
          Height = 17
          Caption = #44208#51228#45236#50669
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CurvyPanel1: TCurvyPanel
          Left = 16
          Top = 36
          Width = 532
          Height = 174
          Anchors = [akLeft, akTop, akRight, akBottom]
          BorderColor = 15329769
          TabOrder = 0
          object PaymentRecodeScrollBox: TcxScrollBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 526
            Height = 168
            Align = alClient
            BorderStyle = cxcbsNone
            HorzScrollBar.Tracking = True
            LookAndFeel.Kind = lfUltraFlat
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'DevExpressStyle'
            TabOrder = 0
            Transparent = True
            VertScrollBar.Tracking = True
            object PaymentRecodeGrid: TStringGrid
              Left = -121
              Top = 0
              Width = 647
              Height = 150
              BevelOuter = bvNone
              BorderStyle = bsNone
              Color = 16514043
              ColCount = 4
              DefaultColWidth = 120
              DefaultRowHeight = 40
              DefaultDrawing = False
              FixedColor = clBlack
              RowCount = 3
              Options = [goVertLine, goHorzLine, goRangeSelect]
              ScrollBars = ssNone
              TabOrder = 0
              OnDrawCell = PaymentRecodeGridDrawCell
              ColWidths = (
                120
                105
                205
                216)
              RowHeights = (
                40
                40
                40)
            end
          end
        end
      end
    end
  end
end
