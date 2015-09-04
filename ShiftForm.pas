unit ShiftForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OperAttFormUnit, StdCtrls, Buttons, Mask, ToolEdit, Spin,DMmain,
  IBDatabase, IBSQL, DB, IBCustomDataSet,avartype,cntsLANG;

type
  TOperAttForm2 = class(TOperAttForm)
    sp_shiftnum: TSpinEdit;
    dt_shift: TDateEdit;
    btn_Ok: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dset: TIBDataSet;
    IBSQL_sh: TIBSQL;
    tran: TIBTransaction;
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private declarations }

    typ:string;
    F_shiftNum:integer;
    F_ShiftDate:TDate;
  public
    { Public declarations }
  end;

var
  OperAttForm2: TOperAttForm2;

implementation

{$R *.dfm}

procedure TOperAttForm2.FormShow(Sender: TObject);

begin
  inherited;
  Caption:='Смена '+Caption;

  case OperateAttach of
   toaVoda,toaObjVoda : typ:='V';
    toaKanal,toaObjKanal : typ:='K';
    else typ :='V';
  end;
  dset.ParamByName('typ').AsString:=typ;
  dset.Open;
  F_shiftNum:=dset.fieldbyname('SHIFTNUMBER').AsInteger;
  F_shiftDate:=dset.fieldbyname('SHIFTNUMBER').asDateTime;
  if DM_main.isNeedChangeShift(typ) then
    sp_shiftnum.Value:=dset.fieldbyname('SHIFTNUMBER').AsInteger+1
  else
   sp_shiftnum.Value:=dset.fieldbyname('SHIFTNUMBER').AsInteger;
  dt_shift.Date:= date();
end;


procedure TOperAttForm2.btn_OkClick(Sender: TObject);
begin
  inherited;
try
      if tran.InTransaction then tran.Rollback;
      tran.StartTransaction;
      IBSQL_sh.SQL.Text:=
      format('update SERVANTTABLE set shiftnumber=%d, shiftdate = ''%s'' where  shiftType=''%s'' ',
      [sp_shiftnum.Value,dt_shift.Text]);
      IBSQL_sh.ExecQuery;
      tran.Commit;
except
on e:exception
       MessageBoxEx(application.handle,
         pchar('  '+TrLangMSG(msgErrorExecQuery)),
         pchar(TrLangMSG(msgError)), MB_OK+MB_ICONERROR+MB_SETFOREGROUND,$0419);
end;
end;

end.
