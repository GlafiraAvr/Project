unit RepOtlDMUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SvodVed2DModule, FR_DSet, FR_DBSet, DB, RxMemDS, IBDatabase,
  IBCustomDataSet, FR_Class, OperAttFormUnit;

type
  Tdm_OtlReport = class(Tdm_SvodVed2)
  private
    { Private declarations }
     procedure InitSEL_ZAV; override;
     procedure FILL(OperAtt: TOperAtt);
     procedure append_otl(OperAtt: TOperAtt);
     procedure insert_base_field(zav_type_name: string; dset_src, dset_des: TDataSet);
     function get_primech(id_zav: integer): string;          
  public
    { Public declarations }
    procedure PrepareDset;
  end;

var
  dm_OtlReport: Tdm_OtlReport;

implementation

{$R *.dfm}

uses ServiceFuncUnit;

var
  ARR_COM_FIELD: array[0..8] of string=
    ('id','nomer','dt_in','id_attach','id_revs','revs','attach','adres','wwater_list');

procedure Tdm_OtlReport.InitSEL_ZAV;
var
  revs_cond: string;
begin
 if F_RevsID<>'' then
    revs_cond:=' and z.id_revs in'+F_RevsID
 else
    revs_cond:='';

 {F_SEL_ZAV:=
    ' select z.id, z.nomer, z.dt_in, z.id_attach, z.id_revs,' +
    ' sr.name_r revs, att.name_r attach,' +
    ' (select adres from get_adres(z.id_ul1,z.id_ul2,z.kod_ul,z.dop_adr,z.id_dopadres)) adres,' +
    ' rtrim(ss.name_r)||"("||rtrim(st.name_r)||","||rtrim(sp.name_r)||")" as sod,' +
    ' (select wwater_list from get_wwater_list( z.id ) ) wwater_list' +
    ' from nzavjav z'+//    ' from %s z'+
    ' left join s_revs sr on ( sr.id = z.id_revs )' +
    ' left join s_attach att on ( att.id = z.id_attach )' +
    ' left join s_sod ss on ( ss.id = z.id_sod )' +
    ' left join s_tzav st on (st.id = ss.ftype)' +
    ' left join s_place sp on (sp.id = ss.place_type)' +
    ' left join s_owner so on ( so.id = z.id_alien )' +
    ' where (delz=0) and (z.is_otl = 1) '+
    revs_cond +
    ' order by sr.name_r, z.dt_in';
  }
 F_SEL_ZAV:=
    ' select z.id, z.nomer, z.dt_in, z.id_attach, z.id_revs,' +
    ' sr.name_r revs, att.name_r attach,' +
    ' (select adres from get_adres(z.id_ul1,z.id_ul2,z.kod_ul,z.dop_adr,z.id_dopadres)) adres,' +
    ' rtrim(ss.name_r)||"("||rtrim(st.name_r)||","||rtrim(sp.name_r)||")" as sod,' +
    ' (select wwater_list from get_wwater_list( z.id ) ) wwater_list' +
    ' from %s z'+
    ' left join s_revs sr on ( sr.id = z.id_revs )' +
    ' left join s_attach att on ( att.id = z.id_attach )' +
    ' left join s_sod ss on ( ss.id = z.id_sod )' +
    ' left join s_tzav st on (st.id = ss.ftype)' +
    ' left join s_place sp on (sp.id = ss.place_type)' +
    ' left join s_owner so on ( so.id = z.id_alien )' +
    ' where (delz=0) and (z.id_attach = %d) %s '+
    revs_cond +
    ' order by sr.name_r, z.dt_in';


end;


procedure Tdm_OtlReport.PrepareDset;
begin
  if md_res.Active then md_res.Close;
  md_res.Open;
  if tran.InTransaction then
    tran.Rollback;
  tran.StartTransaction;
  try
    InitSEL_ZAV;

    if F_IsVoda then FILL(toaVoda);
    if F_IsKanal then FILL(toaKanal);
    if F_IsVrk then FILL(toaVRK);

    tran.Commit;
  except
    on E: Exception do
    begin
      tran.Rollback;
      raise Exception.Create(E.Message+'(PrepareDset)');
    end;
  end;
end;

procedure Tdm_OtlReport.FILL(OperAtt: TOperAtt);
begin
  append_otl(OperAtt); //отложенные
end;


procedure Tdm_OtlReport.append_otl(OperAtt: TOperAtt);
var
  cond, _sql: string;
begin
  cond:=cond + ' and (z.is_otl=1)';

 // MyOpenIBDS(dset_tmp, F_SEL_ZAV);

 _sql := Format(F_SEL_ZAV, ['nzavjav', ord(OperAtt), cond]);

  MyOpenIBDS(dset_tmp, _sql);
  while not dset_tmp.Eof do
  begin
    md_res.Append;
    insert_base_field('ОТЛОЖЕННЫЕ', dset_tmp, md_res);

    md_res.Post;
    dset_tmp.Next;
  end;
end;


procedure Tdm_OtlReport.insert_base_field(zav_type_name: string; dset_src, dset_des: TDataSet);
var
  i: integer;
begin
  dset_des.FieldByName('main_gr').AsInteger:=0;
  dset_des.FieldByName('zav_type_name').AsString:=zav_type_name;
  dset_des.FieldByName('sod').AsString:=DeletePusto(dset_src.FieldByName('sod').AsString);
  for i:=low(ARR_COM_FIELD) to high(ARR_COM_FIELD) do
    dset_des.FieldByName(ARR_COM_FIELD[i]).Value:=dset_src.FieldByName(ARR_COM_FIELD[i]).Value;

  dset_des.FieldByName('primech').AsString:=get_primech(dset_src.FieldByName('id').AsInteger);
end;


function Tdm_OtlReport.get_primech(id_zav: integer): string;
const
  SEL_NAR=' select dt_in, dop_inf from %s'+
          ' where id_zav=%d'+
          ' order by dt_in';
begin
  {Функция возвращает дополнительную инфу из последнего выезда}

  Result:='';
  MyOpenIBDS(dset_tmp3, Format(SEL_NAR, ['nnarad', id_zav]));
  if dset_tmp3.Eof then
    MyOpenIBDS(dset_tmp3, Format(SEL_NAR,['narad', id_zav]));
  if not dset_tmp3.Eof then
  begin
    dset_tmp3.Last;
    Result:=dset_tmp3.FieldByName('dop_inf').AsString;
  end;
end;

end.
