object DM_main: TDM_main
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 529
  Top = 278
  Height = 326
  Width = 242
  object IBDatabase: TIBDatabase
    DatabaseName = 'D:\work_od_basa\work\n_baza\AVARODESSA.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    SQLDialect = 1
    Left = 24
    Top = 16
  end
  object IBDB_AvrImage: TIBDatabase
    DatabaseName = 'D:\krem_gla\baza\AVR_IMAGE_KREMEN.GDB'
    LoginPrompt = False
    SQLDialect = 1
    Left = 24
    Top = 120
  end
  object dset_ZavAdres: TIBDataSet
    SelectSQL.Strings = (
      'select adres      '
      'from get_zav_adres( :pZavID )')
    Left = 32
    Top = 208
  end
  object ds_count: TIBDataSet
    Database = IBDB_AvrImage
    Transaction = IBTran_image
    Left = 112
    Top = 216
  end
  object IBTran_image: TIBTransaction
    DefaultDatabase = IBDB_AvrImage
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 104
    Top = 120
  end
end
