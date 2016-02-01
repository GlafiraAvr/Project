unit DiskondRepDModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NGReportBaseDModule, FR_Class,DMmain, FR_DSet, FR_DBSet, DB,
  RxMemDS, IBCustomDataSet, IBDatabase,OperAttFormUnit;

type
  Tdm_DiskondRep = class(Tdm_NGReportBase)
    rmmain: TRxMemoryData;
    frDBDataSet1: TfrDBDataSet;
    tran: TIBTransaction;
    dset_main: TIBDataSet;
    rmmainid_wwater: TIntegerField;
    rmmainid_rayon: TIntegerField;
    rmmainregion: TStringField;
    rmmainid: TIntegerField;
    rmmainstreet_disc: TStringField;
    rmmainadress_disc: TStringField;
    rmmaindt_discon: TDateField;
    rmmaintm_discon: TTimeField;
    rmmaindt_con: TDateField;
    rmmaintm_con: TTimeField;
    rmmainhours_water: TFloatField;
    rmmainnomer1: TIntegerField;
    rmmainadres1: TStringField;
    rmmaindt_zav: TStringField;
  private
    { Private declarations }
    F_dt_begin:TDateTime;
    F_dt_end:TDateTime;
    F_operAttach:TOperAtt;
    F_RevsID:string;
    F_type:integer;
    function prepareSQL:boolean;
    procedure fillMainrm();
  public
    { Public declarations }
    function Preparedsets:boolean;
    property dt_begin :TDateTime read F_dt_begin write F_dt_begin ;
    property dt_end :TDateTime read F_dt_end write F_dt_end ;
    property operAttach:TOperAtt write F_operAttach;
    property revsID:string write F_RevsID;
    property TypeDiscon :integer write F_type;// 2 - закрытые 1 - незакрытые  0 - все

  end;
const main_sql='select w.id id_wwater,'+
                      ' su.name_r as street_disc, '+
                      ' w.house as hous_discon, '+
                      ' w.dttm_discon, w.dttm_con, '+
                      ' w.comment  dopinf, '+
                      ' z.nomer  nomer1, '+
                      ' (select ADRES from get_adres(z.id_ul1, z.id_ul2,z.kod_ul,z.dop_adr,z.id_dopadres))  adres1, '+
                      ' z.id_rayon id_rayon, '+
                      ' sr.name_r as region, '+
                      ' z.dt_in dt_zav'+
                  ' from wwater w join s_ulic su on su.id=w.id_ul '+
                  '   join zavjav z on z.id=w.id_zav '+
                  '  join s_rayon sr on sr.id=z.id_rayon '+
                  ' where  w.dttm_discon<:dt_end   '+
                  '  and( w.dttm_con>:dt_begin or (w.dttm_con is null)) '+
                  ' and z.id_attach = :attach and (z.delz=0 and z.is_otl=0) ' +
                  '  %s '+
               ' union '+
               ' select w.id, '+
                      ' su.name_r as street_disc, '+
                      ' w.house as hous_discon, '+
                      ' w.dttm_discon, '+
                      ' w.dttm_con, '+
                      ' w.comment  dopinf, '+
                      ' z.nomer  nomer2, '+
                      ' (select ADRES from get_adres(z.id_ul1, z.id_ul2,z.kod_ul,z.dop_adr,z.id_dopadres) ) adres2, '+
                      ' z.id_rayon, sr.name_r as region, '+
                      ' z.dt_in '+
                  ' from wwater w join s_ulic su on su.id=w.id_ul '+
                  '   join nzavjav z on z.id=w.id_zav'+
                  '   join s_rayon sr on sr.id=z.id_rayon '+
                  ' where  w.dttm_discon<:dt_end   '+
                  '  and( w.dttm_con>:dt_begin or (w.dttm_con is null)) '+
                  ' and z.id_attach = :attach and (z.delz=0 and z.is_otl=0) '+
                  '   %s '+
                  '     order by 9,4 ';

var
  dm_DiskondRep: Tdm_DiskondRep;


implementation

{$R *.dfm}

{ Tdm_DiskondRep }

procedure Tdm_DiskondRep.fillMainrm;

function countHoursbetween():real;
var beg_dt, en_dt:TDateTime;
    r:real;
begin
  beg_dt:=dset_main.FieldByName('dttm_discon').AsDateTime;
  if beg_dt<F_dt_begin then
     beg_dt:=F_dt_begin;
  if not dset_main.FieldByName('dttm_con').IsNull then
    if  dset_main.FieldByName('dttm_con').AsDateTime<f_dt_end then
     en_dt:=dset_main.FieldByName('dttm_con').AsDateTime
    else
      en_dt:=f_dt_end
  else
   en_dt:=f_dt_end;
     r:=en_dt-beg_dt;
   result:=r*24;
end;

var adres:string;
begin
  rmmain.FieldByName('id_wwater').AsInteger:=dset_main.fieldbyname('id_wwater').AsInteger;
  rmmain.FieldByName('id_rayon').AsInteger:=dset_main.fieldbyname('id_rayon').AsInteger;
  rmmain.FieldByName('region').AsString:=trim(dset_main.fieldbyname('region').AsString);
  if rmmain.FieldByName('id_rayon').AsInteger = -1 then
    rmmain.FieldByName('region').AsString := 'Район не указан';
  adres:=trim(dset_main.fieldbyname('street_disc').AsString)+'.,'+trim(dset_main.fieldbyname('hous_discon').AsString)+
  ' '+ trim(dset_main.fieldbyname('dopinf').AsString);
  rmmain.FieldByName('adress_disc').AsString:=adres;
  rmmain.FieldByName('dt_discon').AsDateTime:=dset_main.fieldbyname('dttm_discon').AsDateTime;
  rmmain.FieldByName('tm_discon').AsDateTime:=dset_main.fieldbyname('dttm_discon').AsDateTime;
  if not dset_main.FieldByName('dttm_con').IsNull then
  begin
      rmmain.FieldByName('dt_con').AsDateTime:=dset_main.fieldbyname('dttm_con').AsDateTime;
      rmmain.FieldByName('tm_con').AsDateTime:=dset_main.fieldbyname('dttm_con').AsDateTime;
  end;
  rmmain.FieldByName('nomer1').AsInteger:=dset_main.fieldbyname('nomer1').AsInteger;
  rmmain.FieldByName('adres1').AsString:=dset_main.fieldbyname('adres1').AsString;
  rmmain.FieldByName('dt_zav').AsString:=formatdatetime('dd.mm.yyyy',dset_main.fieldbyname('dt_zav').AsDateTime);
  rmmain.FieldByName('hours_water').AsFloat:= countHoursbetween();


end;

function Tdm_DiskondRep.Preparedsets: boolean;
var str  :string;
begin
  str:=dateTimeToStr(F_dt_begin);
   str:=dateTimeToStr(F_dt_end);
    str:=str+';';
  result:=false;
  if rmmain.Active then
    rmmain.Close;
  rmmain.Open;  
  try
  if prepareSQL() then
    begin
      dset_main.First;
      while  not dset_main.Eof do
      begin
       rmmain.Append;
       fillMainrm();
       rmmain.Post;
       dset_main.Next;
      end;
     result:=true;
    end
   else
   result:=false;
  except
  result:=false;
  end;

end;

function Tdm_DiskondRep.prepareSQL: boolean;
function prepareRevs():string;
begin
 if  F_RevsID<>'' then
   result:='  and z.id_revs  in '+F_RevsID+' ' 
 else
   result:='';
end;
function prepereType():string;
begin
 case F_type of
  0 : result:='';
  1 : result := ' and  DTTM_CON is null ';
  2 :result := ' and  DTTM_CON is not null';
 end;
end;
var revs ,sQL_typ:string;
begin
try
    revs:= prepareRevs();
   sQL_typ:=prepereType();

   if dset_main.Active then
      dset_main.Close;

     dset_main.SelectSQL.Text:=format(main_SQL,[revs + Sql_typ ,revs + Sql_typ]) ;


    dset_main.ParamByName('dt_begin').asstring:=DateTimeToStr(f_dt_begin);
    dset_main.ParamByName('dt_end').asstring:=DateTimeToStr(f_dt_end);
    dset_main.ParamByName('attach').AsInteger:=ord(F_operAttach);
    result:=true;
    dset_main.Open;
except
   result:=false;
end
end;

end.
