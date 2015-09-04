inherited OperAttForm2: TOperAttForm2
  Caption = 'OperAttForm2'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 27
    Top = 27
    Width = 56
    Height = 13
    Caption = #8470' '#1089#1084#1077#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 74
    Height = 13
    Caption = #1044#1072#1090#1072' '#1089#1084#1077#1085#1099
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sp_shiftnum: TSpinEdit
    Left = 112
    Top = 24
    Width = 121
    Height = 25
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 0
  end
  object dt_shift: TDateEdit
    Left = 112
    Top = 64
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 1
  end
  object btn_Ok: TBitBtn
    Left = 80
    Top = 104
    Width = 89
    Height = 25
    Caption = #1055#1088#1080#1085#1103#1090#1100
    TabOrder = 2
    OnClick = btn_OkClick
    Kind = bkOK
  end
  object dset: TIBDataSet
    Database = DM_main.IBDatabase
    SelectSQL.Strings = (
      'select SHIFTDATE, SHIFTNUMBER, SHIFTTYPE from SERVANTTABLE'
      'where SHIFTTYPE  = :typ')
    Left = 160
    Top = 32
  end
  object IBSQL_sh: TIBSQL
    Database = DM_main.IBDatabase
    Transaction = tran
    Left = 208
    Top = 32
  end
  object tran: TIBTransaction
    Left = 184
    Top = 80
  end
end
