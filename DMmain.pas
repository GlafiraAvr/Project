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
    tran: TIBTransaction;
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
    function getTime():TdateTime;
  end;

var
  DM_main: TDM_main;

implementation

uses datam, IniFiles, avartype,Math;

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



function TDM_main.getTime: TdateTime;
begin
if dset_datetime.Active then
dset_datetime.Close;
dset_dateTime.Open;
dset_DateTime.First;
result:=dset_DateTime.fieldByName('curTime').AsDateTime;

end;

end.
