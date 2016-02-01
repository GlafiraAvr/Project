unit UtechkiZaPeriodDModule;

interface

uses
  SysUtils, Classes, IBQuery, IBDatabase, DB, IBCustomDataSet, RxMemDS, DMMain,
  IBSQL, Controls, OperAttFormUnit, FR_Class, FR_DSet, FR_DBSet;

type
  TActionName=(anCreate, anDelete);

  Tdm_UtechkiZaPeriod = class(TDataModule)
    dset: TIBDataSet;
    tran: TIBTransaction;
    tran_view: TIBTransaction;
    md_res: TRxMemoryData;
    sql_view: TIBSQL;
    md_resid: TIntegerField;
    md_resdt_in: TDateTimeField;
    md_resid_revs: TIntegerField;
    md_resrevs: TStringField;
    md_resadres: TStringField;
    md_respromyv: TFloatField;
    md_resoporozhn: TFloatField;
    md_respovrezhd: TFloatField;
    md_ressum_poteri: TFloatField;
    md_resmain_gr: TIntegerField;
    md_resnomer: TIntegerField;
    frReport: TfrReport;
    frDS_res: TfrDBDataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    F_TMPView_name: string;
    F_IsTMPView_exists: boolean;
    function Get_CreateView_sql: string;
    function CreateTMPView_name: string;
    procedure PrepareResMD;
    procedure DoWith_TMPView(action: TActionName);
  private
    F_Dt_beg: TDate;
    F_Dt_end: TDate;
    F_OperAtt: TOperAtt;
  public
    property Dt_beg: TDate read F_Dt_beg write F_Dt_beg;
    property Dt_end: TDate read F_Dt_end write F_Dt_end;
    property OperAtt: TOperAtt read F_OperAtt write F_OperAtt;

    procedure PrepareDset;
  end;


implementation

{$R *.dfm}

uses ServiceFuncUnit;

{ Tdm_UtechkiZaPeriod }

function Tdm_UtechkiZaPeriod.CreateTMPView_name: string;
  procedure DelAllChar(c: char; var s: string);
  var
    p: integer;
  begin
   p:=pos(c, s);
   if p>0 then
   begin
      Delete(s, p, 1);
      DelAllChar(c, s);
   end;
  end;
var
  s, dt, tm: string;
begin
  dt:=DateToStr(date);
  DelAllChar('.', dt);

  tm:=TimeToStr(time);
  DelAllChar(':', tm);

  Result:='TMP2_'+IntToStr(Random(10))+'_'+dt+tm;
end;

procedure Tdm_UtechkiZaPeriod.DoWith_TMPView(action: TActionName);
var
  exec_sql: string;
begin
  if tran_view.InTransaction then tran_view.Rollback;
  tran_view.StartTransaction;
  try
    case action of
      anCreate: exec_sql:=Get_CreateView_sql;
      anDelete: exec_sql:='DROP VIEW '+F_TMPView_name;
    end;

    IBExecSQL(sql_view, exec_sql);
    tran_view.Commit;
    F_IsTMPView_exists:=(action=anCreate);
  except
    on E: Exception do
    begin
      tran_view.Rollback;
      raise Exception.Create(E.Message+'(Tdm_UtechkiZaPeriod.DoWith_TMPView)')
    end;
  end;
end;

procedure Tdm_UtechkiZaPeriod.PrepareDset;
begin
  if F_IsTMPView_exists then DoWith_TMPView(anDelete);
  DoWith_TMPView(anCreate);

  if tran.InTransaction then tran.Rollback;
  tran.StartTransaction;
  try
    PrepareResMD;
    tran.Commit;
  except
    on E: Exception do
    begin
      tran.Rollback;
      raise Exception.Create(E.Message+'(Tdm_UtechkiZaPeriod.PrepareDset)');
    end;
  end;
end;

procedure Tdm_UtechkiZaPeriod.PrepareResMD;
var
  i: integer;
begin
  md_res.Close;
  md_res.Open;

  IBOpenSQL(dset,
    ' select ID, NOMER, DT_IN, ID_REVS, REVS, ADRES,'+
    ' PROMYV, OPOROZHN, POVREZHD, PROMYV+OPOROZHN+POVREZHD as SUM_POTERI'+
    ' from '+F_TMPView_name+
    ' where (promyv<>0) or (oporozhn<>0) or (povrezhd<>0)'+
    ' order by REVS, DT_IN  ');

  while not dset.Eof do
  begin
    md_res.Append;
    md_res.FieldByName('main_gr').AsInteger:=1;
    for i:=0 to dset.FieldCount-1 do
      md_res.FieldByName(dset.Fields[i].FieldName).Value:=dset.Fields[i].Value;
    md_res.Post;

    dset.Next;
  end;
end;

procedure Tdm_UtechkiZaPeriod.DataModuleCreate(Sender: TObject);
begin
  F_TMPView_name:=CreateTMPView_name;
  F_IsTMPView_exists:=false;
end;

procedure Tdm_UtechkiZaPeriod.DataModuleDestroy(Sender: TObject);
begin
  if F_IsTMPView_exists then DoWith_TMPView(anDelete);
end;

function Tdm_UtechkiZaPeriod.Get_CreateView_sql: string;
var
  cond_attach, cond_date: string;
begin
  cond_attach:=' and (z.id_attach='+IntToStr(ord(F_OperAtt))+')';
  cond_date:=' and (z.dt_in>'''+DateToStr(F_Dt_beg)+''') and (z.dt_in<='''+DateToStr(F_Dt_end+1)+''')';

  Result:=
    ' CREATE VIEW '+F_TMPView_name+'('+
    '     ID,'+
    '     NOMER,'+
    '     DT_IN,'+
    '     ID_REVS,'+
    '     REVS,'+
    '     ADRES,'+
    '     PROMYV,'+
    '     OPOROZHN,'+
    '     POVREZHD)'+
    ' AS'+
    ' select z.id, z.nomer, z.dt_in, id_revs,'+
    ' (select name_r from s_revs where id=z.id_revs) revs,'+
    ' (select adres from get_adres(z.id_ul1, z.id_ul2, z.kod_ul, z.dop_adr, z.id_dopadres)) adres,'+
    ' POTERIPROMYV1((select name_r from s_matpipe where id=z.id_matpipe),'+
    '             z.cl_promiv_time,'+
    '          (select diam from s_diam where id=z.op_id_diam)) Promyv,'+
    ' POTERIOPORZHN1((select diam from s_diam where id=z.op_id_diam),'+
    '                 z.op_protyazh) Oporozhn,'+
    ' POTERIPOVREZHD1(z.dt_in, (select dt_end from get_utechenddate(z.id)), z.q) Povrezhd'+
    ' from nzavjav z'+
    ' where (delz=0  and (is_otl is null or is_otl<>1 ))'+cond_attach+cond_date+
      ' union all'+
    ' select z.id, z.nomer, z.dt_in, id_revs,'+
    ' (select name_r from s_revs where id=z.id_revs) revs,'+
    ' (select adres from get_adres(z.id_ul1, z.id_ul2, z.kod_ul, z.dop_adr, z.id_dopadres)) adres,'+
    ' POTERIPROMYV1((select name_r from s_matpipe where id=z.id_matpipe),'+
    '             z.cl_promiv_time,'+
    '          (select diam from s_diam where id=z.op_id_diam)) Promyv,'+
    ' POTERIOPORZHN1((select diam from s_diam where id=z.op_id_diam),'+
    '                 z.op_protyazh) Oporozhn,'+
    ' POTERIPOVREZHD1(z.dt_in, (select dt_end from get_utechenddate(z.id)), z.q) Povrezhd'+
    ' from zavjav z'+
    ' where delz=0 and (is_otl is null or is_otl<>1 ) '+cond_attach+cond_date+';';
end;

end.
