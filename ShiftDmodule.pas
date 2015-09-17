unit ShiftDmodule;

interface

uses
  SysUtils, Classes,DMmain, DB, IBCustomDataSet,Controls, IBDatabase,OperAttFormUnit ;

type
  Tdm_Shift = class(TDataModule)
    dset_shift: TIBDataSet;
    dset_shiftnum: TIBDataSet;
    tran: TIBTransaction;
  private
    { Private declarations }
     F_shiftDate:TDate;
     F_shiftNum:Integer;
    function converttypToStr(typ:TOperAtt):string;
  public
    { Public declarations }
   function isNeedChangeShift(typ:TOperAtt):boolean;
   procedure getShiiftNumber(typ:TOperAtt; var num:integer; dat:TDate);
   function perMitDoChangeShift(typ:TOperAtt;var nums: string;var  dat: TDate):boolean;

   function datInCurShift(typ:TOperAtt; dat:TdateTime):boolean;
  end;

const    StrShiftTimeBegin = '8:00';
         StrShiftTimeEnd = '9:00';
         sel_notclosednar = 'select z.nomer, z.dt_in,sa.name_r  '+
                            ' from narad n join  zavjav z on n.id_zav=z.id '+
                            ' join s_attach sa on  sa.id=z.id_alien  '+
                            ' where  n.dt_in<:dat +1  '+
                            ' and n.dt_out is null '+
                            ' and z.id_attach in (:ida1,:ida2) '+
                            ' union '+
                            ' select z.nomer, z.dt_in,sa.name_r   '+
                            ' from nnarad n join  nzavjav z on n.id_zav=z.id '+
                            ' join s_attach sa on sa.id=z.id_alien '+
                            ' where   n.dt_in<:dat +1  '+
                            ' and n.dt_out is null '+
                            ' and z.id_attach in (:ida1,:ida2)';

var
  dm_Shift: Tdm_Shift;

implementation
uses Math,Variants;

{$R *.dfm}

function Tdm_Shift.isNeedChangeShift(typ: TOperAtt): boolean;
var shiftDate :TDateTime;
    tim:TDateTime;
    curtim:TDateTime;
    timsmen:TdateTime;
    typStr:string;
begin
typStr:=converttypToStr(typ);
if  dset_shift.Active then
  dset_shift.Close;
 dset_shift.Open;
dset_shift.First;
result:=false;
tim:=StrToTime(StrShiftTimeBegin);
while not dset_shift.Eof do
begin
 if dset_shift.FieldByName('SHIFTTYPE').AsString = typStr then
 begin
   shiftDate:=int(dm_main.getTime());
   curtim:=frac(DM_Main.getTime);
   if curtim<StrToTime(StrShiftTimeBegin) then
     shiftDate:=shiftDate-1;

   timsmen:=dset_shift.FieldByName('SHIFTDATE').AsDateTime;
   if shiftDate>timsmen then
    result:=true;

 end;
 dset_shift.Next;
end;
dset_shift.Close;

end;

procedure Tdm_Shift.getShiiftNumber(typ: TOperAtt; var num: integer;
  dat: TDate);
  var typStr:string;
begin
typStr:=converttypToStr(typ);
if  dset_shift.Active then
 dset_shift.Close;
dset_shift.Open;
 if  dset_shift.Locate('SHIFTTYPE',VarArrayOf([typStr]),[loCaseInsensitive]) then
 begin
   num:= dset_shift.fieldByName('SHIFTNUMBER').AsInteger;
   dat:=dset_shift.fieldByName('SHIFTDate').asdatetime;
 end;
 F_shiftDate:=dat;
 F_shiftNum:=num;
end;

function Tdm_Shift.perMitDoChangeShift(typ:TOperAtt;var nums: string;
  var dat: TDate): boolean;
var strShidtDate:string;
    strMes:string;
    typStr:string;
begin
nums:='';
  typStr:=converttypToStr(typ);
  getShiiftNumber(typ,F_shiftNum,F_shiftDate);
  if dset_shiftnum.Active then
   dset_shiftnum.Close;
  strShidtDate:=DateToStr(F_shiftDate)+' '+StrShiftTimeBegin;
  dset_shiftnum.SelectSQL.Text:=sel_notclosednar;
  dset_shiftnum.ParamByName('dat').AsString:=strShidtDate;
  if (typ = toaVoda)or(typ = toaObjVoda) then
  begin
    dset_shiftnum.ParamByName('ida1').AsInteger:=1;
    dset_shiftnum.ParamByName('ida2').AsInteger:=4;

  end;
  if  (typ = toaKanal) or (typ = toaObjKanal) then
  begin
    dset_shiftnum.ParamByName('ida1').AsInteger:=2;
    dset_shiftnum.ParamByName('ida2').AsInteger:=5;

  end;

  dset_shiftnum.Open;
  if dset_shiftnum.RecordCount>0 then
  begin

    result:=false;
    dset_shiftnum.First;
    while not dset_shiftnum.Eof do
    begin
      nums:=nums+', ¹'+dset_shiftnum.FieldByName('nomer').asstring;
      dat:=dset_shiftnum.FieldByName('dt_in').AsDateTime;
      dset_shiftnum.Next;
    end;
    delete(nums,1,1);
  end
  else
  result:=true;
end;

function Tdm_Shift.converttypToStr(typ: TOperAtt): string;
begin
 case typ of
 toaNull,toaVoda , toaObjVoda:result:='V';
 toaObjKanal,toaKanal :result:='K';
 else result:='V';
 end;
end;

function Tdm_Shift.datInCurShift(typ: TOperAtt; dat: TdateTime): boolean;
  var  _shiftNum:integer;
  _shiftDate:TDateTime;
begin
  getShiiftNumber(typ,_shiftNum,_shiftDate);
  result :=(int(F_shiftDate)+StrToTime(StrShiftTimeBegin)<dat);
end;

end.
