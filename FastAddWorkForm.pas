unit FastAddWorkForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, DB, StdCtrls, Buttons, kbmMemTable, DMMain,
  IBDatabase, IBCustomDataSet;

type
  Tfrm_FastAddWork = class(TForm)
    Grid: TDBGridEh;
    Panel1: TPanel;
    btn_ok: TBitBtn;
    btn_exit: TBitBtn;
    ds_Main: TDataSource;
    mt_FastAdd: TkbmMemTable;
    mt_FastAddBWork: TStringField;
    mt_FastAddid_bwork: TIntegerField;
    mt_FastAddis_add_work: TBooleanField;
    mt_FastAddis_add_mater: TBooleanField;
    mt_FastAddis_add_bwork: TBooleanField;
    dset: TIBDataSet;
    tran: TIBTransaction;
    procedure btn_exitClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure mt_FastAddis_add_bworkChange(Sender: TField);
  private
  public
    procedure FillFastAddDset;  
  end;

implementation

{$R *.dfm}

uses HelpFunctions;

procedure Tfrm_FastAddWork.btn_exitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_FastAddWork.btn_okClick(Sender: TObject);
begin
  if ds_Main.DataSet.State in [dsInsert, dsEdit] then ds_Main.DataSet.Post;
  ModalResult := mrOk;
end;

procedure Tfrm_FastAddWork.FillFastAddDset;
begin
  mt_FastAdd.Close;
  mt_FastAdd.Open;

  if tran.InTransaction then tran.Rollback;
  tran.StartTransaction;
  try
    MyOpenIBDS( dset,
      ' select id, name_r' +
      ' from s_bwork' +
      ' where del = ''-''' +
      ' order by name_r' );

    dset.First;
    while not dset.Eof do
    begin
      mt_FastAdd.Append;
      mt_FastAdd.FieldByName( 'BWork' ).AsString := trim( dset.FieldByName( 'name_r' ).AsString );
      mt_FastAdd.FieldByName( 'id_bwork' ).AsInteger := dset.FieldByName( 'id' ).AsInteger;
      mt_FastAdd.FieldByName( 'is_add_bwork' ).AsBoolean := false;
      mt_FastAdd.Post;
      dset.Next;
    end;

    tran.Commit;
  except
    on E: Exception do
    begin
      tran.Rollback;
      raise Exception.Create( E.Message + '(Tfrm_FastAddWork.FillFastAddDset)' );
    end;
  end;
end;

procedure Tfrm_FastAddWork.mt_FastAddis_add_bworkChange(Sender: TField);
var
  _chk: boolean;
begin
  _chk := mt_FastAdd.FieldByName( 'is_add_bwork' ).AsBoolean;

  mt_FastAdd.FieldByName( 'is_add_work' ).AsBoolean := _chk;
  mt_FastAdd.FieldByName( 'is_add_mater' ).AsBoolean := _chk;
end;

end.
