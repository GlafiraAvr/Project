inherited frm_DisconNew: Tfrm_DisconNew
  Left = 162
  Top = 212
  Width = 1018
  Height = 694
  Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1080#1103
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_Top: TPanel
    Width = 1002
    Height = 281
    object Label1: TLabel [0]
      Left = 6
      Top = 154
      Width = 222
      Height = 16
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited pnl_Adres: TGroupBox
      Top = 5
      Width = 985
      inherited lbl_HouseType: TLabel
        Visible = False
      end
      inherited lbl_Street: TLabel
        Top = 20
      end
      inherited lbl_AddAdres: TLabel
        Left = 9
        Top = 54
        Width = 60
        Caption = #1044#1086#1087'. '#1080#1085#1092'.'
      end
      inherited lbl_HouseNum: TLabel
        Left = 513
        Top = 20
      end
      object Label2: TLabel [5]
        Left = 761
        Top = 18
        Width = 15
        Height = 13
        Caption = #1087#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited dbl_HouseType: TRxDBLookupCombo
        Visible = False
      end
      inherited dbl_Street: TRxDBLookupCombo
        Top = 16
        Width = 449
        DataField = 'ID_UL'
        OnKeyDown = FormKeyDown
      end
      inherited dbl_Street2: TRxDBLookupCombo
        TabOrder = 5
      end
      inherited ed_AddAdres: TDBEdit
        Left = 82
        Top = 48
        Width = 783
        DataField = 'COMMENT'
        TabOrder = 6
        OnKeyDown = FormKeyDown
      end
      inherited ed_HouseNum: TDBEdit
        Left = 603
        Top = 16
        Width = 150
        DataField = 'HOUSE'
        DataSource = ds_Main
        OnKeyDown = FormKeyDown
      end
      object dbe_house_to: TDBEdit
        Left = 779
        Top = 16
        Width = 78
        Height = 21
        DataField = 'HOUSES_TO'
        DataSource = ds_Main
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnChange = CtrlsChange
        OnEnter = TextFieldEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object dbc_typ_houses: TDBComboBoxEh
        Left = 880
        Top = 16
        Width = 81
        Height = 21
        DataField = 'TYP_HOUSE'
        DataSource = ds_Main
        Items.Strings = (
          #1074#1089#1077
          #1095#1077#1090
          #1085#1077#1095)
        KeyItems.Strings = (
          '1'
          '2'
          '3')
        TabOrder = 4
      end
    end
    object mem_Disconnections: TMemo
      Left = 4
      Top = 240
      Width = 999
      Height = 34
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        'Memo1')
      TabOrder = 2
      Visible = False
      OnChange = CtrlsChange
      OnKeyDown = FormKeyDown
    end
    object gb_DTTMExec: TGroupBox
      Left = 8
      Top = 81
      Width = 993
      Height = 160
      TabOrder = 1
      object Label8: TLabel
        Left = 2
        Top = 51
        Width = 71
        Height = 26
        Alignment = taCenter
        Caption = #1044#1072#1090#1072' '#13#10#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 5
        Top = 119
        Width = 65
        Height = 26
        Alignment = taCenter
        Caption = #1044#1072#1090#1072#13#10#1074#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 173
        Top = 49
        Width = 71
        Height = 26
        Alignment = taCenter
        Caption = #1042#1088#1077#1084#1103#13#10#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 174
        Top = 122
        Width = 65
        Height = 26
        Alignment = taCenter
        Caption = #1042#1088#1077#1084#1103#13#10#1074#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 330
        Top = 51
        Width = 79
        Height = 26
        Alignment = taCenter
        Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#13#10#1086#1090#1082#1083'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 328
        Top = 120
        Width = 97
        Height = 26
        Alignment = taCenter
        Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#13#10#1079#1072' '#1074#1082#1083'.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBT_disp1: TDBText
        Left = 764
        Top = 57
        Width = 197
        Height = 17
        DataField = 'Name_discon_disp'
        DataSource = ds_Main
      end
      object DBT_disp2: TDBText
        Left = 768
        Top = 123
        Width = 201
        Height = 17
        DataField = 'Name_Con_Disp'
        DataSource = ds_Main
      end
      object lbl_disp1: TLabel
        Left = 728
        Top = 55
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
      object lbl_disp2: TLabel
        Left = 730
        Top = 122
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
      object Label3: TLabel
        Left = 2
        Top = 11
        Width = 71
        Height = 26
        Alignment = taCenter
        Caption = #1044#1072#1090#1072' '#1087#1083#1072#1085#13#10#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 173
        Top = 9
        Width = 71
        Height = 26
        Alignment = taCenter
        Caption = #1042#1088#1077#1084#1103' '#1087#1083#1072#1085#13#10#1086#1090#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 728
        Top = 15
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
      object DBT_disp1plan: TDBText
        Left = 764
        Top = 17
        Width = 197
        Height = 17
        DataField = 'Name_discon_disp_plan'
        DataSource = ds_Main
      end
      object Label6: TLabel
        Left = 2
        Top = 83
        Width = 65
        Height = 26
        Alignment = taCenter
        Caption = #1044#1072#1090#1072' '#1087#1083#1072#1085#13#10#1074#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 173
        Top = 81
        Width = 71
        Height = 26
        Alignment = taCenter
        Caption = #1042#1088#1077#1084#1103' '#1087#1083#1072#1085#13#10#1074#1082#1083#1102#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 728
        Top = 87
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
      object DBT_disp2plan: TDBText
        Left = 764
        Top = 89
        Width = 197
        Height = 17
        DataField = 'Name_Con_Disp_plan'
        DataSource = ds_Main
      end
      object de_Discon: TDBDateEdit
        Left = 77
        Top = 51
        Width = 87
        Height = 21
        DataField = 'DTTM_DISCON'
        DataSource = ds_Main
        NumGlyphs = 2
        TabOrder = 2
        OnChange = dbl_ExecutorChange
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object de_Con: TDBDateEdit
        Left = 77
        Top = 122
        Width = 87
        Height = 21
        DataField = 'DTTM_CON'
        DataSource = ds_Main
        NumGlyphs = 2
        TabOrder = 7
        OnChange = dbl_BrigConnectChange
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object te_Discon: TDBDateTimeEditEh
        Left = 250
        Top = 52
        Width = 73
        Height = 21
        DataField = 'DTTM_DISCON'
        DataSource = ds_Main
        EditButton.Style = ebsUpDownEh
        Kind = dtkTimeEh
        TabOrder = 3
        OnChange = dbl_ExecutorChange
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object te_Con: TDBDateTimeEditEh
        Left = 250
        Top = 124
        Width = 73
        Height = 21
        DataField = 'DTTM_CON'
        DataSource = ds_Main
        EditButton.Style = ebsUpDownEh
        Kind = dtkTimeEh
        TabOrder = 8
        OnChange = dbl_BrigConnectChange
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object dbl_Executor: TRxDBLookupCombo
        Left = 427
        Top = 53
        Width = 278
        Height = 21
        DropDownCount = 8
        DataField = 'FK_DISCON_BRIG'
        DataSource = ds_Main
        LookupField = 'ID'
        LookupDisplay = 'NAME'
        LookupSource = ds_Executor
        TabOrder = 4
        OnChange = dbl_ExecutorChange
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object dbl_BrigConnect: TRxDBLookupCombo
        Left = 426
        Top = 122
        Width = 279
        Height = 21
        DropDownCount = 8
        DataField = 'FK_DISCON_BRIG_CONNECT'
        DataSource = ds_Main
        LookupField = 'ID'
        LookupDisplay = 'NAME'
        LookupSource = ds_Brig_connect
        TabOrder = 9
        OnChange = dbl_BrigConnectChange
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object DBDateEdit1: TDBDateEdit
        Left = 77
        Top = 11
        Width = 86
        Height = 21
        DataField = 'DTTM_DISCON_PLAN'
        DataSource = ds_Main
        NumGlyphs = 2
        TabOrder = 0
        OnChange = DBDateEdit1Change
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object DBDateTimeEditEh1: TDBDateTimeEditEh
        Left = 250
        Top = 12
        Width = 73
        Height = 21
        DataField = 'DTTM_DISCON_PLAN'
        DataSource = ds_Main
        EditButton.Style = ebsUpDownEh
        Kind = dtkTimeEh
        TabOrder = 1
        OnChange = DBDateTimeEditEh1Change
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object DBDateEdit2: TDBDateEdit
        Left = 77
        Top = 83
        Width = 86
        Height = 21
        DataField = 'DTTM_CON_PLAN'
        DataSource = ds_Main
        NumGlyphs = 2
        TabOrder = 5
        OnChange = DBDateEdit2Change
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
      object DBDateTimeEditEh2: TDBDateTimeEditEh
        Left = 250
        Top = 84
        Width = 73
        Height = 21
        DataField = 'DTTM_CON_PLAN'
        DataSource = ds_Main
        EditButton.Style = ebsUpDownEh
        Kind = dtkTimeEh
        TabOrder = 6
        OnChange = DBDateTimeEditEh2Change
        OnEnter = EntryEnter
        OnExit = EntryExit
        OnKeyDown = FormKeyDown
      end
    end
  end
  inherited pnl_Bottom: TPanel
    Top = 605
    Width = 1002
  end
  inherited dbg_Main: TDBGrid
    Top = 281
    Width = 1002
    Height = 324
    ReadOnly = True
    Columns = <
      item
        Expanded = False
        FieldName = 'look_streets'
        Title.Alignment = taCenter
        Title.Caption = #1059#1083#1080#1094#1072
        Width = 312
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOUSE'
        Title.Caption = #8470' '#1076#1086#1084#1072
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMMENT'
        Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        Width = 159
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTTM_DISCON'
        Title.Caption = #1054#1090#1082#1083#1102#1095#1077#1085#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'look_DISCON_BRIG'
        Title.Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100' '#1086#1090#1082#1083'.'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTTM_CON'
        Title.Caption = #1042#1082#1083#1102#1095#1077#1085#1086
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'look_BRIG_CONNECT'
        Title.Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1081' '#1079#1072' '#1074#1082#1083'.'
        Width = 130
        Visible = True
      end>
  end
  inherited sb_ProcessStatus: TStatusBar
    Top = 637
    Width = 1002
  end
  inherited Tr_Voc: TIBTransaction
    Top = 200
  end
  inherited dset_HouseType: TIBDataSet
    Top = 192
  end
  inherited dset_Street: TIBDataSet
    Top = 192
  end
  inherited dset_Street2: TIBDataSet
    Top = 192
  end
  inherited dset_main: TIBDataSet
    AfterDelete = dset_mainAfterDelete
    AfterEdit = dset_mainAfterEdit
    AfterInsert = dset_mainAfterEdit
    AfterPost = dset_mainAfterPost
    BeforeDelete = dset_mainBeforeDelete
    OnCalcFields = dset_mainCalcFields
    DeleteSQL.Strings = (
      'delete'
      ' from wwater'
      ' where id=:id')
    InsertSQL.Strings = (
      'insert into wwater ('
      'id,'
      'id_zav,'
      'id_ul,'
      'house,'
      'comment,'
      'dttm_discon,'
      'fk_discon_brig,'
      'fk_discon_disp_disconnect,'
      'dttm_con,'
      'fk_discon_brig_connect,'
      'fk_discon_disp_connect,'
      ' DTTM_CON_PLAN,'
      ' DTTM_DISCON_PLAN,'
      ' FK_DISCON_DISP_CONNECT_PLAN, '
      'FK_DISCON_DISP_DISCONNECT_PLAN, '
      'HOUSES_TO,'
      ' TYP_HOUSE'
      ''
      ')'
      'values ('
      ':id,'
      ':id_zav,'
      ':id_ul,'
      ':house,'
      ':comment,'
      ':dttm_discon,'
      ':fk_discon_brig,'
      ':fk_discon_disp_disconnect,'
      ':dttm_con,'
      ':fk_discon_brig_connect,'
      ':fk_discon_disp_connect,'
      ':DTTM_CON_PLAN,'
      ':DTTM_DISCON_PLAN,'
      ' :FK_DISCON_DISP_CONNECT_PLAN, '
      ':FK_DISCON_DISP_DISCONNECT_PLAN, '
      ':HOUSES_TO,'
      ':TYP_HOUSE'
      ''
      ''
      ')')
    SelectSQL.Strings = (
      'select'
      '  di.id'
      ' , di.ID_ZAV'
      ' , di.ID_UL'
      ' , di.house '
      ' , di.COMMENT'
      ' , di.DTTM_DISCON'
      ' , di.DTTM_CON'
      ' , di.FK_DISCON_BRIG'
      ' , di.FK_DISCON_BRIG_CONNECT'
      ', FK_DISCON_DISP_CONNECT'
      ',FK_DISCON_DISP_DISCONNECT'
      ', DTTM_CON_PLAN '
      ',DTTM_DISCON_PLAN'
      ', FK_DISCON_DISP_CONNECT_PLAN ,FK_DISCON_DISP_DISCONNECT_PLAN'
      ', HOUSES_TO'
      ', TYP_HOUSE'
      ', 0  modifi'
      'from  WWATER di'
      'where di.ID_ZAV = :porderid')
    ModifySQL.Strings = (
      'update wwater set'
      'id_zav=:id_zav,'
      'id_ul=:id_ul,'
      'house=:house,'
      'comment=:comment,'
      'dttm_discon=:dttm_discon,'
      'fk_discon_brig=:fk_discon_brig,'
      'fk_discon_disp_disconnect=:fk_discon_disp_disconnect,'
      'dttm_con=:dttm_con,'
      'fk_discon_brig_connect=:fk_discon_brig_connect,'
      'fk_discon_disp_connect=:fk_discon_disp_connect,'
      ' DTTM_CON_PLAN=:DTTM_CON_PLAN,'
      ' DTTM_DISCON_PLAN=:DTTM_DISCON_PLAN ,'
      ' FK_DISCON_DISP_CONNECT_PLAN=:FK_DISCON_DISP_CONNECT_PLAN, '
      'FK_DISCON_DISP_DISCONNECT_PLAN=:FK_DISCON_DISP_DISCONNECT_PLAN, '
      'HOUSES_TO=:HOUSES_TO,'
      ' TYP_HOUSE=:TYP_HOUSE'
      ''
      ''
      'where id=:id')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_WWATER_ID'
    object dset_mainID: TIntegerField
      FieldName = 'ID'
      Origin = 'WWATER.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dset_mainID_ZAV: TIntegerField
      FieldName = 'ID_ZAV'
      Origin = 'WWATER.ID_ZAV'
    end
    object dset_mainID_UL: TIntegerField
      FieldName = 'ID_UL'
      Origin = 'WWATER.ID_UL'
    end
    object dset_mainHOUSE: TIBStringField
      FieldName = 'HOUSE'
      Origin = 'WWATER.HOUSE'
      FixedChar = True
      Size = 40
    end
    object dset_mainCOMMENT: TIBStringField
      FieldName = 'COMMENT'
      Origin = 'WWATER.COMMENT'
      FixedChar = True
      Size = 128
    end
    object dset_mainDTTM_DISCON: TDateTimeField
      FieldName = 'DTTM_DISCON'
      Origin = 'WWATER.DTTM_DISCON'
    end
    object dset_mainDTTM_CON: TDateTimeField
      FieldName = 'DTTM_CON'
      Origin = 'WWATER.DTTM_CON'
    end
    object dset_mainFK_DISCON_BRIG: TIntegerField
      FieldName = 'FK_DISCON_BRIG'
      Origin = 'WWATER.FK_DISCON_BRIG'
    end
    object dset_mainFK_DISCON_BRIG_CONNECT: TIntegerField
      FieldName = 'FK_DISCON_BRIG_CONNECT'
      Origin = 'WWATER.FK_DISCON_BRIG_CONNECT'
    end
    object dset_mainFK_DISCON_DISP_CONNECT: TIntegerField
      FieldName = 'FK_DISCON_DISP_CONNECT'
      Origin = 'WWATER.FK_DISCON_DISP_CONNECT'
    end
    object dset_mainFK_DISCON_DISP_DISCONNECT: TIntegerField
      FieldName = 'FK_DISCON_DISP_DISCONNECT'
      Origin = 'WWATER.FK_DISCON_DISP_DISCONNECT'
    end
    object dset_mainName_discon_disp: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name_discon_disp'
      Calculated = True
    end
    object dset_mainName_Con_Disp: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name_Con_Disp'
      Calculated = True
    end
    object dset_mainlook_streets: TStringField
      FieldKind = fkLookup
      FieldName = 'look_streets'
      LookupDataSet = dset_Street
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME_R'
      KeyFields = 'ID_UL'
      Size = 200
      Lookup = True
    end
    object dset_mainlook_DISCON_BRIG: TStringField
      FieldKind = fkLookup
      FieldName = 'look_DISCON_BRIG'
      LookupDataSet = dset_executor
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME_R'
      KeyFields = 'FK_DISCON_BRIG'
      Size = 200
      Lookup = True
    end
    object dset_mainlook_BRIG_CONNECT: TStringField
      FieldKind = fkLookup
      FieldName = 'look_BRIG_CONNECT'
      LookupDataSet = dset_Brig_connect
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME_R'
      KeyFields = 'FK_DISCON_BRIG_CONNECT'
      Size = 200
      Lookup = True
    end
    object dset_mainDTTM_CON_PLAN: TDateTimeField
      FieldName = 'DTTM_CON_PLAN'
    end
    object dset_mainDTTM_DISCON_PLAN: TDateTimeField
      FieldName = 'DTTM_DISCON_PLAN'
    end
    object dset_mainFK_DISCON_DISP_CONNECT_PLAN: TIntegerField
      FieldName = 'FK_DISCON_DISP_CONNECT_PLAN'
    end
    object dset_mainFK_DISCON_DISP_DISCONNECT_PLAN: TIntegerField
      FieldName = 'FK_DISCON_DISP_DISCONNECT_PLAN'
    end
    object dset_mainHOUSES_TO: TStringField
      FieldName = 'HOUSES_TO'
    end
    object dset_mainTYP_HOUSE: TIntegerField
      FieldName = 'TYP_HOUSE'
    end
    object dset_mainName_discon_disp_plan: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name_discon_disp_plan'
      Size = 40
      Calculated = True
    end
    object dset_mainName_Con_Disp_plan: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name_Con_Disp_plan'
      Size = 40
      Calculated = True
    end
    object dset_mainmodifi: TSmallintField
      FieldName = 'modifi'
    end
  end
  inherited ds_HouseType: TDataSource
    Top = 216
  end
  inherited ds_Street: TDataSource
    Top = 216
  end
  inherited ds_Street2: TDataSource
    Top = 216
  end
  object dset_executor: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    SelectSQL.Strings = (
      'select id,name_r,name_r||" "||dolgn name '
      'from s_brig'
      'where del in ('#39'-'#39','#39'd'#39')'
      'order by name_r')
    OnFilterRecord = VocFilterRecord
    Left = 328
    Top = 192
  end
  object ds_Executor: TDataSource
    DataSet = dset_executor
    Left = 328
    Top = 216
  end
  object dset_Brig_connect: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    SelectSQL.Strings = (
      'select id,name_r,name_r||" "||dolgn name '
      'from s_brig'
      'where del in ('#39'-'#39','#39'd'#39')'
      'order by name_r')
    OnFilterRecord = VocFilterRecord
    Left = 368
    Top = 192
  end
  object ds_Brig_connect: TDataSource
    DataSet = dset_Brig_connect
    Left = 368
    Top = 216
  end
  object dset_tmp: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    Left = 256
    Top = 288
  end
  object dset_brigs_discon_as_disp: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    SelectSQL.Strings = (
      'select ID, NAME_R from S_BRIG where DEL='#39'-'#39' ')
    Left = 464
    Top = 200
  end
  object dset_brig_connect_as_disp: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    SelectSQL.Strings = (
      'select ID, NAME_R from S_BRIG where DEL='#39'-'#39' ')
    Left = 496
    Top = 200
  end
  object ds_brigs_discon_as_disp: TDataSource
    DataSet = dset_brigs_discon_as_disp
    Left = 464
    Top = 216
  end
  object ds_brig_connect_as_disp: TDataSource
    DataSet = dset_brig_connect_as_disp
    Left = 504
    Top = 216
  end
  object dset_brigs_discon_as_disp_plan: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    SelectSQL.Strings = (
      'select ID, NAME_R from S_BRIG where DEL='#39'-'#39' ')
    Left = 544
    Top = 200
  end
  object dset_brig_connect_as_disp_plan: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = Tr_Voc
    SelectSQL.Strings = (
      'select ID, NAME_R from S_BRIG where DEL='#39'-'#39' ')
    Left = 576
    Top = 200
  end
  object ds_brig_connect_as_disp_plan: TDataSource
    DataSet = dset_brig_connect_as_disp_plan
    Left = 584
    Top = 216
  end
  object ds_brigs_discon_as_disp_plan: TDataSource
    DataSet = dset_brigs_discon_as_disp_plan
    Left = 544
    Top = 216
  end
end
