inherited dm_DiskondRep: Tdm_DiskondRep
  inherited frReport: TfrReport
    Dataset = frDBDataSet1
    ReportForm = {19000000}
  end
  object rmmain: TRxMemoryData
    FieldDefs = <>
    Left = 176
    Top = 16
    object rmmainid_wwater: TIntegerField
      FieldName = 'id_wwater'
    end
    object rmmainid_rayon: TIntegerField
      FieldName = 'id_rayon'
    end
    object rmmainregion: TStringField
      FieldName = 'region'
    end
    object rmmainid: TIntegerField
      FieldName = 'id'
    end
    object rmmainstreet_disc: TStringField
      FieldName = 'street_disc'
      Size = 40
    end
    object rmmainadress_disc: TStringField
      FieldName = 'adress_disc'
      Size = 100
    end
    object rmmaindt_discon: TDateField
      FieldName = 'dt_discon'
    end
    object rmmaintm_discon: TTimeField
      FieldName = 'tm_discon'
    end
    object rmmaindt_con: TDateField
      FieldName = 'dt_con'
    end
    object rmmaintm_con: TTimeField
      FieldName = 'tm_con'
    end
    object rmmainhours_water: TFloatField
      FieldName = 'hours_water'
    end
    object rmmainnomer1: TIntegerField
      FieldName = 'nomer1'
    end
    object rmmainadres1: TStringField
      FieldName = 'adres1'
      Size = 200
    end
    object rmmaindt_zav: TStringField
      FieldName = 'dt_zav'
    end
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = rmmain
    Left = 80
    Top = 16
  end
  object tran: TIBTransaction
    DefaultDatabase = DM_main.IBDatabase
    Left = 32
    Top = 120
  end
  object dset_main: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = tran
    Left = 104
    Top = 120
  end
end
