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
        object Image1: TImage
          Left = 61
          Top = 13
          Width = 75
          Height = 75
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000200
            000002000806000000F478D4FA0000000473424954080808087C086488000000
            097048597300000EC400000EC401952B0E1B0000001974455874536F66747761
            7265007777772E696E6B73636170652E6F72679BEE3C1A000020004944415478
            9CEDDD79B45F657DEFF1F7494E0632410612C31850664218A540828A6150A08A
            1541B4DAD6A5A55AAEB55DBD5C5DEBBA5CCBFE61577B07875A07B44AB5B558B8
            166E0565120C73404208532F24841048244048086438C9FDE33969C67372CEEF
            ECBDBF7B3FFBFD5AEBBB1241979F75CEEFB79FEF7E9E673F1B24499224499224
            4992244992244992244992244992244992244992244992244992244992244992
            2449922449922449922449922449922449922449922449922449922449922449
            9224499224499224499224499224499224499224499224499224499224499224
            49922449922449922449922449922449922449922449F5D2151D4052A9C60293
            8129C030609FDE7F3EB2F7DF01AC0536F6FEFDD5DEBFBF0CAC02D655965452A5
            6C00A4E69A08BC1598011CD2FBE70CE000D2A03F19183DC4FF8F3748CDC04BC0
            5260496F3DDBFBE793A4064252C3D80048F5370C3812380E9805CCECFDFB8191
            A17A6D0116038F008B7AFF7C10783A3294A43DB30190EA670C700A301B380D38
            9D74B7DF242B807B80BB7BFF7C00581F9A48D20E6C00A47A3814B810B8009803
            8C8A8D53B83780BB805B7AEBC1D8389224C518019C077C07788E3495DEA67A06
            F8DFA4598E6143FC594A92546BC381B9A441FF25E207E1BAD4F3C0D78033B119
            902465E408E06F48EBE2D1836DDD6B31F045E0A08E7ED29224051B0D7C04F815
            B099F881B569D503DC047C88B45C224952AD4D03BE8C53FC45D632E0BF019306
            F17B9024A912470357016F123F60E65A6B816F02870FF077224952698E07FE0D
            A7F9ABAC1EE047A4BD15922455EA28E06AD260143D20B6B57A806BB011902455
            6006E9EED381BF3EB509F81E30BDEF5F9B24499D19037C89F476BCE801CFDA7D
            AD05BE028CDBFDAF5092A481EB023E463AAC267A80B30656CF021FC6A3CE2549
            1D3A9A747E7DF48066755637036FDBE5B72A49521F460057E2237D39D43AD2D2
            CD482449EAC769C0A3C40F5C56B1B5003819499276D24DBA53DC44FC60659553
            1B7B7FC7C3912489F468DF3CE20728AB9ABA07F7064852EB7D025843FCA06455
            5BAB818F22496A9DD1A4B3FBA307222BB6AE06F64292D40A0702F7133FF858F5
            A8F9A465204952C6CEC557F55ABBD64AE0DD4892B2F429D24EF0E8C1C6AA676D
            023E8324291B5DA4C7BFA20718AB19F555601892A4461B03FC8CF841C56A565D
            47FAEC48921A6832701FF18389D5CCBA1B98889429DF96A55C4D037E091C171D
            448DB608381B78213A8854341B00E5683AE94D70C7440751169E203501CBA283
            4845B201506E0E056E010E890EA2AC3C03CC05164707918A6203A09C1C00DC89
            83BFCAF11C300778363A8854041F75512EA692A6FD1DFC559603499FB1E9D141
            A422D80028075380DB8023A383287B8701BF203D6122359A0D809A6E02E982EC
            863F556526F073607C741069286C00D46423809F0227460751EBBC1DB806E88E
            0E22756A7874006908BE015C1A1D42ADF536D27E801BA283489DB00150537D01
            B8323A845AEF24E035E0DEE82092D40617039B893F2AD6B2B6003DC0FB911AC6
            7300D4344792CEF79F101D44DACE5AE054E0B1E820D240D900A849C69306FFA3
            A28348BBF1246973E06BD141A481F02900354517F0031CFC555F47003FC41B2B
            35849B00D5149F07FE343A84B4074702AFE2A64035809DAA9AE024E01ED273FF
            52DD6D04CE001E880E22F5C706407537167808383C3A8834088F032703EBA283
            487D71094075F72DD26B58A526D917D81BB8313A88D417670054671F00AE8D0E
            2175680B703E3601AA291B00D5D524D233D5D3A2834843B01C381A581D1D44DA
            994B00AAAB6F02B3A3434843349EB414F0EFD141A49D3903A03A7A17702B7E3E
            9587CDC099C05DD141A4ED798155DD8C011E01DE1A1D442AD022D26BAB374407
            91B672094075F3457CB18AF233157813F8757410692B6700542707024F906601
            A4DCAC239D14F85C7410099C0150BD5C051C1F1D422AC9086022F06FD1412470
            0640F5713A300F3F93CADB66D26B83E74707917C1BA0EAA00BF81A0EFECADF30
            E06FA343486003A07AB888F4C21FA90DDE413A21500AE51D97A20D037E031C17
            1D44AAD043A497056D890EA2F6720640D12EC1C15FED7322CE02289833008A34
            1C7894F46894D436CE02289433008A74310EFE6AAF13810BA343A8BD9C0150A4
            FB80B747879002CD03E64487503B3903A028EFC4C15F9A4D3A1740AA9C0D80A2
            FC457400A9263E1B1D40EDE41280221C497A3B9A0DA8041B496FBFF41D01AA94
            176045F863FCEC495B8D003E1D1D42EDE30C80AA360A58064C890E22D5C80AD2
            DB30374607517B7817A6AA7D10077F6967D380F7448750BBD800A86A9F8C0E20
            D5D427A203A85D5C0250950E039EC4CF9DB43B9B80838017A283A81D9C015095
            2EC5C15FEA4B37F091E8106A0F1B0055E992E80052CD7D283A80DAC3BB3155E5
            5860617408A901DE0A3C131D42F973064055F1CE461A980F4407503BD800A82A
            1F8C0E203584DF1555C2250055E150E0E9E81052436C211D0AF47C7410E5CD19
            0055C1034EA481EB02CE890EA1FCD900A80AE74507901AE6DCE800CA9F4B002A
            DB28E025605C7410A9415E01F6057AA283285FCE00A86C7370F097066B227072
            7408E5CD0640653B333A80D45073A303286F36002ADBECE80052439D1E1D4079
            730F80CAD44D5ACB7409401ABC5781C9C0E6E820CA9333002AD32C1CFCA54EED
            031C191D42F9B20150999CC29486E6B4E800CA970D80CA74627400A9E17E273A
            80F26503A032CD8A0E2035DCCCE800CA979B0055966E600D303A3A88D460AF03
            137023A04AE00C80CA72040EFED2508D05664487509E6C005416A72EA5621C1B
            1D4079B20150598E880E2065C20640A5B00150590E890E2065C2EF924A6103A0
            B2CC880E206562467400E5C9064065F1AE452AC68CE800CA938F01AA0C238037
            80E1D141A40C6C00F6C24701553067005486FD70F0978A3212981E1D42F9B101
            5019A646079032332D3A80F26303A0324C890E206566727400E5C7064065F062
            2515CBEF940A6703A03238032015CB064085B30150192645079032E3774A85B3
            015019C64607903233213A80F26303A0328C8C0E206566447400E5C7064065B0
            01908A352A3A80F26303A032D80048C5B20150E16C0054061B00A9587EA75438
            1B0095A13B3A809419BF532A9C0D80CAB0213A809419BF532A9C0D80CAE0C54A
            2A96DF2915CE064065F06225156B7D7400E5C7064065B001908A6503A0C2D900
            A80C5EACA462D954AB7036002AC3EAE80052665E8D0EA0FCD800A80CABA20348
            99F13BA5C2D900A80C2F45079032E3774A85B3015019BC5B918AE5774A85B301
            5019BC5B918AE5774A85B30150195644079032B3323A80F2D3151D40D95A0B8C
            8D0E2165600D30213A84F2E30C80CAF26C740029134BA203284F36002ACB92E8
            005226164707509E6C0054162F5A5231964407509E6C0054161B00A9187E9754
            0A1B0095E5D1E8005226164607509E6C00549647A2034899B00150297C0C5065
            5A09EC1B1D426AB01781E9D121942767005426EF5CA4A1F13BA4D2D800A84C2E
            0348436303A0D2D800A84CF74707901AEEBEE800CA970D80CA74577400A9E1EE
            8E0EA07CD900A84C4B81E7A243480DB50458161D42F9B20150D9BC83913A332F
            3A80F26603A0B2B90C2075C6EF8E4A6503A0B2DD161D406AA8DBA303286F1E04
            A42A3C0B1C141D426A90C5C0A1D1219437670054855F4407901AE6C6E800CA9F
            0D80AAE0C54C1A9C9BA203287F2E01A80AE38155C088E82052036C0026036BA3
            83286FCE00A80A6B7043933450B7E2E0AF0AD800A82AFF121D406A889F440750
            3BB804A0AAEC03AC00464607916A6C3D300D581D1D44F9730640557915B8253A
            84547337E1E0AF8AD800A84AD74407906ACEEF882AE31280AA340E584E7A2A40
            D28ED602D37103A02AE20C80AAB416EF70A4BEFC18077F55C8064055FB6E7400
            A9A6FC6EA8522E0128C26F80E3A3434835F208302B3A84DAC5190045F87E7400
            A966BE1D1D40EDE30C80228C079692CE0690DAEE15D2DB325DFF57A59C015084
            35B8DE296DF52D1CFC15C0190045D91F78064F0654BB6D040E0596450751FB38
            03A028CFE32381D28F70F057106700146916E989003F876AA3CDA4EFC0A3D141
            D44ECE0028D202E067D121A420FF8A83BF0279E7A568C7909E81B619559BF400
            3381C7A383A8BDBCE82ADA22E0A7D121A48AFD330EFE0AE60C80EAE0705223D0
            1D1D44AA400F69E6EBC9E8206A37670054074F013F880E2155E4BB38F8AB069C
            01505D4C2535027B4707914AF42A7018F052741069787400A9D7EBA4A9D1B3A3
            834825FA3C705B7408099C0150BD8C041692F60448B97902388E74FA9F14CE3D
            00AA930DC05F4687904AF2E738F8AB466C005437D703D74587900AF613E0C6E8
            10D2F65C02501DBD05780C98181D442AC0CBC0D1C08AE820D2F6DC04A83A5A4B
            7A47FA85D141A4027C0698171D42DA993300AAAB2ED26EE97706E79086E256D2
            932D5BA283483BB301509D1D023C0C4C880E22756035703CB0243887B45B6E02
            549D2D06AE880E2175E8D338F8ABC6DC03A0BA5B001C417A739AD41457035F8E
            0E21F5C7250035C1DEA446E0E0E820D2002C264DFDBF161D44EA8F4B006A82D5
            C065A48382A43A5B0F5C8A83BF1AC0250035C573A44703DF1B1D44EAC79F0037
            44879006C206404DF2006919E084E820D26EFC23F0DFA3434803E51E0035CD68
            D2A12A27450791B6F330703AF046741069A06C00D44433807B8169C139248017
            805349CB545263B809504DB404381F783D3887B40E783F0EFE6A201B0035D583
            C025404F7410B5560FE9E994FBA383489D7013A09AEC3F8035C0B9D141D44A7F
            463AF0476A241B0035DDBDC05EC0ECE8206A95BF02BE121D421A0A1B00E5E016
            D20B834E8B0EA256F83AF05FA34348436503A05CDC0CEC878F07AA5C3F042E8F
            0E2149DAD170E027A477AF5B56D1F54F78D32449B5351CF83EF183859557FD08
            E846CA88DDAC72B305B81E98483A9C451AAA6F019FC4474E95191B00E5EA17C0
            58D2F1AC52A7FE1AF81CA9B1942435C81780CDC44F215BCDAACDC05F22496AB4
            0F928E6C8D1E54AC66D49BC087912465E1346025F1838B55EF5A05CC41929495
            C381A7881F64AC7AD6E3C0DB902465693C702DF1838D55AFBA1ED8074952D6BA
            802B814DC40F3C566C6D02BE846F4695A456390F7889F841C88AA995C05C2449
            AD340DF839F18391556D6D7D778424A9C5BA80CF921EFF8A1E98AC72EB4DD2F2
            8F53FE92A4FF7402B088F841CA2AA71602B3902469374690EE109D0DC8A73600
            5F01462149D21E1C0BDC43FCE0650DADEE028E4192A44118065C01BC42FC4066
            0DAE5E063E8D6BFD92A42198047C15D848FCC066F55F3DC0D5C0D4DDFE262549
            EAC091C08DC40F72D6EEEB56E0B83E7F7B92240DD105C083C40F7856AAF9C07B
            FBFD8D499254A0B9C043C40F806DAD47818B49E738489254A961C0A5C06F881F
            10DB520F92067E37F849926A61367003B099F84132C79A075C8877FC92A49A9A
            097C0F789DF841B3E9B516B80A9FE5972435C804E053A44D6AD10369D36A11E9
            44C64983FEA94B9254232702DF005E247E70AD6B2D07BE467A27832449591946
            DA2BF0556C06B600AB4807F75C08740FE1E72A6990DC4C23C5E906DE019C07BC
            87F6AC732F046EEAAD3B48A7F749AA980D80541F07929A8173803380E9B1710A
            B39CB483FF66D2A0BF2C368E24B00190EAEC5052237006703AE928E211A189F6
            6C23F03870776FCD0316872692B45B360052738C048E263D6638139805BC9534
            7330B2E22C1B80A5C0D3C002D2B4FE42D2E0BFA1E22C923A60032035DF70603F
            E01060067000300598BC530D07F6266D441C018CEBFDDFAF25DDB96F065693D6
            E4576D572FF5FEB98C7437BF0478BEF7BF2F4992244992244992244992244992
            2449922449922449922449922449922449922449922449922449922449922449
            9224499224499224499224499224499224C5EA8A0E2069482602937AFFDCFEEF
            7BF7FEFB31C0A83DFC7D3DB06E0F7F5F0DBC0CBCB25D6DFDCF921AC80640AA9F
            11C07EC081C041C001BD7530F0166032DB06FA3AD8DA08AC025E009602CF01CB
            7AFF5CDAFBCF37460594B42B1B0029C628E008E048E0A8DE3A9834E0BF051816
            17AD149B811749CDC012E071E089DE7A9234DB20A942360052B9C600338163D8
            71B09F010C8F8B552B3DC062766C0A16010BD9B60421A96036005271BA4977F5
            276D57A70023234335580F6976E0C1ED6A3EF06664282917360052E78E004E27
            0DF22703B370B02FDB7A6001A911980FDC053C159A486A281B0069E0F603CE00
            E602E792D6EC15EF45E0D7C02DA48660516C1CA9196C00A4BE4D07669306FC73
            48EBF6AABF178079A486E066D2FE02493BB10190B6190E1C0F5C085C0C1C1D1B
            47057906F8BFC00DC01DF838A204D800486381B3800B80F701D362E3A8642F03
            B7921A82EB815763E348716C00D4460701BF471AF4CF24EDDE57FB6C04EE2435
            03D7920E2D9224656622F031D29AF066608B65ED54F381CF0253912435DA5EA4
            F5FC6B488F8F450F3056336A13A951FC18301E4952230C07CE077E0CAC257E30
            B19A5D6B499FA5F3F1E44649AAA5FD802B49E7CC470F1A569EB51CF80A9EFF20
            49E186919ED1BF86B4A12B7A80B0DA513DA425828B7103A91ACCA700D444D349
            EBB397E3E13C8AB51CF847E09BA4371D4A924A702AF053BCDBB7EA571B493351
            A720492A4417699AFF06E22FF29635909A475A1E70D3A024756024699A7F11F1
            1774CBEAA4FE8374AEC05E4892F66812F005D20B5DA22FE0965544BD007C9E74
            1895246927E3498FF1BD42FC05DBB2CAA835A4C7086D04240918471AF85F26FE
            026D5955D46BA446606F24A985C690D6475F24FE826C5911F512F0253C6E5852
            4B8C043E457A7E3AFA026C5975A895A45930370B4ACA5217F011D22B57A32FB8
            9655C75A0A7C180F689394915348CF46475F602DAB09753F700692D460FB03DF
            269D9D1E7D51B5AC26D566D2C982072395C493AA548631C09F932E60A7E194A6
            34585DC031A4FD321380FB800DA18924690F2EC5757ECB2ABA9602972015C83B
            3315657FE0EBC045D141A48CFD1CF80CB024388732E0128086AA1BB802B80E98
            159C45CADD61A465811EE05ED2EC80D41167003414C703DFC157A04A1116009F
            041E880EA2661A161D408D34867494E97C1CFCA528B380BB81AF928ED49606C5
            19000DD6BB807FC0C793A43A5902FC0170476C0C35897B00345023802F0257E1
            DBCCA4BAD907F838E975DAB793F60848FD720640037134F023E084E82092F668
            11F051E0E1E820AA376700D49F2ED28EE36B818382B3481A98A9A4E5804DC03D
            F8A480FAE00C80FAF216E0FBC07BA28348EAD8ADA4666059700ED5904F016877
            3E003C8E83BFD474EF061E01DE1F1D44F5E31280B6D74DDAE8F777F86E722917
            7B918E119E449A11D81C1B4775E11280B69A0AFC13E98E41529E7E4D7A5FC7F2
            E8208A6703208033819F00D3A383482ADD6F81CB805BA28328964B00EDD6057C
            96F488DFDEC1592455632CF011D21EB03BF12981D67206A0BDF606AE067E373A
            88A4303F231D20F45A741055CF06A09D0E006E20BDCC4752BB2D022EC0570CB7
            8E8F01B6CFEF905EE2E3E02F09E018D235614E741055CB06A05D2E066E03A645
            0791542B93819B494708AB25DC04D80E5DC095C0DF032383B348AAA76EE022D2
            B901B706675105DC0390BF51C07781DF8F0E22A931AE211D21FC46700E95C806
            206F1381EB81D9D1412435CE3CD25342AF440751396C00F2350DB80937FB49EA
            DC22E01C3C39304B3600793A98B4A1E7B0E820921A6F317036F074741015CBA7
            00F2731469EACEC15F52110E21BD436066741015CB06202F27938EF63C203A88
            A4AC4C07EE209D23A24CD800E4E39DA44777A604E79094A789A4A5C5B3A383A8
            18360079782F702330213A88A4AC8D233D59745E74100D9D9B009B6F2EE95CFF
            D1D14124B5C67AD2A14137460751E76C009A6D36E951BFB1D14124B5CE3AE07C
            E057C139D4211B80E63A9D34F88F8F0E22A9B55E272D41DE191D44836703D04C
            A702BFC4357F49F15E236D0CBC3F3A8806C706A0798E27EDF69F141D44927AAD
            26ED479A1F1D44036703D02CC7929EC575F0975437AB803381C7A28368606C00
            9A633FE01EE0A0E82092D487E781D380E7A28368CF3C07A01926003FC7C15F52
            BDED4FBA56ED131D447B6603507F23806B8159D1412469008E05FE0F302A3A88
            FA6703506F5DC0F7489B6B24A929DE09FC0097996B6D787400F5EB6F803F890E
            21491D381618497A6A49356403505F7F0AFC557408491A8239C04A7C3CB0969C
            9EA9A7B9A453FE6CD024355D0F7001E99AA61AB101A89F19C003F85A5F49F978
            19380578263A88B6711360BDEC45DAF1EFE02F29279380EBF0C565B56203501F
            5DC03F0027460791A412CC027E8833CFB5E11A737D5C09FC597408492AD1D1C0
            1AD2A9A60A6627560F6EFA93D4166E0AAC091B807887901E91F1053F92DA6215
            7032B0243847ABB907205637F0631CFC25B5CB64E05F48479D2B8853CEB1BE0C
            5C161D429202EC0F6C017E159CA3B55C02883307B81D9B3049EDB599B407EAF6
            E8206D6403106322F030BEDE57929601C793F605A842EE0188F12D1CFC2509E0
            00E03BD121DAC8E9E7EA5D4E7AE65F92941C052C071E8A0ED2262E0154EB28E0
            41D291BF92A46DD6914E427D323A485BB804509D61A4692E077F49DAD518D271
            E88E4B157109A03AFF05F854740849AAB10381DF92DE88AA92B904508D838147
            8171D14124A9E65E0766028BA383E4CEA9966A7C1B077F491A88B1C0DF458768
            039700CAF707C05F448790A406390C781A78243A48CE5C0228D7BEC063C094E8
            2092D430AB80638015D14172E51240B9BE8183BF24756232F0BFA243E4CC1980
            F29C05DC1A1D42921AEE5DF8C2A052D800946338E944ABE3A2834852C32D004E
            027AA283E4C62580725C8E83BF24156116F089E810397206A0781381A770ED5F
            928AF25BE070E0D5E82039F131C0E2FD3569CD4A92548CB1C048E097D14172E2
            0C40B18E22AD578D880E224999D9483A21D0970515C43D00C5FA9F38F84B5219
            4600FF233A444E9C0128CED9383D2549653B0BB83D3A440E6C008A732730273A
            842465EE2E607674881CB804508CF7E2E02F4955388334E3AA217206A018F701
            6F8F0E21492D319F74CDDD121DA4C99C0118BADFC5C15F92AA7432F09EE8104D
            E70CC0D07491EEFE4F890E22492DF310A9117016A043CE000CCD4538F84B5284
            134933B0EA9033009DEB021EC633FF2529CA02E0049C05E88833009D3B0F077F
            498A340B9F08E8980D40E73E171D4092E4B5B8532E0174E658E011FCF949521D
            CC225D933508CE0074E67338F84B525D5C111DA0891CC4066F2AF02C303A3A88
            240980F5C0C1C08AE8204DE20CC0E07D06077F49AA9351C0E5D1219AC61980C1
            1945BAFB9F161D4492B48395A4598037A383348533008373190EFE9254475381
            0F458768121B80C1F944740049529FFE283A4093B804307087034FE0CF4C92EA
            6A0BE95AFDFFA2833481330003F78738F84B529D75011F8F0ED1140E6803D34D
            DAFCB75F74104952BF9E276D06EC890E5277CE000CCCB938F84B5213EC0FCC8D
            0ED104360003F387D101244903E6357B005C02D8B3C9A429A551D141244903B2
            813413F05274903A730660CF3E8C83BF2435C948E0E2E810756703B067BF171D
            409234681F880E50772E01F46F0AF002E929004952736C02A6E332409F9C01E8
            DFFB70F097A426EA06CE8F0E51673600FDBB283A8024A9635EC3FBE11240DFC6
            93DE2EE5AB7F25A999DE24BD24684D74903A7206A06F17E0E02F494D361A382F
            3A445DD900F4CDA923496A3EAFE57D700960F74602AB8071D141244943F21AE9
            89AE8DD141EAC61980DD3B15077F49CAC104E0E4E810756403B07BEF8E0E2049
            2A8CD7F4DDB001D8BDB3A20348920A6303B01BEE01D8D518E0653CFF5F9272B1
            019808AC8B0E5227CE00EC6A0E0EFE92949391C0E9D121EAC60660574EFF4B52
            7E5C06D8890DC0AEFC9048527EBCB6EFC43D003BDA87F4E6A8E1D141244985EA
            012603ABA383D48533003B3A05077F49CAD1703C0F600736003BF2C32149F93A
            293A409DD800ECC80F8724E5CB6BFC766C0076E40C8024E5CB6BFC76DC04B8CD
            14E0B7D1212449A5D902EC4B7AD95BEB3903B08D9DA124E5AD0B38213A445DD8
            006CE3DA9024E5CF9BBD5E3600DBD8004852FEBCD6F7B201D8E6D8E80092A4D2
            79ADEFE526C0A49BF496A811D1412449A5DA407AEB6B4F749068CE00243370F0
            97A43618091C141DA20E6C0092C3A20348922AE3351F1B80ADDE161D40925419
            AFF9D8006C65372849EDE1351F1B80ADEC0625A93D6C00B001D8CA0F8324B587
            D77C7C0C10D23BA2DFC0A70024A92D3602A381CDD141223903905E02E4E02F49
            ED3102981C1D229A0D004C8B0E2049AADCD4E800D16C00FC1048521BB5FEDA6F
            03E0874092DAA8F5D77E1B003F0492D446ADBFF6DB00C0BED1012449956BFDB5
            DF06C02E5092DAA8F5D77E1B003F0492D446ADBFF6DB00C0C4E80092A4CA4D8A
            0E10CD06209D0625496A9751D101A2D900F82190A4366AFDCD9F0D800D8024B5
            51EBAFFD3600768192D4463600D1016AA0F51F02496AA1D6DFFCD900D8004852
            1BB5FEDA6F03E0874092DAC81980E8003560032049EDD3FA6BBF0D00F4440790
            2455AEF5D77E1B00581B1D409254B935D101A2D900C0CAE80092A4CAB5FEDA6F
            03004F4507902455EEC9E800D16C00E091E80092A4CA2D8C0E10CD06007E151D
            409254B9DBA30344EB8A0E50037B012B80F1D141244995580D4C03D6470789E4
            0C00BC015C1B1D429254997FA5E5833FD8006CF5DDE80092A4CA5C151DA00E6C
            0092BB813BA34348924A771B706F74883A700FC0366700BFC69F8924E56A0BE9
            5A7F4F74903A7006609BBB801F4487902495E6FB38F8FF27EF7677B40FF01070
            4874104952A19E064E223D01209C01D8D9ABC025A427032449795847BAB63BF8
            6FC70660570F001F0236450791240D590FF051E0C1E82075333C3A404D3D053C
            06BC0FE80ECE2249EACC9BC065C075D141EAC83D00FD7B07700D30353A882469
            50569066737DC4BB0F2E01F4EF0EE004E0D6E82092A401BB9974ED76F0EF870D
            C09E2D07CE26AD212D0BCE2249EADB73A429FF73801782B3D49E4B0083330AF8
            387005706C70164952B210F83AF04360437096C6B001E8DC09A44D8267919E2D
            1D131B47925A631D309F74ACEFCF8005B1719AC906A0185DC041BD35AEB72449
            C559DB5B4B7B6B4B6C1C49922449922449922449922449922449922449922449
            9224499224499224499224499224499224499224499224499224499224499224
            49922449922449922449922449922449922449922449922449922449922449D3
            17CDEA0000003049444154922449922449922449922449922449922449922449
            922449922449922449922449922449922449928AF6FF01878FE26EE33F0B2200
            00000049454E44AE426082}
          Stretch = True
        end
        object MemberNameLabel: TLabel
          Left = 147
          Top = 28
          Width = 57
          Height = 25
          Caption = #54861#44600#46041
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -19
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MemberTelLabel: TLabel
          Left = 149
          Top = 53
          Width = 87
          Height = 17
          Caption = '010-1234-1234'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6446686
          Font.Height = -13
          Font.Name = #47569#51008' '#44256#46357
          Font.Style = []
          ParentFont = False
        end
        object MemberGenderLabel: TLabel
          Left = 213
          Top = 32
          Width = 13
          Height = 17
          Caption = #45224
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
          Width = 62
          Height = 15
          Caption = '1999.12.31'
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
          Width = 120
          Height = 15
          Caption = #49436#50872#53945#48324#49884' 00'#46041' 00'#44396
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
          Width = 62
          Height = 15
          Caption = '1999.12.31'
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
          Width = 122
          Height = 15
          Caption = #51092#50668' : 10'#54924', '#51652#54665' : 3'#54924
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
          Width = 171
          Height = 15
          Caption = #51092#50668' : 128'#51068' / 2023-12-31'#44620#51648
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
          Width = 171
          Height = 15
          Caption = #51092#50668' : 128'#51068' / 2023-12-31'#44620#51648
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
            ExplicitWidth = 531
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
