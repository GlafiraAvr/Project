unit PoteriFunc;

interface

uses QShevelevUnit{автор: Губарев Роман}, ibase, HelpFunctions, DateUtils;

function PoteriPromyv(AMatPipe:PChar; AIB_Date:PISC_QUAD; var ADiam:integer):double; cdecl; export;
function PoteriOporzhn(var ADiam:integer; var AProtyazh: double): double; cdecl; export;
function PoteriPovrezhd(ADateBegin: PISC_QUAD; ADateEnd: PISC_QUAD; var ASpeedLeak: double): double; cdecl; export;

implementation

function PoteriPromyv(AMatPipe:PChar; AIB_Date:PISC_QUAD; var ADiam:integer):double; cdecl; export;
var
  _QShevelev:TQShevelev;
begin
  result:=0;
  try
    _QShevelev:=TQShevelev.Create;
    _QShevelev.MatPipeStr:=string(AMatPipe);
    result:=_QShevelev.GetQinM3(PQuadToDateTime(AIB_Date),ADiam);
    if result<=-1 then result:=0;
  finally
    _QShevelev.Free;
  end;
end;

function PoteriOporzhn(var ADiam:integer; var AProtyazh: double): double; cdecl; export;
begin
  Result:=pi*sqr(ADiam/2/1000)*AProtyazh;
end;

function PoteriPovrezhd(ADateBegin: PISC_QUAD; ADateEnd: PISC_QUAD; var ASpeedLeak: double): double; cdecl; export;
  function Hours(fulltime:TDateTime):double;
  begin
    result:=Trunc(fulltime)*24+HourOf(fulltime)+MinuteOf(fulltime)/60+SecondOf(fulltime)/3600;
  end;
var
  dt_beg, dt_end: TDateTime;
begin
  dt_beg:=PQuadToDateTime(ADateBegin);
  dt_end:=PQuadToDateTime(ADateEnd);
  Result:=ASpeedLeak*Hours(dt_end-dt_beg);
end;

end.
