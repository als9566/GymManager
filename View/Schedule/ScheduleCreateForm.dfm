object fmScheduleCreate: TfmScheduleCreate
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fmScheduleCreate'
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
      Width = 111
      Height = 28
      Caption = 'PT'#51068#51221' '#46321#47197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -20
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DayLabel: TLabel
      Left = 27
      Top = 55
      Width = 5
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -13
      Font.Name = #47569#51008' '#44256#46357
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TimeLabel: TLabel
      Left = 124
      Top = 55
      Width = 5
      Height = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6446686
      Font.Height = -13
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
    object DayEdit: TEdit
      Left = 356
      Top = 451
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'DayEdit'
      Visible = False
    end
    object TimeEdit: TEdit
      Left = 483
      Top = 451
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 2
      Text = 'TimeEdit'
      Visible = False
    end
    object parameter1: TEdit
      Left = 325
      Top = 424
      Width = 73
      Height = 21
      TabOrder = 3
      Text = 'parameter1'
      Visible = False
    end
    object parameter2: TEdit
      Left = 404
      Top = 424
      Width = 73
      Height = 21
      TabOrder = 4
      Text = 'parameter2'
      Visible = False
    end
    object parameter3: TEdit
      Left = 483
      Top = 424
      Width = 73
      Height = 21
      TabOrder = 5
      Text = 'parameter3'
      Visible = False
    end
    object MemberListPanel: TCurvyPanel
      AlignWithMargins = True
      Left = 27
      Top = 88
      Width = 569
      Height = 345
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      BorderColor = clSilver
      TabOrder = 6
      DesignSize = (
        569
        345)
      object Label16: TLabel
        Left = 16
        Top = 13
        Width = 26
        Height = 17
        Caption = #54924#50896
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6446686
        Font.Height = -13
        Font.Name = #47569#51008' '#44256#46357
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CurvyPanel1: TCurvyPanel
        Left = 9
        Top = 36
        Width = 551
        Height = 301
        Anchors = [akLeft, akTop, akRight, akBottom]
        BorderColor = 15329769
        TabOrder = 0
        object MemberListScrollBox: TcxScrollBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 545
          Height = 295
          Align = alClient
          AutoScroll = False
          BorderStyle = cxcbsNone
          HorzScrollBar.Range = 600
          HorzScrollBar.Tracking = True
          HorzScrollBar.Visible = False
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'DevExpressStyle'
          TabOrder = 0
          Transparent = True
          VertScrollBar.Range = 150
          VertScrollBar.Tracking = True
          object MemberListGrid: TStringGrid
            Left = -121
            Top = -39
            Width = 668
            Height = 257
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 16514043
            ColCount = 6
            DefaultColWidth = 120
            DefaultRowHeight = 40
            DefaultDrawing = False
            FixedColor = clBlack
            RowCount = 3
            Options = [goVertLine, goHorzLine, goRangeSelect]
            ScrollBars = ssNone
            TabOrder = 0
            OnDblClick = MemberListGridDblClick
            OnDrawCell = MemberListGridDrawCell
            OnMouseLeave = MemberListGridMouseLeave
            OnMouseMove = MemberListGridMouseMove
            OnMouseWheelDown = MemberListGridMouseWheelDown
            OnMouseWheelUp = MemberListGridMouseWheelUp
            ColWidths = (
              120
              66
              96
              59
              189
              131)
            RowHeights = (
              40
              40
              40)
          end
        end
      end
      object SearchPanel: TCurvyPanel
        Left = 322
        Top = 7
        Width = 233
        Height = 25
        Anchors = [akTop, akRight]
        BorderColor = 14408667
        Color = 16053492
        Rounding = 10
        TabOrder = 1
        object SearchBtn: TImage
          Left = 203
          Top = 4
          Width = 21
          Height = 17
          Cursor = crHandPoint
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000200
            000002000803000000C3A624C80000000373424954080808DBE14FE000000009
            70485973000085CC000085CC01D6D04C170000001974455874536F6674776172
            65007777772E696E6B73636170652E6F72679BEE3C1A00000300504C5445FFFF
            FF00000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000B23
            B7E1000000FF74524E53000102030405060708090A0B0C0D0E0F101112131415
            161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435
            363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455
            565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475
            767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495
            969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5
            B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5
            D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5
            F6F7F8F9FAFBFCFDFEEB08D93500001BF1494441541819EDC10B9CCD75FE3FF0
            D73973C19871BF8CD01FC9644924A25A4B6B922EDA242535B22A76B5DA503BBB
            21DA486CFB5356379B4B5BADB45AD29655145352946E835C93711DE4323366CC
            9CF3FAFF7BEC7FF7B7F5F97CCE393373CEE77CCFF7FB7E3E91E87C0DB22EBD6E
            C46FFEB0E0F5B5EB3FC9DFBEE7C0D15365C1B253470FECD99EFFC9FAB5AF2FF8
            C36F465C776956031F84ABA49E9B7DE7B497D6EDAF60642AF6AF7B69DA9DD9E7
            A64224B866FDC62F7CAF20C8AA0916BCB7707CBF66100928ADDB8859AB0B190D
            85AB678DE896069130DA0D7F6E4B80D115D8F2DCF076104E9772F1B8570F3156
            0EBD3AEEE2140887F2F798FC6E0963ADE4DDC917FB219CA6F1AD2F1EA12D475E
            BCB5318463F87B4CF92840BB021F4DE9E18770809E4F15323E0A9FEA09115F6D
            266D673C6D9FD406225EEADD991764BC05F3EEAC07615FF2358B4BE90CA58BAF
            4986B0AAEBE387E924871FEF0A614BCBDCCD749ECDB92D21622F7DD8AA009D29
            B06A583A444C357AF8389DECF8C38D2062A6D9634574BAA2C79A41C444AB274B
            99084A9F6C051175EDE697333A02270AB66E58BDEC85A7674EBAF78EA177DC3B
            69E6532F2C5BBD614BC18900A3A37C7E3B88A8EAB428C0EA39F6C1FCDC81BDBA
            B4CDAC0DB3DA4DDB76E9353077FE07C7583D81459D20A2A6FBB220ABECCCD665
            33465CD61895D3F8B21133966D3DC32A0B2EEB0E11153F59C9AA399C3777FCB5
            ED925175C9EDAE1D3F37EF30AB66E54F20AAEDCA3C56C59639373446B434BE61
            CE165645DE9510D572C54656DEEEE7869E85683B6BE873BB59791BAF80A8B2E6
            AFB0B2F6BF38A23562A5F58817F7B3B25E69015125C9E34EB1528E2E19DD1EB1
            D67EF492A3AC9453E393212AEFB2CF5909C135633BFB6087AFF3D8354156C217
            3F86A8A4C6F3838CDCB609AD6057AB09DB58090B9B4054827FE43146ECE8933D
            100F3D9E3CCA887DFB0B3F44A42EFC90913AF3F781A98897D4814BCF30521B2E
            828848DDD9158CD087A31B22BE1A8EFE90110A3C591F22BCA10718993D53B3E0
            045953F7303287864184D17E35235232AF8F0F4EE1EB33AF841159DB1122841A
            8F9C61244E3EDA14CED2F4D1938C44F91F6A41989CFB0923716C7203384F83C9
            C71889CFCF83D0BBF9242370383703CE94917B981128BA0D42A3E6338C40C13D
            6970AEB47B0A1881E7D2207E28EB3386B76B642A9C2D75E42E86F7657B88EF1B
            7A8A616DCD4986F325E76C6558C5C320FE4BAD3F33ACCF06FB9118FC833F6358
            F3D320FEADFD170C277F800F89C337209FE1E47780F89761450CA3E8FE142496
            94FB8B1846F17088FF276D01C359D21289A7E51286B3B03644C7CD0C63477F24
            A6FE3B18C6E68EF0BA11250CAD74724D24AA9A934B195AC908785ACA7C86B1A2
            2D1259DB150C637E0ABCABF69B0C6DEF2024BA417B19DA9BB5E1550DD733A4F2
            99E9487CE933CB19D2FA86F0A6965B18D2DA8E70878E6B19D29696F0A21FED65
            284772E01E394718CADE1FC17B7A1E652879CDE126CDF318CAD19EF09AAB8A19
            42705A12DC25695A9021145F056FB9AD9C211CEE07F7E977982194DF062F1917
            64086BCE821B9DB5862104C7C1337C331842E0E124B853D2C3018630C3076F48
            5EC0100E65C3BDB20F318405C9F0825ACB19C23BCDE066CDDE6108CB6BC1FDEA
            BF47B3C0434970B7A48702347BAF3EDCAEC917343BF853B8DF4F0FD2EC8B2670
            B78C8D345B95092FC85C45B38D1970B3D4B76936D30F6FF0CFA4D9DBA9702FFF
            621A05C7C23BC60669B4D80FD79A43A3F25BE125B796D3680EDC6A128D8AFBC3
            5BFA17D36812DC69148D8EF480D7F43842A35170A341019A7CD31EDED3FE1B9A
            0406C17DFA94D224BF05BCA8453E4D4AFBC06DBA9CA0C9FB0DE04D0DDEA7C989
            2E7097B60769F27A1ABC2AED759A1C6C0B37C9DC499305C9F0AEE40534D99909
            F7A8FB294D66F8E065BE1934F9B42EDCA2E6BB34088E85D78D0DD2E0DD9A7087
            A45769320A62144D5E4D822BFC9E269320804934F93DDC203B40833910DF9943
            834036125FB3433458EC87F88E7F310D0E3543A24B7A8706AB5221FE2575150D
            DE4942829B42838F3320FE2DE3631A4C4162FB69807ADB9B40FCAF26DBA917F8
            291259E641EA1D6803F1DFDA1CA0DEC14C242EFF2AEA9DE80CF17D9D4F506F95
            1F09EB41EA95F686F8A1DEA5D47B1089AA4F805A818110AA81016A05FA203135
            3D40BD91103A23A977A0291291FF2DEA4D82D09B44BDB7FC484013A9B710C264
            21F52622F1F4AEA0567E1A84495A3EB52A7A23D134D94FADE20E10661D8AA9B5
            BF0912CC0AEA0D87086538F55620B10CA1DEF310A13D4FBD214824750E506B4B
            6D88D06A6FA1D6813A48208F53ABA42344381D4BA8F5381247E70A6ADD0111DE
            1DD4AAE88C44E1FB805A2F4044E2056A7DE04382B8835A5BD3212291BE955A77
            2031343C429DD39D2022D3E934758E344442984BADBB20227517B5E62211F40C
            52E72588C8BD449D604F385FD226EA6CCB80885CC636EA6C4A82E38DA14EC585
            109571610575C6C0E99A9DA0CE2C88CA99459D13CDE0702F51677F1D88CAA9B3
            9F3A2FC1D92EA7D61088CA1A42ADCBE164A95BA8B30AA2F25651674B2A1CECB7
            D4293B0FA2F2CE2BA3CE6FE15C4D8BA9330DA22AA651A7B8291C6B0675BE4E83
            A88AB4AFA933034ED5E01475064054CD00EA9C6A00879A429DE51055B59C3A53
            E04C75BEA546492B88AA6A55428D6FEBC09172A9F30044D53D409D5C3851DA61
            6A7C950A5175A95F51E3701A1CE81EEAF485A88EBED4B907CE935A408D4510D5
            B3881A05A9709CBBA8517C1644F59C554C8DBBE034C93BA9310BA2BA66516367
            321CE6366A943587A8AEE665D4B80DCEE2DF4C8DA721AAEF696A6CF6C3510651
            A3BC3544F5B52EA7C62038CA266A2C84888685D4D80427B99A1A812C8868C80A
            50E36A38C83A6ABC0C111D2F53631D9CE3726A043B414447A720352E87632CA5
            C66B10D1F21A3596C2291A9DA146778868E94E8D338DE0107753632544F4ACA4
            C6DD70880FA9D10B227A7A51E34338431635F220A2298F1A597084A9D4E80711
            4DFDA831154EE0DB43D50688E8DA40D51E1F1CA03735064244D7406AF48603CC
            A3EA700A4474A51CA66A1EE2AFD649AA9E8088B627A83A590B7137841A174144
            DB45D41882B87B83AACD10D1B799AA37106F991554E542445F2E55159988B3B1
            54055A40445F8B00556311679BA87A1B2216DEA66A13E2EB7C6AE440C4420E35
            CE475CCDA4AA281D2216D28BA89A8978F2EFA3EA2F10B1F117AAF6F91147D9D4
            C886888D6C6A64238E665355E087880D7F0155B311473BA87A1422561EA56A07
            E2E75C6A748088950ED43817713386AA8F2162E763AAC6206EDEA4EA1E88D8B9
            87AA1588975AA7A9083685889DA6412A4ED7429C5C45D56710B1F4195557214E
            6653350B22966651351B71B283AA0110B13480AA1D888F365455D48588A5BA15
            54B5415CE450F511446C7D44550EE2E259AAA643C4D674AA9E455CE453750544
            6C5D41553EE2A141908AB23488D84A2BA322D80071700D556B21626D2D55D720
            0EA653351922D62653351D719047552F8858EB45551EECAB514A45492A44ACA5
            9650515A03D65D42D54A88D85B49D525B0EED754E542C45E2E55BF8675F3A8EA
            0E117BDDA99A07EB365271220922F6924E50B111B6259550B11CC286E5549424
            C1B22CAA2642D83091AA2C5876235583216C184CD58DB0EC21AA2E80B0E102AA
            1E82654BA908A641D89016A462292CDB49C51E083BF650B11376A507A9580961
            C74A2A82E9B0EA22AA6643D8319BAA8B60D520AAEE86B0E36EAA06C1AAF15465
            43D8914DD57858F527AA5A42D8D192AA3FC1AA7F5051EC83B0C3574CC53F6055
            3E159B206CD944453EAC2AA66211842D8BA828864D4DA89A0261CB14AA9AC0A2
            EE54DD0261CB2D5475874583A9EA0A614B57AA06C3A271546540D89241D53858
            F40815FB20ECD947C523B0682E15EF43D8F33E157361D1AB54AC80B0E74D2A5E
            85456BA97805C29E57A8580B8BF2A9980761CF3C2AF261D1412A1E87B0E7712A
            0EC2A2722A1E86B0E7612ACA614F5DAA7221ECF90D557561CD39548D86B06734
            55E7C09A6E54E540D89343553758D38BAAEB21ECB99EAA5EB0269BAABE10F6F4
            A52A1BD65C43550F087B2EA6EA1A587303551D20ECE940D50DB0E616AACE86B0
            E76CAA6E8135B753551FC29EFA54DD0E6B4652950C614F32552361CD182A4A21
            6C3A4DC51858731F158510361552711FAC9940C52E089B76513101D64CA06217
            844DBBA898006BEEA3A210C2A6422AEE873563A82885B0E93415BF863523A94A
            86B02799AA5FC29ADBA9AA0F614F7DAAEE8035B7507536843D675395036B6EA0
            AA03843D1DA8BA19D65C43550F087B2EA6EA7A58934D555F087BFA527535ACE9
            45D5F510F65C4F5536ACE946550E843D39545D066BCEA16A34843DA3A96A0F6B
            EA52950B61CF6FA86A0C7BCAA97818C29E87A90826C19E83543C0E61CFE3541C
            8545F954CC83B0671E155B61D15A2A5E81B0E7152ADE8345AF52B102C29E37A9
            580A8BE652F13E843DEF53F16758F40815FB20ECD947C57458348EAA0C085B32
            A81A078B0653D515C296AE54DD088BBA53750B842DB750D50D1635A16A0A842D
            53A86A049B8AA9580461CB222A8A60553E159B206CD944C597B0EA1F5414FB20
            ECF01553B11C56FD89AA961076B4A46A36AC1A4F5536841DD9548D855583A8BA
            1BC28EBBA91A08AB2EA26A36841DB3A9EA02ABD28354AC84B06325158134D8B5
            938A3D1076ECA1621B2C5B4A45300DC286B420154B60D943545D0061C305543D
            08CB6EA46A30840D83A9BA1E9665513511C28689549D03CB924AA8580E61C372
            2A8A7CB06D2315279220622FE90415EB61DD3CAABA43C45E77AA9E8575BFA62A
            1722F672A9BA1BD65D42D54A88D85B4955375857A3948A925488584B2DA1A238
            19F6E551D50B22D67A51F50EE2603A559321626D3255531107D750B51622D6D6
            527515E2A041908AB23488D84A2BA322580FF1904FD51510B17505555F222E9E
            A56A3A446C4DA7EA19C4450E551F41C4D64754E5202EDA505551172296EA5650
            D506F1B183AA0110B13480AAED8893D954CD8288A559543D8138B98AAACF2062
            E933AAFA234E6A9DA622D81422769A06A928A985787993AA7B2062E71EAADE40
            DC8CA1EA6388D8F998AA5F216ECEA546078858E9408DB6889F1D543D0A112B8F
            52B51D71349BAA023F446CF80BA87A0271944D8D6C88D8C8A6C6E58823FF3EAA
            FE02111B7FA1EA1B3FE269265545E910B1905E44D52388ABF3A99103110B39D4
            688FF8DA44D5DB10B1F036551B116763A90AB48088BE1601AAC620CE322BA8CA
            8588BE5CAACA1B23DEDEA06A3344F46DA66A39E26E08352E8288B68BA87123E2
            AED649AA9E8088B627A8FAB626E26F1E55875320A22BE53055CFC2017A536320
            44740DA4C6657000DF1EAA364044D706AA76F9E00453A9D10F229AFA51630A1C
            218B1A7910D194478DB670860FA9D10B227A7A51631D1CE26E6AAC84889E95D4
            1805876874861ADD21A2A53B35CAEAC3299652E3358868798D1A7F83635C4E8D
            602788E8E814A4C6A5708E75D47819223A5EA6C63B7090ABA911C8828886AC00
            35FAC2493651632144342CA4C67A38CA206A94B786A8BED6E5D4B8168EE2DF4C
            8DA721AAEF696A7C0A87B98D1A65CD21AAAB79193506C36192775263164475CD
            A2C6563F9CE62E6A149F05513D67155363181C27B5801A8B20AA6711357627C3
            79EEA14E5F88EAE84B9D5170A0B4C3D4F82A15A2EA52BFA2C6BE1A70A25CEA3C
            0051750F50E75E38529D6FA951D20AA2AA5A9550A3300DCE34853ACB21AA6A39
            757E07876A708A3A0320AA6600758ED78153CDA0CED769105591F635757E0FC7
            6A5A4C9D691055318D3AC71BC2B97E4B9DB2F3202AEFBC32EADC0D074BD9429D
            551095B78A3A9F24C1C9FA506B0844650DA14EB0079CED45EAECAF03513975F6
            53672E1C2EF33875664154CE2CEA1C6D08A7FB15752A2E84A88C0B2BA873271C
            2FE913EA6CCB80885CC636EAACF7C1F92E0E52E72588C8FD953A810B91089EA1
            D65D10911A45AD3F21213428A4CEE94E1091E97C9A3A87EA21310CA7D6D67488
            48646CA3560E1284EF3D6ABD001189BF526B2D12C6F9E5D4BA0322BC51D42AEF
            88C4F118B54A3A4284D3F934B51E4302492FA0D696DA10A1656CA3D6BE0C2492
            1BA9F73C44687FA5DE4D482CCBA9371C229451D45B8A04D3702FB58A3B409875
            3E4DADAFEB23D15C5A4EADFC3408938C6DD43AD3038927977A0B214C16516F1C
            1290EF4DEA4D82D09B46BDE53E24A2C6FBA8371242670CF5BE6980C4D4AB825A
            818110AA9B83D42AEF894435817AA5BD217EA86F19F5EE43C2F2BF45BD139D21
            BEAFEB29EABDEE43E26A72807A07DA40FCB7B687A8B7B72112599F00F5B63781
            F85F99BBA8577E2912DB8334F83803E2DFEA7C4A83DF20C1F957D360552AC4BF
            D47887066FF890E8320FD260B11FE23BFEBFD1A0A011125FDF000DE6407CE749
            1A54FC186EF07B9A4C82001EA4C96FE10A49AFD26414C4289ACC834BD47C9706
            C171F0BA71411A2C4F865BD4FD9426337DF032DF4C9ABC5F0BEE91B99326CF27
            C3BB929FA7497E7DB849DB833479230D5E95F6064DBE690177E9728226EB1BC2
            9B1AAEA7C9D1F6709B3EA534D97236BCE8EC2D3429EE09F71914A0494107784F
            87029A945F0D371A45A36397C26B2E3D46A36170A749342A19006F195042A3FB
            E156736854F17378C9CF2B68F447B8967F31CD7E07EFF81DCD5EF0C1BD52DFA6
            D9EC647843F26C9AAD48819B656CA4595E0B78418B3C9A7D541BEED6E40B9A15
            F687FBF52F6408E3E176F5DFA359707A32DC2D797A90A1046F83DBD55ACE10F2
            5AC0CD5AE4318C8A1BE176C90B1842617FB857FF428675E65AB89D6F0643084E
            4F863B254F0F3202A5D970BD71418690D7026ED4228F9129EE05D7BBAD9C2114
            F687FBF42F64A44E5E0CD7BBAA982104A727C35D92A70719B96FBBC0F57A1E65
            28792DE0262DF25829851DE07A3FDACB508EE4C03D728EB0920E9C0BD76BB985
            21ADED0877E8B89695F74D2BB85EC3F50CA97C663A125FFACC7256C5AEE670BD
            DA6F32B4BD8390E806ED65156D6D0AD74B99CF3056B445226BBB8261FC299F26
            9F3784FB8D286168A5936B2251D59C5CCAD04E0C42B36D34D95817EED77133C3
            D8D11F89A9FF0E86F1E9B9005A7E4D9375E970BFB4050C67494B249E964B18CE
            9F6BE13B6D0A68F24E2D78C0B0228651747F0A124BCAFD450CA37818FEBFF30E
            D164452A3CA0FD170C277F800F89C337209FE16CED88FF38FF284D9626C3036A
            FD99617D36D88FC4E0BFE93386B5281DFFE5A2E33459E487170C3DC5B0B6E624
            C3F9926FDFCAB0CA46E3FB2E29A2C97C1FBC20EB3386B76B642A9CADC6A8DD0C
            6F7737FC509FD334790A9E50F31946A0E09E343857ED7BF73102CBEB43D5BF8C
            268FC11B6E3EC9081CCECD8033D5FD5D21235076BF0F3A3F2BA7C9C3F086733F
            61248E4D6E00E769F8FBE38C44DE79301812A0C9EFE00D351E39C3489C7CB429
            9CA5D91F8A1889E3237D301A1EA4C9AFE111ED57332225F3FAF8E014FE9F2E2C
            654496344328BFA4D14878C5D0038CCC9EA9597082F68FEC65640AAE4318E368
            12CC8157D49D5DC1087D38BA21E2ABD1AF363042C1397510D6449A540C86675C
            F8212375E6EF0353112F356E58768691FAF21244E2119A9C1900CFF08F3CC688
            1D7DB207E2A1E753C718B1D289A988CC2C9A945E01EF683C3FC8C86D9BD00A76
            B59AB88D95B0260B117B9626253F81875CF6392B21B8666C671FECF0751EBB26
            C84AF8F64E1F22E77F9E26A77AC04392C79D62A51C5D32BA3D62ADFDE8254759
            29C58FD447A524BD42936F2F8497347F8595B5FFC511AD112BAD47BCB89F9554
            F644535456CA729A1CE9084FB962232B6FF77343CF42B49D35F4B9DDACB48A79
            FF07555063254D0EB683B75C99C7AAD832E786C68896C637CCD9C22A08BE9C85
            AA495B4393BDADE1313F59C9AA399C3777FCB5ED925175C9EDAE1D3F37EF30AB
            E61F9D516519EB69B2AB05BCA6FBB220ABECCCD66533465CD61895D3F8B21133
            966D3DC3AA7BF7525447BD4D34F9AA293CA7D3A200ABE7D807F37307F6EAD236
            B336CC6A376DDBA5D7C0DCF91F1C63356DB802D5D4289F265F3484F7B49B5FCE
            E8089C28D8BA61F5B2179E9E39E9DE3B86DE71EFA4994FBDB06CF5862D052702
            8C922FAF47F5656EA3C9C775E141AD9E2C6522A8F87B5F1FA2A1E56E9A7C900E
            2F6AF658119DEED0D496889636053479B7163CA9D1C3C7E964EB86A6228AB20E
            D164450D7853FAB055013A53C99FBB20CACE3F4A9365C9F0AA96B99BE93CDBC7
            D647F4753D4E939793E05D5D1F3F4C27092CBFD28798B8A488260B7CF0B0E46B
            1697D221764C6B8598E9534293A7E16DF5EECC0B32EE3E9FDC09317565194DFE
            08AF6B33693BE328B8FEFEB688B99F95D3642A44CFA70A191715ABEF6E0E2B6E
            0ED0E40108F87B4CF92840BB4A5FFF792358333C48937B21BED3F8D6178FD096
            938B6FCE8055BFA4D128887FF1F798FC6E09636DC7F3BFB82009D68DA3497018
            C47FA45C3CEED5438C9192B5D3AF6B82389948938A9B20BEA7DDF0E7B604185D
            7B168DE99682789A4693F2EB207E28ADDB8859AB0B190D87DFFFE3A0E688BF59
            3429EB07A1D5ACDFF885EF15045925E53B573E75DFC00B32E014CFD0A4A43784
            59EAB9D9774E7B69DDFE0A46E6E4A625334666B74986C3F89FA7C9A99E1061F9
            EAB7ED71F5B0B1D39E59B272CDFA4D9B7716149E2C0B141DDAF9F9BAB796BEF0
            CC630FDD3FFAF641FD7FDCA5119C2A69314D8E5F08E17E29AFD1E4484708F7AB
            B1922607B320DC2F6D0D4D0A5A43B85FC67A9AEC6E01E17EF53EA1C9579910EE
            D7E84B9A7CD908C2FD32B7D1E4937A10EED772374D3E488770BF360534599306
            E17E590769F2CF1A10EE77FE519ABC9602E17E5D8FD364711284FB5D728A260B
            7D10EED7A78426CF4078C09565349905E1013F2BA7C934080FB839409309101E
            707B9026E3203CE01734FA0584078CA349F076080F984093C0CD101E308D26E5
            3F83F080593429BB12C2039EA149491F08F7F33D4F93A24B20DC2F69314D8E77
            8570BF94D76872F47C08F7ABB1922687B220DC2F6D0D4D0ADA40B85FC67A9AEC
            6E09E17EF53EA1C9B64C08F76BF4254DF21B41B85FE6369A6CAA07E17E2D77D3
            647D0684FBB529A0C99A3408F7CB3A4893953520DCEFFC2334599E02E17E5D8F
            D3E4952408F7EB798A26CFFB21DCAF77094D9EF541B8DF956534791CC203AE2B
            A7C923101E7053802613213CE0F6204DC64378C02F68F44B080F184B93E07008
            0F984093C010080F984693F2EB213CE07F6852D61FC2039EA6C9E9CB21DCCFB7
            9026459742B85FD2629A9CB808C2FD525EA3C9D14E10EE57E39F3439741E84FB
            D57A9726FBCE8170BFF40F68F2F5D910EE57EF139A6C6F06E17E8DBEA4497E63
            08F7CBFC8A269BEA43B85F8BDD34F93003C2FD5A17D0646D1A84FB651DA4C95B
            3520DCAFE3119ABC9E02E17E5D8FD3E46F4910EED7F3144DFEE28770BFDE2534
            99EB8370BF7E65347902C203AE2BA7C974080FB8A982260F4278C0ED419ADC07
            E101A368341AC203C6D224F873080F788026815B203C602A4DCA074278C0FFD0
            A4EC2A080F789A26A72F87703FDF429A145D0AE17E492FD3E4443708F74B5946
            93631740B85F8D7FD2E4707B08F7ABF52E4DF69D03E17EE91FD064CFD910EE57
            EF639A6C6F06E17E0DBFA4C9E6C610EE97F9154D3EAD0FE17E2D76D3E4A33A10
            EED77A2F4DF26A43B85FBB833479BB2684FB753C42937FA440B8DF85C769B218
            C2037A9EA2C9AD101ED0BB8406871A407840BF321ACC85F082EBCAA977CA07E1
            05375550AF0D84270C0B52EB6710DE308A5AE3203CE25EEA5C05E1150F50A321
            84674CA562078487FC913FF45B082F799ADFB72E09C24B7C0BF8DF8ACE81F016
            FFFD65FC8F03574178CEF99FF25F82CFD483F0A0D441D3DF3ABA7BC903DDF07D
            FF1701B39BE318174A030000000049454E44AE426082}
          Stretch = True
          OnClick = SearchBtnClick
        end
        object SearchEdit: TEdit
          Left = 14
          Top = 7
          Width = 184
          Height = 13
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = 16053492
          TabOrder = 0
          TextHint = #54924#50896#44160#49353
          OnKeyPress = SearchEditKeyPress
        end
      end
    end
  end
end
