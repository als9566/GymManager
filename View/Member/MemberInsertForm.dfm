object fmMemberInsert: TfmMemberInsert
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmMemberInsert'
  ClientHeight = 515
  ClientWidth = 638
  Color = clWhite
  TransparentColorValue = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PopupMode = pmAuto
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    638
    515)
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 26
    Top = 83
    Width = 52
    Height = 17
    Caption = #49373#45380#50900#51068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #47569#51008' '#44256#46357
    Font.Style = []
    ParentFont = False
  end
  object backPanel: TCurvyPanel
    Left = 0
    Top = 0
    Width = 637
    Height = 514
    Anchors = [akLeft, akTop, akRight, akBottom]
    Rounding = 26
    TabOrder = 0
    ExplicitHeight = 636
    object Label1: TLabel
      Left = 27
      Top = 23
      Width = 120
      Height = 28
      Caption = #49888#44508#54924#50896#46321#47197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditPanel: TcxScrollBox
      Left = 26
      Top = 64
      Width = 599
      Height = 554
      AutoScroll = False
      BorderStyle = cxcbsNone
      HorzScrollBar.Range = 551
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'DevExpressStyle'
      TabOrder = 0
      Transparent = True
      VertScrollBar.Range = 363
      VertScrollBar.Tracking = True
      object NameLabel: TLabel
        Left = 28
        Top = 10
        Width = 26
        Height = 17
        Caption = #51060#47492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object AddressLabel: TLabel
        Left = 28
        Top = 139
        Width = 26
        Height = 17
        Caption = #51452#49548
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object BirthdayLabel: TLabel
        Left = 28
        Top = 75
        Width = 52
        Height = 17
        Caption = #49373#45380#50900#51068
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object TelLabel: TLabel
        Left = 265
        Top = 75
        Width = 52
        Height = 17
        Caption = #51204#54868#48264#54840
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object StartLabel: TLabel
        Left = 28
        Top = 235
        Width = 52
        Height = 17
        Caption = #49884#51089#51068#51088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object MembershipLabel: TLabel
        Left = 266
        Top = 235
        Width = 39
        Height = 17
        Caption = #54924#50896#44428
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object LockerDayLabel: TLabel
        Left = 28
        Top = 307
        Width = 26
        Height = 17
        Caption = #46973#52964
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object WearLabel: TLabel
        Left = 266
        Top = 307
        Width = 39
        Height = 17
        Caption = #50868#46041#48373
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 325
        Top = 104
        Width = 6
        Height = 20
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 400
        Top = 104
        Width = 6
        Height = 20
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LockerDayRadioGroup: TcxRadioGroup
        Left = 60
        Top = 304
        Alignment = alCenterCenter
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Y'
            Value = 'Y'
          end
          item
            Caption = 'N'
            Value = 'N'
          end>
        Style.BorderStyle = ebsNone
        TabOrder = 10
        Height = 21
        Width = 152
      end
      object NamePanel: TCurvyPanel
        Left = 26
        Top = 32
        Width = 329
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 0
        object NameEdit: TEdit
          Left = 14
          Top = 6
          Width = 299
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = #54861#44600#46041
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
        end
      end
      object AddressPanel: TCurvyPanel
        Left = 26
        Top = 162
        Width = 513
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 6
        object AddressEdit: TEdit
          Left = 12
          Top = 6
          Width = 491
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = #49436#50872#53945#48324#49884' 00'#44396' 00'#47196'1'#44600' 11'
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
        end
      end
      object BirthdayPanel: TCurvyPanel
        Left = 26
        Top = 98
        Width = 217
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 2
        object BirthdayDateEdit: TcxDateEdit
          Left = 8
          Top = 5
          EditValue = 36526d
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = True
          Style.LookAndFeel.SkinName = 'Silver'
          Style.ButtonStyle = btsDefault
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.SkinName = 'Silver'
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.SkinName = 'Silver'
          StyleHot.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.SkinName = 'Silver'
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
          Width = 201
        end
      end
      object StartPanel: TCurvyPanel
        Left = 26
        Top = 258
        Width = 217
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 7
        object StartDateEdit: TcxDateEdit
          Left = 10
          Top = 5
          EditValue = 36526d
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.ButtonStyle = btsDefault
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
          Width = 201
        end
      end
      object MembershipPanel: TCurvyPanel
        Left = 264
        Top = 258
        Width = 275
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 9
        object MembershipComboBox: TcxComboBox
          Left = 9
          Top = 7
          Properties.Alignment.Horz = taLeftJustify
          Properties.DropDownListStyle = lsEditFixedList
          Properties.ItemHeight = 20
          Properties.Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
          Properties.OnDrawItem = MembershipComboBoxPropertiesDrawItem
          Properties.OnInitPopup = MembershipComboBoxPropertiesInitPopup
          Style.BorderColor = clNone
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.PopupBorderStyle = epbsSingle
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          TextHint = #54924#50896#44428' '#49440#53469
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
          Width = 255
        end
      end
      object MembershipRadioGroup: TcxRadioGroup
        Left = 316
        Top = 218
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #44592#44036
            Value = '0'
          end
          item
            Caption = 'PT'
            Value = '1'
          end>
        Style.BorderStyle = ebsNone
        TabOrder = 8
        Height = 34
        Width = 152
      end
      object GenderRadioGroup: TcxRadioGroup
        Left = 383
        Top = 25
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = #45224
            Value = '0'
          end
          item
            Caption = #50668
            Value = '1'
          end>
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 34
        Width = 178
      end
      object LockerDayPanel: TCurvyPanel
        Left = 26
        Top = 330
        Width = 217
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 11
        object LockerDayDateEdit: TcxDateEdit
          Left = 10
          Top = 5
          EditValue = 36526d
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.ButtonStyle = btsDefault
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
          Width = 201
        end
      end
      object WearPanel: TCurvyPanel
        Left = 264
        Top = 330
        Width = 217
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 13
        object WearDateEdit: TcxDateEdit
          Left = 10
          Top = 5
          EditValue = 36526d
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #47569#51008' '#44256#46357
          Style.Font.Style = []
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'DevExpressStyle'
          Style.ButtonStyle = btsDefault
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
          Width = 201
        end
      end
      object WearRadioGroup: TcxRadioGroup
        Left = 311
        Top = 304
        Alignment = alCenterCenter
        Ctl3D = True
        ParentCtl3D = False
        Properties.Columns = 2
        Properties.Items = <
          item
            Caption = 'Y'
            Value = 'Y'
          end
          item
            Caption = 'N'
            Value = 'N'
          end>
        Style.BorderStyle = ebsNone
        TabOrder = 12
        Height = 21
        Width = 152
      end
      object Tel1Panel: TCurvyPanel
        Left = 266
        Top = 98
        Width = 51
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 3
        object Tel1Edit: TEdit
          Left = 12
          Top = 6
          Width = 27
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
        end
      end
      object Tel2Panel: TCurvyPanel
        Left = 338
        Top = 98
        Width = 54
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 4
        object Tel2Edit: TEdit
          Left = 11
          Top = 6
          Width = 34
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
        end
      end
      object Tel3Panel: TCurvyPanel
        Left = 415
        Top = 98
        Width = 54
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 5
        object Tel3Edit: TEdit
          Left = 11
          Top = 6
          Width = 34
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnEnter = EditBorderFocusIn
          OnExit = EditBorderFocusOut
        end
      end
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
      TabOrder = 1
      OnClick = Button1Click
    end
  end
end
