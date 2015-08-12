object DM_AvrImage: TDM_AvrImage
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 374
  Top = 235
  Height = 475
  Width = 633
  object tran_image: TIBTransaction
    DefaultDatabase = DM_main.IBDB_AvrImage
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 16
    Top = 112
  end
  object dset_image: TIBDataSet
    Database = DM_main.IBDB_AvrImage
    Transaction = tran_image
    InsertSQL.Strings = (
      'insert into avr_image(id_zav, image)'
      'values(:id_zav, :image)')
    SelectSQL.Strings = (
      'select * from avr_image where id=-10')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_AVR_IMAGE_ID'
    GeneratorField.ApplyEvent = gamOnServer
    Left = 16
    Top = 8
    object dset_imageID: TIntegerField
      FieldName = 'ID'
      Origin = 'AVR_IMAGE.ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dset_imageID_ZAV: TIntegerField
      FieldName = 'ID_ZAV'
      Origin = 'AVR_IMAGE.ID_ZAV'
    end
    object dset_imageIMAGE: TBlobField
      FieldName = 'IMAGE'
      Origin = 'AVR_IMAGE.IMAGE'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object dset_tmp: TIBDataSet
    Database = DM_main.IBDB_AvrImage
    Transaction = tran_image
    Left = 88
    Top = 8
  end
  object sql_tmp: TIBSQL
    Database = DM_main.IBDB_AvrImage
    Transaction = tran_image
    Left = 160
    Top = 8
  end
  object frReport: TfrReport
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbPrint, pbExit, pbPageSetup]
    StoreInDFM = True
    RebuildPrinter = False
    Left = 56
    Top = 192
    ReportForm = {
      19000000C9010000190000000001000100FFFFFFFFFF090000009A0B00003408
      00000000000000000000000000000000000001FFFF00000000FFFF0000000000
      00000000000000030400466F726D000F0000FFDC000000780000007C0100002C
      010000040000000100B90000000A00417672506963747572650002000E000000
      3000000010040000B40200000500000001000000000000000000FFFFFF1F2C02
      0000000000000000000000FFFF00000000000200000001000000000000B90000
      0000007001000005004D656D6F3100020010000000100000000C040000140000
      000300000001000000000000000000FFFFFF1F2C02000000000001003900B920
      E7E0FFE2EAE83A205B6E6F6D65725D3B20E4E0F2E020EFEEF1F2F3EFEBE5EDE8
      FF3A205B64745D3B20E0E4F0E5F13A205B61647265735D00000000FFFF000000
      00000200000001000000000500417269616C000A000000020000000000000000
      000100020000000000FFFFFF000000000200000000000000FEFEFF0400000003
      00206D790000000005006E6F6D65720000000002006474000000000500616472
      6573000000000000000000000000FC0000000000000000000000000000000058
      00AE21D5AE910DE340606FC4F7F38AE340}
  end
  object dset_zav: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = tran_zav
    Left = 208
    Top = 200
  end
  object tran_zav: TIBTransaction
    DefaultDatabase = DM_main.IBDatabase
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 304
    Top = 200
  end
end
