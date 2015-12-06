object FormZav: TFormZav
  Left = 431
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1053#1072#1088#1103#1076
  ClientHeight = 693
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 668
    Align = alClient
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 0
    DesignSize = (
      734
      668)
    object Label7: TLabel
      Left = 10
      Top = 108
      Width = 70
      Height = 16
      Alignment = taRightJustify
      Caption = #1047#1072#1103#1074#1080#1090#1077#1083#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 413
      Width = 75
      Height = 16
      Alignment = taRightJustify
      Caption = #1058#1080#1087' '#1085#1072#1088#1103#1076#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 231
      Top = 9
      Width = 50
      Height = 16
      Caption = #1054#1090#1082#1088#1099#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 231
      Top = 33
      Width = 50
      Height = 16
      Caption = #1047#1072#1082#1088#1099#1090
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Lb_disIn: TLabel
      Left = 567
      Top = 9
      Width = 46
      Height = 16
      Caption = 'Lb_disin'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object Lb_disOut: TLabel
      Left = 565
      Top = 35
      Width = 56
      Height = 16
      Caption = 'Lb_disOut'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 530
      Top = 10
      Width = 31
      Height = 16
      Caption = #1076#1080#1089#1087'.'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 530
      Top = 35
      Width = 31
      Height = 16
      Caption = #1076#1080#1089#1087'.'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lb_2Alien: TLabel
      Left = 256
      Top = 427
      Width = 4
      Height = 16
      OnClick = SpB_2AlienClick
    end
    object BShowonMap: TSpeedButton
      Left = 732
      Top = 414
      Width = 36
      Height = 34
      Hint = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1079#1072#1103#1074#1082#1091' '#1082' '#1082#1072#1088#1090#1077
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333000333333333333300003333
        08803333333333330000333330F8033333333333000033333307803333333333
        00003333330F700333333333000033333330780380333333000033333300F700
        0803333300003333330F0F700780333300003333300F0FF70080333300003333
        30F0F0FF7078033300003333300F0F0F777703330000333330F0F07FF7770333
        00003333330F07FFFF770333000033333330FF7FFFF703330000333333330FFF
        FFF7033300003333333330F7FFFF703300003333333333000000003300003333
        33333333333333330000}
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton1: TSpeedButton
      Left = 748
      Top = 460
      Width = 36
      Height = 35
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1103#1074#1082#1091' '#1085#1072' '#1082#1072#1088#1090#1077
      Glyph.Data = {
        06020000424D0602000000000000760000002800000028000000140000000100
        0400000000009001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333333FFFF3333FFFF33333330000333300003333333377
        77FF337777FF33333033360330333603333F37F3377F37F3377F330330FFF303
        30F3F303337337F3337F37F3337F303330FFF303303FF30337F337F3337FF7F3
        337F3033303FF307703FF30337F337FFFF7777FFFF7F30330700003000000073
        37F377777737777777733030733333333033073337F773333333373F77333707
        3333333333003333377733333333337733333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        33333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
    end
    object Label1: TLabel
      Left = 146
      Top = 60
      Width = 39
      Height = 16
      Caption = #1056#1072#1081#1086#1085
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 156
      Top = 108
      Width = 97
      Height = 16
      Alignment = taCenter
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 60
      Width = 117
      Height = 16
      Caption = #1055#1088#1080#1085#1072#1076#1083#1077#1078#1085#1086#1089#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 7
      Top = 325
      Width = 81
      Height = 42
      Alignment = taCenter
      Caption = #1044#1086#1087#1086#1083#1085#1080'-'#13#10#1090#1077#1083#1100#1085#1072#1103#13#10#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 4
      Top = 56
      Width = 713
      Height = 3
    end
    object Bevel3: TBevel
      Left = 456
      Top = 160
      Width = 145
      Height = 82
    end
    object Label22: TLabel
      Left = 493
      Top = 177
      Width = 60
      Height = 16
      Alignment = taCenter
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 496
      Top = 215
      Width = 59
      Height = 16
      Alignment = taCenter
      Caption = #1058#1077#1083#1077#1092#1086#1085
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 6
      Top = 160
      Width = 448
      Height = 82
    end
    object Label28: TLabel
      Left = 10
      Top = 164
      Width = 64
      Height = 32
      Alignment = taCenter
      Caption = #1054' '#1095#1077#1084#13#10#1079#1072#1103#1074#1083#1077#1085#1086
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 11
      Top = 204
      Width = 49
      Height = 32
      Alignment = taCenter
      Caption = #1042#1080#1076#13#10#1085#1072#1088#1103#1076#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpB_Alien: TSpeedButton
      Left = 227
      Top = 206
      Width = 26
      Height = 24
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Visible = False
      OnClick = SpB_AlienClick
    end
    object Bevel5: TBevel
      Left = 4
      Top = 402
      Width = 713
      Height = 2
    end
    object Bevel1: TBevel
      Left = 12
      Top = 436
      Width = 713
      Height = 3
    end
    object Label5: TLabel
      Left = 259
      Top = 413
      Width = 130
      Height = 14
      Alignment = taRightJustify
      Caption = #1052#1077#1089#1090#1086' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 297
      Top = 373
      Width = 34
      Height = 16
      Caption = #1057#1076#1072#1083
    end
    object Label11: TLabel
      Left = 11
      Top = 374
      Width = 67
      Height = 16
      Caption = #1055#1086#1083#1091#1095#1077#1085#1072
    end
    object Label17: TLabel
      Left = 273
      Top = 61
      Width = 55
      Height = 16
      Caption = #1059#1095#1072#1089#1090#1086#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_settler: TLabel
      Left = 472
      Top = 60
      Width = 58
      Height = 16
      Caption = #1055#1086#1089#1077#1083#1086#1082
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBL_zav: TRxDBLookupCombo
      Left = 8
      Top = 125
      Width = 145
      Height = 24
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'name_r'
      LookupDisplay = 'name_r'
      LookupSource = DM_Zavv.DS_zav
      ParentFont = False
      TabOrder = 6
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object DBL_tzav: TRxDBLookupCombo
      Left = 95
      Top = 408
      Width = 154
      Height = 24
      DropDownCount = 5
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'name_r'
      LookupDisplay = 'name_r'
      LookupSource = DM_Zavv.DS_tzav
      ParentFont = False
      TabOrder = 17
      OnChange = DBL_tzavChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object ChB_viezd: TCheckBox
      Left = 603
      Top = 202
      Width = 84
      Height = 20
      Caption = #1042#1099#1077#1079#1076
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = ChB_viezdClick
      OnKeyPress = DBL_RaonKeyPress
    end
    object GrB_adres: TGroupBox
      Left = 7
      Top = 243
      Width = 591
      Height = 74
      Caption = ' '#1040#1076#1088#1077#1089' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 9
      object Label12: TLabel
        Left = 10
        Top = 21
        Width = 22
        Height = 16
        Alignment = taRightJustify
        Caption = #1058#1080#1087
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lb_NmUl: TLabel
        Left = 5
        Top = 47
        Width = 53
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = #1059#1083#1080#1094#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lb_Ndom: TLabel
        Left = 288
        Top = 49
        Width = 81
        Height = 16
        Caption = #1085#1086#1084#1077#1088' '#1076#1086#1084#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_tAdr: TComboBox
        Left = 41
        Top = 17
        Width = 185
        Height = 24
        Style = csDropDownList
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnChange = CB_tAdrChange
        OnKeyPress = DBL_RaonKeyPress
        Items.Strings = (
          #1059#1083#1080#1094#1072','#1085#1086#1084#1077#1088' '#1076#1086#1084#1072
          #1055#1077#1088#1077#1082#1088#1077#1089#1090#1086#1082
          #1052#1077#1089#1090#1085#1086#1089#1090#1100)
      end
      object DBL_ul1: TRxDBLookupCombo
        Left = 64
        Top = 44
        Width = 217
        Height = 24
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'ID'
        LookupDisplay = 'NAME_R'
        LookupSource = DM_Zavv.DS_ul1
        ParentFont = False
        TabOrder = 1
        OnChange = DBL_ul1Change
        OnKeyPress = DBL_RaonKeyPress
      end
      object Ed_ndom: TEdit
        Left = 371
        Top = 44
        Width = 74
        Height = 24
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 2
        OnChange = Ed_ndomChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object DBL_ul2: TRxDBLookupCombo
        Left = 371
        Top = 45
        Width = 214
        Height = 24
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'name_r'
        LookupDisplay = 'name_r'
        LookupSource = DM_Zavv.DS_ul2
        ParentFont = False
        TabOrder = 3
        Visible = False
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object Ed_dopAdr: TEdit
        Left = 232
        Top = 17
        Width = 353
        Height = 24
        Hint = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        TabStop = False
        AutoSize = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        MaxLength = 40
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object dbl_DopAdres: TRxDBLookupCombo
        Left = 372
        Top = 44
        Width = 205
        Height = 24
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'name_r'
        LookupDisplay = 'name_r'
        LookupSource = DM_Zavv.ds_DopAdres
        ParentFont = False
        TabOrder = 5
        Visible = False
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
    end
    object GrB_damg: TGroupBox
      Left = 6
      Top = 484
      Width = 605
      Height = 138
      Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1080' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 12
      object Label4: TLabel
        Left = 297
        Top = 169
        Width = 70
        Height = 16
        Caption = #1052#1077#1089#1090#1085#1086#1089#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 7
        Top = 49
        Width = 62
        Height = 28
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083#13#10'  '#1090#1088#1091#1073#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Diam_lb: TLabel
        Left = 219
        Top = 48
        Width = 31
        Height = 28
        Alignment = taCenter
        Caption = #1044#1080#1072'-'#13#10#1084#1077#1090#1088
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 349
        Top = 49
        Width = 87
        Height = 28
        Alignment = taCenter
        Caption = #1052#1077#1089#1090#1085#1086#1089#1090#1100#13#10#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 11
        Top = 18
        Width = 87
        Height = 28
        Alignment = taCenter
        Caption = #1061#1072#1088#1072#1082#1090#1077#1088' '#13#10#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_Bevel: TBevel
        Left = 16
        Top = 110
        Width = 583
        Height = 24
        Visible = False
      end
      object Lb_Alien: TLabel
        Left = 22
        Top = 123
        Width = 571
        Height = 16
        AutoSize = False
        Caption = 'alien'
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        OnClick = SpB_AlienClick
      end
      object L_Coord: TLabel
        Left = 96
        Top = 84
        Width = 4
        Height = 16
      end
      object DBL_damg: TRxDBLookupCombo
        Left = 480
        Top = 19
        Width = 121
        Height = 24
        DropDownCount = 8
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'NAME_R'
        LookupDisplay = 'name_r'
        LookupSource = DM_Zavv.DS_Damg
        ParentFont = False
        TabOrder = 0
        Visible = False
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object DBL_matpipe: TRxDBLookupCombo
        Left = 78
        Top = 53
        Width = 136
        Height = 24
        DropDownCount = 5
        EmptyValue = '-1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'NAME_R'
        LookupDisplay = 'name_r'
        LookupSource = DM_Zavv.ds_matpipe
        ParentFont = False
        TabOrder = 1
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object DBL_Diam: TRxDBLookupCombo
        Left = 254
        Top = 53
        Width = 83
        Height = 24
        DropDownCount = 5
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        IndexSwitch = False
        LookupField = 'ID'
        LookupDisplay = 'DIAM_STR'
        LookupSource = DM_Zavv.DS_diamZ
        ParentFont = False
        TabOrder = 2
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object DBL_Mest: TRxDBLookupCombo
        Left = 439
        Top = 52
        Width = 161
        Height = 24
        DropDownCount = 5
        EmptyValue = '-1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'NAME_R'
        LookupDisplay = 'name_r'
        LookupSource = DM_Zavv.DS_mest
        ParentFont = False
        TabOrder = 3
        OnChange = DBL_RaonChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object DBL_sod: TRxDBLookupCombo
        Left = 104
        Top = 21
        Width = 233
        Height = 24
        Hint = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1085#1072#1088#1103#1076#1072
        DropDownCount = 5
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        LookupField = 'name_r'
        LookupDisplay = 'name_r'
        LookupSource = DM_Zavv.DS_sod
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnChange = DBL_sodChange
        OnKeyPress = DBL_RaonKeyPress
      end
      object pnl_VRK: TPanel
        Left = 340
        Top = 18
        Width = 261
        Height = 29
        BevelOuter = bvNone
        TabOrder = 5
        object Label18: TLabel
          Left = 3
          Top = 8
          Width = 24
          Height = 14
          Alignment = taCenter
          Caption = #1042#1056#1050
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBL_vrk: TRxDBLookupCombo
          Left = 40
          Top = 4
          Width = 225
          Height = 23
          DropDownCount = 8
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'NAME_R'
          LookupDisplay = 'NAME_R'
          LookupSource = DM_Zavv.ds_vrk
          ParentFont = False
          TabOrder = 0
          OnChange = DBL_RaonChange
          OnKeyPress = DBL_RaonKeyPress
        end
      end
      object bt_COORD: TButton
        Left = 96
        Top = 105
        Width = 81
        Height = 21
        Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1099
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
        OnClick = bt_COORDClick
      end
      object PCoord: TPanel
        Left = 16
        Top = 80
        Width = 577
        Height = 25
        Color = clMoneyGreen
        TabOrder = 8
        object Label8: TLabel
          Left = 205
          Top = -2
          Width = 4
          Height = 13
          Caption = 'l'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 275
          Top = -1
          Width = 8
          Height = 13
          Caption = 'll'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 431
          Top = -2
          Width = 4
          Height = 13
          Caption = 'l'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object Label34: TLabel
          Left = 501
          Top = -1
          Width = 8
          Height = 13
          Caption = 'll'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
        end
        object RxLabel1: TRxLabel
          Left = 8
          Top = 4
          Width = 84
          Height = 16
          Caption = #1050#1086#1086#1088#1076#1080#1085#1072#1090#1099
        end
        object se_XF: TRxSpinEdit
          Left = 128
          Top = 1
          Width = 73
          Height = 21
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = DBL_RaonChange
          OnKeyPress = DBL_RaonKeyPress
        end
        object se_XD: TRxSpinEdit
          Left = 213
          Top = 1
          Width = 59
          Height = 21
          MaxValue = 11.750000000000000000
          ValueType = vtFloat
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DBL_RaonChange
          OnKeyPress = DBL_RaonKeyPress
        end
        object se_YF: TRxSpinEdit
          Left = 357
          Top = 1
          Width = 72
          Height = 21
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnChange = DBL_RaonChange
          OnKeyPress = DBL_RaonKeyPress
        end
        object se_YD: TRxSpinEdit
          Left = 439
          Top = 1
          Width = 59
          Height = 21
          MaxValue = 11.750000000000000000
          ValueType = vtFloat
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = DBL_RaonChange
          OnKeyPress = DBL_RaonKeyPress
        end
      end
      inline Frm_GEOCOORD1: TFrm_GEOCOORD
        Left = 168
        Top = 99
        Width = 416
        Height = 22
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        Visible = False
        inherited se_Deg_N: TRxSpinEdit
          Height = 21
        end
        inherited se_Min_N: TRxSpinEdit
          Height = 21
        end
        inherited se_Sec_N: TRxSpinEdit
          Height = 21
        end
        inherited se_Deg_E: TRxSpinEdit
          Height = 21
        end
        inherited se_Min_E: TRxSpinEdit
          Height = 21
        end
        inherited se_Sec_E: TRxSpinEdit
          Height = 21
        end
        inherited BitBtn1: TBitBtn
          OnClick = Frm_GEOCOORD1BitBtn1Click
        end
      end
      object pnl_podpor: TPanel
        Left = 336
        Top = 16
        Width = 265
        Height = 33
        BevelOuter = bvNone
        TabOrder = 9
        object Lbl_podpor: TLabel
          Left = 8
          Top = 8
          Width = 51
          Height = 16
          Caption = #1055#1086#1076#1087#1086#1088
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dbl_podpor: TRxDBLookupCombo
          Left = 64
          Top = 3
          Width = 185
          Height = 24
          DropDownCount = 4
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          LookupField = 'id'
          LookupDisplay = 'name'
          LookupSource = DM_Zavv.ds_podpor
          ParentFont = False
          TabOrder = 0
          OnChange = DBL_RaonChange
          OnKeyPress = DBL_RaonKeyPress
        end
      end
    end
    object BB_Save: TBitBtn
      Left = 615
      Top = 524
      Width = 102
      Height = 24
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
      Caption = '&'#1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BB_SaveClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object DE_in: TDateEdit
      Left = 305
      Top = 5
      Width = 122
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ButtonWidth = 23
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 0
      OnChange = DE_inChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object DE_out: TDateEdit
      Left = 305
      Top = 29
      Width = 122
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ButtonWidth = 23
      NumGlyphs = 2
      ParentFont = False
      YearDigits = dyFour
      TabOrder = 2
      Visible = False
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object BB_Exit: TBitBtn
      Left = 640
      Top = 550
      Width = 77
      Height = 24
      Hint = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Caption = '&'#1042#1099#1093#1086#1076
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = BB_ExitClick
      Kind = bkClose
    end
    object BB_zadv: TBitBtn
      Left = 604
      Top = 104
      Width = 111
      Height = 24
      Hint = #1055#1077#1088#1077#1082#1088#1099#1090#1099#1077' '#1079#1072#1076#1074#1080#1078#1082#1080
      Caption = '&'#1047#1072#1076#1074#1080#1078#1082#1080
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
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
    object BB_Narad: TBitBtn
      Left = 615
      Top = 499
      Width = 102
      Height = 24
      Hint = #1042#1099#1077#1079#1076#1099' '#1087#1086' '#1085#1072#1088#1103#1076#1091
      Caption = #1069#1090#1072#1087'&'#1099
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      OnClick = BB_NaradClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object BB_Ras: TBitBtn
      Left = 604
      Top = 130
      Width = 111
      Height = 24
      Hint = #1056#1072#1089#1082#1086#1087#1082#1080
      Caption = '&'#1056#1072#1089#1082#1086#1087#1082#1080' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
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
    object TE_In: TDateTimePicker
      Left = 431
      Top = 5
      Width = 96
      Height = 24
      Date = 36306.437398842600000000
      Time = 36306.437398842600000000
      DateMode = dmUpDown
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object TE_Out: TDateTimePicker
      Left = 431
      Top = 29
      Width = 96
      Height = 24
      Date = 36306.437652546300000000
      Time = 36306.437652546300000000
      DateMode = dmUpDown
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object Panel2: TPanel
      Left = 7
      Top = 5
      Width = 194
      Height = 32
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 18
      object Lb_Nomer: TLabel
        Left = 6
        Top = 6
        Width = 113
        Height = 19
        Alignment = taRightJustify
        Caption = #1053#1086#1084#1077#1088' '#1085#1072#1088#1103#1076#1072
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Lb_Nzav: TStaticText
        Left = 125
        Top = 5
        Width = 63
        Height = 22
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = #1053#1086#1074#1072#1103
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText1: TStaticText
        Left = 104
        Top = 5
        Width = 21
        Height = 26
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'A'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
    object Panel3: TPanel
      Left = 615
      Top = 444
      Width = 105
      Height = 54
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 19
      object BB_Print: TBitBtn
        Left = 8
        Top = 4
        Width = 19
        Height = 21
        Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1088#1103#1076#1072
        ParentShowHint = False
        PopupMenu = pm_Print
        ShowHint = True
        TabOrder = 0
        OnClick = BB_PrintClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object BB_Excel: TBitBtn
        Left = 52
        Top = -12
        Width = 33
        Height = 22
        Hint = #1042#1099#1074#1086#1076' '#1074' Excel'
        Enabled = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        Visible = False
        OnClick = BB_PrintClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000074120000741200001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFF70F
          FFFFFFFFFFF70F80FFFFFFFFF70F8480FFFFFFF70F84C9880FFFF80F8F8DFC98
          0FFF888F8FF8F89F80FF000000777F8F80FFFE6666EF8F8FF80FFFE66EF60FF8
          F80FFF76EF8FF8F8FF70FF6EF678F8FF7800F6EF8E67FF7800FF000F08000800
          FFFFFFFF888800FFFFFFFFFFF000FFFFFFFFFFFFF0FFFFFFFFFF}
      end
      object BB_NewZ: TBitBtn
        Left = 55
        Top = 3
        Width = 23
        Height = 22
        Hint = #1053#1086#1074#1099#1081' '#1085#1072#1088#1103#1076
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BB_NewZClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
          0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
          0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
          0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
          5555557FFFFF7755555555500000005555555577777775555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
      end
      object BB_CopyNew: TBitBtn
        Left = 78
        Top = 3
        Width = 23
        Height = 22
        Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1085#1072#1088#1103#1076' '#1074' '#1085#1086#1074#1099#1081
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BB_CopyNewClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BB_Clzav: TBitBtn
        Left = 4
        Top = 26
        Width = 97
        Height = 24
        Hint = #1079#1072#1082#1088#1099#1090#1100' '#1085#1072#1088#1103#1076
        Caption = #1047'&'#1072#1082#1088#1099#1090#1100
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = BB_ClzavClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
          3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
          B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
          33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
          000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
          033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
          BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
          33B33733333773333373B333333B3333333B7333333733333337}
        NumGlyphs = 2
      end
    end
    object Ed_dopinfORG: TEdit
      Left = 154
      Top = 125
      Width = 169
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      PopupMenu = PopAutoVvod
      TabOrder = 7
      OnChange = DBL_RaonChange
      OnExit = Ed_dopinfORGExit
      OnKeyDown = Ed_dopinfORGKeyDown
      OnKeyPress = DBL_RaonKeyPress
    end
    object DBL_Raon: TRxDBLookupCombo
      Left = 144
      Top = 77
      Width = 125
      Height = 24
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'name_r'
      LookupDisplay = 'name_r'
      LookupSource = DM_Zavv.DS_raon
      ParentFont = False
      TabOrder = 5
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object cbAttach: TComboBox
      Left = 7
      Top = 77
      Width = 132
      Height = 24
      Style = csDropDownList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = #1042#1054#1044#1054#1055#1056#1054#1042#1054#1044
      OnChange = cbAttachChange
      Items.Strings = (
        #1042#1054#1044#1054#1055#1056#1054#1042#1054#1044
        #1050#1040#1053#1040#1051#1048#1047#1040#1062#1048#1071
        #1047#1040#1071#1042#1050#1048' '#1042#1056#1050
        #1054#1041#1066#1045#1050#1058#1067' '#1042#1054#1044#1054#1055#1056#1054#1042#1054#1044#1040
        #1054#1041#1066#1045#1050#1058#1067' '#1050#1040#1053#1040#1051#1048#1047#1040#1062#1048#1048)
    end
    object edDop_inf: TMemo
      Left = 95
      Top = 328
      Width = 620
      Height = 37
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnChange = Mmm_dopinfChange
      OnExit = Mmm_dopinfExit
      OnKeyDown = edDop_infKeyDown
      OnKeyUp = edDop_infKeyUp
    end
    object Ed_dopinfNAM: TEdit
      Left = 461
      Top = 177
      Width = 136
      Height = 24
      Hint = #1060#1072#1084#1080#1083#1080#1103' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 25
      ParentFont = False
      ParentShowHint = False
      PopupMenu = PopAutoVvod
      ShowHint = True
      TabOrder = 20
      OnChange = DBL_RaonChange
      OnExit = Ed_dopinfORGExit
      OnKeyDown = Ed_dopinfORGKeyDown
      OnKeyPress = DBL_RaonKeyPress
    end
    object Ed_dopinfTEL: TEdit
      Left = 461
      Top = 215
      Width = 136
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      PopupMenu = PopAutoVvod
      TabOrder = 21
      OnChange = DBL_RaonChange
      OnExit = Ed_dopinfTELExit
      OnKeyDown = Ed_dopinfORGKeyDown
      OnKeyPress = DBL_RaonKeyPress
    end
    object DBL_owner: TRxDBLookupCombo
      Left = 62
      Top = 207
      Width = 161
      Height = 24
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'name_r'
      LookupDisplay = 'name_r'
      LookupSource = DM_Zavv.DS_owner
      ParentFont = False
      TabOrder = 22
      OnChange = ChB_AlienClick
      OnKeyPress = DBL_RaonKeyPress
    end
    object DBL_WhatMatter: TRxDBLookupCombo
      Left = 81
      Top = 168
      Width = 368
      Height = 24
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'name_r'
      LookupDisplay = 'name_r'
      LookupSource = DM_Zavv.DS_comment
      ParentFont = False
      TabOrder = 23
      OnChange = ChB_AlienClick
      OnKeyPress = DBL_RaonKeyPress
    end
    object ChB_Cont: TCheckBox
      Left = 273
      Top = 194
      Width = 119
      Height = 17
      TabStop = False
      Caption = #1085#1072' '#1082#1086#1085#1090#1088#1086#1083#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
      OnClick = ChB_ContClick
      OnKeyPress = DBL_RaonKeyPress
    end
    object DBLC_brig: TRxDBLookupCombo
      Left = 273
      Top = 213
      Width = 175
      Height = 24
      DropDownCount = 8
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'NAME'
      LookupDisplay = 'NAME'
      LookupSource = DM_Zavv.DS_Brig
      ParentFont = False
      TabOrder = 25
      TabStop = False
      Visible = False
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object DBL_place: TRxDBLookupCombo
      Left = 398
      Top = 408
      Width = 319
      Height = 24
      DropDownCount = 5
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      LookupField = 'name_r'
      LookupDisplay = 'name_r'
      LookupSource = DM_Zavv.DS_place
      ParentFont = False
      TabOrder = 26
      OnChange = DBL_placeChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object BB_Poteri: TBitBtn
      Left = 604
      Top = 156
      Width = 111
      Height = 25
      Caption = #1055#1086#1090#1077#1088#1080'    '
      TabOrder = 27
      OnClick = BB_PoteriClick
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
    object CB_DelZayav: TCheckBox
      Left = 8
      Top = 38
      Width = 97
      Height = 17
      Caption = #1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 28
      Visible = False
      OnClick = CB_DelZayavClick
      OnKeyDown = CB_DelZayavKeyDown
      OnMouseDown = CB_DelZayavMouseDown
    end
    object DBL_Sdal: TRxDBLookupCombo
      Left = 333
      Top = 369
      Width = 215
      Height = 24
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'NAME_R'
      LookupDisplay = 'NAME_R'
      LookupSource = DM_Zavv.ds_sdal
      ParentFont = False
      TabOrder = 29
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object DE_Poluch: TDateEdit
      Left = 549
      Top = 370
      Width = 92
      Height = 24
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 30
      OnChange = DBL_RaonChange
    end
    object TE_Poluch: TDateTimePicker
      Left = 641
      Top = 370
      Width = 75
      Height = 24
      Date = 38869.423010162040000000
      Time = 38869.423010162040000000
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 31
      OnChange = DBL_RaonChange
    end
    object DBL_BrPoluch: TRxDBLookupCombo
      Left = 81
      Top = 370
      Width = 212
      Height = 24
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'NAME_R'
      LookupDisplay = 'NAME_R'
      LookupSource = DM_Zavv.ds_poluch
      ParentFont = False
      TabOrder = 32
      OnChange = DBL_RaonChange
    end
    object BB_Image: TBitBtn
      Left = 605
      Top = 291
      Width = 110
      Height = 25
      Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      TabOrder = 33
      OnClick = BB_ImageClick
    end
    object DBL_Revs: TRxDBLookupCombo
      Left = 271
      Top = 77
      Width = 194
      Height = 23
      DropDownCount = 8
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      LookupField = 'NAME_R'
      LookupDisplay = 'NAME_R'
      LookupSource = DM_Zavv.ds_revs
      ParentFont = False
      TabOrder = 34
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object cb_OTL: TCheckBox
      Left = 123
      Top = 38
      Width = 97
      Height = 17
      Caption = #1086#1090#1083#1086#1078#1077#1085
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 35
      OnClick = cb_OTLClick
      OnKeyDown = cb_OTLKeyDown
      OnMouseDown = cb_OTLMouseDown
    end
    object dbl_settlers: TRxDBLookupCombo
      Left = 471
      Top = 76
      Width = 242
      Height = 23
      DropDownCount = 8
      LookupField = 'NAME_S'
      LookupDisplay = 'NAME_S'
      LookupSource = DM_Zavv.ds_settlers
      TabOrder = 36
      OnChange = DBL_RaonChange
      OnKeyPress = DBL_RaonKeyPress
    end
    object BB_WithoutWater: TBitBtn
      Left = 608
      Top = 248
      Width = 105
      Height = 41
      Anchors = []
      Caption = #1041#1077#1079' '#1074#1086#1076#1099' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 37
      WordWrap = True
      OnClick = BB_WithoutWaterClick
    end
  end
  object Pn_stat: TPanel
    Left = 0
    Top = 668
    Width = 734
    Height = 25
    Align = alBottom
    BevelInner = bvLowered
    BorderWidth = 1
    TabOrder = 1
    DesignSize = (
      734
      25)
    object Lb_stat: TLabel
      Left = 9
      Top = 1
      Width = 120
      Height = 21
      Caption = #1053#1086#1074#1099#1081' '#1085#1072#1088#1103#1076
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clRed
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Lb_save: TLabel
      Left = 572
      Top = 1
      Width = 137
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1053#1077#1090' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object bbMap: TBitBtn
    Tag = 555
    Left = 614
    Top = 550
    Width = 24
    Height = 24
    Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1072#1088#1090#1091
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = bbMapClick
    Glyph.Data = {
      46050000424D4605000000000000360000002800000012000000120000000100
      20000000000010050000120B0000120B00000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E4DAEC139668A35C7527649B710930CF7A010DF27A01
      0DF2710930CF7527649B9668A35CE4DAEC13FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AA88BA45721E57A873215CF4905E9BF9C0A8
      CFFDECE6F2FFECE6F2FFC0A8CFFD905E9BF973215CF4721E57A8AA88BA45FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009D73AB54701345D59A6FA8F9EFE9
      F4FFF6F3F9FFFCFBFDFFFFFFFFFFFFFFFFFFFCFBFDFFF6F3F9FFEFE9F4FF9A6F
      A8F9701345D59D73AB54FFFFFF00FFFFFF00FFFFFF00BDBDFF424242FFD6C7B2
      D5FEE8E0EFFF9667A2FF701346FF790111FF800000FF800000FF730626FF7426
      62FFC6B0D4FFF6F3F9FFC7B2D5FE701142D6AD8CBD42FFFFFF00EDEDFF125757
      FFA8A8A8FFFFFAFAFFFF6A686CFF3E7F06FF604000FF800000FF800000FF8000
      00FF800000FF585000FF39851AFFABA0BAFFFEFDFEFF9A6FA8FF721E57A8E5DC
      ED12AEAEFF515151FFF3F3F3FFFFA8A8FFFF0B2BDFFF00FF00FF28AF00FF8000
      00FF800000FF800000FF800000FF10DF00FF10DF00FF70103FFFC7B2D5FFEEE8
      F3FF711A51F39F77AE516A6AFF959595FFFFFFFFFFFF4949FFFF0000FFFF00CF
      30FF00FF00FF407F00FF407F00FF407F00FF388F00FF00FF00FF388F00FF7F00
      02FF7F3D7DFFFFFFFFFF8C5795FF772C6A953333FFCCCCCCFFFFFFFFFFFF1313
      FFFF0000FFFF00708FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF
      00FF683000FF800001FF700F3EFFFFFFFFFFBDA3CCFF710A33CC0A0AFFF5F5F5
      FFFFFFFFFFFF0000FFFF0000FFFF0020DFFF00FF00FF009F60FF800000FF8000
      00FF10DF00FF18CF00FF800000FF800000FF780112FFFFFFFFFFF0EBF5FF7B00
      0AF50A0AFFF5F5F5FFFFFFFFFFFF0404FFFF0000FFFF0000FFFF00AF50FF00EF
      10FF0000FFFF683000FF00FF00FF487000FF800000FF800000FF720627FFFFFF
      FFFFF0EBF5FF7B000AF53333FFCCCCCCFFFFFFFFFFFF3232FFFF0000FFFF0000
      FFFF00609FFF00FF00FF0050AFFF008F70FF00FF00FF702000FF800000FF7E00
      05FF742460FFFFFFFFFFBDA3CCFF710A33CC6A6AFF959595FFFFFFFFFFFF7575
      FFFF0101FFFF0000FFFF0010EFFF00FF00FF009F60FF00DF20FF00CF30FF8000
      00FF800000FF770216FF9C71AAFFFFFFFFFF8C5795FF772C6A95AEAEFF515151
      FFF3F3F3FFFFE2E2FFFF4646FFFF0101FFFF0000FFFF00AF50FF00EF10FF00FF
      00FF00609FFF0000FFFF7B010CFF884F8EFFF9F7FBFFEEE8F3FF711A51F39F77
      AE51EDEDFF125757FFA8A8A8FFFFFEFEFFFFD4D4FFFF5151FFFF1010FFFF0151
      AFFF00BF40FF00BF40FF0717EFFF1919FFFF9090FFFFEFE9F4FFFEFDFEFF9A6F
      A8FF721E57A8E5DCED12FFFFFF00BDBDFF424242FFD6D5D5FFFEF8F8FFFFDBDB
      FFFF8383FFFF4141FFFF1212FFFF2323FFFF5B5BFFFFA5A5FFFFF8F8FFFFF9F9
      FFFFC7B2D5FE701142D6AD8CBD42FFFFFF00FFFFFF00FFFFFF00ABABFF544545
      FFD5A8A8FFF9F4F4FFFFF9F9FFFFFDFDFFFFFFFFFFFFFFFFFFFFFDFDFFFFF9F9
      FFFFF4F4FFFFA8A8FFF94545FFD59D73AB54FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BABAFF455757FFA85C5CFFF49B9BFFF9CFCFFFFDF2F2FFFFF2F2
      FFFFCFCFFFFD9B9BFFF95C5CFFF45757FFA8BABAFF45FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECECFF13A3A3FF5C6464FF9B3030
      FFCF0D0DFFF20D0DFFF23030FFCF6464FF9BA3A3FF5CECECFF13FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00}
  end
  object PopupMenu1: TPopupMenu
    Left = 788
    Top = 460
    object N1: TMenuItem
      Caption = #1042#1099#1074#1086#1076' '#1085#1072' '#1087#1088#1080#1085#1090#1077#1088
      OnClick = N1Click
    end
    object Excel1: TMenuItem
      Caption = #1042#1099#1074#1086#1076' '#1074' Excel'
      OnClick = Excel1Click
    end
  end
  object PopAutoVvod: TPopupMenu
    Left = 768
    Top = 416
    object N2: TMenuItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1072#1074#1090#1086' '#1074#1074#1086#1076
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1072#1074#1090#1086' '#1074#1074#1086#1076
      OnClick = N3Click
    end
  end
  object pmChoiceAtt_Zav: TPopupMenu
    Left = 535
    Top = 344
    object N4: TMenuItem
      Tag = 1
      Caption = #1042#1086#1076#1086#1087#1088#1086#1074#1086#1076
      OnClick = N4Click
    end
    object N5: TMenuItem
      Tag = 2
      Caption = #1050#1072#1085#1072#1083#1080#1079#1072#1094#1080#1103
      OnClick = N5Click
    end
    object N6: TMenuItem
      Tag = 3
      Caption = #1047#1072#1103#1074#1082#1080' '#1042#1056#1050
      OnClick = N6Click
    end
    object N7: TMenuItem
      Tag = 4
      Caption = #1054#1073#1098#1077#1082#1090#1099' '#1074#1086#1076#1086#1087#1088#1086#1074#1086#1076#1072
      OnClick = N7Click
    end
    object N8: TMenuItem
      Tag = 5
      Caption = #1054#1073#1098#1077#1082#1090#1099' '#1082#1072#1085#1072#1083#1080#1079#1072#1094#1080#1080
      OnClick = N8Click
    end
  end
  object pm_Print: TPopupMenu
    Left = 566
    Top = 396
    object mi_PrintZav: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1103#1074#1082#1080
      OnClick = mi_PrintZavClick
    end
    object mi_EkonomPokaz: TMenuItem
      Caption = #1069#1082#1086#1085#1086#1084'. '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080' '#1088#1077#1084#1086#1085#1090'. '#1088#1072#1073#1086#1090
      OnClick = mi_EkonomPokazClick
    end
  end
end
