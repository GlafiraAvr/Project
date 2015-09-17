object dm_Shift: Tdm_Shift
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 511
  Width = 648
  object dset_shift: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = tran
    SelectSQL.Strings = (
      
        'select SHIFTDATE, SHIFTNUMBER, trim(SHIFTTYPE) SHIFTTYPE from SE' +
        'RVANTTABLE')
    Left = 64
    Top = 32
  end
  object dset_shiftnum: TIBDataSet
    Database = DM_main.IBDatabase
    Transaction = tran
    SelectSQL.Strings = (
      
        'select z.nomer, z.dt_in,sa.name_r  from narad n join  zavjav z o' +
        'n n.id_zav=z.id'
      
        'join s_attach sa on  sa.id=z.id_alien where n.dt_in>:dat and  n.' +
        'dt_in<:dat+1 and n.dt_out is null'
      'and z.id_attach in (:ida1,:ida2)'
      'union'
      
        'select z.nomer, z.dt_in,sa.name_r  from nnarad n join  nzavjav z' +
        ' on n.id_zav=z.id'
      
        'join s_attach sa on sa.id=z.id_alien where n.dt_in>:dat and  n.d' +
        't_in<:dat+1 and n.dt_out is null'
      'and z.id_attach in (:ida1,:ida2)')
    Left = 136
    Top = 32
  end
  object tran: TIBTransaction
    DefaultDatabase = DM_main.IBDatabase
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 368
    Top = 72
  end
end
