object FormSprav: TFormSprav
  Left = 226
  Top = 199
  Width = 635
  Height = 475
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 304
    Top = 408
    Width = 95
    Height = 16
    Caption = '������ ������'
  end
  object Label2: TLabel
    Left = 304
    Top = 12
    Width = 36
    Height = 16
    Caption = '�����'
    Enabled = False
  end
  object BB_Insert: TBitBtn
    Left = 8
    Top = 400
    Width = 90
    Height = 33
    Caption = '��������'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BB_InsertClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333FF33333333FF333993333333300033377F3333333777333993333333
      300033F77FFF3333377739999993333333333777777F3333333F399999933333
      33003777777333333377333993333333330033377F3333333377333993333333
      3333333773333333333F333333333333330033333333F33333773333333C3333
      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
      333333333337733333FF3333333C333330003333333733333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BB_Delete: TBitBtn
    Left = 104
    Top = 400
    Width = 90
    Height = 33
    Caption = '�������'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BB_DeleteClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
  end
  object BB_Save: TBitBtn
    Left = 200
    Top = 400
    Width = 90
    Height = 33
    Caption = '���������'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BB_SaveClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
      FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
      FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
      FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
      0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
      9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
      9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
      99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
      93337777FF777777733370000000073333333777777773333333}
    NumGlyphs = 2
  end
  object SpEd_Font: TSpinEdit
    Left = 404
    Top = 400
    Width = 49
    Height = 26
    MaxValue = 30
    MinValue = 6
    TabOrder = 3
    Value = 6
    OnChange = SpEd_FontChange
  end
  object BB_Close: TBitBtn
    Left = 528
    Top = 400
    Width = 90
    Height = 33
    Caption = '�������'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BB_CloseClick
    Kind = bkClose
  end
  object Ed_Find: TEdit
    Left = 344
    Top = 8
    Width = 169
    Height = 24
    TabOrder = 5
    OnChange = Ed_FindChange
  end
  object ChB_Sort: TCheckBox
    Left = 4
    Top = 12
    Width = 293
    Height = 17
    Caption = '���������� �� ����'
    TabOrder = 6
    OnClick = ChB_SortClick
  end
  object DBGr_SP: TRxDBGrid
    Left = 4
    Top = 44
    Width = 613
    Height = 345
    DataSource = DS_SP
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 7
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnKeyDown = DBGr0_SPKeyDown
    MultiSelect = True
  end
  object Qry_SP: TQuery
    CachedUpdates = True
    AfterInsert = Qry_SPAfterInsert
    DatabaseName = 'DBN_AVAR'
    SQL.Strings = (
      'select * from s_brig')
    UpdateObject = UpdSP
    Left = 400
    Top = 76
  end
  object UpdSP: TUpdateSQL
    ModifySQL.Strings = (
      'update s_brig set name_r=:name_r,dolgn=:dolgn'
      'where id=:id')
    InsertSQL.Strings = (
      'insert into s_brig (name_r,dolgn) values ("����","123")')
    Left = 480
    Top = 84
  end
  object DS_SP: TDataSource
    DataSet = Qry_SP
    OnUpdateData = DS_SPUpdateData
    Left = 528
    Top = 76
  end
end
