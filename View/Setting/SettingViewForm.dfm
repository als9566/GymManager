object fmSettingView: TfmSettingView
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmSettingView'
  ClientHeight = 661
  ClientWidth = 1006
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object backPanel: TPanel
    Left = 0
    Top = 0
    Width = 1006
    Height = 661
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      1006
      661)
    object MenuNameLabel: TLabel
      Left = 16
      Top = 9
      Width = 40
      Height = 28
      Caption = #49444#51221
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CurvyPanel1: TCurvyPanel
      Left = 44
      Top = 227
      Width = 933
      Height = 102
      Anchors = []
      BorderColor = 13882323
      TabOrder = 0
      object PriceSetMenuLabel: TLabel
        Left = 19
        Top = 11
        Width = 52
        Height = 17
        Caption = #44592#52488#44032#44201
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6118749
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PTPriceLabel: TLabel
        Left = 239
        Top = 49
        Width = 50
        Height = 21
        Caption = 'PT 1'#54924
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 382
        Top = 49
        Width = 16
        Height = 21
        Caption = #50896
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object WearPriceLabel: TLabel
        Left = 606
        Top = 49
        Width = 86
        Height = 21
        Caption = #54924#50896#48373' '#54620#45804
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 784
        Top = 49
        Width = 16
        Height = 21
        Caption = #50896
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 582
        Top = 49
        Width = 16
        Height = 21
        Caption = #50896
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LockerPriceLabel: TLabel
        Left = 417
        Top = 49
        Width = 70
        Height = 21
        Caption = #46973#52964' '#54620#45804
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object MembershipPriceLabel: TLabel
        Left = 31
        Top = 49
        Width = 86
        Height = 21
        Caption = #54924#50896#44428' '#54620#45804
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 205
        Top = 49
        Width = 16
        Height = 21
        Caption = #50896
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PriceSaveBtn: TButton
        Left = 828
        Top = 48
        Width = 75
        Height = 25
        Caption = #51200#51109
        TabOrder = 4
        OnClick = PriceSaveBtnClick
      end
      object PTPricePanel: TCurvyPanel
        Left = 301
        Top = 43
        Width = 75
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 1
        object PTPriceEdit: TEdit
          Left = 10
          Top = 6
          Width = 57
          Height = 21
          Alignment = taRightJustify
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
          Text = '0'
        end
      end
      object WearPricePanel: TCurvyPanel
        Left = 703
        Top = 43
        Width = 75
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 3
        object WearPriceEdit: TEdit
          Left = 10
          Top = 6
          Width = 59
          Height = 21
          Alignment = taRightJustify
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
          Text = '0'
        end
      end
      object LockerPricePanel: TCurvyPanel
        Left = 500
        Top = 43
        Width = 75
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 2
        object LockerPriceEdit: TEdit
          Left = 10
          Top = 6
          Width = 58
          Height = 21
          Alignment = taRightJustify
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
          Text = '0'
        end
      end
      object MembershipPricePanel: TCurvyPanel
        Left = 123
        Top = 43
        Width = 75
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 0
        object MembershipPriceEdit: TEdit
          Left = 10
          Top = 6
          Width = 55
          Height = 21
          Alignment = taRightJustify
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
          Text = '0'
        end
      end
    end
    object CurvyPanel2: TCurvyPanel
      Left = 44
      Top = 349
      Width = 933
      Height = 97
      Anchors = []
      BorderColor = 13882323
      TabOrder = 1
      object AccountLabel: TLabel
        Left = 19
        Top = 11
        Width = 52
        Height = 17
        Caption = #44228#51221#44288#47532
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6118749
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object UsernameLabel: TLabel
        Left = 157
        Top = 49
        Width = 77
        Height = 21
        Caption = 'Username'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PasswordLabel: TLabel
        Left = 403
        Top = 49
        Width = 72
        Height = 21
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4934475
        Font.Height = -16
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AccountSaveBtn: TButton
        Left = 656
        Top = 48
        Width = 75
        Height = 25
        Caption = #51200#51109
        TabOrder = 2
        OnClick = AccountSaveBtnClick
      end
      object UsernamePanel: TCurvyPanel
        Left = 247
        Top = 43
        Width = 130
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 0
        object UsernameEdit: TEdit
          Left = 10
          Top = 6
          Width = 111
          Height = 21
          Alignment = taCenter
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
          Text = #54861#44600#46041
        end
      end
      object PasswordPanel: TCurvyPanel
        Left = 493
        Top = 43
        Width = 130
        Height = 33
        BorderColor = clMedGray
        Rounding = 6
        TabOrder = 1
        object PasswordEdit: TEdit
          Left = 10
          Top = 6
          Width = 111
          Height = 21
          Alignment = taCenter
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          Text = '1234'
        end
      end
    end
  end
end
