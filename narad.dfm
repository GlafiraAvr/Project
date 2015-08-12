object FormNarad: TFormNarad
  Left = 338
  Top = 355
  BorderStyle = bsDialog
  Caption = #1069#1090#1072#1087#1099
  ClientHeight = 446
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object TbC_nar: TTabControl
    Left = 0
    Top = 0
    Width = 564
    Height = 401
    TabOrder = 0
    TabStop = False
    OnChange = TbC_narChange
    object Lb_stat: TLabel
      Left = 399
      Top = 234
      Width = 4
      Height = 17
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Lb_save: TLabel
      Left = 198
      Top = 234
      Width = 16
      Height = 18
      Caption = '    '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 4
      Top = 6
      Width = 556
      Height = 391
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Label14: TLabel
        Left = 106
        Top = 7
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = #1042#1099#1077#1079#1076
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 54
        Top = 55
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1088#1072#1073#1086#1090
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 341
        Top = 33
        Width = 27
        Height = 13
        Caption = #1076#1080#1089#1087'.'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 341
        Top = 55
        Width = 27
        Height = 13
        Caption = #1076#1080#1089#1087'.'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label2: TLabel
        Left = 68
        Top = 98
        Width = 48
        Height = 13
        Caption = #1041#1088#1080#1075#1072#1076#1080#1088
      end
      object Bevel1: TBevel
        Left = 4
        Top = 75
        Width = 549
        Height = 17
        Shape = bsTopLine
      end
      object Label8: TLabel
        Left = 29
        Top = 335
        Width = 91
        Height = 13
        Alignment = taRightJustify
        Caption = #1044#1086#1087'. '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      end
      object Lb_DisIn: TLabel
        Left = 372
        Top = 30
        Width = 58
        Height = 17
        Caption = 'Lb_DisIn'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsItalic, fsUnderline]
        ParentFont = False
      end
      object Lb_DisOut: TLabel
        Left = 372
        Top = 53
        Width = 70
        Height = 17
        Caption = 'Lb_DisOut'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsItalic, fsUnderline]
        ParentFont = False
        Visible = False
      end
      object Label3: TLabel
        Left = 144
        Top = 212
        Width = 28
        Height = 13
        Alignment = taCenter
        Caption = '('#1056#1057#1059')'
        Visible = False
      end
      object Label6: TLabel
        Left = 131
        Top = 199
        Width = 48
        Height = 13
        Caption = #1041#1088#1080#1075#1072#1076#1080#1088
        Visible = False
      end
      object Label7: TLabel
        Left = 136
        Top = 126
        Width = 43
        Height = 26
        Alignment = taCenter
        Caption = #1053#1086#1084#1077#1088#13#10#1073#1088#1080#1075#1072#1076#1099
      end
      object Label9: TLabel
        Left = 256
        Top = 126
        Width = 41
        Height = 26
        Alignment = taCenter
        Caption = #1050#1086#1083'-'#1074#1086#13#10#1095#1077#1083#1086#1074#1077#1082
      end
      object Label10: TLabel
        Left = 20
        Top = 279
        Width = 98
        Height = 26
        Alignment = taCenter
        Caption = #1052#1077#1088#1099' '#1083#1086#1082#1072#1083#1080#1079#1072#1094#1080#1080#13#10#1072#1074#1072#1088#1080#1080
      end
      object Label11: TLabel
        Left = 72
        Top = 31
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = #1053#1072#1095#1072#1083#1086' '#1088#1072#1073#1086#1090
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBL_brig3: TRxDBLookupCombo
        Left = 180
        Top = 279
        Width = 248
        Height = 23
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LookupField = 'NAME_R'
        LookupDisplay = 'NAME_R'
        LookupSource = DS_brig3
        ParentFont = False
        TabOrder = 12
        Visible = False
        OnChange = DBL_runwChange
      end
      object DE_dep: TDateEdit
        Left = 142
        Top = 4
        Width = 100
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ButtonWidth = 19
        NumGlyphs = 2
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 0
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object DE_out: TDateEdit
        Left = 142
        Top = 52
        Width = 100
        Height = 21
        CheckOnExit = True
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ButtonWidth = 19
        NumGlyphs = 2
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 4
        OnButtonClick = DE_inButtonClick
        OnChange = DE_outChange
        OnKeyPress = DBL_runwKeyPress
      end
      object TE_dep: TDateTimePicker
        Left = 246
        Top = 4
        Width = 91
        Height = 24
        Date = 36306.446525810200000000
        Time = 36306.446525810200000000
        DateMode = dmUpDown
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Kind = dtkTime
        ParentFont = False
        TabOrder = 1
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object TE_out: TDateTimePicker
        Left = 246
        Top = 52
        Width = 91
        Height = 24
        Date = 36306.446664351900000000
        Time = 36306.446664351900000000
        DateMode = dmUpDown
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Kind = dtkTime
        ParentFont = False
        TabOrder = 5
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object DBL_brig: TRxDBLookupCombo
        Left = 130
        Top = 95
        Width = 242
        Height = 24
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LookupField = 'NAME_R'
        LookupDisplay = 'NAME_R'
        LookupSource = DS_brig
        ParentFont = False
        TabOrder = 6
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object Mm_dopinf: TMemo
        Left = 131
        Top = 313
        Width = 416
        Height = 67
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnChange = Mm_dopinfChange
        OnExit = Mm_dopinfExit
        OnKeyDown = Mm_dopinfKeyDown
        OnKeyPress = DBL_runwKeyPress
      end
      object BB_obor: TBitBtn
        Left = 438
        Top = 160
        Width = 115
        Height = 23
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
        TabOrder = 11
        OnClick = BB_OborClick
      end
      object edNUMBERT: TEdit
        Left = 188
        Top = 129
        Width = 45
        Height = 21
        TabOrder = 7
        Text = '???'
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object edNUMTEAM: TEdit
        Left = 306
        Top = 129
        Width = 45
        Height = 21
        TabOrder = 8
        Text = '???'
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object DBL_local: TRxDBLookupCombo
        Left = 130
        Top = 281
        Width = 417
        Height = 24
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        LookupField = 'NAME_R'
        LookupDisplay = 'NAME_R'
        LookupSource = DS_loc
        ParentFont = False
        TabOrder = 9
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object DE_in: TDateEdit
        Left = 142
        Top = 28
        Width = 100
        Height = 21
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ButtonWidth = 19
        NumGlyphs = 2
        ParentFont = False
        YearDigits = dyFour
        TabOrder = 2
        OnButtonClick = DE_inButtonClick
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object TE_in: TDateTimePicker
        Left = 246
        Top = 28
        Width = 91
        Height = 24
        Date = 36306.446525810200000000
        Time = 36306.446525810200000000
        DateMode = dmUpDown
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Kind = dtkTime
        ParentFont = False
        TabOrder = 3
        OnChange = DBL_runwChange
        OnKeyPress = DBL_runwKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 437
        Top = 133
        Width = 115
        Height = 22
        Hint = #1056#1072#1089#1082#1086#1087#1082#1080
        Caption = '  '#1051#1102#1076#1080'  '
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnClick = BitBtn1Click
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000120B0000120B00000000000000000000C8CC7AC8CC7A
          2265F22265F22265F22265F22265F22265F22265F22265F22265F2C8CC7AC8CC
          7AC8CC7AC8CC7AC8CC7ACACACA1C1C1C1C1C1C1D1D1D1D1D1D1C1C1C1C1C1C1D
          1D1D1D1D1D1D1D1DC9C9C9C9C9C9C9C9C9CACACACACACAC9C9C9C8CC7AC8CC7A
          2265F22265F22265F22265F22265F22265F22265F22265F22265F29A9A9AC8CC
          7AC8CC7AC8CC7AC8CC7ACACACA1C1C1C1D1D1D1C1C1C1D1D1D1D1D1D1C1C1C1C
          1C1C1D1D1D1D1D1D9B9B9BCACACAC9C9C9C9C9C9C9C9C9C9C9C9C8CC7AC8CC7A
          2265F22265F22265F22265F22265F22265F22265F22265F29A9A9A9A9A9A7373
          73C8CC7AC8CC7AC8CC7AC9C9C91C1C1C1D1D1D1C1C1C1C1C1C1D1D1D1C1C1C1C
          1C1C1C1C1C9B9B9B9B9B9B737373CACACACACACAC9C9C9C9C9C9C8CC7AC8CC7A
          C8CC7A3476F43476F43476F43476F43476F43476F49A9A9A9A9A9A7373737373
          73666666C8CC7AC8CC7AC9C9C9CACACA31313131313131313131313131313131
          31319C9C9C9B9B9B737373737373666666C9C9C9C9C9C9CACACAC8CC7AC8CC7A
          C8CC7AC8CC7A89C6FD89C6FD89C6FD89C6FD9A9A9A9A9A9A7373737373736666
          666666664B4B4BC8CC7AC9C9C9C9C9C9C9C9C98A8A8A8A8A8A8A8A8A8B8B8B9C
          9C9C9C9C9C7373737474746666666666664A4A4AC9C9C9C9C9C9C8CC7AC8CC7A
          C8CC7AC8CC7A84A9C889C6FD89C6FD89C6FD89C6FD7373737373736666666666
          664B4B4B4B4B4BC8CC7ACACACAC9C9C9CACACA8585858B8B8B8A8A8A8A8A8A8A
          8A8A737373747474676767676767494949494949C9C9C9CACACAC8CC7AC8CC7A
          C8CC7A84A9C884A9C889C6FD89C6FD89C6FD89C6FD89C6FD6666666666664B4B
          4B4B4B4BC8CC7AC8CC7AC9C9C9CACACA8585858585858A8A8A8A8A8A8A8A8A8A
          8A8A8A8A8A6666666666664949494A4A4AC9C9C9C9C9C9C9C9C9C8CC7AC8CC7A
          C8CC7A82A9C989C6FD89C6FD89C6FDDCB33089C6FD9A9A9A9A9A9A4B4B4B4B4B
          4BC8CC7AC8CC7AC8CC7ACACACACACACA8383838A8A8A8A8A8A8A8A8ADDDDDD8B
          8B8B9C9C9C9B9B9B494949494949C9C9C9CACACAC9C9C9C9C9C9C8CC7AC8CC7A
          00F2FF11ECFF11ECFF11ECFF11ECFF11ECFF11ECFF11ECFF00F2FF737373C8CC
          7AC8CC7AC8CC7AC8CC7AC9C9C900000009090908080808080809090908080809
          0909080808000000747474C9C9C9C9C9C9CACACACACACACACACAF6CF6DF6CF6D
          F6CF6D00F2FF00F2FF00F2FF00F2FF00F2FF00F2FF9A9A9A9A9A9A9A9A9A6666
          66F6CF6DF6CF6DF6CF6DF7F7F7F6F6F600000000000000000000000000000000
          00009B9B9B9B9B9B9B9B9B666666F7F7F7F6F6F6F7F7F7F6F6F6F6CF6DF6CF6D
          F6CF6DF6CF6D00F2FF00F2FF00F2FF00F2FF9A9A9A9A9A9A7373737373737373
          734B4B4BF6CF6DF6CF6DF6F6F6F6F6F6F6F6F60000000000000000000000009C
          9C9C9B9B9B7373737373737373734A4A4AF6F6F6F7F7F7F6F6F6F6CF6DF6CF6D
          F6CF6DF6CF6DF6CF6D00F2FF00F2FF9A9A9A9A9A9A7373737373736666666666
          66666666F6CF6DF6CF6DF6F6F6F6F6F6F6F6F6F7F7F70000000000009C9C9C9B
          9B9B737373747474666666666666676767F7F7F7F6F6F6F6F6F6F6CF6DF6CF6D
          F6CF6DF6CF6DF6CF6DF6CF6D9A9A9A9A9A9A7373737373736666666666664B4B
          4B4B4B4B4B4B4BF6CF6DF7F7F7F6F6F6F7F7F7F6F6F6F6F6F69C9C9C9C9C9C73
          73737474746666666666664949494A4A4A494949F6F6F6F6F6F6F6CF6DF6CF6D
          F6CF6DF6CF6DF6CF6DF6CF6DF6CF6D7373737373736666666666664B4B4B4B4B
          4BF6CF6DF6CF6DF6CF6DF6F6F6F6F6F6F6F6F6F6F6F6F7F7F7F7F7F774747473
          73736767676767674A4A4A4A4A4AF6F6F6F6F6F6F6F6F6F6F6F6F6CF6DF6CF6D
          F6CF6DF6CF6DF6CF6DF6CF6DF6CF6DF6CF6D6666666666664B4B4B4B4B4BF6CF
          6DF6CF6DF6CF6DF6CF6DF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F666
          66666666664949494A4A4AF6F6F6F7F7F7F6F6F6F6F6F6F6F6F6F6CF6DF6CF6D
          F6CF6DF6CF6DF6CF6DF6CF6DF6CF6DF6CF6DF6CF6D4B4B4B4B4B4BF6CF6DF6CF
          6DF6CF6DF6CF6DF6CF6DF6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
          F6F6494949494949F6F6F6F6F6F6F7F7F7F6F6F6F6F6F6F6F6F6}
        NumGlyphs = 2
      end
      object BB_Works: TBitBtn
        Left = 437
        Top = 79
        Width = 115
        Height = 23
        Caption = #1056#1072#1073#1086#1090#1099'/'#1084#1072#1090#1077#1088#1080#1072#1083#1099
        TabOrder = 14
        OnClick = BB_WorksClick
      end
      object bb_planWorkMaters: TBitBtn
        Left = 32
        Top = 192
        Width = 137
        Height = 65
        Caption = #1047#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086' '#1088#1072#1073#1086#1090#1099
        TabOrder = 15
        Visible = False
        WordWrap = True
        OnClick = bb_planWorkMatersClick
        Layout = blGlyphBottom
      end
      object btn_PlanObor: TButton
        Left = 437
        Top = 230
        Width = 115
        Height = 41
        Caption = #1047#1072#1087#1083#1072#1085#1086#1088#1086#1074#1072#1085#1086#1077' '#1084#1077#1093#1072#1085#1080#1079#1084#1099
        TabOrder = 16
        WordWrap = True
        OnClick = btn_PlanOborClick
      end
      object btn_mexan: TBitBtn
        Left = 437
        Top = 104
        Width = 115
        Height = 25
        Caption = #1052#1077#1093#1072#1085#1080#1079#1084#1099
        TabOrder = 17
        OnClick = btn_mexanClick
      end
      object but_planWorjs: TButton
        Left = 437
        Top = 186
        Width = 115
        Height = 41
        Caption = #1047#1072#1087#1083#1072#1085#1080#1088#1086#1074#1072#1085#1086' '#1088#1072#1073#1086#1090#1099
        TabOrder = 18
        WordWrap = True
        OnClick = but_planWorjsClick
      end
    end
  end
  object BB_Add: TBitBtn
    Left = 1
    Top = 415
    Width = 90
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 1
    OnClick = BB_AddClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      0400000000000001000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
  end
  object BB_del: TBitBtn
    Left = 91
    Top = 415
    Width = 90
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = BB_delClick
    Glyph.Data = {
      42010000424D4201000000000000760000002800000011000000110000000100
      040000000000CC00000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888880000000888888888888888880000000888888888888880F800000008888
      0F888888888880000000888000F8888880F880000000888000F888880F888000
      00008888000F88800F888000000088888000F800F8888000000088888800000F
      8888800000008888888000F888888000000088888800000F8888800000008888
      8000F80F8888800000008880000F88800F8880000000880000F8888800F88000
      00008800F8888888800F80000000888888888888888880000000888888888888
      888880000000}
  end
  object BB_Save: TBitBtn
    Left = 181
    Top = 415
    Width = 90
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    TabOrder = 3
    OnClick = BB_SaveClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object BB_Exit: TBitBtn
    Left = 489
    Top = 415
    Width = 75
    Height = 25
    Caption = '&'#1042#1099#1093#1086#1076
    TabOrder = 4
    OnClick = BB_ExitClick
    Kind = bkClose
  end
  object BB_zadv: TBitBtn
    Left = 291
    Top = 415
    Width = 90
    Height = 25
    Caption = #1047#1072#1076#1074#1080#1078#1082#1080
    TabOrder = 5
    Visible = False
    OnClick = BB_zadvClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
      1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
      1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
      193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
      11155557F755F777777555000755033305555577755F75F77F55555555503335
      0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
      05555757F75F75557F5505000333555505557F777FF755557F55000000355557
      07557777777F55557F5555000005555707555577777FF5557F55553000075557
      0755557F7777FFF5755555335000005555555577577777555555}
    NumGlyphs = 2
  end
  object BB_Ras: TBitBtn
    Left = 381
    Top = 415
    Width = 90
    Height = 25
    Caption = #1056#1072#1089#1082#1086#1087#1082#1080
    TabOrder = 6
    Visible = False
    OnClick = BB_RasClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
      1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
      1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
      193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
      11155557F755F777777555000755033305555577755F75F77F55555555503335
      0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
      05555757F75F75557F5505000333555505557F777FF755557F55000000355557
      07557777777F55557F5555000005555707555577777FF5557F55553000075557
      0755557F7777FFF5755555335000005555555577577777555555}
    NumGlyphs = 2
  end
  object Qry_narad: TQuery
    DatabaseName = 'DBN_AVAR'
    Left = 488
    Top = 256
  end
  object Qry_brig: TQuery
    DatabaseName = 'DBN_AVAR'
    SQL.Strings = (
      'select id,name_r||" "||dolgn name_r '
      'from s_brig '
      'where del in ('#39'-'#39','#39'd'#39')'
      'order by name_r')
    Left = 132
    Top = 192
  end
  object DS_brig: TDataSource
    DataSet = Qry_brig
    Left = 144
    Top = 200
  end
  object Qry_tmp: TQuery
    DatabaseName = 'DBN_AVAR'
    Left = 444
    Top = 256
  end
  object Qry_tmp2: TQuery
    DatabaseName = 'DBN_AVAR'
    RequestLive = True
    Left = 412
    Top = 256
  end
  object Qry_brig2: TQuery
    DatabaseName = 'DBN_AVAR'
    SQL.Strings = (
      'select id,name_r '
      'from s_brig '
      'where del in ('#39'-'#39','#39'd'#39')'
      'order by name_r')
    Left = 372
    Top = 256
  end
  object DS_brig3: TDataSource
    DataSet = Qry_brig3
    Left = 188
    Top = 200
  end
  object Qry_brig3: TQuery
    DatabaseName = 'DBN_AVAR'
    SQL.Strings = (
      'select id,name_r||" "||dolgn name_r '
      'from s_brig '
      'where del in ('#39'-'#39','#39'd'#39')'
      'order by name_r')
    Left = 180
    Top = 192
  end
  object Qry_loc: TQuery
    DatabaseName = 'DBN_AVAR'
    SQL.Strings = (
      'select id,name_r '
      'from s_local '
      'where del in ('#39'-'#39','#39'd'#39')'
      'order by name_r')
    Left = 268
    Top = 192
  end
  object DS_loc: TDataSource
    DataSet = Qry_loc
    Left = 280
    Top = 200
  end
end
