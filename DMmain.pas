unit DMmain;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet,controls;

type
  TDM_main = class(TDataModule)
    IBDatabase: TIBDatabase;
    IBDB_AvrImage: TIBDatabase;
    dset_ZavAdres: TIBDataSet;
    ds_count: TIBDataSet;
    IBTran_image: TIBTransaction;
    dset_shift: TIBDataSet;
    dset_shiftnum: TIBDataSet;
    dset_DateTime: TIBDataSet;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    F_ShiftDate:TDate;
    F_shiftNum:integer;
  public
    { Public declarations }
    procedure ConnectToDB(const user, pwd: string);
    procedure ConnectToDB_AvrImage(const user, pwd: string);
    function GetZavAdres( _ActiveTran: TIBTransaction; _ZavID: integer ): string;
    function isNeedChangeShift(typ:string):boolean;
    procedure getShiiftNumber(typ:string; var num:integer; dat:TDate);
    function perMitDoChangeShift(typ:string):boolean;
    function getTime():TdateTime;
  end;

var
  DM_main: TDM_main;

implementation

uses datam, IniFiles, avartype,Variants;

{$R *.dfm}

procedure TDM_main.DataModuleDestroy(Sender: TObject);
begin
  IBDataBase.Connected:=false;
  IBDB_AvrImage.Connected:=false;
end;

procedure TDM_main.ConnectToDB(const user, pwd: string);
begin
   with IBDataBase do
   begin
     try
       Connected:=false;
       DatabaseName:=DM1.GetDataBasePath;
       Params.Clear;
       Params.Add('lc_ctype=WIN1251');
       Params.Add('user_name='+user);
       Params.Add('password='+pwd);
       Connected:=true;
     except
      on E:Exception do
        raise Exception.Create('Connect to IB('+E.Message+')');
     end;
   end; //end with
end;

procedure TDM_main.ConnectToDB_AvrImage(const user, pwd: string);
var mini:TIniFile ;
baseName:string;
begin
   mini:=nil;
   baseName:='avarImage';
   try
          mini:=TIniFile.Create(FullPathIniFlAvar);
          baseName:=mini.ReadString('DataBases','ImageBase','avarImage');
   finally
     if  assigned(mini) then
      mini.Free;
   end;
   with IBDB_AvrImage do
   begin
     try
       Connected:=false;
       DatabaseName:=baseName;
       Params.Clear;
       Params.Add('lc_ctype=WIN1251');
       Params.Add('user_name='+user);
       Params.Add('password='+pwd);

       Connected:=true;
      
     except
      on E:Exception do
        raise Exception.Create('Connect to IBDB_AvrImage('+E.Message+')');
     end;
   end; //end with
end;

function TDM_main.GetZavAdres(_ActiveTran: TIBTransaction; _ZavID: integer): string;
begin
  try
    dset_ZavAdres.Close;
    dset_ZavAdres.Transaction := _ActiveTran;
    dset_ZavAdres.ParamByName( 'pZavID' ).AsInteger := _ZavID;
    dset_ZavAdres.Open;
    Result := dset_ZavAdres.FieldByName( 'adres' ).AsString;
  finally
    dset_ZavAdres.Close;
    dset_ZavAdres.Database := nil;
    dset_ZavAdres.Transaction := nil;
  end;
end;


function TDM_main.isNeedChangeShift(typ: string): boolean;
var shiftDate :TDateTime;
begin
if not dset_shift.Active then
  dset_shift.Open;
dset_shift.First;
result:=false;
while dset_shift.Eof do
begin
 if dset_shift.FieldByName('SHIFTTYPE').AsString = typ then
 begin
   shiftDate:=Date()+StrToTime(StrShiftTimeBegin);
   if Time()>StrToTime(StrShiftTimeBegin) then
     shiftDate:=Date()+StrToTime(StrShiftTimeBegin)+1;
   if shiftDate<Now() then
    result:=true;

 end
end;
dset_shift.Close;

end;

procedure TDM_main.getShiiftNumber(typ: string; var num: integer;
  dat: TDate);
begin
if not dset_shift.Active then
 dset_shift.Open;
 if  dset_shift.Locate('SHIFTTYPE',VarArrayOf([typ]),[loCaseInsensitive]) then
 begin
   num:= dset_shift.fieldByName('SHIFTNUMBER').AsInteger;
   dat:=dset_shift.fieldByName('SHIFTDate').asdatetime;
 end;
 F_shiftDate:=dat;
 F_shiftNum:=num;
end;

function TDM_main.perMitDoChangeShift(typ:string): boolean;
var strShidtDate:string;
    strMess:string;
begin
  getShiiftNumber(typ,F_shiftNum,F_shiftDate);
  if dset_shiftnum.Active then
   dset_shift.Close;
  strShidtDate:=DateToStr(F_shiftDate)+' '+StrShiftTimeBegin;
  dset_shift.ParamByName('d').AsString:=strShidtDate;
  if typ = 'V' then
  
  dset_shift.Open;
  if dset_shift.RecordCount>0 then
  begin
    result:=false;
    dset_shift.First;
    strMes:=Format(TrLangMSG(msgCloseNar),
    [dset_shift.FieldByName('nomer').AsInteger,
    dset_shift.FieldByName('name_r').AsString,
    dset_shift.FieldByName('dt_in').AsString]);
    MessageBoxEx(application.handle,
         pchar(strMes ),
         pchar(msgChangeSmenDeny(msgError)), MB_OK+MB_ICONERROR+MB_SETFOREGROUND,$0419);
  end
  else
  result:=true;
end;

function TDM_main.getTime: TdateTime;
begin
if dset_datetime.Active then
dset_datetime.Close;
dset_dateTime.Open;
dset_DateTime.First;
result:=dset_DateTime.fieldByName('curTime').AsDateTime;

end;

end.
