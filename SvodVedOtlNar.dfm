inherited frm_SvodVedOtlNar: Tfrm_SvodVedOtlNar
  Left = 447
  Top = 310
  Caption = 'frm_SvodVedOtlNarOpt'
  ClientHeight = 235
  ClientWidth = 255
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel2: TBevel
    Top = 68
    Height = 117
  end
  inherited Bevel1: TBevel
    Height = 61
  end
  inherited Label1: TLabel
    Visible = False
  end
  object Label2: TLabel [3]
    Left = 14
    Top = 12
    Width = 13
    Height = 13
    Caption = #1057' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 12
    Top = 41
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
  inherited dp_Time: TDateTimePicker
    Left = 128
    Top = 16
    Visible = False
  end
  inherited dp_Date: TDateEdit
    Left = 35
    Visible = False
  end
  inherited btn_revs: TBitBtn
    Top = 76
  end
  inherited btn_ok: TBitBtn
    Top = 194
  end
  inherited btn_cancel: TBitBtn
    Top = 194
  end
  inherited gb_Attach: TGroupBox
    Top = 107
  end
  inherited GroupBox1: TGroupBox
    Left = 312
    Top = 248
    Visible = False
  end
  object dp_StartDate: TDateEdit
    Left = 35
    Top = 9
    Width = 118
    Height = 21
    NumGlyphs = 2
    TabOrder = 8
  end
  object dp_enddate: TDateEdit
    Left = 35
    Top = 40
    Width = 118
    Height = 21
    NumGlyphs = 2
    TabOrder = 9
  end
  object dt_startdate: TDateTimePicker
    Left = 159
    Top = 8
    Width = 73
    Height = 21
    Date = 39021.000000000000000000
    Time = 39021.000000000000000000
    Kind = dtkTime
    TabOrder = 10
  end
  object dt_enddate: TDateTimePicker
    Left = 159
    Top = 40
    Width = 73
    Height = 21
    Date = 39021.000000000000000000
    Time = 39021.000000000000000000
    Kind = dtkTime
    TabOrder = 11
  end
end
